void specialized Interpreter.Iterator.observe<A>(invalidation:)(char a1, double a2)
{
  v4 = *(v2 + 72);
  v217[0] = *(v2 + 56);
  v217[1] = v4;
  v218[0] = *(v2 + 88);
  *(v218 + 9) = *(v2 + 97);
  v5 = v2 + 88;
  v6 = v2 + 100;
  v7 = *(v2 + 29);
  v8 = v2 + 56;
  v9 = (v2 + 104);
  while (1)
  {
    v10 = *v9;
    if (v7 < *v6)
    {
      v11 = (*v5 + 8 * v7);
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v217);
    }

    v5 = (v10 + 32);
    v6 = (v10 + 44);
    v9 = (v10 + 48);
    v8 = v10;
  }

  if (!*v8)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1 & 1, *(*(*v8 + 24 * *v11) + 32), 0, a2);
  v13 = *v2;
  v14 = v2[48];
  v15 = *(v2 + 72);
  v215[0] = *(v2 + 56);
  v215[1] = v15;
  v216[0] = *(v2 + 88);
  *(v216 + 9) = *(v2 + 97);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v18 = (v2 + 72);
  v197 = v2 + 84;
  v19 = (v2 + 104);
  v20 = *(v2 + 22);
  while (1)
  {
    v21 = *v19;
    if (*v16)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v215);
    }

    v18 = (v21 + 16);
    v16 = (v21 + 28);
    v19 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v194 = v2 + 72;
  v195 = v2 + 104;
  v192 = v12;
  v196 = v2 + 56;
  v193 = v2;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v25 = *(*(v24 + 32) + 8);
  v26 = *(v25 + 16);
  v27 = (v25 + 48 * v26 - 16);
  do
  {
    if (v26-- < 1)
    {
LABEL_92:
      v101 = *v193;
      v199 = v193[48];
      v102 = v196;
      v103 = v197;
      v104 = v196[1];
      v207[0] = *v196;
      v207[1] = v104;
      v208[0] = v196[2];
      *(v208 + 9) = *(v196 + 41);
      v105 = v194;
      v106 = v195;
      while (1)
      {
        v107 = *v106;
        if (*v103)
        {
          v108 = *v105;
          if ((v108[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v107)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v207);
        }

        v105 = (v107 + 16);
        v103 = (v107 + 28);
        v106 = (v107 + 48);
        v102 = v107;
      }

      v109 = *v102;
      if (!v109)
      {
        goto LABEL_249;
      }

      v110 = *(*(v109 + 24 * *v108) + 112);
      if (!v110)
      {
        goto LABEL_234;
      }

      v111 = *(*(v110 + 32) + 8);
      v112 = *(v111 + 16);

      if (!v112)
      {
LABEL_116:

        v125 = v193;
        v127 = v195;
        v126 = v196;
LABEL_132:
        v143 = *v125;
        v200 = v125[48];
        v144 = v126[1];
        v204 = *v126;
        v205 = v144;
        v206[0] = v126[2];
        *(v206 + 9) = *(v126 + 41);
        v145 = v127;
        v146 = v197;
        v147 = v194;
        for (i = v126; ; i = v149)
        {
          v149 = *v145;
          if (*v146)
          {
            v150 = *v147;
            if ((v150[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v149)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v204);
          }

          v147 = (v149 + 16);
          v146 = (v149 + 28);
          v145 = (v149 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v151 = *(*(*i + 24 * *v150) + 112);
        if (!v151)
        {
          goto LABEL_235;
        }

        v152 = *(*(v151 + 32) + 8);
        v153 = *(v152 + 16);

        if (!v153)
        {
LABEL_156:

          v166 = v194;
          v168 = v195;
          v167 = v196;
LABEL_172:
          v184 = v167[1];
          v201 = *v167;
          v202 = v184;
          v203[0] = v167[2];
          *(v203 + 9) = *(v167 + 41);
          v185 = v197;
          while (1)
          {
            v186 = *v168;
            if (*v185)
            {
              if ((*(*v166 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v186)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v201);
            }

            v166 = (v186 + 16);
            v185 = (v186 + 28);
            v168 = (v186 + 48);
            v167 = v186;
          }

          if (!*v167)
          {
            goto LABEL_251;
          }

          v187 = *(*(*v167 + 24 * **v166) + 112);
          if (!v187)
          {
            goto LABEL_236;
          }

          v188 = *(v187 + 32);
          v189 = *(v188 + 24);
          v190 = *(v188 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v189, v190);
          Interpreter.Iterator.finalize(update:observer:)(v192, v189, v190);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v189, v190);
          LOBYTE(v217[0]) = 0;
          return;
        }

        v154 = 48 * v153 - 16;
        while (v153 <= *(v152 + 16))
        {
          if (v200)
          {
            goto LABEL_226;
          }

          if (*(v20 + 116) <= v143)
          {
            goto LABEL_193;
          }

          v155 = *(v20 + 104);
          if (!v155)
          {
            goto LABEL_227;
          }

          v156 = *(v152 + v154);
          v157 = *(*(v155 + 8 * v143) + 8);
          if (v156 >= *(v157 + 44))
          {
            goto LABEL_194;
          }

          v158 = *(v157 + 32);
          if (!v158)
          {
            goto LABEL_228;
          }

          v159 = v158 + (v156 << 7);
          v160 = *(v159 + 8);
          v163 = *(v159 + 28);
          v162 = *(v159 + 32);
          v161 = *(v159 + 24);
          v164 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v160, *(v159 + 16), v161, v162);
          if (v163 == v164 && v162 == HIDWORD(v164))
          {
            v201 = 0u;
            v202 = 0u;
            v203[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v201, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v193[48])
            {
              goto LABEL_258;
            }

            v169 = *v193;
            v168 = v195;
            v167 = v196;
            v166 = v194;
            if (v169 >= *(v20 + 116))
            {
              goto LABEL_210;
            }

            v170 = *(v20 + 104);
            if (!v170)
            {
              goto LABEL_259;
            }

            v171 = *(*(v170 + 8 * v169) + 8);
            v172 = *(v171 + 44);
            if (v156 >= v172)
            {
              goto LABEL_211;
            }

            v173 = *(v171 + 32);
            if (!v173)
            {
              goto LABEL_260;
            }

            if (v192 >= v172)
            {
              goto LABEL_212;
            }

            v174 = (v173 + (v156 << 7));
            v175 = (v173 + (v192 << 7));
            v176 = *v175;
            if (v174[31] == v174[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v177 = *(v174 + 14);
            if (!v177)
            {
              goto LABEL_261;
            }

            v178 = v174[31];
            v179 = v177 + 8 * v178;
            *v179 = -20480;
            *(v179 + 4) = v176;
            if (v178 == -1)
            {
              goto LABEL_213;
            }

            v174[31] = v178 + 1;
            v180 = *v174;
            if (v175[31] == v175[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v181 = *(v175 + 14);
            if (v181)
            {
              v182 = v175[31];
              v183 = v181 + 8 * v182;
              *v183 = 28672;
              *(v183 + 4) = v180;
              if (v182 == -1)
              {
                goto LABEL_214;
              }

              v175[31] = v182 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v164) >= v162)
          {
            goto LABEL_196;
          }

          if (v161)
          {
            goto LABEL_231;
          }

          if (!v160)
          {
            goto LABEL_232;
          }

          --v153;
          outlined init with copy of Event.Action(v160 + v164 + 8, &v201);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v201, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v154 -= 48;
          if (v153 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v113 = 48 * v112 - 16;
      while (v112 <= *(v111 + 16))
      {
        if (v199)
        {
          goto LABEL_223;
        }

        if (*(v20 + 116) <= v101)
        {
          goto LABEL_190;
        }

        v114 = *(v20 + 104);
        if (!v114)
        {
          goto LABEL_224;
        }

        v115 = *(v111 + v113);
        v116 = *(*(v114 + 8 * v101) + 8);
        if (v115 >= *(v116 + 44))
        {
          goto LABEL_191;
        }

        v117 = *(v116 + 32);
        if (!v117)
        {
          goto LABEL_225;
        }

        v118 = v117 + (v115 << 7);
        v120 = *(v118 + 8);
        v119 = *(v118 + 16);
        v122 = *(v118 + 28);
        v121 = *(v118 + 32);
        LOBYTE(v201) = *(v118 + 24);
        v123 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v120, v119, v201, v121);
        if (v122 == v123 && v121 == HIDWORD(v123))
        {
          v204 = 0u;
          v205 = 0u;
          v206[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v204, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v125 = v193;
          if (v193[48])
          {
            goto LABEL_253;
          }

          v128 = *v193;
          v127 = v195;
          v126 = v196;
          if (v128 >= *(v20 + 116))
          {
            goto LABEL_205;
          }

          v129 = *(v20 + 104);
          if (!v129)
          {
            goto LABEL_254;
          }

          v130 = *(*(v129 + 8 * v128) + 8);
          v131 = *(v130 + 44);
          if (v115 >= v131)
          {
            goto LABEL_206;
          }

          v132 = *(v130 + 32);
          if (!v132)
          {
            goto LABEL_255;
          }

          if (v192 >= v131)
          {
            goto LABEL_207;
          }

          v133 = (v132 + (v115 << 7));
          v134 = (v132 + (v192 << 7));
          v135 = *v134;
          if (v133[31] == v133[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v136 = *(v133 + 14);
          if (!v136)
          {
            goto LABEL_256;
          }

          v137 = v133[31];
          v138 = v136 + 8 * v137;
          *v138 = -23552;
          *(v138 + 4) = v135;
          if (v137 == -1)
          {
            goto LABEL_208;
          }

          v133[31] = v137 + 1;
          v139 = *v133;
          if (v134[31] == v134[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v140 = *(v134 + 14);
          if (v140)
          {
            v141 = v134[31];
            v142 = v140 + 8 * v141;
            *v142 = 25600;
            *(v142 + 4) = v139;
            if (v141 == -1)
            {
              goto LABEL_209;
            }

            v134[31] = v141 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v123) >= v121)
        {
          goto LABEL_195;
        }

        if (v201)
        {
          goto LABEL_229;
        }

        if (!v120)
        {
          goto LABEL_230;
        }

        --v112;
        outlined init with copy of Event.Transaction(v120 + v123 + 8, &v204);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v204, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v113 -= 48;
        if (v112 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
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
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v26 + 1) > *(v25 + 16))
    {
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
      goto LABEL_189;
    }

    if (v14)
    {
      goto LABEL_215;
    }

    if (*(v20 + 116) <= v13)
    {
      goto LABEL_182;
    }

    v29 = *(v20 + 104);
    if (!v29)
    {
      goto LABEL_216;
    }

    v30 = *v27;
    v31 = *(*(v29 + 8 * v13) + 8);
    if (v30 >= *(v31 + 44))
    {
      goto LABEL_183;
    }

    v32 = *(v31 + 32);
    if (!v32)
    {
      goto LABEL_217;
    }

    v33 = v32 + (v30 << 7);
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
    v37 = *(v33 + 28);
    v36 = *(v33 + 32);
    LOBYTE(v213[0]) = *(v33 + 24);
    v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v35, v34, v213[0], v36);
    if (v37 == v38 && v36 == HIDWORD(v38))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v38) >= v36)
    {
      goto LABEL_184;
    }

    if (v213[0])
    {
      goto LABEL_218;
    }

    v27 -= 12;
  }

  while (v35);
  __break(1u);
LABEL_32:
  if (v193[48])
  {
    goto LABEL_237;
  }

  v40 = *v193;
  if (v40 >= *(v20 + 116))
  {
    goto LABEL_197;
  }

  v41 = *(v20 + 104);
  if (!v41)
  {
    goto LABEL_238;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  v43 = v196[1];
  v213[0] = *v196;
  v213[1] = v43;
  v214[0] = v196[2];
  *(v214 + 9) = *(v196 + 41);
  v44 = v196;
  v45 = v194;
  v46 = v197;
  v47 = v195;
  while (1)
  {
    v48 = *v47;
    if (*v46)
    {
      v49 = *v45;
      if ((v49[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v48)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v213);
    }

    v45 = (v48 + 16);
    v46 = (v48 + 28);
    v47 = (v48 + 48);
    v44 = v48;
  }

  v50 = *v44;
  if (!v50)
  {
    goto LABEL_263;
  }

  v51 = *(*(v50 + 24 * *v49) + 112);
  if (!v51)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v51 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v193[48])
  {
    goto LABEL_240;
  }

  v52 = *v193;
  if (v52 >= *(v20 + 116))
  {
    goto LABEL_199;
  }

  v53 = *(v20 + 104);
  if (!v53)
  {
    goto LABEL_241;
  }

  v54 = *(*(v53 + 8 * v52) + 8);
  v55 = v196[1];
  v211[0] = *v196;
  v211[1] = v55;
  v212[0] = v196[2];
  *(v212 + 9) = *(v196 + 41);
  v56 = v196;
  v57 = v194;
  v58 = v197;
  v59 = v195;
  while (1)
  {
    v60 = *v59;
    if (*v58)
    {
      v61 = *v57;
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v211);
    }

    v57 = (v60 + 16);
    v58 = (v60 + 28);
    v59 = (v60 + 48);
    v56 = v60;
  }

  v62 = *v56;
  if (v62)
  {
    v198 = v54;
    v191 = v42;
    v63 = *(*(v62 + 24 * *v61) + 112);
    if (!v63)
    {
      goto LABEL_242;
    }

    v64 = *(*(v63 + 32) + 8);
    v65 = *(v64 + 16);
    v66 = 48 * v65 - 16;
    while (v65 > 0)
    {
      if (v65 > *(v64 + 16))
      {
        goto LABEL_185;
      }

      if (*(v20 + 116) <= v52)
      {
        goto LABEL_186;
      }

      v67 = *(v20 + 104);
      if (!v67)
      {
        goto LABEL_220;
      }

      v68 = *(v64 + v66);
      v69 = *(*(v67 + 8 * v52) + 8);
      if (v68 >= *(v69 + 44))
      {
        goto LABEL_187;
      }

      v70 = *(v69 + 32);
      if (!v70)
      {
        goto LABEL_221;
      }

      v71 = v70 + (v68 << 7);
      v73 = *(v71 + 8);
      v72 = *(v71 + 16);
      v75 = *(v71 + 28);
      v74 = *(v71 + 32);
      LOBYTE(v209[0]) = *(v71 + 24);
      v76 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v73, v72, v209[0], v74);
      if (v75 == v76 && v74 == HIDWORD(v76))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v76) >= v74)
      {
        goto LABEL_188;
      }

      if (v209[0])
      {
        goto LABEL_222;
      }

      v66 -= 48;
      --v65;
      if (!v73)
      {
        __break(1u);
LABEL_70:
        v78 = v196;
        v79 = v197;
        v80 = v196[1];
        v209[0] = *v196;
        v209[1] = v80;
        v210[0] = v196[2];
        *(v210 + 9) = *(v196 + 41);
        v81 = v194;
        v82 = v195;
        while (1)
        {
          v83 = *v82;
          if (*v79)
          {
            v84 = *v81;
            if ((v84[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v83)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v209);
          }

          v81 = (v83 + 16);
          v79 = (v83 + 28);
          v82 = (v83 + 48);
          v78 = v83;
        }

        v85 = *v78;
        if (!v85)
        {
          goto LABEL_265;
        }

        v86 = *(*(v85 + 24 * *v84) + 112);
        if (!v86)
        {
          goto LABEL_243;
        }

        v87 = *(*(v86 + 32) + 8);
        if (v65 > *(v87 + 16))
        {
          goto LABEL_200;
        }

        v88 = *(v87 + v66);
        if (v88 >= *(v198 + 44))
        {
          goto LABEL_201;
        }

        v89 = *(v198 + 32);
        if (!v89)
        {
          goto LABEL_244;
        }

        if (v192 >= *(v191 + 44))
        {
          goto LABEL_202;
        }

        v90 = *(v191 + 32);
        if (v90)
        {
          v91 = (v89 + (v88 << 7));
          v92 = (v90 + (v192 << 7));
          v93 = *v92;
          if (v91[31] == v91[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v94 = *(v91 + 14);
          if (!v94)
          {
            goto LABEL_246;
          }

          v95 = v91[31];
          v96 = v94 + 8 * v95;
          *v96 = -24575;
          *(v96 + 4) = v93;
          if (v95 == -1)
          {
            goto LABEL_203;
          }

          v91[31] = v95 + 1;
          v97 = *v91;
          if (v92[31] == v92[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v98 = *(v92 + 14);
          if (v98)
          {
            v99 = v92[31];
            v100 = v98 + 8 * v99;
            *v100 = 24577;
            *(v100 + 4) = v97;
            if (v99 == -1)
            {
              goto LABEL_204;
            }

            v92[31] = v99 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(unsigned int *a1)
{
  v3 = *a1;
  v4 = *(v1 + 5);
  v231 = *(v1 + 4);
  v232 = v4;
  v233 = *(v1 + 6);
  v5 = *(v1 + 1);
  v228 = *v1;
  v229 = v5;
  v6 = *(v1 + 3);
  *v230 = *(v1 + 2);
  *&v230[16] = v6;
  v7 = *(v1 + 28);
  v8 = *(v1 + 29);
  v9 = *(v1 + 120);
  v10 = *(v1 + 136);
  v238 = *(v1 + 152);
  v237 = v10;
  v236 = v9;
  v12 = *(v1 + 22);
  v11 = *(v1 + 23);
  v240 = v12;
  v241 = v11;
  v242 = v1[192];
  v13 = *(v1 + 21);
  v234 = v7;
  v235 = v8;
  v239 = v13;
  Interpreter.Iterator.updatingValue.getter();
  if ((v15 & 1) == 0 && v3 == v14)
  {
    v16 = 1;
LABEL_197:
    LOBYTE(v228) = v16;
    return;
  }

  v17 = v1 + 56;
  v18 = *(v1 + 72);
  v228 = *(v1 + 56);
  v229 = v18;
  *v230 = *(v1 + 88);
  v19 = v1 + 88;
  v20 = (v1 + 104);
  *&v230[9] = *(v1 + 97);
  v21 = (v1 + 56);
  v22 = (v1 + 72);
  v23 = v1 + 84;
  v226 = v1 + 104;
  while (1)
  {
    v24 = *v20;
    if (*v23 > 1u)
    {
      v25 = *v22;
      if ((*(v25 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v228);
    }

    v22 = (v24 + 16);
    v23 = (v24 + 28);
    v20 = (v24 + 48);
    v21 = v24;
  }

  v26 = *v21;
  if (!v26)
  {
    goto LABEL_275;
  }

  v27 = *(*(v26 + 24 * *(v25 + 8)) + 112);
  if (!v27)
  {
    goto LABEL_252;
  }

  *(v27 + 64) = v3;
  *(v27 + 68) = 0;
  v28 = *(v1 + 72);
  v259[0] = *v17;
  v259[1] = v28;
  v260[0] = *(v1 + 88);
  *(v260 + 9) = *(v1 + 97);
  v29 = v1 + 100;
  v30 = v1 + 56;
  v31 = (v1 + 104);
  while (1)
  {
    v32 = *v31;
    if (v8 < *v29)
    {
      v33 = (*v19 + 8 * v8);
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v259);
    }

    v19 = (v32 + 32);
    v29 = (v32 + 44);
    v31 = (v32 + 48);
    v30 = v32;
  }

  if (!*v30)
  {
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, *(*(*v30 + 24 * *v33) + 32), 0);
  if (v1[48])
  {
    goto LABEL_253;
  }

  v35 = *v1;
  if (v35 >= *(v12 + 116))
  {
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v36 = *(v12 + 104);
  if (!v36)
  {
    goto LABEL_254;
  }

  v37 = *(*(v36 + 8 * v35) + 8);
  if (v3 >= *(v37 + 84))
  {
    goto LABEL_215;
  }

  v38 = *(v37 + 72);
  if (!v38)
  {
    goto LABEL_255;
  }

  v39 = v38 + 312 * v3;
  v221 = v34;
  *(v39 + 36) = v34;
  *(v39 + 40) = 0;
  v40 = *v1;
  v41 = v1[48];
  v42 = *(v1 + 72);
  v257[0] = *v17;
  v257[1] = v42;
  v258[0] = *(v1 + 88);
  *(v258 + 9) = *(v1 + 97);
  v43 = (v1 + 56);
  v44 = (v1 + 72);
  v45 = v1 + 84;
  v46 = (v1 + 104);
  while (1)
  {
    v47 = *v46;
    if (*v45)
    {
      v48 = *v44;
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v257);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_271;
  }

  v224 = v1 + 56;
  v225 = v1 + 84;
  v222 = v1;
  v223 = v1 + 72;
  v50 = *(*(v49 + 24 * *v48) + 112);
  if (!v50)
  {
    goto LABEL_256;
  }

  v51 = *(*(v50 + 32) + 8);
  v52 = *(v51 + 16);
  v53 = (v51 + 48 * v52 - 16);
  v227 = v12;
  do
  {
    if (v52-- < 1)
    {
LABEL_108:
      v127 = *v222;
      v128 = v222[48];
      v129 = v224;
      v130 = v225;
      v131 = v224[1];
      v249[0] = *v224;
      v249[1] = v131;
      v250[0] = v224[2];
      *(v250 + 9) = *(v224 + 41);
      v132 = v223;
      v133 = v226;
      while (1)
      {
        v134 = *v133;
        if (*v130)
        {
          v135 = *v132;
          if ((v135[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v134)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v249);
        }

        v132 = (v134 + 16);
        v130 = (v134 + 28);
        v133 = (v134 + 48);
        v129 = v134;
      }

      v136 = *v129;
      if (!v136)
      {
        goto LABEL_272;
      }

      v137 = *(*(v136 + 24 * *v135) + 112);
      if (!v137)
      {
        goto LABEL_257;
      }

      v138 = *(*(v137 + 32) + 8);
      v139 = *(v138 + 16);

      if (!v139)
      {
LABEL_132:

        v152 = v222;
        v153 = v225;
        v154 = v226;
LABEL_148:
        v170 = *v152;
        v171 = v152[48];
        v172 = v223;
        v173 = v224;
        v174 = v224[1];
        v246 = *v224;
        v247 = v174;
        v248[0] = v224[2];
        *(v248 + 9) = *(v224 + 41);
        v175 = v154;
        v176 = v153;
        while (1)
        {
          v177 = *v175;
          if (*v176)
          {
            v178 = *v172;
            if ((v178[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v177)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v246);
          }

          v172 = (v177 + 16);
          v176 = (v177 + 28);
          v175 = (v177 + 48);
          v173 = v177;
        }

        if (!*v173)
        {
          goto LABEL_273;
        }

        v179 = *(*(*v173 + 24 * *v178) + 112);
        if (!v179)
        {
          goto LABEL_258;
        }

        v180 = *(*(v179 + 32) + 8);
        v181 = *(v180 + 16);

        if (!v181)
        {
LABEL_172:

          v194 = v223;
          v195 = v224;
          v196 = v225;
          v197 = v226;
LABEL_188:
          v213 = v195[1];
          v243 = *v195;
          v244 = v213;
          v245[0] = v195[2];
          *(v245 + 9) = *(v195 + 41);
          while (1)
          {
            v214 = *v197;
            if (*v196)
            {
              if ((*(*v194 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v214)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v243);
            }

            v194 = (v214 + 16);
            v196 = (v214 + 28);
            v197 = (v214 + 48);
            v195 = v214;
          }

          if (!*v195)
          {
            goto LABEL_274;
          }

          v215 = *(*(*v195 + 24 * **v194) + 112);
          if (!v215)
          {
            goto LABEL_259;
          }

          v216 = *(v215 + 32);
          v217 = *(v216 + 24);
          v218 = *(v216 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v217, v218);
          Interpreter.Iterator.finalize(update:observer:)(v221, v217, v218);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v217, v218);
          v16 = 0;
          goto LABEL_197;
        }

        v182 = 48 * v181 - 16;
        while (v181 <= *(v180 + 16))
        {
          if (v171)
          {
            goto LABEL_245;
          }

          if (*(v12 + 116) <= v170)
          {
            goto LABEL_210;
          }

          v183 = *(v12 + 104);
          if (!v183)
          {
            goto LABEL_246;
          }

          v184 = *(v180 + v182);
          v185 = *(*(v183 + 8 * v170) + 8);
          if (v184 >= *(v185 + 44))
          {
            goto LABEL_211;
          }

          v186 = *(v185 + 32);
          if (!v186)
          {
            goto LABEL_247;
          }

          v187 = v186 + (v184 << 7);
          v188 = *(v187 + 8);
          v191 = *(v187 + 28);
          v190 = *(v187 + 32);
          v189 = *(v187 + 24);
          v192 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v188, *(v187 + 16), v189, v190);
          if (v191 == v192 && v190 == HIDWORD(v192))
          {
            v243 = 0u;
            v244 = 0u;
            v245[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v243, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v222[48])
            {
              goto LABEL_282;
            }

            v198 = *v222;
            v194 = v223;
            v195 = v224;
            v196 = v225;
            v197 = v226;
            if (v198 >= *(v227 + 116))
            {
              goto LABEL_229;
            }

            v199 = *(v227 + 104);
            if (!v199)
            {
              goto LABEL_283;
            }

            v200 = *(*(v199 + 8 * v198) + 8);
            v201 = *(v200 + 44);
            if (v184 >= v201)
            {
              goto LABEL_230;
            }

            v202 = *(v200 + 32);
            if (!v202)
            {
              goto LABEL_284;
            }

            if (v221 >= v201)
            {
              goto LABEL_231;
            }

            v203 = (v202 + (v184 << 7));
            v204 = (v202 + (v221 << 7));
            v205 = *v204;
            if (v203[31] == v203[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v206 = *(v203 + 14);
            if (!v206)
            {
              goto LABEL_285;
            }

            v207 = v203[31];
            v208 = v206 + 8 * v207;
            *v208 = -20480;
            *(v208 + 4) = v205;
            if (v207 == -1)
            {
              goto LABEL_232;
            }

            v203[31] = v207 + 1;
            v209 = *v203;
            if (v204[31] == v204[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v210 = *(v204 + 14);
            if (v210)
            {
              v211 = v204[31];
              v212 = v210 + 8 * v211;
              *v212 = 28672;
              *(v212 + 4) = v209;
              if (v211 == -1)
              {
                goto LABEL_233;
              }

              v204[31] = v211 + 1;
              goto LABEL_188;
            }

            goto LABEL_286;
          }

          v12 = v227;
          if (HIDWORD(v192) >= v190)
          {
            goto LABEL_213;
          }

          if (v189)
          {
            goto LABEL_250;
          }

          if (!v188)
          {
            goto LABEL_251;
          }

          --v181;
          outlined init with copy of Event.Action(v188 + v192 + 8, &v243);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v243, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v182 -= 48;
          if (v181 + 1 < 2)
          {
            goto LABEL_172;
          }
        }

LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v140 = 48 * v139 - 16;
      while (v139 <= *(v138 + 16))
      {
        if (v128)
        {
          goto LABEL_242;
        }

        if (*(v12 + 116) <= v127)
        {
          goto LABEL_207;
        }

        v141 = *(v12 + 104);
        if (!v141)
        {
          goto LABEL_243;
        }

        v142 = *(v138 + v140);
        v143 = *(*(v141 + 8 * v127) + 8);
        if (v142 >= *(v143 + 44))
        {
          goto LABEL_208;
        }

        v144 = *(v143 + 32);
        if (!v144)
        {
          goto LABEL_244;
        }

        v145 = v144 + (v142 << 7);
        v147 = *(v145 + 8);
        v146 = *(v145 + 16);
        v149 = *(v145 + 28);
        v148 = *(v145 + 32);
        LOBYTE(v243) = *(v145 + 24);
        v150 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v147, v146, v243, v148);
        if (v149 == v150 && v148 == HIDWORD(v150))
        {
          v246 = 0u;
          v247 = 0u;
          v248[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v246, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v152 = v222;
          v12 = v227;
          if (v222[48])
          {
            goto LABEL_277;
          }

          v155 = *v222;
          v153 = v225;
          v154 = v226;
          if (v155 >= *(v227 + 116))
          {
            goto LABEL_224;
          }

          v156 = *(v227 + 104);
          if (!v156)
          {
            goto LABEL_278;
          }

          v157 = *(*(v156 + 8 * v155) + 8);
          v158 = *(v157 + 44);
          if (v142 >= v158)
          {
            goto LABEL_225;
          }

          v159 = *(v157 + 32);
          if (!v159)
          {
            goto LABEL_279;
          }

          if (v221 >= v158)
          {
            goto LABEL_226;
          }

          v160 = (v159 + (v142 << 7));
          v161 = (v159 + (v221 << 7));
          v162 = *v161;
          if (v160[31] == v160[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v163 = *(v160 + 14);
          if (!v163)
          {
            goto LABEL_280;
          }

          v164 = v160[31];
          v165 = v163 + 8 * v164;
          *v165 = -23552;
          *(v165 + 4) = v162;
          if (v164 == -1)
          {
            goto LABEL_227;
          }

          v160[31] = v164 + 1;
          v166 = *v160;
          if (v161[31] == v161[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v167 = *(v161 + 14);
          if (v167)
          {
            v168 = v161[31];
            v169 = v167 + 8 * v168;
            *v169 = 25600;
            *(v169 + 4) = v166;
            if (v168 == -1)
            {
              goto LABEL_228;
            }

            v161[31] = v168 + 1;
            goto LABEL_148;
          }

          goto LABEL_281;
        }

        v12 = v227;
        if (HIDWORD(v150) >= v148)
        {
          goto LABEL_212;
        }

        if (v243)
        {
          goto LABEL_248;
        }

        if (!v147)
        {
          goto LABEL_249;
        }

        --v139;
        outlined init with copy of Event.Transaction(v147 + v150 + 8, &v246);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v246, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v140 -= 48;
        if (v139 + 1 < 2)
        {
          goto LABEL_132;
        }
      }

LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if ((v52 + 1) > *(v51 + 16))
    {
      __break(1u);
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
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    if (v41)
    {
      goto LABEL_234;
    }

    if (*(v12 + 116) <= v40)
    {
      goto LABEL_199;
    }

    v55 = *(v12 + 104);
    if (!v55)
    {
      goto LABEL_235;
    }

    v56 = *v53;
    v57 = *(*(v55 + 8 * v40) + 8);
    if (v56 >= *(v57 + 44))
    {
      goto LABEL_200;
    }

    v58 = *(v57 + 32);
    if (!v58)
    {
      goto LABEL_236;
    }

    v59 = v58 + (v56 << 7);
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
    v63 = *(v59 + 28);
    v62 = *(v59 + 32);
    LOBYTE(v255[0]) = *(v59 + 24);
    v64 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v61, v60, v255[0], v62);
    if (v63 == v64 && v62 == HIDWORD(v64))
    {
      goto LABEL_48;
    }

    v12 = v227;
    if (HIDWORD(v64) >= v62)
    {
      goto LABEL_201;
    }

    if (v255[0])
    {
      goto LABEL_237;
    }

    v53 -= 12;
  }

  while (v61);
  __break(1u);
LABEL_48:
  v66 = v227;
  if (v222[48])
  {
    goto LABEL_260;
  }

  v67 = *v222;
  if (v67 >= *(v227 + 116))
  {
    goto LABEL_216;
  }

  v68 = *(v227 + 104);
  if (!v68)
  {
    goto LABEL_261;
  }

  v69 = *(*(v68 + 8 * v67) + 8);
  v70 = v224[1];
  v255[0] = *v224;
  v255[1] = v70;
  v256[0] = v224[2];
  *(v256 + 9) = *(v224 + 41);
  v71 = v224;
  v72 = v223;
  v73 = v225;
  v74 = v226;
  while (1)
  {
    v75 = *v74;
    if (*v73)
    {
      v76 = *v72;
      if ((v76[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v75)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v255);
    }

    v72 = (v75 + 16);
    v73 = (v75 + 28);
    v74 = (v75 + 48);
    v71 = v75;
  }

  v77 = *v71;
  if (!v77)
  {
    goto LABEL_287;
  }

  v78 = *(*(v77 + 24 * *v76) + 112);
  if (!v78)
  {
    goto LABEL_262;
  }

  if (!*(*(*(v78 + 32) + 8) + 16))
  {
    goto LABEL_217;
  }

  if (v222[48])
  {
    goto LABEL_263;
  }

  v79 = *v222;
  if (v79 >= *(v227 + 116))
  {
    goto LABEL_218;
  }

  v80 = *(v227 + 104);
  if (!v80)
  {
    goto LABEL_264;
  }

  v220 = *(*(v80 + 8 * v79) + 8);
  v81 = v224[1];
  v253[0] = *v224;
  v253[1] = v81;
  v254[0] = v224[2];
  *(v254 + 9) = *(v224 + 41);
  v82 = v224;
  v83 = v223;
  v84 = v225;
  v85 = v226;
  while (1)
  {
    v86 = *v85;
    if (*v84)
    {
      v87 = *v83;
      if ((v87[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v86)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v253);
    }

    v83 = (v86 + 16);
    v84 = (v86 + 28);
    v85 = (v86 + 48);
    v82 = v86;
  }

  v88 = *v82;
  if (v88)
  {
    v219 = v69;
    v89 = *(*(v88 + 24 * *v87) + 112);
    if (!v89)
    {
      goto LABEL_265;
    }

    v90 = *(*(v89 + 32) + 8);
    v91 = *(v90 + 16);
    v92 = 48 * v91 - 16;
    while (v91 >= 1)
    {
      if (v91 > *(v90 + 16))
      {
        goto LABEL_202;
      }

      if (*(v66 + 116) <= v79)
      {
        goto LABEL_203;
      }

      v93 = *(v66 + 104);
      if (!v93)
      {
        goto LABEL_239;
      }

      v94 = *(v90 + v92);
      v95 = *(*(v93 + 8 * v79) + 8);
      if (v94 >= *(v95 + 44))
      {
        goto LABEL_204;
      }

      v96 = *(v95 + 32);
      if (!v96)
      {
        goto LABEL_240;
      }

      v97 = v96 + (v94 << 7);
      v99 = *(v97 + 8);
      v98 = *(v97 + 16);
      v101 = *(v97 + 28);
      v100 = *(v97 + 32);
      LOBYTE(v251[0]) = *(v97 + 24);
      v102 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v99, v98, v251[0], v100);
      if (v101 == v102 && v100 == HIDWORD(v102))
      {
        goto LABEL_86;
      }

      if (HIDWORD(v102) >= v100)
      {
        goto LABEL_205;
      }

      if (v251[0])
      {
        goto LABEL_241;
      }

      v92 -= 48;
      --v91;
      v66 = v227;
      if (!v99)
      {
        __break(1u);
LABEL_86:
        v104 = v224;
        v105 = v225;
        v106 = v224[1];
        v251[0] = *v224;
        v251[1] = v106;
        v252[0] = v224[2];
        *(v252 + 9) = *(v224 + 41);
        v107 = v223;
        v108 = v226;
        v12 = v227;
        while (1)
        {
          v109 = *v108;
          if (*v105)
          {
            v110 = *v107;
            if ((v110[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v109)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v251);
          }

          v107 = (v109 + 16);
          v105 = (v109 + 28);
          v108 = (v109 + 48);
          v104 = v109;
        }

        v111 = *v104;
        if (!v111)
        {
          goto LABEL_289;
        }

        v112 = *(*(v111 + 24 * *v110) + 112);
        if (!v112)
        {
          goto LABEL_266;
        }

        v113 = *(*(v112 + 32) + 8);
        if (v91 > *(v113 + 16))
        {
          goto LABEL_219;
        }

        v114 = *(v113 + v92);
        if (v114 >= *(v220 + 44))
        {
          goto LABEL_220;
        }

        v115 = *(v220 + 32);
        if (!v115)
        {
          goto LABEL_267;
        }

        if (v221 >= *(v219 + 44))
        {
          goto LABEL_221;
        }

        v116 = *(v219 + 32);
        if (v116)
        {
          v117 = (v115 + (v114 << 7));
          v118 = (v116 + (v221 << 7));
          v119 = *v118;
          if (v117[31] == v117[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v120 = *(v117 + 14);
          if (!v120)
          {
            goto LABEL_269;
          }

          v121 = v117[31];
          v122 = v120 + 8 * v121;
          *v122 = -24575;
          *(v122 + 4) = v119;
          if (v121 == -1)
          {
            goto LABEL_222;
          }

          v117[31] = v121 + 1;
          v123 = *v117;
          if (v118[31] == v118[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v124 = *(v118 + 14);
          if (v124)
          {
            v125 = v118[31];
            v126 = v124 + 8 * v125;
            *v126 = 24577;
            *(v126 + 4) = v123;
            if (v125 == -1)
            {
              goto LABEL_223;
            }

            v118[31] = v125 + 1;
            goto LABEL_108;
          }

          goto LABEL_270;
        }

        goto LABEL_268;
      }
    }

LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
}

uint64_t T_BeginGraphUpdate.model(within:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (result + 56);
  v4 = *(result + 72);
  v82[0] = *(result + 56);
  v82[1] = v4;
  v83[0] = *(result + 88);
  v5 = result + 72;
  v6 = (result + 84);
  v7 = (result + 88);
  v8 = (result + 104);
  *(v83 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = (result + 84);
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v82);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_84;
  }

  result = v15 + 24 * *v14;
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_78;
  }

  ++*(*(v16 + 32) + 4);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, v2);
  if (v2[48])
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v17 = *(v2 + 22);
  v18 = *(v17 + 116);
  v19 = *v2;
  if (v19 >= v18)
  {
    goto LABEL_69;
  }

  v20 = *(v17 + 104);
  if (!v20)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v21 = result;
  v22 = *(*(v20 + 8 * v19) + 8);
  if (result >= *(v22 + 148))
  {
    goto LABEL_70;
  }

  v23 = *(v22 + 136);
  if (!v23)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v24 = v23 + 80 * result;
  v26 = *(v24 + 72);
  v25 = (v24 + 72);
  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_71;
  }

  *v25 = v27;
  if (v2[48])
  {
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
    goto LABEL_87;
  }

  if (*v2 >= v18)
  {
    goto LABEL_72;
  }

  specialized UnsafeArray.growToCapacity(_:)(*(v17 + 168));
  v28 = v3[1];
  v80[0] = *v3;
  v80[1] = v28;
  v81[0] = v3[2];
  *(v81 + 9) = *(v3 + 41);
  v29 = v2 + 100;
  result = *(v2 + 29);
  v30 = v3;
  v31 = v8;
  while (1)
  {
    v32 = *v31;
    if (result < *v29)
    {
      v33 = (*v7 + 8 * result);
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v80);
    }

    v7 = (v32 + 32);
    v29 = (v32 + 44);
    v31 = (v32 + 48);
    v30 = v32;
  }

  if (!*v30)
  {
    goto LABEL_85;
  }

  result = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v21, *(*(*v30 + 24 * *v33) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5, &type metadata for Event.Graph, &_s21SwiftUITracingSupport5EventV5GraphVmMd, &_s21SwiftUITracingSupport5EventV5GraphVmMR);
  v75 = result;
  v34 = v3[1];
  v78[0] = *v3;
  v78[1] = v34;
  v79[0] = v3[2];
  *(v79 + 9) = *(v3 + 41);
  v35 = v5;
  v36 = v3;
  v37 = v6;
  v38 = v8;
  while (1)
  {
    v39 = *v38;
    if (*v37 > 1u && (*(*v35 + 12) & 1) == 0)
    {
      break;
    }

    if (!v39)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v78);
    }

    v35 = v39 + 16;
    v37 = (v39 + 28);
    v38 = (v39 + 48);
    v36 = v39;
  }

  if (!*v36)
  {
    goto LABEL_86;
  }

  result = *v36 + 24 * *(*v35 + 8);
  v74 = v21;
  v73 = v3;
  if (!*(*result + 112))
  {
    goto LABEL_83;
  }

  v40 = specialized Strong.subscript.read();
  v42 = *v41;
  if (!*(*v41 + 16))
  {
    return (v40)(v76, 0);
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v44 & 1) == 0)
  {
    return (v40)(v76, 0);
  }

  v71 = v6;
  v72 = v5;
  v45 = *(*(v42 + 56) + 8 * v43);

  result = (v40)(v76, 0);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = 0;
    while (v47 < *(v45 + 16))
    {
      if (v2[48])
      {
        goto LABEL_73;
      }

      v48 = *v2;
      if (v48 >= *(v17 + 116))
      {
        goto LABEL_64;
      }

      v49 = *(v17 + 104);
      if (!v49)
      {
        goto LABEL_74;
      }

      v50 = *(v45 + 32 + 4 * v47);
      v51 = *(*(v49 + 8 * v48) + 8);
      v52 = *(v51 + 44);
      if (v50 >= v52)
      {
        goto LABEL_65;
      }

      v53 = *(v51 + 32);
      if (!v53)
      {
        goto LABEL_75;
      }

      if (v75 >= v52)
      {
        goto LABEL_66;
      }

      v54 = v17;
      v55 = (v53 + (v50 << 7));
      v56 = (v53 + (v75 << 7));
      v57 = *v56;
      if (v55[31] == v55[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)();
      }

      v58 = *(v55 + 14);
      if (!v58)
      {
        goto LABEL_76;
      }

      v59 = v55[31];
      v60 = v58 + 8 * v59;
      *v60 = -24574;
      *(v60 + 4) = v57;
      if (v59 == -1)
      {
        goto LABEL_67;
      }

      v55[31] = v59 + 1;
      v61 = *v55;
      if (v56[31] == v56[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)();
      }

      v62 = *(v56 + 14);
      if (!v62)
      {
        goto LABEL_77;
      }

      v63 = v56[31];
      v64 = v62 + 8 * v63;
      *v64 = 24578;
      *(v64 + 4) = v61;
      if (v63 == -1)
      {
        goto LABEL_68;
      }

      ++v47;
      v56[31] = v63 + 1;
      v17 = v54;
      if (v46 == v47)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
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
LABEL_69:
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
    goto LABEL_79;
  }

LABEL_52:

  v65 = v72;
  v66 = v73;
  v67 = v73[1];
  v76[0] = *v73;
  v76[1] = v67;
  v77[0] = v73[2];
  *(v77 + 9) = *(v73 + 41);
  v69 = v8;
  v68 = v71;
  while (1)
  {
    v70 = *v69;
    if (*v68 > 1u && (*(*v65 + 12) & 1) == 0)
    {
      break;
    }

    if (!v70)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v76);
    }

    v65 = v70 + 16;
    v68 = (v70 + 28);
    v69 = (v70 + 48);
    v66 = v70;
  }

  if (!*v66)
  {
    goto LABEL_88;
  }

  result = *v66 + 24 * *(*v65 + 8);
  if (!*(*result + 112))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  return specialized Dictionary.subscript.setter(0, v74);
}

uint64_t T_EndGraphUpdateV0.model(within:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 116);
  if (!a3)
  {
    v4 = 0;
  }

  *(a1 + 160) = v4;
  *(a1 + 164) = a3 != 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 168) = a3 == 0;
  *(a1 + 172) = v5;
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  result = Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v18[0] = *(a1 + 56);
  v18[1] = v8;
  v19[0] = *(a1 + 88);
  *(v19 + 9) = *(a1 + 97);
  v9 = (a1 + 72);
  v10 = (a1 + 84);
  v11 = (a1 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10)
    {
      v13 = *v9;
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v18);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_18;
  }

  result = v14 + 24 * *v13;
  v15 = *(*result + 112);
  if (!v15)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v16 = *(v15 + 32);
  v17 = v16[1] - 1;
  v16[1] = v17;
  if (!v17)
  {
    ++*v16;
  }

  return result;
}

uint64_t T_EndGraphUpdate.model(within:)(uint64_t a1, uint64_t a2)
{
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  result = Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v15[0] = *(a1 + 56);
  v15[1] = v5;
  v16[0] = *(a1 + 88);
  *(v16 + 9) = *(a1 + 97);
  v6 = (a1 + 72);
  v7 = (a1 + 84);
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7)
    {
      v10 = *v6;
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v15);
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (!v11)
  {
    goto LABEL_13;
  }

  result = v11 + 24 * *v10;
  v12 = *(*result + 112);
  if (!v12)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 32);
  v14 = v13[1] - 1;
  v13[1] = v14;
  if (!v14)
  {
    ++*v13;
  }

  return result;
}

uint64_t IncrementalChildReuseAttempt.reuseEvents.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IncrementalChildReuseAttempt.recycledSubgraphID.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t UpdateReuse.incrementalChildReuseAttempts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UpdateReuse.otherReuseEvents.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Subgraph.allTrees.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL static Subgraph.PrimaryKey.== infix(_:_:)(unint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 == a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = (a3 ^ a1) >> 32 == 0;
  if (a1 != a3)
  {
    v5 = 0;
  }

  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void Subgraph.PrimaryKey.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a2);
    a2 >>= 32;
  }

  Hasher._combine(_:)(a2);
}

Swift::Int Subgraph.PrimaryKey.hashValue.getter(unint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
    a1 >>= 32;
  }

  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Subgraph.PrimaryKey(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    v5 = v2 == v3;
    return *(a2 + 8) && v5;
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    return (v4 & 1) == 0 && (v3 ^ v2) >> 32 == 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subgraph.PrimaryKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
    v1 >>= 32;
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Subgraph.PrimaryKey()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
    v1 >>= 32;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subgraph.PrimaryKey(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v2);
    v2 >>= 32;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Subgraph.graph.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.parents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Subgraph.children.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Subgraph._lastParent.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

unint64_t Subgraph.lastParent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1 - 40;
  v3 = *(v0 + 36) + 1;
  while (1)
  {
    if (!--v3)
    {
      v4 = (v0 + 56);
      v6 = *(v0 + 60);
      return *v4 | (v6 << 32);
    }

    if (!v1)
    {
      break;
    }

    v4 = (v2 + 40);
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5 == -1)
    {
      v6 = 0;
      return *v4 | (v6 << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t Subgraph.firstParent.getter()
{
  v1 = *(v0 + 36);
  if (!v1)
  {
    v3 = 0;
    return v3 | ((v1 == 0) << 32);
  }

  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *v2;
    return v3 | ((v1 == 0) << 32);
  }

  __break(1u);
  return result;
}

uint64_t Subgraph.id.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Subgraph.nodes.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Subgraph.allocatingAttribute.setter(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.allocatedBy.setter(uint64_t result)
{
  *(v1 + 124) = result;
  *(v1 + 128) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.deallocatedBy.setter(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = BYTE4(result) & 1;
  return result;
}

uint64_t Subgraph.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

void (*Subgraph.subscript.read(void (**a1)(void **a1), int a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xD0uLL);
  }

  *a1 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2 < *(*v2 + 16))
  {
    memmove(result, (*v2 + 208 * a2 + 32), 0xD0uLL);
    return Snapshot.subscript.read;
  }

  __break(1u);
  return result;
}

uint64_t (*Subgraph.subscript.modify(uint64_t ***a1, int a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

char *Subgraph.subscript.setter(_OWORD *a1, int a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if (a2 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2 < *(v5 + 2))
  {
    v7 = a1[11];
    v8 = &v5[208 * a2];
    *(v8 + 12) = a1[10];
    *(v8 + 13) = v7;
    *(v8 + 14) = a1[12];
    v9 = a1[7];
    *(v8 + 8) = a1[6];
    *(v8 + 9) = v9;
    v10 = a1[9];
    *(v8 + 10) = a1[8];
    *(v8 + 11) = v10;
    v11 = a1[3];
    *(v8 + 4) = a1[2];
    *(v8 + 5) = v11;
    v12 = a1[5];
    *(v8 + 6) = a1[4];
    *(v8 + 7) = v12;
    v13 = a1[1];
    *(v8 + 2) = *a1;
    *(v8 + 3) = v13;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Subgraph.debugViewTreeFragment(within:attachment:)(unint64_t a1)
{
  MEMORY[0x26D69CDB0](0x7061726762755328, 0xEA00000000002068);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  if (*(*v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport7TreeRefVtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport7TreeRefVtGMR);
    result = swift_initStackObject();
    *(result + 16) = xmmword_26C328DC0;
    *(result + 32) = 0;
    v38 = result;
    v39 = result + 32;
    *(result + 40) = v1[16] << 32;
    v4 = 1;
    while (1)
    {
      v8 = v4 - 1;
      v9 = (v39 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
      *(result + 16) = v8;
      v12 = HIDWORD(v11);
      v13 = *(a1 + 124);
      if (HIDWORD(v11) >= v13)
      {
        break;
      }

      v14 = *(a1 + 112);
      if (!v14)
      {
        goto LABEL_45;
      }

      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      v15 = *(v14 + 168 * HIDWORD(v11));
      if (v11 >= *(v15 + 16))
      {
        goto LABEL_38;
      }

      v16 = HIDWORD(*(v15 + 208 * v11 + 136));
      if (v16 >= v13)
      {
        goto LABEL_39;
      }

      v17 = v14 + 168 * v16;
      v18 = *(v17 + 36);
      if (v18)
      {
        v19 = *(v17 + 24);
        if (!v19)
        {
          goto LABEL_48;
        }

        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      v22 = String.init(repeating:count:)(v21, v10);
      v23 = String.init<A>(describing:)();
      v25 = v24;

      MEMORY[0x26D69CDB0](v23, v25);

      if (v12 >= *(a1 + 124))
      {
        goto LABEL_40;
      }

      v26 = *(a1 + 112);
      if (!v26)
      {
        goto LABEL_46;
      }

      if (v11 >= *(*(v26 + 168 * HIDWORD(v11)) + 16))
      {
        goto LABEL_41;
      }

      v27 = specialized Tree.displayName(within:_:)(a1);
      v29 = v28;

      MEMORY[0x26D69CDB0](v27, v29);

      if (v18)
      {
        _StringGuts.grow(_:)(16);
        MEMORY[0x26D69CDB0](0x6E65726170203A3ALL, 0xEA00000000002074);
        _print_unlocked<A, B>(_:_:)();
        result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v20 >= *(a1 + 124))
        {
          goto LABEL_44;
        }

        v30 = *(a1 + 112);
        if (!v30)
        {
          goto LABEL_49;
        }

        if (*(*(v30 + 168 * v20) + 16))
        {
          v31 = 84;
        }

        else
        {
          v31 = 0;
        }

        if (*(*(v30 + 168 * v20) + 16))
        {
          v32 = 0xE100000000000000;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        MEMORY[0x26D69CDB0](v31, v32);

        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        v33 = 0xE000000000000000;
        v34 = 0;
      }

      else
      {
        v33 = 0xE700000000000000;
        v34 = 0x544F4F52203A3ALL;
      }

      MEMORY[0x26D69CDB0](v34, v33);

      if (v12 >= *(a1 + 124))
      {
        goto LABEL_42;
      }

      v35 = *(a1 + 112);
      if (!v35)
      {
        goto LABEL_47;
      }

      v36 = *(v35 + 168 * HIDWORD(v11));
      if (v11 >= *(v36 + 16))
      {
        goto LABEL_43;
      }

      if (*(v36 + 208 * v11 + 148))
      {
        v7 = 0xE300000000000000;
        v5 = 7104878;
      }

      else
      {
        v5 = String.init<A>(describing:)();
        v7 = v6;
      }

      MEMORY[0x26D69CDB0](v5, v7);

      MEMORY[0x26D69CDB0](2112065, 0xE300000000000000);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);

      MEMORY[0x26D69CDB0](v22._countAndFlagsBits, v22._object);

      result = v38;
      v4 = *(v38 + 16);
      if (!v4)
      {
        v37 = 8202;

        return v37;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
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
  }

  else
  {

    MEMORY[0x26D69CDB0](0x7373656C65657254, 0xE800000000000000);

    return 0;
  }

  return result;
}

uint64_t Subgraph.viewTreeSubgraphs(within:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 40);
  v6 = *(v1 + 52);
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = v5 - 40 + 40 * v4;
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (!v5)
    {
      goto LABEL_38;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v8 + 56);
    ++v4;
    v8 += 40;
    if (v10 == -1)
    {
      v30 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v8 + 24);
      v32 = *(v8 + 32);
      v31 = *(v8 + 36);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 40 * v14;
      *(v15 + 32) = v30;
      *(v15 + 40) = v11;
      *(v15 + 48) = -1;
      *(v15 + 56) = v12;
      *(v15 + 64) = v32;
      *(v15 + 68) = v31;
      v4 = v9;
      goto LABEL_2;
    }
  }

  v16 = *(v7 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v7 + 32;
    v19 = MEMORY[0x277D84F90];
LABEL_15:
    v20 = (v18 + 40 * v17);
    v21 = v17;
    while (v21 < *(v7 + 16))
    {
      v22 = *v20;
      v23 = *(v3 + 124);
      if (*v20 >= v23)
      {
        goto LABEL_35;
      }

      v24 = *(v3 + 112);
      if (!v24)
      {
        goto LABEL_39;
      }

      v25 = *(v24 + 168 * v22 + 64);
      if (v25 >= v23)
      {
        goto LABEL_36;
      }

      if (!*(*(v24 + 168 * v25) + 16))
      {
        goto LABEL_37;
      }

      v33 = v3;
      result = specialized Tree.parent(_:within:unabstracting:)(16, &v33);
      if ((v26 & 1) == 0 && *(v2 + 64) == HIDWORD(result))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          v19 = result;
        }

        v18 = v7 + 32;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v19);
          v29 = v28 + 1;
          v19 = result;
        }

        v17 = v21 + 1;
        *(v19 + 16) = v29;
        *(v19 + 4 * v28 + 32) = v22;
        if (v16 - 1 != v21)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

      ++v21;
      v20 += 10;
      if (v16 == v21)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_31:

  return v19;
}

uint64_t Subgraph.describe(state:)(__int128 *a1)
{
  v25 = *a1;
  _StringGuts.grow(_:)(68);
  result = MEMORY[0x26D69CDB0](0x7061726762757328, 0xEA00000000002068);
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 64);
    v4 = specialized InspectionState.wrapDescription<A>(_:)(v3);
    MEMORY[0x26D69CDB0](v4);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v5 = specialized InspectionState.wrapDescription<A>(_:)(*(v1 + 72), *(v1 + 80));
    MEMORY[0x26D69CDB0](v5);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v6 = specialized InspectionState.wrapDescription<A>(_:)(v3 << 32);
    MEMORY[0x26D69CDB0](v6);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    if (*(v1 + 114))
    {
      v7 = 0x746F6F527369;
    }

    else
    {
      v7 = 0;
    }

    if (*(v1 + 114))
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v7, v8);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    if (*(v1 + 113))
    {
      v9 = 0x6C61626F6C477369;
    }

    else
    {
      v9 = 0;
    }

    if (*(v1 + 113))
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v9, v10);

    MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
    v11 = Inspectable_Context.snapshot.getter();
    v12 = Subgraph.displayName(within:_:)(v11, 2);
    MEMORY[0x26D69CDB0](v12);

    MEMORY[0x26D69CDB0](538970665, 0xE400000000000000);
    if (*(v1 + 112))
    {
      v13 = 0x6563616C50736168;
    }

    else
    {
      v13 = 0;
    }

    if (*(v1 + 112))
    {
      v14 = 0xEE007265646C6F68;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    MEMORY[0x26D69CDB0](v13, v14);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v15 = specialized InspectionState.describe<A>(_:_:)(0x6E6572646C696863, 0xE800000000000000, *(v1 + 40), *(v1 + 48));
    MEMORY[0x26D69CDB0](v15);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v16 = *(v1 + 24);
    v17 = *(v1 + 36);
    v18 = specialized InspectionState.describe<A>(_:_:)(0x73746E65726170, 0xE700000000000000, v16, *(v1 + 32) | (v17 << 32));
    MEMORY[0x26D69CDB0](v18);

    result = MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    if (!v17)
    {
      v19 = 0;
      goto LABEL_24;
    }

    if (v16)
    {
      v19 = *v16;
LABEL_24:
      v20 = specialized InspectionState.describe<A>(_:_:)(0x7261507473726966, 0xEB00000000746E65, v19 | ((v17 == 0) << 32));
      MEMORY[0x26D69CDB0](v20);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v21 = Subgraph.lastParent.getter();
      v22 = specialized InspectionState.describe<A>(_:_:)(0x657261507473616CLL, 0xEA0000000000746ELL, v21 | ((HIDWORD(v21) & 1) << 32));
      MEMORY[0x26D69CDB0](v22);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v23 = specialized InspectionState.describe<A>(_:_:)(0x7365646F6ELL, 0xE500000000000000, *(v1 + 96));
      MEMORY[0x26D69CDB0](v23);

      MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
      v24 = specialized InspectionState.describe<A>(_:_:)(0xD000000000000013, 0x800000026C33BAA0, *(v1 + 116) | (*(v1 + 120) << 32));
      MEMORY[0x26D69CDB0](v24);

      MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Subgraph.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = swift_slowAlloc();
    *(v0 + 24) = v3;
    memcpy(v3, v1, 40 * v2);
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = *(v0 + 52);
    v6 = swift_slowAlloc();
    *(v0 + 40) = v6;
    memcpy(v6, v4, 40 * v5);
  }

  v7 = *v0;
  v8 = *(*v0 + 16);
  if (v8)
  {
    v22 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_19:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v9 = 0;
    v10 = 0;
    do
    {
      if (v10 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = &v7[v9];
      v14 = **&v7[v9 + 128];
      if (*&v7[v9 + 152])
      {
        *(v13 + 19) = swift_slowAlloc();
        swift_arrayInitWithCopy();
      }

      v15 = *(v13 + 27);
      if (v15)
      {
        v16 = *&v7[v9 + 228];
        v17 = swift_slowAlloc();
        *(v13 + 27) = v17;
        memcpy(v17, v15, 8 * v16);
      }

      v18 = &v7[v9];
      v19 = *&v7[v9 + 96];
      if (v19)
      {
        v20 = *(v18 + 27);
        v21 = swift_slowAlloc();
        *(v18 + 12) = v21;
        memcpy(v21, v19, 8 * v20);
      }

      ++v10;
      v23 = 0;
      v24 = 1;
      v25 = 0;
      v26 = 0;
      v27 = 1;
      v28 = 0;
      v29 = 513;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v23);
      *(v18 + 29) = v11;
      v12 = swift_slowAlloc();
      *v12 = v14;
      *(v13 + 16) = v12;
      v9 += 208;
    }

    while (v8 != v10);
    *v22 = v7;
  }
}

uint64_t protocol witness for Mortal.interval.setter in conformance Subgraph(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

uint64_t T_SubgraphCreated.model(within:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1 + 56;
  v4 = *(a1 + 72);
  v231[0] = *(a1 + 56);
  v231[1] = v4;
  *v232 = *(a1 + 88);
  v5 = a1 + 72;
  v6 = a1 + 84;
  v7 = a1 + 88;
  v8 = a1 + 104;
  *&v232[9] = *(a1 + 97);
  v9 = a1 + 56;
  v10 = a1 + 72;
  v11 = a1 + 84;
  v12 = a1 + 104;
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v231);
    }

    v10 = v13 + 16;
    v11 = v13 + 28;
    v12 = v13 + 48;
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v16 = *(*(v15 + 24 * *(v14 + 8)) + 112);
  if (!v16)
  {
    goto LABEL_153;
  }

  v17 = *v16;
  v18 = *(v16 + 11);
  v217 = *(v16 + 9);
  v218 = v18;
  *v219 = *(v16 + 13);
  *&v219[13] = *(v16 + 117);
  v19 = *(v16 + 3);
  v213 = *(v16 + 1);
  v214 = v19;
  v20 = *(v16 + 7);
  v215 = *(v16 + 5);
  v216 = v20;
  v21 = *v17;
  if (!*(*v17 + 16))
  {
    v25 = 0;
    v27 = a2;
LABEL_14:
    v26 = -1;
    v185 = v27;
    goto LABEL_15;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v23 & 1) == 0)
  {
    v27 = a2;
    v25 = 0;
    goto LABEL_14;
  }

  v24 = *(v21 + 56) + 24 * v22;
  v25 = *(v24 + 8);
  v185 = *v24;
  v26 = *(v24 + 16);
LABEL_15:
  v28 = *(v3 + 1);
  v229[0] = *v3;
  v229[1] = v28;
  v230[0] = *(v3 + 2);
  *(v230 + 9) = *(v3 + 41);
  v29 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v8;
  while (1)
  {
    v33 = *v32;
    if (*v31 >= 2u)
    {
      v34 = *v30;
      if ((*(v34 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v33)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v229);
    }

    v30 = v33 + 16;
    v31 = v33 + 28;
    v32 = v33 + 48;
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_170;
  }

  v36 = *(*(v35 + 24 * *(v34 + 8)) + 112);
  if (!v36)
  {
    goto LABEL_154;
  }

  v37 = v218;
  *(v36 + 72) = v217;
  *(v36 + 88) = v37;
  *(v36 + 104) = *v219;
  v38 = v214;
  *(v36 + 8) = v213;
  *(v36 + 24) = v38;
  v39 = v216;
  *(v36 + 40) = v215;
  *v36 = v17;
  *(v36 + 117) = *&v219[13];
  *(v36 + 56) = v39;
  v220[0] = v185;
  v221 = v26;
  if (v25 == -1)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v220[1] = v25 + 1;
  v40 = *(v3 + 1);
  v227[0] = *v3;
  v227[1] = v40;
  v228[0] = *(v3 + 2);
  *(v228 + 9) = *(v3 + 41);
  v41 = v3;
  v42 = v5;
  v43 = v6;
  v44 = v8;
  while (1)
  {
    v45 = *v44;
    if (*v43 >= 2u)
    {
      v46 = *v42;
      if ((*(v46 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v45)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v227);
    }

    v42 = v45 + 16;
    v43 = v45 + 28;
    v44 = v45 + 48;
    v41 = v45;
  }

  v47 = *v41;
  if (!v47)
  {
    goto LABEL_171;
  }

  v48 = *(*(v47 + 24 * *(v46 + 8)) + 112);
  if (!v48)
  {
    goto LABEL_155;
  }

  v49 = v48[5];
  v210 = v48[4];
  v211 = v49;
  v212[0] = v48[6];
  *(v212 + 13) = *(v48 + 109);
  v50 = v48[1];
  v206 = *v48;
  v207 = v50;
  v51 = v48[3];
  v208 = v48[2];
  v209 = v51;
  specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v206, a2, v220, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
  v52 = *(v3 + 1);
  v225[0] = *v3;
  v225[1] = v52;
  v226[0] = *(v3 + 2);
  *(v226 + 9) = *(v3 + 41);
  v53 = v3;
  v54 = v5;
  v55 = v6;
  v56 = v8;
  while (1)
  {
    v57 = *v56;
    if (*v55 >= 2u)
    {
      v58 = *v54;
      if ((*(v58 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v225);
    }

    v54 = v57 + 16;
    v55 = v57 + 28;
    v56 = v57 + 48;
    v53 = v57;
  }

  v59 = *v53;
  if (!v59)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v60 = *(*(v59 + 24 * *(v58 + 8)) + 112);
  if (!v60)
  {
    goto LABEL_156;
  }

  v61 = v207;
  *v60 = v206;
  v60[1] = v61;
  v62 = v209;
  v60[2] = v208;
  v60[3] = v62;
  *(v60 + 109) = *(v212 + 13);
  v63 = v212[0];
  v60[5] = v211;
  v60[6] = v63;
  v60[4] = v210;
  if (!a1[48])
  {
    v64 = BYTE1(*a1);
    if (v64 == 2)
    {
      v184 = v25 + 1;
      v65 = *(a1 + 22);
      v66 = *a1;
      if (v66 < *(v65 + 116))
      {
        v67 = *(v65 + 104);
        if (!v67)
        {
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v68 = *(*(*(v67 + 8 * v66) + 8) + 124);
        v69 = *(v3 + 1);
        v222 = *v3;
        v223 = v69;
        v224[0] = *(v3 + 2);
        *(v224 + 9) = *(v3 + 41);
        v70 = a1 + 100;
        v71 = *(a1 + 29);
        while (1)
        {
          v72 = *v8;
          if (v71 < *v70)
          {
            v73 = (*v7 + 8 * v71);
            if ((v73[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v72)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v71, 0, &v222);
          }

          v7 = v72 + 32;
          v70 = v72 + 44;
          v8 = v72 + 48;
          v3 = v72;
        }

        if (!*v3)
        {
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v182 = *(*(*v3 + 24 * *v73) + 32);
        v102 = *(a1 + 9);
        v200 = *(a1 + 8);
        v201 = v102;
        v202 = *(a1 + 10);
        v103 = *(a1 + 5);
        v196 = *(a1 + 4);
        v197 = v103;
        v104 = *(a1 + 7);
        v198 = *(a1 + 6);
        v199 = v104;
        v105 = *(a1 + 1);
        v193 = *a1;
        v194 = v105;
        v106 = *(a1 + 3);
        *v195 = *(a1 + 2);
        *&v195[16] = v106;
        v205 = a1[192];
        v107 = *(a1 + 23);
        v203 = v65;
        v204 = v107;
        Interpreter.Iterator.updatingValue.getter();
        v110 = v109 & 1;
        if (v109)
        {
          v111 = 0;
        }

        else
        {
          v111 = v108;
        }

        LOBYTE(v189) = 1;
        v112 = MEMORY[0x277D84F90];
        v181 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA15MortalReferenceVyAA11SubgraphRefVG_SayAKGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v114 = v113;
        v180 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA15MortalReferenceVyAA11SubgraphRefVG_SayAKGTt0g5Tf4g_n(v112);
        v116 = v115;
        v188[0] = 1;
        v191 = 1;
        v190 = 1;
        v117 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SwiftUITracingSupport19ViewGraphRootValuesV_AC12AttributeRefVTt0g5Tf4g_n(v112);
        v192 = v110;
        if (v66 < *(v65 + 116))
        {
          v178 = v65;
          v179 = v68;
          v118 = *(v65 + 104);
          if (!v118)
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v119 = v189;
          v120 = v188[0];
          v121 = v191;
          v122 = v190;
          v123 = *(*(v118 + 8 * v66) + 8);
          v124 = *(v123 + 124);
          if (v124 == *(v123 + 120))
          {
            v177 = v117;
            specialized UnsafeArray.growToCapacity(_:)(2 * v124);
            v119 = v189;
            v121 = v191;
            v112 = MEMORY[0x277D84F90];
            v117 = v177;
          }

          v125 = *(v123 + 112);
          if (!v125)
          {
            goto LABEL_160;
          }

          v126 = *(v123 + 124);
          v127 = MEMORY[0x277D84F98];
          v128 = v125 + 168 * v126;
          *v128 = v112;
          *(v128 + 8) = v127;
          *(v128 + 16) = 0;
          *(v128 + 20) = v119;
          *(v128 + 24) = v181;
          *(v128 + 32) = v114;
          *(v128 + 40) = v180;
          *(v128 + 48) = v116;
          *(v128 + 52) = HIDWORD(v116);
          *(v128 + 60) = v120;
          *(v128 + 64) = v179;
          *(v128 + 72) = v185;
          *(v128 + 80) = v184;
          *(v128 + 88) = 0;
          *(v128 + 96) = v112;
          *(v128 + 104) = 0;
          *(v128 + 111) = 0;
          *(v128 + 116) = v111;
          *(v128 + 120) = v110;
          *(v128 + 124) = 0;
          *(v128 + 128) = v121;
          *(v128 + 132) = 0;
          *(v128 + 136) = v122;
          *(v128 + 144) = v182;
          *(v128 + 152) = -1;
          *(v128 + 160) = v117;
          if (v126 != -1)
          {
            *(v123 + 124) = v126 + 1;
            if (a1[48])
            {
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
              goto LABEL_169;
            }

            v129 = *a1;
            if (v129 < *(v178 + 116))
            {
              v130 = *(v178 + 104);
              if (v130)
              {
                v131 = *(*(*(v130 + 8 * v129) + 8) + 128);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v189 = *v131;
                *v131 = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v185, v184, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport10SubgraphIDVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport10SubgraphIDVAC0F3RefVGMR, &type metadata for SubgraphID);
                *v131 = v189;
              }

              goto LABEL_162;
            }

            goto LABEL_140;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v64 == 4)
    {
      v186 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
      v74 = *a1;
      v75 = a1[48];
      v76 = *(v3 + 1);
      v193 = *v3;
      v194 = v76;
      *v195 = *(v3 + 2);
      *&v195[9] = *(v3 + 41);
      v77 = v3;
      v78 = v5;
      v79 = v6;
      v80 = v8;
      v81 = *(a1 + 22);
      while (1)
      {
        v82 = *v80;
        if (*v79)
        {
          v83 = *v78;
          if ((v83[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v82)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v193);
        }

        v78 = v82 + 16;
        v79 = v82 + 28;
        v80 = v82 + 48;
        v77 = v82;
      }

      v84 = *v77;
      if (!v84)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v85 = *(*(v84 + 24 * *v83) + 112);
      if (!v85)
      {
        goto LABEL_157;
      }

      v86 = *(*(v85 + 32) + 8);
      v87 = *(v86 + 16);
      v88 = v87 + 1;
      v89 = (v86 + 48 * v87 - 16);
      do
      {
        if (--v88 < 1)
        {
          v98 = *a1;
          v99 = a1[48];
          v100 = *(v3 + 1);
          v222 = *v3;
          v223 = v100;
          v224[0] = *(v3 + 2);
          *(v224 + 9) = *(v3 + 41);
          while (1)
          {
            v101 = *v8;
            if (*v6)
            {
              if ((*(*v5 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v101)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v222);
            }

            v5 = v101 + 16;
            v6 = v101 + 28;
            v8 = v101 + 48;
            v3 = v101;
          }

          if (!*v3)
          {
            goto LABEL_176;
          }

          result = *v3 + 24 * **v5;
          v134 = *(*result + 112);
          if (!v134)
          {
            goto LABEL_173;
          }

          v135 = *(*(v134 + 32) + 8);
          v136 = *(v135 + 16);
          v137 = (v135 + 48 * v136 - 16);
          while (v136-- >= 1)
          {
            if ((v136 + 1) > *(v135 + 16))
            {
              goto LABEL_133;
            }

            if (v99)
            {
              goto LABEL_150;
            }

            if (*(v81 + 116) <= v98)
            {
              goto LABEL_134;
            }

            v139 = *(v81 + 104);
            if (!v139)
            {
              goto LABEL_151;
            }

            v140 = *v137;
            v141 = *(*(v139 + 8 * v98) + 8);
            if (v140 >= *(v141 + 44))
            {
              goto LABEL_135;
            }

            v142 = *(v141 + 32);
            if (!v142)
            {
              goto LABEL_152;
            }

            v137 -= 12;
            v143 = v142 + (v140 << 7);
            v144 = *(v143 + 8);
            v145 = *(v143 + 16);
            v146 = *(v143 + 28);
            v147 = *(v143 + 32);
            LOBYTE(v189) = *(v143 + 24);
            result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5(v144, v145, v189, v147);
            v148 = v146 == result && v147 == HIDWORD(result);
            if (!v148)
            {
              LODWORD(v91) = v140;
              goto LABEL_106;
            }
          }

          return result;
        }

        if (v75)
        {
          goto LABEL_145;
        }

        if (*(v81 + 116) <= v74)
        {
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
          goto LABEL_136;
        }

        v90 = *(v81 + 104);
        if (!v90)
        {
          goto LABEL_146;
        }

        v91 = *v89;
        v92 = *(*(v90 + 8 * v74) + 8);
        if (v91 >= *(v92 + 44))
        {
          goto LABEL_131;
        }

        v93 = *(v92 + 32);
        if (!v93)
        {
          goto LABEL_147;
        }

        v94 = v93 + (v91 << 7);
        v97 = *(v94 + 8);
        v96 = v94 + 8;
        v95 = v97;
        if (!*(v96 + 24))
        {
          goto LABEL_132;
        }

        if (*(v96 + 16))
        {
          goto LABEL_149;
        }

        if (!v95)
        {
          goto LABEL_148;
        }

        v89 -= 12;
      }

      while (*v95 != &type metadata for Event.AttributeValue);
LABEL_106:
      if (a1[48])
      {
        goto LABEL_163;
      }

      v149 = *a1;
      if (v149 >= *(v81 + 116))
      {
        goto LABEL_141;
      }

      v150 = *(v81 + 104);
      if (!v150)
      {
        goto LABEL_164;
      }

      v151 = *(*(v150 + 8 * v149) + 8);
      if (v91 < *(v151 + 44))
      {
        v152 = *(v151 + 32);
        if (!v152)
        {
          goto LABEL_165;
        }

        v153 = v152 + (v91 << 7);
        v154 = *(v153 + 8);
        v155 = *(v153 + 16);
        v156 = v153 + 8;
        v157 = *(v156 + 17);
        v159 = *(v156 + 20);
        v158 = *(v156 + 24);
        LOBYTE(v189) = *(v156 + 16);
        v148 = v157 == 0;
        v160 = 256;
        if (v148)
        {
          v160 = 0;
        }

        v161 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v154, v155, v160 | (v159 << 32) | v189, v158, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
        if (v161)
        {
          v162 = *v161;
          v163 = v161[1];
        }

        else
        {
          v163 = MEMORY[0x277D84FA0];
          v162 = MEMORY[0x277D84FA0];
        }

        v189 = v162;
        specialized Set._Variant.insert(_:)(v188, v186);
        v164 = v189;
        v165 = *v156;
        v166 = *(v156 + 8);
        v167 = *(v156 + 17);
        v169 = *(v156 + 20);
        v168 = *(v156 + 24);
        v192 = *(v156 + 16);
        v148 = v167 == 0;
        v170 = 256;
        if (v148)
        {
          v170 = 0;
        }

        v171 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v165, v166, v170 | (v169 << 32) | v192, v168, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
        if (v171)
        {
          *v171 = v164;
          v171[1] = v163;
        }

        else
        {
          specialized HeterogeneousBuffer.insert<A>(_:)(v164, v163);
        }

        if (a1[48])
        {
          goto LABEL_166;
        }

        v172 = *a1;
        if (v172 >= *(v81 + 116))
        {
          goto LABEL_143;
        }

        v173 = *(v81 + 104);
        if (v173)
        {
          v174 = *(*(v173 + 8 * v172) + 8);
          if (v186 >= *(v174 + 124))
          {
            goto LABEL_144;
          }

          v175 = *(v174 + 112);
          if (v175)
          {
            v176 = v175 + 168 * v186;
            *(v176 + 124) = v91;
            *(v176 + 128) = 0;
            return result;
          }

          goto LABEL_168;
        }

        goto LABEL_167;
      }

      goto LABEL_142;
    }
  }

LABEL_177:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.subscript.getter@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 25);
  v15 = *(v3 + 28);
  v14 = *(v3 + 32);
  v24 = *(v3 + 24);
  v16 = v13 == 0;
  v17 = 256;
  if (v16)
  {
    v17 = 0;
  }

  v18 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a2, v11, v12, v17 | (v15 << 32) | v24, v14, a2);
  if (v18)
  {
    v19 = *(a2 - 8);
    (*(v19 + 16))(v10, v18, a2);
    (*(v19 + 56))(v10, 0, 1, a2);
    return (*(v19 + 32))(a3, v10, a2);
  }

  else
  {
    v21 = *(a2 - 8);
    v22 = (*(v21 + 56))(v10, 1, 1, a2);
    a1(v22);
    result = (*(v21 + 48))(v10, 1, a2);
    if (result != 1)
    {
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

void T_SubgraphDestroy.model(within:)(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, result);
    if (*(result + 48) || (*result & 0xFF00) != 0x200)
    {
      Interpreter.Iterator.updateDeallocates(_:)(v3);
      return;
    }

    v4 = *(result + 176);
    v5 = *result;
    if (v5 >= *(v4 + 116))
    {
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 104);
      if (!v6)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v7 = *(*(v6 + 8 * v5) + 8);
      v8 = (result + 56);
      v9 = *(result + 72);
      v22[0] = *(result + 56);
      v22[1] = v9;
      v23[0] = *(result + 88);
      *(v23 + 9) = *(result + 97);
      v10 = (result + 88);
      v11 = (result + 100);
      v12 = (result + 104);
      v13 = *(result + 116);
      while (1)
      {
        v14 = *v12;
        if (v13 < *v11)
        {
          v15 = (*v10 + 8 * v13);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v22);
        }

        v10 = (v14 + 32);
        v11 = (v14 + 44);
        v12 = (v14 + 48);
        v8 = v14;
      }

      if (!*v8)
      {
        goto LABEL_24;
      }

      v16 = *v8 + 24 * *v15;
      if (v3 < *(v7 + 124))
      {
        v17 = *(v7 + 112);
        if (!v17)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v18 = *(*v16 + 32);
        v19 = v17 + 168 * v3;
        v21 = *(v19 + 144);
        v20 = v19 + 144;
        if (v18 >= v21)
        {
          *(v20 + 8) = v18;
          return;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

unsigned __int8 *T_SubgraphAddChild.structure(within:)(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, result);
    result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, v4);
    if (v4[48])
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v6 = *(v4 + 22);
    v7 = *v4;
    if (v7 < *(v6 + 116))
    {
      v8 = *(v6 + 104);
      if (!v8)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v9 = result;
      v10 = *(*(v8 + 8 * v7) + 8);
      v11 = *(v10 + 124);
      if (result >= v11)
      {
        goto LABEL_56;
      }

      v72 = *(v4 + 22);
      v12 = *(v10 + 112);
      if (!v12)
      {
LABEL_67:
        __break(1u);
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v68 = result;
      v69 = *(v12 + 168 * result + 64);
      v13 = v4 + 56;
      v14 = *(v4 + 72);
      v75[0] = *(v4 + 56);
      v75[1] = v14;
      v76[0] = *(v4 + 88);
      v15 = v4 + 88;
      v16 = v4 + 100;
      v17 = (v4 + 104);
      v18 = *(v4 + 29);
      v19 = 8 * v18;
      *(v76 + 9) = *(v4 + 97);
      v20 = (v4 + 56);
      v21 = v4 + 88;
      v22 = v4 + 100;
      v23 = (v4 + 104);
      while (1)
      {
        v24 = *v23;
        if (v18 < *v22)
        {
          v25 = *v21 + v19;
          if ((*(v25 + 4) & 1) == 0)
          {
            break;
          }
        }

        if (!v24)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v75);
        }

        v21 = (v24 + 32);
        v22 = (v24 + 44);
        v23 = (v24 + 48);
        v20 = v24;
      }

      v40 = *v20;
      if (!v40)
      {
        goto LABEL_76;
      }

      v27 = *v25;
      v28 = 24;
      result = (v40 + 24 * v27);
      if (v5 < v11)
      {
        v26 = *(*result + 32);
        v27 = *(v4 + 40);
        v28 = *(v4 + 41);
        v29 = v4[168];
        v30 = *(v4 + 43);
        v67 = v5;
        v66 = v5;
        v31 = v12 + 168 * v5;
        v32 = *(v31 + 52);
        v70 = v30;
        v71 = v29;
        if (v32 == *(v31 + 48))
        {
          v64 = *(v4 + 41);
          v65 = *(v4 + 40);
          v63 = *(*result + 32);
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v32);
          v26 = v63;
          v30 = v70;
          v29 = v71;
          v28 = v64;
          v27 = v65;
        }

        v33 = *(v31 + 40);
        if (!v33)
        {
          goto LABEL_68;
        }

        v34 = *(v31 + 52);
        v35 = v33 + 40 * v34;
        *v35 = v69;
        *(v35 + 8) = v26;
        *(v35 + 16) = -1;
        *(v35 + 24) = v27;
        *(v35 + 28) = v28;
        *(v35 + 32) = v29;
        *(v35 + 36) = v30;
        if (v34 == -1)
        {
          goto LABEL_57;
        }

        *(v31 + 52) = v34 + 1;
        if (v4[48])
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v36 = *v4;
        v5 = v67;
        if (v36 >= *(v72 + 116))
        {
          goto LABEL_58;
        }

        v37 = *(v72 + 104);
        if (!v37)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v10 = *(*(v37 + 8 * v36) + 8);
        v38 = *(v4 + 72);
        v73[0] = *v13;
        v73[1] = v38;
        v74[0] = *(v4 + 88);
        *(v74 + 9) = *(v4 + 97);
        while (1)
        {
          v39 = *v17;
          if (v18 < *v16)
          {
            v11 = (*v15 + v19);
            if ((v11[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v39)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v73);
          }

          v15 = (v39 + 32);
          v16 = (v39 + 44);
          v17 = (v39 + 48);
          v13 = v39;
        }
      }

      else
      {
        __break(1u);
      }

      if (!*v13)
      {
LABEL_77:
        __break(1u);
        return result;
      }

      v41 = v28;
      v42 = v27;
      result = (*v13 + 24 * *v11);
      if (v9 >= *(v10 + 124))
      {
        goto LABEL_59;
      }

      v43 = *(v10 + 112);
      if (!v43)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v44 = *(*result + 32);
      v45 = v43 + 168 * v68;
      v46 = *(v45 + 36);
      if (v46 == *(v45 + 32))
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v46);
      }

      v47 = *(v45 + 24);
      if (!v47)
      {
        goto LABEL_72;
      }

      v48 = *(v45 + 36);
      v49 = v47 + 40 * v48;
      *v49 = v5;
      *(v49 + 8) = v44;
      *(v49 + 16) = -1;
      *(v49 + 24) = v42;
      *(v49 + 28) = v41;
      *(v49 + 32) = v71;
      *(v49 + 36) = v70;
      if (v48 == -1)
      {
        goto LABEL_60;
      }

      *(v45 + 36) = v48 + 1;
      if (v4[48])
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v50 = *v4;
      if (v50 >= *(v72 + 116))
      {
        goto LABEL_61;
      }

      v51 = *(v72 + 104);
      if (!v51)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v52 = *(*(v51 + 8 * v50) + 8);
      v53 = *(v52 + 124);
      if (v5 >= v53)
      {
        goto LABEL_62;
      }

      v54 = *(v52 + 112);
      if (!v54)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v55 = v54 + 168 * v66;
      v56 = *(v55 + 24);
      v57 = (v56 + 16);
      v58 = *(v55 + 36) + 1;
      while (1)
      {
        if (!--v58)
        {
          if (v9 >= v53)
          {
            goto LABEL_63;
          }

LABEL_52:
          v62 = v54 + 168 * v68;
          *(v62 + 56) = v5;
          *(v62 + 60) = 0;
          return result;
        }

        if (!v56)
        {
          goto LABEL_64;
        }

        if (v9 >= v53)
        {
          break;
        }

        v59 = *v57;
        v60 = *(v57 - 4);
        v57 += 5;
        if (v60 == *(v54 + 168 * v68 + 64) && v59 == -1)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

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
    goto LABEL_65;
  }

  return result;
}

unint64_t T_SubgraphRemoveChild.structure(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_59;
  }

  v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v6 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_47;
  }

  v7 = *(a1 + 22);
  v8 = *a1;
  if (v8 >= *(v7 + 116))
  {
    __break(1u);
LABEL_38:
    __break(1u);
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
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = v6;
  v11 = *(*(v9 + 8 * v8) + 8);
  v12 = a1 + 56;
  v13 = *(a1 + 72);
  v60[0] = *(a1 + 56);
  v60[1] = v13;
  v61[0] = *(a1 + 88);
  v14 = a1 + 88;
  v15 = a1 + 100;
  v16 = a1 + 104;
  v17 = *(a1 + 29);
  v18 = 8 * v17;
  *(v61 + 9) = *(a1 + 97);
  v19 = a1 + 56;
  v20 = a1 + 88;
  v21 = a1 + 100;
  v22 = a1 + 104;
  v57 = v6;
  v56 = v7;
  while (1)
  {
    v23 = *v22;
    if (v17 < *v21)
    {
      v24 = (*v20 + v18);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, v60);
    }

    v20 = v23 + 32;
    v21 = v23 + 44;
    v22 = v23 + 48;
    v19 = v23;
  }

  v25 = *v19;
  if (!v25)
  {
    goto LABEL_57;
  }

  v26 = v25 + 24 * *v24;
  if (v5 >= *(v11 + 124))
  {
    goto LABEL_38;
  }

  v27 = *(v11 + 112);
  if (!v27)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = *(*v26 + 32);
  v55 = v5;
  v29 = v27 + 168 * v5;
  v30 = *(v29 + 40);
  v31 = *(v29 + 52);
  v32 = specialized UnsafeArray<A>.findIndex(ref:at:)(v10, v28, v30, *(v29 + 48) | (v31 << 32));
  if (v32 >= v31)
  {
    goto LABEL_39;
  }

  if (!v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = v30 + 40 * v32;
  v35 = *(v33 + 8);
  v34 = v33 + 8;
  if (v28 < v35)
  {
    goto LABEL_40;
  }

  *(v34 + 8) = v28;
  if (a1[48])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v36 = *a1;
  if (v36 >= *(v56 + 116))
  {
    goto LABEL_41;
  }

  v37 = *(v56 + 104);
  if (!v37)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v38 = *(*(v37 + 8 * v36) + 8);
  if (v57 >= *(v38 + 124))
  {
    goto LABEL_42;
  }

  v39 = *(v38 + 112);
  if (!v39)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = v39 + 168 * v57;
  *(v40 + 56) = v55;
  *(v40 + 60) = 0;
  if (a1[48])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v41 = *a1;
  if (v41 >= *(v56 + 116))
  {
    goto LABEL_43;
  }

  v42 = *(*(v37 + 8 * v41) + 8);
  v43 = *(a1 + 72);
  v58[0] = *v12;
  v58[1] = v43;
  v59[0] = *(a1 + 88);
  *(v59 + 9) = *(a1 + 97);
  while (1)
  {
    v44 = *v16;
    if (v17 < *v15)
    {
      v45 = (*v14 + v18);
      if ((v45[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v44)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, v58);
    }

    v14 = v44 + 32;
    v15 = v44 + 44;
    v16 = v44 + 48;
    v12 = v44;
  }

  if (!*v12)
  {
    goto LABEL_58;
  }

  if (v57 >= *(v42 + 124))
  {
    goto LABEL_44;
  }

  v46 = *(v42 + 112);
  if (!v46)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v47 = *(*(*v12 + 24 * *v45) + 32);
  v48 = v46 + 168 * v57;
  v49 = *(v48 + 24);
  v50 = *(v48 + 36);
  result = specialized UnsafeArray<A>.findIndex(ref:at:)(v55, v47, v49, *(v48 + 32) | (v50 << 32));
  if (result >= v50)
  {
    goto LABEL_45;
  }

  if (v49)
  {
    v52 = v49 + 40 * result;
    v54 = *(v52 + 8);
    v53 = v52 + 8;
    if (v47 >= v54)
    {
      *(v53 + 8) = v47;
      return result;
    }

    goto LABEL_46;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void T_SubgraphTreeUpdate.structure(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v282 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v5 = *(v4 + 11);
  v350 = *(v4 + 10);
  v351 = v5;
  v352 = v4[192];
  v6 = *(v4 + 7);
  v346 = *(v4 + 6);
  v347 = v6;
  v7 = *(v4 + 8);
  v349 = *(v4 + 9);
  v348 = v7;
  v8 = *(v4 + 3);
  v342 = *(v4 + 2);
  v343 = v8;
  v9 = *(v4 + 4);
  v345 = *(v4 + 5);
  v344 = v9;
  v10 = *v4;
  v341 = *(v4 + 1);
  v340 = v10;
  v11 = v351;
  v12 = specialized Interpreter.Iterator.subscript.getter(a3);
  if (v4[48])
  {
    goto LABEL_365;
  }

  v15 = *v4;
  if (v15 >= *(v351 + 116))
  {
    goto LABEL_301;
  }

  v16 = *(v351 + 104);
  if (!v16)
  {
    goto LABEL_366;
  }

  v17 = *(*(v16 + 8 * v15) + 8);
  if (v282 >= *(v17 + 124))
  {
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v18 = *(v17 + 112);
  if (!v18)
  {
    goto LABEL_367;
  }

  v19 = v18 + 168 * v282;
  v21 = *(v19 + 104);
  v20 = (v19 + 104);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_303;
  }

  v23 = v13;
  *v20 = v22;
  if (v13)
  {
    v24 = v12;
    v25 = v14;
    v26 = 0;
    v27 = v4 + 56;
    v301 = v4 + 84;
    v302 = v4 + 72;
    v300 = v4 + 104;
    v280 = MEMORY[0x277D84F98];
    v290 = v4;
    v276 = v14;
    v277 = v13;
    v278 = v12;
    while (1)
    {
      if ((v26 * v25) >> 64 != (v26 * v25) >> 63)
      {
        goto LABEL_278;
      }

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_279;
      }

      v29 = v24 + v26 * v25;
      v30 = *v29;
      v32 = *(v29 + 8);
      v31 = *(v29 + 12);
      v33 = *(v29 + 16);
      if (v26 && v33)
      {
        goto LABEL_10;
      }

      v295 = v30;
      v298 = v31;
      v279 = v26 + 1;
      v281 = v33;
      v292 = v32;
      if (!v31)
      {
        v43 = 0;
        v286 = 32;
        v287 = 0;
        if (v33)
        {
LABEL_25:
          LODWORD(v48) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v33, v4);
          v47 = v281;
          v48 = v48;
          goto LABEL_36;
        }

LABEL_31:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_26C328DC0;
        *&v318 = 0;
        *(&v318 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        *v314 = v318;
        MEMORY[0x26D69CDB0](0xD000000000000014, 0x800000026C33C350);
        *&v318 = v295;
        *(&v318 + 1) = __PAIR64__(v298, v32);
        *&v319 = 0;
        type metadata accessor for T_RawTreeNode(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x6570797420666F20, 0xEA0000000000203ALL);
        if ((v32 + 1) >= 2)
        {
          v54 = *(v11 + 136);
          v321 = v54[3];
          v322 = v54[4];
          *v323 = v54[5];
          *&v323[16] = v54[6];
          v318 = *v54;
          v319 = v54[1];
          v320 = v54[2];
          v53 = Interpreter.Storage.Types.subscript.getter(v32);
          v52 = v55;
        }

        else
        {
          v52 = 0xE600000000000000;
          v53 = 0x574F4E4B4E55;
        }

        MEMORY[0x26D69CDB0](v53, v52);

        v56 = *v314;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 32) = v56;
        print(_:separator:terminator:)();

        v48 = -1;
        goto LABEL_35;
      }

      v34 = *(v4 + 11);
      v337[12] = *(v4 + 10);
      v338 = v34;
      v339 = v4[192];
      v35 = *(v4 + 7);
      v337[8] = *(v4 + 6);
      v337[9] = v35;
      v36 = *(v4 + 8);
      v337[11] = *(v4 + 9);
      v337[10] = v36;
      v37 = *(v4 + 3);
      v337[4] = *(v4 + 2);
      v337[5] = v37;
      v38 = *(v4 + 5);
      v337[6] = *(v4 + 4);
      v337[7] = v38;
      v39 = *(v4 + 1);
      v337[2] = *v4;
      v337[3] = v39;
      v11 = v338;
      v40 = specialized Interpreter.Iterator.subscript.getter(v31);
      v33 = v281;
      v286 = v42;
      v287 = v40;
      v43 = v41;
      if (v281)
      {
        goto LABEL_25;
      }

      if (!v41)
      {
        goto LABEL_31;
      }

      v44 = 0;
      while (1)
      {
        if ((v44 * v42) >> 64 != (v44 * v42) >> 63)
        {
          goto LABEL_276;
        }

        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
          goto LABEL_297;
        }

        v46 = (v40 + v44 * v42);
        if ((v46[4] & 0x20) != 0)
        {
          break;
        }

        ++v44;
        if (v45 >= v41)
        {
          goto LABEL_31;
        }
      }

      v49 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(*v46, v4);
      if ((v49 & 0x100000000) != 0)
      {
        goto LABEL_31;
      }

      if (v32)
      {
        v50 = v32;
      }

      else
      {
        v50 = -1;
      }

      v48 = v49 | (v50 << 32);
LABEL_35:
      v47 = v281;
LABEL_36:
      v57 = v47 != 0;
      if (v4[48])
      {
        goto LABEL_348;
      }

      v58 = *v4;
      if (v58 >= *(v11 + 116))
      {
        goto LABEL_280;
      }

      v285 = v43;
      v59 = *(v11 + 104);
      if (!v59)
      {
        goto LABEL_350;
      }

      v60 = v48;
      v61 = Snapshot.subscript.read(&v318, v282, *(*(v59 + 8 * v58) + 8));
      v63 = *(v62 + 8);
      if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v57), (v65 & 1) != 0))
      {
        v283 = *(*(v63 + 56) + 8 * v64);
        (v61)(&v318, 0);
      }

      else
      {
        (v61)(&v318, 0);
        closure #2 in implicit closure #2 in T_SubgraphTreeUpdate.structure(within:)(v4, v282, v295, v292, v281);
        v283 = v66;
      }

      if (v4[48])
      {
        goto LABEL_349;
      }

      v67 = *v4;
      if (v67 >= *(v11 + 116))
      {
        goto LABEL_281;
      }

      v68 = *(v11 + 104);
      if (!v68)
      {
        goto LABEL_351;
      }

      v69 = *(*(v68 + 8 * v67) + 8);
      if (v282 >= *(v69 + 124))
      {
        goto LABEL_282;
      }

      v70 = *(v69 + 112);
      if (!v70)
      {
        goto LABEL_352;
      }

      v71 = v70 + 168 * v282;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v318 = *(v71 + 8);
      *(v71 + 8) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v283, v60, v57, isUniquelyReferenced_nonNull_native);
      *(v71 + 8) = v318;

      v73 = swift_isUniquelyReferenced_nonNull_native();
      *&v318 = v280;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v283, v26, v73);
      v280 = v318;
      v299 = HIDWORD(v283);
      v74 = v283;
      if (v295 == -1)
      {
        goto LABEL_84;
      }

      if (!*(v318 + 16))
      {
        goto LABEL_287;
      }

      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v295);
      if ((v76 & 1) == 0)
      {
        goto LABEL_288;
      }

      v77 = *(*(v280 + 56) + 4 * v75);
      if ((v77 & 0x80000000) != 0)
      {
        goto LABEL_289;
      }

      if (v4[48])
      {
        goto LABEL_356;
      }

      v78 = *v4;
      if (v78 >= *(v11 + 116))
      {
        goto LABEL_290;
      }

      v79 = *(v11 + 104);
      if (!v79)
      {
        goto LABEL_357;
      }

      v80 = *(*(v79 + 8 * v78) + 8);
      if (v299 >= *(v80 + 124))
      {
        goto LABEL_291;
      }

      v81 = *(v80 + 112);
      if (!v81)
      {
        goto LABEL_358;
      }

      if ((v283 & 0x80000000) != 0)
      {
        goto LABEL_292;
      }

      v82 = (v81 + 168 * HIDWORD(v283));
      v83 = *v82;
      if (v283 >= *(*v82 + 2))
      {
        goto LABEL_293;
      }

      v84 = (v282 << 32) | v77;
      v85 = &v83[208 * v283];
      if ((v85[88] & 1) != 0 || *(v85 + 10) == v84)
      {
        v86 = swift_isUniquelyReferenced_nonNull_native();
        *v82 = v83;
        if ((v86 & 1) == 0)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
          *v82 = v83;
        }

        if (v283 < *(v83 + 2))
        {
          v87 = &v83[208 * v283];
          Tree.parent.willset(v84, 0);
          *(v87 + 10) = v84;
          v87[88] = 0;
          if (v4[48])
          {
            goto LABEL_362;
          }

          v88 = *v4;
          if (v88 < *(v11 + 116))
          {
            v89 = *(v11 + 104);
            if (!v89)
            {
              goto LABEL_363;
            }

            v90 = *(*(v89 + 8 * v88) + 8);
            if (v282 < *(v90 + 124))
            {
              v91 = *(v90 + 112);
              if (!v91)
              {
                goto LABEL_364;
              }

              v92 = *(v91 + 168 * v282);
              if (*(v92 + 16) > v77)
              {
                v93 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_AD11UnsafeArrayVyAFGTt0g5Tf4x_n(*(v92 + 208 * v77 + 96), *(v92 + 208 * v77 + 108));
                v94 = specialized Set.contains(_:)(v283, v93);

                if (v94)
                {
                  goto LABEL_84;
                }

                if (v4[48])
                {
                  goto LABEL_368;
                }

                v95 = *v4;
                if (v95 < *(v11 + 116))
                {
                  v96 = *(v11 + 104);
                  if (!v96)
                  {
                    goto LABEL_369;
                  }

                  v97 = *(*(v96 + 8 * v95) + 8);
                  if (v282 < *(v97 + 124))
                  {
                    v98 = *(v97 + 112);
                    if (!v98)
                    {
                      goto LABEL_370;
                    }

                    v99 = (v98 + 168 * v282);
                    v100 = *v99;
                    v101 = swift_isUniquelyReferenced_nonNull_native();
                    *v99 = v100;
                    if ((v101 & 1) == 0)
                    {
                      v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
                      *v99 = v100;
                    }

                    if (*(v100 + 2) > v77)
                    {
                      v102 = &v100[208 * v77];
                      if (*(v102 + 27) == *(v102 + 26))
                      {
                        specialized UnsafeArray.growToCapacity(_:)();
                      }

                      v103 = *(v102 + 12);
                      if (v103)
                      {
                        v104 = *(v102 + 27);
                        *(v103 + 8 * v104) = v283;
                        if (v104 != -1)
                        {
                          *(v102 + 27) = v104 + 1;
                          goto LABEL_84;
                        }

LABEL_307:
                        __break(1u);
LABEL_308:
                        __break(1u);
LABEL_309:
                        __break(1u);
LABEL_310:
                        __break(1u);
LABEL_311:
                        __break(1u);
LABEL_312:
                        __break(1u);
LABEL_313:
                        __break(1u);
LABEL_314:
                        __break(1u);
LABEL_315:
                        __break(1u);
LABEL_316:
                        __break(1u);
LABEL_317:
                        __break(1u);
LABEL_318:
                        __break(1u);
LABEL_319:
                        __break(1u);
LABEL_320:
                        __break(1u);
LABEL_321:
                        __break(1u);
LABEL_322:
                        __break(1u);
LABEL_323:
                        __break(1u);
LABEL_324:
                        __break(1u);
LABEL_325:
                        __break(1u);
LABEL_326:
                        __break(1u);
LABEL_327:
                        __break(1u);
LABEL_328:
                        __break(1u);
LABEL_329:
                        __break(1u);
LABEL_330:
                        __break(1u);
LABEL_331:
                        __break(1u);
LABEL_332:
                        __break(1u);
LABEL_333:
                        __break(1u);
LABEL_334:
                        __break(1u);
LABEL_335:
                        __break(1u);
LABEL_336:
                        __break(1u);
LABEL_337:
                        __break(1u);
LABEL_338:
                        __break(1u);
LABEL_339:
                        __break(1u);
LABEL_340:
                        __break(1u);
LABEL_341:
                        __break(1u);
LABEL_342:
                        __break(1u);
LABEL_343:
                        __break(1u);
LABEL_344:
                        __break(1u);
LABEL_345:
                        __break(1u);
LABEL_346:
                        __break(1u);
LABEL_347:
                        __break(1u);
LABEL_348:
                        __break(1u);
LABEL_349:
                        __break(1u);
LABEL_350:
                        __break(1u);
LABEL_351:
                        __break(1u);
LABEL_352:
                        __break(1u);
LABEL_353:
                        __break(1u);
LABEL_354:
                        __break(1u);
LABEL_355:
                        __break(1u);
LABEL_356:
                        __break(1u);
LABEL_357:
                        __break(1u);
LABEL_358:
                        __break(1u);
LABEL_359:
                        __break(1u);
LABEL_360:
                        __break(1u);
LABEL_361:
                        __break(1u);
LABEL_362:
                        __break(1u);
LABEL_363:
                        __break(1u);
LABEL_364:
                        __break(1u);
LABEL_365:
                        __break(1u);
LABEL_366:
                        __break(1u);
LABEL_367:
                        __break(1u);
LABEL_368:
                        __break(1u);
LABEL_369:
                        __break(1u);
LABEL_370:
                        __break(1u);
                      }

                      __break(1u);
LABEL_372:
                      __break(1u);
                      goto LABEL_373;
                    }

LABEL_306:
                    __break(1u);
                    goto LABEL_307;
                  }

LABEL_305:
                  __break(1u);
                  goto LABEL_306;
                }

LABEL_304:
                __break(1u);
                goto LABEL_305;
              }

LABEL_300:
              __break(1u);
LABEL_301:
              __break(1u);
              goto LABEL_302;
            }

LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

LABEL_297:
        __break(1u);
        goto LABEL_298;
      }

LABEL_84:
      if (v4[48])
      {
        goto LABEL_353;
      }

      v105 = *v4;
      if (v105 >= *(v11 + 116))
      {
        goto LABEL_283;
      }

      v106 = *(v11 + 104);
      if (!v106)
      {
        goto LABEL_354;
      }

      v107 = *(*(v106 + 8 * v105) + 8);
      if (v299 >= *(v107 + 124))
      {
        goto LABEL_284;
      }

      v108 = *(v107 + 112);
      if (!v108)
      {
        goto LABEL_355;
      }

      if ((v283 & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v109 = *(v108 + 168 * HIDWORD(v283));
      if (v283 >= *(v109 + 16))
      {
        goto LABEL_286;
      }

      v110 = v109 + 208 * v283;
      v111 = *(v110 + 164);
      if (!v111)
      {
        break;
      }

      v112 = *(v110 + 152);
      *&v318 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v111, 0);
      v113 = v318;
      v114 = v112;
      do
      {
        if (!v112)
        {
          goto LABEL_313;
        }

        v115 = *v114;
        *&v318 = v113;
        v117 = *(v113 + 16);
        v116 = *(v113 + 24);
        if (v117 >= v116 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1);
          v113 = v318;
        }

        *(v113 + 16) = v117 + 1;
        *(v113 + 4 * v117 + 32) = v115;
        v114 += 10;
        --v111;
      }

      while (v111);
      v4 = v290;
      if (v285)
      {
        goto LABEL_100;
      }

LABEL_213:

      v23 = v277;
      v24 = v278;
      v25 = v276;
      v28 = v279;
      if (!v281)
      {
        goto LABEL_10;
      }

      if (v4[48])
      {
        goto LABEL_359;
      }

      v239 = *v4;
      if (v239 >= *(v11 + 116))
      {
        goto LABEL_294;
      }

      v240 = *(v11 + 104);
      if (!v240)
      {
        goto LABEL_360;
      }

      v241 = *(*(v240 + 8 * v239) + 8);
      if (v299 >= *(v241 + 124))
      {
        goto LABEL_295;
      }

      v242 = *(v241 + 112);
      if (!v242)
      {
        goto LABEL_361;
      }

      v243 = *(v242 + 168 * HIDWORD(v283));
      if (v74 >= *(v243 + 16))
      {
        goto LABEL_296;
      }

      v244 = v243 + 32;
      if (*(v244 + 208 * v74 + 92))
      {
        goto LABEL_10;
      }

      v245 = (v244 + 208 * v74);
      v326 = v245[9];
      v327 = v245[10];
      v328 = v245[11];
      v329 = v245[12];
      *v323 = v245[5];
      *&v323[16] = v245[6];
      v324 = v245[7];
      v325 = v245[8];
      v319 = v245[1];
      v320 = v245[2];
      v321 = v245[3];
      v322 = v245[4];
      v318 = *v245;
      Tree.viewValue.getter(v314);
      v246 = *&v314[16];
      if (*&v314[16] == 1)
      {
        goto LABEL_9;
      }

      if (v4[48])
      {
        goto LABEL_375;
      }

      v247 = *v4;
      if (v247 >= *(v11 + 116))
      {
        goto LABEL_310;
      }

      v248 = *(v11 + 104);
      if (!v248)
      {
        goto LABEL_377;
      }

      v249 = *v314;
      v250 = *(*(v248 + 8 * v247) + 8);
      if (*v314 >= *(v250 + 84))
      {
        goto LABEL_311;
      }

      v251 = *(v250 + 72);
      if (!v251)
      {
        goto LABEL_376;
      }

      v297 = *&v314[8];
      v252 = v251 + 312 * *v314;
      v253 = *(v252 + 144);
      v254 = swift_isUniquelyReferenced_nonNull_native();
      *(v252 + 144) = v253;
      if ((v254 & 1) == 0)
      {
        v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v253 + 2) + 1, 1, v253);
        *(v252 + 144) = v253;
      }

      v256 = *(v253 + 2);
      v255 = *(v253 + 3);
      if (v256 >= v255 >> 1)
      {
        *(v252 + 144) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v255 > 1), v256 + 1, 1, v253);
      }

      outlined consume of TreeValue?(v249, v297, v246);
      v257 = *(v252 + 144);
      *(v257 + 16) = v256 + 1;
      *(v257 + 8 * v256 + 32) = v283;
      v258 = *(v11 + 152);
      v121 = __OFADD__(v258, 1);
      v259 = v258 + 1;
      if (v121)
      {
        goto LABEL_312;
      }

      *(v11 + 152) = v259;
      hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(v249, v4);
      v23 = v277;
      v24 = v278;
      v25 = v276;
LABEL_9:
      v28 = v279;
LABEL_10:
      v26 = v28;
      if (v28 >= v23)
      {
        goto LABEL_234;
      }
    }

    v113 = MEMORY[0x277D84F90];
    if (!v285)
    {
      goto LABEL_213;
    }

LABEL_100:
    v118 = 0;
    v119 = 0;
    v284 = v113;
    v120 = v113 + 32;
    while (1)
    {
      v121 = __OFADD__(v119++, 1);
      if (v121)
      {
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }

      v122 = (v287 + v118);
      v123 = v122[1];
      v293 = *v122;
      v125 = v122[2];
      v124 = v122[3];
      v126 = v122[5];
      v291 = v122[4];
      v127 = v27[1];
      v336[0] = *v27;
      v336[1] = v127;
      v337[0] = v27[2];
      v128 = v27;
      v130 = v301;
      v129 = v302;
      v131 = v300;
      *(v337 + 9) = *(v27 + 41);
      while (1)
      {
        v132 = *v131;
        if (*v130 >= 2u)
        {
          v133 = *v129;
          if ((*(v133 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v132)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v336);
        }

        v129 = (v132 + 16);
        v130 = (v132 + 28);
        v131 = (v132 + 48);
        v128 = v132;
      }

      v134 = *v128;
      if (!v134)
      {
        goto LABEL_334;
      }

      v135 = *(*(v134 + 24 * *(v133 + 8)) + 112);
      if (!v135)
      {
        goto LABEL_315;
      }

      v136 = v120;
      v310 = *v135;
      v137 = *(v135 + 2);
      v138 = *(v135 + 88);
      v321 = *(v135 + 72);
      v322 = v138;
      *v323 = *(v135 + 104);
      *&v323[13] = *(v135 + 117);
      v139 = *(v135 + 40);
      v318 = *(v135 + 24);
      v319 = v139;
      v320 = *(v135 + 56);
      v140 = *v137;
      v296 = v11;
      v288 = v126;
      v289 = v123;
      if (*(*v137 + 16) && (v141 = specialized __RawDictionaryStorage.find<A>(_:)(v293), (v142 & 1) != 0))
      {
        v143 = 0;
        v144 = (*(v140 + 56) + 24 * v141);
        v145 = *v144;
        v146 = *(v144 + 1);
        v147 = v144[4];
      }

      else
      {
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v143 = 1;
      }

      v148 = v27[1];
      v334[0] = *v27;
      v334[1] = v148;
      v335[0] = v27[2];
      *(v335 + 9) = *(v27 + 41);
      v149 = v27;
      v151 = v301;
      v150 = v302;
      v152 = v300;
      while (1)
      {
        v153 = *v152;
        if (*v151 >= 2u)
        {
          v154 = *v150;
          if ((*(v154 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v153)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v334);
        }

        v150 = (v153 + 16);
        v151 = (v153 + 28);
        v152 = (v153 + 48);
        v149 = v153;
      }

      v155 = *v149;
      if (!v155)
      {
        goto LABEL_333;
      }

      v156 = *(*(v155 + 24 * *(v154 + 8)) + 112);
      if (!v156)
      {
        goto LABEL_314;
      }

      *v156 = v310;
      *(v156 + 16) = v137;
      v157 = v318;
      *(v156 + 72) = v321;
      *(v156 + 88) = v322;
      *(v156 + 104) = *v323;
      *(v156 + 117) = *&v323[13];
      *(v156 + 24) = v157;
      *(v156 + 40) = v319;
      *(v156 + 56) = v320;
      v311[0] = v145;
      v311[1] = v146;
      v312 = v147;
      v313 = v143;
      if (v147 == 0xFFFFFFFF)
      {
        v158 = v143;
      }

      else
      {
        v158 = 1;
      }

      if (v158)
      {
        v4 = v290;
        v120 = v136;
        if ((v143 & 1) == 0)
        {
          goto LABEL_152;
        }

        v11 = v296;
      }

      else
      {
        v4 = v290;
        if (v290[48])
        {
          goto LABEL_316;
        }

        v11 = v296;
        v159 = *v290;
        if (v159 >= *(v296 + 116))
        {
          goto LABEL_251;
        }

        v160 = *(v296 + 104);
        if (!v160)
        {
          goto LABEL_320;
        }

        v161 = *(v160 + 8 * v159);
        *v314 = *(*(v161 + 8) + 88);
        v162 = *v314;
        v163 = specialized closure #2 in static TraceAddress.ref(ifExists:within:)(v314, v311);
        *(*(v161 + 8) + 88) = v162;
        if (v313)
        {
          goto LABEL_318;
        }

        v312 = v163;
        v164 = v27[1];
        v332[0] = *v27;
        v332[1] = v164;
        v333[0] = v27[2];
        *(v333 + 9) = *(v27 + 41);
        v166 = v301;
        v165 = v302;
        v167 = v27;
        v168 = v300;
        v120 = v136;
        while (1)
        {
          v169 = *v168;
          if (*v166 >= 2u)
          {
            v170 = *v165;
            if ((*(v170 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v169)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v332);
          }

          v165 = (v169 + 16);
          v166 = (v169 + 28);
          v168 = (v169 + 48);
          v167 = v169;
        }

        if (!*v167)
        {
          goto LABEL_345;
        }

        v171 = *(*(*v167 + 24 * *(v170 + 8)) + 112);
        if (!v171)
        {
          goto LABEL_319;
        }

        v172 = v171[5];
        v307 = v171[4];
        v308 = v172;
        v309[0] = v171[6];
        *(v309 + 13) = *(v171 + 109);
        v303 = *v171;
        v304 = v171[1];
        v173 = v171[3];
        v305 = v171[2];
        v306 = v173;
        specialized closure #3 in static TraceAddress.ref(ifExists:within:)(&v304, v293, v311);
        v174 = v27[1];
        v330[0] = *v27;
        v330[1] = v174;
        v331[0] = v27[2];
        *(v331 + 9) = *(v27 + 41);
        v176 = v300;
        v175 = v301;
        v177 = v302;
        for (i = v27; ; i = v179)
        {
          v179 = *v176;
          if (*v175 >= 2u)
          {
            v180 = *v177;
            if ((*(v180 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v179)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v330);
          }

          v177 = (v179 + 16);
          v175 = (v179 + 28);
          v176 = (v179 + 48);
        }

        if (!*i)
        {
          goto LABEL_344;
        }

        v181 = *(*(*i + 24 * *(v180 + 8)) + 112);
        if (!v181)
        {
          goto LABEL_317;
        }

        v182 = v308;
        v181[4] = v307;
        v181[5] = v182;
        v181[6] = v309[0];
        *(v181 + 109) = *(v309 + 13);
        v183 = v304;
        *v181 = v303;
        v181[1] = v183;
        v184 = v306;
        v181[2] = v305;
        v181[3] = v184;
        if ((v313 & 1) == 0)
        {
          v147 = v312;
LABEL_152:
          v185 = *(v284 + 16);
          v11 = v296;
          if (v185)
          {
            v186 = 0;
            while (*(v120 + 4 * v186) != v147)
            {
              if (v185 == ++v186)
              {
                goto LABEL_156;
              }
            }

            if (v4[48])
            {
              goto LABEL_346;
            }

            v204 = *(v296 + 104);
            v74 = v283;
          }

          else
          {
LABEL_156:
            if (v4[48])
            {
              goto LABEL_326;
            }

            v187 = *v4;
            if (v187 >= *(v296 + 116))
            {
              goto LABEL_258;
            }

            v188 = *(v296 + 104);
            if (!v188)
            {
              goto LABEL_327;
            }

            v189 = *(*(v188 + 8 * v187) + 8);
            TreeValue.init(node:within:)(v293 | (v289 << 32), v125 | (v124 << 32), v4, v314);
            if (*(v189 + 124) <= HIDWORD(v283))
            {
              goto LABEL_259;
            }

            v190 = *(v189 + 112);
            if (!v190)
            {
              goto LABEL_328;
            }

            v294 = *&v314[8];
            v191 = *v314;
            v192 = v315;
            v193 = v316;
            v194 = v317;
            v195 = (v190 + 168 * HIDWORD(v283));
            v196 = *v195;
            v197 = swift_isUniquelyReferenced_nonNull_native();
            *v195 = v196;
            if ((v197 & 1) == 0)
            {
              v196 = specialized _ArrayBuffer._consumeAndCreateNew()(v196);
              *v195 = v196;
            }

            if (v283 >= *(v196 + 2))
            {
              goto LABEL_260;
            }

            v198 = &v196[208 * v283];
            v199 = *(v198 + 41);
            if (v199 == *(v198 + 40))
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v199);
            }

            v200 = *(v198 + 19);
            if (!v200)
            {
              goto LABEL_329;
            }

            v201 = *(v198 + 41);
            v202 = v200 + 40 * v201;
            *v202 = v191;
            *(v202 + 8) = v294;
            *(v202 + 24) = v192;
            *(v202 + 28) = v193;
            *(v202 + 32) = v194;
            if (v201 == -1)
            {
              goto LABEL_261;
            }

            *(v198 + 41) = v201 + 1;
            v4 = v290;
            if (v290[48])
            {
              goto LABEL_330;
            }

            v11 = v296;
            v203 = *v290;
            v74 = v283;
            if (v203 >= *(v296 + 116))
            {
              goto LABEL_262;
            }

            v204 = *(v296 + 104);
            if (!v204)
            {
              goto LABEL_331;
            }

            v205 = *(*(v204 + 8 * v203) + 8);
            if (*(v205 + 124) <= HIDWORD(v283))
            {
              goto LABEL_263;
            }

            v206 = *(v205 + 112);
            if (!v206)
            {
              goto LABEL_332;
            }

            v207 = *(v206 + 168 * HIDWORD(v283));
            if (v283 >= *(v207 + 16))
            {
              goto LABEL_264;
            }

            v208 = *(v207 + 208 * v283 + 164);
            if (!v208)
            {
              goto LABEL_265;
            }

            v120 = v136;
            v186 = v208 - 1;
          }

          v209 = *v4;
          if (v209 >= *(v11 + 116))
          {
            goto LABEL_252;
          }

          if (!v204)
          {
            goto LABEL_321;
          }

          v210 = *(*(v204 + 8 * v209) + 8);
          if (*(v210 + 124) <= HIDWORD(v283))
          {
            goto LABEL_253;
          }

          v211 = *(v210 + 112);
          if (!v211)
          {
            goto LABEL_322;
          }

          v212 = *(v211 + 168 * HIDWORD(v283));
          if (v74 >= *(v212 + 16))
          {
            goto LABEL_254;
          }

          v213 = v212 + 208 * v74;
          if (v186 >= *(v213 + 164))
          {
            goto LABEL_255;
          }

          v214 = *(v213 + 152);
          if (!v214)
          {
            goto LABEL_323;
          }

          v215 = v214 + 40 * v186;
          v218 = *(v215 + 36);
          v216 = (v215 + 36);
          v217 = v218;
          if ((v291 & ~v218) != 0)
          {
            *v216 = v217 | v291;
            v219 = v4[48];
            if (v291)
            {
              if (v4[48])
              {
                goto LABEL_347;
              }

              goto LABEL_190;
            }
          }

          else
          {
            if ((v291 & 1) == 0)
            {
LABEL_207:
              v236 = *v4;
              if (v236 >= *(v11 + 116))
              {
                goto LABEL_256;
              }

              v237 = *(*(v204 + 8 * v236) + 8);
              if (v147 >= *(v237 + 84))
              {
                goto LABEL_257;
              }

              v238 = *(v237 + 72);
              if (!v238)
              {
                goto LABEL_324;
              }

              hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(*(v238 + 312 * v147 + 32), v4);
              if (v119 >= v285)
              {
                goto LABEL_213;
              }

              goto LABEL_211;
            }

LABEL_190:
            v220 = *(v11 + 116);
            v221 = *v4;
            if (v221 >= v220)
            {
              goto LABEL_266;
            }

            v222 = *(*(v204 + 8 * v221) + 8);
            if (v147 >= *(v222 + 84))
            {
              goto LABEL_267;
            }

            v223 = *(v222 + 72);
            if (!v223)
            {
              goto LABEL_336;
            }

            v224 = v223 + 312 * v147;
            *(v224 + 128) = v283;
            *(v224 + 136) = 0;
            if (v4[48])
            {
              goto LABEL_335;
            }

            v225 = *v4;
            if (v225 >= v220)
            {
              goto LABEL_268;
            }

            v226 = *(*(v204 + 8 * v225) + 8);
            if (v147 >= *(v226 + 84))
            {
              goto LABEL_269;
            }

            v227 = *(v226 + 72);
            if (!v227)
            {
              goto LABEL_338;
            }

            v228 = 312 * v147;
            v229 = v227 + v228;
            *(v229 + 160) = v186;
            *(v229 + 168) = 0;
            if (v4[48])
            {
              goto LABEL_337;
            }

            v230 = *v4;
            if (v230 >= v220)
            {
              goto LABEL_270;
            }

            v231 = *(*(v204 + 8 * v230) + 8);
            if (v147 >= *(v231 + 84))
            {
              goto LABEL_271;
            }

            v232 = *(v231 + 72);
            if (!v232)
            {
              goto LABEL_340;
            }

            *(v232 + v228 + 152) = 1;
            if (v4[48])
            {
              goto LABEL_339;
            }

            v233 = *v4;
            if (v233 >= v220)
            {
              goto LABEL_272;
            }

            v234 = *(*(v204 + 8 * v233) + 8);
            if (v147 >= *(v234 + 84))
            {
              goto LABEL_273;
            }

            v235 = *(v234 + 72);
            if (!v235)
            {
              goto LABEL_341;
            }

            *(v235 + v228 + 280) = v288;
            v219 = v4[48];
          }

          if (v219)
          {
            goto LABEL_325;
          }

          goto LABEL_207;
        }
      }

      v74 = v283;
      if (v119 >= v285)
      {
        goto LABEL_213;
      }

LABEL_211:
      v118 = v119 * v286;
      if ((v119 * v286) >> 64 != (v119 * v286) >> 63)
      {
        goto LABEL_250;
      }
    }
  }

LABEL_234:
  if (v4[48])
  {
    goto LABEL_372;
  }

  v260 = *v4;
  if (v260 >= *(v11 + 116))
  {
    goto LABEL_308;
  }

  v261 = *(v11 + 104);
  if (v261)
  {
    v262 = *(*(v261 + 8 * v260) + 8);
    if (v282 >= *(v262 + 124))
    {
      goto LABEL_309;
    }

    v263 = *(v262 + 112);
    if (v263)
    {
      v264 = *(v263 + 168 * v282);
      v265 = *(v264 + 16);

      if (v265)
      {
        v266 = 0;
        v267 = (v264 + 144);
        while (v266 < *(v264 + 16))
        {
          if (v4[48])
          {
            goto LABEL_342;
          }

          v268 = *v4;
          if (v268 >= *(v11 + 116))
          {
            goto LABEL_275;
          }

          v269 = *(v11 + 104);
          if (!v269)
          {
            goto LABEL_343;
          }

          v270 = *(v267 - 1);
          *v314 = *(*(v269 + 8 * v268) + 8);
          v321 = *(v267 - 4);
          v322 = *(v267 - 3);
          *v323 = *(v267 - 2);
          *&v323[16] = *(v267 - 2);
          v318 = *(v267 - 7);
          v319 = *(v267 - 6);
          v320 = *(v267 - 5);
          *&v323[24] = v270;
          v324 = *v267;
          v325 = v267[1];
          v271 = v267[2];
          v272 = v267[3];
          v273 = v267[5];
          v328 = v267[4];
          v329 = v273;
          v326 = v271;
          v327 = v272;
          v274 = specialized Tree.parent(_:within:unabstracting:)(16, v314);
          if ((v275 & 1) == 0)
          {
            canonicalize #1 (parent:child:) in T_SubgraphTreeUpdate.structure(within:)(v274, v270, v4);
          }

          ++v266;
          v267 += 13;
          if (v265 == v266)
          {
            goto LABEL_248;
          }
        }

        goto LABEL_274;
      }

LABEL_248:

      return;
    }
  }

  else
  {
LABEL_373:
    __break(1u);
  }

  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
}

void closure #2 in implicit closure #2 in T_SubgraphTreeUpdate.structure(within:)(unsigned __int8 *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a1[48])
  {
    goto LABEL_31;
  }

  v10 = *(a1 + 22);
  v11 = *a1;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *v8 = v6;
    goto LABEL_13;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = a2;
  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 124) <= a2)
  {
    goto LABEL_23;
  }

  v14 = *(v13 + 112);
  if (!v14)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = a2;
  v15 = (v14 + 168 * a2);
  v16 = *(*v15 + 16);
  if (v16 >> 31)
  {
    goto LABEL_24;
  }

  Tree.init(_:id:within:)(a4, a5, v16 | (v15[16] << 32), a1, v40);
  if (a1[48])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(a1 + 22);
  v18 = *a1;
  if (v18 >= *(v17 + 116))
  {
    goto LABEL_25;
  }

  v19 = *(v17 + 104);
  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v20 = *(*(v19 + 8 * v18) + 8);
  if (*(v20 + 124) <= v5)
  {
    goto LABEL_26;
  }

  v21 = *(v20 + 112);
  if (!v21)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v8 = (v21 + 168 * v7);
  v6 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v24 = *(v6 + 16);
  v23 = *(v6 + 24);
  if (v24 >= v23 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v6);
    *v8 = v6;
  }

  *(v6 + 16) = v24 + 1;
  v25 = (v6 + 208 * v24);
  v25[2] = v40[0];
  v26 = v40[1];
  v27 = v40[2];
  v28 = v40[4];
  v25[5] = v40[3];
  v25[6] = v28;
  v25[3] = v26;
  v25[4] = v27;
  v29 = v40[5];
  v30 = v40[6];
  v31 = v40[8];
  v25[9] = v40[7];
  v25[10] = v31;
  v25[7] = v29;
  v25[8] = v30;
  v32 = v40[9];
  v33 = v40[10];
  v34 = v40[12];
  v25[13] = v40[11];
  v25[14] = v34;
  v25[11] = v32;
  v25[12] = v33;
  if (a1[48])
  {
    goto LABEL_37;
  }

  v35 = *(a1 + 22);
  v36 = *a1;
  if (v36 >= *(v35 + 116))
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = *(v35 + 104);
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = *(*(v37 + 8 * v36) + 8);
  if (*(v38 + 124) <= v5)
  {
    goto LABEL_29;
  }

  v39 = *(v38 + 112);
  if (!v39)
  {
LABEL_39:
    __break(1u);
    return;
  }

  if (!*(*(v39 + 168 * v7) + 16))
  {
    goto LABEL_30;
  }
}

uint64_t hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(uint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_76;
  }

  v5 = *(v3 + 104);
  if (v5)
  {
    v6 = result;
    v7 = *(*(v5 + 8 * v4) + 8);
    if (*(v7 + 84) <= result)
    {
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
      goto LABEL_91;
    }

    v8 = *(v7 + 72);
    if (!v8)
    {
      goto LABEL_93;
    }

    v9 = v8 + 312 * result;
    if (*(v9 + 136))
    {
      return result;
    }

    v10 = *(a2 + 22);
    v11 = *a2;
    if (v11 < *(v10 + 116))
    {
      v12 = 312 * result;
      v13 = *(v9 + 128);
      v62 = HIDWORD(v13);
      v63 = v13;
      v14 = v13;
      do
      {
        v15 = *(v10 + 104);
        if (!v15)
        {
          goto LABEL_78;
        }

        v16 = *(*(v15 + 8 * v11) + 8);
        if (*(v16 + 84) <= v6)
        {
          goto LABEL_59;
        }

        v17 = *(v16 + 72);
        if (!v17)
        {
          goto LABEL_79;
        }

        v18 = v17 + v12;
        v19 = *(v17 + v12 + 144);
        if (!*(v19 + 16))
        {
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + 144) = v19;
        if (result)
        {
          v20 = *(v19 + 16);
          if (!v20)
          {
            goto LABEL_60;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          *(v18 + 144) = result;
          v20 = *(result + 16);
          if (!v20)
          {
            goto LABEL_60;
          }
        }

        v21 = v20 - 1;
        v22 = *(v19 + 8 * v21 + 32);
        *(v19 + 16) = v21;
        *(v18 + 144) = v19;
        if (a2[48])
        {
          goto LABEL_80;
        }

        v23 = *(a2 + 22);
        v24 = *a2;
        if (v24 >= *(v23 + 116))
        {
          goto LABEL_61;
        }

        v25 = *(v23 + 104);
        if (!v25)
        {
          goto LABEL_81;
        }

        v26 = *(*(v25 + 8 * v24) + 8);
        v27 = HIDWORD(v22);
        v28 = *(v26 + 124);
        if (HIDWORD(v22) >= v28)
        {
          goto LABEL_62;
        }

        v29 = *(v26 + 112);
        if (!v29)
        {
          goto LABEL_82;
        }

        if ((v22 & 0x80000000) != 0)
        {
          goto LABEL_63;
        }

        v30 = *(v29 + 168 * HIDWORD(v22));
        if (v22 >= *(v30 + 16))
        {
          goto LABEL_64;
        }

        if ((*(v30 + 208 * v22 + 124) & 1) == 0)
        {
          if (v62 >= v28)
          {
            goto LABEL_65;
          }

          v31 = v12;
          v32 = (v29 + 168 * v62);
          v33 = *v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v32 = v33;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
            *v32 = v33;
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }
          }

          if (v14 >= *(v33 + 2))
          {
            goto LABEL_67;
          }

          v35 = &v33[208 * v14];
          if (*(v35 + 27) == *(v35 + 26))
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v36 = *(v35 + 12);
          if (!v36)
          {
            goto LABEL_83;
          }

          v37 = *(v35 + 27);
          *(v36 + 8 * v37) = v22;
          if (v37 == -1)
          {
            goto LABEL_68;
          }

          *(v35 + 27) = v37 + 1;
          if (a2[48])
          {
            goto LABEL_84;
          }

          v38 = *(a2 + 22);
          v39 = *a2;
          if (v39 >= *(v38 + 116))
          {
            goto LABEL_69;
          }

          v40 = *(v38 + 104);
          if (!v40)
          {
            goto LABEL_85;
          }

          v41 = *(*(v40 + 8 * v39) + 8);
          if (v27 >= *(v41 + 124))
          {
            goto LABEL_70;
          }

          v42 = *(v41 + 112);
          if (!v42)
          {
            goto LABEL_86;
          }

          v43 = (v42 + 168 * HIDWORD(v22));
          v44 = *v43;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *v43 = v44;
          if ((v45 & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
            *v43 = v44;
          }

          v12 = v31;
          if (v22 >= *(v44 + 2))
          {
            goto LABEL_71;
          }

          v46 = &v44[208 * v22];
          v49 = *(v46 + 10);
          v47 = v46 + 80;
          v48 = v49;
          if ((v47[8] & 1) == 0 && v48 != v63)
          {
            goto LABEL_94;
          }

          *v47 = v63;
          v47[8] = 0;
          if (a2[48])
          {
            goto LABEL_87;
          }

          v50 = *(a2 + 22);
          v51 = *a2;
          if (v51 >= *(v50 + 116))
          {
            goto LABEL_72;
          }

          v52 = *(v50 + 104);
          if (!v52)
          {
            goto LABEL_88;
          }

          v53 = *(*(v52 + 8 * v51) + 8);
          if (v27 >= *(v53 + 124))
          {
            goto LABEL_73;
          }

          v54 = *(v53 + 112);
          if (!v54)
          {
            goto LABEL_89;
          }

          v55 = (v54 + 168 * HIDWORD(v22));
          v56 = *v55;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v55 = v56;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
            v56 = result;
            *v55 = result;
          }

          if (v22 >= *(v56 + 16))
          {
            goto LABEL_74;
          }

          *(v56 + 208 * v22 + 124) = 1;
          v57 = *(a2 + 22);
          v58 = *(v57 + 152);
          v59 = __OFSUB__(v58, 1);
          v60 = v58 - 1;
          if (v59)
          {
            goto LABEL_75;
          }

          *(v57 + 152) = v60;
          if (a2[48])
          {
            goto LABEL_90;
          }
        }

        v10 = *(a2 + 22);
        v11 = *a2;
      }

      while (v11 < *(v10 + 116));
    }

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
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
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
    goto LABEL_77;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_26C328DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  *(v61 + 56) = MEMORY[0x277D837D0];
  *(v61 + 32) = 0;
  *(v61 + 40) = 0xE000000000000000;

  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t canonicalize #1 (parent:child:) in T_SubgraphTreeUpdate.structure(within:)(unint64_t result, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[48])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(a3 + 22);
  v4 = *a3;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  v7 = *(v6 + 124);
  if (HIDWORD(a2) >= v7)
  {
    goto LABEL_25;
  }

  v8 = *(v6 + 112);
  if (!v8)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v9 = *(v8 + 168 * HIDWORD(a2));
  if (a2 >= *(v9 + 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = v9 + 208 * a2;
  v11 = *(v10 + 152);
  v12 = v11 - 40;
  v13 = *(v10 + 164) + 1;
  while (--v13)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    v14 = (v12 + 40);
    v15 = *(v12 + 76);
    v12 += 40;
    if ((v15 & 0x20) != 0)
    {
      if (HIDWORD(result) >= v7)
      {
        goto LABEL_28;
      }

      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v16 = *(v8 + 168 * HIDWORD(result));
      if (result >= *(v16 + 16))
      {
        goto LABEL_30;
      }

      v17 = v16 + 208 * result;
      v18 = *(v17 + 164);
      if (v18)
      {
        v19 = *v14;
        v20 = *(v17 + 152);
        v21 = (v20 + 36);
        while (v20)
        {
          v22 = *v21;
          if ((*v21 & 1) != 0 && *(v21 - 9) == v19)
          {
            if ((v22 & 0x10) == 0)
            {
              *v21 = v22 | 0x10;
            }

            return result;
          }

          v21 += 10;
          if (!--v18)
          {
            return result;
          }
        }

        goto LABEL_32;
      }

      return result;
    }
  }

  return result;
}

BOOL static Attribute.Kind.== infix(_:_:)(int a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) == 0)
    {
      if (a3)
      {
        if (a6)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && a1 == a4 && a2 == a5)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a6 & 0x100) != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Attribute.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = v2 & v3;
  if (v2 & 1) != 0 || (v3)
  {
    return v4;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Attribute.AGValueState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance Attribute.AGValueState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance Attribute.AGValueState@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Attribute.AGValueState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Attribute.AGValueState@<X0>(uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
  return result;
}

uint64_t Attribute.Value.Field.value.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

void Attribute.Value.Field.init()(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
}

uint64_t Attribute.Value.updated.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.Value.fields.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

Swift::Void __swiftcall Attribute.Value.copy()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 28);
    v3 = swift_slowAlloc();
    *(v0 + 16) = v3;

    memcpy(v3, v1, 40 * v2);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Attribute.Value()
{
  result = *(v0 + 16);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 16) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Attribute.Value()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 28);
    v3 = swift_slowAlloc();
    *(v0 + 16) = v3;

    memcpy(v3, v1, 40 * v2);
  }
}

uint64_t Attribute.EstimatedField.pathToField(in:)(uint64_t *a1)
{
  v88 = a1;
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v87 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 36);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C328DC0;
  *(v9 + 32) = *(v1 + 24);
  *(v9 + 40) = v5;
  *(v9 + 44) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v102[0] = v4;

  specialized Array.append<A>(contentsOf:)(v9);
  v10 = v102[0];
  v11 = *(v102[0] + 16);
  v12 = v11 != 0;
  if (v11 <= 1)
  {

    v13 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v108 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v11 - v12) & ~((v11 - v12) >> 63), 0);
  if (((v11 - v12) & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  v14 = v11 - v12;
  v15 = 0;
  v16 = v10 + 32;
  v13 = v108;
  v85 = v11;
  v86 = v11 - v12;
  v83[1] = v10;
  v84 = v10 + 32;
  do
  {
    if (v12 >= v11 || v15 >= v14)
    {
      goto LABEL_73;
    }

    v17 = (v16 + 32 * v12);
    v18 = *v17;
    v19 = v17[3];
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19 == -1;
    }

    if (v20)
    {
      v35 = 0xE90000000000003ELL;
      v36 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v91 = v15;
      v93 = v12;
      v94 = v13;
      v21 = v17[1];
      v92 = *(v17 + 8);
      v22 = *v88;
      v23 = (*v88 + 40);
      v24 = *(*v88 + 56);
      v118[0] = *v23;
      v118[1] = v24;
      v119[0] = *(v22 + 72);
      v25 = (v22 + 72);
      v26 = (v22 + 84);
      v27 = (v22 + 88);
      v28 = 8 * v18;
      *(v119 + 9) = *(v22 + 81);
      v29 = (v22 + 40);
      v30 = (v22 + 72);
      v31 = (v22 + 84);
      v32 = (v22 + 88);
      v95 = v19;
      while (1)
      {
        v33 = *v32;
        if (v18 < *v31)
        {
          v34 = (*v30 + v28);
          if ((v34[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v33)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v118);
        }

        v30 = (v33 + 32);
        v31 = (v33 + 44);
        v32 = (v33 + 48);
        v29 = v33;
      }

      v37 = *v29;
      if (!v37)
      {
        goto LABEL_81;
      }

      v38 = (v37 + 24 * *v34);
      v39 = *v38;
      v40 = *(*v38 + 196);
      v41 = 0uLL;
      if (v40)
      {
        v89 = v21;
        v90 = v22;
        v42 = *(v39 + 184);
        if (!v42)
        {
          goto LABEL_79;
        }

        v43 = v40 - 1;
        if (*(v42 + 32 * (v40 - 1)) >= v19)
        {
          v49 = v40 >> 1;
          v50 = *(v42 + 32 * (v40 >> 1));
          if (v40 != 1 && v50 != v19)
          {
            if (v19 >= v50)
            {
              v53 = v49 + 1;
              v52 = v19;
              v49 = v40;
            }

            else
            {
              v52 = v19;
              v53 = 0;
            }

            v57 = specialized Collection<>.binarySearch(for:)(v52, v53, v49, v42, *(v39 + 192) | (v40 << 32), 0);
            if (v58)
            {
              v49 = v40 - 1;
            }

            else
            {
              v49 = v57;
            }

            v19 = v95;
            v41 = 0uLL;
          }

          v59 = (v42 + 32 * v49);
          v43 = v49;
          while (v49 < v40)
          {
            if (v19 >= *v59)
            {
              goto LABEL_22;
            }

            if (!v43)
            {
              v47 = 0;
              v48 = 0;
              v12 = v93;
              v13 = v94;
              v11 = v85;
              goto LABEL_51;
            }

            --v43;
            v59 -= 8;
            if (v43 > v40)
            {
              goto LABEL_72;
            }
          }

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
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

LABEL_22:
        v44 = v23[1];
        v116[0] = *v23;
        v116[1] = v44;
        v117[0] = v23[2];
        *(v117 + 9) = *(v23 + 41);
        while (1)
        {
          v45 = *v27;
          if (v18 < *v26)
          {
            v46 = (*v25 + v28);
            if ((v46[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v45)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v116);
          }

          v25 = (v45 + 32);
          v26 = (v45 + 44);
          v27 = (v45 + 48);
          v23 = v45;
        }

        if (!*v23)
        {
          goto LABEL_83;
        }

        v54 = *v23 + 24 * *v46;
        v12 = v93;
        v13 = v94;
        v11 = v85;
        if (v43 >= *(*v54 + 196))
        {
          goto LABEL_74;
        }

        v55 = *(*v54 + 184);
        if (!v55)
        {
          goto LABEL_80;
        }

        v56 = (v55 + 32 * v43);
        v47 = *v56;
        v48 = *(v56 + 1);
        v41 = *(v56 + 1);
LABEL_51:
        v21 = v89;
        v22 = v90;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v12 = v93;
        v13 = v94;
        v11 = v85;
      }

      v107 = v92;
      v96 = v18 | (v21 << 32);
      v97 = v92 | (v19 << 32);
      v98 = v47;
      v99 = v48;
      v100 = v41;
      v101 = 1;
      Interpreter.Iterator.init(_:kind:onEvent:)(v22, &v96, 0, 0, v102);
      if (!Interpreter.Iterator.read()())
      {
        goto LABEL_84;
      }

      v114[0] = v103;
      v114[1] = v104;
      v115[0] = *v105;
      *(v115 + 9) = *&v105[9];
      v60 = v103;
      v61 = *v105;
      v62 = *&v105[16];
      if (v106 >= *&v105[12])
      {
        do
        {
LABEL_55:
          if (!v62)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v106, 0, v114);
          }

          v60 = *v62;
          v61 = v62[4];
          v64 = *(v62 + 11);
          v62 = v62[6];
        }

        while (v106 >= v64);
      }

      v63 = (v61 + 8 * v106);
      if (v63[1])
      {
        goto LABEL_55;
      }

      if (!v60)
      {
        goto LABEL_82;
      }

      v65 = (v60 + 24 * *v63);
      v66 = *v65;
      v67 = *(*v65 + 96);
      if (v67 == 2)
      {
        goto LABEL_77;
      }

      v68 = *(v66 + 104);
      v69 = *(v66 + 88);
      v109 = *(v66 + 72);
      v110 = v69;
      v111 = v67 & 0x101;
      v112 = HIDWORD(v67);
      v113 = v68 & 1;
      v70 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if (v72)
      {
        goto LABEL_78;
      }

      v73 = v71 - v70;
      if (!v70)
      {
        v73 = 0;
      }

      v96 = v70;
      v97 = v73;
      static String.Encoding.utf8.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
      v74 = String.init<A>(bytes:encoding:)();
      if (!v75)
      {
        goto LABEL_76;
      }

      v36 = v74;
      v35 = v75;
      specialized EvolutionTable.deallocate()();
      v14 = v86;
      v15 = v91;
      v16 = v84;
    }

    v108 = v13;
    v77 = *(v13 + 16);
    v76 = *(v13 + 24);
    if (v77 >= v76 >> 1)
    {
      v79 = v15;
      v80 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
      v16 = v80;
      v15 = v79;
      v14 = v86;
      v13 = v108;
    }

    ++v15;
    *(v13 + 16) = v77 + 1;
    v78 = v13 + 16 * v77;
    *(v78 + 32) = v36;
    *(v78 + 40) = v35;
    ++v12;
  }

  while (v15 != v14);

LABEL_70:
  v102[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v81 = BidirectionalCollection<>.joined(separator:)();

  return v81;
}

void Attribute.EstimatedField.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6 = *(v2 + 28);
  v8 = *(v2 + 32);
  v9 = *(v2 + 36);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  MEMORY[0x26D69DBC0](*v2);
  MEMORY[0x26D69DBC0](v4);
  specialized Array<A>.hash(into:)(a1, v5);
  Hasher._combine(_:)(v7);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  Hasher._combine(_:)(v9);
  MEMORY[0x26D69DBC0](v10);
  Hasher._combine(_:)(v11);
}

Swift::Int Attribute.EstimatedField.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = *(v0 + 6);
  v4 = *(v0 + 7);
  v6 = *(v0 + 32);
  v7 = *(v0 + 9);
  v8 = v0[5];
  v9 = *(v0 + 12);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  specialized Array<A>.hash(into:)(v11, v3);
  Hasher._combine(_:)(v5);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(v7);
  MEMORY[0x26D69DBC0](v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribute.EstimatedField()
{
  Hasher.init(_seed:)();
  Attribute.EstimatedField.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribute.EstimatedField(uint64_t a1)
{
  Hasher.init(_seed:)();
  Attribute.EstimatedField.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Attribute.fieldClosestTo(range:rangeIsExact:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4[5];
  v12[4] = a4[4];
  v12[5] = v5;
  v12[6] = a4[6];
  v6 = a4[1];
  v12[0] = *a4;
  v12[1] = v6;
  v7 = a4[3];
  v12[2] = a4[2];
  v12[3] = v7;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  v9[2] = v12;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a3;
  v11 = a5;
  return specialized Attribute.forEachField<A>(within:userData:_:revisitor:)(v12, partial apply for closure #1 in Attribute.fieldClosestTo(range:rangeIsExact:with:), v9, 0, 0);
}

uint64_t closure #1 in Attribute.fieldClosestTo(range:rangeIsExact:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  v16 = a12[4];
  v17 = a7;
  v18 = *(v16 + 16);
  if (v18 <= a7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(a12 + 3);
  v20 = v16 + 32;
  v21 = *(v20 + 4 * a7);
  if (v21 >= v19)
  {
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

  v22 = *a12;
  if (*a12)
  {
    v23 = *(v22 + 120 * v21 + 88);
    if (a13 < a3)
    {
      *a11 = 1;
    }

    v24 = a3 + v23;
    if (__OFADD__(a3, v23))
    {
      goto LABEL_26;
    }

    if (v24 < a3)
    {
      goto LABEL_27;
    }

    if (a13 < a3 || v24 <= a13)
    {
      return 1;
    }

    if (a15)
    {
LABEL_11:
      if (a3 == a13 && v24 == a14)
      {
        *a11 = 1;
      }

      *a16 = result;
      *(a16 + 8) = a3;
      *(a16 + 16) = a8;
      *(a16 + 24) = a4;
      *(a16 + 32) = a5 & 0xFFFFFFFF00000001;
      *(a16 + 40) = a6;
      *(a16 + 48) = a7;

      return 1;
    }

    while (1)
    {
      v25 = *(v20 + 4 * v17);
      if (v25 >= v19)
      {
        break;
      }

      v26 = v22 + 120 * v25;
      v27 = *(v26 + 84);
      if (v27 > 1)
      {
        goto LABEL_11;
      }

      if (!v27)
      {
        goto LABEL_21;
      }

      v28 = *(v26 + 72);
      if (!v28)
      {
        goto LABEL_28;
      }

      v17 = *(v28 + 24);
      if (v18 <= v17)
      {
        __break(1u);
LABEL_21:
        *a16 = result;
        *(a16 + 8) = a3;
        *(a16 + 16) = a8;
        *(a16 + 24) = a4;
        *(a16 + 32) = a5 & 0xFFFFFFFF00000001;
        *(a16 + 40) = a6;
        *(a16 + 48) = a7;

        *a11 = 1;
        return 1;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized Attribute.forEachField<A>(within:userData:_:revisitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  memcpy(v47, v6, 0x131uLL);
  v40[2] = a2;
  v40[3] = a3;
  if ((v47[25] & 0x100) != 0)
  {
    outlined init with copy of Attribute(v6, v46);
LABEL_12:
    memcpy(v46, v47, 0x131uLL);
    return outlined destroy of Attribute(v46);
  }

  v12 = *&v47[23];
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v44 = 0;
  v45 = 1;
  result = swift_allocObject();
  v15 = result;
  *(result + 16) = 0;
  if (!v47[53])
  {
    outlined init with copy of Attribute(v6, v46);

    goto LABEL_12;
  }

  v16 = a1[4];
  if (HIDWORD(v12) >= *(v16 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(v16 + 4 * HIDWORD(v12) + 32);
  if (v17 >= *(a1 + 3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *a1;
  if (!*a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37[1] = v37;
  v19 = (v18 + 120 * v17);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[3];
  v42[2] = v19[2];
  v42[3] = v22;
  v42[0] = v20;
  v42[1] = v21;
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[6];
  *&v43[14] = *(v19 + 110);
  v42[5] = v24;
  *v43 = v25;
  v42[4] = v23;
  MEMORY[0x28223BE20](result);
  v36[2] = &v44;
  v36[3] = partial apply for specialized closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:);
  v36[4] = v40;
  v36[5] = v47;
  v36[6] = v13 + 16;
  v36[7] = a1;
  v26 = swift_allocObject();
  v37[0] = v36;
  v26[2] = v15;
  v26[3] = v13;
  v26[4] = a4;
  v26[5] = a5;
  v41 = 0;
  MEMORY[0x28223BE20](v26);
  v39 = a5;
  v35[2] = partial apply for specialized closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:);
  v35[3] = v36;
  v35[4] = &v41;
  v35[5] = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for specialized closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:);
  *(v27 + 24) = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v38 = a4;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a1;
  result = MEMORY[0x28223BE20](v28);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((v43[20] & 1) == 0)
  {
    v29 = *&v43[16];
    v30 = swift_allocObject();
    *(v30 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v34;
    v31 = swift_allocObject();
    *(v31 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v31 + 24) = v33;
    outlined init with copy of Attribute(v6, v46);
    outlined init with copy of PType(v42, v46);

    outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v38, v39);

    v46[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v31, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, 0, 0, 0, 0, 1, -1, 0, v29, 0);

    outlined destroy of PType(v42);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Attribute.forEachField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, v7, sizeof(__dst));
  v16[2] = a7;
  v16[3] = a3;
  v16[4] = a4;
  outlined init with copy of Attribute(v7, v18);
  Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(a1, a2, partial apply for closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:), v16, a5, a6, a7);
  memcpy(v18, __dst, 0x131uLL);
  return outlined destroy of Attribute(v18);
}

_OWORD *Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = result[5];
  v51 = result[4];
  v52 = v8;
  v53 = result[6];
  v9 = result[1];
  v48[0] = *result;
  v48[1] = v9;
  v10 = result[3];
  v49 = result[2];
  v50 = v10;
  if ((*(v7 + 101) & 1) == 0)
  {
    v32 = a4;
    v33 = result;
    v34 = a2;
    v15 = *(v7 + 92);
    v16 = swift_allocObject();
    *(v16 + 16) = MEMORY[0x277D84F90];
    v46 = 0;
    v47 = 1;
    result = swift_allocObject();
    v17 = result;
    *(result + 2) = 0;
    if (!*(v7 + 212))
    {
LABEL_7:
    }

    if (HIDWORD(v15) >= *(v49 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v49 + 4 * HIDWORD(v15) + 32);
      if (v18 < HIDWORD(v48[0]))
      {
        if (*&v48[0])
        {
          v31 = &v31;
          v19 = *&v48[0] + 120 * v18;
          v20 = *v19;
          v21 = *(v19 + 16);
          v22 = *(v19 + 48);
          v42[2] = *(v19 + 32);
          v42[3] = v22;
          v42[0] = v20;
          v42[1] = v21;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 96);
          *(v43 + 14) = *(v19 + 110);
          v42[5] = v24;
          v43[0] = v25;
          v42[4] = v23;
          v26 = *(v19 + 80);
          v39 = *(v19 + 64);
          v40 = v26;
          v41[0] = *(v19 + 96);
          *(v41 + 14) = *(v19 + 110);
          v27 = *(v19 + 16);
          v35 = *v19;
          v36 = v27;
          v28 = *(v19 + 48);
          v37 = *(v19 + 32);
          v38 = v28;
          MEMORY[0x28223BE20](result);
          v30[2] = a7;
          v30[3] = &v46;
          v30[4] = a3;
          v30[5] = v32;
          v30[6] = v7;
          v30[7] = v16 + 16;
          v30[8] = v48;
          v29 = swift_allocObject();
          v29[2] = a7;
          v29[3] = v17;
          v29[4] = v16;
          v29[5] = a5;
          v29[6] = a6;
          outlined init with copy of PType(v42, v44);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5, a6);
          PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(v33, v34, partial apply for closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:), v30, partial apply for closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:), v29, a7);

          v44[4] = v39;
          v44[5] = v40;
          v45[0] = v41[0];
          *(v45 + 14) = *(v41 + 14);
          v44[0] = v35;
          v44[1] = v36;
          v44[2] = v37;
          v44[3] = v38;
          outlined destroy of PType(v44);
          goto LABEL_7;
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t result, unint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, void, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, unint64_t *a14, uint64_t a15)
{
  v18 = a6;
  v21 = result;
  LODWORD(v22) = a10;
  if ((*(a10 + 8) & 1) == 0)
  {
    if (*a10 < a6)
    {
      goto LABEL_8;
    }

    *a10 = 0;
    *(a10 + 8) = 1;
  }

  v32 = result;
  v23 = *(a13 + 200);
  v15 = *(a13 + 212);
  result = swift_beginAccess();
  if (v15 <= a7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = a5;
  a5 = *a14;

  v25 = v23 + 40 * a7;
  v21 = v32;
  v15 = a11(a7, v25, v24, v32, a2 & 0xFFFFFFFF00000001, a3, a4, a5, v18, a8, a9);

  if ((v15 & 1) == 0)
  {
    *a10 = v18;
    *(a10 + 8) = 0;
  }

LABEL_8:
  v26 = *(a15 + 32);
  if (*(v26 + 16) <= a4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = *(v26 + 4 * a4 + 32);
  if (v27 >= *(a15 + 12))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*a15)
  {
    if (!*(*a15 + 120 * v27 + 84))
    {
      return 1;
    }

    v22 = HIDWORD(a2);
    a5 = HIDWORD(v21);
    swift_beginAccess();
    v15 = *a14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a14 = v15;
    LODWORD(v18) = v21;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v15);
        *a14 = v15;
      }

      *(v15 + 16) = v30 + 1;
      v31 = v15 + 32 * v30;
      *(v31 + 32) = v18;
      *(v31 + 36) = a5;
      *(v31 + 40) = a2 & 1;
      *(v31 + 44) = v22;
      *(v31 + 48) = a3;
      *(v31 + 56) = a4;
      swift_endAccess();
      return 1;
    }

LABEL_20:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    *a14 = v15;
    goto LABEL_13;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v17 = *(a7 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 16) = v19;
  swift_beginAccess();
  a7 = *(a8 + 16);
  if (!*(a7 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v21 = *(a7 + 16);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_10:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a7);
  a7 = result;
  v21 = *(result + 16);
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a7 + 16) = v21 - 1;
  *(a8 + 16) = a7;
  result = swift_endAccess();
  if (a9)
  {

    a9(a5, a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7, a6);
  }

  return result;
}

uint64_t closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v19 = *(a8 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = a9;
  *(a8 + 16) = v21;
  swift_beginAccess();
  a8 = *(a9 + 16);
  if (!*(a8 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v23 = *(a8 + 16);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_10:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a8);
  a8 = result;
  v23 = *(result + 16);
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a8 + 16) = v23 - 1;
  *(v10 + 16) = a8;
  result = swift_endAccess();
  if (a10)
  {

    a10(a5, a1, a2 & 0xFFFFFFFF00000001, a3, a4, a8, a6, a7);
  }

  return result;
}

uint64_t Attribute.inputEdges.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Attribute.outputEdges.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Attribute.mark.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Attribute.kind.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 89) = HIBYTE(a3) & 1;
  return result;
}

uint64_t one-time initialization function for externalViewValue()
{
  if (one-time initialization token for external != -1)
  {
    swift_once();
  }

  v0 = static PType.Pattern.external;
  v1 = qword_280481CE8;
  v2 = dword_280481CF0;
  v3 = one-time initialization token for viewValue;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static PType.Pattern.viewValue;
  v5 = qword_280481D00;
  v6 = dword_280481D08;
  v7 = one-time initialization token for any;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static PType.Pattern.any;
  v9 = qword_280481D18;
  v10 = dword_280481D20;
  dword_280481D58 = static PType.Pattern.any;
  qword_280481D60 = qword_280481D18;
  dword_280481D68 = dword_280481D20;
  word_280481D6C = 0;
  LODWORD(static Attribute.Pattern.externalViewValue) = v0;
  *(&static Attribute.Pattern.externalViewValue + 1) = v1;
  dword_280481D38 = v2;
  dword_280481D40 = v4;
  *&xmmword_280481D48 = v5;
  DWORD2(xmmword_280481D48) = v6;
  swift_retain_n();

  dword_280481D58 = v8;
  qword_280481D60 = v9;
  dword_280481D68 = v10;
}

int *Attribute.Pattern.init(body:value:view:debug:)@<X0>(int *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 1);
  v6 = result[4];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = a2[4];
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = a3[4];
  if (one-time initialization token for any != -1)
  {
    v13 = a4;
    result = swift_once();
    a4 = v13;
  }

  *(a4 + 68) = 0;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  return result;
}

uint64_t static Attribute.Pattern.externalViewValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for externalViewValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&dword_280481D58;
  v8[2] = xmmword_280481D48;
  v9[0] = *&dword_280481D58;
  v2 = *(&qword_280481D60 + 6);
  *(v9 + 14) = *(&qword_280481D60 + 6);
  v4 = static Attribute.Pattern.externalViewValue;
  v3 = *&dword_280481D38;
  v8[0] = static Attribute.Pattern.externalViewValue;
  v8[1] = *&dword_280481D38;
  *(a1 + 32) = xmmword_280481D48;
  *(a1 + 48) = v1;
  *(a1 + 62) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t static Attribute.Pattern.value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = add_explicit + 1;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.value(_:)@<X0>(uint64_t a2@<X8>)
{

  PType.Pattern.IsA.init(_:genericParams:)(v3, 0, &v10);
  v4 = v10;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.any;
  v7 = qword_280481D18;
  v8 = dword_280481D20;
  *(a2 + 68) = 0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = add_explicit + 1;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.body(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = add_explicit + 1;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.view(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = add_explicit + 1;
  *(a3 + 56) = v8;
  *(a3 + 64) = 0;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.body(_:)@<X0>(uint64_t a2@<X8>)
{

  PType.Pattern.IsA.init(_:genericParams:)(v3, 0, &v10);
  v4 = v10;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.any;
  v7 = qword_280481D18;
  v8 = dword_280481D20;
  *(a2 + 68) = 0;
  *a2 = add_explicit + 1;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.external(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for external != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.external;
  v7 = qword_280481CE8;
  v8 = dword_280481CF0;
  v9 = one-time initialization token for currentIdx;

  if (v9 != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v17);
  v12 = v17;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v13 = static PType.Pattern.any;
  v14 = qword_280481D18;
  v15 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = add_explicit + 1;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
}

uint64_t Attribute.indirectType(within:)(uint64_t a1)
{
  result = Attribute.indirectSource(within:)(a1);
  if (result >= *(a1 + 84))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    return *(v4 + 92);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Attribute.Pattern.match(_:view:within:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v43 = *(v4 + 48);
  v13 = *(v4 + 56);
  v14 = *(v4 + 64);
  LODWORD(v62) = *v4;
  *(&v62 + 1) = v8;
  LODWORD(v63) = v9;
  v15 = *(*a4 + 136);
  v17 = v15[1];
  v16 = v15[2];
  v76[0] = *v15;
  v76[1] = v17;
  v76[2] = v16;
  v18 = v15[6];
  v20 = v15[3];
  v19 = v15[4];
  v76[5] = v15[5];
  v76[6] = v18;
  v76[3] = v20;
  v76[4] = v19;
  v72 = v15[3];
  v73 = v15[4];
  v74 = v15[5];
  v75 = v15[6];
  v69 = *v15;
  v70 = v15[1];
  v71 = v15[2];

  outlined init with copy of Interpreter.Storage.Types(v76, v77);
  PType.Pattern.match(type:within:)(a1, &v69);
  v22 = v21;
  v77[4] = v73;
  v77[5] = v74;
  v77[6] = v75;
  v77[0] = v69;
  v77[1] = v70;
  v77[2] = v71;
  v77[3] = v72;
  outlined destroy of Interpreter.Storage.Types(v77);

  if (v22 & 1) != 0 && (LODWORD(v44) = v10, *(&v44 + 1) = v11, LODWORD(v45) = v12, v23 = *(*a4 + 136), v25 = v23[1], v24 = v23[2], v62 = *v23, v63 = v25, v64 = v24, v26 = v23[6], v28 = v23[3], v27 = v23[4], v67 = v23[5], v68 = v26, v65 = v28, v66 = v27, v58 = v23[3], v59 = v23[4], v60 = v23[5], v61 = v23[6], v55 = *v23, v56 = v23[1], v57 = v23[2], , outlined init with copy of Interpreter.Storage.Types(&v62, v54), PType.Pattern.match(type:within:)(HIDWORD(a1), &v55), v30 = v29, v73 = v59, v74 = v60, v75 = v61, v69 = v55, v70 = v56, v71 = v57, v72 = v58, outlined destroy of Interpreter.Storage.Types(&v69), , (v30))
  {
    if ((a3 & 0x100000000) != 0)
    {
      v41 = 1;
    }

    else
    {
      v51 = v43;
      v52 = v13;
      v53 = v14;
      v31 = *(*a4 + 136);
      v33 = v31[1];
      v32 = v31[2];
      v54[0] = *v31;
      v54[1] = v33;
      v54[2] = v32;
      v34 = v31[6];
      v36 = v31[3];
      v35 = v31[4];
      v54[5] = v31[5];
      v54[6] = v34;
      v54[3] = v36;
      v54[4] = v35;
      v37 = v31[5];
      v48 = v31[4];
      v49 = v37;
      v50 = v31[6];
      v38 = v31[1];
      v44 = *v31;
      v45 = v38;
      v39 = v31[3];
      v46 = v31[2];
      v47 = v39;

      outlined init with copy of Interpreter.Storage.Types(v54, &v55);
      PType.Pattern.match(type:within:)(a3, &v44);
      v41 = v40;
      v59 = v48;
      v60 = v49;
      v61 = v50;
      v55 = v44;
      v56 = v45;
      v57 = v46;
      v58 = v47;
      outlined destroy of Interpreter.Storage.Types(&v55);
    }
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}