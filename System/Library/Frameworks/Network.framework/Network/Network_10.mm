uint64_t sub_181B02578()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  sub_181A53008(v0[2], v0[3]);
  sub_181A52FE0(v1, v2);
  sub_181B03DAC(v3);

  return swift_deallocClassInstance();
}

void *sub_181B025F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838938, &qword_182AE6010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838940, &qword_182AE6018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t QUICConnectionProtocol.QUICConnectionOptions.__deallocating_deinit()
{
  QUICConnectionProtocol.QUICConnectionOptions.deinit();

  return swift_deallocClassInstance();
}

id *QUICConnectionProtocol.QUICConnectionOptions.deinit()
{
  swift_unknownObjectRelease();

  sub_181F49A88(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState, &unk_1EA8394B0, &unk_182AF9540);
  sub_181F49A88(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState, &unk_1EA8394B0, &unk_182AF9540);
  sub_181F49A88(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID, &unk_1EA8394B0, &unk_182AF9540);
  _Block_release(*(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock));

  _Block_release(*(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock));
  _Block_release(*(v0 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock));

  return v0;
}

void sub_181B02888(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 48);
  v194 = *(a1 + 32);
  v195 = v4;
  v196 = *(a1 + 64);
  v197 = *(a1 + 80);
  v5 = *(a1 + 16);
  v192 = *a1;
  v193 = v5;
  v143 = *(a1 + 88);
  v142 = *(a1 + 89);
  v141 = *(a1 + 90);
  v140 = *(a1 + 91);
  v148 = *(a1 + 92);
  v125 = *(a1 + 94);
  v6 = *(a1 + 96);
  v147 = *(a1 + 104);
  v7 = *(a1 + 112);
  v129 = *(a1 + 120);
  v133 = *(a1 + 128);
  v131 = *(a1 + 136);
  v8 = *(a1 + 152);
  v135 = *(a1 + 144);
  v144 = *(a1 + 160);
  *&v126 = *(a1 + 168);
  v9 = *a2;
  v10 = *(v2 + 48);
  v200 = *(v2 + 32);
  v201 = v10;
  v202 = *(v2 + 64);
  v203 = *(v2 + 80);
  v11 = *(v2 + 16);
  v198 = *v2;
  v199 = v11;
  v139 = *(v2 + 88);
  v138 = *(v2 + 89);
  v137 = *(v2 + 90);
  v136 = *(v2 + 91);
  v12 = *(v2 + 92);
  v124 = *(v2 + 94);
  v13 = *(v2 + 104);
  v14 = *(v2 + 112);
  v127 = *(v2 + 96);
  v128 = *(v2 + 120);
  *&v171 = *(v2 + 76);
  DWORD2(v171) = *(v2 + 84);
  *&v150 = *(a1 + 76);
  DWORD2(v150) = *(a1 + 84);
  v132 = *(v2 + 128);
  v130 = *(v2 + 136);
  v15 = *(v2 + 152);
  v134 = *(v2 + 144);
  v145 = *(v2 + 160);
  v146 = v13;
  *(&v126 + 1) = *(v2 + 168);
  if (sub_181B01C24(&v171, &v150))
  {
    v123 = v6;
    if (v9 == 3)
    {
      v16 = 0;
    }

    else
    {
      v18 = *(v2 + 48);
      v173 = *(v2 + 32);
      v174[0] = v18;
      *(v174 + 12) = *(v2 + 60);
      v19 = *(v2 + 16);
      v171 = *v2;
      v172 = v19;
      v20 = *(a1 + 48);
      v152 = *(a1 + 32);
      *v153 = v20;
      *&v153[12] = *(a1 + 60);
      v21 = *(a1 + 16);
      v150 = *a1;
      v151 = v21;
      if (!sub_181B038E8(&v171, &v150))
      {
        return;
      }

      v16 = v9 == 0;
      if (v9 <= 1 && !sub_181B03A20(v139 | (v138 << 8) | (v137 << 16) | (v136 << 24) | (v12 << 32), v143 | (v142 << 8) | (v141 << 16) | (v140 << 24) | (v148 << 32)))
      {
        return;
      }
    }

    if (nw_context_shares_workloop(*(v15 + 16), *(v8 + 16)))
    {
      if (v9 - 3 <= 1 && (v12 & 0x200) == 0 && (v148 & 0x200) == 0 || (v17 = *(v15 + 16), v17 == *(v8 + 16)) || !nw_context_get_isolate_protocol_cache(v17) && !nw_context_get_isolate_protocol_cache(*(v8 + 16)))
      {
        if (v14)
        {
          if (!v7 || (v146 != v147 || v14 != v7) && (sub_182AD4268() & 1) == 0)
          {
            return;
          }
        }

        else if (v7)
        {
          return;
        }

        if (v9 <= 2)
        {
          if (v134)
          {
            if (!v135 || (v130 != v131 || v134 != v135) && (sub_182AD4268() & 1) == 0)
            {
              return;
            }
          }

          else if (v135)
          {
            return;
          }

          if (v132)
          {
            if (!v133 || (v128 != v129 || v132 != v133) && (sub_182AD4268() & 1) == 0)
            {
              return;
            }
          }

          else if (v133)
          {
            return;
          }
        }

        v116 = v16;
        v22 = v145;
        if (v145 && (v23 = v145[6], v23 != 1))
        {
          v24 = v145[7];
          swift_unknownObjectRetain();
          v22 = v145;
          v25 = v144;
          if (!v144)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = v144;
          if (!v144)
          {
            goto LABEL_43;
          }
        }

        v26 = v25[6];
        if (v26 != 1)
        {
          v117 = v25[7];
          swift_unknownObjectRetain();
          v25 = v144;
          v22 = v145;
          if (v23)
          {
LABEL_44:
            if (v26)
            {
              ObjectType = swift_getObjectType();
              LOBYTE(v171) = 0;
              v28 = (*(v24 + 24))(v26, v117, &v171, ObjectType, v24);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v25 = v144;
              v22 = v145;
              if ((v28 & 1) == 0)
              {
                return;
              }

LABEL_50:
              if (v22)
              {
                v29 = v22[8];

                v30 = v123;
                if (!v144)
                {
                  if (v29)
                  {
                    goto LABEL_251;
                  }

                  goto LABEL_67;
                }

                v31 = v144[8];

                if (v29)
                {
                  if (!v31)
                  {
                    goto LABEL_251;
                  }

                  v32 = v29[3];
                  if (v32 != v31[3])
                  {
                    goto LABEL_250;
                  }

                  if (!v32 || v29 == v31)
                  {
                  }

                  else
                  {
                    v118 = sub_1822C3E68(v31, v29);

                    if ((v118 & 1) == 0)
                    {
                      return;
                    }
                  }

                  goto LABEL_67;
                }
              }

              else
              {
                v30 = v123;
                if (!v25)
                {
                  goto LABEL_67;
                }

                v31 = v25[8];
              }

              if (v31)
              {
                goto LABEL_251;
              }

LABEL_67:
              v33 = v127;
              if (v127)
              {
                v34 = *(v127 + 16);

                if (!v30)
                {
                  if (v34)
                  {
                    goto LABEL_89;
                  }

                  v55 = *(v127 + 24);

                  if (v55)
                  {
                    goto LABEL_251;
                  }

                  v56 = *(v127 + 32);

                  if (v56)
                  {
                    goto LABEL_251;
                  }

                  v57 = *(v127 + 40);

                  if (v57)
                  {
                    goto LABEL_251;
                  }

                  v58 = *(v127 + 48);

                  if (v58)
                  {
                    goto LABEL_251;
                  }

                  v59 = *(v127 + 56);

                  if (v59)
                  {
                    goto LABEL_251;
                  }

                  v60 = *(v127 + 64);

                  if (v60)
                  {
                    goto LABEL_251;
                  }

                  v61 = *(v127 + 72);

                  if (v61)
                  {
                    goto LABEL_251;
                  }

                  v62 = *(v127 + 80);

                  if (v62)
                  {
                    goto LABEL_251;
                  }

                  v63 = *(v127 + 88);

                  if (v63)
                  {
                    goto LABEL_251;
                  }

                  v46 = 1;
                  goto LABEL_112;
                }

                v35 = v30[2];

                if (v34)
                {
                  *&v171 = v34;
                  if (!v35)
                  {
                    goto LABEL_89;
                  }

                  *&v150 = v35;
                  v119 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v171, &v150);

                  if ((v119 & 1) == 0)
                  {
                    return;
                  }
                }

                else if (v35)
                {
                  goto LABEL_89;
                }

                v51 = *(v127 + 24);
                v52 = v30[3];

                if (v51)
                {
                  if (!v52)
                  {
                    goto LABEL_251;
                  }

                  v54 = v51[3];
                  if (v54 != v52[3])
                  {
                    goto LABEL_250;
                  }

                  if (!v54 || v51 == v52)
                  {
                  }

                  else
                  {
                    v120 = sub_181ED3C68(v52, v51, v53);

                    if (!v120)
                    {
                      return;
                    }
                  }
                }

                else if (v52)
                {
                  goto LABEL_251;
                }

                v74 = *(v127 + 32);

                v75 = v30[4];

                if (v74)
                {
                  if (!v75)
                  {
                    goto LABEL_251;
                  }

                  v77 = v74[3];
                  if (v77 != v75[3])
                  {
                    goto LABEL_250;
                  }

                  if (!v77 || v74 == v75)
                  {

                    v30 = v123;
                  }

                  else
                  {
                    v121 = sub_1822C492C(v75, v74, v76);

                    v30 = v123;
                    if (!v121)
                    {
                      return;
                    }
                  }
                }

                else if (v75)
                {
                  goto LABEL_251;
                }

                v79 = *(v127 + 40);

                v80 = v30[5];

                if (v79)
                {
                  if (!v80)
                  {
                    goto LABEL_251;
                  }

                  v82 = sub_182269920(v79, v80, v81);

                  if (!v82)
                  {
                    return;
                  }
                }

                else if (v80)
                {
                  goto LABEL_251;
                }

                v83 = *(v127 + 48);

                v84 = *(v123 + 48);

                if (v83)
                {
                  if (!v84)
                  {
                    goto LABEL_251;
                  }

                  v85 = v83[3];
                  if (v85 != v84[3])
                  {
                    goto LABEL_250;
                  }

                  if (v83 == v84 || !v85)
                  {
                  }

                  else
                  {
                    v86 = sub_1822C46C8(v84, v83);

                    if ((v86 & 1) == 0)
                    {
                      return;
                    }
                  }
                }

                else if (v84)
                {
                  goto LABEL_251;
                }

                v100 = *(v127 + 56);

                v101 = *(v123 + 56);

                if (v100)
                {
                  if (!v101)
                  {
                    goto LABEL_251;
                  }

                  v102 = v100[3];
                  if (v102 != v101[3])
                  {
                    goto LABEL_250;
                  }

                  if (v100 == v101 || !v102)
                  {
                  }

                  else
                  {
                    v103 = sub_1822C3FDC(v101, v100);

                    if ((v103 & 1) == 0)
                    {
                      return;
                    }
                  }
                }

                else if (v101)
                {
                  goto LABEL_251;
                }

                v104 = *(v127 + 64);

                v105 = *(v123 + 64);

                if (v104)
                {
                  if (!v105)
                  {
                    goto LABEL_251;
                  }

                  v106 = sub_182269784(v104, v105);

                  if ((v106 & 1) == 0)
                  {
                    return;
                  }
                }

                else if (v105)
                {
                  goto LABEL_251;
                }

                v107 = *(v127 + 72);

                v108 = *(v123 + 72);

                if (v107)
                {
                  if (!v108)
                  {
                    goto LABEL_251;
                  }

                  v109 = v107[3];
                  if (v109 != v108[3])
                  {
                    goto LABEL_250;
                  }

                  if (v107 == v108 || !v109)
                  {
                  }

                  else
                  {
                    v110 = sub_1822C3FDC(v108, v107);

                    if ((v110 & 1) == 0)
                    {
                      return;
                    }
                  }
                }

                else if (v108)
                {
                  goto LABEL_251;
                }

                v111 = *(v127 + 80);

                v112 = *(v123 + 80);

                if (v111)
                {
                  if (!v112)
                  {
                    goto LABEL_251;
                  }

                  v113 = sub_182269784(v111, v112);

                  if ((v113 & 1) == 0)
                  {
                    return;
                  }
                }

                else if (v112)
                {
                  goto LABEL_251;
                }

                v114 = *(v127 + 88);

                v45 = *(v123 + 88);

                if (v114)
                {
                  if (!v45)
                  {
                    goto LABEL_251;
                  }

                  v115 = v114[3];
                  if (v115 != v45[3])
                  {
                    goto LABEL_250;
                  }

                  if (v114 != v45 && v115)
                  {
                    v122 = sub_1822C3FDC(v45, v114);

                    v46 = 0;
                    v30 = v123;
                    v33 = v127;
                    if ((v122 & 1) == 0)
                    {
                      return;
                    }

                    goto LABEL_91;
                  }

                  goto LABEL_85;
                }
              }

              else
              {
                if (!v30)
                {
                  v46 = 1;
LABEL_91:
                  v173 = v200;
                  v174[0] = v201;
                  v174[1] = v202;
                  v175 = v203;
                  v171 = v198;
                  v172 = v199;
                  v176 = v139;
                  v177 = v138;
                  v178 = v137;
                  v179 = v136;
                  v180 = v12;
                  v181 = v124;
                  v182 = v33;
                  v183 = v146;
                  v184 = v14;
                  v185 = v128;
                  v186 = v132;
                  v187 = v130;
                  v188 = v134;
                  v189 = v15;
                  v190 = v145;
                  v191 = *(&v126 + 1);
                  sub_1822696A8();
                  v48 = v47;
                  v152 = v194;
                  *v153 = v195;
                  *&v153[16] = v196;
                  v154 = v197;
                  v150 = v192;
                  v151 = v193;
                  v155 = v143;
                  v156 = v142;
                  v157 = v141;
                  v158 = v140;
                  v159 = v148;
                  v160 = v125;
                  v161 = v30;
                  v162 = v147;
                  v163 = v7;
                  v164 = v129;
                  v165 = v133;
                  v166 = v131;
                  v167 = v135;
                  v168 = v8;
                  v169 = v144;
                  v170 = v126;
                  sub_1822696A8();
                  if (v48)
                  {
                    if (!v49)
                    {
                      goto LABEL_251;
                    }

                    v50 = sub_182269784(v48, v49);

                    if ((v50 & 1) == 0)
                    {
                      return;
                    }
                  }

                  else if (v49)
                  {
                    goto LABEL_251;
                  }

                  if (!v127)
                  {
                    if (v46)
                    {
LABEL_124:
                      LOBYTE(v66) = 1;
                      goto LABEL_125;
                    }

                    v78 = v30[13];

                    if (v78)
                    {
                      goto LABEL_251;
                    }

                    v66 = *(v123 + 112);

                    if (v66)
                    {
                      goto LABEL_251;
                    }

                    if ((*(v123 + 152) & 1) == 0)
                    {
                      return;
                    }

LABEL_125:
                    if (v145)
                    {
                      v67 = v145[3];
                      v68 = v67 & 0xF000000000000007;
                      if (v144 && v68 != 0xF000000000000007)
                      {
                        v69 = v144[3];
                        if ((~v69 & 0xF000000000000007) == 0)
                        {
                          return;
                        }

                        v70 = v144[2];
                        *&v171 = v145[2];
                        *(&v171 + 1) = v67;
                        *&v150 = v70;
                        *(&v150 + 1) = v69;
                        v149 = v9;
                        if ((sub_181B0227C(&v150, &v149) & 1) == 0)
                        {
                          return;
                        }

LABEL_171:
                        if (v144)
                        {
                          v87 = v145[5];
                          if ((v87 & 0xF000000000000007) != 0xF000000000000007)
                          {
                            v88 = v144[5];
                            if ((~v88 & 0xF000000000000007) != 0)
                            {
                              v94 = v144[4];
                              *&v171 = v145[4];
                              *(&v171 + 1) = v87;
                              *&v150 = v94;
                              *(&v150 + 1) = v88;
                              v149 = v9;
                              if ((sub_181B03A70(&v150, &v149) & 1) == 0)
                              {
                                return;
                              }

                              goto LABEL_194;
                            }
                          }
                        }

                        if ((~v145[5] & 0xF000000000000007) != 0)
                        {
                          return;
                        }

LABEL_175:
                        if (v144 && (~v144[5] & 0xF000000000000007) != 0)
                        {
                          return;
                        }

LABEL_194:
                        if (*(&v126 + 1) && v126)
                        {
                          LODWORD(v171) = 31;
                          v95 = *(&v126 + 1);
                          v96 = v126;
                          v97 = sub_181B0A11C(v96, &v171);

                          if ((v97 & 1) == 0)
                          {
                            return;
                          }
                        }

                        else if (v116 && v126 != 0)
                        {
                          return;
                        }

                        if (v127)
                        {
                          v98 = *(v127 + 16);

                          if (v66)
                          {
                            if (!v98)
                            {
                              return;
                            }

                            goto LABEL_250;
                          }

                          v99 = *(v123 + 16);

                          if (v98)
                          {
                            *&v171 = v98;
                            if (v99)
                            {
                              *&v150 = v99;
                              _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v171, &v150);

                              return;
                            }

LABEL_250:

                            goto LABEL_251;
                          }
                        }

                        else
                        {
                          if (v66)
                          {
                            return;
                          }

                          v99 = *(v123 + 16);
                        }

                        if (!v99)
                        {
                          return;
                        }

                        goto LABEL_250;
                      }

                      if (v68 != 0xF000000000000007)
                      {
                        return;
                      }
                    }

                    if (v144 && (~v144[3] & 0xF000000000000007) != 0)
                    {
                      return;
                    }

                    if (!v145)
                    {
                      goto LABEL_175;
                    }

                    goto LABEL_171;
                  }

                  v64 = *(v127 + 104);

                  if (v46)
                  {
                    if (v64)
                    {
                      goto LABEL_251;
                    }

                    v65 = *(v127 + 112);

                    if (v65)
                    {
                      goto LABEL_251;
                    }

                    if ((*(v127 + 152) & 1) == 0)
                    {
                      return;
                    }

                    goto LABEL_124;
                  }

                  v71 = v30[13];

                  if (!v64)
                  {
                    if (v71)
                    {
                      goto LABEL_251;
                    }

                    goto LABEL_180;
                  }

                  if (!v71)
                  {
                    goto LABEL_251;
                  }

                  v72 = v64[3];
                  if (v72 == v71[3])
                  {
                    if (v64 == v71 || !v72)
                    {
                    }

                    else
                    {
                      v73 = sub_1822C3FDC(v71, v64);

                      if ((v73 & 1) == 0)
                      {
                        return;
                      }
                    }

LABEL_180:
                    v89 = *(v127 + 112);

                    v90 = *(v123 + 112);

                    if (!v89)
                    {
                      if (v90)
                      {
                        goto LABEL_251;
                      }

                      goto LABEL_186;
                    }

                    if (v90)
                    {
                      v91 = sub_182269784(v89, v90);

                      if ((v91 & 1) == 0)
                      {
                        return;
                      }

LABEL_186:
                      v92 = *(v123 + 152);
                      if ((*(v127 + 152) & 1) == 0)
                      {
                        v93 = *(v123 + 136);
                        v171 = *(v127 + 136);
                        LOBYTE(v172) = 0;
                        if (v92)
                        {
                          return;
                        }

                        v150 = v93;
                        v92 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v171, &v150);
                      }

                      LOBYTE(v66) = 0;
                      if ((v92 & 1) == 0)
                      {
                        return;
                      }

                      goto LABEL_125;
                    }

LABEL_251:

                    return;
                  }

LABEL_89:

                  goto LABEL_251;
                }

                v36 = v30[2];

                if (v36)
                {
                  goto LABEL_89;
                }

                v37 = v30[3];

                if (v37)
                {
                  goto LABEL_251;
                }

                v38 = v30[4];

                if (v38)
                {
                  goto LABEL_251;
                }

                v39 = v30[5];

                if (v39)
                {
                  goto LABEL_251;
                }

                v40 = *(v123 + 48);

                if (v40)
                {
                  goto LABEL_251;
                }

                v41 = *(v123 + 56);

                if (v41)
                {
                  goto LABEL_251;
                }

                v42 = *(v123 + 64);

                if (v42)
                {
                  goto LABEL_251;
                }

                v43 = *(v123 + 72);

                if (v43)
                {
                  goto LABEL_251;
                }

                v44 = *(v123 + 80);

                if (v44)
                {
                  goto LABEL_251;
                }

                v45 = *(v123 + 88);
              }

              if (v45)
              {
                goto LABEL_251;
              }

LABEL_85:
              v46 = 0;
LABEL_112:
              v30 = v123;
              v33 = v127;
              goto LABEL_91;
            }

LABEL_49:
            swift_unknownObjectRelease();
            return;
          }

LABEL_48:
          if (!v26)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

LABEL_43:
        v26 = 0;
        v117 = 0;
        if (v23)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }
    }
  }
}

