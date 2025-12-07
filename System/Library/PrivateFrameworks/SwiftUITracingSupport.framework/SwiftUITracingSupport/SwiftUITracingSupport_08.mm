void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t result, uint64_t a2, char a3, double a4)
{
  if (v4[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v5 = v4;
  v6 = *(v4 + 22);
  v7 = *v4;
  if (v7 >= *(v6 + 116))
  {
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
    goto LABEL_97;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v10 = *(*(*(v8 + 8 * v7) + 8) + 44);
  v11 = v4 + 56;
  v12 = *(v4 + 72);
  v125[0] = *(v4 + 56);
  v125[1] = v12;
  v126[0] = *(v4 + 88);
  v13 = v4 + 84;
  v14 = v4 + 88;
  v15 = (v5 + 104);
  *(v126 + 9) = *(v5 + 97);
  v16 = (v5 + 56);
  v17 = (v5 + 72);
  v18 = v5 + 84;
  v19 = (v5 + 104);
  v108 = result;
  while (1)
  {
    v20 = *v19;
    if (*v18)
    {
      v21 = *v17;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v125);
    }

    v17 = (v20 + 16);
    v18 = (v20 + 28);
    v19 = (v20 + 48);
    v16 = v20;
  }

  v22 = *v16;
  if (!v22)
  {
    goto LABEL_123;
  }

  v23 = *(*(v22 + 24 * *v21) + 112);
  if (!v23)
  {
    goto LABEL_107;
  }

  v24 = *(v5 + 20);
  v105 = v5[168];
  v106 = **(v23 + 32);
  v104 = *(v5 + 43);
  v25 = *(v5 + 72);
  v123[0] = *v11;
  v123[1] = v25;
  v124[0] = *(v5 + 88);
  v26 = v5 + 100;
  v27 = *(v5 + 29);
  v28 = v5 + 56;
  v29 = (v5 + 104);
  *(v124 + 9) = *(v5 + 97);
  v113 = v6;
  v107 = v7;
  while (1)
  {
    v30 = *v29;
    if (v27 < *v26)
    {
      v31 = (*v14 + 8 * v27);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v27, 0, v123);
    }

    v14 = (v30 + 32);
    v26 = (v30 + 44);
    v29 = (v30 + 48);
    v28 = v30;
  }

  if (!*v28)
  {
    goto LABEL_124;
  }

  v32 = v10;
  v33 = *v28 + 24 * *v31;
  v34 = *(*v33 + 56);
  v35 = *(*v33 + 64);
  *(&v114 + 1) = 0;
  *&v115 = 0;
  WORD4(v115) = 257;
  LODWORD(v116) = 0;
  HIDWORD(v115) = 0;
  *(&v116 + 1) = 0;
  LOWORD(v117) = 0;
  *(&v117 + 1) = -1;
  *&v119[8] = xmmword_26C32E070;
  *&v119[24] = 0;
  *&v120 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v120 + 1) = v36;
  LODWORD(v114) = v10;
  specialized HeterogeneousBuffer.insert<A>(_:)(v108 & 1, a4);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v116) = v106;
  *(&v118 + 4) = v24;
  BYTE12(v118) = v105;
  *v119 = v104;
  if ((v35 & 1) == 0)
  {
    *&v119[8] = v34;
  }

  if (v107 >= *(v6 + 116))
  {
    goto LABEL_88;
  }

  v37 = *(v6 + 104);
  if (!v37)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v38 = *(*(v37 + 8 * v107) + 8);
  v39 = *(v38 + 44);
  if (v39 == *(v38 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v39);
  }

  v40 = *(v38 + 32);
  if (!v40)
  {
    goto LABEL_109;
  }

  v41 = *(v38 + 44);
  v42 = (v40 + (v41 << 7));
  LOBYTE(v118) = a3 & 1;
  v42[4] = v118;
  v42[5] = *v119;
  v42[6] = *&v119[16];
  v42[7] = v120;
  *v42 = v114;
  v42[1] = v115;
  v42[2] = v116;
  v42[3] = v117;
  if (v41 == -1)
  {
    goto LABEL_89;
  }

  *(v38 + 44) = v41 + 1;
  if (v5[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v43 = *v5;
  if (v43 >= *(v6 + 116))
  {
    goto LABEL_90;
  }

  v44 = *(v6 + 104);
  if (!v44)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v45 = *(*(v44 + 8 * v43) + 8);
  if (v32 >= *(v45 + 44))
  {
    goto LABEL_91;
  }

  v110 = *(v6 + 116);
  v46 = *(v45 + 32);
  if (!v46)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v112 = v32;
  v47 = v46 + (v32 << 7);
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  v50 = *(v47 + 24);
  v51 = *(v47 + 25);
  v54 = v47 + 28;
  v52 = *(v47 + 28);
  v53 = *(v54 + 4);
  v55 = v51 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v52 << 32);
  v58 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v48, v49, v57 | v50, v53);
  if (v58)
  {
    v59 = v112;
  }

  else
  {
    v58 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v48, v49, v57 | v50, v53, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v59 = v112;
    if (!v58)
    {
      goto LABEL_48;
    }
  }

  if (v5[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v60 = *v5;
  if (v60 >= v110)
  {
    goto LABEL_92;
  }

  v61 = *v58;
  v62 = *(*(v44 + 8 * v60) + 8);
  if (*(v62 + 60) == *(v62 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v63 = *(v62 + 48);
  if (!v63)
  {
    goto LABEL_114;
  }

  v64 = *(v62 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v61;
  v65[1] = v59;
  if (v64 == -1)
  {
    goto LABEL_93;
  }

  *(v62 + 60) = v64 + 1;
  if (v5[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v66 = *v5;
  if (v66 >= *(v113 + 116))
  {
    goto LABEL_94;
  }

  v67 = *(v113 + 104);
  if (!v67)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v5 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v70)
  {
    v71 = *v5;
    v72 = v5[48];
    v73 = *(v5 + 72);
    v121[0] = *v11;
    v121[1] = v73;
    v122[0] = *(v5 + 88);
    *(v122 + 9) = *(v5 + 97);
    v74 = (v5 + 72);
    while (1)
    {
      v75 = *v15;
      if (*v13)
      {
        if (((*v74)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v75)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v121);
      }

      v74 = (v75 + 16);
      v13 = (v75 + 28);
      v15 = (v75 + 48);
      v11 = v75;
    }

    if (!*v11)
    {
      goto LABEL_125;
    }

    v76 = *(*(*v11 + 24 * **v74) + 112);
    if (v76)
    {
      v77 = *(*(v76 + 32) + 8);
      v78 = *(v77 + 16);
      v79 = v78 + 1;
      v80 = (v77 + 48 * v78 - 16);
      while (v79-- > 1)
      {
        if (v72)
        {
          goto LABEL_100;
        }

        if (*(v68 + 116) <= v71)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v82 = *(v68 + 104);
        if (!v82)
        {
          goto LABEL_101;
        }

        v69 = *v80;
        v83 = *(*(v82 + 8 * v71) + 8);
        if (v69 >= *(v83 + 44))
        {
          goto LABEL_85;
        }

        v84 = *(v83 + 32);
        if (!v84)
        {
          goto LABEL_102;
        }

        v85 = v84 + (v69 << 7);
        v88 = *(v85 + 8);
        v87 = v85 + 8;
        v86 = v88;
        if (!*(v87 + 24))
        {
          goto LABEL_86;
        }

        if (*(v87 + 16))
        {
          goto LABEL_104;
        }

        if (!v86)
        {
          goto LABEL_103;
        }

        v80 -= 12;
        if (*v86 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v5[48])
  {
    goto LABEL_117;
  }

  v89 = *v5;
  if (v89 >= *(v68 + 116))
  {
    goto LABEL_95;
  }

  v90 = *(v68 + 104);
  if (!v90)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v91 = *(*(v90 + 8 * v89) + 8);
  v92 = *(v91 + 44);
  if (v69 >= v92)
  {
    goto LABEL_96;
  }

  v93 = *(v91 + 32);
  if (v93)
  {
    if (v59 < v92)
    {
      v94 = (v93 + (v69 << 7));
      v95 = (v93 + (v59 << 7));
      v96 = *v95;
      if (v94[31] == v94[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v97 = *(v94 + 14);
      if (!v97)
      {
        goto LABEL_120;
      }

      v98 = v94[31];
      v99 = v97 + 8 * v98;
      *v99 = -24064;
      *(v99 + 4) = v96;
      if (v98 != -1)
      {
        v94[31] = v98 + 1;
        v100 = *v94;
        if (v95[31] == v95[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v101 = *(v95 + 14);
        if (!v101)
        {
          goto LABEL_121;
        }

        v102 = v95[31];
        v103 = v101 + 8 * v102;
        *v103 = 25088;
        *(v103 + 4) = v100;
        if (v102 != -1)
        {
          v95[31] = v102 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v59);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
  __break(1u);
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, __int16 a2, uint64_t a3, unsigned __int8 *a4, unsigned int **a5)
{
  if (v6[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v13 = *(v6 + 22);
  v14 = *v6;
  if (v14 >= *(v13 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v179 = *(v6 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_140;
  }

  v9 = a5;
  v11 = a4;
  *&v182 = *(*(*(v15 + 8 * v14) + 8) + 44);
  v10 = v6 + 56;
  v16 = *(v6 + 72);
  v216[0] = *(v6 + 56);
  v216[1] = v16;
  v217[0] = *(v6 + 88);
  v12 = v6 + 84;
  v17 = v6 + 88;
  v7 = (v6 + 104);
  *(v217 + 9) = *(v6 + 97);
  v18 = (v6 + 56);
  v19 = (v6 + 72);
  v20 = v6 + 84;
  v21 = (v6 + 104);
  *&v178 = a3;
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_169;
  }

  *&v180 = v6 + 72;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
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
    goto LABEL_147;
  }

  v26 = *(v6 + 20);
  v173 = v6[168];
  v174 = **(v25 + 32);
  v172 = *(v6 + 43);
  v27 = *(v6 + 72);
  v214[0] = *v10;
  v214[1] = v27;
  v215[0] = *(v6 + 88);
  v28 = v6 + 100;
  v29 = *(v6 + 29);
  v23 = (v6 + 56);
  v30 = (v6 + 104);
  *(v215 + 9) = *(v6 + 97);
  v181 = v6;
  v175 = v14;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v214);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_174;
  }

  v14 = a4;
  v34 = a5;
  v35 = v33 + 24 * *v32;
  v36 = *(*v35 + 56);
  v5 = *(*v35 + 64);
  v11 = &v200;
  *(&v200 + 1) = 0;
  *&v201 = 0;
  WORD4(v201) = 257;
  LODWORD(v202) = 0;
  HIDWORD(v201) = 0;
  *(&v202 + 1) = 0;
  LOWORD(v203) = 0;
  *(&v203 + 1) = -1;
  v9 = &v200;
  *&v205[8] = xmmword_26C32E070;
  *&v205[24] = 0;
  *&v206 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v206 + 1) = v37;
  LODWORD(v200) = v182;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a2 & 0x101);
  specialized HeterogeneousBuffer.insert<A>(_:)(v178, v14);
  DWORD1(v202) = v174;
  *(&v204 + 4) = v26;
  BYTE12(v204) = v173;
  *v205 = v172;
  LOBYTE(v204) = v34 & 1;
  if ((v5 & 1) == 0)
  {
    *&v205[8] = v36;
  }

  v8 = v179;
  if (v175 >= *(v179 + 116))
  {
    goto LABEL_119;
  }

  v38 = *(v179 + 104);
  if (!v38)
  {
    goto LABEL_142;
  }

  v5 = *(*(v38 + 8 * v175) + 8);
  v39 = *(v5 + 44);
  if (v39 == *(v5 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v39);
  }

  v40 = *(v5 + 32);
  if (!v40)
  {
    goto LABEL_143;
  }

  v41 = *(v5 + 44);
  v42 = (v40 + (v41 << 7));
  v43 = *v205;
  v42[4] = v204;
  v42[5] = v43;
  v44 = v206;
  v42[6] = *&v205[16];
  v42[7] = v44;
  v45 = v201;
  *v42 = v200;
  v42[1] = v45;
  v46 = v203;
  v42[2] = v202;
  v42[3] = v46;
  if (v41 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v5 + 44) = v41 + 1;
  if (v6[48])
  {
    goto LABEL_144;
  }

  v9 = *(v179 + 116);
  v47 = *v6;
  if (v47 >= v9)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v8 = *(v179 + 104);
  if (!v8)
  {
    goto LABEL_145;
  }

  v48 = *(*&v8[8 * v47] + 8);
  if (v182 >= *(v48 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v49 = *(v48 + 32);
  if (!v49)
  {
    goto LABEL_146;
  }

  v50 = v49 + (v182 << 7);
  v51 = *(v50 + 8);
  v52 = *(v50 + 16);
  v5 = *(v50 + 24);
  v53 = *(v50 + 25);
  v56 = v50 + 28;
  v54 = *(v50 + 28);
  v55 = *(v56 + 4);
  LOBYTE(v187) = v5;
  v57 = v53 == 0;
  v58 = 256;
  if (v57)
  {
    v58 = 0;
  }

  v59 = v58 | (v54 << 32);
  v60 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v51, v52, v59 | v5, v55);
  if (v60)
  {
    v11 = v181;
    v14 = v182;
  }

  else
  {
    LOBYTE(v187) = v5;
    v60 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v51, v52, v59 | v5, v55, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v181;
    v14 = v182;
    if (!v60)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v61 = *v11;
  if (v61 >= v9)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v62 = *v60;
  v5 = *(*&v8[8 * v61] + 8);
  if (*(v5 + 60) == *(v5 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v63 = *(v5 + 48);
  if (!v63)
  {
    goto LABEL_160;
  }

  v64 = *(v5 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v62;
  v65[1] = v14;
  if (v64 == -1)
  {
    goto LABEL_127;
  }

  *(v5 + 60) = v64 + 1;
  if (v11[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v66 = *v11;
  if (v66 >= *(v179 + 116))
  {
    goto LABEL_128;
  }

  v67 = *(v179 + 104);
  if (!v67)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v11 + 9);
  v195 = *(v11 + 8);
  v196 = v68;
  v197 = *(v11 + 10);
  v69 = *(v11 + 5);
  v191 = *(v11 + 4);
  v192 = v69;
  v70 = *(v11 + 7);
  v193 = *(v11 + 6);
  v194 = v70;
  v71 = *(v11 + 1);
  v187 = *v11;
  v188 = v71;
  v72 = *(v11 + 3);
  v189 = *(v11 + 2);
  v190 = v72;
  v199 = v11[192];
  v74 = *(v11 + 22);
  v73 = *(v11 + 23);
  *&v198 = v74;
  *(&v198 + 1) = v73;
  Interpreter.Iterator.updatingStack.getter();
  if (v76)
  {
    v77 = *v11;
    v14 = v11[48];
    v78 = v10[1];
    v212[0] = *v10;
    v212[1] = v78;
    v213[0] = v10[2];
    *(v213 + 9) = *(v10 + 41);
    v79 = v10;
    v9 = v180;
    v80 = v180;
    v81 = v12;
    v82 = v7;
    while (1)
    {
      v83 = *v82;
      if (*v81)
      {
        v23 = *v80;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
      }

      v80 = (v83 + 16);
      v81 = (v83 + 28);
      v82 = (v83 + 48);
      v79 = v83;
    }

    v33 = *v79;
    if (!v33)
    {
      goto LABEL_175;
    }

    v23 = *v23;
    v131 = *(*(v33 + 24 * v23) + 112);
    if (v131)
    {
      v132 = *(*(v131 + 32) + 8);
      v133 = *(v132 + 16);
      v134 = v133 + 1;
      v135 = (v132 + 48 * v133 - 16);
      do
      {
        if (v134-- <= 1)
        {
          goto LABEL_69;
        }

        if (v14)
        {
          goto LABEL_134;
        }

        if (*(v74 + 116) <= v77)
        {
          goto LABEL_115;
        }

        v137 = *(v74 + 104);
        if (!v137)
        {
          goto LABEL_135;
        }

        v75 = *v135;
        v138 = *(*(v137 + 8 * v77) + 8);
        if (v75 >= *(v138 + 44))
        {
          goto LABEL_116;
        }

        v139 = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_136;
        }

        v140 = v139 + (v75 << 7);
        v143 = *(v140 + 8);
        v142 = v140 + 8;
        v141 = v143;
        if (!*(v142 + 24))
        {
          goto LABEL_117;
        }

        if (*(v142 + 16))
        {
          goto LABEL_138;
        }

        if (!v141)
        {
          goto LABEL_137;
        }

        v135 -= 12;
      }

      while (*v141 != &type metadata for Event.Transaction);
      v14 = v182;
      if (v11[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v9 = v180;
  if (v11[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v84 = *v11;
  if (v84 >= *(v74 + 116))
  {
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v85 = *(v74 + 104);
  if (!v85)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v86 = *(*(v85 + 8 * v84) + 8);
  v87 = *(v86 + 44);
  if (v75 >= v87)
  {
    goto LABEL_130;
  }

  v88 = *(v86 + 32);
  if (!v88)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
  }

  if (v14 >= v87)
  {
    goto LABEL_131;
  }

  v89 = (v88 + (v75 << 7));
  v14 = v88 + (v14 << 7);
  v8 = *v14;
  if (v89[31] == v89[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v90 = *(v89 + 14);
  if (!v90)
  {
    goto LABEL_165;
  }

  v91 = v89[31];
  v92 = v90 + 8 * v91;
  *v92 = -24064;
  *(v92 + 4) = v8;
  if (v91 == -1)
  {
    goto LABEL_132;
  }

  v89[31] = v91 + 1;
  v5 = *v89;
  if (*(v14 + 124) == *(v14 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v93 = *(v14 + 112);
  if (!v93)
  {
    goto LABEL_166;
  }

  v94 = *(v14 + 124);
  v95 = v93 + 8 * v94;
  *v95 = 25088;
  *(v95 + 4) = v5;
  if (v94 == -1)
  {
    goto LABEL_133;
  }

  *(v14 + 124) = v94 + 1;
LABEL_69:
  v96 = v10[1];
  v210[0] = *v10;
  v210[1] = v96;
  v211[0] = v10[2];
  *(v211 + 9) = *(v10 + 41);
  v97 = v10;
  v98 = v9;
  v99 = v12;
  v100 = v7;
  while (1)
  {
    v101 = *v100;
    if (*v99)
    {
      v23 = *v98;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v101)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v98 = (v101 + 16);
    v99 = (v101 + 28);
    v100 = (v101 + 48);
    v97 = v101;
  }

  v102 = *v97;
  if (!v102)
  {
    goto LABEL_170;
  }

  v103 = *(*(v102 + 24 * *v23) + 112);
  if (!v103)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v103 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v104 = *v11;
      if (v104 >= *(v74 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v105 = *(v74 + 104);
      if (v105)
      {
        v106 = *(*(v105 + 8 * v104) + 8);
        v107 = *(v106 + 44);
        if (!v107)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v108 = *(v106 + 32);
        if (v108)
        {
          v109 = v108 + (v107 << 7);
          v110 = *(v109 - 112);
          v187 = *(v109 - 128);
          v188 = v110;
          v111 = *(v109 - 48);
          v191 = *(v109 - 64);
          v192 = v111;
          v112 = *(v109 - 16);
          v193 = *(v109 - 32);
          v194 = v112;
          v113 = *(v109 - 80);
          v189 = *(v109 - 96);
          v190 = v113;
          LOBYTE(v207) = BYTE8(v188);
          v114 = 256;
          if (!BYTE9(v188))
          {
            v114 = 0;
          }

          v115 = v114 | (HIDWORD(v188) << 32);
          v116 = HeterogeneousBuffer.type(at:)(0, *(&v187 + 1), v188, v114 | BYTE8(v188), v189);
          v117 = swift_conformsToProtocol2();
          if (v117)
          {
            v118 = v117;
            LOBYTE(v207) = BYTE8(v188);
            v119 = HeterogeneousBuffer.index(after:)(0, *(&v187 + 1), v188, v115 | BYTE8(v188), v189);
            LOBYTE(v207) = BYTE8(v188);
            v120 = HeterogeneousBuffer.type(at:)(v119, *(&v187 + 1), v188, v115 | BYTE8(v188), v189);
            v121 = swift_conformsToProtocol2();
            if (v121)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v120, &v187, v116, v118, v121, &v183);
              v178 = v184;
              v179 = v183;
              v14 = v185;
              v122 = v10[1];
              v207 = *v10;
              v208 = v122;
              v209[0] = v10[2];
              *(v209 + 9) = *(v10 + 41);
              v123 = v180;
              while (1)
              {
                v124 = *v7;
                if (*v12)
                {
                  v23 = *v123;
                  if (((*v123)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v124)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
                }

                v123 = (v124 + 16);
                v12 = (v124 + 28);
                v7 = (v124 + 48);
                v10 = v124;
              }

              if (*v10)
              {
                v125 = *(*(*v10 + 24 * *v23) + 112);
                if (v125)
                {
                  v5 = *(v125 + 32);
                  v8 = *(v5 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v128 = *(v8 + 2);
                    v127 = *(v8 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v8);
                      *(v5 + 8) = v8;
                    }

                    *(v8 + 2) = v128 + 1;
                    v129 = &v8[48 * v128];
                    *(v129 + 8) = v182;
                    *(v129 + 40) = v179;
                    *(v129 + 56) = v178;
                    *(v129 + 18) = v14;
                    Interpreter.Iterator.relate(prior:)(v182);
                    return v182;
                  }

LABEL_125:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v5 + 8) = v8;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v144 = *(v11 + 11);
  v197 = *(v11 + 10);
  v198 = v144;
  v199 = v11[192];
  v145 = *(v11 + 7);
  v193 = *(v11 + 6);
  v194 = v145;
  v146 = *(v11 + 9);
  v195 = *(v11 + 8);
  v196 = v146;
  v147 = *(v11 + 3);
  v189 = *(v11 + 2);
  v190 = v147;
  v148 = *(v11 + 5);
  v191 = *(v11 + 4);
  v192 = v148;
  v149 = *(v11 + 1);
  v187 = *v11;
  v188 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v150 = swift_allocObject();
  v182 = xmmword_26C328DC0;
  *(v150 + 16) = xmmword_26C328DC0;
  v180 = xmmword_26C32DAD0;
  v207 = xmmword_26C32DAD0;
  LOBYTE(v208) = 1;
  *&v209[0] = 0;
  *(&v208 + 1) = 0;
  WORD4(v209[0]) = 512;
  v151 = Interpreter.Iterator.describe(state:)(&v207);
  v14 = MEMORY[0x277D837D0];
  *(v150 + 56) = MEMORY[0x277D837D0];
  *(v150 + 32) = v151;
  *(v150 + 40) = v152;
  print(_:separator:terminator:)();

  v153 = v10[1];
  v207 = *v10;
  v208 = v153;
  v209[0] = v10[2];
  *(v209 + 9) = *(v10 + 41);
  while (1)
  {
    v154 = *v7;
    if (*v12)
    {
      v23 = *v9;
      if (((*v9)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v154)
    {
      goto LABEL_167;
    }

    v9 = (v154 + 16);
    v12 = (v154 + 28);
    v7 = (v154 + 48);
    v10 = v154;
  }

LABEL_172:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v155 = *(*(v33 + 24 * *v23) + 112);
  if (!v155)
  {
    __break(1u);
  }

  v156 = *(v155 + 32);
  v157 = v156[1];
  v158 = v156[3];
  v159 = v156[4];
  v160 = swift_allocObject();
  *(v160 + 16) = v182;
  v187 = v180;
  LOBYTE(v188) = 1;
  *(&v188 + 1) = 0;
  *&v189 = 0;
  WORD4(v189) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v158, v159);
  v161 = specialized Interpreter.Control.Events.describe(state:)(&v187, v157);
  *(v160 + 56) = v14;
  *(v160 + 32) = v161;
  *(v160 + 40) = v162;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v158, v159);
  v163 = *(v181 + 11);
  v197 = *(v181 + 10);
  v198 = v163;
  v199 = v181[192];
  v164 = *(v181 + 7);
  v193 = *(v181 + 6);
  v194 = v164;
  v165 = *(v181 + 9);
  v195 = *(v181 + 8);
  v196 = v165;
  v166 = *(v181 + 3);
  v189 = *(v181 + 2);
  v190 = v166;
  v167 = *(v181 + 5);
  v191 = *(v181 + 4);
  v192 = v167;
  v168 = *(v181 + 1);
  v187 = *v181;
  v188 = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = v182;
  v183 = v180;
  LOBYTE(v184) = 1;
  *(&v184 + 1) = 0;
  v185 = 0;
  v186 = 512;
  v170 = Interpreter.Iterator.describe(state:)(&v183);
  *(v169 + 56) = v14;
  *(v169 + 32) = v170;
  *(v169 + 40) = v171;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int **a4)
{
  if (v5[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v12 = *(v5 + 22);
  v13 = *v5;
  if (v13 >= *(v12 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v177 = *(v5 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_140;
  }

  v8 = a4;
  v10 = a3;
  *&v180 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v5 + 56;
  v15 = *(v5 + 72);
  v214[0] = *(v5 + 56);
  v214[1] = v15;
  v215[0] = *(v5 + 88);
  v11 = v5 + 84;
  v16 = v5 + 88;
  v6 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v17 = (v5 + 56);
  v18 = (v5 + 72);
  v19 = v5 + 84;
  v20 = (v5 + 104);
  *&v176 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_169;
  }

  *&v178 = v5 + 72;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
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
    goto LABEL_147;
  }

  v25 = *(v5 + 20);
  v172 = v5[168];
  v173 = **(v24 + 32);
  v171 = *(v5 + 43);
  v26 = *(v5 + 72);
  v212[0] = *v9;
  v212[1] = v26;
  v213[0] = *(v5 + 88);
  v27 = v5 + 100;
  v28 = *(v5 + 29);
  v22 = (v5 + 56);
  v29 = (v5 + 104);
  *(v213 + 9) = *(v5 + 97);
  v179 = v5;
  v174 = v13;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v212);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_174;
  }

  v13 = a3;
  v33 = a4;
  v34 = v32 + 24 * *v31;
  v4 = *(*v34 + 56);
  v35 = *(*v34 + 64);
  v10 = &v198;
  *(&v198 + 1) = 0;
  *&v199 = 0;
  WORD4(v199) = 257;
  LODWORD(v200) = 0;
  HIDWORD(v199) = 0;
  *(&v200 + 1) = 0;
  LOWORD(v201) = 0;
  *(&v201 + 1) = -1;
  v8 = &v198;
  *&v203[8] = xmmword_26C32E070;
  *&v203[24] = 0;
  *&v204 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v204 + 1) = v36;
  LODWORD(v198) = v180;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(v176, v13);
  DWORD1(v200) = v173;
  *(&v202 + 4) = v25;
  BYTE12(v202) = v172;
  *v203 = v171;
  LOBYTE(v202) = v33 & 1;
  if ((v35 & 1) == 0)
  {
    *&v203[8] = v4;
  }

  v7 = v177;
  if (v174 >= *(v177 + 116))
  {
    goto LABEL_119;
  }

  v37 = *(v177 + 104);
  if (!v37)
  {
    goto LABEL_142;
  }

  v4 = *(*(v37 + 8 * v174) + 8);
  v38 = *(v4 + 44);
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_143;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v203;
  v41[4] = v202;
  v41[5] = v42;
  v43 = v204;
  v41[6] = *&v203[16];
  v41[7] = v43;
  v44 = v199;
  *v41 = v198;
  v41[1] = v44;
  v45 = v201;
  v41[2] = v200;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_144;
  }

  v8 = *(v177 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v7 = *(v177 + 104);
  if (!v7)
  {
    goto LABEL_145;
  }

  v47 = *(*&v7[8 * v46] + 8);
  if (v180 >= *(v47 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_146;
  }

  v49 = v48 + (v180 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v185) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v58 | v4, v54);
  if (v59)
  {
    v10 = v179;
    v13 = v180;
  }

  else
  {
    LOBYTE(v185) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v179;
    v13 = v180;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v60 = *v10;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = *v59;
  v4 = *(*&v7[8 * v60] + 8);
  if (*(v4 + 60) == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v62 = *(v4 + 48);
  if (!v62)
  {
    goto LABEL_160;
  }

  v63 = *(v4 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v61;
  v64[1] = v13;
  if (v63 == -1)
  {
    goto LABEL_127;
  }

  *(v4 + 60) = v63 + 1;
  if (v10[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v65 = *v10;
  if (v65 >= *(v177 + 116))
  {
    goto LABEL_128;
  }

  v66 = *(v177 + 104);
  if (!v66)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v67;
  v195 = *(v10 + 10);
  v68 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v68;
  v69 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v69;
  v70 = *(v10 + 1);
  v185 = *v10;
  v186 = v70;
  v71 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v71;
  v197 = v10[192];
  v73 = *(v10 + 22);
  v72 = *(v10 + 23);
  *&v196 = v73;
  *(&v196 + 1) = v72;
  Interpreter.Iterator.updatingStack.getter();
  if (v75)
  {
    v76 = *v10;
    v13 = v10[48];
    v77 = v9[1];
    v210[0] = *v9;
    v210[1] = v77;
    v211[0] = v9[2];
    *(v211 + 9) = *(v9 + 41);
    v78 = v9;
    v8 = v178;
    v79 = v178;
    v80 = v11;
    v81 = v6;
    while (1)
    {
      v82 = *v81;
      if (*v80)
      {
        v22 = *v79;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v82)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
      }

      v79 = (v82 + 16);
      v80 = (v82 + 28);
      v81 = (v82 + 48);
      v78 = v82;
    }

    v32 = *v78;
    if (!v32)
    {
      goto LABEL_175;
    }

    v22 = *v22;
    v130 = *(*(v32 + 24 * v22) + 112);
    if (v130)
    {
      v131 = *(*(v130 + 32) + 8);
      v132 = *(v131 + 16);
      v133 = v132 + 1;
      v134 = (v131 + 48 * v132 - 16);
      do
      {
        if (v133-- <= 1)
        {
          goto LABEL_69;
        }

        if (v13)
        {
          goto LABEL_134;
        }

        if (*(v73 + 116) <= v76)
        {
          goto LABEL_115;
        }

        v136 = *(v73 + 104);
        if (!v136)
        {
          goto LABEL_135;
        }

        v74 = *v134;
        v137 = *(*(v136 + 8 * v76) + 8);
        if (v74 >= *(v137 + 44))
        {
          goto LABEL_116;
        }

        v138 = *(v137 + 32);
        if (!v138)
        {
          goto LABEL_136;
        }

        v139 = v138 + (v74 << 7);
        v142 = *(v139 + 8);
        v141 = v139 + 8;
        v140 = v142;
        if (!*(v141 + 24))
        {
          goto LABEL_117;
        }

        if (*(v141 + 16))
        {
          goto LABEL_138;
        }

        if (!v140)
        {
          goto LABEL_137;
        }

        v134 -= 12;
      }

      while (*v140 != &type metadata for Event.Transaction);
      v13 = v180;
      if (v10[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v8 = v178;
  if (v10[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v83 = *v10;
  if (v83 >= *(v73 + 116))
  {
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v84 = *(v73 + 104);
  if (!v84)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v85 = *(*(v84 + 8 * v83) + 8);
  v86 = *(v85 + 44);
  if (v74 >= v86)
  {
    goto LABEL_130;
  }

  v87 = *(v85 + 32);
  if (!v87)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
  }

  if (v13 >= v86)
  {
    goto LABEL_131;
  }

  v88 = (v87 + (v74 << 7));
  v13 = v87 + (v13 << 7);
  v7 = *v13;
  if (v88[31] == v88[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v89 = *(v88 + 14);
  if (!v89)
  {
    goto LABEL_165;
  }

  v90 = v88[31];
  v91 = v89 + 8 * v90;
  *v91 = -24064;
  *(v91 + 4) = v7;
  if (v90 == -1)
  {
    goto LABEL_132;
  }

  v88[31] = v90 + 1;
  v4 = *v88;
  if (*(v13 + 124) == *(v13 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v92 = *(v13 + 112);
  if (!v92)
  {
    goto LABEL_166;
  }

  v93 = *(v13 + 124);
  v94 = v92 + 8 * v93;
  *v94 = 25088;
  *(v94 + 4) = v4;
  if (v93 == -1)
  {
    goto LABEL_133;
  }

  *(v13 + 124) = v93 + 1;
LABEL_69:
  v95 = v9[1];
  v208[0] = *v9;
  v208[1] = v95;
  v209[0] = v9[2];
  *(v209 + 9) = *(v9 + 41);
  v96 = v9;
  v97 = v8;
  v98 = v11;
  v99 = v6;
  while (1)
  {
    v100 = *v99;
    if (*v98)
    {
      v22 = *v97;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v100)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v97 = (v100 + 16);
    v98 = (v100 + 28);
    v99 = (v100 + 48);
    v96 = v100;
  }

  v101 = *v96;
  if (!v101)
  {
    goto LABEL_170;
  }

  v102 = *(*(v101 + 24 * *v22) + 112);
  if (!v102)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v102 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v103 = *v10;
      if (v103 >= *(v73 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v104 = *(v73 + 104);
      if (v104)
      {
        v105 = *(*(v104 + 8 * v103) + 8);
        v106 = *(v105 + 44);
        if (!v106)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v107 = *(v105 + 32);
        if (v107)
        {
          v108 = v107 + (v106 << 7);
          v109 = *(v108 - 112);
          v185 = *(v108 - 128);
          v186 = v109;
          v110 = *(v108 - 48);
          v189 = *(v108 - 64);
          v190 = v110;
          v111 = *(v108 - 16);
          v191 = *(v108 - 32);
          v192 = v111;
          v112 = *(v108 - 80);
          v187 = *(v108 - 96);
          v188 = v112;
          LOBYTE(v205) = BYTE8(v186);
          v113 = 256;
          if (!BYTE9(v186))
          {
            v113 = 0;
          }

          v114 = v113 | (HIDWORD(v186) << 32);
          v115 = HeterogeneousBuffer.type(at:)(0, *(&v185 + 1), v186, v113 | BYTE8(v186), v187);
          v116 = swift_conformsToProtocol2();
          if (v116)
          {
            v117 = v116;
            LOBYTE(v205) = BYTE8(v186);
            v118 = HeterogeneousBuffer.index(after:)(0, *(&v185 + 1), v186, v114 | BYTE8(v186), v187);
            LOBYTE(v205) = BYTE8(v186);
            v119 = HeterogeneousBuffer.type(at:)(v118, *(&v185 + 1), v186, v114 | BYTE8(v186), v187);
            v120 = swift_conformsToProtocol2();
            if (v120)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v119, &v185, v115, v117, v120, &v181);
              v176 = v182;
              v177 = v181;
              v13 = v183;
              v121 = v9[1];
              v205 = *v9;
              v206 = v121;
              v207[0] = v9[2];
              *(v207 + 9) = *(v9 + 41);
              v122 = v178;
              while (1)
              {
                v123 = *v6;
                if (*v11)
                {
                  v22 = *v122;
                  if (((*v122)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v123)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
                }

                v122 = (v123 + 16);
                v11 = (v123 + 28);
                v6 = (v123 + 48);
                v9 = v123;
              }

              if (*v9)
              {
                v124 = *(*(*v9 + 24 * *v22) + 112);
                if (v124)
                {
                  v4 = *(v124 + 32);
                  v7 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v127 = *(v7 + 2);
                    v126 = *(v7 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v7);
                      *(v4 + 8) = v7;
                    }

                    *(v7 + 2) = v127 + 1;
                    v128 = &v7[48 * v127];
                    *(v128 + 8) = v180;
                    *(v128 + 40) = v177;
                    *(v128 + 56) = v176;
                    *(v128 + 18) = v13;
                    Interpreter.Iterator.relate(prior:)(v180);
                    return v180;
                  }

LABEL_125:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v4 + 8) = v7;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v143 = *(v10 + 11);
  v195 = *(v10 + 10);
  v196 = v143;
  v197 = v10[192];
  v144 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v144;
  v145 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v145;
  v146 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v146;
  v147 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v147;
  v148 = *(v10 + 1);
  v185 = *v10;
  v186 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v149 = swift_allocObject();
  v180 = xmmword_26C328DC0;
  *(v149 + 16) = xmmword_26C328DC0;
  v178 = xmmword_26C32DAD0;
  v205 = xmmword_26C32DAD0;
  LOBYTE(v206) = 1;
  *&v207[0] = 0;
  *(&v206 + 1) = 0;
  WORD4(v207[0]) = 512;
  v150 = Interpreter.Iterator.describe(state:)(&v205);
  v13 = MEMORY[0x277D837D0];
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 32) = v150;
  *(v149 + 40) = v151;
  print(_:separator:terminator:)();

  v152 = v9[1];
  v205 = *v9;
  v206 = v152;
  v207[0] = v9[2];
  *(v207 + 9) = *(v9 + 41);
  while (1)
  {
    v153 = *v6;
    if (*v11)
    {
      v22 = *v8;
      if (((*v8)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v153)
    {
      goto LABEL_167;
    }

    v8 = (v153 + 16);
    v11 = (v153 + 28);
    v6 = (v153 + 48);
    v9 = v153;
  }

LABEL_172:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v154 = *(*(v32 + 24 * *v22) + 112);
  if (!v154)
  {
    __break(1u);
  }

  v155 = *(v154 + 32);
  v156 = v155[1];
  v157 = v155[3];
  v158 = v155[4];
  v159 = swift_allocObject();
  *(v159 + 16) = v180;
  v185 = v178;
  LOBYTE(v186) = 1;
  *(&v186 + 1) = 0;
  *&v187 = 0;
  WORD4(v187) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v157, v158);
  v160 = specialized Interpreter.Control.Events.describe(state:)(&v185, v156);
  *(v159 + 56) = v13;
  *(v159 + 32) = v160;
  *(v159 + 40) = v161;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v157, v158);
  v162 = *(v179 + 11);
  v195 = *(v179 + 10);
  v196 = v162;
  v197 = v179[192];
  v163 = *(v179 + 7);
  v191 = *(v179 + 6);
  v192 = v163;
  v164 = *(v179 + 9);
  v193 = *(v179 + 8);
  v194 = v164;
  v165 = *(v179 + 3);
  v187 = *(v179 + 2);
  v188 = v165;
  v166 = *(v179 + 5);
  v189 = *(v179 + 4);
  v190 = v166;
  v167 = *(v179 + 1);
  v185 = *v179;
  v186 = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = v180;
  v181 = v178;
  LOBYTE(v182) = 1;
  *(&v182 + 1) = 0;
  v183 = 0;
  v184 = 512;
  v169 = Interpreter.Iterator.describe(state:)(&v181);
  *(v168 + 56) = v13;
  *(v168 + 32) = v169;
  *(v168 + 40) = v170;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, unsigned __int8 *a3, unsigned int **a4)
{
  if (v5[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v12 = *(v5 + 22);
  v13 = *v5;
  if (v13 >= *(v12 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v177 = *(v5 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_140;
  }

  v8 = a4;
  v10 = a3;
  *&v180 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v5 + 56;
  v15 = *(v5 + 72);
  v214[0] = *(v5 + 56);
  v214[1] = v15;
  v215[0] = *(v5 + 88);
  v11 = v5 + 84;
  v16 = v5 + 88;
  v6 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v17 = (v5 + 56);
  v18 = (v5 + 72);
  v19 = v5 + 84;
  v20 = (v5 + 104);
  *&v176 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_169;
  }

  *&v178 = v5 + 72;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
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
    goto LABEL_147;
  }

  v25 = *(v5 + 20);
  v172 = v5[168];
  v173 = **(v24 + 32);
  v171 = *(v5 + 43);
  v26 = *(v5 + 72);
  v212[0] = *v9;
  v212[1] = v26;
  v213[0] = *(v5 + 88);
  v27 = v5 + 100;
  v28 = *(v5 + 29);
  v22 = (v5 + 56);
  v29 = (v5 + 104);
  *(v213 + 9) = *(v5 + 97);
  v179 = v5;
  v174 = v13;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v212);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_174;
  }

  v13 = a3;
  v33 = a4;
  v34 = v32 + 24 * *v31;
  v4 = *(*v34 + 56);
  v35 = *(*v34 + 64);
  v10 = &v198;
  *(&v198 + 1) = 0;
  *&v199 = 0;
  WORD4(v199) = 257;
  LODWORD(v200) = 0;
  HIDWORD(v199) = 0;
  *(&v200 + 1) = 0;
  LOWORD(v201) = 0;
  *(&v201 + 1) = -1;
  v8 = &v198;
  *&v203[8] = xmmword_26C32E070;
  *&v203[24] = 0;
  *&v204 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v204 + 1) = v36;
  LODWORD(v198) = v180;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(v176, v13);
  DWORD1(v200) = v173;
  *(&v202 + 4) = v25;
  BYTE12(v202) = v172;
  *v203 = v171;
  LOBYTE(v202) = v33 & 1;
  if ((v35 & 1) == 0)
  {
    *&v203[8] = v4;
  }

  v7 = v177;
  if (v174 >= *(v177 + 116))
  {
    goto LABEL_119;
  }

  v37 = *(v177 + 104);
  if (!v37)
  {
    goto LABEL_142;
  }

  v4 = *(*(v37 + 8 * v174) + 8);
  v38 = *(v4 + 44);
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_143;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v203;
  v41[4] = v202;
  v41[5] = v42;
  v43 = v204;
  v41[6] = *&v203[16];
  v41[7] = v43;
  v44 = v199;
  *v41 = v198;
  v41[1] = v44;
  v45 = v201;
  v41[2] = v200;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_144;
  }

  v8 = *(v177 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v7 = *(v177 + 104);
  if (!v7)
  {
    goto LABEL_145;
  }

  v47 = *(*&v7[8 * v46] + 8);
  if (v180 >= *(v47 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_146;
  }

  v49 = v48 + (v180 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v185) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v58 | v4, v54);
  if (v59)
  {
    v10 = v179;
    v13 = v180;
  }

  else
  {
    LOBYTE(v185) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v179;
    v13 = v180;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v60 = *v10;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = *v59;
  v4 = *(*&v7[8 * v60] + 8);
  if (*(v4 + 60) == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v62 = *(v4 + 48);
  if (!v62)
  {
    goto LABEL_160;
  }

  v63 = *(v4 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v61;
  v64[1] = v13;
  if (v63 == -1)
  {
    goto LABEL_127;
  }

  *(v4 + 60) = v63 + 1;
  if (v10[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v65 = *v10;
  if (v65 >= *(v177 + 116))
  {
    goto LABEL_128;
  }

  v66 = *(v177 + 104);
  if (!v66)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v67;
  v195 = *(v10 + 10);
  v68 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v68;
  v69 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v69;
  v70 = *(v10 + 1);
  v185 = *v10;
  v186 = v70;
  v71 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v71;
  v197 = v10[192];
  v73 = *(v10 + 22);
  v72 = *(v10 + 23);
  *&v196 = v73;
  *(&v196 + 1) = v72;
  Interpreter.Iterator.updatingStack.getter();
  if (v75)
  {
    v76 = *v10;
    v13 = v10[48];
    v77 = v9[1];
    v210[0] = *v9;
    v210[1] = v77;
    v211[0] = v9[2];
    *(v211 + 9) = *(v9 + 41);
    v78 = v9;
    v8 = v178;
    v79 = v178;
    v80 = v11;
    v81 = v6;
    while (1)
    {
      v82 = *v81;
      if (*v80)
      {
        v22 = *v79;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v82)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
      }

      v79 = (v82 + 16);
      v80 = (v82 + 28);
      v81 = (v82 + 48);
      v78 = v82;
    }

    v32 = *v78;
    if (!v32)
    {
      goto LABEL_175;
    }

    v22 = *v22;
    v130 = *(*(v32 + 24 * v22) + 112);
    if (v130)
    {
      v131 = *(*(v130 + 32) + 8);
      v132 = *(v131 + 16);
      v133 = v132 + 1;
      v134 = (v131 + 48 * v132 - 16);
      do
      {
        if (v133-- <= 1)
        {
          goto LABEL_69;
        }

        if (v13)
        {
          goto LABEL_134;
        }

        if (*(v73 + 116) <= v76)
        {
          goto LABEL_115;
        }

        v136 = *(v73 + 104);
        if (!v136)
        {
          goto LABEL_135;
        }

        v74 = *v134;
        v137 = *(*(v136 + 8 * v76) + 8);
        if (v74 >= *(v137 + 44))
        {
          goto LABEL_116;
        }

        v138 = *(v137 + 32);
        if (!v138)
        {
          goto LABEL_136;
        }

        v139 = v138 + (v74 << 7);
        v142 = *(v139 + 8);
        v141 = v139 + 8;
        v140 = v142;
        if (!*(v141 + 24))
        {
          goto LABEL_117;
        }

        if (*(v141 + 16))
        {
          goto LABEL_138;
        }

        if (!v140)
        {
          goto LABEL_137;
        }

        v134 -= 12;
      }

      while (*v140 != &type metadata for Event.Transaction);
      v13 = v180;
      if (v10[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v8 = v178;
  if (v10[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v83 = *v10;
  if (v83 >= *(v73 + 116))
  {
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v84 = *(v73 + 104);
  if (!v84)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v85 = *(*(v84 + 8 * v83) + 8);
  v86 = *(v85 + 44);
  if (v74 >= v86)
  {
    goto LABEL_130;
  }

  v87 = *(v85 + 32);
  if (!v87)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
  }

  if (v13 >= v86)
  {
    goto LABEL_131;
  }

  v88 = (v87 + (v74 << 7));
  v13 = v87 + (v13 << 7);
  v7 = *v13;
  if (v88[31] == v88[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v89 = *(v88 + 14);
  if (!v89)
  {
    goto LABEL_165;
  }

  v90 = v88[31];
  v91 = v89 + 8 * v90;
  *v91 = -24064;
  *(v91 + 4) = v7;
  if (v90 == -1)
  {
    goto LABEL_132;
  }

  v88[31] = v90 + 1;
  v4 = *v88;
  if (*(v13 + 124) == *(v13 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v92 = *(v13 + 112);
  if (!v92)
  {
    goto LABEL_166;
  }

  v93 = *(v13 + 124);
  v94 = v92 + 8 * v93;
  *v94 = 25088;
  *(v94 + 4) = v4;
  if (v93 == -1)
  {
    goto LABEL_133;
  }

  *(v13 + 124) = v93 + 1;
LABEL_69:
  v95 = v9[1];
  v208[0] = *v9;
  v208[1] = v95;
  v209[0] = v9[2];
  *(v209 + 9) = *(v9 + 41);
  v96 = v9;
  v97 = v8;
  v98 = v11;
  v99 = v6;
  while (1)
  {
    v100 = *v99;
    if (*v98)
    {
      v22 = *v97;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v100)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v97 = (v100 + 16);
    v98 = (v100 + 28);
    v99 = (v100 + 48);
    v96 = v100;
  }

  v101 = *v96;
  if (!v101)
  {
    goto LABEL_170;
  }

  v102 = *(*(v101 + 24 * *v22) + 112);
  if (!v102)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v102 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v103 = *v10;
      if (v103 >= *(v73 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v104 = *(v73 + 104);
      if (v104)
      {
        v105 = *(*(v104 + 8 * v103) + 8);
        v106 = *(v105 + 44);
        if (!v106)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v107 = *(v105 + 32);
        if (v107)
        {
          v108 = v107 + (v106 << 7);
          v109 = *(v108 - 112);
          v185 = *(v108 - 128);
          v186 = v109;
          v110 = *(v108 - 48);
          v189 = *(v108 - 64);
          v190 = v110;
          v111 = *(v108 - 16);
          v191 = *(v108 - 32);
          v192 = v111;
          v112 = *(v108 - 80);
          v187 = *(v108 - 96);
          v188 = v112;
          LOBYTE(v205) = BYTE8(v186);
          v113 = 256;
          if (!BYTE9(v186))
          {
            v113 = 0;
          }

          v114 = v113 | (HIDWORD(v186) << 32);
          v115 = HeterogeneousBuffer.type(at:)(0, *(&v185 + 1), v186, v113 | BYTE8(v186), v187);
          v116 = swift_conformsToProtocol2();
          if (v116)
          {
            v117 = v116;
            LOBYTE(v205) = BYTE8(v186);
            v118 = HeterogeneousBuffer.index(after:)(0, *(&v185 + 1), v186, v114 | BYTE8(v186), v187);
            LOBYTE(v205) = BYTE8(v186);
            v119 = HeterogeneousBuffer.type(at:)(v118, *(&v185 + 1), v186, v114 | BYTE8(v186), v187);
            v120 = swift_conformsToProtocol2();
            if (v120)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v119, &v185, v115, v117, v120, &v181);
              v176 = v182;
              v177 = v181;
              v13 = v183;
              v121 = v9[1];
              v205 = *v9;
              v206 = v121;
              v207[0] = v9[2];
              *(v207 + 9) = *(v9 + 41);
              v122 = v178;
              while (1)
              {
                v123 = *v6;
                if (*v11)
                {
                  v22 = *v122;
                  if (((*v122)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v123)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
                }

                v122 = (v123 + 16);
                v11 = (v123 + 28);
                v6 = (v123 + 48);
                v9 = v123;
              }

              if (*v9)
              {
                v124 = *(*(*v9 + 24 * *v22) + 112);
                if (v124)
                {
                  v4 = *(v124 + 32);
                  v7 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v127 = *(v7 + 2);
                    v126 = *(v7 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v7);
                      *(v4 + 8) = v7;
                    }

                    *(v7 + 2) = v127 + 1;
                    v128 = &v7[48 * v127];
                    *(v128 + 8) = v180;
                    *(v128 + 40) = v177;
                    *(v128 + 56) = v176;
                    *(v128 + 18) = v13;
                    Interpreter.Iterator.relate(prior:)(v180);
                    return v180;
                  }

LABEL_125:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v4 + 8) = v7;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v143 = *(v10 + 11);
  v195 = *(v10 + 10);
  v196 = v143;
  v197 = v10[192];
  v144 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v144;
  v145 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v145;
  v146 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v146;
  v147 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v147;
  v148 = *(v10 + 1);
  v185 = *v10;
  v186 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v149 = swift_allocObject();
  v180 = xmmword_26C328DC0;
  *(v149 + 16) = xmmword_26C328DC0;
  v178 = xmmword_26C32DAD0;
  v205 = xmmword_26C32DAD0;
  LOBYTE(v206) = 1;
  *&v207[0] = 0;
  *(&v206 + 1) = 0;
  WORD4(v207[0]) = 512;
  v150 = Interpreter.Iterator.describe(state:)(&v205);
  v13 = MEMORY[0x277D837D0];
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 32) = v150;
  *(v149 + 40) = v151;
  print(_:separator:terminator:)();

  v152 = v9[1];
  v205 = *v9;
  v206 = v152;
  v207[0] = v9[2];
  *(v207 + 9) = *(v9 + 41);
  while (1)
  {
    v153 = *v6;
    if (*v11)
    {
      v22 = *v8;
      if (((*v8)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v153)
    {
      goto LABEL_167;
    }

    v8 = (v153 + 16);
    v11 = (v153 + 28);
    v6 = (v153 + 48);
    v9 = v153;
  }

LABEL_172:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v154 = *(*(v32 + 24 * *v22) + 112);
  if (!v154)
  {
    __break(1u);
  }

  v155 = *(v154 + 32);
  v156 = v155[1];
  v157 = v155[3];
  v158 = v155[4];
  v159 = swift_allocObject();
  *(v159 + 16) = v180;
  v185 = v178;
  LOBYTE(v186) = 1;
  *(&v186 + 1) = 0;
  *&v187 = 0;
  WORD4(v187) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v157, v158);
  v160 = specialized Interpreter.Control.Events.describe(state:)(&v185, v156);
  *(v159 + 56) = v13;
  *(v159 + 32) = v160;
  *(v159 + 40) = v161;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v157, v158);
  v162 = *(v179 + 11);
  v195 = *(v179 + 10);
  v196 = v162;
  v197 = v179[192];
  v163 = *(v179 + 7);
  v191 = *(v179 + 6);
  v192 = v163;
  v164 = *(v179 + 9);
  v193 = *(v179 + 8);
  v194 = v164;
  v165 = *(v179 + 3);
  v187 = *(v179 + 2);
  v188 = v165;
  v166 = *(v179 + 5);
  v189 = *(v179 + 4);
  v190 = v166;
  v167 = *(v179 + 1);
  v185 = *v179;
  v186 = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = v180;
  v181 = v178;
  LOBYTE(v182) = 1;
  *(&v182 + 1) = 0;
  v183 = 0;
  v184 = 512;
  v169 = Interpreter.Iterator.describe(state:)(&v181);
  *(v168 + 56) = v13;
  *(v168 + 32) = v169;
  *(v168 + 40) = v170;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (v6[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v7 = v6;
  v8 = *(v6 + 22);
  v9 = *v6;
  if (v9 >= *(v8 + 116))
  {
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
    goto LABEL_97;
  }

  v10 = *(v8 + 104);
  if (!v10)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v11 = *(*(*(v10 + 8 * v9) + 8) + 44);
  v12 = v6 + 56;
  v13 = *(v6 + 72);
  v129[0] = *(v6 + 56);
  v129[1] = v13;
  v130[0] = *(v6 + 88);
  v14 = v6 + 84;
  v15 = v6 + 88;
  v16 = (v7 + 104);
  *(v130 + 9) = *(v7 + 97);
  v17 = (v7 + 56);
  v18 = (v7 + 72);
  v19 = v7 + 84;
  v20 = (v7 + 104);
  v109 = result;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v129);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_123;
  }

  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
    goto LABEL_107;
  }

  v25 = *(v7 + 20);
  v106 = v7[168];
  v107 = **(v24 + 32);
  v105 = *(v7 + 43);
  v26 = *(v7 + 72);
  v127[0] = *v12;
  v127[1] = v26;
  v128[0] = *(v7 + 88);
  v27 = v7 + 100;
  v28 = *(v7 + 29);
  v29 = v7 + 56;
  v30 = (v7 + 104);
  *(v128 + 9) = *(v7 + 97);
  v117 = v8;
  v108 = v9;
  while (1)
  {
    v31 = *v30;
    if (v28 < *v27)
    {
      v32 = (*v15 + 8 * v28);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v127);
    }

    v15 = (v31 + 32);
    v27 = (v31 + 44);
    v30 = (v31 + 48);
    v29 = v31;
  }

  if (!*v29)
  {
    goto LABEL_124;
  }

  v33 = v11;
  v34 = *v29 + 24 * *v32;
  v35 = *(*v34 + 56);
  v36 = *(*v34 + 64);
  *(&v118 + 1) = 0;
  *&v119 = 0;
  WORD4(v119) = 257;
  LODWORD(v120) = 0;
  HIDWORD(v119) = 0;
  *(&v120 + 1) = 0;
  LOWORD(v121) = 0;
  *(&v121 + 1) = -1;
  *&v123[8] = xmmword_26C32E070;
  *&v123[24] = 0;
  *&v124 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v124 + 1) = v37;
  LODWORD(v118) = v11;
  specialized HeterogeneousBuffer.insert<A>(_:)(v109, a2, a3, a4);
  specialized HeterogeneousBuffer.insert<A>(_:)(a5);
  DWORD1(v120) = v107;
  *(&v122 + 4) = v25;
  BYTE12(v122) = v106;
  *v123 = v105;
  if ((v36 & 1) == 0)
  {
    *&v123[8] = v35;
  }

  if (v108 >= *(v8 + 116))
  {
    goto LABEL_88;
  }

  v38 = *(v8 + 104);
  if (!v38)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v39 = *(*(v38 + 8 * v108) + 8);
  v40 = *(v39 + 44);
  if (v40 == *(v39 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v40);
  }

  v41 = *(v39 + 32);
  if (!v41)
  {
    goto LABEL_109;
  }

  v42 = *(v39 + 44);
  v43 = (v41 + (v42 << 7));
  LOBYTE(v122) = a6 & 1;
  v43[4] = v122;
  v43[5] = *v123;
  v43[6] = *&v123[16];
  v43[7] = v124;
  *v43 = v118;
  v43[1] = v119;
  v43[2] = v120;
  v43[3] = v121;
  if (v42 == -1)
  {
    goto LABEL_89;
  }

  *(v39 + 44) = v42 + 1;
  if (v7[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v44 = *v7;
  if (v44 >= *(v8 + 116))
  {
    goto LABEL_90;
  }

  v45 = *(v8 + 104);
  if (!v45)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v46 = *(*(v45 + 8 * v44) + 8);
  if (v33 >= *(v46 + 44))
  {
    goto LABEL_91;
  }

  v114 = *(v8 + 116);
  v47 = *(v46 + 32);
  if (!v47)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v116 = v33;
  v48 = v47 + (v33 << 7);
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v51 = *(v48 + 24);
  v52 = *(v48 + 25);
  v55 = v48 + 28;
  v53 = *(v48 + 28);
  v54 = *(v55 + 4);
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v49, v50, v58 | v51, v54);
  if (v59)
  {
    v60 = v116;
  }

  else
  {
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v49, v50, v58 | v51, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v60 = v116;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v7[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v61 = *v7;
  if (v61 >= v114)
  {
    goto LABEL_92;
  }

  v62 = *v59;
  v63 = *(*(v45 + 8 * v61) + 8);
  if (*(v63 + 60) == *(v63 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v64 = *(v63 + 48);
  if (!v64)
  {
    goto LABEL_114;
  }

  v65 = *(v63 + 60);
  v66 = (v64 + 8 * v65);
  *v66 = v62;
  v66[1] = v60;
  if (v65 == -1)
  {
    goto LABEL_93;
  }

  *(v63 + 60) = v65 + 1;
  if (v7[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v67 = *v7;
  if (v67 >= *(v117 + 116))
  {
    goto LABEL_94;
  }

  v68 = *(v117 + 104);
  if (!v68)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v68 + 8 * v67) + 8) + 64) = 0;
LABEL_48:
  v69 = *(v7 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v71)
  {
    v72 = *v7;
    v73 = v7[48];
    v74 = *(v7 + 72);
    v125[0] = *v12;
    v125[1] = v74;
    v126[0] = *(v7 + 88);
    *(v126 + 9) = *(v7 + 97);
    v75 = (v7 + 72);
    while (1)
    {
      v76 = *v16;
      if (*v14)
      {
        if (((*v75)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v76)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v125);
      }

      v75 = (v76 + 16);
      v14 = (v76 + 28);
      v16 = (v76 + 48);
      v12 = v76;
    }

    if (!*v12)
    {
      goto LABEL_125;
    }

    v77 = *(*(*v12 + 24 * **v75) + 112);
    if (v77)
    {
      v78 = *(*(v77 + 32) + 8);
      v79 = *(v78 + 16);
      v80 = v79 + 1;
      v81 = (v78 + 48 * v79 - 16);
      while (v80-- > 1)
      {
        if (v73)
        {
          goto LABEL_100;
        }

        if (*(v69 + 116) <= v72)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v83 = *(v69 + 104);
        if (!v83)
        {
          goto LABEL_101;
        }

        v70 = *v81;
        v84 = *(*(v83 + 8 * v72) + 8);
        if (v70 >= *(v84 + 44))
        {
          goto LABEL_85;
        }

        v85 = *(v84 + 32);
        if (!v85)
        {
          goto LABEL_102;
        }

        v86 = v85 + (v70 << 7);
        v89 = *(v86 + 8);
        v88 = v86 + 8;
        v87 = v89;
        if (!*(v88 + 24))
        {
          goto LABEL_86;
        }

        if (*(v88 + 16))
        {
          goto LABEL_104;
        }

        if (!v87)
        {
          goto LABEL_103;
        }

        v81 -= 12;
        if (*v87 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v7[48])
  {
    goto LABEL_117;
  }

  v90 = *v7;
  if (v90 >= *(v69 + 116))
  {
    goto LABEL_95;
  }

  v91 = *(v69 + 104);
  if (!v91)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v92 = *(*(v91 + 8 * v90) + 8);
  v93 = *(v92 + 44);
  if (v70 >= v93)
  {
    goto LABEL_96;
  }

  v94 = *(v92 + 32);
  if (v94)
  {
    if (v60 < v93)
    {
      v95 = (v94 + (v70 << 7));
      v96 = (v94 + (v60 << 7));
      v97 = *v96;
      if (v95[31] == v95[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v98 = *(v95 + 14);
      if (!v98)
      {
        goto LABEL_120;
      }

      v99 = v95[31];
      v100 = v98 + 8 * v99;
      *v100 = -24064;
      *(v100 + 4) = v97;
      if (v99 != -1)
      {
        v95[31] = v99 + 1;
        v101 = *v95;
        if (v96[31] == v96[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v102 = *(v96 + 14);
        if (!v102)
        {
          goto LABEL_121;
        }

        v103 = v96[31];
        v104 = v102 + 8 * v103;
        *v104 = 25088;
        *(v104 + 4) = v101;
        if (v103 != -1)
        {
          v96[31] = v103 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v60);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
  __break(1u);
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t result, char a2)
{
  if (v2[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v3 = v2;
  v4 = *(v2 + 22);
  v5 = *v2;
  if (v5 >= *(v4 + 116))
  {
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
    goto LABEL_97;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v7 = *(*(*(v6 + 8 * v5) + 8) + 44);
  v8 = v2 + 56;
  v9 = *(v2 + 72);
  v121[0] = *(v2 + 56);
  v121[1] = v9;
  v122[0] = *(v2 + 88);
  v10 = v2 + 84;
  v11 = v2 + 88;
  v12 = (v3 + 104);
  *(v122 + 9) = *(v3 + 97);
  v13 = (v3 + 56);
  v14 = (v3 + 72);
  v15 = v3 + 84;
  v16 = (v3 + 104);
  while (1)
  {
    v17 = *v16;
    if (*v15)
    {
      v18 = *v14;
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v121);
    }

    v14 = (v17 + 16);
    v15 = (v17 + 28);
    v16 = (v17 + 48);
    v13 = v17;
  }

  v19 = *v13;
  if (!v19)
  {
    goto LABEL_123;
  }

  v20 = *(*(v19 + 24 * *v18) + 112);
  if (!v20)
  {
    goto LABEL_107;
  }

  v21 = *(v3 + 20);
  v102 = v3[168];
  v103 = **(v20 + 32);
  v101 = *(v3 + 43);
  v22 = *(v3 + 72);
  v119[0] = *v8;
  v119[1] = v22;
  v120[0] = *(v3 + 88);
  v23 = v3 + 100;
  v24 = *(v3 + 29);
  v25 = v3 + 56;
  v26 = (v3 + 104);
  *(v120 + 9) = *(v3 + 97);
  v109 = v4;
  v104 = v5;
  while (1)
  {
    v27 = *v26;
    if (v24 < *v23)
    {
      v28 = (*v11 + 8 * v24);
      if ((v28[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v24, 0, v119);
    }

    v11 = (v27 + 32);
    v23 = (v27 + 44);
    v26 = (v27 + 48);
    v25 = v27;
  }

  if (!*v25)
  {
    goto LABEL_124;
  }

  v29 = v7;
  v30 = *v25 + 24 * *v28;
  v31 = *(*v30 + 56);
  v32 = *(*v30 + 64);
  *(&v110 + 1) = 0;
  *&v111 = 0;
  WORD4(v111) = 257;
  LODWORD(v112) = 0;
  HIDWORD(v111) = 0;
  *(&v112 + 1) = 0;
  LOWORD(v113) = 0;
  *(&v113 + 1) = -1;
  *&v115[8] = xmmword_26C32E070;
  *&v115[24] = 0;
  *&v116 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v116 + 1) = v33;
  LODWORD(v110) = v7;
  specialized HeterogeneousBuffer.insert<A>(_:)();
  specialized HeterogeneousBuffer.insert<A>(_:)(result);
  DWORD1(v112) = v103;
  *(&v114 + 4) = v21;
  BYTE12(v114) = v102;
  *v115 = v101;
  if ((v32 & 1) == 0)
  {
    *&v115[8] = v31;
  }

  if (v104 >= *(v4 + 116))
  {
    goto LABEL_88;
  }

  v34 = *(v4 + 104);
  if (!v34)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v35 = *(*(v34 + 8 * v104) + 8);
  v36 = *(v35 + 44);
  if (v36 == *(v35 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v36);
  }

  v37 = *(v35 + 32);
  if (!v37)
  {
    goto LABEL_109;
  }

  v38 = *(v35 + 44);
  v39 = (v37 + (v38 << 7));
  LOBYTE(v114) = a2 & 1;
  v39[4] = v114;
  v39[5] = *v115;
  v39[6] = *&v115[16];
  v39[7] = v116;
  *v39 = v110;
  v39[1] = v111;
  v39[2] = v112;
  v39[3] = v113;
  if (v38 == -1)
  {
    goto LABEL_89;
  }

  *(v35 + 44) = v38 + 1;
  if (v3[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v40 = *v3;
  if (v40 >= *(v4 + 116))
  {
    goto LABEL_90;
  }

  v41 = *(v4 + 104);
  if (!v41)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  if (v29 >= *(v42 + 44))
  {
    goto LABEL_91;
  }

  v106 = *(v4 + 116);
  v43 = *(v42 + 32);
  if (!v43)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v108 = v29;
  v44 = v43 + (v29 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v49 = *(v44 + 28);
  v50 = *(v51 + 4);
  v52 = v48 == 0;
  v53 = 256;
  if (v52)
  {
    v53 = 0;
  }

  v54 = v53 | (v49 << 32);
  v55 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v45, v46, v54 | v47, v50);
  if (v55)
  {
    v56 = v108;
  }

  else
  {
    v55 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v45, v46, v54 | v47, v50, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v56 = v108;
    if (!v55)
    {
      goto LABEL_48;
    }
  }

  if (v3[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v57 = *v3;
  if (v57 >= v106)
  {
    goto LABEL_92;
  }

  v58 = *v55;
  v59 = *(*(v41 + 8 * v57) + 8);
  if (*(v59 + 60) == *(v59 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v60 = *(v59 + 48);
  if (!v60)
  {
    goto LABEL_114;
  }

  v61 = *(v59 + 60);
  v62 = (v60 + 8 * v61);
  *v62 = v58;
  v62[1] = v56;
  if (v61 == -1)
  {
    goto LABEL_93;
  }

  *(v59 + 60) = v61 + 1;
  if (v3[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v63 = *v3;
  if (v63 >= *(v109 + 116))
  {
    goto LABEL_94;
  }

  v64 = *(v109 + 104);
  if (!v64)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v64 + 8 * v63) + 8) + 64) = 0;
LABEL_48:
  v65 = *(v3 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v67)
  {
    v68 = *v3;
    v69 = v3[48];
    v70 = *(v3 + 72);
    v117[0] = *v8;
    v117[1] = v70;
    v118[0] = *(v3 + 88);
    *(v118 + 9) = *(v3 + 97);
    v71 = (v3 + 72);
    while (1)
    {
      v72 = *v12;
      if (*v10)
      {
        if (((*v71)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v72)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v117);
      }

      v71 = (v72 + 16);
      v10 = (v72 + 28);
      v12 = (v72 + 48);
      v8 = v72;
    }

    if (!*v8)
    {
      goto LABEL_125;
    }

    v73 = *(*(*v8 + 24 * **v71) + 112);
    if (v73)
    {
      v74 = *(*(v73 + 32) + 8);
      v75 = *(v74 + 16);
      v76 = v75 + 1;
      v77 = (v74 + 48 * v75 - 16);
      while (v76-- > 1)
      {
        if (v69)
        {
          goto LABEL_100;
        }

        if (*(v65 + 116) <= v68)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v79 = *(v65 + 104);
        if (!v79)
        {
          goto LABEL_101;
        }

        v66 = *v77;
        v80 = *(*(v79 + 8 * v68) + 8);
        if (v66 >= *(v80 + 44))
        {
          goto LABEL_85;
        }

        v81 = *(v80 + 32);
        if (!v81)
        {
          goto LABEL_102;
        }

        v82 = v81 + (v66 << 7);
        v85 = *(v82 + 8);
        v84 = v82 + 8;
        v83 = v85;
        if (!*(v84 + 24))
        {
          goto LABEL_86;
        }

        if (*(v84 + 16))
        {
          goto LABEL_104;
        }

        if (!v83)
        {
          goto LABEL_103;
        }

        v77 -= 12;
        if (*v83 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v3[48])
  {
    goto LABEL_117;
  }

  v86 = *v3;
  if (v86 >= *(v65 + 116))
  {
    goto LABEL_95;
  }

  v87 = *(v65 + 104);
  if (!v87)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v88 = *(*(v87 + 8 * v86) + 8);
  v89 = *(v88 + 44);
  if (v66 >= v89)
  {
    goto LABEL_96;
  }

  v90 = *(v88 + 32);
  if (v90)
  {
    if (v56 < v89)
    {
      v91 = (v90 + (v66 << 7));
      v92 = (v90 + (v56 << 7));
      v93 = *v92;
      if (v91[31] == v91[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v94 = *(v91 + 14);
      if (!v94)
      {
        goto LABEL_120;
      }

      v95 = v91[31];
      v96 = v94 + 8 * v95;
      *v96 = -24064;
      *(v96 + 4) = v93;
      if (v95 != -1)
      {
        v91[31] = v95 + 1;
        v97 = *v91;
        if (v92[31] == v92[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v98 = *(v92 + 14);
        if (!v98)
        {
          goto LABEL_121;
        }

        v99 = v92[31];
        v100 = v98 + 8 * v99;
        *v100 = 25088;
        *(v100 + 4) = v97;
        if (v99 != -1)
        {
          v92[31] = v99 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v56);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
  __break(1u);
}

uint64_t static Tri.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v10 = type metadata accessor for Tri(0, v9, v8, v8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v28 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v28 - v16;
  v31 = v11;
  v32 = v15;
  v18 = *(v15 + 48);
  v19 = *(v11 + 16);
  v19(&v28 - v16, a1, v10);
  v19(&v17[v18], a2, v10);
  v20 = *(v6 + 48);
  v21 = v20(v17, 2, a3);
  if (!v21)
  {
    v28 = v6;
    v19(v33, v17, v10);
    if (!v20(&v17[v18], 2, a3))
    {
      v24 = v28;
      v25 = v29;
      (*(v28 + 32))(v29, &v17[v18], a3);
      v26 = v33;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v24 + 8);
      v27(v25, a3);
      v27(v26, a3);
      v14 = v31;
      goto LABEL_10;
    }

    (*(v28 + 8))(v33, a3);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if (v20(&v17[v18], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v20(&v17[v18], 2, a3) != 2)
  {
LABEL_9:
    v22 = 0;
    v10 = v32;
    goto LABEL_10;
  }

  v22 = 1;
  v14 = v31;
LABEL_10:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t Tri.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  v12 = (*(v4 + 48))(v9, 2, v3);
  if (v12)
  {
    return MEMORY[0x26D69DBC0](v12 != 1);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x26D69DBC0](2);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int Tri.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  Tri.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Tri<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Tri.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void PType.Parameter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIDWORD(a4));
}

Swift::Int PType.Parameter.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIDWORD(a3));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Parameter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PType.Parameter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Parameter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PType.Kind@<X0>(Swift::UInt32 *a1@<X0>, SwiftUITracingSupport::PType::Kind_optional *a2@<X8>)
{
  result = specialized PType.Kind.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Kind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PType.Flags@<X0>(_DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
  return result;
}

void PType.IsA.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 32);
  if (v5 <= 1)
  {
    if (*(v2 + 32))
    {
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      MEMORY[0x26D69DBC0](1);
      String.hash(into:)();
      MEMORY[0x26D69DBC0](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 32);
        do
        {
          v13 = *v12++;
          Hasher._combine(_:)(v13);
          --v11;
        }

        while (v11);
      }

      MEMORY[0x26D69DBC0](*(v9 + 16));
      v14 = *(v9 + 16);
      if (v14)
      {
        v15 = (v9 + 32);
        do
        {
          v16 = *v15++;
          Hasher._combine(_:)(v16);
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      MEMORY[0x26D69DBC0](0);
      MEMORY[0x26D69DBC0](v4 & 1);
    }
  }

  else if (v5 == 2)
  {
    MEMORY[0x26D69DBC0](2);

    specialized Array<A>.hash(into:)(a1, v4);
  }

  else if (v5 == 3)
  {
    MEMORY[0x26D69DBC0](3);
    MEMORY[0x26D69DBC0](*(v4 + 16));
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = (v4 + 32);
      do
      {
        v8 = *v7++;
        Hasher._combine(_:)(v8);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    MEMORY[0x26D69DBC0](4);
    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(HIDWORD(v4));
  }
}

Swift::Int PType.IsA.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.IsA()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.IsA(uint64_t a1)
{
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t PType.Field.name.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

BOOL static PType.Field.== infix(_:_:)(int a1, unint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1 == -1 && a5 == -1)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  result = 0;
  if (a1 == a5 && !((a6 ^ a2) >> 32) && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

void PType.Field.hash(into:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  v8 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
  }

  Hasher._combine(_:)(HIDWORD(a3));
  MEMORY[0x26D69DBC0](a4);
  Hasher._combine(_:)(a5);
}

Swift::Int PType.Field.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIDWORD(a1));
  }

  Hasher._combine(_:)(HIDWORD(a2));
  MEMORY[0x26D69DBC0](a3);
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PType.Field(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*a1 != -1 || v3 != -1)
  {
    if (*a1 != v3)
    {
      return 0;
    }

    if (*(a1 + 12) != a2[3] || v2 != v4)
    {
      return 0;
    }

    return *(a1 + 24) == a2[6];
  }

  if (v2 == v4)
  {
    return *(a1 + 24) == a2[6];
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Field()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  MEMORY[0x26D69DBC0](v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PType.Field()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Field(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v5);
  MEMORY[0x26D69DBC0](v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t PType.Metadata.ntdPointer.getter()
{
  result = *v0;
  if (!*v0)
  {
    __break(1u);
  }

  return result;
}

uint64_t PType.Metadata.fields.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

void *one-time initialization function for none()
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5PTypeV5FieldV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&static PType.Metadata.none = -1;
  *(&static PType.Metadata.none + 1) = result;
  qword_280481CC8 = v1;
  qword_280481CD0 = 0x7FFFFFFFFFFFFFFFLL;
  dword_280481CD8 = 0;
  byte_280481CDC = 9;
  return result;
}

double static PType.Metadata.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_280481CD0;
  v2 = dword_280481CD8;
  v3 = byte_280481CDC;
  *a1 = static PType.Metadata.none;
  result = *&qword_280481CC8;
  *(a1 + 16) = qword_280481CC8;
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 36) = v3;
  return result;
}

Swift::Void __swiftcall PType.Metadata.deallocate()()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 8) = 0;
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance PType.Metadata()
{
  result = *(v0 + 8);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 8) = 0;
  }

  return result;
}

uint64_t PType.forEachField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v27 = a2;
  v28 = a4;
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IterativePair(0, v15, MEMORY[0x277D83B88], v14);
  v17 = *(v16 - 8);
  result = MEMORY[0x28223BE20](v16);
  v20 = (&v27 - v19);
  v21 = a1[5];
  v39[4] = a1[4];
  v39[5] = v21;
  v39[6] = a1[6];
  v22 = a1[1];
  v39[0] = *a1;
  v39[1] = v22;
  v23 = a1[3];
  v39[2] = a1[2];
  v39[3] = v23;
  v24 = *(v7 + 112);
  v25 = *(v7 + 116);
  v32[2] = a7;
  v32[3] = a3;
  v32[4] = v28;
  v32[5] = v39;
  v31[2] = a7;
  v31[3] = v29;
  v31[4] = v30;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v34 = 0;
    v35 = 1;
    v36 = -1;
    v37 = 0;
    v38 = v24;
    (*(v11 + 16))(v13, v27, a7);
    v33 = 0;
    IterativePair.init(first:second:)(v13, &v33, a7, MEMORY[0x277D83B88], v20);
    *&v26 = &type metadata for PType.Field;
    *(&v26 + 1) = v16;
    static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for closure #1 in PType.forEachField<A>(within:userData:_:revisitor:), v32, partial apply for closure #2 in PType.forEachField<A>(within:userData:_:revisitor:), v31, &v34, v20, 0, 0, 0, v26);
    return (*(v17 + 8))(v20, v16);
  }

  return result;
}

uint64_t specialized closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, unint64_t), uint64_t a8, uint64_t a9)
{
  v9 = *a5 + a3;
  if (__OFADD__(*a5, a3))
  {
    goto LABEL_24;
  }

  v12 = a6[8];
  result = a7(result, a2 & 0xFFFFFFFF00000001);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = *(a9 + 32);
  if (*(v13 + 16) <= a4)
  {
    goto LABEL_25;
  }

  v14 = *(v13 + 4 * a4 + 32);
  if (v14 >= *(a9 + 12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*a9)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  result = specialized Sequence.reversed()(*(*a9 + 120 * v14 + 72), *(*a9 + 120 * v14 + 80));
  v15 = *(result + 16);
  if (!v15)
  {
  }

  v31 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = a6;
  v16 = a6[10];
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *a6;
  v19 = (result + 56);
  v30 = v9;
  while (1)
  {
    v20 = *(v19 - 3);
    v21 = *(v19 - 3);
    v22 = *(v19 - 1);
    v23 = *v19;
    v24 = *(v19 - 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    if (v26 >= v25 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = v26 + 1;
    v27 = v18 + 48 * v26;
    *(v27 + 32) = v20;
    *(v27 + 40) = v24;
    *(v27 + 41) = v32;
    *(v27 + 43) = v33;
    *(v27 + 44) = v21;
    *(v27 + 48) = v22;
    *(v27 + 56) = v23;
    *(v27 + 64) = v30;
    *(v27 + 72) = v31;
    if (!--v15)
    {
      break;
    }

    v19 += 8;
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_23;
    }
  }

  *v29 = v18;
  v29[10] = v17;
  return result;
}

uint64_t closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a6;
  v61 = a5;
  v62 = a4;
  v63 = a3;
  v64 = a2;
  v9 = type metadata accessor for IterativePair(255, a7, MEMORY[0x277D83B88], a4);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v13 = &v55 - v12;
  v58 = *(v9 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v68 = &v55 - v15;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = *a1;
  v59 = v16;
  v60 = v21;
  v22 = *(a1 + 8);
  v23 = *(a1 + 3);
  v24 = a1[2];
  v25 = *(a1 + 6);
  v65 = a7;
  v66 = v25;
  v26 = v64;
  v55 = *(v16 + 16);
  result = v55(&v55 - v19, v64, a7);
  v67 = v9;
  v28 = *(v26 + *(v9 + 36));
  if (__OFADD__(v28, v24))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v63;
  v30 = *(v63 + 64);
  v70 = v22;
  v31 = v24;
  v32 = v28 + v24;
  result = v62(v60, v22 | (v23 << 32), v31, v66);
  if ((result & 1) == 0)
  {
    return (*(v59 + 8))(v20, v65);
  }

  v33 = *(v57 + 32);
  v34 = v65;
  if (*(v33 + 16) <= v66)
  {
    goto LABEL_17;
  }

  v35 = *(v33 + 4 * v66 + 32);
  if (v35 >= *(v57 + 12))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v66 = v30;
  if (!*v57)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v36 = v29;
  v37 = *v57 + 120 * v35;
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v40 = v56;
  v55(v56, v20, v65);
  v69 = v32;
  v41 = v68;
  IterativePair.init(first:second:)(v40, &v69, v34, MEMORY[0x277D83B88], v68);
  result = specialized Sequence.reversed()(v38, v39);
  v42 = result;
  v43 = *(result + 16);
  if (v43)
  {
    v44 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v66 = v20;
    v45 = 0;
    v46 = v36;
    v47 = *(v36 + 80);
    v48 = (v58 + 16);
    while (v47 != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++v47;
      v49 = *(v42 + v45 + 56);
      v50 = *(v42 + v45 + 48);
      v51 = *(v42 + v45 + 44);
      v52 = *(v42 + v45 + 40);
      v53 = *(TupleTypeMetadata3 + 48);
      v54 = *(TupleTypeMetadata3 + 64);
      *v13 = *(v42 + v45 + 32);
      v13[8] = v52;
      *(v13 + 3) = v51;
      *(v13 + 2) = v50;
      *(v13 + 6) = v49;
      (*v48)(&v13[v53], v68, v67);
      *&v13[v54] = v44;
      type metadata accessor for Array();
      result = Array.append(_:)();
      v45 += 32;
      if (!--v43)
      {

        (*(v58 + 8))(v68, v67);
        result = (*(v59 + 8))(v66, v65);
        *(v46 + 80) = v47;
        return result;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  (*(v58 + 8))(v41, v67);
  return (*(v59 + 8))(v20, v34);
}

__n128 PType.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 100);
  result = *(v1 + 64);
  v5 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 36) = v3;
  *(a1 + 32) = v2;
  return result;
}

uint64_t closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v9 = *(result + 24);
    v10 = *(result + 16);
    v11 = *(result + 8);
    v12 = *result;
    v13 = *(result + 12);
    v14 = type metadata accessor for IterativePair(0, a6, MEMORY[0x277D83B88], a4);
    return a4(v12, v11 | (v13 << 32), v10, v9, *(a2 + *(v14 + 36)), *(a3 + 64), a2);
  }

  return result;
}

uint64_t PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[5];
  v19[4] = a1[4];
  v19[5] = v12;
  v19[6] = a1[6];
  v13 = a1[1];
  v19[0] = *a1;
  v19[1] = v13;
  v14 = a1[3];
  v19[2] = a1[2];
  v19[3] = v14;
  v17[2] = a7;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = &v18;
  v17[6] = v19;
  v18 = 0;
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a5;
  v15[4] = a6;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5, a6);
  PType.forEachField<A>(within:userData:_:revisitor:)(a1, a2, partial apply for closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:), v17, partial apply for closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:), v15, a7);
}

uint64_t specialized closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a10, void *a11, uint64_t a12)
{
  v12 = a4;
  result = a9(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5, a6, *a11, a7, a8);
  v14 = result;
  if (result)
  {
    if (!__OFADD__(*a11, 1))
    {
      ++*a11;
      return v14 & 1;
    }

    __break(1u);
    goto LABEL_12;
  }

  v15 = *(a12 + 32);
  if (*(v15 + 16) <= v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v15 + 4 * v12 + 32);
  if (v16 >= *(a12 + 12))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*a12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = *a12 + 120 * v16;
  v18 = *v17;
  v19 = *(v17 + 16);
  v20 = *(v17 + 48);
  v38[2] = *(v17 + 32);
  v38[3] = v20;
  v38[0] = v18;
  v38[1] = v19;
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  v23 = *(v17 + 96);
  *(v39 + 14) = *(v17 + 110);
  v38[5] = v22;
  v39[0] = v23;
  v38[4] = v21;
  v24 = MEMORY[0x28223BE20](result);
  v35[8] = a11;
  v37 = 0;
  MEMORY[0x28223BE20](v24);
  v35[2] = partial apply for closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v35[3] = v25;
  v35[4] = &v37;
  v35[5] = a12;
  v26 = swift_allocObject();
  v27 = MEMORY[0x28223BE20](v26);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a12;
  result = MEMORY[0x28223BE20](v27);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((BYTE4(v39[1]) & 1) == 0)
  {
    v28 = v39[1];
    v29 = swift_allocObject();
    *(v29 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v29 + 24) = v34;
    v30 = swift_allocObject();
    *(v30 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v33;
    outlined init with copy of PType(v38, v36);
    v36[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v29, 0, 0, 0, 0, 1, -1, 0, v28, 0);
    outlined destroy of PType(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v32 = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        return v14 & 1;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a10, void *a11, uint64_t a12)
{
  v12 = a4;
  result = a9(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5, a6, *a11, a7, a8);
  v14 = result;
  if (result)
  {
    if (!__OFADD__(*a11, 1))
    {
      ++*a11;
      return v14 & 1;
    }

    __break(1u);
    goto LABEL_12;
  }

  v15 = *(a12 + 32);
  if (*(v15 + 16) <= v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v15 + 4 * v12 + 32);
  if (v16 >= *(a12 + 12))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*a12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = *a12 + 120 * v16;
  v18 = *v17;
  v19 = *(v17 + 16);
  v20 = *(v17 + 48);
  v38[2] = *(v17 + 32);
  v38[3] = v20;
  v38[0] = v18;
  v38[1] = v19;
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  v23 = *(v17 + 96);
  *(v39 + 14) = *(v17 + 110);
  v38[5] = v22;
  v39[0] = v23;
  v38[4] = v21;
  v24 = MEMORY[0x28223BE20](result);
  v35[8] = a11;
  v37 = 0;
  MEMORY[0x28223BE20](v24);
  v35[2] = closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)partial apply;
  v35[3] = v25;
  v35[4] = &v37;
  v35[5] = a12;
  v26 = swift_allocObject();
  v27 = MEMORY[0x28223BE20](v26);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a12;
  result = MEMORY[0x28223BE20](v27);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((BYTE4(v39[1]) & 1) == 0)
  {
    v28 = v39[1];
    v29 = swift_allocObject();
    *(v29 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v29 + 24) = v34;
    v30 = swift_allocObject();
    *(v30 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v33;
    outlined init with copy of PType(v38, v36);
    v36[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v29, 0, 0, 0, 0, 1, -1, 0, v28, 0);
    outlined destroy of PType(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v32 = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        return v14 & 1;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t PType.linearizedField(where:within:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a3[5];
  v36[4] = a3[4];
  v36[5] = v4;
  v36[6] = a3[6];
  v5 = a3[1];
  v36[0] = *a3;
  v36[1] = v5;
  v6 = a3[3];
  v36[2] = a3[2];
  v36[3] = v6;
  v7 = *(v3 + 112);
  v8 = *(v3 + 116);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 1;
  v27 = a1;
  v28 = a2;
  v29 = v33;
  v30 = v36;
  v32 = 0;
  v22 = partial apply for closure #1 in PType.linearizedField(where:within:);
  v23 = &v26;
  v24 = &v32;
  v25 = v36;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  v18 = partial apply for specialized closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v19 = &v21;
  v20 = v36;
  v15 = partial apply for specialized closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v16 = result;
  if ((v8 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for specialized closure #1 in PType.forEachField<A>(within:userData:_:revisitor:);
    *(v10 + 24) = &v17;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #2 in PType.forEachField<A>(within:userData:_:revisitor:);
    *(v11 + 24) = &v14;
    v31 = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> (), v11, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v10, 0, 0, 0, 0, 1, -1, 0, v7, 0);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        return v33[0];
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PType.linearizedField(named:within:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a2);
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 && v13 == 0xFFFFFFFF)
  {
    v17 = 0;
    return v17 & 1;
  }

  v81 = a2;
  v79 = a7;
  v18 = (a6 + 40);
  v19 = *(a6 + 56);
  v102[0] = *(a6 + 40);
  v102[1] = v19;
  v103[0] = *(a6 + 72);
  v20 = (a6 + 72);
  v21 = (a6 + 84);
  v22 = (a6 + 88);
  v82 = a6;
  v83 = a1;
  v23 = 8 * a1;
  *(v103 + 9) = *(a6 + 81);
  v24 = (a6 + 40);
  v25 = (a6 + 72);
  v26 = (a6 + 84);
  v27 = (a6 + 88);
  v80 = v16;
  while (1)
  {
    v28 = *v27;
    if (a1 < *v26)
    {
      v29 = (*v25 + v23);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v83, 0, v102);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v30 = *v24;
  if (!v30)
  {
    goto LABEL_67;
  }

  v31 = (v30 + 24 * *v29);
  v32 = *v31;
  v33 = *(*v31 + 196);
  v34 = 0uLL;
  v78 = a8;
  if (!v33)
  {
LABEL_41:
    v52 = 0;
    v53 = 0;
    v38 = v82;
    v48 = v83;
    v49 = v81;
    goto LABEL_42;
  }

  v35 = *(v32 + 184);
  if (!v35)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v36 = v33 - 1;
  if (v13 <= *(v35 + 32 * (v33 - 1)))
  {
    v41 = v33 >> 1;
    v42 = *(v35 + 32 * (v33 >> 1));
    if (v33 != 1 && v42 != v13)
    {
      v44 = *(v32 + 192) | (v33 << 32);
      v77 = *(v32 + 184);
      if (v13 >= v42)
      {
        v46 = v41 + 1;
        v45 = v13;
        v41 = v33;
      }

      else
      {
        v45 = v13;
        v46 = 0;
      }

      v54 = specialized Collection<>.binarySearch(for:)(v45, v46, v41, v35, v44, 0);
      if (v55)
      {
        v41 = v33 - 1;
      }

      else
      {
        v41 = v54;
      }

      v34 = 0uLL;
      v35 = v77;
    }

    v56 = (v35 + 32 * v41);
    v36 = v41;
    while (v41 < v33)
    {
      if (*v56 <= v13)
      {
        goto LABEL_14;
      }

      if (!v36)
      {
        goto LABEL_41;
      }

      --v36;
      v56 -= 8;
      if (v36 > v33)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_14:
  v37 = v18[1];
  v100[0] = *v18;
  v100[1] = v37;
  v101[0] = v18[2];
  *(v101 + 9) = *(v18 + 41);
  v38 = v82;
  while (1)
  {
    v39 = *v22;
    if (a1 < *v21)
    {
      v40 = (*v20 + v23);
      if ((v40[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v39)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v83, 0, v100);
    }

    v20 = (v39 + 32);
    v21 = (v39 + 44);
    v22 = (v39 + 48);
    v18 = v39;
  }

  if (!*v18)
  {
    goto LABEL_69;
  }

  v47 = *v18 + 24 * *v40;
  v48 = v83;
  v49 = v81;
  if (v36 >= *(*v47 + 196))
  {
    goto LABEL_61;
  }

  v50 = *(*v47 + 184);
  if (!v50)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v51 = (v50 + 32 * v36);
  v52 = *v51;
  v53 = *(v51 + 1);
  v34 = *(v51 + 1);
LABEL_42:
  v91 = v49 & 1;
  *&v97 = v48;
  *(&v97 + 1) = v49 & 0xFFFFFFFF00000001;
  *&v98 = v52;
  *(&v98 + 1) = v53;
  v99[0] = v34;
  LOBYTE(v99[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v38, &v97, 0, 0, v86);
  if (Interpreter.Iterator.read()())
  {
    v97 = v87;
    v98 = v88;
    v99[0] = *v89;
    *(v99 + 9) = *&v89[9];
    v57 = v87;
    v58 = *v89;
    v59 = *&v89[16];
    if (v90 >= *&v89[12])
    {
      goto LABEL_45;
    }

    while (1)
    {
      v60 = (v58 + 8 * v90);
      if ((v60[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_45:
        if (!v59)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v90, 0, &v97);
        }

        v57 = *v59;
        v58 = v59[4];
        v61 = *(v59 + 11);
        v59 = v59[6];
      }

      while (v90 >= v61);
    }

    if (!v57)
    {
      goto LABEL_68;
    }

    v62 = (v57 + 24 * *v60);
    v63 = *v62;
    v64 = *(*v62 + 96);
    if (v64 != 2)
    {
      v65 = *(v63 + 104);
      v66 = *(v63 + 88);
      v92 = *(v63 + 72);
      v93 = v66;
      v94 = v64 & 0x101;
      v95 = HIDWORD(v64);
      v96 = v65 & 1;
      v67 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v69 & 1) == 0)
      {
        v70 = v68 - v67;
        if (!v67)
        {
          v70 = 0;
        }

        v84 = v67;
        v85 = v70;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
        v71 = String.init<A>(bytes:encoding:)();
        if (v72)
        {
          v73 = v71;
          v74 = v72;
          specialized EvolutionTable.deallocate()();
          if (v73 == v79 && v74 == v78)
          {

            v17 = 1;
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v17 & 1;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_70:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in PType.linearizedField(where:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a4;
  result = a10(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7, a6);
  if ((result & 1) == 0)
  {
    return 1;
  }

  v16 = *(a13 + 32);
  if (*(v16 + 16) <= v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(v16 + 4 * v14 + 32);
  if (v17 >= *(a13 + 12))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a13)
  {
    v18 = *(*a13 + 120 * v17 + 88);
    v19 = __OFADD__(a5, v18);
    v20 = a5 + v18;
    if (!v19)
    {
      if (v20 >= a5)
      {
        *a12 = a5;
        *(a12 + 8) = v20;
        *(a12 + 16) = v14;
        *(a12 + 20) = 0;
        return 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PType.forEachLinearizedField(atOffset:within:do:)(int a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[5];
  v33[4] = a2[4];
  v33[5] = v5;
  v33[6] = a2[6];
  v6 = a2[1];
  v33[0] = *a2;
  v33[1] = v6;
  v7 = a2[3];
  v33[2] = a2[2];
  v33[3] = v7;
  v8 = *(v4 + 112);
  v9 = *(v4 + 116);
  v28 = a1;
  v29 = a3;
  v30 = a4;
  v32 = 0;
  v23 = partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:);
  v24 = &v27;
  v25 = &v32;
  v26 = v33;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  v19 = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v20 = &v22;
  v21 = v33;
  v16 = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v17 = result;
  if (v9)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
  *(v11 + 24) = &v18;
  v12 = swift_allocObject();
  *(v12 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
  *(v12 + 24) = &v15;
  v31 = 1;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v12, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v11, 0, 0, 0, 0, 1, -1, 0, v8, 0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

double PType.linearizedField(offset:nested:within:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v15 = 1;
  v11[2] = &v16;
  v11[3] = v6;
  v11[4] = &v12;
  PType.forEachLinearizedField(atOffset:within:do:)(a1, a3, partial apply for closure #1 in PType.linearizedField(offset:nested:within:), v11);
  v7 = v14;
  v8 = v15;
  result = *&v12;
  v10 = v13;
  *a4 = v12;
  *(a4 + 16) = v10;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  return result;
}

double PType._metadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 100);
  *a1 = *(v1 + 64);
  result = *(v1 + 80);
  *(a1 + 16) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

uint64_t PType.typeId.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

_OWORD *PType.fullName(within:)(_OWORD *result)
{
  v2 = result;
  v3 = result[5];
  v120 = result[4];
  v121 = v3;
  v122 = result[6];
  v4 = result[1];
  v116 = *result;
  v117 = v4;
  v5 = result[3];
  v118 = result[2];
  v119 = v5;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v125 = v1[2];
  v126 = v8;
  v123 = v6;
  v124 = v7;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  *&v129[14] = *(v1 + 110);
  v128 = v10;
  *v129 = v11;
  v127 = v9;
  if (v125 > 1u)
  {
    v12 = v123;
    if (v125 == 2)
    {
      *&v93 = 40;
      *(&v93 + 1) = 0xE100000000000000;
      v18 = swift_allocObject();
      v19 = v2[5];
      v18[5] = v2[4];
      v18[6] = v19;
      v18[7] = v2[6];
      v20 = v2[1];
      v18[1] = *v2;
      v18[2] = v20;
      v21 = v2[3];
      v18[3] = v2[2];
      v18[4] = v21;
      *&v100 = v12;
      *(&v100 + 1) = partial apply for closure #2 in PType.fullName(within:);
      *&v101 = v18;
      outlined init with copy of PType(&v123, &v107);
      outlined init with copy of Interpreter.Storage.Types(&v116, &v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMd, &_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>();
      v22 = BidirectionalCollection<>.joined(separator:)();
      v24 = v23;
      outlined destroy of PType(&v123);

      MEMORY[0x26D69CDB0](v22, v24);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v93;
    }

    if (v125 == 3)
    {
      v13 = swift_allocObject();
      v14 = v2[5];
      v13[5] = v2[4];
      v13[6] = v14;
      v13[7] = v2[6];
      v15 = v2[1];
      v13[1] = *v2;
      v13[2] = v15;
      v16 = v2[3];
      v13[3] = v2[2];
      v13[4] = v16;
      *&v100 = v12;
      *(&v100 + 1) = partial apply for closure #3 in PType.fullName(within:);
      *&v101 = v13;
      outlined init with copy of PType(&v123, &v107);
      outlined init with copy of Interpreter.Storage.Types(&v116, &v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>();
      v17 = BidirectionalCollection<>.joined(separator:)();
      outlined destroy of PType(&v123);

      return v17;
    }

    v114 = 0;
    v115 = 0xE000000000000000;
    v25 = HIDWORD(v116);
    if (v123 < HIDWORD(v116))
    {
      v26 = v116;
      if (!v116)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v27 = DWORD1(v123);
      v28 = (v116 + 120 * v123);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[3];
      v88 = v28[2];
      v89 = v31;
      v86 = v29;
      v87 = v30;
      v32 = v28[4];
      v33 = v28[5];
      v34 = v28[6];
      *(v92 + 14) = *(v28 + 110);
      v91 = v33;
      v92[0] = v34;
      v90 = v32;
      v111 = v28[4];
      v112 = v28[5];
      v113[0] = v28[6];
      *(v113 + 14) = *(v28 + 110);
      v107 = *v28;
      v108 = v28[1];
      v109 = v28[2];
      v110 = v28[3];
      outlined init with copy of PType(&v86, &v100);
      v35 = PType.fullName(within:)(v2);
      v37 = v36;
      v97 = v111;
      v98 = v112;
      v99[0] = v113[0];
      *(v99 + 14) = *(v113 + 14);
      v93 = v107;
      v94 = v108;
      v95 = v109;
      v96 = v110;
      outlined destroy of PType(&v93);
      MEMORY[0x26D69CDB0](v35, v37);

      result = MEMORY[0x26D69CDB0](540945696, 0xE400000000000000);
      if (HIDWORD(v12) < v25)
      {
        v38 = (v26 + 120 * v27);
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[3];
        v102 = v38[2];
        v103 = v41;
        v100 = v39;
        v101 = v40;
        v42 = v38[4];
        v43 = v38[5];
        v44 = v38[6];
        *(v106 + 14) = *(v38 + 110);
        v105 = v43;
        v106[0] = v44;
        v104 = v42;
        v45 = v38[5];
        v83 = v38[4];
        v84 = v45;
        v85[0] = v38[6];
        *(v85 + 14) = *(v38 + 110);
        v46 = v38[1];
        v79 = *v38;
        v80 = v46;
        v47 = v38[3];
        v81 = v38[2];
        v82 = v47;
        v78[4] = v120;
        v78[5] = v121;
        v78[6] = v122;
        v78[0] = v116;
        v78[1] = v117;
        v78[2] = v118;
        v78[3] = v119;
        outlined init with copy of PType(&v100, &v107);
        v48 = PType.fullName(within:)(v78);
        v50 = v49;
        v111 = v83;
        v112 = v84;
        v113[0] = v85[0];
        *(v113 + 14) = *(v85 + 14);
        v107 = v79;
        v108 = v80;
        v109 = v81;
        v110 = v82;
        outlined destroy of PType(&v107);
        MEMORY[0x26D69CDB0](v48, v50);

        return v114;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v125)
  {
    return 0xD000000000000014;
  }

  v51 = v124;
  *&v79 = PType.basename(within:)(result);
  *(&v79 + 1) = v52;
  v53 = *(v124 + 16);
  if (v53)
  {
    *&v78[0] = 60;
    *(&v78[0] + 1) = 0xE100000000000000;
    v114 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
    if (*(v124 + 16))
    {
      v54 = 0;
      v55 = v116;
      v77 = HIDWORD(v116);
      v56 = v53 - 1;
      v57 = v114;
      while (1)
      {
        v58 = *(v51 + 32 + 4 * v54);
        if (v58 >= v77)
        {
          break;
        }

        if (!v55)
        {
          goto LABEL_29;
        }

        v59 = (v55 + 120 * v58);
        v60 = *v59;
        v61 = v59[1];
        v62 = v59[3];
        v102 = v59[2];
        v103 = v62;
        v100 = v60;
        v101 = v61;
        v63 = v59[4];
        v64 = v59[5];
        v65 = v59[6];
        *(v106 + 14) = *(v59 + 110);
        v105 = v64;
        v106[0] = v65;
        v104 = v63;
        v97 = v59[4];
        v98 = v59[5];
        v99[0] = v59[6];
        *(v99 + 14) = *(v59 + 110);
        v93 = *v59;
        v94 = v59[1];
        v95 = v59[2];
        v96 = v59[3];
        v90 = v120;
        v91 = v121;
        v92[0] = v122;
        v86 = v116;
        v87 = v117;
        v88 = v118;
        v89 = v119;
        outlined init with copy of PType(&v100, &v107);
        v66 = PType.fullName(within:)(&v86);
        v68 = v67;
        v111 = v97;
        v112 = v98;
        v113[0] = v99[0];
        *(v113 + 14) = *(v99 + 14);
        v107 = v93;
        v108 = v94;
        v109 = v95;
        v110 = v96;
        result = outlined destroy of PType(&v107);
        v114 = v57;
        v70 = *(v57 + 16);
        v69 = *(v57 + 24);
        if (v70 >= v69 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v57 = v114;
        }

        *(v57 + 16) = v70 + 1;
        v71 = v57 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
        if (v56 == v54)
        {
          *&v107 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
          v72 = BidirectionalCollection<>.joined(separator:)();
          v74 = v73;

          MEMORY[0x26D69CDB0](v72, v74);

          MEMORY[0x26D69CDB0](62, 0xE100000000000000);
          v76 = *(&v78[0] + 1);
          v75 = *&v78[0];
          goto LABEL_24;
        }

        if (++v54 >= *(v51 + 16))
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v75 = 0;
  v76 = 0xE000000000000000;
LABEL_24:
  MEMORY[0x26D69CDB0](v75, v76);

  return v79;
}

uint64_t PType.basename(within:)(uint64_t result)
{
  v2 = result;
  v3 = *(result + 80);
  v149 = *(result + 64);
  v150 = v3;
  v151 = *(result + 96);
  v4 = *(result + 16);
  v145 = *result;
  v146 = v4;
  v5 = *(result + 48);
  v147 = *(result + 32);
  v148 = v5;
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v11 = swift_allocObject();
        v12 = v2[5];
        v11[5] = v2[4];
        v11[6] = v12;
        v11[7] = v2[6];
        v13 = v2[1];
        v11[1] = *v2;
        v11[2] = v13;
        v14 = v2[3];
        v11[3] = v2[2];
        v11[4] = v14;
        *&v129 = v6;
        *(&v129 + 1) = partial apply for closure #2 in PType.basename(within:);
        *&v130 = v11;
        outlined copy of PType.IsA(v6, v7, v9, v8, 3u);
        outlined init with copy of Interpreter.Storage.Types(&v145, &v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
        lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>();
        v15 = BidirectionalCollection<>.joined(separator:)();
        outlined consume of PType.IsA(v6, v7, v9, v8, 3u);

        return v15;
      }

      v143 = 0;
      v144 = 0xE000000000000000;
      v38 = HIDWORD(v145);
      if (v6 < HIDWORD(v145))
      {
        v39 = v145;
        if (!v145)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        v40 = HIDWORD(v6);
        v41 = (v145 + 120 * v6);
        v42 = *v41;
        v43 = v41[1];
        v44 = v41[3];
        v117 = v41[2];
        v118 = v44;
        v115 = v42;
        v116 = v43;
        v45 = v41[4];
        v46 = v41[5];
        v47 = v41[6];
        *(v121 + 14) = *(v41 + 110);
        v120 = v46;
        v121[0] = v47;
        v119 = v45;
        v140 = v41[4];
        v141 = v41[5];
        v142[0] = v41[6];
        *(v142 + 14) = *(v41 + 110);
        v136 = *v41;
        v137 = v41[1];
        v138 = v41[2];
        v139 = v41[3];
        outlined init with copy of PType(&v115, &v129);
        v48 = PType.basename(within:)(v2);
        v50 = v49;
        v126 = v140;
        v127 = v141;
        v128[0] = v142[0];
        *(v128 + 14) = *(v142 + 14);
        v122 = v136;
        v123 = v137;
        v124 = v138;
        v125 = v139;
        outlined destroy of PType(&v122);
        MEMORY[0x26D69CDB0](v48, v50);

        result = MEMORY[0x26D69CDB0](540945696, 0xE400000000000000);
        if (v40 < v38)
        {
          v51 = (v39 + 120 * v40);
          v52 = *v51;
          v53 = v51[1];
          v54 = v51[3];
          v131 = v51[2];
          v132 = v54;
          v129 = v52;
          v130 = v53;
          v55 = v51[4];
          v56 = v51[5];
          v57 = v51[6];
          *(v135 + 14) = *(v51 + 110);
          v134 = v56;
          v135[0] = v57;
          v133 = v55;
          v58 = v51[5];
          v112 = v51[4];
          v113 = v58;
          v114[0] = v51[6];
          *(v114 + 14) = *(v51 + 110);
          v59 = v51[1];
          v108 = *v51;
          v109 = v59;
          v60 = v51[3];
          v110 = v51[2];
          v111 = v60;
          v107[4] = v149;
          v107[5] = v150;
          v107[6] = v151;
          v107[0] = v145;
          v107[1] = v146;
          v107[2] = v147;
          v107[3] = v148;
          outlined init with copy of PType(&v129, &v136);
          v61 = PType.basename(within:)(v107);
          v63 = v62;
          v140 = v112;
          v141 = v113;
          v142[0] = v114[0];
          *(v142 + 14) = *(v114 + 14);
          v136 = v108;
          v137 = v109;
          v138 = v110;
          v139 = v111;
          outlined destroy of PType(&v136);
          MEMORY[0x26D69CDB0](v61, v63);

          return v143;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *&v108 = 40;
    *(&v108 + 1) = 0xE100000000000000;
    v16 = *(v6 + 16);
    v17 = MEMORY[0x277D84F90];
    if (!v16)
    {
LABEL_34:
      *&v136 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v75 = BidirectionalCollection<>.joined(separator:)();
      v77 = v76;

      MEMORY[0x26D69CDB0](v75, v77);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v108;
    }

    v143 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v105 = v6;
    if (*(v6 + 16))
    {
      v18 = 0;
      v19 = v145;
      v103 = HIDWORD(v145);
      v20 = (v6 + 52);
      v17 = v143;
      while (1)
      {
        v21 = *(v20 - 4);
        v22 = *v20;
        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;
        v23 = (v21 & 1) != 0 ? 0x2074756F6E69 : 0;
        v24 = (v21 & 1) != 0 ? 0xE600000000000000 : 0xE000000000000000;

        MEMORY[0x26D69CDB0](v23, v24);

        result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v22 >= v103)
        {
          break;
        }

        if (!v19)
        {
          goto LABEL_56;
        }

        v25 = (v19 + 120 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v131 = v25[2];
        v132 = v28;
        v129 = v26;
        v130 = v27;
        v29 = v25[4];
        v30 = v25[5];
        v31 = v25[6];
        *(v135 + 14) = *(v25 + 110);
        v134 = v30;
        v135[0] = v31;
        v133 = v29;
        v126 = v25[4];
        v127 = v25[5];
        v128[0] = v25[6];
        *(v128 + 14) = *(v25 + 110);
        v122 = *v25;
        v123 = v25[1];
        v124 = v25[2];
        v125 = v25[3];
        v119 = v149;
        v120 = v150;
        v121[0] = v151;
        v115 = v145;
        v116 = v146;
        v117 = v147;
        v118 = v148;
        outlined init with copy of PType(&v129, &v136);
        v32 = PType.basename(within:)(&v115);
        v34 = v33;
        v140 = v126;
        v141 = v127;
        v142[0] = v128[0];
        *(v142 + 14) = *(v128 + 14);
        v136 = v122;
        v137 = v123;
        v138 = v124;
        v139 = v125;
        outlined destroy of PType(&v136);
        MEMORY[0x26D69CDB0](v32, v34);

        v35 = v107[0];
        v143 = v17;
        v37 = *(v17 + 16);
        v36 = *(v17 + 24);
        if (v37 >= v36 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v17 = v143;
        }

        *(v17 + 16) = v37 + 1;
        *(v17 + 16 * v37 + 32) = v35;
        if (v16 - 1 == v18)
        {
          goto LABEL_34;
        }

        v20 += 6;
        if (++v18 >= *(v105 + 16))
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  if (!*(v1 + 32))
  {
    return 0xD000000000000014;
  }

  result = 0x6C616E6F6974704FLL;
  if (v6 == 0x6C616E6F6974704FLL && v7 == 0xE800000000000000 || (v102 = *(v1 + 8), result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    if (*(v9 + 16))
    {
      v64 = *(v9 + 32);
      if (v64 < HIDWORD(v145))
      {
        if (v145)
        {
          v65 = (v145 + 120 * v64);
          v66 = *v65;
          v67 = v65[1];
          v68 = v65[3];
          v131 = v65[2];
          v132 = v68;
          v129 = v66;
          v130 = v67;
          v69 = v65[4];
          v70 = v65[5];
          v71 = v65[6];
          *(v135 + 14) = *(v65 + 110);
          v134 = v70;
          v135[0] = v71;
          v133 = v69;
          v126 = v65[4];
          v127 = v65[5];
          v128[0] = v65[6];
          *(v128 + 14) = *(v65 + 110);
          v122 = *v65;
          v123 = v65[1];
          v124 = v65[2];
          v125 = v65[3];
          outlined init with copy of PType(&v129, &v136);
          v72 = PType.basename(within:)(v2);
          v74 = v73;
          v140 = v126;
          v141 = v127;
          v142[0] = v128[0];
          *(v142 + 14) = *(v128 + 14);
          v136 = v122;
          v137 = v123;
          v138 = v124;
          v139 = v125;
          outlined destroy of PType(&v136);
          MEMORY[0x26D69CDB0](v72, v74);

          MEMORY[0x26D69CDB0](63, 0xE100000000000000);
          return v115;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v78 = *(v8 + 16);
  v79 = 0xE000000000000000;
  if (v78)
  {
    v106 = v6;
    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    *&v107[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
    if (*(v8 + 16))
    {
      v80 = 0;
      v81 = v145;
      v104 = HIDWORD(v145);
      v82 = v78 - 1;
      v83 = *&v107[0];
      do
      {
        v84 = *(v8 + 32 + 4 * v80);
        if (v84 >= v104)
        {
          goto LABEL_51;
        }

        if (!v81)
        {
          goto LABEL_57;
        }

        v85 = (v81 + 120 * v84);
        v86 = *v85;
        v87 = v85[1];
        v88 = v85[3];
        v131 = v85[2];
        v132 = v88;
        v129 = v86;
        v130 = v87;
        v89 = v85[4];
        v90 = v85[5];
        v91 = v85[6];
        *(v135 + 14) = *(v85 + 110);
        v134 = v90;
        v135[0] = v91;
        v133 = v89;
        v126 = v85[4];
        v127 = v85[5];
        v128[0] = v85[6];
        *(v128 + 14) = *(v85 + 110);
        v122 = *v85;
        v123 = v85[1];
        v124 = v85[2];
        v125 = v85[3];
        v119 = v149;
        v120 = v150;
        v121[0] = v151;
        v115 = v145;
        v116 = v146;
        v117 = v147;
        v118 = v148;
        outlined init with copy of PType(&v129, &v136);
        v92 = PType.basename(within:)(&v115);
        v94 = v93;
        v140 = v126;
        v141 = v127;
        v142[0] = v128[0];
        *(v142 + 14) = *(v128 + 14);
        v136 = v122;
        v137 = v123;
        v138 = v124;
        v139 = v125;
        result = outlined destroy of PType(&v136);
        *&v107[0] = v83;
        v96 = *(v83 + 16);
        v95 = *(v83 + 24);
        if (v96 >= v95 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
          v83 = *&v107[0];
        }

        *(v83 + 16) = v96 + 1;
        v97 = v83 + 16 * v96;
        *(v97 + 32) = v92;
        *(v97 + 40) = v94;
        if (v82 == v80)
        {
          *&v136 = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
          v98 = BidirectionalCollection<>.joined(separator:)();
          v100 = v99;

          MEMORY[0x26D69CDB0](v98, v100);

          MEMORY[0x26D69CDB0](46, 0xE100000000000000);
          v79 = *(&v108 + 1);
          v101 = v108;
          v6 = v106;
          goto LABEL_47;
        }
      }

      while (++v80 < *(v8 + 16));
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v101 = 0;
LABEL_47:
  *&v136 = v101;
  *(&v136 + 1) = v79;

  MEMORY[0x26D69CDB0](v6, v102);

  return v136;
}

uint64_t closure #2 in PType.fullName(within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 20);
  if (v4 >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v6 = *a2 + 120 * v4;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 48);
    v23[2] = *(v6 + 32);
    v23[3] = v9;
    v23[0] = v7;
    v23[1] = v8;
    v10 = *(v6 + 64);
    v11 = *(v6 + 80);
    v12 = *(v6 + 96);
    *(v24 + 14) = *(v6 + 110);
    v23[5] = v11;
    v24[0] = v12;
    v23[4] = v10;
    v20 = *(v6 + 64);
    v21 = *(v6 + 80);
    *v22 = *(v6 + 96);
    *&v22[14] = *(v6 + 110);
    v16 = *v6;
    v17 = *(v6 + 16);
    v18 = *(v6 + 32);
    v19 = *(v6 + 48);
    outlined init with copy of PType(v23, v25);
    v13 = PType.fullName(within:)(a2);
    v15 = v14;
    v25[4] = v20;
    v25[5] = v21;
    v26[0] = *v22;
    *(v26 + 14) = *&v22[14];
    v25[0] = v16;
    v25[1] = v17;
    v25[2] = v18;
    v25[3] = v19;
    result = outlined destroy of PType(v25);
    *a3 = v13;
    a3[1] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PType.genericParamCount.getter()
{
  v1 = v0[5];
  v21 = v0[4];
  v22 = v1;
  v23[0] = v0[6];
  *(v23 + 14) = *(v0 + 110);
  v2 = v0[1];
  v17 = *v0;
  v18 = v2;
  v3 = v0[2];
  v4 = v0[3];
  v19 = v3;
  v20 = v4;
  v5 = v18;
  if (v3 == 1)
  {
    return *(v18 + 16);
  }

  v7 = *(&v18 + 1);
  v8 = v17;
  v15 = 0;
  v16 = 0xE000000000000000;
  v9 = v3;
  outlined init with copy of PType(&v17, &v11);
  _StringGuts.grow(_:)(42);

  v15 = 0xD000000000000027;
  v16 = 0x800000026C33C270;
  v11 = v8;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v10 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PType.moduleName(within:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(v1 + 64);

  v5 = v3(v2, v4);

  return v5;
}

_DWORD *closure #4 in PType.limitedName(within:limit:module:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*result >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v7 = *a2 + 120 * *result;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v24[2] = *(v7 + 32);
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v25 + 14) = *(v7 + 110);
    v24[5] = v12;
    v25[0] = v13;
    v24[4] = v11;
    v21 = *(v7 + 64);
    v22 = *(v7 + 80);
    *v23 = *(v7 + 96);
    *&v23[14] = *(v7 + 110);
    v17 = *v7;
    v18 = *(v7 + 16);
    v19 = *(v7 + 32);
    v20 = *(v7 + 48);
    outlined init with copy of PType(v24, v26);
    v14 = PType.limitedName(within:limit:module:)(a2, a3, 0);
    v16 = v15;
    v26[4] = v21;
    v26[5] = v22;
    v27[0] = *v23;
    *(v27 + 14) = *&v23[14];
    v26[0] = v17;
    v26[1] = v18;
    v26[2] = v19;
    v26[3] = v20;
    result = outlined destroy of PType(v26);
    *a4 = v14;
    a4[1] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in PType.limitedName(within:limit:module:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(result + 20);
  if (v5 >= *(a2 + 12))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a2)
  {
    v7 = *a2 + 120 * v5;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v25[2] = *(v7 + 32);
    v25[3] = v10;
    v25[0] = v8;
    v25[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v26 + 14) = *(v7 + 110);
    v25[5] = v12;
    v26[0] = v13;
    v25[4] = v11;
    v22 = *(v7 + 64);
    v23 = *(v7 + 80);
    *v24 = *(v7 + 96);
    *&v24[14] = *(v7 + 110);
    v18 = *v7;
    v19 = *(v7 + 16);
    v20 = *(v7 + 32);
    v21 = *(v7 + 48);
    v14 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      outlined init with copy of PType(v25, v27);
      v15 = PType.limitedName(within:limit:module:)(a2, v14, 0);
      v17 = v16;
      v27[4] = v22;
      v27[5] = v23;
      v28[0] = *v24;
      *(v28 + 14) = *&v24[14];
      v27[0] = v18;
      v27[1] = v19;
      v27[2] = v20;
      v27[3] = v21;
      result = outlined destroy of PType(v27);
      *a4 = v15;
      a4[1] = v17;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

_DWORD *closure #3 in PType.fullName(within:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  if (*result >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v7 = *a2 + 120 * *result;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v24[2] = *(v7 + 32);
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v25 + 14) = *(v7 + 110);
    v24[5] = v12;
    v25[0] = v13;
    v24[4] = v11;
    v21 = *(v7 + 64);
    v22 = *(v7 + 80);
    *v23 = *(v7 + 96);
    *&v23[14] = *(v7 + 110);
    v17 = *v7;
    v18 = *(v7 + 16);
    v19 = *(v7 + 32);
    v20 = *(v7 + 48);
    outlined init with copy of PType(v24, v26);
    v14 = a3(a2);
    v16 = v15;
    v26[4] = v21;
    v26[5] = v22;
    v27[0] = *v23;
    *(v27 + 14) = *&v23[14];
    v26[0] = v17;
    v26[1] = v18;
    v26[2] = v19;
    v26[3] = v20;
    result = outlined destroy of PType(v26);
    *a4 = v14;
    a4[1] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static PType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  outlined copy of PType.IsA(v17, v2, v3, v4, v9);
  outlined copy of PType.IsA(v5, v6, v7, v8, v10);
  LOBYTE(v5) = specialized static PType.IsA.== infix(_:_:)(&v17, &v12);
  outlined consume of PType.IsA(v12, v13, v14, v15, v16);
  outlined consume of PType.IsA(v17, v18, v19, v20, v21);
  return v5 & 1;
}

uint64_t PType.isFirstParty(within:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(v1 + 64);

  v5 = v3(v2, v4);
  v7 = v6;

  v8 = v5 == 0x49557466697753 && v7 == 0xE700000000000000;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0xD000000000000012 && 0x800000026C33B970 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0x7475626972747441 && v7 == 0xEE00687061724765 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0x4349557466697753 && v7 == 0xEB0000000065726FLL)
  {

    return 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PType.Parser.Flags@<X0>(_BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
  return result;
}

unint64_t PType.Parser.parseFunctional(within:)(unint64_t a1)
{
  result = PType.Parser.parseTuple(within:)(a1);
  if (v2)
  {
    return result;
  }

  v5 = v1[1];
  v6 = v1[2];
  v7 = *v1;
  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 == 4 * v8)
  {
    return result;
  }

  v9 = result;
  v10 = _StringGuts.validateScalarIndex(_:)(v1[2], *v1, v1[1]);
  if ((v5 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 32)
    {
      return v9;
    }

    _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
    v69 = String.UnicodeScalarView._foreignIndex(after:)();
    _StringGuts.validateScalarIndex(_:)(v69, v7, v5);
    v28 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_28;
  }

  v11 = v10 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v13 = &v72 + v11;
    v15 = *(&v72 + v11);
    result = v9;
    if ((*(&v72 + v11) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v12 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v13 = (v12 + v11);
    v14 = *(v12 + v11);
    v15 = *(v12 + v11);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = (__clz(v15 ^ 0xFF) - 24);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v17 = v13[1];
      v18 = v13[2];
      v19 = ((v15 & 0xF) << 12) | ((v17 & 0x3F) << 6);
    }

    else
    {
      v20 = v13[1];
      v21 = v13[2];
      v18 = v13[3];
      v19 = ((v15 & 0xF) << 18) | ((v20 & 0x3F) << 12) | ((v21 & 0x3F) << 6);
    }

    v15 = v19 & 0xFFFFFFC0 | v18 & 0x3F;
  }

  else if (v16 != 1)
  {
    v15 = v13[1] & 0x3F | ((v15 & 0x1F) << 6);
  }

LABEL_19:
  if (v15 != 32)
  {
    return result;
  }

  v22 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5) >> 16;
  v23 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v22);
  v24 = _StringGuts.validateScalarIndex(_:)(((v23 + v22) << 16) | 5, v7, v5) >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v26 = &v72 + v24;
    v28 = *(&v72 + v24);
    if (*(&v72 + v24) < 0)
    {
      v37 = (__clz(v28 ^ 0xFF) - 24);
      if (v37 > 2)
      {
        result = v9;
        if (v37 == 3)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      if (v37 != 1)
      {
        v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
      }
    }

LABEL_28:
    result = v9;
    goto LABEL_29;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v25 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v25 = _StringObject.sharedUTF8.getter();
  }

  result = v9;
  v26 = (v25 + v24);
  v27 = *(v25 + v24);
  v28 = *(v25 + v24);
  if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v29 = (__clz(v28 ^ 0xFF) - 24);
  if (v29 > 2)
  {
    if (v29 == 3)
    {
LABEL_45:
      v28 = ((v28 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
      goto LABEL_29;
    }

LABEL_47:
    v28 = ((v28 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
    goto LABEL_29;
  }

  if (v29 != 1)
  {
    v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
  }

LABEL_29:
  if (v28 != 45)
  {
    return result;
  }

  v30 = String.UnicodeScalarView.index(_:offsetBy:)(v6, 2, v7, v5);
  v31 = _StringGuts.validateScalarIndex(_:)(v30, v7, v5);
  if ((v5 & 0x1000000000000000) != 0)
  {
    v36 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    result = v9;
    goto LABEL_52;
  }

  v32 = v31 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v34 = &v72 + v32;
    v36 = *(&v72 + v32);
    result = v9;
    if ((*(&v72 + v32) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v33 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v34 = (v33 + v32);
    v35 = *(v33 + v32);
    v36 = *(v33 + v32);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  v38 = (__clz(v36 ^ 0xFF) - 24);
  if (v38 > 2)
  {
    if (v38 == 3)
    {
      v39 = v34[1];
      v40 = v34[2];
      v41 = ((v36 & 0xF) << 12) | ((v39 & 0x3F) << 6);
    }

    else
    {
      v42 = v34[1];
      v43 = v34[2];
      v40 = v34[3];
      v41 = ((v36 & 0xF) << 18) | ((v42 & 0x3F) << 12) | ((v43 & 0x3F) << 6);
    }

    v36 = v41 & 0xFFFFFFC0 | v40 & 0x3F;
  }

  else if (v38 != 1)
  {
    v36 = v34[1] & 0x3F | ((v36 & 0x1F) << 6);
  }

LABEL_52:
  if (v36 != 62)
  {
    return result;
  }

  v44 = String.UnicodeScalarView.index(_:offsetBy:)(v6, 3, v7, v5);
  v45 = _StringGuts.validateScalarIndex(_:)(v44, v7, v5);
  if ((v5 & 0x1000000000000000) != 0)
  {
    v50 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    result = v9;
    goto LABEL_68;
  }

  v46 = v45 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v48 = &v72 + v46;
    v50 = *(&v72 + v46);
    result = v9;
    if ((*(&v72 + v46) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v47 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v47 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v48 = (v47 + v46);
    v49 = *(v47 + v46);
    v50 = *(v47 + v46);
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  v51 = (__clz(v50 ^ 0xFF) - 24);
  if (v51 > 2)
  {
    if (v51 == 3)
    {
      v52 = v48[1];
      v53 = v48[2];
      v54 = ((v50 & 0xF) << 12) | ((v52 & 0x3F) << 6);
    }

    else
    {
      v55 = v48[1];
      v56 = v48[2];
      v53 = v48[3];
      v54 = ((v50 & 0xF) << 18) | ((v55 & 0x3F) << 12) | ((v56 & 0x3F) << 6);
    }

    v50 = v54 & 0xFFFFFFC0 | v53 & 0x3F;
  }

  else if (v51 != 1)
  {
    v50 = v48[1] & 0x3F | ((v50 & 0x1F) << 6);
  }

LABEL_68:
  if (v50 == 32)
  {
    v1[2] = String.UnicodeScalarView.index(_:offsetBy:)(v6, 4, v7, v5);
    result = PType.Parser.parseTuple(within:)(a1);
    v57 = result;
    LOBYTE(v72) = 1;
    v75 = 1;
    v74 = 1;
    if (one-time initialization token for none != -1)
    {
      result = swift_once();
    }

    v58 = static PType.Metadata.none;
    v59 = qword_280481CC8;
    v60 = qword_280481CD0;
    v61 = dword_280481CD8;
    v62 = byte_280481CDC;
    v63 = v72;
    v64 = v75;
    v65 = v74;
    v66 = *(a1 + 12);
    if (v66 == *(a1 + 8))
    {
      v71 = static PType.Metadata.none;
      v70 = byte_280481CDC;
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v66);
      v62 = v70;
      v58 = v71;
    }

    if (*a1)
    {
      v67 = *(a1 + 12);
      v68 = *a1 + 120 * v67;
      *v68 = v9 | (v57 << 32);
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      *(v68 + 32) = 4;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = v63;
      *(v68 + 60) = -1;
      *(v68 + 64) = v58;
      *(v68 + 80) = v59;
      *(v68 + 88) = v60;
      *(v68 + 96) = v61;
      *(v68 + 100) = v62;
      *(v68 + 104) = 0;
      *(v68 + 108) = v64;
      *(v68 + 112) = 0;
      *(v68 + 116) = v65;
      *(v68 + 117) = 6;
      if (v67 != -1)
      {
        *(a1 + 12) = v67 + 1;
        return v67;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = a3;
  v8 = a4 >> 14;
  v9 = a3 >> 14;
  if (a3 >> 14 == a4 >> 14)
  {
    if (v7)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_59:
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
      {
        goto LABEL_7;
      }

      return 0;
    }

    return 1;
  }

  v30 = v7;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v26 = a6 & 0xFFFFFFFFFFFFFFLL;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;

  v15 = 0;
  v16 = a3;
  do
  {
    if ((v16 & 0xC) == v14 || (v16 & 1) == 0)
    {
      if ((v16 & 0xC) == v14)
      {
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, a5, a6);
      }

      if (v16 >> 14 < v9 || v16 >> 14 >= v8)
      {
        goto LABEL_57;
      }

      if ((v16 & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(v16, a5, a6);
      }
    }

    else if (v16 >> 14 < v9 || v16 >> 14 >= v8)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      return 1;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v31 = a5;
        v32 = v26;
      }

      else if ((a5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v18 = _decodeScalar(_:startingAt:)();
    }

    v19 = v18;
    Substring.UnicodeScalarView.formIndex(after:)();
    if (v15 >= v30)
    {

      return 1;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v22 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v31 = a1;
        v32 = v28;
        v21 = &v31 + v15;
      }

      else
      {
        v20 = v27;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = (v20 + v15);
      }

      v22 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
LABEL_39:
        v23 = 1;
        goto LABEL_40;
      }

      v24 = (__clz(v22 ^ 0xFF) - 24);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v22 = ((v22 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
          v23 = 3;
        }

        else
        {
          v22 = ((v22 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
          v23 = 4;
        }
      }

      else
      {
        if (v24 == 1)
        {
          goto LABEL_39;
        }

        v22 = v21[1] & 0x3F | ((v22 & 0x1F) << 6);
        v23 = 2;
      }
    }

LABEL_40:
    if (v19 != v22)
    {

      return 0;
    }

    v15 += v23;
    v16 = v33;
  }

  while (v8 != v33 >> 14);

  if (v15 >= v30)
  {
    return 1;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
LABEL_7:
    _StringObject.sharedUTF8.getter();
  }

  return 0;
}

uint64_t PType.Parser.parseTupleTypeName(types:)()
{
  v1 = type metadata accessor for CharacterSet();
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v8 = (v7 + 8);
  v30 = v0;
  v31 = v6;
  do
  {
    static CharacterSet.alphanumerics.getter();
    _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
    if ((v5 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else if ((v5 & 0x2000000000000000) != 0)
    {
      v32 = v4;
      v33 = v5 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((v4 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v14 = CharacterSet.contains(_:)();
    (*v8)(v3, v1);
    if ((v14 & 1) == 0)
    {
      v15 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
      if ((v5 & 0x1000000000000000) != 0)
      {
        v19 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        v16 = v15 >> 16;
        if ((v5 & 0x2000000000000000) != 0)
        {
          v32 = v4;
          v33 = v5 & 0xFFFFFFFFFFFFFFLL;
          v18 = &v32 + v16;
        }

        else
        {
          v17 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v18 = (v17 + v16);
        }

        v19 = *v18;
        if (*v18 < 0)
        {
          v26 = (__clz(v19 ^ 0xFF) - 24);
          if (v26 > 2)
          {
            if (v26 == 3)
            {
              v19 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
            }

            else
            {
              v19 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
            }
          }

          else if (v26 != 1)
          {
            v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
          }
        }
      }

      if (v19 != 95)
      {
        return 0;
      }
    }

    v20 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
    if ((v5 & 0x1000000000000000) != 0)
    {
      v6 = String.UnicodeScalarView._foreignIndex(after:)();
      _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
      v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v20 >> 16) + (v20 >> 16)) << 16) | 5;
      v21 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5) >> 16;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v32 = v4;
        v33 = v5 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v32 + v21;
      }

      else
      {
        v22 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = (v22 + v21);
      }

      v13 = *v23;
      if (*v23 < 0)
      {
        v24 = (__clz(v13 ^ 0xFF) - 24);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v25 = v23[1];
            v11 = v23[2];
            v12 = ((v13 & 0xF) << 12) | ((v25 & 0x3F) << 6);
          }

          else
          {
            v9 = v23[1];
            v10 = v23[2];
            v11 = v23[3];
            v12 = ((v13 & 0xF) << 18) | ((v9 & 0x3F) << 12) | ((v10 & 0x3F) << 6);
          }

          v13 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v24 != 1)
        {
          v13 = v23[1] & 0x3F | ((v13 & 0x1F) << 6);
        }
      }
    }
  }

  while (v13 != 58);
  v27 = String.UnicodeScalarView.index(_:offsetBy:)(v6, 2, v4, v5);
  v28 = String.UnicodeScalarView.index(_:offsetBy:)(v27, -2, v4, v5) >> 14;
  result = v31;
  if (v28 < v31 >> 14)
  {
    __break(1u);
  }

  else
  {
    String.UnicodeScalarView.subscript.getter();
    result = String.init(_:)();
    v30[2] = v27;
  }

  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = String.UnicodeScalarView._foreignIndex(before:)();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = _StringObject.sharedUTF8.getter();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

unint64_t PType.Parser.parseProto(within:)(unint64_t a1)
{
  result = PType.Parser.parseNamedType(within:)(a1);
  if (!v2)
  {
    v5 = v1[1];
    v6 = v1[2];
    v7 = *v1;
    v8 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v8 = *v1 & 0xFFFFFFFFFFFFLL;
    }

    v9 = 4 * v8;
    if (4 * v8 != v6 >> 14)
    {
      v10 = result;
      v11 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
      if ((v5 & 0x1000000000000000) != 0)
      {
        if (v9 == String.UnicodeScalarView._foreignIndex(after:)() >> 14)
        {
          return v10;
        }

        _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
        v57 = String.UnicodeScalarView._foreignIndex(after:)();
        _StringGuts.validateScalarIndex(_:)(v57, v7, v5);
        v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if (4 * ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v11 >> 16) + (v11 >> 16)) & 0xFFFFFFFFFFFFLL) == v9)
        {
          return v10;
        }

        v12 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5) >> 16;
        v13 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v12);
        v14 = _StringGuts.validateScalarIndex(_:)(((v12 + v13) << 16) | 5, v7, v5) >> 16;
        if ((v5 & 0x2000000000000000) == 0)
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v15 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = (v15 + v14);
          v17 = *(v15 + v14);
          v18 = *(v15 + v14);
          if ((v17 & 0x80000000) == 0)
          {
LABEL_27:
            if (v18 != 38)
            {
              return v10;
            }

            goto LABEL_28;
          }

          v19 = (__clz(v18 ^ 0xFF) - 24);
          if (v19 <= 2)
          {
            if (v19 != 1)
            {
              if ((v16[1] & 0x3F | ((v18 & 0x1F) << 6)) == 0x26)
              {
                goto LABEL_28;
              }

              return v10;
            }

            goto LABEL_27;
          }

          if (v19 == 3)
          {
LABEL_23:
            if ((((v18 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F) != 0x26)
            {
              return v10;
            }

            goto LABEL_28;
          }

LABEL_26:
          v18 = ((v18 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
          goto LABEL_27;
        }

        v59 = v7;
        v60 = v5 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v59 + v14;
        v18 = *(&v59 + v14);
        if (*(&v59 + v14) < 0)
        {
          v20 = (__clz(v18 ^ 0xFF) - 24);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              goto LABEL_23;
            }

            goto LABEL_26;
          }

          if (v20 != 1)
          {
            v18 = v16[1] & 0x3F | ((v18 & 0x1F) << 6);
          }
        }
      }

      if (v18 != 38)
      {
        return v10;
      }

LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
      result = swift_allocObject();
      v21 = result;
      *(result + 16) = xmmword_26C328DC0;
      *(result + 32) = v10;
      while (1)
      {
        v23 = v1[1];
        v22 = v1[2];
        v24 = *v1;
        v25 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v25 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v22 >> 14 == 4 * v25)
        {
          break;
        }

        result = _StringGuts.validateScalarIndex(_:)(v1[2], *v1, v1[1]);
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          if (result != 32)
          {
            break;
          }

          _StringGuts.validateScalarIndex(_:)(v22, v24, v23);
          v44 = String.UnicodeScalarView._foreignIndex(after:)();
          _StringGuts.validateScalarIndex(_:)(v44, v24, v23);
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          v26 = result >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v27 = &v59 + v26;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              result = _StringObject.sharedUTF8.getter();
            }

            v27 = (result + v26);
          }

          v28 = *v27;
          if (*v27 < 0)
          {
            v39 = (__clz(v28 ^ 0xFF) - 24);
            if (v39 > 2)
            {
              if (v39 == 3)
              {
                v28 = ((v28 & 0xF) << 12) | ((v27[1] & 0x3F) << 6) | v27[2] & 0x3F;
              }

              else
              {
                v28 = ((v28 & 0xF) << 18) | ((v27[1] & 0x3F) << 12) | ((v27[2] & 0x3F) << 6) | v27[3] & 0x3F;
              }
            }

            else if (v39 != 1)
            {
              v28 = v27[1] & 0x3F | ((v28 & 0x1F) << 6);
            }
          }

          if (v28 != 32)
          {
            break;
          }

          v29 = _StringGuts.validateScalarIndex(_:)(v22, v24, v23) >> 16;
          v30 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v29);
          v31 = _StringGuts.validateScalarIndex(_:)(((v30 + v29) << 16) | 5, v24, v23) >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v33 = &v59 + v31;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              v32 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v32 = _StringObject.sharedUTF8.getter();
            }

            v33 = (v32 + v31);
          }

          result = *v33;
          if (*v33 < 0)
          {
            v40 = (__clz(result ^ 0xFF) - 24);
            if (v40 > 2)
            {
              if (v40 == 3)
              {
                result = ((result & 0xF) << 12) | ((v33[1] & 0x3F) << 6) | v33[2] & 0x3F;
              }

              else
              {
                result = ((result & 0xF) << 18) | ((v33[1] & 0x3F) << 12) | ((v33[2] & 0x3F) << 6) | v33[3] & 0x3F;
              }
            }

            else if (v40 != 1)
            {
              result = v33[1] & 0x3F | ((result & 0x1F) << 6);
            }
          }
        }

        if (result != 38)
        {
          break;
        }

        v34 = String.UnicodeScalarView.index(_:offsetBy:)(v22, 2, v24, v23);
        v35 = _StringGuts.validateScalarIndex(_:)(v34, v24, v23);
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          v36 = v35 >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v38 = &v59 + v36;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              v37 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v37 = _StringObject.sharedUTF8.getter();
            }

            v38 = (v37 + v36);
          }

          result = *v38;
          if (*v38 < 0)
          {
            v43 = (__clz(result ^ 0xFF) - 24);
            if (v43 > 2)
            {
              if (v43 == 3)
              {
                result = ((result & 0xF) << 12) | ((v38[1] & 0x3F) << 6) | v38[2] & 0x3F;
              }

              else
              {
                result = ((result & 0xF) << 18) | ((v38[1] & 0x3F) << 12) | ((v38[2] & 0x3F) << 6) | v38[3] & 0x3F;
              }
            }

            else if (v43 != 1)
            {
              result = v38[1] & 0x3F | ((result & 0x1F) << 6);
            }
          }
        }

        if (result != 32)
        {
          break;
        }

        v1[2] = String.UnicodeScalarView.index(_:offsetBy:)(v22, 3, v24, v23);
        result = PType.Parser.parseTuple(within:)(a1);
        v42 = *(v21 + 2);
        v41 = *(v21 + 3);
        if (v42 >= v41 >> 1)
        {
          v45 = result;
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
          result = v45;
        }

        *(v21 + 2) = v42 + 1;
        *&v21[4 * v42 + 32] = result;
      }

      LOBYTE(v59) = 1;
      v62 = 1;
      v61 = 1;
      if (one-time initialization token for none != -1)
      {
        result = swift_once();
      }

      v46 = static PType.Metadata.none;
      v47 = qword_280481CC8;
      v48 = qword_280481CD0;
      v49 = dword_280481CD8;
      v50 = byte_280481CDC;
      v51 = v59;
      v52 = v62;
      v53 = v61;
      v54 = *(a1 + 12);
      if (v54 == *(a1 + 8))
      {
        v58 = static PType.Metadata.none;
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v54);
        v46 = v58;
      }

      if (*a1)
      {
        v55 = *(a1 + 12);
        v56 = *a1 + 120 * v55;
        *v56 = v21;
        *(v56 + 8) = 0;
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 32) = 3;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        *(v56 + 56) = v51;
        *(v56 + 60) = -1;
        *(v56 + 64) = v46;
        *(v56 + 80) = v47;
        *(v56 + 88) = v48;
        *(v56 + 96) = v49;
        *(v56 + 100) = v50;
        *(v56 + 104) = 0;
        *(v56 + 108) = v52;
        *(v56 + 112) = 0;
        *(v56 + 116) = v53;
        *(v56 + 117) = 6;
        if (v55 != -1)
        {
          *(a1 + 12) = v55 + 1;
          return v55;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t PType.Parser.parseNamedType(within:)(unint64_t result)
{
  v127 = result;
  v3 = v1[3];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v117 = v2;
  v1[3] = v5;
  v7 = *v1;
  v6 = v1[1];
  v126 = v1;
  v8 = v1[2];
  v9 = (v6 & 0x2000000000000000) == 0;
  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 4 * v10;
  if (4 * v10 < v8 >> 14)
  {
    goto LABEL_152;
  }

  v125 = 0;
  v12 = ("ge: " >> 40) & 0xF0000;
  if (("ge: " & 0x2000000000000000) == 0)
  {
    v12 = 1310720;
  }

  v120 = v12;
  v13 = 11;
  if (("ge: " & 0x1000000000000000) == 0)
  {
    v13 = 7;
  }

  v119 = v13;
  v14 = MEMORY[0x277D84F90];
  while (2)
  {
    v132 = v11;
    v131 = v9;

    v15 = String.UnicodeScalarView.subscript.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    LOBYTE(v15) = specialized Sequence<>.starts<A>(with:)(0xD000000000000014, 0x800000026C33B950, v15, v17, v19, v21);

    if (v15)
    {
      LOBYTE(v137) = 1;
      v22 = specialized static PType.Parser.parseInvalidType(within:reason:)(v127, &v137);
      v23 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v120 | v119, 0xD000000000000014, 0x800000026C33B950);
      v24 = String.UnicodeScalarView.index(_:offsetBy:)(v8, v23, v7, v6);
      v25 = v126;
      v126[2] = v24;
      goto LABEL_111;
    }

    v26 = specialized Collection.subscript.getter(v8, v7, v6);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v28 >> 14;
    v34 = v26 >> 14;
    v40 = v26 >> 14 == v28 >> 14;
    v161 = v14;
    v35 = v7;
    if (v40)
    {
      goto LABEL_75;
    }

    v36 = (v30 >> 59) & 1;
    if ((v32 & 0x1000000000000000) == 0)
    {
      LOBYTE(v36) = 1;
    }

    v37 = 4 << v36;
    v38 = HIBYTE(v32) & 0xF;
    v118 = v26;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v38 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v129 = v33;
    v130 = v38;
    v134 = v37;
    while (1)
    {
      v39 = v26 & 0xC;
      v40 = (v26 & 1) == 0 || v39 == v37;
      v41 = v40;
      if (v40)
      {
        result = v26;
        if (v39 == v37)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v26, v30, v32);
          v37 = v134;
          v33 = v129;
        }

        if (result >> 14 < v34 || result >> 14 >= v33)
        {
          goto LABEL_154;
        }

        if ((result & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(result, v30, v32);
          v37 = v134;
        }
      }

      else
      {
        if (v26 >> 14 < v34)
        {
          goto LABEL_153;
        }

        result = v26;
        if (v26 >> 14 >= v33)
        {
          goto LABEL_153;
        }
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v37 = v134;
        if (result > 0x3E)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v128 = v41;
      v42 = v34;
      v43 = result >> 16;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v137 = v30;
        v138 = v32 & 0xFFFFFFFFFFFFFFLL;
        v44 = &v137 + v43;
        result = *(&v137 + v43);
        if ((*(&v137 + v43) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v49 = (__clz(result ^ 0xFF) - 24);
        if (v49 <= 2)
        {
          if (v49 != 1)
          {
            result = v44[1] & 0x3F | ((result & 0x1F) << 6);
          }

LABEL_45:
          v34 = v42;
          goto LABEL_46;
        }

        v34 = v42;
        if (v49 == 3)
        {
          v50 = v44[1];
          v51 = v44[2];
          v52 = ((result & 0xF) << 12) | ((v50 & 0x3F) << 6);
        }

        else
        {
          v53 = v44[1];
          v54 = v44[2];
          v51 = v44[3];
          v52 = ((result & 0xF) << 18) | ((v53 & 0x3F) << 12) | ((v54 & 0x3F) << 6);
        }

        result = v52 & 0xFFFFFFC0 | v51 & 0x3F;
      }

      else
      {
        if ((v30 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        result = _decodeScalar(_:startingAt:)();
        v34 = v42;
        v37 = v134;
      }

LABEL_46:
      v41 = v128;
      if (result > 0x3E)
      {
        goto LABEL_48;
      }

LABEL_47:
      if (((1 << result) & 0x5000520100000000) != 0)
      {
        break;
      }

LABEL_48:
      if (result == 125)
      {
        break;
      }

      if (v41)
      {
        if (v39 == v37)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v26, v30, v32);
          v37 = v134;
          v26 = result;
        }

        v14 = v161;
        if (v130 <= v26 >> 16)
        {
          goto LABEL_156;
        }

        if ((v26 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v26, v30, v32);
          v37 = v134;
          v26 = v26 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v14 = v161;
        if (v130 <= v26 >> 16)
        {
          goto LABEL_157;
        }
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v37 = v134;
        v26 = result;
        v33 = v129;
        if (v129 == result >> 14)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v45 = v26 >> 16;
        v33 = v129;
        if ((v32 & 0x2000000000000000) != 0)
        {
          v137 = v30;
          v138 = v32 & 0xFFFFFFFFFFFFFFLL;
          v46 = *(&v137 + v45);
        }

        else
        {
          result = (v32 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v30 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v37 = v134;
            v33 = v129;
          }

          v46 = *(result + v45);
        }

        v47 = v46;
        v48 = __clz(v46 ^ 0xFF) - 24;
        if (v47 >= 0)
        {
          LOBYTE(v48) = 1;
        }

        v26 = ((v45 + v48) << 16) | 5;
        if (v33 == v26 >> 14)
        {
          goto LABEL_74;
        }
      }
    }

    v14 = v161;
LABEL_74:
    result = v118;
    if (v34 > v26 >> 14)
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

LABEL_75:
    v55 = Substring.UnicodeScalarView.subscript.getter();
    v22 = v56;
    v58 = v57;
    v60 = v59;

    v61 = Substring.UnicodeScalarView.distance(from:to:)();
    v62 = String.UnicodeScalarView.index(_:offsetBy:)(v8, v61, v35, v6);
    v25 = v126;
    v126[2] = v62;
    if (v132 == v62 >> 14)
    {
      goto LABEL_105;
    }

    v63 = v62;
    v64 = _StringGuts.validateScalarIndex(_:)(v62, v35, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 60)
      {
        goto LABEL_105;
      }

      _StringGuts.validateScalarIndex(_:)(v63, v35, v6);
      v87 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_97;
    }

    v135 = v35;
    v65 = v55;
    v66 = v22;
    v67 = v58;
    v68 = v64 >> 16;
    if (!v131)
    {
      v137 = v135;
      v138 = v6 & 0xFFFFFFFFFFFFFFLL;
      v70 = &v137 + v68;
      v78 = *(&v137 + v68);
      v72 = *(&v137 + v68);
      v58 = v67;
      v22 = v66;
      v55 = v65;
      if ((v78 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      v73 = (__clz(v72 ^ 0xFF) - 24);
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v79 = v70[1];
          v80 = v70[2];
          v81 = ((v72 & 0xF) << 12) | ((v79 & 0x3F) << 6);
        }

        else
        {
          v84 = v70[1];
          v85 = v70[2];
          v80 = v70[3];
          v81 = ((v72 & 0xF) << 18) | ((v84 & 0x3F) << 12) | ((v85 & 0x3F) << 6);
        }

        v72 = v81 & 0xFFFFFFC0 | v80 & 0x3F;
        goto LABEL_95;
      }

LABEL_86:
      if (v73 != 1)
      {
        v72 = v70[1] & 0x3F | ((v72 & 0x1F) << 6);
      }

LABEL_95:
      v74 = v135;
      if (v72 != 60)
      {
        goto LABEL_105;
      }

      goto LABEL_96;
    }

    if ((v135 & 0x1000000000000000) != 0)
    {
      v69 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v69 = _StringObject.sharedUTF8.getter();
    }

    v70 = (v69 + v68);
    v71 = *(v69 + v68);
    v72 = *(v69 + v68);
    v58 = v67;
    v22 = v66;
    v55 = v65;
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    v73 = (__clz(v72 ^ 0xFF) - 24);
    if (v73 <= 2)
    {
      goto LABEL_86;
    }

    v74 = v135;
    if (v73 == 3)
    {
      v75 = v70[1];
      v76 = v70[2];
      v77 = ((v72 & 0xF) << 12) | ((v75 & 0x3F) << 6);
    }

    else
    {
      v82 = v70[1];
      v83 = v70[2];
      v76 = v70[3];
      v77 = ((v72 & 0xF) << 18) | ((v82 & 0x3F) << 12) | ((v83 & 0x3F) << 6);
    }

    if ((v77 & 0xFFFFFFC0 | v76 & 0x3F) != 0x3C)
    {
LABEL_105:
      v91 = MEMORY[0x277D84F90];
      goto LABEL_106;
    }

LABEL_96:
    v86 = _StringGuts.validateScalarIndex(_:)(v63, v74, v6);
    v87 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v86 >> 16) + (v86 >> 16)) << 16) | 5;
LABEL_97:
    v126[2] = v87;
    v88 = PType.Parser.parseTypeList(delimeter:within:)(62, v127);
    if (!v117)
    {
      v117 = 0;
      v89 = *(v88 + 2);
      if (!v89)
      {

        goto LABEL_105;
      }

      v133 = v60;
      v137 = MEMORY[0x277D84F90];
      v136 = v88;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
      v90 = v136;
      v91 = v137;
      v92 = *(v137 + 16);
      v93 = 52;
      do
      {
        v94 = *&v90[v93];
        v137 = v91;
        v95 = *(v91 + 24);
        if (v92 >= v95 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v92 + 1, 1);
          v90 = v136;
          v91 = v137;
        }

        *(v91 + 16) = v92 + 1;
        *(v91 + 4 * v92 + 32) = v94;
        v93 += 24;
        ++v92;
        --v89;
      }

      while (v89);

      v25 = v126;
      v14 = v161;
      v60 = v133;
LABEL_106:
      v141 = 0;
      v142 = 0xE000000000000000;
      v137 = v55;
      v138 = v22;
      v139 = v58;
      v140 = v60;
      lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v97 = v141;
      v96 = v142;

      if (v125)
      {
        outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
      }

      LOBYTE(v137) = 1;
      LOBYTE(v141) = 1;
      v98 = one-time initialization token for none;

      if (v98 != -1)
      {
        swift_once();
      }

      *&v143 = v97;
      *(&v143 + 1) = v96;
      v144 = v91;
      v145 = v14;
      v125 = 1;
      v146 = 1;
      v147 = 0;
      v148 = 0;
      v149 = v137;
      v150 = -1;
      v151 = static PType.Metadata.none;
      v152 = qword_280481CC8;
      v153 = qword_280481CD0;
      v154 = dword_280481CD8;
      v155 = byte_280481CDC;
      v156 = 0;
      v157 = v141;
      v158 = 0;
      v159 = 1;
      v160 = 6;
      v22 = closure #1 in findOrAdd #1 (proposed:) in PType.Parser.parseNamedType(within:)(v127, &v143);

      outlined destroy of PType(&v143);
      v24 = v25[2];
      v121 = v97;
      v122 = v96;
      v123 = v91;
      v124 = v14;
LABEL_111:
      v100 = *v25;
      v99 = v25[1];
      v101 = HIBYTE(v99) & 0xF;
      if ((v99 & 0x2000000000000000) == 0)
      {
        v101 = *v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v24 >> 14 == 4 * v101)
      {
        goto LABEL_143;
      }

      v102 = _StringGuts.validateScalarIndex(_:)(v24, *v25, v25[1]);
      if ((v99 & 0x1000000000000000) == 0)
      {
        v103 = v102 >> 16;
        if ((v99 & 0x2000000000000000) != 0)
        {
          v137 = v100;
          v138 = v99 & 0xFFFFFFFFFFFFFFLL;
          v105 = &v137 + v103;
        }

        else
        {
          if ((v100 & 0x1000000000000000) != 0)
          {
            v104 = (v99 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v104 = _StringObject.sharedUTF8.getter();
          }

          v105 = (v104 + v103);
        }

        v106 = *v105;
        if (*v105 < 0)
        {
          v112 = (__clz(v106 ^ 0xFF) - 24);
          if (v112 > 2)
          {
            if (v112 == 3)
            {
              v106 = ((v106 & 0xF) << 12) | ((v105[1] & 0x3F) << 6) | v105[2] & 0x3F;
            }

            else
            {
              v106 = ((v106 & 0xF) << 18) | ((v105[1] & 0x3F) << 12) | ((v105[2] & 0x3F) << 6) | v105[3] & 0x3F;
            }
          }

          else if (v112 != 1)
          {
            v106 = v105[1] & 0x3F | ((v106 & 0x1F) << 6);
          }
        }

        if (v106 == 46)
        {
          v107 = _StringGuts.validateScalarIndex(_:)(v24, v100, v99) >> 16;
          v108 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v107) + v107) << 16) | 5;
          goto LABEL_123;
        }

LABEL_143:

        if (v125)
        {
          result = outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
        }

        v113 = v25[3];
        v4 = __OFSUB__(v113, 1);
        v114 = v113 - 1;
        if (!v4)
        {
          v25[3] = v114;
          return v22;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        return result;
      }

      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 46)
      {
        goto LABEL_143;
      }

      _StringGuts.validateScalarIndex(_:)(v24, v100, v99);
      v108 = String.UnicodeScalarView._foreignIndex(after:)();
LABEL_123:
      v25[2] = v108;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v110 = *(v14 + 16);
      v109 = *(v14 + 24);
      if (v110 >= v109 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v110 + 1;
      *(v14 + 4 * v110 + 32) = v22;
      v7 = *v25;
      v6 = v25[1];
      v8 = v25[2];
      v9 = (v6 & 0x2000000000000000) == 0;
      v111 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v111 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v11 = 4 * v111;
      if (4 * v111 < v8 >> 14)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

  if (v125)
  {
    result = outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
  }

  v115 = v126[3];
  v4 = __OFSUB__(v115, 1);
  v116 = v115 - 1;
  if (v4)
  {
    goto LABEL_160;
  }

  v126[3] = v116;
  return v22;
}

char *PType.Parser.parseTuple(within:)(unint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = specialized Collection.subscript.getter(v6, *v1, v5);
  v11 = specialized Sequence<>.starts<A>(with:)(0x7B6B636150uLL, 0xE500000000000000, v7, v8, v9, v10);

  v12 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
  if ((v5 & 0x1000000000000000) == 0)
  {
    v13 = v12 >> 16;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      v15 = v36 + v13;
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v14 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = (v14 + v13);
    }

    v16 = *v15;
    if (*v15 < 0)
    {
      v32 = (__clz(v16 ^ 0xFF) - 24);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v16 = ((v16 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
        }

        else
        {
          v16 = ((v16 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
        }
      }

      else if (v32 != 1)
      {
        v16 = v15[1] & 0x3F | ((v16 & 0x1F) << 6);
      }
    }

    if ((v16 == 40) | v11 & 1)
    {
      v17 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5) >> 16;
      v18 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v17) + v17) << 16) | 5;
      goto LABEL_10;
    }

    return PType.Parser.parseProto(within:)(a1);
  }

  if (!((_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == 40) | v11 & 1))
  {
    return PType.Parser.parseProto(within:)(a1);
  }

  _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
  v18 = String.UnicodeScalarView._foreignIndex(after:)();
LABEL_10:
  v1[2] = v18;
  if (v11)
  {
    v19 = 125;
  }

  else
  {
    v19 = 41;
  }

  result = PType.Parser.parseTypeList(delimeter:within:)(v19, a1);
  if (!v2)
  {
    LOBYTE(v36[0]) = 1;
    v38 = 1;
    v37 = 1;
    if (one-time initialization token for none != -1)
    {
      v33 = result;
      swift_once();
      result = v33;
    }

    v21 = static PType.Metadata.none;
    v22 = qword_280481CC8;
    v23 = qword_280481CD0;
    v24 = dword_280481CD8;
    v25 = byte_280481CDC;
    v26 = v36[0];
    v27 = v38;
    v28 = v37;
    v29 = *(a1 + 12);
    if (v29 == *(a1 + 8))
    {
      v34 = result;
      v35 = static PType.Metadata.none;
      specialized UnsafeArray.growToCapacity(_:)(2 * v29);
      v21 = v35;
      result = v34;
    }

    if (*a1)
    {
      v30 = *(a1 + 12);
      v31 = *a1 + 120 * v30;
      *v31 = result;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 2;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = v26;
      *(v31 + 60) = -1;
      *(v31 + 64) = v21;
      *(v31 + 80) = v22;
      *(v31 + 88) = v23;
      *(v31 + 96) = v24;
      *(v31 + 100) = v25;
      *(v31 + 104) = 0;
      *(v31 + 108) = v27;
      *(v31 + 112) = 0;
      *(v31 + 116) = v28;
      *(v31 + 117) = 6;
      if (v30 != -1)
      {
        *(a1 + 12) = v30 + 1;
        return v30;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

char *PType.Parser.parseTypeList(delimeter:within:)(int a1, _OWORD *a2)
{
  v4 = v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v2;
    v7 = v2[1];
    v9 = v2[2];
    v10 = _StringGuts.validateScalarIndex(_:)(v9, *v2, v7);
    if ((v7 & 0x1000000000000000) != 0)
    {
      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == a1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v11 = v10 >> 16;
      if ((v7 & 0x2000000000000000) != 0)
      {
        *&v62[0] = v8;
        *(&v62[0] + 1) = v7 & 0xFFFFFFFFFFFFFFLL;
        v13 = v62 + v11;
      }

      else
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v12 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v12 = _StringObject.sharedUTF8.getter();
        }

        v13 = (v12 + v11);
      }

      v14 = *v13;
      if (*v13 < 0)
      {
        v19 = (__clz(v14 ^ 0xFF) - 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
          }

          else
          {
            v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
          }
        }

        else if (v19 != 1)
        {
          v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
        }
      }

      if (v14 == a1)
      {
        v42 = _StringGuts.validateScalarIndex(_:)(v9, v8, v7) >> 16;
        v2[2] = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v42) + v42) << 16) | 5;
        return v6;
      }
    }

    if (*(v6 + 2))
    {
      break;
    }

LABEL_26:
    v47 = v6;
    v63 = v4;
    v21 = a2[3];
    v22 = a2[5];
    v59 = a2[4];
    v60 = v22;
    v23 = a2[5];
    v61 = a2[6];
    v24 = a2[1];
    v56[0] = *a2;
    v56[1] = v24;
    v25 = a2[3];
    v27 = *a2;
    v26 = a2[1];
    v57 = a2[2];
    v58 = v25;
    v53 = v59;
    v54 = v23;
    v55 = a2[6];
    v49 = v27;
    v50 = v26;
    v51 = v57;
    v52 = v21;
    outlined init with copy of Interpreter.Storage.Types(v56, v48);
    v45 = PType.Parser.parseTupleTypeName(types:)();
    v46 = v28;
    v62[4] = v53;
    v62[5] = v54;
    v62[6] = v55;
    v62[0] = v49;
    v62[1] = v50;
    v62[2] = v51;
    v62[3] = v52;
    outlined destroy of Interpreter.Storage.Types(v62);
    v29 = v2[2];

    specialized Collection.subscript.getter(v29, v8, v7);

    String.init(_:)();
    v30._countAndFlagsBits = 0x2074756F6E69;
    v30._object = 0xE600000000000000;
    v31 = String.hasPrefix(_:)(v30);

    if (v31)
    {
      v32 = String.count.getter();
      v2[2] = String.UnicodeScalarView.index(_:offsetBy:)(v29, v32, v8, v7);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v34 = v63;
    v35 = PType.Parser.parseFunctional(within:)(a2);
    v4 = v34;
    v6 = v47;
    if (v34)
    {

      return v6;
    }

    v36 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
    }

    v38 = *(v6 + 2);
    v37 = *(v6 + 3);
    v39 = v6;
    if (v38 >= v37 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v6);
    }

    *(v39 + 2) = v38 + 1;
    v6 = v39;
    v40 = &v39[24 * v38];
    *(v40 + 4) = v45;
    *(v40 + 5) = v46;
    v40[48] = v33;
    *(v40 + 13) = v36;
  }

  v15 = _StringGuts.validateScalarIndex(_:)(v9, v8, v7);
  if ((v7 & 0x1000000000000000) != 0)
  {
    v20 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    v16 = v15 >> 16;
    if ((v7 & 0x2000000000000000) != 0)
    {
      *&v62[0] = v8;
      *(&v62[0] + 1) = v7 & 0xFFFFFFFFFFFFFFLL;
      v18 = v62 + v16;
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v17 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v17 = _StringObject.sharedUTF8.getter();
      }

      v18 = (v17 + v16);
    }

    v20 = *v18;
    if (*v18 < 0)
    {
      v41 = (__clz(v20 ^ 0xFF) - 24);
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          v20 = ((v20 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
        }

        else
        {
          v20 = ((v20 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
        }
      }

      else if (v41 != 1)
      {
        v20 = v18[1] & 0x3F | ((v20 & 0x1F) << 6);
      }
    }
  }

  if (v20 == 44)
  {
    v2[2] = String.UnicodeScalarView.index(_:offsetBy:)(v9, 2, v8, v7);
    goto LABEL_26;
  }

  __break(1u);
LABEL_50:
  _StringGuts.validateScalarIndex(_:)(v9, v8, v7);
  v2[2] = String.UnicodeScalarView._foreignIndex(after:)();
  return v6;
}