BOOL sub_181B038E8(uint64_t a1, uint64_t a2)
{
  v23 = *a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 68);
  v10 = *(a1 + 72);
  v25 = *a2;
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = v7;
  v14 = *(a2 + 64);
  v21 = *(a2 + 68);
  v22 = v9;
  v19 = *(a2 + 72);
  v20 = v10;
  if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v23, &v25))
  {
    return 0;
  }

  v23 = *(a1 + 16);
  v25 = *(a2 + 16);
  if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v23, &v25))
  {
    return 0;
  }

  if (v6)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    *&v23 = v4;
    *(&v23 + 1) = v5;
    v24 = 0;
    if (v13)
    {
      return 0;
    }

    *&v25 = v12;
    *(&v25 + 1) = v11;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v23, &v25))
    {
      return 0;
    }
  }

  if (v8)
  {
    if (v22 == v21)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15 != 1)
    {
      return 0;
    }

    return v20 == v19;
  }

  result = 0;
  if ((v14 & 1) == 0 && v18 == v17 && v22 == v21)
  {
    return v20 == v19;
  }

  return result;
}

uint64_t sub_181B03A70(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *v2;
  v5 = *(v2 + 8);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v7 = *a2;
        ObjectType = swift_getObjectType();
        v31[0] = v7;
        v9 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_181B2C3E0(v4, v3);
        sub_181B2C3E0(v6, v5);
        v10 = v9(v4, v3 & 0x3FFFFFFFFFFFFFFFLL, v31, ObjectType, v5 & 0x3FFFFFFFFFFFFFFFLL);
        sub_181AAD084(v6, v5);
        sub_181AAD084(v4, v3);
        return v10 & 1;
      }

      goto LABEL_11;
    }

    if (v3 >> 62)
    {
      if (v3 >> 62 != 1)
      {
        sub_181AAD084(*v2, *(v2 + 8));
        sub_181AAD084(v4, v3);
        v10 = 1;
        return v10 & 1;
      }

      goto LABEL_11;
    }

    sub_181B2C3E0(*a1, v3);

    sub_181AAD084(v6, v5);
    sub_181AAD084(v4, v3);
    v18 = (v4 + *(*v4 + 128));
    swift_beginAccess();
    v19 = *v18 | (*(v18 + 4) << 32);
    if (v19 == 3)
    {
      goto LABEL_12;
    }

    v20 = vdupq_n_s64(v19);
    v26 = vshlq_u64(v20, xmmword_182AE69D0);
    v25 = vshlq_u64(v20, xmmword_182AE69E0);
    sub_181AAD084(v4, v3);
    v29 = v19;
    goto LABEL_20;
  }

  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
LABEL_11:
      sub_181B2C3E0(*a1, v3);
      sub_181B2C3E0(v6, v5);
      sub_181AAD084(v6, v5);
LABEL_12:
      v14 = v4;
      v15 = v3;
      goto LABEL_13;
    }

    sub_181B2C3E0(*v2, *(v2 + 8));

    sub_181AAD084(v11, v5);
    sub_181AAD084(v4, v3);
    v12 = (v6 + *(*v6 + 128));
    swift_beginAccess();
    v13 = *v12 | (*(v12 + 4) << 32);
    if (v13 == 3)
    {
      v14 = v6;
      v15 = v5;
LABEL_13:
      sub_181AAD084(v14, v15);
      v10 = 0;
      return v10 & 1;
    }

    v21 = vdupq_n_s64(v13);
    v26 = vshlq_u64(v21, xmmword_182AE69D0);
    v25 = vshlq_u64(v21, xmmword_182AE69E0);
    sub_181AAD084(v6, v5);
    v29 = v13;
LABEL_20:
    v22.i64[1] = v26.i64[1];
    v23 = vmovn_s64(v25);
    *v22.i8 = vmovn_s64(v26);
    v22.i16[1] = v22.i16[2];
    v22.i16[2] = v23.i16[0];
    v22.i16[3] = v23.i16[2];
    v24 = vmovn_s16(v22);
    v30 = v24.i32[0];
    v28 = 0;
    v27 = 0;
    v10 = _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v29, &v27, v24, *v22.i8);
    return v10 & 1;
  }

  sub_181B2C3E0(*a1, v3);
  sub_181B2C3E0(v6, v5);
  v17 = sub_181CCAAA0(v4);
  sub_181AAD084(v6, v5);
  sub_181AAD084(v4, v3);
  return v17 & 1;
}

uint64_t sub_181B03DAC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_181B03DBC(uint64_t a1, int a2)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_182AD2738();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0, &unk_182AE6F10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54[-v15];
  v17 = *(*v2 + 136);
  swift_beginAccess();
  v18 = *(v3 + v17);
  v19 = *(*a1 + 136);
  swift_beginAccess();
  v20 = *(a1 + v19);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_22;
    }

    type metadata accessor for Endpoint(0);
    v21 = v20;
    v22 = v18;
    v23 = sub_182AD3978();

    if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v20)
  {
    goto LABEL_22;
  }

  v24 = *(*v3 + 176);
  swift_beginAccess();
  LODWORD(v24) = *(v3 + v24);
  v25 = *(*a1 + 176);
  swift_beginAccess();
  if (v24 != *(a1 + v25))
  {
    goto LABEL_22;
  }

  v26 = qword_1ED411A90;
  swift_beginAccess();
  sub_181AACF84(v3 + v26, v16);
  v27 = qword_1ED411A90;
  swift_beginAccess();
  v28 = *(v8 + 48);
  sub_181AACF84(v16, v10);
  sub_181AACF84(a1 + v27, &v10[v28]);
  v29 = v57;
  v30 = *(v58 + 48);
  if (v30(v10, 1, v57) == 1)
  {
    sub_181F49A88(v16, &qword_1EA838E00, &qword_182AFE8E0);
    if (v30(&v10[v28], 1, v29) == 1)
    {
      sub_181F49A88(v10, &qword_1EA838E00, &qword_182AFE8E0);
      goto LABEL_14;
    }

LABEL_12:
    sub_181F49A88(v10, &qword_1EA838AF0, &unk_182AE6F10);
    goto LABEL_22;
  }

  sub_181AACF84(v10, v13);
  if (v30(&v10[v28], 1, v29) == 1)
  {
    sub_181F49A88(v16, &qword_1EA838E00, &qword_182AFE8E0);
    (*(v58 + 8))(v13, v29);
    goto LABEL_12;
  }

  v31 = v58;
  (*(v58 + 32))(v56, &v10[v28], v29);
  sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0], MEMORY[0x1E69E84D8]);
  v32 = sub_182AD2F48();
  v33 = *(v31 + 8);
  v33(v56, v29);
  sub_181F49A88(v16, &qword_1EA838E00, &qword_182AFE8E0);
  v33(v13, v29);
  sub_181F49A88(v10, &qword_1EA838E00, &qword_182AFE8E0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  swift_beginAccess();
  v34 = *(v3 + 24);
  v35 = *(v3 + 32);
  v36 = *(v3 + 40);
  *v64 = *(v3 + 16);
  v65 = v34;
  v66 = v35;
  v67 = v36;
  swift_beginAccess();
  v37 = *(a1 + 24);
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  *v60 = *(a1 + 16);
  v61 = v37;
  v62 = v38;
  v63 = v39;
  LODWORD(v58) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v64, v60);
  v40 = v61;
  v57 = v62;
  LODWORD(v56) = v63;
  sub_181F49A24(v34, v35, v36);
  sub_181F49A24(v37, v38, v39);
  sub_181F48350(v40, v57, v56);
  sub_181F48350(v65, v66, v67);
  if ((v58 & 1) == 0)
  {
    goto LABEL_22;
  }

  v41 = *(*v3 + 128);
  swift_beginAccess();
  v42 = *(v3 + v41);
  if (!v42)
  {
    v52 = *(*a1 + 128);
    swift_beginAccess();
    if (!*(a1 + v52))
    {
      goto LABEL_24;
    }

LABEL_22:
    v51 = 0;
    return v51 & 1;
  }

  v43 = *(*a1 + 128);
  swift_beginAccess();
  v44 = *(a1 + v43);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = v55;
  if (v55 == 1)
  {
LABEL_24:
    v51 = 1;
    return v51 & 1;
  }

  if (!*(v42 + 112) || !*(v44 + 112))
  {
    goto LABEL_22;
  }

  v46 = *(v44 + 120);
  v47 = *(v42 + 120);
  ObjectType = swift_getObjectType();
  v59 = v45;
  v49 = *(v47 + 24);

  swift_unknownObjectRetain();
  v50 = swift_unknownObjectRetain();
  v51 = v49(v50, v46, &v59, ObjectType, v47);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v51 & 1;
}

nw_protocol_definition_t nw_protocol_options_copy_definition(nw_protocol_options_t options)
{
  v15 = *MEMORY[0x1E69E9840];
  if (options)
  {

    return _nw_protocol_options_copy_definition();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_copy_definition";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy_definition";
        v6 = "%{public}s called with null options";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_protocol_options_copy_definition";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_options_copy_definition";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy_definition";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t _nw_protocol_options_copy_definition_0(uint64_t a1)
{
  v2 = *(a1 + qword_1ED411A88);

  if (v2 == 1)
  {
    v3 = *(*a1 + 128);
    swift_beginAccess();
    v4 = *(a1 + v3);

    if (v4)
    {
      v5 = *(v4 + 24);
      swift_unknownObjectRetain();
LABEL_8:

      return v5;
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838DB8, &qword_182AE8EA0);
  v6 = sub_181AA8420();
  if (v6)
  {
    v5 = v6;

    goto LABEL_6;
  }

  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v9;
  v96 = v10;
  v97 = v11;
  sub_181F49A24(v9, v10, v11);
  if (qword_1ED40FE40 != -1)
  {
    swift_once();
  }

  v12 = *(&xmmword_1ED411BB8 + 1);
  v13 = unk_1ED411BC8;
  v14 = byte_1ED411BD0;
  *v90 = xmmword_1ED411BB8;
  v91 = *(&xmmword_1ED411BB8 + 1);
  v92 = unk_1ED411BC8;
  v93 = byte_1ED411BD0;
  v15 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v16 = v91;
  v17 = v92;
  v18 = v93;
  sub_181F49A24(v12, v13, v14);
  sub_181F48350(v16, v17, v18);
  sub_181F48350(v95, v96, v97);
  if (v15)
  {
    v5 = qword_1ED411BE8;
    if (qword_1ED411BE8)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v19;
  v96 = v20;
  v97 = v21;
  sub_181F49A24(v19, v20, v21);
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v22 = *(&xmmword_1ED40FF68 + 1);
  v23 = unk_1ED40FF78;
  v24 = byte_1ED40FF80;
  *v90 = xmmword_1ED40FF68;
  v91 = *(&xmmword_1ED40FF68 + 1);
  v92 = unk_1ED40FF78;
  v93 = byte_1ED40FF80;
  v25 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v26 = v91;
  v27 = v92;
  v28 = v93;
  sub_181F49A24(v22, v23, v24);
  sub_181F48350(v26, v27, v28);
  sub_181F48350(v95, v96, v97);
  if (v25)
  {
    v5 = qword_1ED40FF98;
    if (qword_1ED40FF98)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v29;
  v96 = v30;
  v97 = v31;
  sub_181F49A24(v29, v30, v31);
  if (qword_1ED4102F0 != -1)
  {
    swift_once();
  }

  v32 = *(&xmmword_1ED411D60 + 1);
  v33 = unk_1ED411D70;
  v34 = byte_1ED411D78;
  *v90 = xmmword_1ED411D60;
  v91 = *(&xmmword_1ED411D60 + 1);
  v92 = unk_1ED411D70;
  v93 = byte_1ED411D78;
  v35 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v36 = v91;
  v37 = v92;
  v38 = v93;
  sub_181F49A24(v32, v33, v34);
  sub_181F48350(v36, v37, v38);
  sub_181F48350(v95, v96, v97);
  if (v35)
  {
    v5 = qword_1ED411D90;
    if (qword_1ED411D90)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v39 = *(a1 + 24);
  v40 = *(a1 + 32);
  v41 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v39;
  v96 = v40;
  v97 = v41;
  sub_181F49A24(v39, v40, v41);
  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  v42 = *(&xmmword_1ED411C48 + 1);
  v43 = unk_1ED411C58;
  v44 = byte_1ED411C60;
  *v90 = xmmword_1ED411C48;
  v91 = *(&xmmword_1ED411C48 + 1);
  v92 = unk_1ED411C58;
  v93 = byte_1ED411C60;
  v45 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v46 = v91;
  v47 = v92;
  v48 = v93;
  sub_181F49A24(v42, v43, v44);
  sub_181F48350(v46, v47, v48);
  sub_181F48350(v95, v96, v97);
  if (v45)
  {
    v5 = qword_1ED411C78;
    if (qword_1ED411C78)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v49 = *(a1 + 24);
  v50 = *(a1 + 32);
  v51 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v49;
  v96 = v50;
  v97 = v51;
  sub_181F49A24(v49, v50, v51);
  if (qword_1ED40FDC8 != -1)
  {
    swift_once();
  }

  v52 = *(&xmmword_1ED40FDD0 + 1);
  v53 = unk_1ED40FDE0;
  v54 = byte_1ED40FDE8;
  *v90 = xmmword_1ED40FDD0;
  v91 = *(&xmmword_1ED40FDD0 + 1);
  v92 = unk_1ED40FDE0;
  v93 = byte_1ED40FDE8;
  v55 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v56 = v91;
  v57 = v92;
  v58 = v93;
  sub_181F49A24(v52, v53, v54);
  sub_181F48350(v56, v57, v58);
  sub_181F48350(v95, v96, v97);
  if (v55)
  {
    v5 = qword_1ED40FE00;
    if (qword_1ED40FE00)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v59 = *(a1 + 24);
  v60 = *(a1 + 32);
  v61 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v59;
  v96 = v60;
  v97 = v61;
  sub_181F49A24(v59, v60, v61);
  if (qword_1ED40FE60 != -1)
  {
    swift_once();
  }

  v62 = *(&xmmword_1ED40FE68 + 1);
  v63 = unk_1ED40FE78;
  v64 = byte_1ED40FE80;
  *v90 = xmmword_1ED40FE68;
  v91 = *(&xmmword_1ED40FE68 + 1);
  v92 = unk_1ED40FE78;
  v93 = byte_1ED40FE80;
  v65 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v66 = v91;
  v67 = v92;
  v68 = v93;
  sub_181F49A24(v62, v63, v64);
  sub_181F48350(v66, v67, v68);
  sub_181F48350(v95, v96, v97);
  if (v65)
  {
    v5 = qword_1ED40FE98;
    if (qword_1ED40FE98)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v69 = *(a1 + 24);
  v70 = *(a1 + 32);
  v71 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v69;
  v96 = v70;
  v97 = v71;
  sub_181F49A24(v69, v70, v71);
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v72 = *(&xmmword_1ED411BF0 + 1);
  v73 = unk_1ED411C00;
  v74 = byte_1ED411C08;
  *v90 = xmmword_1ED411BF0;
  v91 = *(&xmmword_1ED411BF0 + 1);
  v92 = unk_1ED411C00;
  v93 = byte_1ED411C08;
  v75 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v76 = v91;
  v77 = v92;
  v78 = v93;
  sub_181F49A24(v72, v73, v74);
  sub_181F48350(v76, v77, v78);
  sub_181F48350(v95, v96, v97);
  if (v75)
  {
    v5 = qword_1ED411C20;
    if (qword_1ED411C20)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  v79 = *(a1 + 24);
  v80 = *(a1 + 32);
  v81 = *(a1 + 40);
  *v94 = *(a1 + 16);
  v95 = v79;
  v96 = v80;
  v97 = v81;
  sub_181F49A24(v79, v80, v81);
  if (qword_1ED40FD30 != -1)
  {
    swift_once();
  }

  v82 = *(&xmmword_1ED411A98 + 1);
  v83 = unk_1ED411AA8;
  v84 = byte_1ED411AB0;
  *v90 = xmmword_1ED411A98;
  v91 = *(&xmmword_1ED411A98 + 1);
  v92 = unk_1ED411AA8;
  v93 = byte_1ED411AB0;
  v85 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v94, v90);
  v86 = v91;
  v87 = v92;
  v88 = v93;
  sub_181F49A24(v82, v83, v84);
  sub_181F48350(v86, v87, v88);
  result = sub_181F48350(v95, v96, v97);
  if ((v85 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0, &qword_182AE4BC0);
    v5 = sub_181AA8420();

    if (!v5)
    {
      return v5;
    }

LABEL_6:
    v7 = *(*v5 + 128);
    swift_beginAccess();
    v8 = *(v5 + v7);

    if (v8)
    {
      v5 = *(v8 + 24);
      swift_unknownObjectRetain();
      goto LABEL_8;
    }

    return 0;
  }

  v5 = qword_1ED411AC8;
  if (qword_1ED411AC8)
  {
LABEL_49:

    swift_unknownObjectRetain();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *a1)
{
  v402 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v329 = __nwlog_obj();
    *buf = 136446210;
    v387 = "nw_endpoint_handler_get_mode";
    v330 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v329, 16, "%{public}s called with null handler", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v385 = 0;
    if (__nwlog_fault(v330, type, &v385))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v331 = __nwlog_obj();
        v332 = type[0];
        if (os_log_type_enabled(v331, type[0]))
        {
          *buf = 136446210;
          v387 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v331, v332, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v385 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v331 = __nwlog_obj();
        v334 = type[0];
        v335 = os_log_type_enabled(v331, type[0]);
        if (backtrace_string)
        {
          if (v335)
          {
            *buf = 136446466;
            v387 = "nw_endpoint_handler_get_mode";
            v388 = 2082;
            v389 = backtrace_string;
            _os_log_impl(&dword_181A37000, v331, v334, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_324;
        }

        if (v335)
        {
          *buf = 136446210;
          v387 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v331, v334, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v331 = __nwlog_obj();
        v336 = type[0];
        if (os_log_type_enabled(v331, type[0]))
        {
          *buf = 136446210;
          v387 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v331, v336, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_324:
    if (v330)
    {
      free(v330);
    }

    mode = 0;
    v2 = 0;
LABEL_327:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v337 = gLogObj;
    v328 = v2;
    if (mode > 5)
    {
      v338 = "unknown-mode";
    }

    else
    {
      v338 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v387 = "nw_endpoint_flow_validate_delegation";
    v388 = 2082;
    v389 = v338;
    v390 = 2082;
    v391 = "flow";
    LODWORD(v351) = 32;
    v339 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v337, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v351);

    type[0] = OS_LOG_TYPE_ERROR;
    v385 = 0;
    if (__nwlog_fault(v339, type, &v385))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v340 = gLogObj;
        v341 = type[0];
        if (os_log_type_enabled(v340, type[0]))
        {
          if (mode > 5)
          {
            v342 = "unknown-mode";
          }

          else
          {
            v342 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v342;
          v390 = 2082;
          v391 = "flow";
          _os_log_impl(&dword_181A37000, v340, v341, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v385 == 1)
      {
        v343 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v340 = gLogObj;
        v344 = type[0];
        v345 = os_log_type_enabled(v340, type[0]);
        if (v343)
        {
          if (v345)
          {
            if (mode > 5)
            {
              v346 = "unknown-mode";
            }

            else
            {
              v346 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v387 = "nw_endpoint_flow_validate_delegation";
            v388 = 2082;
            v389 = v346;
            v390 = 2082;
            v391 = "flow";
            v392 = 2082;
            v393 = v343;
            _os_log_impl(&dword_181A37000, v340, v344, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v343);
          if (!v339)
          {
            goto LABEL_361;
          }

          goto LABEL_360;
        }

        if (v345)
        {
          if (mode > 5)
          {
            v349 = "unknown-mode";
          }

          else
          {
            v349 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v349;
          v390 = 2082;
          v391 = "flow";
          _os_log_impl(&dword_181A37000, v340, v344, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v340 = gLogObj;
        v347 = type[0];
        if (os_log_type_enabled(v340, type[0]))
        {
          if (mode > 5)
          {
            v348 = "unknown-mode";
          }

          else
          {
            v348 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v348;
          v390 = 2082;
          v391 = "flow";
          _os_log_impl(&dword_181A37000, v340, v347, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v339)
    {
LABEL_361:
      v20 = 0;
      goto LABEL_362;
    }

LABEL_360:
    free(v339);
    goto LABEL_361;
  }

  mode = v1->mode;

  if (mode != 2)
  {
    goto LABEL_327;
  }

  v375 = v2;
  v4 = v2;
  v5 = v4[4];
  v374 = v4;

  if (nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::onceToken != -1)
  {
    dispatch_once(&nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::onceToken, &__block_literal_global_211);
  }

  pid_to_uuid_mapping_failed = nw_parameters_get_pid_to_uuid_mapping_failed(v5);
  bundle_id_to_uuid_mapping_failed = nw_parameters_get_bundle_id_to_uuid_mapping_failed(v5);
  if ((pid_to_uuid_mapping_failed | bundle_id_to_uuid_mapping_failed))
  {
    v373 = v5;
    if ((pid_to_uuid_mapping_failed & bundle_id_to_uuid_mapping_failed) == 1)
    {
      v8 = _os_feature_enabled_impl();
      v9 = v4;
      v10 = *(v9 + 284);

      if (v8)
      {
        if ((v10 & 0x40) != 0)
        {
          goto LABEL_276;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        v12 = v9;

        v13 = v12;
        v14 = *(v9 + 284);

        if (v14)
        {
          v15 = "dry-run ";
        }

        else
        {
          v15 = "";
        }

        v369 = v11;
        v16 = nw_endpoint_handler_copy_endpoint(v13);
        v17 = v16;
        if (v16)
        {
          logging_description = _nw_endpoint_get_logging_description(v16);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v70 = v13;
        v71 = v70;
        v72 = v70[30];
        if (v72 > 5)
        {
          v73 = "unknown-state";
        }

        else
        {
          v73 = off_1E6A31048[v72];
        }

        v74 = v71;
        v75 = v74;
        v76 = v375->mode;
        if (v76 > 2)
        {
          switch(v76)
          {
            case 3:
              v77 = "proxy";
              goto LABEL_139;
            case 4:
              v77 = "fallback";
              goto LABEL_139;
            case 5:
              v77 = "transform";
              goto LABEL_139;
          }
        }

        else
        {
          switch(v76)
          {
            case 0:
              v77 = "path";
              goto LABEL_139;
            case 1:
              v77 = "resolver";
              goto LABEL_139;
            case 2:
              v77 = nw_endpoint_flow_mode_string(v74[33]);
LABEL_139:

              v122 = v75;
              os_unfair_lock_lock(v122 + 28);
              v123 = v122[8];
              os_unfair_lock_unlock(v122 + 28);

              v124 = v123;
              *buf = 136448514;
              v387 = "nw_endpoint_flow_validate_delegation";
              v388 = 2082;
              v389 = (v12 + 23);
              v390 = 2082;
              v391 = v15;
              v392 = 2082;
              v393 = logging_description;
              v394 = 2082;
              v395 = v73;
              v396 = 2082;
              v397 = v77;
              v398 = 2114;
              v399 = v124;
              v400 = 1024;
              *v401 = nw_parameters_get_pid(v373);
              *&v401[4] = 2082;
              *&v401[6] = nw_parameters_get_effective_bundle_id(v373);
              *&v401[14] = 2082;
              *&v401[16] = "I";
              v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v369, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s]", buf, 98);

              type[0] = OS_LOG_TYPE_ERROR;
              v385 = 0;
              if (!__nwlog_fault(v125, type, &v385))
              {
                goto LABEL_171;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v126 = gconnectionLogObj;
                v127 = type[0];
                if (os_log_type_enabled(v126, type[0]))
                {
                  id_string = nw_endpoint_handler_get_id_string(v122);
                  v129 = nw_endpoint_handler_dry_run_string(v122);
                  v356 = nw_endpoint_handler_copy_endpoint(v122);
                  v130 = nw_endpoint_get_logging_description(v356);
                  v131 = nw_endpoint_handler_state_string(v122);
                  v132 = nw_endpoint_handler_mode_string(v122);
                  v133 = v125;
                  v134 = nw_endpoint_handler_copy_current_path(v122);
                  pid = nw_parameters_get_pid(v373);
                  effective_bundle_id = nw_parameters_get_effective_bundle_id(v373);
                  *buf = 136448514;
                  v387 = "nw_endpoint_flow_validate_delegation";
                  v388 = 2082;
                  v389 = id_string;
                  v390 = 2082;
                  v391 = v129;
                  v392 = 2082;
                  v393 = v130;
                  v394 = 2082;
                  v395 = v131;
                  v396 = 2082;
                  v397 = v132;
                  v398 = 2114;
                  v399 = v134;
                  v400 = 1024;
                  *v401 = pid;
                  *&v401[4] = 2082;
                  *&v401[6] = effective_bundle_id;
                  *&v401[14] = 2082;
                  *&v401[16] = "I";
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s]", buf, 0x62u);

                  v125 = v133;
                }

LABEL_170:

LABEL_171:
                if (!v125)
                {
                  goto LABEL_276;
                }

                goto LABEL_172;
              }

              if (v385 != 1)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v126 = gconnectionLogObj;
                v149 = type[0];
                if (os_log_type_enabled(v126, type[0]))
                {
                  v150 = nw_endpoint_handler_get_id_string(v122);
                  v151 = nw_endpoint_handler_dry_run_string(v122);
                  v358 = nw_endpoint_handler_copy_endpoint(v122);
                  v152 = nw_endpoint_get_logging_description(v358);
                  v153 = nw_endpoint_handler_state_string(v122);
                  v154 = nw_endpoint_handler_mode_string(v122);
                  v155 = v125;
                  v156 = nw_endpoint_handler_copy_current_path(v122);
                  v157 = nw_parameters_get_pid(v373);
                  v158 = nw_parameters_get_effective_bundle_id(v373);
                  *buf = 136448514;
                  v387 = "nw_endpoint_flow_validate_delegation";
                  v388 = 2082;
                  v389 = v150;
                  v390 = 2082;
                  v391 = v151;
                  v392 = 2082;
                  v393 = v152;
                  v394 = 2082;
                  v395 = v153;
                  v396 = 2082;
                  v397 = v154;
                  v398 = 2114;
                  v399 = v156;
                  v400 = 1024;
                  *v401 = v157;
                  *&v401[4] = 2082;
                  *&v401[6] = v158;
                  *&v401[14] = 2082;
                  *&v401[16] = "I";
                  _os_log_impl(&dword_181A37000, v126, v149, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s], backtrace limit exceeded", buf, 0x62u);

                  v125 = v155;
                }

                goto LABEL_170;
              }

              v137 = __nw_create_backtrace_string();
              if (!v137)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v126 = gconnectionLogObj;
                v171 = type[0];
                if (os_log_type_enabled(v126, type[0]))
                {
                  v172 = nw_endpoint_handler_get_id_string(v122);
                  v173 = nw_endpoint_handler_dry_run_string(v122);
                  v359 = nw_endpoint_handler_copy_endpoint(v122);
                  v174 = nw_endpoint_get_logging_description(v359);
                  v175 = nw_endpoint_handler_state_string(v122);
                  v176 = nw_endpoint_handler_mode_string(v122);
                  v177 = v125;
                  v178 = nw_endpoint_handler_copy_current_path(v122);
                  v179 = nw_parameters_get_pid(v373);
                  v180 = nw_parameters_get_effective_bundle_id(v373);
                  *buf = 136448514;
                  v387 = "nw_endpoint_flow_validate_delegation";
                  v388 = 2082;
                  v389 = v172;
                  v390 = 2082;
                  v391 = v173;
                  v392 = 2082;
                  v393 = v174;
                  v394 = 2082;
                  v395 = v175;
                  v396 = 2082;
                  v397 = v176;
                  v398 = 2114;
                  v399 = v178;
                  v400 = 1024;
                  *v401 = v179;
                  *&v401[4] = 2082;
                  *&v401[6] = v180;
                  *&v401[14] = 2082;
                  *&v401[16] = "I";
                  _os_log_impl(&dword_181A37000, v126, v171, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s], no backtrace", buf, 0x62u);

                  v125 = v177;
                }

                goto LABEL_170;
              }

              v138 = v137;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v139 = gconnectionLogObj;
              v140 = type[0];
              if (os_log_type_enabled(v139, type[0]))
              {
                v141 = nw_endpoint_handler_get_id_string(v122);
                v142 = nw_endpoint_handler_dry_run_string(v122);
                logc = nw_endpoint_handler_copy_endpoint(v122);
                v143 = nw_endpoint_get_logging_description(logc);
                v144 = nw_endpoint_handler_state_string(v122);
                v145 = nw_endpoint_handler_mode_string(v122);
                v357 = v125;
                v146 = nw_endpoint_handler_copy_current_path(v122);
                v147 = nw_parameters_get_pid(v373);
                v148 = nw_parameters_get_effective_bundle_id(v373);
                *buf = 136448770;
                v387 = "nw_endpoint_flow_validate_delegation";
                v388 = 2082;
                v389 = v141;
                v390 = 2082;
                v391 = v142;
                v392 = 2082;
                v393 = v143;
                v394 = 2082;
                v395 = v144;
                v396 = 2082;
                v397 = v145;
                v398 = 2114;
                v399 = v146;
                v400 = 1024;
                *v401 = v147;
                *&v401[4] = 2082;
                *&v401[6] = v148;
                *&v401[14] = 2082;
                *&v401[16] = "I";
                *&v401[24] = 2082;
                *&v401[26] = v138;
                _os_log_impl(&dword_181A37000, v139, v140, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s], dumping backtrace:%{public}s", buf, 0x6Cu);

                v125 = v357;
              }

              free(v138);
              if (v125)
              {
LABEL_172:
                v181 = v125;
LABEL_275:
                free(v181);
              }

LABEL_276:
              if (nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist)
              {
LABEL_277:
                v308 = v374;
                v309 = (*(v308 + 284) & 0x40) == 0;

                if (!v309)
                {
LABEL_306:
                  v5 = v373;
                  nw_endpoint_flow_failed_with_error(v308, 1, 0);
                  v20 = 0;
                  goto LABEL_307;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v310 = gconnectionLogObj;
                if (!os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
                {
LABEL_305:

                  goto LABEL_306;
                }

                v311 = v308;

                v312 = v311;
                v313 = (*(v308 + 284) & 1) == 0;

                if (v313)
                {
                  v314 = "";
                }

                else
                {
                  v314 = "dry-run ";
                }

                v315 = nw_endpoint_handler_copy_endpoint(v312);
                v316 = v315;
                if (v315)
                {
                  v317 = _nw_endpoint_get_logging_description(v315);
                }

                else
                {
                  v317 = "<NULL>";
                }

                v318 = v312;
                v319 = v318;
                v320 = v318[30];
                if (v320 > 5)
                {
                  v321 = "unknown-state";
                }

                else
                {
                  v321 = off_1E6A31048[v320];
                }

                v322 = v319;
                v323 = v322;
                v324 = v375->mode;
                if (v324 > 2)
                {
                  switch(v324)
                  {
                    case 3:
                      v325 = "proxy";
                      goto LABEL_304;
                    case 4:
                      v325 = "fallback";
                      goto LABEL_304;
                    case 5:
                      v325 = "transform";
                      goto LABEL_304;
                  }
                }

                else
                {
                  switch(v324)
                  {
                    case 0:
                      v325 = "path";
                      goto LABEL_304;
                    case 1:
                      v325 = "resolver";
                      goto LABEL_304;
                    case 2:
                      v325 = nw_endpoint_flow_mode_string(v322[33]);
LABEL_304:

                      v326 = v323;
                      os_unfair_lock_lock(v326 + 28);
                      v327 = v326[8];
                      os_unfair_lock_unlock(v326 + 28);

                      *buf = 136447746;
                      v387 = "nw_endpoint_flow_validate_delegation";
                      v388 = 2082;
                      v389 = v311 + 184;
                      v390 = 2082;
                      v391 = v314;
                      v392 = 2082;
                      v393 = v317;
                      v394 = 2082;
                      v395 = v321;
                      v396 = 2082;
                      v397 = v325;
                      v398 = 2114;
                      v399 = v327;
                      _os_log_impl(&dword_181A37000, v310, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failing connection due to delegation errors", buf, 0x48u);

                      goto LABEL_305;
                  }
                }

                v325 = "unknown-mode";
                goto LABEL_304;
              }

              goto LABEL_267;
          }
        }

        v77 = "unknown-mode";
        goto LABEL_139;
      }

      if ((v10 & 0x40) != 0)
      {
        goto LABEL_276;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v52 = gconnectionLogObj;
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
LABEL_217:

        goto LABEL_276;
      }

      v53 = v9;

      v54 = v53;
      v55 = *(v9 + 284);

      if (v55)
      {
        v56 = "dry-run ";
      }

      else
      {
        v56 = "";
      }

      v57 = nw_endpoint_handler_copy_endpoint(v54);
      v58 = v57;
      if (v57)
      {
        v59 = _nw_endpoint_get_logging_description(v57);
      }

      else
      {
        v59 = "<NULL>";
      }

      v98 = v54;
      v99 = v98;
      v100 = v98[30];
      if (v100 > 5)
      {
        v101 = "unknown-state";
      }

      else
      {
        v101 = off_1E6A31048[v100];
      }

      v102 = v99;
      v103 = v102;
      v104 = v375->mode;
      if (v104 > 2)
      {
        switch(v104)
        {
          case 3:
            v105 = "proxy";
            goto LABEL_216;
          case 4:
            v105 = "fallback";
            goto LABEL_216;
          case 5:
            v105 = "transform";
            goto LABEL_216;
        }
      }

      else
      {
        switch(v104)
        {
          case 0:
            v105 = "path";
            goto LABEL_216;
          case 1:
            v105 = "resolver";
            goto LABEL_216;
          case 2:
            v105 = nw_endpoint_flow_mode_string(v102[33]);
LABEL_216:

            v232 = v103;
            os_unfair_lock_lock(v232 + 28);
            v233 = v232[8];
            os_unfair_lock_unlock(v232 + 28);

            v234 = v233;
            *buf = 136448514;
            v387 = "nw_endpoint_flow_validate_delegation";
            v388 = 2082;
            v389 = (v53 + 23);
            v390 = 2082;
            v391 = v56;
            v392 = 2082;
            v393 = v59;
            v394 = 2082;
            v395 = v101;
            v396 = 2082;
            v397 = v105;
            v398 = 2114;
            v399 = v234;
            v400 = 1024;
            *v401 = nw_parameters_get_pid(v373);
            *&v401[4] = 2082;
            *&v401[6] = nw_parameters_get_effective_bundle_id(v373);
            *&v401[14] = 2082;
            *&v401[16] = "I";
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d and Invalid Bundle ID %{public}s [%{public}s]", buf, 0x62u);

            goto LABEL_217;
        }
      }

      v105 = "unknown-mode";
      goto LABEL_216;
    }

    if (bundle_id_to_uuid_mapping_failed)
    {
      v21 = _os_feature_enabled_impl();
      v22 = v4;
      v23 = *(v22 + 284);

      if (!v21)
      {
        if ((v23 & 0x40) != 0)
        {
          goto LABEL_276;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v52 = gconnectionLogObj;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v63 = nw_endpoint_handler_get_id_string(v22);
          v64 = nw_endpoint_handler_dry_run_string(v22);
          v65 = nw_endpoint_handler_copy_endpoint(v22);
          v66 = nw_endpoint_get_logging_description(v65);
          v67 = nw_endpoint_handler_state_string(v22);
          v68 = nw_endpoint_handler_mode_string(v22);
          v69 = nw_endpoint_handler_copy_current_path(v22);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v63;
          v390 = 2082;
          v391 = v64;
          v392 = 2082;
          v393 = v66;
          v394 = 2082;
          v395 = v67;
          v396 = 2082;
          v397 = v68;
          v398 = 2114;
          v399 = v69;
          v400 = 2082;
          *v401 = nw_parameters_get_effective_bundle_id(v373);
          *&v401[8] = 2082;
          *&v401[10] = "I";
          _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s]", buf, 0x5Cu);
        }

        goto LABEL_217;
      }

      if ((v23 & 0x40) != 0)
      {
        goto LABEL_276;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v370 = gconnectionLogObj;
      v24 = v22;

      v25 = v24;
      v26 = *(v22 + 284);

      if (v26)
      {
        v27 = "dry-run ";
      }

      else
      {
        v27 = "";
      }

      v28 = nw_endpoint_handler_copy_endpoint(v25);
      v29 = v28;
      if (v28)
      {
        v30 = _nw_endpoint_get_logging_description(v28);
      }

      else
      {
        v30 = "<NULL>";
      }

      v90 = v25;
      v91 = v90;
      v92 = v90[30];
      if (v92 > 5)
      {
        v93 = "unknown-state";
      }

      else
      {
        v93 = off_1E6A31048[v92];
      }

      v94 = v91;
      v95 = v94;
      v96 = v375->mode;
      if (v96 > 2)
      {
        if (v96 == 3)
        {
          v97 = "proxy";
          goto LABEL_195;
        }

        if (v96 != 4)
        {
          if (v96 == 5)
          {
            v97 = "transform";
            goto LABEL_195;
          }

          goto LABEL_191;
        }

        v97 = "fallback";
      }

      else
      {
        if (!v96)
        {
          v97 = "path";
          goto LABEL_195;
        }

        if (v96 != 1)
        {
          if (v96 == 2)
          {
            v97 = nw_endpoint_flow_mode_string(v94[33]);
            goto LABEL_195;
          }

LABEL_191:
          v97 = "unknown-mode";
          goto LABEL_195;
        }

        v97 = "resolver";
      }

LABEL_195:

      v198 = v95;
      os_unfair_lock_lock(v198 + 28);
      v199 = v198[8];
      os_unfair_lock_unlock(v198 + 28);

      v200 = v199;
      *buf = 136448258;
      v387 = "nw_endpoint_flow_validate_delegation";
      v388 = 2082;
      v389 = (v24 + 23);
      v390 = 2082;
      v391 = v27;
      v392 = 2082;
      v393 = v30;
      v394 = 2082;
      v395 = v93;
      v396 = 2082;
      v397 = v97;
      v398 = 2114;
      v399 = v200;
      v400 = 2082;
      *v401 = nw_parameters_get_effective_bundle_id(v373);
      *&v401[8] = 2082;
      *&v401[10] = "I";
      loga = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v370, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s]", buf, 92);

      type[0] = OS_LOG_TYPE_ERROR;
      v385 = 0;
      v41 = loga;
      if (!__nwlog_fault(loga, type, &v385))
      {
        goto LABEL_256;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v201 = gconnectionLogObj;
        v202 = type[0];
        if (os_log_type_enabled(v201, type[0]))
        {
          v203 = nw_endpoint_handler_get_id_string(v198);
          v204 = nw_endpoint_handler_dry_run_string(v198);
          v205 = nw_endpoint_handler_copy_endpoint(v198);
          v206 = nw_endpoint_get_logging_description(v205);
          v207 = nw_endpoint_handler_state_string(v198);
          v208 = nw_endpoint_handler_mode_string(v198);
          v209 = nw_endpoint_handler_copy_current_path(v198);
          v210 = nw_parameters_get_effective_bundle_id(v373);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v203;
          v390 = 2082;
          v391 = v204;
          v392 = 2082;
          v393 = v206;
          v394 = 2082;
          v395 = v207;
          v396 = 2082;
          v397 = v208;
          v398 = 2114;
          v399 = v209;
          v400 = 2082;
          *v401 = v210;
          *&v401[8] = 2082;
          *&v401[10] = "I";
          _os_log_impl(&dword_181A37000, v201, v202, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s]", buf, 0x5Cu);
        }
      }

      else if (v385 == 1)
      {
        v211 = __nw_create_backtrace_string();
        if (v211)
        {
          v212 = v211;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v213 = gconnectionLogObj;
          v214 = type[0];
          if (os_log_type_enabled(v213, type[0]))
          {
            v215 = nw_endpoint_handler_get_id_string(v198);
            v216 = nw_endpoint_handler_dry_run_string(v198);
            v217 = nw_endpoint_handler_copy_endpoint(v198);
            v218 = nw_endpoint_get_logging_description(v217);
            v219 = nw_endpoint_handler_state_string(v198);
            v220 = nw_endpoint_handler_mode_string(v198);
            v221 = nw_endpoint_handler_copy_current_path(v198);
            v222 = nw_parameters_get_effective_bundle_id(v373);
            *buf = 136448514;
            v387 = "nw_endpoint_flow_validate_delegation";
            v388 = 2082;
            v389 = v215;
            v390 = 2082;
            v391 = v216;
            v392 = 2082;
            v393 = v218;
            v394 = 2082;
            v395 = v219;
            v396 = 2082;
            v397 = v220;
            v398 = 2114;
            v399 = v221;
            v400 = 2082;
            *v401 = v222;
            *&v401[8] = 2082;
            *&v401[10] = "I";
            *&v401[18] = 2082;
            *&v401[20] = v212;
            _os_log_impl(&dword_181A37000, v213, v214, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s], dumping backtrace:%{public}s", buf, 0x66u);
          }

          free(v212);
          goto LABEL_255;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v201 = gconnectionLogObj;
        v281 = type[0];
        if (os_log_type_enabled(v201, type[0]))
        {
          v282 = nw_endpoint_handler_get_id_string(v198);
          v283 = nw_endpoint_handler_dry_run_string(v198);
          v284 = nw_endpoint_handler_copy_endpoint(v198);
          v285 = nw_endpoint_get_logging_description(v284);
          v286 = nw_endpoint_handler_state_string(v198);
          v287 = nw_endpoint_handler_mode_string(v198);
          v288 = nw_endpoint_handler_copy_current_path(v198);
          v289 = nw_parameters_get_effective_bundle_id(v373);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v282;
          v390 = 2082;
          v391 = v283;
          v392 = 2082;
          v393 = v285;
          v394 = 2082;
          v395 = v286;
          v396 = 2082;
          v397 = v287;
          v398 = 2114;
          v399 = v288;
          v400 = 2082;
          *v401 = v289;
          *&v401[8] = 2082;
          *&v401[10] = "I";
          _os_log_impl(&dword_181A37000, v201, v281, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s], no backtrace", buf, 0x5Cu);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v201 = gconnectionLogObj;
        v223 = type[0];
        if (os_log_type_enabled(v201, type[0]))
        {
          v224 = nw_endpoint_handler_get_id_string(v198);
          v225 = nw_endpoint_handler_dry_run_string(v198);
          v226 = nw_endpoint_handler_copy_endpoint(v198);
          v227 = nw_endpoint_get_logging_description(v226);
          v228 = nw_endpoint_handler_state_string(v198);
          v229 = nw_endpoint_handler_mode_string(v198);
          v230 = nw_endpoint_handler_copy_current_path(v198);
          v231 = nw_parameters_get_effective_bundle_id(v373);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v224;
          v390 = 2082;
          v391 = v225;
          v392 = 2082;
          v393 = v227;
          v394 = 2082;
          v395 = v228;
          v396 = 2082;
          v397 = v229;
          v398 = 2114;
          v399 = v230;
          v400 = 2082;
          *v401 = v231;
          *&v401[8] = 2082;
          *&v401[10] = "I";
          _os_log_impl(&dword_181A37000, v201, v223, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid Bundle ID %{public}s [%{public}s], backtrace limit exceeded", buf, 0x5Cu);
        }
      }

LABEL_255:
      v41 = loga;
LABEL_256:
      if (!v41)
      {
        goto LABEL_276;
      }

LABEL_274:
      v181 = v41;
      goto LABEL_275;
    }

    if (!pid_to_uuid_mapping_failed)
    {
      goto LABEL_276;
    }

    v31 = _os_feature_enabled_impl();
    logging_disabled = nw_endpoint_handler_get_logging_disabled(v4);
    if (!v31)
    {
      if (logging_disabled)
      {
        goto LABEL_276;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v52 = gconnectionLogObj;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v78 = nw_endpoint_handler_get_id_string(v4);
        v79 = nw_endpoint_handler_dry_run_string(v4);
        v80 = nw_endpoint_handler_copy_endpoint(v4);
        v81 = nw_endpoint_get_logging_description(v80);
        v82 = nw_endpoint_handler_state_string(v4);
        v83 = nw_endpoint_handler_mode_string(v4);
        v84 = nw_endpoint_handler_copy_current_path(v4);
        *buf = 136448258;
        v387 = "nw_endpoint_flow_validate_delegation";
        v388 = 2082;
        v389 = v78;
        v390 = 2082;
        v391 = v79;
        v392 = 2082;
        v393 = v81;
        v394 = 2082;
        v395 = v82;
        v396 = 2082;
        v397 = v83;
        v398 = 2114;
        v399 = v84;
        v400 = 1024;
        *v401 = nw_parameters_get_pid(v373);
        *&v401[4] = 2082;
        *&v401[6] = "I";
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s]", buf, 0x58u);
      }

      goto LABEL_217;
    }

    if (logging_disabled)
    {
      goto LABEL_276;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    v34 = nw_endpoint_handler_get_id_string(v4);
    v35 = nw_endpoint_handler_dry_run_string(v4);
    v36 = nw_endpoint_handler_copy_endpoint(v4);
    v37 = nw_endpoint_get_logging_description(v36);
    v38 = nw_endpoint_handler_state_string(v4);
    v39 = nw_endpoint_handler_mode_string(v4);
    v40 = nw_endpoint_handler_copy_current_path(v4);
    *buf = 136448258;
    v387 = "nw_endpoint_flow_validate_delegation";
    v388 = 2082;
    v389 = v34;
    v390 = 2082;
    v391 = v35;
    v392 = 2082;
    v393 = v37;
    v394 = 2082;
    v395 = v38;
    v396 = 2082;
    v397 = v39;
    v398 = 2114;
    v399 = v40;
    v400 = 1024;
    *v401 = nw_parameters_get_pid(v373);
    *&v401[4] = 2082;
    *&v401[6] = "I";
    v371 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s]", buf, 88);

    type[0] = OS_LOG_TYPE_ERROR;
    v385 = 0;
    v41 = v371;
    if (!__nwlog_fault(v371, type, &v385))
    {
      goto LABEL_256;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      v43 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        v44 = nw_endpoint_handler_get_id_string(v374);
        v45 = nw_endpoint_handler_dry_run_string(v374);
        logb = v42;
        v46 = nw_endpoint_handler_copy_endpoint(v374);
        v47 = nw_endpoint_get_logging_description(v46);
        v48 = nw_endpoint_handler_state_string(v374);
        v49 = nw_endpoint_handler_mode_string(v374);
        v50 = nw_endpoint_handler_copy_current_path(v374);
        v51 = nw_parameters_get_pid(v373);
        *buf = 136448258;
        v387 = "nw_endpoint_flow_validate_delegation";
        v388 = 2082;
        v389 = v44;
        v390 = 2082;
        v391 = v45;
        v392 = 2082;
        v393 = v47;
        v394 = 2082;
        v395 = v48;
        v396 = 2082;
        v397 = v49;
        v398 = 2114;
        v399 = v50;
        v400 = 1024;
        *v401 = v51;
        *&v401[4] = 2082;
        *&v401[6] = "I";
        _os_log_impl(&dword_181A37000, logb, v43, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s]", buf, 0x58u);

        v42 = logb;
      }
    }

    else if (v385 == 1)
    {
      v159 = __nw_create_backtrace_string();
      if (v159)
      {
        v160 = v159;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v161 = gconnectionLogObj;
        v162 = type[0];
        if (os_log_type_enabled(v161, type[0]))
        {
          v163 = nw_endpoint_handler_get_id_string(v374);
          v164 = nw_endpoint_handler_dry_run_string(v374);
          logd = v161;
          v165 = nw_endpoint_handler_copy_endpoint(v374);
          v166 = nw_endpoint_get_logging_description(v165);
          v167 = nw_endpoint_handler_state_string(v374);
          v168 = nw_endpoint_handler_mode_string(v374);
          v169 = nw_endpoint_handler_copy_current_path(v374);
          v170 = nw_parameters_get_pid(v373);
          *buf = 136448514;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v163;
          v390 = 2082;
          v391 = v164;
          v392 = 2082;
          v393 = v166;
          v394 = 2082;
          v395 = v167;
          v396 = 2082;
          v397 = v168;
          v398 = 2114;
          v399 = v169;
          v400 = 1024;
          *v401 = v170;
          *&v401[4] = 2082;
          *&v401[6] = "I";
          *&v401[14] = 2082;
          *&v401[16] = v160;
          _os_log_impl(&dword_181A37000, logd, v162, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s], dumping backtrace:%{public}s", buf, 0x62u);

          v161 = logd;
        }

        free(v160);
LABEL_273:
        v41 = v371;
        if (!v371)
        {
          goto LABEL_276;
        }

        goto LABEL_274;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      v299 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        v300 = nw_endpoint_handler_get_id_string(v374);
        v301 = nw_endpoint_handler_dry_run_string(v374);
        logg = v42;
        v302 = nw_endpoint_handler_copy_endpoint(v374);
        v303 = nw_endpoint_get_logging_description(v302);
        v304 = nw_endpoint_handler_state_string(v374);
        v305 = nw_endpoint_handler_mode_string(v374);
        v306 = nw_endpoint_handler_copy_current_path(v374);
        v307 = nw_parameters_get_pid(v373);
        *buf = 136448258;
        v387 = "nw_endpoint_flow_validate_delegation";
        v388 = 2082;
        v389 = v300;
        v390 = 2082;
        v391 = v301;
        v392 = 2082;
        v393 = v303;
        v394 = 2082;
        v395 = v304;
        v396 = 2082;
        v397 = v305;
        v398 = 2114;
        v399 = v306;
        v400 = 1024;
        *v401 = v307;
        *&v401[4] = 2082;
        *&v401[6] = "I";
        _os_log_impl(&dword_181A37000, logg, v299, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s], no backtrace", buf, 0x58u);

        v42 = logg;
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      v272 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        v273 = nw_endpoint_handler_get_id_string(v374);
        v274 = nw_endpoint_handler_dry_run_string(v374);
        logf = v42;
        v275 = nw_endpoint_handler_copy_endpoint(v374);
        v276 = nw_endpoint_get_logging_description(v275);
        v277 = nw_endpoint_handler_state_string(v374);
        v278 = nw_endpoint_handler_mode_string(v374);
        v279 = nw_endpoint_handler_copy_current_path(v374);
        v280 = nw_parameters_get_pid(v373);
        *buf = 136448258;
        v387 = "nw_endpoint_flow_validate_delegation";
        v388 = 2082;
        v389 = v273;
        v390 = 2082;
        v391 = v274;
        v392 = 2082;
        v393 = v276;
        v394 = 2082;
        v395 = v277;
        v396 = 2082;
        v397 = v278;
        v398 = 2114;
        v399 = v279;
        v400 = 1024;
        *v401 = v280;
        *&v401[4] = 2082;
        *&v401[6] = "I";
        _os_log_impl(&dword_181A37000, logf, v272, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Network Delegation Failure: Invalid PID %d [%{public}s], backtrace limit exceeded", buf, 0x58u);

        v42 = logf;
      }
    }

    goto LABEL_273;
  }

  v19 = getpid();
  if (!nw_parameters_has_delegated_proc_pid(v5, v19) && !nw_parameters_has_delegated_proc_uuid(v5))
  {
    v373 = v5;
    if (nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist && object_getClass(nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist) == MEMORY[0x1E69E9E50])
    {
      v85 = nw_endpoint_handler_copy_endpoint(v4);
      domain_for_policy = nw_endpoint_get_domain_for_policy(v85);
      v87 = domain_for_policy;
      if (domain_for_policy)
      {
        *type = 0;
        v382 = type;
        v383 = 0x2020000000;
        v384 = 0;
        v88 = nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist;
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = ___ZL36nw_endpoint_flow_validate_delegationP30NWConcrete_nw_endpoint_handler_block_invoke_217;
        applier[3] = &unk_1E6A3C1A0;
        v379 = strlen(domain_for_policy);
        v380 = v87;
        v89 = v4;
        v377 = v89;
        v378 = type;
        xpc_array_apply(v88, applier);
        if (v382[24])
        {

          _Block_object_dispose(type, 8);
          goto LABEL_267;
        }

        if ((nw_endpoint_handler_get_logging_disabled(v89) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v190 = gconnectionLogObj;
          if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
          {
            v191 = nw_endpoint_handler_get_id_string(v89);
            v192 = nw_endpoint_handler_dry_run_string(v89);
            v193 = nw_endpoint_handler_copy_endpoint(v89);
            v194 = nw_endpoint_get_logging_description(v193);
            v195 = nw_endpoint_handler_state_string(v89);
            v196 = nw_endpoint_handler_mode_string(v89);
            v197 = nw_endpoint_handler_copy_current_path(v89);
            *buf = 136448002;
            v387 = "nw_endpoint_flow_validate_delegation";
            v388 = 2082;
            v389 = v191;
            v390 = 2082;
            v391 = v192;
            v392 = 2082;
            v393 = v194;
            v394 = 2082;
            v395 = v195;
            v396 = 2082;
            v397 = v196;
            v398 = 2114;
            v399 = v197;
            v400 = 2082;
            *v401 = v87;
            _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Domain %{public}s was not found within allowlist for non-delegated connections", buf, 0x52u);
          }
        }

        _Block_object_dispose(type, 8);
      }

      else if ((nw_endpoint_handler_get_logging_disabled(v4) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v182 = gconnectionLogObj;
        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          v183 = nw_endpoint_handler_get_id_string(v4);
          v184 = nw_endpoint_handler_dry_run_string(v4);
          v185 = nw_endpoint_handler_copy_endpoint(v4);
          v186 = nw_endpoint_get_logging_description(v185);
          v187 = nw_endpoint_handler_state_string(v4);
          v188 = nw_endpoint_handler_mode_string(v4);
          v189 = nw_endpoint_handler_copy_current_path(v4);
          *buf = 136447746;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v183;
          v390 = 2082;
          v391 = v184;
          v392 = 2082;
          v393 = v186;
          v394 = 2082;
          v395 = v187;
          v396 = 2082;
          v397 = v188;
          v398 = 2114;
          v399 = v189;
          _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No domain found for connection to allowlist non-delegated connections", buf, 0x48u);
        }
      }

      v60 = 1;
    }

    else
    {
      v60 = 0;
    }

    if (_os_feature_enabled_impl())
    {
      v61 = nw_endpoint_handler_copy_endpoint(v374);
      v62 = v61;
      v372 = v61;
      v353 = v60;
      if (v61)
      {
        v354 = _nw_endpoint_get_domain_for_policy(v61);
      }

      else
      {
        v354 = 0;
      }

      v106 = v374;
      v107 = (*(v106 + 284) & 0x40) == 0;

      if (!v107)
      {
        goto LABEL_266;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      log = gconnectionLogObj;
      v108 = v106;

      v109 = v108;
      v110 = (*(v106 + 284) & 1) == 0;

      if (v110)
      {
        v111 = "";
      }

      else
      {
        v111 = "dry-run ";
      }

      v112 = nw_endpoint_handler_copy_endpoint(v109);
      v113 = v112;
      if (v112)
      {
        v355 = _nw_endpoint_get_logging_description(v112);
      }

      else
      {
        v355 = "<NULL>";
      }

      v114 = v109;
      v115 = v114;
      v116 = v114[30];
      if (v116 > 5)
      {
        v117 = "unknown-state";
      }

      else
      {
        v117 = off_1E6A31048[v116];
      }

      v118 = v115;
      v119 = v118;
      v120 = v375->mode;
      if (v120 > 2)
      {
        if (v120 == 3)
        {
          v121 = "proxy";
          goto LABEL_223;
        }

        if (v120 != 4)
        {
          if (v120 == 5)
          {
            v121 = "transform";
            goto LABEL_223;
          }

          goto LABEL_220;
        }

        v121 = "fallback";
      }

      else
      {
        if (!v120)
        {
          v121 = "path";
          goto LABEL_223;
        }

        if (v120 != 1)
        {
          if (v120 == 2)
          {
            v121 = nw_endpoint_flow_mode_string(v118[33]);
            goto LABEL_223;
          }

LABEL_220:
          v121 = "unknown-mode";
          goto LABEL_223;
        }

        v121 = "resolver";
      }

LABEL_223:

      v235 = v119;
      os_unfair_lock_lock(v235 + 28);
      v236 = v235[8];
      os_unfair_lock_unlock(v235 + 28);

      v237 = v236;
      v238 = v372;
      v239 = v238;
      if (v372)
      {
        description = _nw_endpoint_get_description(v238);
      }

      else
      {
        description = "<NULL>";
      }

      v352 = v239;

      *buf = 136448258;
      v387 = "nw_endpoint_flow_validate_delegation";
      v388 = 2082;
      v389 = v108 + 184;
      v390 = 2082;
      v391 = v111;
      v392 = 2082;
      v393 = v355;
      v394 = 2082;
      v395 = v117;
      v396 = 2082;
      v397 = v121;
      v398 = 2114;
      v399 = v237;
      v400 = 2080;
      *v401 = v354;
      *&v401[8] = 2080;
      *&v401[10] = description;
      v360 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, log, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Undelegated Network Traffic: Connection to %s (%s)", buf, 92);

      type[0] = OS_LOG_TYPE_ERROR;
      v385 = 0;
      v241 = v360;
      if (!__nwlog_fault(v360, type, &v385))
      {
LABEL_264:
        if (v241)
        {
          free(v241);
        }

LABEL_266:

        if (v353)
        {
          goto LABEL_277;
        }

        goto LABEL_267;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v242 = gconnectionLogObj;
        v243 = type[0];
        if (os_log_type_enabled(v242, type[0]))
        {
          v244 = nw_endpoint_handler_get_id_string(v235);
          v245 = nw_endpoint_handler_dry_run_string(v235);
          v246 = nw_endpoint_handler_copy_endpoint(v235);
          v247 = nw_endpoint_get_logging_description(v246);
          v248 = nw_endpoint_handler_state_string(v235);
          v249 = nw_endpoint_handler_mode_string(v235);
          v250 = nw_endpoint_handler_copy_current_path(v235);
          v251 = nw_endpoint_get_description(v352);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v244;
          v390 = 2082;
          v391 = v245;
          v392 = 2082;
          v393 = v247;
          v394 = 2082;
          v395 = v248;
          v396 = 2082;
          v397 = v249;
          v398 = 2114;
          v399 = v250;
          v400 = 2080;
          *v401 = v354;
          *&v401[8] = 2080;
          *&v401[10] = v251;
          _os_log_impl(&dword_181A37000, v242, v243, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Undelegated Network Traffic: Connection to %s (%s)", buf, 0x5Cu);
        }
      }

      else if (v385 == 1)
      {
        v252 = __nw_create_backtrace_string();
        if (v252)
        {
          v253 = v252;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v254 = gconnectionLogObj;
          v255 = type[0];
          if (os_log_type_enabled(v254, type[0]))
          {
            v256 = nw_endpoint_handler_get_id_string(v235);
            v257 = nw_endpoint_handler_dry_run_string(v235);
            loge = nw_endpoint_handler_copy_endpoint(v235);
            v258 = nw_endpoint_get_logging_description(loge);
            v259 = nw_endpoint_handler_state_string(v235);
            v260 = nw_endpoint_handler_mode_string(v235);
            v261 = nw_endpoint_handler_copy_current_path(v235);
            v262 = nw_endpoint_get_description(v352);
            *buf = 136448514;
            v387 = "nw_endpoint_flow_validate_delegation";
            v388 = 2082;
            v389 = v256;
            v390 = 2082;
            v391 = v257;
            v392 = 2082;
            v393 = v258;
            v394 = 2082;
            v395 = v259;
            v396 = 2082;
            v397 = v260;
            v398 = 2114;
            v399 = v261;
            v400 = 2080;
            *v401 = v354;
            *&v401[8] = 2080;
            *&v401[10] = v262;
            *&v401[18] = 2082;
            *&v401[20] = v253;
            _os_log_impl(&dword_181A37000, v254, v255, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Undelegated Network Traffic: Connection to %s (%s), dumping backtrace:%{public}s", buf, 0x66u);
          }

          free(v253);
          goto LABEL_263;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v242 = gconnectionLogObj;
        v290 = type[0];
        if (os_log_type_enabled(v242, type[0]))
        {
          v291 = nw_endpoint_handler_get_id_string(v235);
          v292 = nw_endpoint_handler_dry_run_string(v235);
          v293 = nw_endpoint_handler_copy_endpoint(v235);
          v294 = nw_endpoint_get_logging_description(v293);
          v295 = nw_endpoint_handler_state_string(v235);
          v296 = nw_endpoint_handler_mode_string(v235);
          v297 = nw_endpoint_handler_copy_current_path(v235);
          v298 = nw_endpoint_get_description(v352);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v291;
          v390 = 2082;
          v391 = v292;
          v392 = 2082;
          v393 = v294;
          v394 = 2082;
          v395 = v295;
          v396 = 2082;
          v397 = v296;
          v398 = 2114;
          v399 = v297;
          v400 = 2080;
          *v401 = v354;
          *&v401[8] = 2080;
          *&v401[10] = v298;
          _os_log_impl(&dword_181A37000, v242, v290, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Undelegated Network Traffic: Connection to %s (%s), no backtrace", buf, 0x5Cu);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v242 = gconnectionLogObj;
        v263 = type[0];
        if (os_log_type_enabled(v242, type[0]))
        {
          v264 = nw_endpoint_handler_get_id_string(v235);
          v265 = nw_endpoint_handler_dry_run_string(v235);
          v266 = nw_endpoint_handler_copy_endpoint(v235);
          v267 = nw_endpoint_get_logging_description(v266);
          v268 = nw_endpoint_handler_state_string(v235);
          v269 = nw_endpoint_handler_mode_string(v235);
          v270 = nw_endpoint_handler_copy_current_path(v235);
          v271 = nw_endpoint_get_description(v352);
          *buf = 136448258;
          v387 = "nw_endpoint_flow_validate_delegation";
          v388 = 2082;
          v389 = v264;
          v390 = 2082;
          v391 = v265;
          v392 = 2082;
          v393 = v267;
          v394 = 2082;
          v395 = v268;
          v396 = 2082;
          v397 = v269;
          v398 = 2114;
          v399 = v270;
          v400 = 2080;
          *v401 = v354;
          *&v401[8] = 2080;
          *&v401[10] = v271;
          _os_log_impl(&dword_181A37000, v242, v263, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Undelegated Network Traffic: Connection to %s (%s), backtrace limit exceeded", buf, 0x5Cu);
        }
      }

LABEL_263:
      v241 = v360;
      goto LABEL_264;
    }

    if (v60)
    {
      goto LABEL_277;
    }

LABEL_267:
    v20 = 1;
    v5 = v373;
    goto LABEL_307;
  }

  v20 = 1;
LABEL_307:

  v328 = v375;
LABEL_362:

  return v20;
}

BOOL nw_endpoint_flow_expected_to_join(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v3;
    v6 = v5;
    if (v5)
    {
      v7 = v5->parameters;
LABEL_4:

      *type = 0;
      v41 = type;
      v42 = 0x2020000000;
      v43 = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      v39 = 0;
      v8 = nw_endpoint_handler_copy_endpoint(v6);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = __Block_byref_object_copy__85552;
      v46 = __Block_byref_object_dispose__85553;
      v47 = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL33nw_endpoint_flow_expected_to_joinP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flow_block_invoke;
      aBlock[3] = &unk_1E6A3C150;
      v35 = buf;
      v9 = v47;
      v31 = v9;
      v32 = v6;
      v36 = v38;
      v10 = v7;
      v33 = v10;
      v34 = v4;
      v37 = type;
      v11 = _Block_copy(aBlock);
      nw_parameters_internal_iterate_protocol_stack(v10, 5, 0, v11);
      if (*(v41 + 3))
      {
        v12 = 1;
      }

      else
      {
        nw_parameters_internal_iterate_protocol_stack(v10, 4, 0, v11);
        v12 = *(v41 + 3) != 0;
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v38, 8);
      _Block_object_dispose(type, 8);

      goto LABEL_8;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_copy_parameters";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null handler", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v38[0]) = 0;
    if (__nwlog_fault(v19, type, v38))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_parameters";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (LOBYTE(v38[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v26 = type[0];
        v27 = os_log_type_enabled(v20, type[0]);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_copy_parameters";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (v27)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_parameters";
          _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v29 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_parameters";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_44:
    if (v19)
    {
      free(v19);
    }

    v7 = 0;
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_flow_expected_to_join";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null flow", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v38[0]) = 0;
  if (__nwlog_fault(v15, type, v38))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_expected_to_join";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null flow", buf, 0xCu);
      }
    }

    else if (LOBYTE(v38[0]) == 1)
    {
      v22 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v23 = type[0];
      v24 = os_log_type_enabled(v16, type[0]);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_flow_expected_to_join";
          *&buf[12] = 2082;
          *&buf[14] = v22;
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_38;
      }

      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_expected_to_join";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v28 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_expected_to_join";
        _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_38:
  if (v15)
  {
    free(v15);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

void sub_181B08C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id nw_endpoint_flow_copy_path(void *a1)
{
  v1 = a1;
  v2 = nw_endpoint_handler_copy_flow(v1);
  v3 = v2;
  v5 = (v2 + 16);
  v4 = *(v2 + 2);
  if (!v4)
  {
    v7 = *(v2 + 104);
    if (v7)
    {
      v8 = nw_path_flow_registration_copy_path(v7);
      if (v8)
      {
LABEL_5:
        os_unfair_lock_lock(v3 + 220);
        objc_storeStrong(v5, v8);
        os_unfair_lock_unlock(v3 + 220);
        v6 = *(v3 + 2);
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v8 = nw_endpoint_handler_copy_current_path(v1);
      if (v8)
      {
        goto LABEL_5;
      }
    }

    v6 = 0;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_9:

  return v6;
}

uint64_t nw_path_flow_registration_ecn_enabled(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v2 = nw_path_copy_flow_for_registration(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = _nw_path_flow_ecn_enabled(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _nw_path_flow_ecn_enabled(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 2) & 1;
}

uint64_t nw_hash_table_remove_node(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_hash_table_remove_node";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null table", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_76;
        }

        *buf = 136446210;
        v42 = "nw_hash_table_remove_node";
        v17 = "%{public}s called with null table, backtrace limit exceeded";
        goto LABEL_75;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v32 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (!v32)
        {
          goto LABEL_76;
        }

        *buf = 136446210;
        v42 = "nw_hash_table_remove_node";
        v17 = "%{public}s called with null table, no backtrace";
        goto LABEL_75;
      }

      if (v32)
      {
        *buf = 136446466;
        v42 = "nw_hash_table_remove_node";
        v43 = 2082;
        v44 = backtrace_string;
        v33 = "%{public}s called with null table, dumping backtrace:%{public}s";
LABEL_53:
        _os_log_impl(&dword_181A37000, v15, v16, v33, buf, 0x16u);
      }

LABEL_54:
      free(backtrace_string);
      goto LABEL_76;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v42 = "nw_hash_table_remove_node";
    v17 = "%{public}s called with null table";
LABEL_75:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
LABEL_76:
    if (v14)
    {
      free(v14);
    }

    return 0;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_hash_table_remove_node";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null node", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v42 = "nw_hash_table_remove_node";
      v17 = "%{public}s called with null node";
      goto LABEL_75;
    }

    if (v39 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v42 = "nw_hash_table_remove_node";
      v17 = "%{public}s called with null node, backtrace limit exceeded";
      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v34 = os_log_type_enabled(v15, type);
    if (backtrace_string)
    {
      if (v34)
      {
        *buf = 136446466;
        v42 = "nw_hash_table_remove_node";
        v43 = 2082;
        v44 = backtrace_string;
        v33 = "%{public}s called with null node, dumping backtrace:%{public}s";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (!v34)
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v42 = "nw_hash_table_remove_node";
    v17 = "%{public}s called with null node, no backtrace";
    goto LABEL_75;
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 56);
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v19 = __nwlog_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  *buf = 136446210;
  v42 = "nw_hash_table_lock";
  v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s Locking invalid hash table", buf, 12);
  result = __nwlog_should_abort(v21);
  if (result)
  {
    goto LABEL_86;
  }

  free(v21);
  v4 = *(a1 + 56);
  if ((v4 & 2) != 0)
  {
LABEL_5:
    os_unfair_lock_lock((a1 + 60));
    v4 = *(a1 + 56);
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_hash_table_remove_node";
    LODWORD(v38) = 12;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with invalid hash table", buf, v38);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v23, &type, &v39))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v42 = "nw_hash_table_remove_node";
      v26 = "%{public}s called with invalid hash table";
    }

    else if (v39 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v36 = os_log_type_enabled(v24, type);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          v42 = "nw_hash_table_remove_node";
          v43 = 2082;
          v44 = v35;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
LABEL_81:
        if (v23)
        {
          free(v23);
        }

        if ((*(a1 + 56) & 2) != 0)
        {
          os_unfair_lock_unlock((a1 + 60));
          return 0;
        }

        return 0;
      }

      if (!v36)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v42 = "nw_hash_table_remove_node";
      v26 = "%{public}s called with invalid hash table, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v42 = "nw_hash_table_remove_node";
      v26 = "%{public}s called with invalid hash table, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    goto LABEL_81;
  }

  if (*(a2 + 30) != 1)
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v29 = *(a2 + 30);
    if (v29 > 3)
    {
      v30 = "invalid_state";
    }

    else
    {
      v30 = off_1E6A39598[v29];
    }

    *buf = 136446466;
    v42 = "nw_hash_table_remove_node";
    v43 = 2082;
    v44 = v30;
    LODWORD(v38) = 22;
    v37 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s Tried to remove invalid node, state: %{public}s", buf, v38);
    result = __nwlog_should_abort(v37);
    if (result)
    {
      goto LABEL_86;
    }

    free(v37);
    if (*(a2 + 30) != 1)
    {
      v12 = 0;
      if ((*(a1 + 56) & 2) == 0)
      {
        return v12;
      }

      goto LABEL_20;
    }
  }

  v5 = a1 + 16 * *(a2 + 24) + 64;
  *(a2 + 30) = 2;
  v6 = *(a1 + 24);
  if (v6)
  {
    v6(*(a2 + 16));
    *(a2 + 16) = 0;
  }

  --*(a1 + 48);
  v7 = *(a2 + 8);
  if (v7 && *v7 == a2)
  {
LABEL_17:
    if (!*(a2 + 28))
    {
      nw_hash_node_free(v5, a2);
    }

    v12 = 1;
    if ((*(a1 + 56) & 2) == 0)
    {
      return v12;
    }

LABEL_20:
    os_unfair_lock_unlock((a1 + 60));
    return v12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *buf = 136446210;
  v42 = "nw_hash_table_remove_node_internal";
  LODWORD(v38) = 12;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Tried to remove all hash nodes and one was not in list", buf, v38);
  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    goto LABEL_17;
  }

LABEL_86:
  __break(1u);
  return result;
}

BOOL _s7Network11TCPProtocolV10TCPOptionsV2eeoiySbAE_AEtFZ_0(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a1, *a2)))) & 1) == 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2] && a1[2].i64[0] == a2[2].i64[0] && ((a1[2].u8[8] ^ a2[2].u8[8]) & 1) == 0)
  {
    v4 = a1[2].u8[9];
    v5 = a1[2].i32[3];
    v6 = a2[2].u8[9];
    if (v4 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }

      return v5 == a2[2].i32[3];
    }

    result = 0;
    if (v6 != 2 && ((v6 ^ v4) & 1) == 0)
    {
      return v5 == a2[2].i32[3];
    }
  }

  return result;
}

uint64_t ProtocolOptions.isEqual(to:for:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v8 = *a3;
    swift_unknownObjectRetain();
    v6 = ProtocolOptions.isEqual(to:for:)(v5, &v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void nw_hash_node_free(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a2 + 30) == 2)
  {
    v3 = a2[1];
    if (!v3)
    {
LABEL_17:
      v13 = a1;
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v23 = 136446210;
      v24 = "nw_hash_node_free";
      LODWORD(v22) = 12;
      v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s Tried to free pending_free hash node that was not in list", &v23, v22);
      if (__nwlog_should_abort(v16))
      {
        goto LABEL_27;
      }

      free(v16);
      a1 = v13;
      if (!*(a2 + 14))
      {
        goto LABEL_5;
      }

LABEL_22:
      v17 = a1;
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v20 = *(a2 + 14);
      v23 = 136446466;
      v24 = "nw_hash_node_free";
      v25 = 1024;
      LODWORD(v26) = v20;
      LODWORD(v22) = 18;
      v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Tried to free hash node with apply_count %d", &v23, v22);
      if (!__nwlog_should_abort(v21))
      {
        free(v21);
        a1 = v17;
        goto LABEL_5;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v7 = a1;
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = *(a2 + 30);
    if (v10 > 3)
    {
      v11 = "invalid_state";
    }

    else
    {
      v11 = off_1E6A39598[v10];
    }

    v23 = 136446466;
    v24 = "nw_hash_node_free";
    v25 = 2082;
    v26 = v11;
    v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Hash node state was %{public}s, not pending_free", &v23, 22);
    if (__nwlog_should_abort(v12))
    {
      goto LABEL_27;
    }

    free(v12);
    a1 = v7;
    v3 = a2[1];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (*v3 != a2)
  {
    goto LABEL_17;
  }

  if (*(a2 + 14))
  {
    goto LABEL_22;
  }

LABEL_5:
  *(a2 + 30) = 3;
  v4 = *a2;
  v5 = a2[1];
  if (*a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a1;
  }

  *(v6 + 8) = v5;
  *v5 = v4;
  free(a2);
}

void sub_181B09AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *(i - 1);
    if (v5 == v6)
    {
      goto LABEL_5;
    }

    if (v5 == &__block_literal_global_7016 || v6 == &__block_literal_global_7016)
    {
      return;
    }

    v8 = *v3;
    v9 = *i;
    v13 = 0;
    swift_unknownObjectRetain();
    v10 = v5;
    swift_unknownObjectRetain();
    v11 = v6;
    if ((sub_181B0A11C(v11, &v13) & 1) == 0)
    {
      swift_unknownObjectRelease();

LABEL_20:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v8)
    {
      break;
    }

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_5:
    v3 += 2;
    if (!--v2)
    {
      return;
    }
  }

  if (v9)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    is_equal = nw_protocol_definition_is_equal(v8, v9);
    swift_unknownObjectRelease_n();

    swift_unknownObjectRelease_n();
    if (!is_equal)
    {
      return;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRelease();

LABEL_22:
}

BOOL nw_xpc_objects_equal(void *a1, void *a2)
{
  v4 = a1 == a2;
  v5 = a1;
  v6 = a2;
  if (a1 && a2 && a1 != a2)
  {
    v4 = xpc_equal(v5, v6);
  }

  return v4;
}

uint64_t sub_181B09C90(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_181F49B58(v7, v6);
          sub_181F49B58(v9, v8);
          v22 = sub_182AD1D58();
          if (v22)
          {
            v23 = sub_182AD1D88();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_182AD1D78();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_181F49B58(v7, v6);
        sub_181F49B58(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_181F49B58(v7, v6);
          sub_181F49B58(v9, v8);
          v27 = sub_182AD1D58();
          if (v27)
          {
            v28 = sub_182AD1D88();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_182AD1D78();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_182082F30(v24, v25, v26, v33);
          sub_181C1F2E4(v9, v8);
          sub_181C1F2E4(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_181F49B58(v7, v6);
        sub_181F49B58(v9, v8);
      }

      sub_182082F30(v33, v9, v8, &v32);
      sub_181C1F2E4(v9, v8);
      sub_181C1F2E4(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t nw_context_endpoint_table_matches_key(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  some_node = nw_hash_table_get_some_node(a1);
  v5 = nw_hash_node_get_object(some_node);
  is_equal = nw_endpoint_is_equal(v3, v5, 0);

  return is_equal;
}

uint64_t sub_181B0A11C(uint64_t a1, int *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v114 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v114);
  v115 = (v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v120 = (v113 - v9);
  v10 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v116 = v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v113 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v113 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v117 = v113 - v23;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v113 - v26;
  v30 = *a2;
  if ((*a2 & 4) != 0 && ((*(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x20) == 0) == (*(v3 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x20) >> 5)
  {
    goto LABEL_74;
  }

  v113[1] = v25;
  if ((v30 & 8) != 0)
  {
    LODWORD(v113[0]) = v30;
    v43 = v113 - v26;
    v44 = v21;
    v45 = v18;
    v46 = ObjectType;
    v47 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
    swift_beginAccess();
    v48 = *(v3 + v47);
    v49 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
    swift_beginAccess();
    v50 = *(a1 + v49);

    sub_181B09AA0(v48, v50);
    v51 = a1;
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_74;
    }

    v54 = *(v3 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2) ? 0 : *(v3 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
    a1 = v51;
    v55 = *(v51 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2) == 1 ? v54 == 0 : *(v51 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort) == v54;
    ObjectType = v46;
    v18 = v45;
    v21 = v44;
    v29 = v43;
    v30 = v113[0];
    if (!v55)
    {
      goto LABEL_74;
    }
  }

  if ((v30 & 2) != 0)
  {
    v56 = *(v3 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
    v57 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
    if (v56)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      v58 = v57;
      v113[0] = ObjectType;
      v59 = v58;
      v60 = a1;
      v61 = v56;
      v62 = sub_182AD3978();

      a1 = v60;
      if ((v62 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else if (v57)
    {
      goto LABEL_74;
    }

    if (!nw_xpc_objects_equal(*(v3 + OBJC_IVAR____TtC7Network8Endpoint_signature), *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature)))
    {
      goto LABEL_74;
    }
  }

  v31 = a1;
  if ((v30 & 0x10) != 0)
  {
    v32 = *(v3 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys);
    v33 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys);

    v34 = sub_181B09C90(v32, v33);

    if ((v34 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

  v63 = *(v3 + OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage);
  v64 = *(v31 + OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage);
  if (!v63)
  {
    if (!v64)
    {
      goto LABEL_8;
    }

LABEL_74:
    v65 = 0;
    return v65 & 1;
  }

  if (!v64)
  {
    goto LABEL_74;
  }

  v65 = 0;
  LODWORD(v27) = *v63;
  v28.i32[0] = *v64;
  v66 = *(v63 + 4) == *(v64 + 4);
  if ((vminv_u16(vceq_s16((vmovl_u8(*&v27).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v28).u64[0] & 0xFF00FF00FF00FFLL))) & 1) == 0)
  {
    return v65 & 1;
  }

  v67 = *(v63 + 5);
  v68 = *(v64 + 5);
  if (!v66 || v67 != v68)
  {
    return v65 & 1;
  }

LABEL_8:
  v35 = *(v3 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  v36 = *(v31 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if (((v36 & 2) == 0) == (v35 & 2) >> 1 || v30 == 31 && (((v36 & 8) == 0) == (v35 & 8) >> 3 || (v35 & 1) == ((v36 & 1) == 0)) || ((v36 & 0x200) == 0) == (v35 & 0x200) >> 9)
  {
    goto LABEL_74;
  }

  v37 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v3 + v37, v29, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v39 = *v29;
        v40 = OBJC_IVAR____TtC7Network8Endpoint_type;
        swift_beginAccess();
        sub_181ACC828(v31 + v40, v21, type metadata accessor for Endpoint.EndpointType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = *v21;
          *&v126[0] = v39;
          *&v124[0] = v41;
          LODWORD(v122[0]) = v30;
          v42 = sub_181E70734(v124, v122);
LABEL_62:
          v65 = v42;
LABEL_63:

          return v65 & 1;
        }

        v108 = v21;
      }

      else
      {
        v97 = *v29;
        v98 = OBJC_IVAR____TtC7Network8Endpoint_type;
        swift_beginAccess();
        sub_181ACC828(v31 + v98, v18, type metadata accessor for Endpoint.EndpointType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v99 = *v18;
          *&v126[0] = v97;
          *&v124[0] = v99;
          LODWORD(v122[0]) = v30;
          v42 = sub_18217935C(v124, v122);
          goto LABEL_62;
        }

        v108 = v18;
      }

      goto LABEL_73;
    }

    v82 = *(v29 + 1);
    v128 = *v29;
    v129 = v82;
    v130[0] = *(v29 + 2);
    *(v130 + 12) = *(v29 + 44);
    v83 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    v84 = v31 + v83;
    v76 = v117;
    sub_181ACC828(v84, v117, type metadata accessor for Endpoint.EndpointType);
    if (!swift_getEnumCaseMultiPayload())
    {
      v110 = *(v76 + 16);
      v126[0] = *v76;
      v126[1] = v110;
      v112 = *v76;
      v111 = *(v76 + 16);
      v127[0] = *(v76 + 32);
      *(v127 + 12) = *(v76 + 44);
      v124[0] = v128;
      v124[1] = v129;
      v125[0] = v130[0];
      *(v125 + 12) = *(v130 + 12);
      v122[0] = v112;
      v122[1] = v111;
      v123[0] = *(v76 + 32);
      *(v123 + 12) = *(v76 + 44);
      v121 = v30;
      v65 = sub_181B995E0(v122, &v121);
      sub_181AA57B4(v126);
      sub_181AA57B4(&v128);
      return v65 & 1;
    }

    sub_181AA57B4(&v128);
LABEL_72:
    v108 = v76;
LABEL_73:
    sub_181A5513C(v108, type metadata accessor for Endpoint.EndpointType);
    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v85 = *v29;
    v86 = *(v29 + 1);
    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = *(v29 + 16);
    v90 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    v91 = v31 + v90;
    v76 = v116;
    sub_181ACC828(v91, v116, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      LODWORD(v119) = v89;
      v92 = *v76;
      v93 = *(v76 + 8);
      v94 = *(v76 + 16);
      v120 = *(v76 + 24);
      LODWORD(v118) = *(v76 + 32);
      *&v126[0] = v85;
      *(&v126[0] + 1) = v86;
      *&v124[0] = v92;
      *(&v124[0] + 1) = v93;
      LODWORD(v122[0]) = v30;

      v96 = sub_181B0AD48(v124, v122, v95);

      if (v96 && (v88 == v94 && v87 == v120 || (sub_182AD4268() & 1) != 0))
      {

        v65 = v119 == v118;
        return v65 & 1;
      }

      goto LABEL_77;
    }

LABEL_67:

    goto LABEL_72;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v71 = *v29;
    v70 = *(v29 + 1);
    v72 = *(v29 + 2);
    v73 = *(v29 + 3);
    v74 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    v75 = v31 + v74;
    v76 = v118;
    sub_181ACC828(v75, v118, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v119 = v72;
      v77 = *v76;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      v120 = *(v76 + 24);
      *&v126[0] = v71;
      *(&v126[0] + 1) = v70;
      *&v124[0] = v77;
      *(&v124[0] + 1) = v78;
      LODWORD(v122[0]) = v30;

      v81 = sub_181B0AD48(v124, v122, v80);

      if (v81)
      {
        if (v119 != v79 || v73 != v120)
        {
          v65 = sub_182AD4268();

          goto LABEL_63;
        }

        v65 = 1;
        return v65 & 1;
      }

LABEL_77:

      goto LABEL_74;
    }

    goto LABEL_67;
  }

  v100 = v120;
  sub_181AA91BC(v29, v120, type metadata accessor for URLEndpoint);
  v101 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  v102 = v31 + v101;
  v76 = v119;
  sub_181ACC828(v102, v119, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_181A5513C(v100, type metadata accessor for URLEndpoint);
    goto LABEL_72;
  }

  v103 = v115;
  sub_181AA91BC(v76, v115, type metadata accessor for URLEndpoint);
  v104 = v100[1];
  *&v126[0] = *v100;
  *(&v126[0] + 1) = v104;
  v105 = v103[1];
  *&v124[0] = *v103;
  *(&v124[0] + 1) = v105;
  LODWORD(v122[0]) = v30;

  v107 = sub_181B0AD48(v124, v122, v106);

  if (v107)
  {
    v65 = sub_182AD1FB8();
  }

  else
  {
    v65 = 0;
  }

  sub_181A5513C(v103, type metadata accessor for URLEndpoint);
  sub_181A5513C(v100, type metadata accessor for URLEndpoint);
  return v65 & 1;
}

BOOL sub_181B0AD48(uint64_t *a1, _BYTE *a2, __n128 a3)
{
  v4 = a1[1];
  v5 = v3[1];
  if ((*a2 & 1) == 0)
  {
    goto LABEL_2;
  }

  v12 = *a1;
  if (!*v3)
  {
    if (!v12)
    {
      goto LABEL_2;
    }

LABEL_26:

    return 0;
  }

  *&v24 = *v3;
  if (!v12)
  {
    goto LABEL_26;
  }

  *&v23 = v12;
  v13 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v24, &v23);
  swift_retain_n();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_2:
  if (v5)
  {
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);

    if (!v4)
    {
      if (!v6)
      {
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        sub_181E6550C(v9, v8);
        if (v9)
        {
          v10 = 0;
          v11 = 0;
LABEL_42:
          sub_181AB612C(v9, v8);
          sub_181AB612C(v11, v10);
          return 0;
        }

        sub_181AB612C(0, v8);
        v20 = *(v5 + 64);
        return (v20 & 1) != 0;
      }

      goto LABEL_25;
    }

LABEL_13:
    v15 = *(v4 + 32);
    v14 = *(v4 + 40);

    if (v6)
    {
      if (v14)
      {
        if (v7 == v15 && v6 == v14)
        {
        }

        else
        {
          v17 = sub_182AD4268();

          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_30:
        if (v5)
        {
          v9 = *(v5 + 16);
          v8 = *(v5 + 24);
          sub_181E6550C(v9, v8);
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
        sub_181E6550C(v11, v10);
        if (v9)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          is_equal = nw_txt_record_is_equal(v8, v10);
          sub_181AB612C(v11, v10);
          sub_181AB612C(v9, v8);
          if (!is_equal)
          {
            return 0;
          }

          if (v5)
          {
LABEL_37:
            v20 = *(v4 + 64);
            if (*(v5 + 64))
            {
              return (v20 & 1) != 0;
            }

            v21 = *(v4 + 48);
            v24 = *(v5 + 48);
            v25 = 0;
            if ((v20 & 1) == 0)
            {
              v23 = v21;
              return _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v24, &v23);
            }

            return 0;
          }
        }

        else
        {
          if (v11)
          {
            v9 = 0;
            goto LABEL_42;
          }

          sub_181AB612C(0, v8);
          if (v5)
          {
            goto LABEL_37;
          }
        }

        return (*(v4 + 64) & 1) != 0;
      }
    }

    else if (!v14)
    {
      goto LABEL_30;
    }

LABEL_25:

    return 0;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_13;
  }

  sub_181AB612C(0, 0);
  return 1;
}

uint64_t sub_181B0B00C(char *a1, char *a2, char a3)
{
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  if (a1 == a2)
  {
LABEL_7:
    v10 = 1;
    return v10 & 1;
  }

  v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v7 = a1;
  swift_beginAccess();
  memcpy(__dst, &a1[v3], 0x17AuLL);
  sub_181A3DF5C(__dst, v12);

  v8 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v9 = a2;
  swift_beginAccess();
  memcpy(v12, __dst, 0x17AuLL);
  v10 = sub_181B99E10(&a2[v8], a3 & 1);
  swift_endAccess();
  sub_181A3DFB8(__dst);

  return v10 & 1;
}

uint64_t NWActivity.__allocating_init(domain:label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    v5 = result;
    *(result + 16) = nw_activity_create(a1, a2);
    *(v5 + 24) = a1;
    *(v5 + 32) = a2;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *_nw_endpoint_create_host_0(char *a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (nw_utilities_port_for_string(a2, &v8))
  {
    return _nw_endpoint_create_host_with_numeric_port_0(a1, bswap32(v8) >> 16);
  }

  if (qword_1ED40FE10 != -1)
  {
    swift_once();
  }

  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1ED411BA0);
  v5 = sub_182AD2678();
  v6 = sub_182AD38C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_181A37000, v5, v6, "Failed to parse port string", v7, 2u);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  return 0;
}

nw_endpoint_t nw_endpoint_create_host(const char *hostname, const char *port)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!hostname)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_endpoint_create_host";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null hostname", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null hostname";
LABEL_33:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_endpoint_create_host";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null hostname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v4)
        {
          return 0;
        }

LABEL_36:
        free(v4);
        return 0;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null hostname, no backtrace";
        goto LABEL_33;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null hostname, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!port)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_endpoint_create_host";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null port_string", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null port_string";
        goto LABEL_33;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v11 = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v12 = os_log_type_enabled(v5, type);
        if (v11)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_endpoint_create_host";
            v17 = 2082;
            v18 = v11;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null port_string, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v11);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if (!v12)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null port_string, no backtrace";
        goto LABEL_33;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_host";
        v7 = "%{public}s called with null port_string, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

    goto LABEL_34;
  }

  return _nw_endpoint_create_host(hostname, port);
}

uint64_t nw_protocol_register_extended(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal(a1);
  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v4 = &g_registration_list;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a1 == v4[4] && a1[1] == v4[5] && a1[2] == v4[6] && a1[3] == v4[7] && a1[4] == v4[8])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v26 = "nw_protocol_register_extended";
      v27 = 2082;
      v28 = a1;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol identifier %{public}s is already registered", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v23 = 0;
      if (!__nwlog_fault(v9, &type, &v23))
      {
        goto LABEL_40;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v23 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          v22 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v22)
            {
              *buf = 136446722;
              v26 = "nw_protocol_register_extended";
              v27 = 2082;
              v28 = a1;
              v29 = 2082;
              v30 = backtrace_string;
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Protocol identifier %{public}s is already registered, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_40;
          }

          if (!v22)
          {
            goto LABEL_40;
          }

          *buf = 136446466;
          v26 = "nw_protocol_register_extended";
          v27 = 2082;
          v28 = a1;
          v12 = "%{public}s Protocol identifier %{public}s is already registered, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_40;
          }

          *buf = 136446466;
          v26 = "nw_protocol_register_extended";
          v27 = 2082;
          v28 = a1;
          v12 = "%{public}s Protocol identifier %{public}s is already registered, backtrace limit exceeded";
        }

LABEL_39:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x16u);
        goto LABEL_40;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v26 = "nw_protocol_register_extended";
        v27 = 2082;
        v28 = a1;
        v12 = "%{public}s Protocol identifier %{public}s is already registered";
        goto LABEL_39;
      }

LABEL_40:
      if (v9)
      {
        free(v9);
      }

LABEL_42:
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      return v4 == 0;
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x78uLL, 0x1E715DD1uLL);
  if (v13)
  {
LABEL_27:
    v18 = *a1;
    v19 = *(a1 + 1);
    v13[8] = a1[4];
    *(v13 + 2) = v18;
    *(v13 + 3) = v19;
    v13[11] = a2;
    v20 = g_registration_list;
    *v13 = g_registration_list;
    if (v20)
    {
      *(v20 + 8) = v13;
    }

    g_registration_list = v13;
    v13[1] = &g_registration_list;
    goto LABEL_42;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *buf = 136446722;
  v26 = "nw_protocol_register_extended";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v27 = 2048;
  v28 = 1;
  v29 = 2048;
  v30 = 120;
  v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v13 = 0;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void nw_protocol_definition_initialize_common_state(NWConcrete_nw_protocol_definition *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1->common_state)
  {
    goto LABEL_9;
  }

  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x3F1778F3uLL);
  if (v2)
  {
LABEL_8:
    v1->common_state = v2;
LABEL_9:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_protocol_definition_initialize_common_state";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 88;
  v6 = 32;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, v6);

  if (!__nwlog_should_abort(v5))
  {
    free(v5);
    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_181B0BD50(uint64_t a1)
{
  sub_181B0BE78(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_182AD39B8();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_181B0BE78(uint64_t a1)
{
  if (!qword_1ED4102F8[0])
  {
    sub_182AD2738();
    v1 = sub_182AD39B8();
    if (!v2)
    {
      atomic_store(v1, qword_1ED4102F8);
    }
  }
}

double sub_181B0BEEC()
{
  v0 = nw_protocol_copy_tcp_definition();
  if (qword_1ED40FF60 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED411C38;
  v2 = byte_1ED411C40;
  LOWORD(xmmword_1ED411C48) = word_1ED411C28;
  *(&xmmword_1ED411C48 + 1) = qword_1ED411C30;
  unk_1ED411C58 = unk_1ED411C38;
  byte_1ED411C60 = byte_1ED411C40;
  unk_1ED411C69 = 0;
  *algn_1ED411C61 = 0;
  byte_1ED411C71 = 1;
  qword_1ED411C78 = v0;
  v3 = qword_1ED411C30;

  return sub_181F49A24(v3, v1, v2);
}

nw_protocol_definition_t nw_protocol_copy_tcp_definition(void)
{
  if (nw_protocol_setup_tcp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
  }

  v1 = g_tcp_definition;

  return v1;
}

void __nw_protocol_setup_tcp_definition_block_invoke()
{
  v0 = nw_protocol_tcp_identifier();
  v1 = nw_protocol_definition_create_with_identifier(v0);
  v2 = g_tcp_definition;
  g_tcp_definition = v1;

  nw_protocol_definition_set_context_globals_allocator(g_tcp_definition, nw_tcp_allocate_globals, nw_tcp_deallocate_globals);
  v3 = g_tcp_definition;

  nw_protocol_definition_set_has_global_definition(v3);
}

void nw_protocol_definition_set_context_globals_allocator(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_context_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_set_context_globals_allocator";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_context_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null allocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_context_globals_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_context_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null deallocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_context_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_context_globals_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_common_state(v5);
  common_state = v6->common_state;
  common_state->var1 = a2;
  common_state->var2 = a3;
LABEL_5:
}

void nw_protocol_definition_set_has_global_definition(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v1[192] |= 0x40u;
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_definition_set_has_global_definition";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_has_global_definition";
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v7 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v13 = "nw_protocol_definition_set_has_global_definition";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v8)
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_has_global_definition";
        _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_has_global_definition";
        _os_log_impl(&dword_181A37000, v4, v9, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  v1 = 0;
LABEL_3:
}

unint64_t sub_181B0C9E8()
{
  word_1ED411C28 = 2;
  result = sub_181FB974C(7365492, 0xE300000000000000);
  v1 = result;
  if (result == 39)
  {
    v1 = 7365492;
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411C30 = v1;
  unk_1ED411C38 = v2;
  byte_1ED411C40 = result == 39;
  return result;
}

unint64_t sub_181B0CA8C()
{
  result = qword_1ED40FFF8;
  if (!qword_1ED40FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40FFF8);
  }

  return result;
}

unint64_t sub_181B0CAE0()
{
  word_1ED411CF0 = 3;
  result = sub_181FB974C(7564404, 0xE300000000000000);
  v1 = result;
  if (result == 39)
  {
    v1 = 7564404;
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411CF8 = v1;
  unk_1ED411D00 = v2;
  byte_1ED411D08 = result == 39;
  return result;
}

uint64_t sub_181B0CB50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL network_config_register_boringssl_log_debug_updates(void *a1)
{
  v1 = a1;
  nw_allow_use_of_dispatch_internal(v1);
  v2 = nw_settings_register_boringssl_log_debug_updates(v1);

  return v2;
}

BOOL nw_settings_register_boringssl_log_debug_updates(void *a1)
{
  v1 = a1;
  nw_allow_use_of_dispatch_internal(a1);
  pthread_mutex_lock(&sSettingsMutex);
  v2 = sBoringSSLUpdateBlock;
  if (sBoringSSLUpdateBlock != v1)
  {
    if (v1)
    {
      v1 = _Block_copy(v1);
      v2 = sBoringSSLUpdateBlock;
    }

    if (v2)
    {
      _Block_release(v2);
    }

    sBoringSSLUpdateBlock = v1;
  }

  pthread_mutex_unlock(&sSettingsMutex);
  v3 = nw_setting_boringssl_log_debug;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v4 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_13;
  }

  Class = object_getClass(sCachedSettings);
  v6 = 0;
  if (!v3 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_14;
  }

  value = xpc_dictionary_get_value(v4, v3);
  if (value && (v8 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v6 = xpc_BOOL_get_value(v8);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  pthread_mutex_unlock(&sSettingsMutex);
  return v6;
}

void nw_protocol_definition_set_cache_entry_deallocator(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_cache_entry_deallocator";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_cache_entry_deallocator";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_cache_entry_deallocator";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_cache_entry_deallocator";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_cache_entry_deallocator";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_common_state(v3);
    v4->common_state->var7 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_cache_entry_deallocator";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null deallocate_function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_cache_entry_deallocator";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null deallocate_function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_cache_entry_deallocator";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_cache_entry_deallocator";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_cache_entry_deallocator";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t sub_181B0D1C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void __nw_protocol_copy_custom_ip_definition_block_invoke()
{
  if (nw_protocol_custom_ip_identifier_onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_custom_ip_identifier_onceToken, &__block_literal_global_4_55932);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_custom_ip_identifier_identifier);
  v1 = nw_protocol_copy_custom_ip_definition_definition;
  nw_protocol_copy_custom_ip_definition_definition = v0;
}

unint64_t sub_181B0D2A8()
{
  word_1ED411CD0 = 258;
  result = sub_181FB974C(1667855729, 0xE400000000000000);
  v1 = result;
  if (result == 39)
  {
    v1 = 1667855729;
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411CD8 = v1;
  unk_1ED411CE0 = v2;
  byte_1ED411CE8 = result == 39;
  return result;
}

unint64_t sub_181B0D318()
{
  word_1ED411CB0 = 258;
  result = sub_181FB974C(0x6E6F632D63697571, 0xEF6E6F697463656ELL);
  v1 = result;
  if (result == 39)
  {
    v1 = 0x6E6F632D63697571;
    v2 = 0xEF6E6F697463656ELL;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411CB8 = v1;
  qword_1ED411CC0 = v2;
  byte_1ED411CC8 = result == 39;
  return result;
}

unint64_t sub_181B0D398()
{
  word_1ED410148 = 2;
  result = sub_181FB974C(7365749, 0xE300000000000000);
  v1 = result;
  if (result == 39)
  {
    v1 = 7365749;
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED410150 = v1;
  unk_1ED410158 = v2;
  byte_1ED410160 = result == 39;
  return result;
}

unint64_t sub_181B0D408()
{
  word_1ED411C80 = 2;
  result = sub_181FB974C(0x64752D7466697773, 0xE900000000000070);
  v1 = result;
  if (result == 39)
  {
    v1 = 0x64752D7466697773;
    v2 = 0xE900000000000070;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411C88 = v1;
  unk_1ED411C90 = v2;
  byte_1ED411C98 = result == 39;
  return result;
}

double __nw_protocol_custom_ip_identifier_block_invoke()
{
  qword_1ED410FF8 = 0;
  unk_1ED410FEA = 0u;
  strcpy(&nw_protocol_custom_ip_identifier_identifier, "custom-ip");
  *&result = 0x100000003;
  qword_1ED411000 = 0x100000003;
  return result;
}

void sub_181B0D514(uint64_t a1)
{
  if (!qword_1ED40FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8396F8, qword_182AED060);
    v1 = sub_182AD39B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED40FD50);
    }
  }
}

void sub_181B0D578(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_181B0D628();
    if (v2 <= 0x3F)
    {
      sub_181B0D514(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_181B0D628()
{
  if (!qword_1ED410718)
  {
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED410718);
    }
  }
}

double sub_181B0D678()
{
  v0 = nw_protocol_copy_quic_connection_definition();
  if (qword_1ED4100E8 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1ED411CC0;
  v2 = byte_1ED411CC8;
  LOWORD(xmmword_1ED411BF0) = word_1ED411CB0;
  *(&xmmword_1ED411BF0 + 1) = qword_1ED411CB8;
  unk_1ED411C00 = qword_1ED411CC0;
  byte_1ED411C08 = byte_1ED411CC8;
  unk_1ED411C11 = 0;
  *algn_1ED411C09 = 0;
  byte_1ED411C19 = 1;
  qword_1ED411C20 = v0;
  v3 = qword_1ED411CB8;

  return sub_181F49A24(v3, v1, v2);
}

uint64_t sub_181B0D734(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (v1[24])
  {
  }

  else
  {
    sub_181FB86BC(*(v1 + 1));
  }

  v5 = sub_182AD3048();

  strncpy(a1, (v5 + 32), 0x20uLL);

  *(a1 + 32) = v3 + 1;
  *(a1 + 36) = v4 + 1;
  return result;
}

void nw_protocol_definition_set_metadata_copy_reply(void *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_copy_reply";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v32 = "nw_protocol_definition_set_metadata_copy_reply";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v11)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v11);
        goto LABEL_5;
      }

      if (v20)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_copy_reply";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null create_reply_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null create_reply_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null create_reply_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v23)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null create_reply_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v32 = "nw_protocol_definition_set_metadata_copy_reply";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null create_reply_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_copy_reply";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null copy_original_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null copy_original_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null copy_original_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v25)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_copy_reply";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null copy_original_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25)
    {
      *buf = 136446466;
      v32 = "nw_protocol_definition_set_metadata_copy_reply";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null copy_original_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v21);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_common_state(v7);
  common_state = v8->common_state;
  common_state->var3 = a2;
  common_state->var4 = a3;
  common_state->var5 = a4;
LABEL_5:
}

void nw_protocol_definition_set_globals_allocator(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_set_globals_allocator";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null allocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_globals_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_globals_allocator";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null deallocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_globals_allocator";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_globals_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_common_state(v5);
  common_state = v6->common_state;
  common_state->var0 = a2;
  common_state->var2 = a3;
LABEL_5:
}

void nw_protocol_definition_initialize_extended_state(NWConcrete_nw_protocol_definition *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1->extended_state)
  {
    goto LABEL_9;
  }

  v2 = malloc_type_calloc(1uLL, 0x110uLL, 0xC7212BCBuLL);
  if (v2)
  {
LABEL_8:
    v1->extended_state = v2;
LABEL_9:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_protocol_definition_initialize_extended_state";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 272;
  v6 = 32;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, v6);

  if (!__nwlog_should_abort(v5))
  {
    free(v5);
    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
}

void nw_protocol_definition_set_flow_state_allocator(void *a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_definition_set_flow_state_allocator";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v37 = "nw_protocol_definition_set_flow_state_allocator";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_72:
        if (!v11)
        {
          goto LABEL_6;
        }

LABEL_73:
        free(v11);
        goto LABEL_6;
      }

      if (v22)
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v30, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_71:

    goto LABEL_72;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_definition_set_flow_state_allocator";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null allocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v34 != 1)
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    v23 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v23)
    {
      if (v25)
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v25)
    {
      *buf = 136446466;
      v37 = "nw_protocol_definition_set_flow_state_allocator";
      v38 = 2082;
      v39 = v23;
      _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

  if (!a3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_definition_set_flow_state_allocator";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null deallocate_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v34 != 1)
    {
      v12 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v32, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    v23 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v12, type);
    if (!v23)
    {
      if (v27)
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v27)
    {
      *buf = 136446466;
      v37 = "nw_protocol_definition_set_flow_state_allocator";
      v38 = 2082;
      v39 = v23;
      _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

  if (!a4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_definition_set_flow_state_allocator";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null replace_function", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null replace_function", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v34 != 1)
    {
      v12 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v33, "%{public}s called with null replace_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    v23 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v28 = type;
    v29 = os_log_type_enabled(v12, type);
    if (!v23)
    {
      if (v29)
      {
        *buf = 136446210;
        v37 = "nw_protocol_definition_set_flow_state_allocator";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null replace_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v29)
    {
      *buf = 136446466;
      v37 = "nw_protocol_definition_set_flow_state_allocator";
      v38 = 2082;
      v39 = v23;
      _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null replace_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_46:

    free(v23);
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_73;
  }

  nw_protocol_definition_initialize_extended_state(v7);
  extended_state = v8->extended_state;
  extended_state->var2 = a2;
  extended_state->var3 = a3;
  extended_state->var4 = a4;
LABEL_6:
}

void nw_protocol_definition_set_initialize(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_initialize";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_initialize";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_initialize";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_initialize";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_initialize";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var5 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_initialize";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_initialize";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_initialize";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_initialize";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_initialize";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_custom_flow_map_key_size(void *a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var33 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_custom_flow_map_key_size";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_custom_flow_map_key_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_protocol_definition_set_custom_flow_map_key_size";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_custom_flow_map_key_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_custom_flow_map_key_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_protocol_definition_set_destroy(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_destroy";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_destroy";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_destroy";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_destroy";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_destroy";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var6 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_destroy";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_destroy";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_destroy";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_destroy";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_destroy";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_start(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var15 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_start";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_start";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_protocol_definition_set_start";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_start";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_start";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_protocol_definition_set_stop(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var16 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_stop";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_stop";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_protocol_definition_set_stop";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_stop";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_stop";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_protocol_definition_set_handle_error(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_handle_error";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_error";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_handle_error";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_error";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_error";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var9 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_handle_error";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_error";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_error";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_error";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_handle_error";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_handle_inbound(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_handle_inbound";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_inbound";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_handle_inbound";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_inbound";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_inbound";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var7 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_handle_inbound";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_inbound";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_inbound";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_inbound";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_handle_inbound";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_handle_outbound(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_handle_outbound";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_outbound";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_definition_set_handle_outbound";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_outbound";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_handle_outbound";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var8 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_handle_outbound";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null function", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_outbound";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null function", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_outbound";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null function, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_protocol_definition_set_handle_outbound";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_handle_outbound";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_outbound_events(void *a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    nw_protocol_definition_initialize_extended_state(v7);
    extended_state = v8->extended_state;
    extended_state->var12 = a2;
    extended_state->var13 = a3;
    extended_state->var14 = a4;
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_definition_set_outbound_events";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_definition_set_outbound_events";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_protocol_definition_set_outbound_events";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_protocol_definition_set_outbound_events";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_definition_set_outbound_events";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

LABEL_3:
}

void nw_protocol_definition_set_inbound_events(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_inbound_events";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_set_inbound_events";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_inbound_events";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null inbound_starting", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null inbound_starting", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null inbound_starting, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inbound_starting, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_inbound_events";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inbound_starting, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_inbound_events";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null inbound_stopping", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null inbound_stopping", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null inbound_stopping, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_inbound_events";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null inbound_stopping, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_inbound_events";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null inbound_stopping, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_extended_state(v5);
  extended_state = v6->extended_state;
  extended_state->var10 = a2;
  extended_state->var11 = a3;
LABEL_5:
}

void nw_protocol_definition_set_link_congestion_state_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var18 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_link_congestion_state_update";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_link_congestion_state_update";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_protocol_definition_set_link_congestion_state_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_link_congestion_state_update";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_link_congestion_state_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}