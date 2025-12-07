int8x16_t *WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(int8x16_t **this, WGSL::AST::Parameter *a2)
{
  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a2 + 8) + 24), 0, v4, v5);
  v16[0] = "& ";
  v16[1] = 2;
  v15 = *(a2 + 7);
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 8), v16, &v15);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      LOBYTE(v16[0]) = 32;
      v11 = this[9];
      if (v11 && (v12 = *(this + 20), v12 < v11->i32[1]) && !this[8])
      {
        v13 = v11[1].i32[0];
        v14 = v11->i64[1];
        *(this + 20) = v12 + 1;
        if ((v13 & 4) != 0)
        {
          *(v14 + v12) = 32;
        }

        else
        {
          *(v14 + 2 * v12) = 32;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      if ((this[4] & 1) == 0)
      {
        result = ((*this)[6].i64[0])(this, v10);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Structure *a2)
{
  *&v960[7] = *MEMORY[0x277D85DE8];
  *(this + 54) = *(a2 + 88) | 0x100;
  LODWORD(v953) = *(this + 26);
  v955 = "struct ";
  v956 = 7;
  v948 = *(a2 + 6);
  v951 = " {\n";
  v952 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v953, &v955, &v948, &v951);
  ++*(this + 26);
  v5 = *(a2 + 88);
  v6 = *(a2 + 21);
  v938 = a2;
  if (v6)
  {
    v940 = *(a2 + 88);
    v939 = 0;
    v7 = *(a2 + 9);
    v941 = &v7[v6];
    v8 = 0uLL;
    while (1)
    {
      v11 = *v7;
      v12 = *(*(*v7 + 104) + 24);
      v942 = v4;
      v944 = v8;
      if (!v12)
      {
        goto LABEL_22;
      }

      if (*(v12 + 48) == 10)
      {
        v12 = *(v12 + 8);
        if (!v12 || *(v12 + 48))
        {
          goto LABEL_22;
        }
      }

      else if (*(v12 + 48))
      {
        goto LABEL_22;
      }

      if (*v12 == 10)
      {
        v13 = *(v11 + 100);
        if (v13)
        {
          v14 = *(v11 + 88);
          v15 = 8 * v13;
          while (1)
          {
            v16 = *v14;
            if ((*(**v14 + 16))(*v14) == 2)
            {
              v17 = *(v16 + 24);
              LOBYTE(v955) = 0;
              v959 = 0;
              if (*(v17 + 56) == 1)
              {
                break;
              }
            }

            ++v14;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_82;
            }
          }

          v957 = -1;
          v18 = *(v17 + 48);
          if (v18 == 255)
          {
            v959 = 1;
            goto LABEL_1119;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, &v951, &v955, (v17 + 32));
          v957 = *(v17 + 48);
          v959 = 1;
          switch(v957)
          {
            case 5:
              v19 = v955;
              break;
            case 4:
              v19 = v955;
              break;
            case 3:
              v19 = v955;
              break;
            default:
              goto LABEL_1119;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v951, &v955);
          v60 = *(this + 26);
          v61 = *(v11 + 48);
          v62 = *(this + 20);
          if (v61)
          {
LABEL_83:
            v63 = *(v61 + 4);
            if (v19 < 0)
            {
              goto LABEL_156;
            }

            goto LABEL_84;
          }
        }

        else
        {
LABEL_82:
          v19 = 0;
          v60 = *(this + 26);
          v61 = *(v11 + 48);
          v62 = *(this + 20);
          if (v61)
          {
            goto LABEL_83;
          }
        }

        v63 = 0;
        if (v19 < 0)
        {
LABEL_156:
          v122 = -v19;
          v64 = 1;
          do
          {
            ++v64;
            v105 = v122 >= 0xA;
            v122 /= 0xAuLL;
          }

          while (v105);
          goto LABEL_158;
        }

LABEL_84:
        v64 = 0;
        v65 = v19;
        do
        {
          ++v64;
          v43 = v65 > 9;
          v65 /= 0xAuLL;
        }

        while (v43);
LABEL_158:
        if (v61)
        {
          v123 = *(v61 + 4);
          v124 = v19 + 1;
          if (v19 < -1)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v123 = 0;
          v124 = v19 + 1;
          if (v19 < -1)
          {
LABEL_160:
            v125 = ~v19;
            v126 = 1;
            do
            {
              ++v126;
              v105 = v125 >= 0xA;
              v125 /= 0xAuLL;
            }

            while (v105);
            goto LABEL_166;
          }
        }

        v126 = 0;
        v127 = v124;
        do
        {
          ++v126;
          v43 = v127 > 9;
          v127 /= 0xAuLL;
        }

        while (v43);
LABEL_166:
        if (v61)
        {
          v128 = *(v61 + 4);
          v129 = v19 + 2;
          if (v19 < -2)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v128 = 0;
          v129 = v19 + 2;
          if (v19 < -2)
          {
LABEL_168:
            v130 = -2 - v19;
            v131 = 1;
            do
            {
              ++v131;
              v105 = v130 >= 0xA;
              v130 /= 0xAuLL;
            }

            while (v105);
            goto LABEL_174;
          }
        }

        v131 = 0;
        v132 = v129;
        do
        {
          ++v131;
          v43 = v132 > 9;
          v132 /= 0xAuLL;
        }

        while (v43);
LABEL_174:
        if (v61)
        {
          v133 = *(v61 + 4);
          v134 = v19 + 3;
          if (v19 < -3)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v133 = 0;
          v134 = v19 + 3;
          if (v19 < -3)
          {
LABEL_176:
            v135 = -3 - v19;
            v136 = 1;
            do
            {
              ++v136;
              v105 = v135 >= 0xA;
              v135 /= 0xAuLL;
            }

            while (v105);
            goto LABEL_182;
          }
        }

        v136 = 0;
        v137 = v134;
        do
        {
          ++v136;
          v43 = v137 > 9;
          v137 /= 0xAuLL;
        }

        while (v43);
LABEL_182:
        v138 = (4 * v60);
        v139 = v136 + 38;
        if (v136 >= 0xFFFFFFDA)
        {
          v139 = -1;
        }

        v105 = __CFADD__(v133, v139);
        v140 = v133 + v139;
        if (v105)
        {
          v140 = -1;
        }

        v105 = __CFADD__(v140, 11);
        v141 = v140 + 11;
        if (v105)
        {
          v141 = -1;
        }

        v105 = __CFADD__(v138, v141);
        v142 = v138 + v141;
        if (v105)
        {
          v142 = -1;
        }

        v105 = __CFADD__(v142, 5);
        v143 = v142 + 5;
        if (v105)
        {
          v143 = -1;
        }

        v105 = __CFADD__(v131, v143);
        v144 = v131 + v143;
        if (v105)
        {
          v144 = -1;
        }

        v105 = __CFADD__(v144, 20);
        v145 = v144 + 20;
        if (v105)
        {
          v145 = -1;
        }

        v105 = __CFADD__(v128, v145);
        v146 = v128 + v145;
        if (v105)
        {
          v146 = -1;
        }

        v105 = __CFADD__(v146, 11);
        v147 = v146 + 11;
        if (v105)
        {
          v147 = -1;
        }

        v105 = __CFADD__(v138, v147);
        v148 = v138 + v147;
        if (v105)
        {
          v148 = -1;
        }

        v105 = __CFADD__(v148, 5);
        v149 = v148 + 5;
        if (v105)
        {
          v149 = -1;
        }

        v105 = __CFADD__(v126, v149);
        v150 = v126 + v149;
        if (v105)
        {
          v150 = -1;
        }

        v105 = __CFADD__(v150, 18);
        v151 = v150 + 18;
        if (v105)
        {
          v151 = -1;
        }

        v105 = __CFADD__(v123, v151);
        v152 = v123 + v151;
        if (v105)
        {
          v152 = -1;
        }

        v105 = __CFADD__(v152, 19);
        v153 = v152 + 19;
        if (v105)
        {
          v153 = -1;
        }

        v105 = __CFADD__(v138, v153);
        v154 = v138 + v153;
        if (v105)
        {
          v154 = -1;
        }

        v105 = __CFADD__(v154, 5);
        v155 = v154 + 5;
        if (v105)
        {
          v155 = -1;
        }

        v105 = __CFADD__(v64, v155);
        v156 = v64 + v155;
        if (v105)
        {
          v156 = -1;
        }

        v105 = __CFADD__(v156, 17);
        v157 = v156 + 17;
        if (v105)
        {
          v157 = -1;
        }

        v105 = __CFADD__(v63, v157);
        v158 = v63 + v157;
        if (v105)
        {
          v158 = -1;
        }

        v105 = __CFADD__(v158, 19);
        v159 = v158 + 19;
        if (v105)
        {
          v159 = -1;
        }

        v935 = v61;
        __lena = v138;
        v105 = __CFADD__(v138, v159);
        v160 = v138 + v159;
        if (v105)
        {
          v160 = -1;
        }

        v105 = __CFADD__(v62, v160);
        v161 = v62 + v160;
        if (v105)
        {
          v162 = 0xFFFFFFFFLL;
        }

        else
        {
          v162 = v161;
        }

        v163 = *(this + 9);
        if ((!v163 && (v163 = *(this + 8)) == 0 || (*(v163 + 16) & 4) != 0) && (!v61 || (*(v61 + 16) & 4) != 0))
        {
          v172 = MEMORY[0x22AA68210](this + 64, v162);
          if (!v172)
          {
            goto LABEL_6;
          }

          v173 = v171;
          v174 = __lena;
          v933 = v172;
          v928 = v171;
          if (__lena)
          {
            memset(v172, 32, __lena);
            v173 = v928;
            v172 = v933;
            v9 = v935;
            v174 = __lena;
            v175 = __lena;
            if (v928 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v175 = 0;
            v9 = v935;
          }

          v192 = &v172[v175];
          *v192 = *"texture2d<float> __";
          *(v192 + 15) = 1600069694;
          if (v173 - v175 <= 0x12)
          {
            goto LABEL_1117;
          }

          v927 = v134;
          v193 = v173 - v175 - 19;
          v194 = v192 + 19;
          v932 = v175;
          if (v9)
          {
            v195 = *(v9 + 8);
            v196 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v196)
              {
                if (v196 == 1)
                {
                  *v194 = v195->i8[0];
                }

                else
                {
                  memcpy(v192 + 19, v195, v196);
                  v173 = v928;
                  v175 = v932;
                  v172 = v933;
                  v9 = v935;
                  v174 = __lena;
                }
              }

              goto LABEL_568;
            }

            if (v196 < 0x10)
            {
              v197 = (v192 + 19);
              v199 = &v194[v196];
              if (v194 != &v194[v196])
              {
                goto LABEL_383;
              }
            }

            else
            {
              v197 = (v192 + 19);
              do
              {
                v198 = vld2q_s8(v195->i8);
                v195 += 2;
                *v197++ = v198;
              }

              while (v197 != &v194[v196 & 0xFFFFFFF0]);
              v199 = &v194[v196];
              if (v197 == &v194[v196])
              {
                goto LABEL_568;
              }

LABEL_383:
              v279 = &v172[v196 + v175];
              v280 = v279 - v197;
              v281 = v279 - v197 + 19;
              if (v281 < 4 || ((v282 = (v279 + 19), v197 < &v195[2].u16[v280 + 3]) ? (v283 = v195 >= v282) : (v283 = 1), !v283))
              {
                v441 = v197;
                v442 = v195;
                goto LABEL_561;
              }

              if (v281 >= 0x20)
              {
                v284 = v281 & 0xFFFFFFFFFFFFFFE0;
                v694 = v195 + 2;
                v695 = (v197 + 1);
                v696 = v281 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v698 = v694[-2];
                  v697 = v694[-1];
                  v700 = *v694;
                  v699 = v694[1];
                  v694 += 4;
                  v695[-1] = vuzp1q_s8(v698, v697);
                  *v695 = vuzp1q_s8(v700, v699);
                  v695 += 2;
                  v696 -= 32;
                }

                while (v696);
                if (v281 != v284)
                {
                  if ((v281 & 0x1C) == 0)
                  {
                    v442 = (v195 + 2 * v284);
                    v441 = (v197 + v284);
                    goto LABEL_561;
                  }

                  goto LABEL_856;
                }
              }

              else
              {
                v284 = 0;
LABEL_856:
                v441 = (v197 + (v281 & 0xFFFFFFFFFFFFFFFCLL));
                v442 = (v195 + 2 * (v281 & 0xFFFFFFFFFFFFFFFCLL));
                v701 = (v195 + 2 * v284);
                v702 = (v197 + v284);
                v703 = v284 - (v281 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v704 = *v701++;
                  *v702++ = vuzp1_s8(v704, v704).u32[0];
                  v703 += 4;
                }

                while (v703);
                if (v281 != (v281 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_561:
                    v443 = v442->i8[0];
                    v442 = (v442 + 2);
                    *v441 = v443;
                    v441 = (v441 + 1);
                  }

                  while (v441 != v199);
                }
              }
            }

LABEL_568:
            v200 = *(v9 + 4);
            if (v193 < v200)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v200 = 0;
          }

          v446 = &v194[v200];
          *v446 = *"_FirstPlane [[id(";
          v446[16] = 40;
          if (v193 - v200 <= 0x10)
          {
            goto LABEL_1117;
          }

          v447 = v193 - v200 - 17;
          v448 = v446 + 17;
          v449 = 0;
          if ((v19 & 0x8000000000000000) == 0)
          {
            v450 = &v959;
            v451 = v19;
            do
            {
              if (v449 == -25)
              {
                goto LABEL_1117;
              }

              v452 = v449;
              v453 = v450;
              v960[--v449] = (v451 % 0xA) | 0x30;
              --v450;
              v43 = v451 > 9;
              v451 /= 0xAuLL;
            }

            while (v43);
            if (~v449 < v447)
            {
              v454 = ~v449;
            }

            else
            {
              v454 = v193 - v200 - 17;
            }

            if (v454 >= 8)
            {
              v469 = v454 + 1;
              v470 = v469 & 7;
              if ((v469 & 7) == 0)
              {
                v470 = 8;
              }

              v455 = v469 - v470;
              if (-v452 < v447)
              {
                v471 = -v452;
              }

              else
              {
                v471 = v193 - v200 - 17;
              }

              v472 = ~v471 + v470;
              v473 = v448;
              do
              {
                v474 = *v453;
                v453 += 8;
                *v473++ = v474;
                v472 += 8;
              }

              while (v472);
            }

            else
            {
              v455 = 0;
            }

            v475 = &v960[v449];
            while (v200 + v175 - v173 + v455 != -36)
            {
              v172[v200 + 36 + v175 + v455] = v475[v455];
              ++v455;
              if (v452 + v455 == 1)
              {
                goto LABEL_607;
              }
            }

LABEL_1117:
            __break(1u);
          }

          v456 = -v19;
          v457 = &v958;
          do
          {
            if (v449 == -25)
            {
              goto LABEL_1117;
            }

            v458 = v449;
            v459 = v457;
            v960[--v449] = (v456 % 0xA) | 0x30;
            --v457;
            v43 = v456 > 9;
            v456 /= 0xAuLL;
          }

          while (v43);
          if ((v449 + 24) >= 0x19)
          {
            goto LABEL_1117;
          }

          v460 = 0;
          v960[v449 - 1] = 45;
          if (-v449 < v447)
          {
            v461 = -v449;
          }

          else
          {
            v461 = v193 - v200 - 17;
          }

          if (v461 >= 8)
          {
            v462 = v461 + 1;
            v463 = (v461 + 1) & 7;
            if (!v463)
            {
              v463 = 8;
            }

            v460 = v462 - v463;
            v464 = 1 - v458;
            if (1 - v458 >= v447)
            {
              v464 = v193 - v200 - 17;
            }

            v465 = ~v464 + v463;
            v466 = v448;
            do
            {
              v467 = *v459++;
              *v466++ = v467;
              v465 += 8;
            }

            while (v465);
          }

          v468 = &v960[v449 - 1];
          do
          {
            if (v200 + v175 - v173 + v460 == -36)
            {
              goto LABEL_1117;
            }

            v172[v200 + 36 + v175 + v460] = v468[v460];
            ++v460;
          }

          while (v458 + v460 != 2);
LABEL_607:
          if (v19 < 0)
          {
            v478 = -v19;
            v476 = 1;
            do
            {
              ++v476;
              v105 = v478 >= 0xA;
              v478 /= 0xAuLL;
            }

            while (v105);
          }

          else
          {
            v476 = 0;
            v477 = v19;
            do
            {
              ++v476;
              v43 = v477 > 9;
              v477 /= 0xAuLL;
            }

            while (v43);
          }

          v105 = v447 >= v476;
          v479 = v447 - v476;
          if (!v105)
          {
            goto LABEL_1117;
          }

          v480 = v448 + v476;
          v480[4] = 10;
          *v480 = 995974441;
          if (v479 <= 4)
          {
            goto LABEL_1117;
          }

          v923 = v476;
          v481 = v479 - 5;
          v482 = v480 + 5;
          if (v174)
          {
            memset(v480 + 5, 32, v174);
            v175 = v932;
            v172 = v933;
            v9 = v935;
            v174 = __lena;
            v483 = __lena;
            if (v481 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v483 = 0;
          }

          v484 = v481 - v483;
          v485 = &v482[v483];
          *v485 = *"texture2d<float> __";
          *(v485 + 15) = 1600069694;
          if (v484 <= 0x12)
          {
            goto LABEL_1117;
          }

          v486 = v484 - 19;
          v487 = v485 + 19;
          if (v9)
          {
            v488 = *(v9 + 8);
            v489 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v489)
              {
                if (v489 == 1)
                {
                  *v487 = v488->i8[0];
                }

                else
                {
                  memcpy(v487, v488, v489);
                  v175 = v932;
                  v172 = v933;
                  v9 = v935;
                  v174 = __lena;
                }
              }

              goto LABEL_645;
            }

            if (v489 < 0x10)
            {
              v490 = (v485 + 19);
              v492 = &v487[v489];
              if (v487 != &v487[v489])
              {
                goto LABEL_633;
              }
            }

            else
            {
              v490 = (v485 + 19);
              do
              {
                v491 = vld2q_s8(v488->i8);
                v488 += 2;
                *v490 = v491;
                v490 += 16;
              }

              while (v490 != &v487[v489 & 0xFFFFFFF0]);
              v492 = &v487[v489];
              if (v490 == &v487[v489])
              {
                goto LABEL_645;
              }

LABEL_633:
              v494 = &v172[2 * v175 + v200 + v923 + v489 - v490 + 60];
              if (v494 < 4 || ((v495 = &v172[v200 + v923 + v489], v490 < &v488[7].u64[1] + 4 * v175 + 2 * v495 - 2 * v490) ? (v496 = v488 >= &v495[2 * v175 + 60]) : (v496 = 1), !v496))
              {
                v498 = v490;
                v499 = v488;
                goto LABEL_642;
              }

              if (v494 >= 0x20)
              {
                v497 = v494 & 0xFFFFFFFFFFFFFFE0;
                v705 = v488 + 2;
                v706 = (v490 + 16);
                v707 = v494 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v709 = v705[-2];
                  v708 = v705[-1];
                  v711 = *v705;
                  v710 = v705[1];
                  v705 += 4;
                  v706[-1] = vuzp1q_s8(v709, v708);
                  *v706 = vuzp1q_s8(v711, v710);
                  v706 += 2;
                  v707 -= 32;
                }

                while (v707);
                if (v494 != v497)
                {
                  if ((v494 & 0x1C) == 0)
                  {
                    v499 = (v488 + 2 * v497);
                    v498 = (v490 + v497);
                    goto LABEL_642;
                  }

                  goto LABEL_864;
                }
              }

              else
              {
                v497 = 0;
LABEL_864:
                v498 = (v490 + (v494 & 0xFFFFFFFFFFFFFFFCLL));
                v499 = (v488 + 2 * (v494 & 0xFFFFFFFFFFFFFFFCLL));
                v712 = (v488 + 2 * v497);
                v713 = (v490 + v497);
                v714 = v497 - (v494 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v715 = *v712++;
                  *v713++ = vuzp1_s8(v715, v715).u32[0];
                  v714 += 4;
                }

                while (v714);
                if (v494 != (v494 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_642:
                    v500 = v499->i8[0];
                    v499 = (v499 + 2);
                    *v498++ = v500;
                  }

                  while (v498 != v492);
                }
              }
            }

LABEL_645:
            v493 = *(v9 + 4);
            if (v486 < v493)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v493 = 0;
          }

          v501 = &v487[v493];
          *v501 = *"_SecondPlane [[id(";
          *(v501 + 8) = 10340;
          if (v486 - v493 <= 0x11)
          {
            goto LABEL_1117;
          }

          v502 = v486 - v493 - 18;
          v503 = v501 + 18;
          if (v19 <= -2)
          {
            v504 = 0;
            v505 = ~v19;
            v506 = &v958;
            do
            {
              if (v504 == -25)
              {
                goto LABEL_1117;
              }

              v507 = v504;
              v508 = v506;
              v960[--v504] = (v505 % 0xA) | 0x30;
              --v506;
              v43 = v505 > 9;
              v505 /= 0xAuLL;
            }

            while (v43);
            if ((v504 + 24) < 0x19)
            {
              v509 = 0;
              v960[v504 - 1] = 45;
              if (-v504 < v502)
              {
                v510 = -v504;
              }

              else
              {
                v510 = v486 - v493 - 18;
              }

              if (v510 >= 8)
              {
                v511 = v510 + 1;
                v512 = (v510 + 1) & 7;
                if (!v512)
                {
                  v512 = 8;
                }

                v509 = v511 - v512;
                v513 = 1 - v507;
                if (1 - v507 >= v502)
                {
                  v513 = v486 - v493 - 18;
                }

                v514 = ~v513 + v512;
                v515 = v503;
                v516 = v508;
                do
                {
                  v517 = *v516++;
                  *v515++ = v517;
                  v514 += 8;
                }

                while (v514);
              }

              v518 = 2 - v507;
              v519 = v486 - v493 - 18;
              v520 = v503;
              while (v509 != v519)
              {
                *(v520 + v509) = *(v508 + v509);
                v508 = (v508 + 1);
                --v518;
                v520 = (v520 + 1);
                --v519;
                if (v509 == v518)
                {
                  goto LABEL_684;
                }
              }
            }

            goto LABEL_1117;
          }

          v521 = 0;
          v522 = &v959;
          v523 = v124;
          do
          {
            if (v521 == -25)
            {
              goto LABEL_1117;
            }

            v524 = v521;
            v525 = v522;
            v960[--v521] = (v523 % 0xA) | 0x30;
            --v522;
            v43 = v523 > 9;
            v523 /= 0xAuLL;
          }

          while (v43);
          if (~v521 < v502)
          {
            v526 = ~v521;
          }

          else
          {
            v526 = v486 - v493 - 18;
          }

          if (v526 >= 8)
          {
            v528 = v526 + 1;
            v529 = v528 & 7;
            if ((v528 & 7) == 0)
            {
              v529 = 8;
            }

            v527 = v528 - v529;
            if (-v524 < v502)
            {
              v530 = -v524;
            }

            else
            {
              v530 = v486 - v493 - 18;
            }

            v531 = ~v530 + v529;
            v532 = v503;
            v533 = v525;
            do
            {
              v534 = *v533;
              v533 += 8;
              *v532++ = v534;
              v531 += 8;
            }

            while (v531);
          }

          else
          {
            v527 = 0;
          }

          v535 = 1 - v524;
          v536 = v486 - v493 - 18;
          v537 = v503;
          do
          {
            if (v527 == v536)
            {
              goto LABEL_1117;
            }

            *(v537 + v527) = v525[v527];
            ++v525;
            --v535;
            v537 = (v537 + 1);
            --v536;
          }

          while (v527 != v535);
LABEL_684:
          if (v19 >= -1)
          {
            v539 = 0;
            do
            {
              ++v539;
              v43 = v124 > 9;
              v124 /= 0xAuLL;
            }

            while (v43);
          }

          else
          {
            v538 = ~v19;
            v539 = 1;
            do
            {
              ++v539;
              v105 = v538 >= 0xA;
              v538 /= 0xAuLL;
            }

            while (v105);
          }

          v540 = v539;
          v105 = v502 >= v539;
          v541 = v502 - v539;
          if (!v105)
          {
            goto LABEL_1117;
          }

          v542 = v503 + v539;
          v542[4] = 10;
          *v542 = 995974441;
          if (v541 <= 4)
          {
            goto LABEL_1117;
          }

          v543 = v541 - 5;
          v544 = v542 + 5;
          v925 = v493;
          if (v174)
          {
            memset(v542 + 5, 32, v174);
            v493 = v925;
            v175 = v932;
            v172 = v933;
            v9 = v935;
            v174 = __lena;
            v545 = __lena;
            v546 = v928;
            if (v543 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v545 = 0;
            v546 = v928;
          }

          v547 = v543 - v545;
          v548 = &v544[v545];
          *v548 = *"float3x2 __";
          *(v548 + 7) = 1600069682;
          if (v547 <= 0xA)
          {
            goto LABEL_1117;
          }

          v549 = v547 - 11;
          v550 = v548 + 11;
          if (v9)
          {
            v551 = *(v9 + 8);
            v552 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v552)
              {
                if (v552 == 1)
                {
                  *v550 = v551->i8[0];
                }

                else
                {
                  v565 = v547 - 11;
                  memcpy(v550, v551, v552);
                  v549 = v565;
                  v493 = v925;
                  v546 = v928;
                  v175 = v932;
                  v172 = v933;
                  v9 = v935;
                  v174 = __lena;
                }
              }

              goto LABEL_722;
            }

            if (v552 < 0x10)
            {
              v553 = (v548 + 11);
              v555 = &v550[v552];
              if (v550 != &v550[v552])
              {
                goto LABEL_710;
              }
            }

            else
            {
              v553 = (v548 + 11);
              do
              {
                v554 = vld2q_s8(v551->i8);
                v551 += 2;
                *v553 = v554;
                v553 += 16;
              }

              while (v553 != &v550[v552 & 0xFFFFFFF0]);
              v555 = &v550[v552];
              if (v553 == &v550[v552])
              {
                goto LABEL_722;
              }

LABEL_710:
              v557 = v923 + v540 + v552;
              v558 = &v172[3 * v175 + v200 + v493 + v557 - v553 + 94];
              if (v558 < 4 || ((v559 = &v172[v493 + v200], v553 < &v551[11].u64[1] + 2 * &v559[v557] + 6 * v175 - 2 * v553 + 4) ? (v560 = v551 >= &v559[3 * v175 + 94 + v540 + v923 + v552]) : (v560 = 1), !v560))
              {
                v562 = v553;
                v563 = v551;
                goto LABEL_719;
              }

              if (v558 >= 0x20)
              {
                v561 = v558 & 0xFFFFFFFFFFFFFFE0;
                v716 = v551 + 2;
                v717 = (v553 + 16);
                v718 = v558 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v720 = v716[-2];
                  v719 = v716[-1];
                  v722 = *v716;
                  v721 = v716[1];
                  v716 += 4;
                  v717[-1] = vuzp1q_s8(v720, v719);
                  *v717 = vuzp1q_s8(v722, v721);
                  v717 += 2;
                  v718 -= 32;
                }

                while (v718);
                if (v558 != v561)
                {
                  if ((v558 & 0x1C) == 0)
                  {
                    v563 = (v551 + 2 * v561);
                    v562 = (v553 + v561);
                    goto LABEL_719;
                  }

                  goto LABEL_872;
                }
              }

              else
              {
                v561 = 0;
LABEL_872:
                v562 = (v553 + (v558 & 0xFFFFFFFFFFFFFFFCLL));
                v563 = (v551 + 2 * (v558 & 0xFFFFFFFFFFFFFFFCLL));
                v723 = (v551 + 2 * v561);
                v724 = (v553 + v561);
                v725 = v561 - (v558 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v726 = *v723++;
                  *v724++ = vuzp1_s8(v726, v726).u32[0];
                  v725 += 4;
                }

                while (v725);
                if (v558 != (v558 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_719:
                    v564 = v563->i8[0];
                    v563 = (v563 + 2);
                    *v562++ = v564;
                  }

                  while (v562 != v555);
                }
              }
            }

LABEL_722:
            v556 = *(v9 + 4);
            if (v549 < v556)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v556 = 0;
          }

          v566 = v549 - v556;
          v567 = &v550[v556];
          *v567 = *"_UVRemapMatrix [[id(";
          *(v567 + 4) = 677669211;
          if (v549 - v556 <= 0x13)
          {
            goto LABEL_1117;
          }

          v568 = v567 + 20;
          v569 = v568;
          if (v19 <= -3)
          {
            v570 = 0;
            v571 = -2 - v19;
            v572 = &v958;
            do
            {
              if (v570 == -25)
              {
                goto LABEL_1117;
              }

              v573 = v570;
              v574 = v572;
              v960[--v570] = (v571 % 0xA) | 0x30;
              --v572;
              v43 = v571 > 9;
              v571 /= 0xAuLL;
            }

            while (v43);
            if ((v570 + 24) < 0x19)
            {
              v960[v570 - 1] = 45;
              v575 = v200 + v493;
              v576 = v546 - v540 - (v200 + v493 + v556 + v923) - 3 * v175 - 114;
              if (-v570 < v576)
              {
                v577 = -v570;
              }

              else
              {
                v577 = v546 - v540 - (v200 + v493 + v556 + v923) - 3 * v175 - 114;
              }

              if (v577 >= 8)
              {
                if (&v172[3 * v175 + 90 - &v955 + v556 + v200 + v493 + v923 + v540 - v570] >= 8)
                {
                  v598 = v577 + 1;
                  v599 = (v577 + 1) & 7;
                  if (!v599)
                  {
                    v599 = 8;
                  }

                  v578 = v598 - v599;
                  if (1 - v573 < v576)
                  {
                    v576 = 1 - v573;
                  }

                  v600 = ~v576 + v599;
                  v601 = v568;
                  v602 = v574;
                  do
                  {
                    v603 = *v602++;
                    *v601++ = v603;
                    v600 += 8;
                  }

                  while (v600);
                }

                else
                {
                  v578 = 0;
                }

                v493 = v925;
              }

              else
              {
                v578 = 0;
              }

              v604 = 2 - v573;
              v605 = v575 + v923 + v540;
              v606 = v546 - v556 - 3 * v175 - 114;
              v607 = v578 + v605;
              while (v607 != v606)
              {
                *(v569 + v578) = *(v574 + v578);
                v574 = (v574 + 1);
                --v604;
                v569 = (v569 + 1);
                --v606;
                if (v578 == v604)
                {
                  goto LABEL_767;
                }
              }
            }

            goto LABEL_1117;
          }

          v579 = 0;
          v580 = &v959;
          v581 = v129;
          do
          {
            if (v579 == -25)
            {
              goto LABEL_1117;
            }

            v582 = v579;
            v583 = v580;
            v960[--v579] = (v581 % 0xA) | 0x30;
            --v580;
            v43 = v581 > 9;
            v581 /= 0xAuLL;
          }

          while (v43);
          v584 = v200 + v493;
          v585 = v546 - (v200 + v493 + v556 + v923 + v540) - 3 * v175 - 114;
          if (~v579 < v585)
          {
            v586 = ~v579;
          }

          else
          {
            v586 = v546 - (v200 + v493 + v556 + v923 + v540) - 3 * v175 - 114;
          }

          if (v586 >= 8)
          {
            if (&v172[3 * v175 + 89 - &v955 + v556 + v200 + v493 + v923 + v540 - v579] >= 8)
            {
              v588 = v586 + 1;
              v589 = (v586 + 1) & 7;
              if (!v589)
              {
                v589 = 8;
              }

              v587 = v588 - v589;
              if (-v582 < v585)
              {
                v585 = -v582;
              }

              v590 = ~v585 + v589;
              v591 = v568;
              v592 = v583;
              do
              {
                v593 = *v592;
                v592 += 8;
                *v591++ = v593;
                v590 += 8;
              }

              while (v590);
            }

            else
            {
              v587 = 0;
            }

            v493 = v925;
          }

          else
          {
            v587 = 0;
          }

          v594 = 1 - v582;
          v595 = v584 + v923 + v540;
          v596 = v546 - v556 - 3 * v175 - 114;
          v597 = v587 + v595;
          do
          {
            if (v597 == v596)
            {
              goto LABEL_1117;
            }

            *(v569 + v587) = v583[v587];
            ++v583;
            --v594;
            v569 = (v569 + 1);
            --v596;
          }

          while (v587 != v594);
LABEL_767:
          if (v19 >= -2)
          {
            v609 = 0;
            do
            {
              ++v609;
              v43 = v129 > 9;
              v129 /= 0xAuLL;
            }

            while (v43);
          }

          else
          {
            v608 = -2 - v19;
            v609 = 1;
            do
            {
              ++v609;
              v105 = v608 >= 0xA;
              v608 /= 0xAuLL;
            }

            while (v105);
          }

          v610 = v566 - 20;
          v611 = v609;
          v105 = v610 >= v609;
          v612 = v610 - v609;
          if (!v105)
          {
            goto LABEL_1117;
          }

          v613 = v568 + v609;
          v613[4] = 10;
          *v613 = 995974441;
          if (v612 <= 4)
          {
            goto LABEL_1117;
          }

          v614 = v612 - 5;
          v615 = v613 + 5;
          if (v174)
          {
            memset(v613 + 5, 32, v174);
            v493 = v925;
            v175 = v932;
            v172 = v933;
            v9 = v935;
            v616 = __lena;
            if (v614 < __lena)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v616 = 0;
          }

          v617 = &v615[v616];
          *v617 = *"float4x3 __";
          *(v617 + 7) = 1600069683;
          if (v614 - v616 <= 0xA)
          {
            goto LABEL_1117;
          }

          v618 = v614 - v616 - 11;
          v619 = v617 + 11;
          if (v9)
          {
            v620 = *(v9 + 8);
            v621 = *(v9 + 4);
            if ((*(v9 + 16) & 4) != 0)
            {
              if (v621)
              {
                if (v621 == 1)
                {
                  *v619 = v620->i8[0];
                }

                else
                {
                  memcpy(v617 + 11, v620, v621);
                  v9 = v935;
                }
              }

              goto LABEL_4;
            }

            if (v621 < 0x10)
            {
              v622 = (v617 + 11);
              v624 = &v619[v621];
              if (v619 != &v619[v621])
              {
                goto LABEL_793;
              }
            }

            else
            {
              v622 = (v617 + 11);
              do
              {
                v623 = vld2q_s8(v620->i8);
                v620 += 2;
                *v622 = v623;
                v622 += 16;
              }

              while (v622 != &v619[v621 & 0xFFFFFFF0]);
              v624 = &v619[v621];
              if (v622 == &v619[v621])
              {
                goto LABEL_4;
              }

LABEL_793:
              v625 = &v172[v556 + v200 + v493];
              v626 = v923 + v540 + v611;
              v627 = &v625[4 * v175 + v626 + v621 - v622 + 130];
              if (v627 < 4 || (v622 < v620[16].u64 + 8 * v175 + 2 * &v625[v626 + v621] - 2 * v622 + 4 ? (v628 = v620 >= &v172[4 * v175 + 130 + v200 + v556 + v493 + v611 + v540 + v923 + v621]) : (v628 = 1), !v628))
              {
                v630 = v622;
                v631 = v620;
                goto LABEL_802;
              }

              if (v627 >= 0x20)
              {
                v629 = v627 & 0xFFFFFFFFFFFFFFE0;
                v727 = v620 + 2;
                v728 = (v622 + 16);
                v729 = v627 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v731 = v727[-2];
                  v730 = v727[-1];
                  v733 = *v727;
                  v732 = v727[1];
                  v727 += 4;
                  v728[-1] = vuzp1q_s8(v731, v730);
                  *v728 = vuzp1q_s8(v733, v732);
                  v728 += 2;
                  v729 -= 32;
                }

                while (v729);
                if (v627 != v629)
                {
                  if ((v627 & 0x1C) == 0)
                  {
                    v631 = (v620 + 2 * v629);
                    v630 = (v622 + v629);
                    goto LABEL_802;
                  }

                  goto LABEL_880;
                }
              }

              else
              {
                v629 = 0;
LABEL_880:
                v630 = (v622 + (v627 & 0xFFFFFFFFFFFFFFFCLL));
                v631 = (v620 + 2 * (v627 & 0xFFFFFFFFFFFFFFFCLL));
                v734 = (v620 + 2 * v629);
                v735 = (v622 + v629);
                v736 = v629 - (v627 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v737 = *v734++;
                  *v735++ = vuzp1_s8(v737, v737).u32[0];
                  v736 += 4;
                }

                while (v736);
                if (v627 != (v627 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_802:
                    v632 = v631->i8[0];
                    v631 = (v631 + 2);
                    *v630++ = v632;
                  }

                  while (v630 != v624);
                }
              }
            }

LABEL_4:
            v10 = *(v9 + 4);
            if (v618 < v10)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v10 = 0;
          }

          WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v619[v10], v618 - v10, "_ColorSpaceConversionMatrix [[id(", 0x21uLL, v927, ")]];\n", 5uLL);
          goto LABEL_6;
        }

        v164 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        if (!v164)
        {
          goto LABEL_6;
        }

        v166 = v164;
        v167 = v165;
        v168 = __lena;
        v930 = v165;
        v931 = v164;
        if (__lena)
        {
          memset_pattern16(v164, aIneStateTLTAne, 2 * __lena);
          v167 = v930;
          v166 = v931;
          v169 = v935;
          v168 = __lena;
          v170 = __lena;
          if (v930 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v170 = 0;
          v169 = v935;
        }

        v176 = &v166[2 * v170];
        *v176 = xmmword_2258823B0;
        *(v176 + 1) = xmmword_2258823C0;
        *(v176 + 8) = 6225952;
        *(v176 + 18) = 95;
        if (v167 - v170 <= 0x12)
        {
          goto LABEL_1117;
        }

        v926 = v134;
        v177 = v176 + 38;
        v178 = v167 - v170 - 19;
        v924 = v170;
        if (!v169)
        {
          v183 = 0;
          v181 = v942;
          v182 = v944;
          goto LABEL_307;
        }

        v179 = *(v169 + 8);
        v180 = *(v169 + 4);
        v181 = v942;
        v182 = v944;
        if ((*(v169 + 16) & 4) != 0)
        {
          if (v180 < 0x40)
          {
            v184 = (v176 + 38);
            v191 = &v177[v180];
            if (v177 == v191)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v184 = &v177[v180 & 0xFFFFFFC0];
            v185 = v176 + 38;
            do
            {
              v962.val[0] = *v179;
              v186 = v179[1];
              v969.val[0] = v179[2];
              v187 = v179[3];
              v179 += 4;
              v181 = v187;
              v969.val[1] = v944;
              v976.val[0] = v186;
              v962.val[1] = v944;
              v188 = v185;
              vst2q_s8(v188, v962);
              v188 += 32;
              v976.val[1] = v944;
              vst2q_s8(v188, v976);
              v189 = v185 + 64;
              vst2q_s8(v189, v969);
              v190 = v185 + 96;
              vst2q_s8(v190, *v181.i8);
              v185 += 128;
            }

            while (v185 != v184);
            v191 = &v177[v180];
            if (v184 == v191)
            {
              goto LABEL_306;
            }
          }

          v201 = &v166[2 * v180 + 2 * v170 - v184 + 36];
          if (v201 < 0xE || (v184 < v179->u64 + (v201 >> 1) + 1 ? (v202 = v179 >= v184 + (v201 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v202 = 1), !v202))
          {
            v205 = v179;
            v206 = v184;
            goto LABEL_299;
          }

          v203 = (v201 >> 1) + 1;
          if (v201 >= 0x3E)
          {
            v204 = v203 & 0xFFFFFFFFFFFFFFE0;
            v654 = (v184 + 32);
            v655 = &v179[1];
            v656 = v203 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v657 = *v655[-2].i8;
              v658 = vmovl_u8(*v655);
              v659 = vmovl_high_u8(*v655->i8);
              v654[-2] = vmovl_u8(*v657.i8);
              v654[-1] = vmovl_high_u8(v657);
              *v654 = v658;
              v654[1] = v659;
              v654 += 4;
              v655 += 4;
              v656 -= 32;
            }

            while (v656);
            if (v203 == v204)
            {
              goto LABEL_306;
            }

            if ((v203 & 0x18) == 0)
            {
              v206 = (v184 + 2 * v204);
              v205 = (v179 + v204);
              do
              {
LABEL_299:
                v207 = v205->u8[0];
                v205 = (v205 + 1);
                *v206++ = v207;
              }

              while (v206 != v191);
              goto LABEL_306;
            }
          }

          else
          {
            v204 = 0;
          }

          v205 = (v179 + (v203 & 0xFFFFFFFFFFFFFFF8));
          v206 = (v184 + 2 * (v203 & 0xFFFFFFFFFFFFFFF8));
          v660 = (v184 + 2 * v204);
          v661 = &v179->i8[v204];
          v662 = v204 - (v203 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v663 = *v661++;
            *v660++ = vmovl_u8(v663);
            v662 += 8;
          }

          while (v662);
          if (v203 != (v203 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_299;
          }
        }

        else if (v180)
        {
          if (v180 == 1)
          {
            *v177 = v179->i16[0];
          }

          else
          {
            memcpy(v177, v179, 2 * v180);
            v167 = v930;
            v166 = v931;
            v170 = v924;
            v169 = v935;
            v168 = __lena;
            v181 = v942;
            v182 = v944;
          }
        }

LABEL_306:
        v183 = *(v169 + 4);
        if (v178 < v183)
        {
          goto LABEL_1117;
        }

LABEL_307:
        v208 = &v177[v183];
        *v208 = xmmword_225882450;
        *(v208 + 1) = xmmword_225882460;
        v208[16] = 40;
        if (v178 - v183 <= 0x10)
        {
          goto LABEL_1117;
        }

        v209 = (v208 + 17);
        v210 = v178 - v183 - 17;
        v211 = 0;
        if ((v19 & 0x8000000000000000) == 0)
        {
          v212 = v960;
          v213 = &v959;
          v214 = v19;
          do
          {
            if (v211 == -25)
            {
              goto LABEL_1117;
            }

            v215 = v211;
            v216 = v213;
            v217 = &v955 + v211--;
            v217[24] = (v214 % 0xA) | 0x30;
            --v213;
            --v212;
            v43 = v214 > 9;
            v214 /= 0xAuLL;
          }

          while (v43);
          if (~v211 < v210)
          {
            v218 = ~v211;
          }

          else
          {
            v218 = v178 - v183 - 17;
          }

          if (v218 >= 8)
          {
            v238 = v218 + 1;
            v239 = v238 & 7;
            if ((v238 & 7) == 0)
            {
              v239 = 8;
            }

            v219 = v238 - v239;
            if (-v215 < v210)
            {
              v240 = -v215;
            }

            else
            {
              v240 = v178 - v183 - 17;
            }

            v241 = ~v240 + v239;
            v242 = v209;
            do
            {
              v243 = *v216++;
              *v242++ = vmovl_u8(v243);
              v241 += 8;
            }

            while (v241);
          }

          else
          {
            v219 = 0;
          }

          v244 = 0;
          v245 = &v212[v219];
          v246 = 1 - (v219 + v215);
          v247 = &v166[2 * v219 + 72 + 2 * v183 + 2 * v170];
          v248 = v167 - v183 - v219 - v170 - 36;
          while (v248 != v244)
          {
            *(v247 + 2 * v244) = v245[v244];
            if (v246 == ++v244)
            {
              goto LABEL_345;
            }
          }

          goto LABEL_1117;
        }

        v220 = -v19;
        v221 = &v959;
        v222 = &v958;
        do
        {
          if (v211 == -25)
          {
            goto LABEL_1117;
          }

          v223 = v211;
          v224 = v222;
          v960[--v211] = (v220 % 0xA) | 0x30;
          v222 = (v222 - 1);
          --v221;
          v43 = v220 > 9;
          v220 /= 0xAuLL;
        }

        while (v43);
        if ((v211 + 24) >= 0x19)
        {
          goto LABEL_1117;
        }

        v225 = 0;
        v960[v211 - 1] = 45;
        if (-v211 < v210)
        {
          v226 = -v211;
        }

        else
        {
          v226 = v178 - v183 - 17;
        }

        if (v226 >= 8)
        {
          v227 = v226 + 1;
          v228 = (v226 + 1) & 7;
          if (!v228)
          {
            v228 = 8;
          }

          v225 = v227 - v228;
          v229 = 1 - v223;
          if (1 - v223 >= v210)
          {
            v229 = v178 - v183 - 17;
          }

          v230 = ~v229 + v228;
          v231 = v209;
          do
          {
            v232 = *v224++;
            *v231++ = vmovl_u8(v232);
            v230 += 8;
          }

          while (v230);
        }

        v233 = 0;
        v234 = &v221[v225];
        v235 = 2 - (v225 + v223);
        v236 = &v166[2 * v225 + 72 + 2 * v183 + 2 * v170];
        v237 = v167 - v183 - v225 - v170 - 36;
        do
        {
          if (v237 == v233)
          {
            goto LABEL_1117;
          }

          *(v236 + 2 * v233) = v234[v233];
          ++v233;
        }

        while (v235 != v233);
LABEL_345:
        if (v19 < 0)
        {
          v251 = -v19;
          v249 = 1;
          do
          {
            ++v249;
            v105 = v251 >= 0xA;
            v251 /= 0xAuLL;
          }

          while (v105);
        }

        else
        {
          v249 = 0;
          v250 = v19;
          do
          {
            ++v249;
            v43 = v250 > 9;
            v250 /= 0xAuLL;
          }

          while (v43);
        }

        v105 = v210 >= v249;
        v252 = v210 - v249;
        if (!v105)
        {
          goto LABEL_1117;
        }

        v253 = &v209->i8[2 * v249];
        *v253 = *&aIneStateTLTAne[48];
        *(v253 + 4) = 10;
        if (v252 <= 4)
        {
          goto LABEL_1117;
        }

        v929 = v249;
        v254 = v253 + 10;
        v255 = v252 - 5;
        v942 = v181;
        v944 = v182;
        v934 = v183;
        if (v168)
        {
          memset_pattern16(v254, aIneStateTLTAne, 2 * v168);
          v166 = v931;
          v183 = v934;
          v170 = v924;
          v169 = v935;
          v168 = __lena;
          v182 = v944;
          v256 = __lena;
          if (v255 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v256 = 0;
        }

        v257 = &v254[2 * v256];
        *v257 = 116;
        *(v257 + 2) = xmmword_225882470;
        *(v257 + 18) = xmmword_225882480;
        *(v257 + 34) = 6226015;
        v258 = v255 - v256;
        if (v258 <= 0x12)
        {
          goto LABEL_1117;
        }

        v259 = v257 + 38;
        v260 = v258 - 19;
        if (!v169)
        {
          v263 = 0;
          goto LABEL_393;
        }

        v261 = *(v169 + 8);
        v262 = *(v169 + 4);
        if ((*(v169 + 16) & 4) != 0)
        {
          if (v262 < 0x40)
          {
            v264 = (v257 + 38);
            v271 = &v259[2 * v262];
            if (v259 == v271)
            {
              goto LABEL_392;
            }
          }

          else
          {
            v264 = &v259[2 * (v262 & 0xFFFFFFC0)];
            v265 = v259;
            do
            {
              v963.val[0] = *v261;
              v266 = v261[1];
              v970.val[0] = v261[2];
              v267 = v261[3];
              v261 += 4;
              v977.val[0] = v267;
              v970.val[1] = v182;
              v983.val[0] = v266;
              v963.val[1] = v182;
              v268 = v265;
              vst2q_s8(v268, v963);
              v268 += 32;
              v977.val[1] = v182;
              v983.val[1] = v182;
              vst2q_s8(v268, v983);
              v269 = v265 + 64;
              vst2q_s8(v269, v970);
              v270 = v265 + 96;
              v265 += 128;
              vst2q_s8(v270, v977);
            }

            while (v265 != v264);
            v271 = &v259[2 * v262];
            if (v264 == v271)
            {
              goto LABEL_392;
            }
          }

          v272 = &v166[4 * v170 + 2 * v183 + 2 * v929 + 2 * v262 - v264 + 118];
          if (v272 < 0xE || (v264 < v261->u64 + (v272 >> 1) + 1 ? (v273 = v261 >= v264 + (v272 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v273 = 1), !v273))
          {
            v276 = v261;
            v277 = v264;
            goto LABEL_380;
          }

          v274 = (v272 >> 1) + 1;
          if (v272 >= 0x3E)
          {
            v275 = v274 & 0xFFFFFFFFFFFFFFE0;
            v664 = (v264 + 32);
            v665 = &v261[1];
            v666 = v274 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v667 = *v665[-2].i8;
              v668 = vmovl_u8(*v665);
              v669 = vmovl_high_u8(*v665->i8);
              v664[-2] = vmovl_u8(*v667.i8);
              v664[-1] = vmovl_high_u8(v667);
              *v664 = v668;
              v664[1] = v669;
              v664 += 4;
              v665 += 4;
              v666 -= 32;
            }

            while (v666);
            if (v274 == v275)
            {
              goto LABEL_392;
            }

            if ((v274 & 0x18) == 0)
            {
              v277 = (v264 + 2 * v275);
              v276 = (v261 + v275);
              do
              {
LABEL_380:
                v278 = v276->u8[0];
                v276 = (v276 + 1);
                *v277 = v278;
                v277 += 2;
              }

              while (v277 != v271);
              goto LABEL_392;
            }
          }

          else
          {
            v275 = 0;
          }

          v276 = (v261 + (v274 & 0xFFFFFFFFFFFFFFF8));
          v277 = (v264 + 2 * (v274 & 0xFFFFFFFFFFFFFFF8));
          v670 = (v264 + 2 * v275);
          v671 = &v261->i8[v275];
          v672 = v275 - (v274 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v673 = *v671++;
            *v670++ = vmovl_u8(v673);
            v672 += 8;
          }

          while (v672);
          if (v274 != (v274 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_380;
          }
        }

        else if (v262)
        {
          if (v262 == 1)
          {
            *v259 = v261->i16[0];
          }

          else
          {
            memcpy(v257 + 38, v261, 2 * v262);
            v166 = v931;
            v183 = v934;
            v170 = v924;
            v169 = v935;
            v168 = __lena;
            v182 = v944;
          }
        }

LABEL_392:
        v263 = *(v169 + 4);
        if (v260 < v263)
        {
          goto LABEL_1117;
        }

LABEL_393:
        v285 = &v259[2 * v263];
        *v285 = 95;
        *(v285 + 2) = xmmword_225882490;
        *(v285 + 18) = xmmword_225882460;
        *(v285 + 17) = 40;
        if (v260 - v263 <= 0x11)
        {
          goto LABEL_1117;
        }

        v286 = (v285 + 36);
        v287 = v260 - v263 - 18;
        if (v19 <= -2)
        {
          v288 = 0;
          v289 = ~v19;
          v290 = &v959;
          v291 = &v958;
          do
          {
            if (v288 == -25)
            {
              goto LABEL_1117;
            }

            v292 = v288;
            v293 = v291;
            v960[--v288] = (v289 % 0xA) | 0x30;
            v291 = (v291 - 1);
            --v290;
            v43 = v289 > 9;
            v289 /= 0xAuLL;
          }

          while (v43);
          if ((v288 + 24) < 0x19)
          {
            v294 = 0;
            v960[v288 - 1] = 45;
            if (-v288 < v287)
            {
              v295 = -v288;
            }

            else
            {
              v295 = v260 - v263 - 18;
            }

            if (v295 >= 8)
            {
              v296 = v295 + 1;
              v297 = (v295 + 1) & 7;
              if (!v297)
              {
                v297 = 8;
              }

              v294 = v296 - v297;
              v298 = 1 - v292;
              if (1 - v292 >= v287)
              {
                v298 = v260 - v263 - 18;
              }

              v299 = ~v298 + v297;
              v300 = v286;
              do
              {
                v301 = *v293++;
                *v300++ = vmovl_u8(v301);
                v299 += 8;
              }

              while (v299);
            }

            v302 = 0;
            v303 = &v290[v294];
            v304 = v930 - v263 - v294;
            v305 = 2 - (v294 + v292);
            v306 = &v166[4 * v170 + 156 + 2 * v183 + 2 * v294 + 2 * v263 + 2 * v929];
            while (v304 - v183 - v929 - 2 * v170 - 78 != v302)
            {
              *(v306 + 2 * v302) = v303[v302];
              if (v305 == ++v302)
              {
                goto LABEL_431;
              }
            }
          }

          goto LABEL_1117;
        }

        v307 = 0;
        v308 = v960;
        v309 = &v959;
        v310 = v124;
        do
        {
          if (v307 == -25)
          {
            goto LABEL_1117;
          }

          v311 = v307;
          v312 = v309;
          v313 = &v955 + v307--;
          v313[24] = (v310 % 0xA) | 0x30;
          --v309;
          --v308;
          v43 = v310 > 9;
          v310 /= 0xAuLL;
        }

        while (v43);
        if (~v307 < v287)
        {
          v314 = ~v307;
        }

        else
        {
          v314 = v260 - v263 - 18;
        }

        if (v314 >= 8)
        {
          v316 = v314 + 1;
          v317 = v316 & 7;
          if ((v316 & 7) == 0)
          {
            v317 = 8;
          }

          v315 = v316 - v317;
          if (-v311 < v287)
          {
            v318 = -v311;
          }

          else
          {
            v318 = v260 - v263 - 18;
          }

          v319 = ~v318 + v317;
          v320 = v286;
          do
          {
            v321 = *v312++;
            *v320++ = vmovl_u8(v321);
            v319 += 8;
          }

          while (v319);
        }

        else
        {
          v315 = 0;
        }

        v322 = 0;
        v323 = &v308[v315];
        v324 = v930 - v263 - v315;
        v325 = 1 - (v315 + v311);
        v326 = &v166[4 * v170 + 156 + 2 * v183 + 2 * v315 + 2 * v263 + 2 * v929];
        do
        {
          if (v324 - v183 - v929 - 2 * v170 - 78 == v322)
          {
            goto LABEL_1117;
          }

          *(v326 + 2 * v322) = v323[v322];
          ++v322;
        }

        while (v325 != v322);
LABEL_431:
        if (v19 >= -1)
        {
          v328 = 0;
          do
          {
            ++v328;
            v43 = v124 > 9;
            v124 /= 0xAuLL;
          }

          while (v43);
        }

        else
        {
          v327 = ~v19;
          v328 = 1;
          do
          {
            ++v328;
            v105 = v327 >= 0xA;
            v327 /= 0xAuLL;
          }

          while (v105);
        }

        v329 = v328;
        v105 = v287 >= v328;
        v330 = v287 - v328;
        if (!v105)
        {
          goto LABEL_1117;
        }

        v331 = &v286->i8[2 * v328];
        *v331 = 41;
        *(v331 + 2) = *&aIneStateTLTAne[52];
        if (v330 <= 4)
        {
          goto LABEL_1117;
        }

        v921 = v263;
        v332 = v331 + 10;
        v333 = v330 - 5;
        if (v168)
        {
          memset_pattern16(v331 + 10, aIneStateTLTAne, 2 * v168);
          v166 = v931;
          v183 = v934;
          v170 = v924;
          v169 = v935;
          v168 = __lena;
          v182 = v944;
          v334 = __lena;
          if (v333 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v334 = 0;
        }

        v335 = &v332[2 * v334];
        *v335 = 102;
        *(v335 + 2) = xmmword_2258824A0;
        *(v335 + 18) = 6226015;
        v336 = v333 - v334;
        if (v336 <= 0xA)
        {
          goto LABEL_1117;
        }

        v922 = v329;
        v337 = v335 + 22;
        v338 = v336 - 11;
        if (!v169)
        {
          v341 = 0;
          goto LABEL_470;
        }

        v339 = *(v169 + 8);
        v340 = *(v169 + 4);
        if ((*(v169 + 16) & 4) != 0)
        {
          if (v340 < 0x40)
          {
            v342 = (v335 + 22);
            v349 = &v337[2 * v340];
            if (v337 == v349)
            {
              goto LABEL_469;
            }
          }

          else
          {
            v342 = &v337[2 * (v340 & 0xFFFFFFC0)];
            v343 = v337;
            do
            {
              v964.val[0] = *v339;
              v344 = v339[1];
              v971.val[0] = v339[2];
              v345 = v339[3];
              v339 += 4;
              v978.val[0] = v345;
              v971.val[1] = v182;
              v984.val[0] = v344;
              v964.val[1] = v182;
              v346 = v343;
              vst2q_s8(v346, v964);
              v346 += 32;
              v978.val[1] = v182;
              v984.val[1] = v182;
              vst2q_s8(v346, v984);
              v347 = v343 + 64;
              vst2q_s8(v347, v971);
              v348 = v343 + 96;
              v343 += 128;
              vst2q_s8(v348, v978);
            }

            while (v343 != v342);
            v349 = &v337[2 * v340];
            if (v342 == v349)
            {
              goto LABEL_469;
            }
          }

          v350 = v183 + v921 + v929 + v922;
          v351 = &v166[6 * v170 + 2 * v350 + 2 * v340 - v342 + 186];
          if (v351 < 0xE || ((v352 = &v166[6 * v170 + 2 * v350 + 2 * v340 - v342 + 186], v342 < v339->u64 + (v352 >> 1) + 1) ? (v353 = v339 >= v342 + (v352 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v353 = 1), !v353))
          {
            v356 = v339;
            v357 = v342;
            goto LABEL_466;
          }

          v354 = (v351 >> 1) + 1;
          if (v351 >= 0x3E)
          {
            v355 = v354 & 0xFFFFFFFFFFFFFFE0;
            v674 = (v342 + 32);
            v675 = &v339[1];
            v676 = v354 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v677 = *v675[-2].i8;
              v678 = vmovl_u8(*v675);
              v679 = vmovl_high_u8(*v675->i8);
              v674[-2] = vmovl_u8(*v677.i8);
              v674[-1] = vmovl_high_u8(v677);
              *v674 = v678;
              v674[1] = v679;
              v674 += 4;
              v675 += 4;
              v676 -= 32;
            }

            while (v676);
            if (v354 == v355)
            {
              goto LABEL_469;
            }

            if ((v354 & 0x18) == 0)
            {
              v357 = (v342 + 2 * v355);
              v356 = (v339 + v355);
              do
              {
LABEL_466:
                v358 = v356->u8[0];
                v356 = (v356 + 1);
                *v357 = v358;
                v357 += 2;
              }

              while (v357 != v349);
              goto LABEL_469;
            }
          }

          else
          {
            v355 = 0;
          }

          v356 = (v339 + (v354 & 0xFFFFFFFFFFFFFFF8));
          v357 = (v342 + 2 * (v354 & 0xFFFFFFFFFFFFFFF8));
          v680 = (v342 + 2 * v355);
          v681 = &v339->i8[v355];
          v682 = v355 - (v354 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v683 = *v681++;
            *v680++ = vmovl_u8(v683);
            v682 += 8;
          }

          while (v682);
          if (v354 != (v354 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_466;
          }
        }

        else if (v340)
        {
          if (v340 == 1)
          {
            *v337 = v339->i16[0];
          }

          else
          {
            memcpy(v335 + 22, v339, 2 * v340);
            v166 = v931;
            v183 = v934;
            v170 = v924;
            v169 = v935;
            v168 = __lena;
            v182 = v944;
          }
        }

LABEL_469:
        v341 = *(v169 + 4);
        if (v338 < v341)
        {
          goto LABEL_1117;
        }

LABEL_470:
        v359 = &v337[2 * v341];
        *v359 = 95;
        *(v359 + 2) = xmmword_2258824B0;
        *(v359 + 18) = xmmword_2258824C0;
        *(v359 + 34) = 6553705;
        *(v359 + 19) = 40;
        if (v338 - v341 <= 0x13)
        {
          goto LABEL_1117;
        }

        v360 = (v359 + 40);
        if (v19 <= -3)
        {
          v361 = 0;
          v362 = 0;
          v363 = -2 - v19;
          v364 = &v959;
          v365 = &v958;
          do
          {
            if (v361 == -25)
            {
              goto LABEL_1117;
            }

            v366 = v361;
            v367 = v365;
            v368 = &v955 + v361;
            ++v362;
            --v361;
            v368[24] = (v363 % 0xA) | 0x30;
            v365 = (v365 - 1);
            --v364;
            v43 = v363 > 9;
            v363 /= 0xAuLL;
          }

          while (v43);
          if ((v361 + 24) < 0x19)
          {
            v960[v361 - 1] = 45;
            v369 = v183 + v921;
            if (-v361 < v930 - v922 - (v183 + v921 + v341 + v929) - 3 * v170 - 114)
            {
              v370 = -v361;
            }

            else
            {
              v370 = v930 - v922 - (v183 + v921 + v341 + v929) - 3 * v170 - 114;
            }

            if (v370 >= 0x10)
            {
              v386 = v369 + v929 + v922;
              v387 = v930 - v341 - v386 - 3 * v170 - 114;
              if (-v361 < v387)
              {
                v388 = -v361;
              }

              else
              {
                v388 = v930 - v341 - v386 - 3 * v170 - 114;
              }

              if (v362 >= v387)
              {
                v362 = v930 - v341 - v386 - 3 * v170 - 114;
              }

              if (v360 >= &v960[v361 + v362] || &v960[v361 - 1] >= &v166[6 * v170 + 230 + 2 * v341 + 2 * v386 + 2 * v388])
              {
                v400 = (v370 + 1) & 7;
                if (!v400)
                {
                  v400 = 8;
                }

                v371 = v370 + 1 - v400;
                v401 = 1 - v366;
                if (1 - v366 >= v387)
                {
                  v401 = v930 - v341 - v386 - 3 * v170 - 114;
                }

                v402 = ~v401 + v400;
                v403 = v360;
                do
                {
                  v404 = *v367++;
                  *v403++ = vmovl_u8(v404);
                  v402 += 8;
                }

                while (v402);
              }

              else
              {
                v371 = 0;
              }

              v183 = v934;
            }

            else
            {
              v371 = 0;
            }

            v405 = 0;
            v406 = &v364[v371];
            v407 = 2 - (v371 + v366);
            v408 = v369 + v929 + v922;
            v409 = &v166[6 * v170 + 228 + 2 * v371 + 2 * v341 + 2 * v408];
            v410 = v930 - v371 - v341 - v408 - 3 * v170 - 114;
            while (v410 != v405)
            {
              *(v409 + 2 * v405) = v406[v405];
              if (v407 == ++v405)
              {
                goto LABEL_523;
              }
            }
          }

          goto LABEL_1117;
        }

        v372 = 0;
        v373 = -1;
        v374 = v960;
        v375 = &v959;
        v376 = v129;
        do
        {
          if (v372 == -25)
          {
            goto LABEL_1117;
          }

          v377 = v372;
          v378 = v375;
          v379 = &v955 + v372;
          ++v373;
          --v372;
          v379[24] = (v376 % 0xA) | 0x30;
          --v375;
          --v374;
          v43 = v376 > 9;
          v376 /= 0xAuLL;
        }

        while (v43);
        v380 = v934 + v921;
        v381 = v930 - v922 - (v934 + v921 + v341 + v929) - 3 * v170 - 114;
        v382 = ~v372;
        if (~v372 < v381)
        {
          v381 = ~v372;
        }

        if (v381 < 0x10)
        {
          goto LABEL_493;
        }

        v383 = v380 + v929 + v922;
        v384 = v930 - v341 - v383 - 3 * v170 - 114;
        if (v382 >= v384)
        {
          v382 = v930 - v341 - v383 - 3 * v170 - 114;
        }

        if (v373 >= v384)
        {
          v373 = v930 - v341 - v383 - 3 * v170 - 114;
        }

        if (v360 >= &v960[v372 + 1 + v373] || &v960[v372] >= &v166[6 * v170 + 230 + 2 * v341 + 2 * v383 + 2 * v382])
        {
          v389 = (v381 + 1) & 7;
          if (!v389)
          {
            v389 = 8;
          }

          v385 = v381 + 1 - v389;
          if (-v377 < v384)
          {
            v390 = -v377;
          }

          else
          {
            v390 = v930 - v341 - v383 - 3 * v170 - 114;
          }

          v391 = ~v390 + v389;
          v392 = v360;
          do
          {
            v393 = *v378++;
            *v392++ = vmovl_u8(v393);
            v391 += 8;
          }

          while (v391);
        }

        else
        {
LABEL_493:
          v385 = 0;
        }

        v183 = v934;
        v394 = 0;
        v395 = &v374[v385];
        v396 = 1 - (v385 + v377);
        v397 = v380 + v929 + v922;
        v398 = &v166[6 * v170 + 228 + 2 * v385 + 2 * v341 + 2 * v397];
        v399 = v930 - v385 - v341 - v397 - 3 * v170 - 114;
        do
        {
          if (v399 == v394)
          {
            goto LABEL_1117;
          }

          *(v398 + 2 * v394) = v395[v394];
          ++v394;
        }

        while (v396 != v394);
LABEL_523:
        if (v19 >= -2)
        {
          v412 = 0;
          do
          {
            ++v412;
            v43 = v129 > 9;
            v129 /= 0xAuLL;
          }

          while (v43);
        }

        else
        {
          v411 = -2 - v19;
          v412 = 1;
          do
          {
            ++v412;
            v105 = v411 >= 0xA;
            v411 /= 0xAuLL;
          }

          while (v105);
        }

        v413 = v338 - v341 - 20;
        v414 = v412;
        v105 = v413 >= v412;
        v415 = v413 - v412;
        if (!v105)
        {
          goto LABEL_1117;
        }

        v416 = &v360->i8[2 * v412];
        *v416 = 41;
        *(v416 + 2) = *&aIneStateTLTAne[52];
        if (v415 <= 4)
        {
          goto LABEL_1117;
        }

        v417 = v416 + 10;
        v418 = v415 - 5;
        if (v168)
        {
          memset_pattern16(v416 + 10, aIneStateTLTAne, 2 * v168);
          v166 = v931;
          v183 = v934;
          v170 = v924;
          v169 = v935;
          v419 = __lena;
          v182 = v944;
          if (v418 < __lena)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v419 = 0;
        }

        v420 = &v417[2 * v419];
        *v420 = 102;
        *(v420 + 2) = xmmword_2258824D0;
        *(v420 + 18) = 6226015;
        if (v418 - v419 <= 0xA)
        {
          goto LABEL_1117;
        }

        v421 = v420 + 22;
        v422 = v418 - v419 - 11;
        if (v169)
        {
          v423 = *(v169 + 8);
          v424 = *(v169 + 4);
          if ((*(v169 + 16) & 4) == 0)
          {
            if (v424)
            {
              if (v424 == 1)
              {
                *v421 = v423->i16[0];
              }

              else
              {
                memcpy(v421, v423, 2 * v424);
                v169 = v935;
              }
            }

LABEL_564:
            v425 = *(v169 + 4);
            if (v422 < v425)
            {
              goto LABEL_1117;
            }

            goto LABEL_565;
          }

          if (v424 < 0x40)
          {
            v426 = (v420 + 22);
            v433 = &v421[v424];
            if (v421 == v433)
            {
              goto LABEL_564;
            }
          }

          else
          {
            v426 = &v421[v424 & 0xFFFFFFC0];
            v427 = v420 + 22;
            do
            {
              v965.val[0] = *v423;
              v428 = v423[1];
              v972.val[0] = v423[2];
              v429 = v423[3];
              v423 += 4;
              v979.val[0] = v429;
              v972.val[1] = v182;
              v985.val[0] = v428;
              v965.val[1] = v182;
              v430 = v427;
              vst2q_s8(v430, v965);
              v430 += 32;
              v979.val[1] = v182;
              v985.val[1] = v182;
              vst2q_s8(v430, v985);
              v431 = v427 + 64;
              vst2q_s8(v431, v972);
              v432 = v427 + 96;
              v427 += 128;
              vst2q_s8(v432, v979);
            }

            while (v427 != v426);
            v433 = &v421[v424];
            if (v426 == v433)
            {
              goto LABEL_564;
            }
          }

          v434 = &v166[8 * v170 + 2 * v341 + 2 * v183 + 2 * v921 + 2 * v929 + 2 * v922 + 2 * v414 + 2 * v424 - v426 + 258];
          if (v434 < 0xE || (v426 < v423->u64 + (v434 >> 1) + 1 ? (v435 = v423 >= v426 + (v434 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v435 = 1), !v435))
          {
            v438 = v423;
            v439 = v426;
            goto LABEL_558;
          }

          v436 = (v434 >> 1) + 1;
          if (v434 < 0x3E)
          {
            v437 = 0;
            goto LABEL_848;
          }

          v437 = v436 & 0xFFFFFFFFFFFFFFE0;
          v684 = (v426 + 32);
          v685 = &v423[1];
          v686 = v436 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v687 = *v685[-2].i8;
            v688 = vmovl_u8(*v685);
            v689 = vmovl_high_u8(*v685->i8);
            v684[-2] = vmovl_u8(*v687.i8);
            v684[-1] = vmovl_high_u8(v687);
            *v684 = v688;
            v684[1] = v689;
            v684 += 4;
            v685 += 4;
            v686 -= 32;
          }

          while (v686);
          if (v436 == v437)
          {
            goto LABEL_564;
          }

          if ((v436 & 0x18) != 0)
          {
LABEL_848:
            v438 = (v423 + (v436 & 0xFFFFFFFFFFFFFFF8));
            v439 = (v426 + 2 * (v436 & 0xFFFFFFFFFFFFFFF8));
            v690 = (v426 + 2 * v437);
            v691 = &v423->i8[v437];
            v692 = v437 - (v436 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v693 = *v691++;
              *v690++ = vmovl_u8(v693);
              v692 += 8;
            }

            while (v692);
            if (v436 == (v436 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_564;
            }
          }

          else
          {
            v439 = (v426 + 2 * v437);
            v438 = (v423 + v437);
          }

          do
          {
LABEL_558:
            v440 = v438->u8[0];
            v438 = (v438 + 1);
            *v439++ = v440;
          }

          while (v439 != v433);
          goto LABEL_564;
        }

        v425 = 0;
LABEL_565:
        v444 = &v421[v425];
        *v444 = 95;
        *(v444 + 1) = xmmword_2258824E0;
        *(v444 + 9) = xmmword_2258824F0;
        *(v444 + 17) = xmmword_225882500;
        *(v444 + 25) = xmmword_225882510;
        v445 = v422 - v425;
        if (v445 <= 0x20)
        {
          goto LABEL_1117;
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v444 + 33), v445 - 33, v926, ")]];\n", 5uLL);
LABEL_6:
        v4 = v942;
        v8 = v944;
        if (++v7 == v941)
        {
          goto LABEL_894;
        }
      }

      else
      {
LABEL_22:
        v20 = *(this + 20);
        v21 = (4 * *(this + 26));
        if (__CFADD__(v20, v21))
        {
          v22 = 0xFFFFFFFFLL;
        }

        else
        {
          v22 = (v20 + v21);
        }

        v23 = *(this + 9);
        if ((v23 || (v23 = *(this + 8)) != 0) && (*(v23 + 16) & 4) == 0)
        {
          v24 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
          if (v24)
          {
            v27 = v21 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            memset_pattern16(v24, aIneStateTLTAne, 2 * v21);
          }
        }

        else
        {
          v28 = MEMORY[0x22AA68210](this + 64, v22);
          if (v28)
          {
            v29 = v21 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            memset(v28, 32, v21);
          }
        }

        WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(v11 + 104) + 24), 0, v25, v26);
        LOBYTE(v951) = 32;
        v955 = *(v11 + 48);
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), &v951, &v955);
        v30 = *(v11 + 100);
        if (v30)
        {
          v31 = *(v11 + 88);
          v32 = 8 * v30;
          do
          {
            v33 = *v31;
            LOBYTE(v955) = 32;
            v34 = *(this + 9);
            if (!v34 || (v35 = *(this + 20), v35 >= *(v34 + 4)) || *(this + 8))
            {
              WTF::StringBuilder::append();
            }

            else
            {
              v36 = *(v34 + 16);
              v37 = *(v34 + 8);
              *(this + 20) = v35 + 1;
              if ((v36 & 4) != 0)
              {
                *(v37 + v35) = 32;
              }

              else
              {
                *(v37 + 2 * v35) = 32;
              }
            }

            (*(*this + 96))(this, v33);
            ++v31;
            v32 -= 8;
          }

          while (v32);
        }

        WTF::StringBuilder::append();
        if (v940 != 7)
        {
          goto LABEL_6;
        }

        v38 = *(v11 + 116);
        if (!v38)
        {
          goto LABEL_6;
        }

        WTF::String::number(&v955, v38);
        v39 = 0;
        v40 = v955;
        v41 = ++v939;
        v42 = *(this + 20);
        do
        {
          ++v39;
          v43 = v41 > 9;
          v41 /= 0xAu;
        }

        while (v43);
        if (v955)
        {
          v44 = *(v955 + 1);
        }

        else
        {
          v44 = 0;
        }

        v45 = (4 * *(this + 26));
        v46 = v44 + 5;
        if (v44 >= 0xFFFFFFFB)
        {
          v46 = -1;
        }

        v105 = __CFADD__(v39, v46);
        v47 = v39 + v46;
        if (v105)
        {
          v47 = -1;
        }

        v105 = __CFADD__(v47, 17);
        v48 = v47 + 17;
        if (v105)
        {
          v48 = -1;
        }

        v105 = __CFADD__(v45, v48);
        v49 = v45 + v48;
        if (v105)
        {
          v49 = -1;
        }

        v105 = __CFADD__(v42, v49);
        v50 = v42 + v49;
        if (v105)
        {
          v51 = 0xFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        v52 = *(this + 9);
        if ((v52 || (v52 = *(this + 8)) != 0) && (*(v52 + 16) & 4) == 0 || v955 && (v955[16] & 4) == 0)
        {
          v53 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
          v4 = v942;
          v8 = v944;
          if (v53)
          {
            v55 = v53;
            v56 = v54;
            if (v45)
            {
              memset_pattern16(v53, aIneStateTLTAne, 2 * v45);
              if (v56 < v45)
              {
                goto LABEL_1117;
              }
            }

            else
            {
              v45 = 0;
            }

            v66 = v55 + 2 * v45;
            *v66 = xmmword_225882520;
            *(v66 + 16) = xmmword_225882530;
            *(v66 + 32) = 103;
            v67 = v56 - v45;
            if (v56 - v45 <= 0x10)
            {
              goto LABEL_1117;
            }

            v68 = v66 + 34;
            v69 = v67 - 17;
            v70 = v939;
            WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v939, (v66 + 34), v67 - 17);
            LODWORD(v71) = 0;
            v72 = 1;
            do
            {
              v73 = v72;
              v71 = (v71 + 1);
              ++v72;
              v43 = v70 > 9;
              v70 /= 0xAu;
            }

            while (v43);
            v4 = v942;
            v8 = v944;
            if (v69 <= v71)
            {
              goto LABEL_1117;
            }

            v74 = (v68 + 2 * v71);
            *v74 = 91;
            v75 = v74 + 1;
            if (v40)
            {
              v54 = *(v40 + 1);
              v76 = *(v40 + 1);
              if ((v40[16] & 4) == 0)
              {
                if (v76)
                {
                  if (v76 == 1)
                  {
                    *v75 = *v54;
                  }

                  else
                  {
                    memcpy(v75, v54, 2 * v76);
                    v4 = v942;
                    v8 = v944;
                  }
                }

                goto LABEL_132;
              }

              if (v76 < 0x40)
              {
                v78 = v75;
                v85 = &v75[v76];
                if (v75 != v85)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v78 = &v75[v76 & 0xFFFFFFC0];
                v79 = v75;
                do
                {
                  v961.val[0] = *v54;
                  v80 = *(v54 + 1);
                  v968.val[0] = v54[2];
                  v81 = *(v54 + 3);
                  v54 += 4;
                  v975.val[0] = v81;
                  v968.val[1] = v944;
                  v982.val[0] = v80;
                  v961.val[1] = v944;
                  v82 = v79;
                  vst2q_s8(v82, v961);
                  v82 += 32;
                  v975.val[1] = v944;
                  v982.val[1] = v944;
                  vst2q_s8(v82, v982);
                  v83 = v79 + 64;
                  vst2q_s8(v83, v968);
                  v84 = v79 + 96;
                  v79 += 128;
                  vst2q_s8(v84, v975);
                }

                while (v79 != v78);
                v85 = &v75[v76];
                if (v78 == v85)
                {
                  goto LABEL_132;
                }

LABEL_120:
                v104 = v68 + 2 * (v71 + v76) - v78;
                if (v104 < 0xE || (v78 < v54 + (v104 >> 1) + 1 ? (v105 = v54 >= v78 + (v104 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v105 = 1), !v105))
                {
                  v109 = v54;
                  v110 = v78;
                  goto LABEL_129;
                }

                v106 = (v104 >> 1) + 1;
                v107 = v76 + v73;
                if (v104 >= 0x3E)
                {
                  v108 = v106 & 0xFFFFFFFFFFFFFFE0;
                  v633 = (v78 + 32);
                  v634 = (v54 + 1);
                  v635 = (((v66 - v78 + 2 * v107 + 34) >> 1) + 1) & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v636 = *v634[-2].i8;
                    v637 = vmovl_u8(*v634);
                    v638 = vmovl_high_u8(*v634->i8);
                    v633[-2] = vmovl_u8(*v636.i8);
                    v633[-1] = vmovl_high_u8(v636);
                    *v633 = v637;
                    v633[1] = v638;
                    v633 += 4;
                    v634 += 4;
                    v635 -= 32;
                  }

                  while (v635);
                  if (v106 != v108)
                  {
                    if ((v106 & 0x18) == 0)
                    {
                      v110 = (v78 + 2 * v108);
                      v109 = v54 + v108;
                      goto LABEL_129;
                    }

                    goto LABEL_808;
                  }
                }

                else
                {
                  v108 = 0;
LABEL_808:
                  v109 = v54 + (v106 & 0xFFFFFFFFFFFFFFF8);
                  v110 = (v78 + 2 * (v106 & 0xFFFFFFFFFFFFFFF8));
                  v639 = (v78 + 2 * v108);
                  v640 = (v54 + v108);
                  v641 = v108 - ((((v66 - v78 + 2 * v107 + 34) >> 1) + 1) & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v642 = *v640++;
                    *v639++ = vmovl_u8(v642);
                    v641 += 8;
                  }

                  while (v641);
                  if (v106 != (v106 & 0xFFFFFFFFFFFFFFF8))
                  {
                    do
                    {
LABEL_129:
                      v111 = *v109++;
                      *v110++ = v111;
                    }

                    while (v110 != v85);
                  }
                }
              }

LABEL_132:
              v77 = *(v40 + 1);
              if (v69 + ~v71 < v77)
              {
                goto LABEL_1117;
              }
            }

            else
            {
              v77 = 0;
            }

            *&v75[v77] = *&aIneStateTLTAne[56];
          }

LABEL_134:
          v112 = v955;
          v955 = 0;
          if (v112)
          {
            goto LABEL_135;
          }

          goto LABEL_137;
        }

        v57 = MEMORY[0x22AA68210](this + 64, v51);
        v4 = v942;
        v8 = v944;
        if (!v57)
        {
          goto LABEL_134;
        }

        v58 = v57;
        v59 = v54;
        if (v45)
        {
          memset(v57, 32, v45);
          if (v59 < v45)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v45 = 0;
        }

        v86 = v59 - v45;
        v87 = v58 + v45;
        *v87 = *"uint8_t __padding";
        *(v87 + 16) = 103;
        if (v59 - v45 <= 0x10)
        {
          goto LABEL_1117;
        }

        __len = v58;
        v88 = v7;
        v89 = v87 + 17;
        v90 = v939;
        v91 = v86 - 17;
        WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v939, (v87 + 17), v86 - 17);
        LODWORD(v92) = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v92 = (v92 + 1);
          ++v93;
          v43 = v90 > 9;
          v90 /= 0xAu;
        }

        while (v43);
        v4 = v942;
        v8 = v944;
        if (v91 <= v92)
        {
          goto LABEL_1117;
        }

        v95 = v92 + v89;
        v96 = (v92 + v89);
        *v96 = 91;
        v97 = v96 + 1;
        if (!v40)
        {
          v103 = 0;
          v7 = v88;
          goto LABEL_303;
        }

        v98 = v91;
        v54 = *(v40 + 1);
        v99 = *(v40 + 1);
        v7 = v88;
        if ((v40[16] & 4) != 0)
        {
          if (v99)
          {
            if (v99 == 1)
            {
              *v97 = *v54;
            }

            else
            {
              memcpy(v97, v54, v99);
              v4 = v942;
              v8 = v944;
            }
          }
        }

        else
        {
          if (v99 < 0x10)
          {
            v100 = v97;
            v102 = &v97[v99];
            if (v97 == &v97[v99])
            {
              goto LABEL_302;
            }
          }

          else
          {
            v100 = v97;
            do
            {
              v101 = vld2q_s8(v54);
              v54 += 2;
              *v100++ = v101;
            }

            while (v100 != &v97[v99 & 0xFFFFFFF0]);
            v102 = &v97[v99];
            if (v100 == &v97[v99])
            {
              goto LABEL_302;
            }
          }

          v113 = v95 + v99;
          v114 = v95 + v99 - v100;
          v115 = v114 + 1;
          if (v114 + 1 < 4 || ((v116 = v113 + 1, v100 < (v54 + 2 * v114 + 2)) ? (v117 = v54 >= v116) : (v117 = 1), !v117))
          {
            v119 = v100;
            v120 = v54;
            goto LABEL_149;
          }

          if (v115 >= 0x20)
          {
            v118 = v115 & 0xFFFFFFFFFFFFFFE0;
            v643 = (v54 + 2);
            v644 = (v100 + 1);
            v645 = (__len + v99 + v45 - v100 + v94 + 18) & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v647 = v643[-2];
              v646 = v643[-1];
              v649 = *v643;
              v648 = v643[1];
              v643 += 4;
              v644[-1] = vuzp1q_s8(v647, v646);
              *v644 = vuzp1q_s8(v649, v648);
              v644 += 2;
              v645 -= 32;
            }

            while (v645);
            if (v115 == v118)
            {
              goto LABEL_302;
            }

            if ((v115 & 0x1C) == 0)
            {
              v120 = v54 + 2 * v118;
              v119 = (v100 + v118);
              do
              {
LABEL_149:
                v121 = *v120;
                v120 += 2;
                *v119 = v121;
                v119 = (v119 + 1);
              }

              while (v119 != v102);
              goto LABEL_302;
            }
          }

          else
          {
            v118 = 0;
          }

          v119 = (v100 + (v115 & 0xFFFFFFFFFFFFFFFCLL));
          v120 = v54 + 2 * (v115 & 0xFFFFFFFFFFFFFFFCLL);
          v650 = (v54 + 2 * v118);
          v651 = (v100 + v118);
          v652 = v118 - ((__len + v99 + v45 - v100 + v94 + 18) & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v653 = *v650++;
            *v651++ = vuzp1_s8(v653, v653).u32[0];
            v652 += 4;
          }

          while (v652);
          if (v115 != (v115 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_149;
          }
        }

LABEL_302:
        v103 = *(v40 + 1);
        if (v98 + ~v92 < v103)
        {
          goto LABEL_1117;
        }

LABEL_303:
        *&v97[v103] = 169884509;
        v112 = v955;
        v955 = 0;
        if (v112)
        {
LABEL_135:
          if (atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v112, v54);
            v4 = v942;
            v8 = v944;
          }
        }

LABEL_137:
        if (++v7 == v941)
        {
LABEL_894:
          v5 = *(a2 + 88);
          break;
        }
      }
    }
  }

  if (v5 == 4 || v5 == 8)
  {
    LOBYTE(v954) = 10;
    LODWORD(v953) = *(this + 26);
    v955 = "template<typename T>\n";
    v956 = 21;
    LODWORD(v950) = v953;
    v948 = *(a2 + 6);
    v951 = "(const thread T& other)\n";
    v952 = 24;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v954, &v953, &v955, &v950, &v948, &v951);
    v740 = *(this + 26);
    v741 = v740 + 1;
    *(this + 26) = v740 + 1;
    v742 = *(a2 + 21);
    if (v742)
    {
      v743 = *(a2 + 9);
      v744 = *v743;
      LODWORD(v950) = v741;
      LOBYTE(v954) = 58;
      v947 = 32;
      v948 = *(v744 + 48);
      v955 = "(other.";
      v956 = 7;
      v951 = ")\n";
      v952 = 2;
      v953 = v948;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v950, &v954, &v947, &v948, &v955, &v953, &v951);
      if (v742 != 1)
      {
        v745 = 8 * v742;
        v746 = v743 + 1;
        v747 = v745 - 8;
        do
        {
          v748 = *v746++;
          LODWORD(v950) = *(this + 26);
          LOBYTE(v954) = 44;
          v947 = 32;
          v948 = *(v748 + 48);
          v955 = "(other.";
          v956 = 7;
          v952 = 2;
          v953 = v948;
          v951 = ")\n";
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v950, &v954, &v947, &v948, &v955, &v953, &v951);
          v747 -= 8;
        }

        while (v747);
      }

      v740 = *(this + 26) - 1;
    }
  }

  else
  {
    if (v5 != 9)
    {
      goto LABEL_906;
    }

    if (!*(a2 + 21))
    {
LABEL_1119:
      __break(0xC471u);
      JUMPOUT(0x2257518D0);
    }

    v738 = **(a2 + 9);
    LOBYTE(v954) = 10;
    LODWORD(v953) = *(this + 26);
    v955 = "template<typename T>\n";
    v956 = 21;
    LODWORD(v950) = v953;
    v948 = *(a2 + 6);
    v951 = "(T value)\n";
    v952 = 10;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v954, &v953, &v955, &v950, &v948, &v951);
    v739 = *(this + 26) + 1;
    *(this + 26) = v739;
    LODWORD(v953) = v739;
    v955 = ": ";
    v956 = 2;
    v948 = *(v738 + 48);
    v951 = "(value)\n";
    v952 = 8;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v953, &v955, &v948, &v951);
    v740 = *(this + 26) - 1;
  }

  *(this + 26) = v740;
  LODWORD(v951) = v740;
  v955 = "{ }\n";
  v956 = 4;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v951, &v955);
LABEL_906:
  v749 = *(this + 26) - 1;
  *(this + 26) = v749;
  LODWORD(v951) = v749;
  v955 = "};\n\n";
  v956 = 4;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v951, &v955);
  if (*(a2 + 88) == 7)
  {
    v750 = *(a2 + 12);
    v954 = *(this + 26);
    v955 = "template<> struct __PackedTypeImpl<";
    v956 = 35;
    v751 = *(v750 + 48);
    v952 = 17;
    v953 = v751;
    v950 = *(a2 + 6);
    v951 = "> { using Type = ";
    v948 = "; };\n";
    v949 = 5;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v954, &v955, &v953, &v951, &v950, &v948);
    v752 = *(a2 + 12);
    v954 = *(this + 26);
    v955 = "template<> struct __UnpackedTypeImpl<";
    v956 = 37;
    v753 = *(a2 + 6);
    v952 = 17;
    v953 = v753;
    v950 = *(v752 + 48);
    v951 = "> { using Type = ";
    v948 = "; };\n\n";
    v949 = 6;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v954, &v955, &v953, &v951, &v950, &v948);
    if (*(this + 109) != 1)
    {
      goto LABEL_908;
    }

LABEL_911:
    *(this + 109) = 0;
    if (*(a2 + 88) != 5)
    {
      return;
    }

    goto LABEL_912;
  }

  if (*(this + 109) == 1)
  {
    goto LABEL_911;
  }

LABEL_908:
  if (*(a2 + 88) != 5)
  {
    return;
  }

LABEL_912:
  v754 = *(a2 + 21);
  if (v754)
  {
    v755 = *(a2 + 9);
    v756 = &v755[v754];
    v757 = xmmword_225882550;
    v758 = 0uLL;
    v943 = v756;
    do
    {
      v945 = v757;
      v946 = v758;
      v759 = *v755;
      v760 = *(*(*v755 + 104) + 24);
      if (v760 && *(v760 + 48) == 10)
      {
        v760 = *(v760 + 8);
      }

      v761 = WGSL::Type::maybeSize(v760);
      v757 = v945;
      v758 = v946;
      if ((v761 & 0x100000000) == 0)
      {
        goto LABEL_915;
      }

      v762 = v761;
      if (v761 == 0xFFFFFFFFLL)
      {
        goto LABEL_915;
      }

      v763 = *(v938 + 6);
      if (v763)
      {
        v764 = *(v763 + 4);
        v765 = *(v759 + 48);
        if (!v765)
        {
          goto LABEL_925;
        }
      }

      else
      {
        v764 = 0;
        v765 = *(v759 + 48);
        if (!v765)
        {
LABEL_925:
          v766 = 0;
          goto LABEL_926;
        }
      }

      v766 = *(v765 + 4);
LABEL_926:
      v767 = 0;
      v768 = *(this + 20);
      v769 = (4 * *(this + 26));
      v770 = v761;
      do
      {
        ++v767;
        v43 = v770 > 9;
        v770 /= 0xAu;
      }

      while (v43);
      v105 = __CFADD__(v767, 9);
      v771 = v767 + 9;
      if (v105)
      {
        v771 = -1;
      }

      v105 = __CFADD__(v766, v771);
      v772 = v766 + v771;
      if (v105)
      {
        v772 = -1;
      }

      v105 = __CFADD__(v772, 2);
      v773 = v772 + 2;
      if (v105)
      {
        v773 = -1;
      }

      v105 = __CFADD__(v764, v773);
      v774 = v764 + v773;
      if (v105)
      {
        v774 = -1;
      }

      v105 = __CFADD__(v774, 21);
      v775 = v774 + 21;
      if (v105)
      {
        v775 = -1;
      }

      v105 = __CFADD__(v769, v775);
      v776 = v769 + v775;
      if (v105)
      {
        v776 = -1;
      }

      v105 = __CFADD__(v768, v776);
      v777 = v768 + v776;
      if (v105)
      {
        v778 = 0xFFFFFFFFLL;
      }

      else
      {
        v778 = v777;
      }

      v779 = *(this + 9);
      if ((v779 || (v779 = *(this + 8)) != 0) && (*(v779 + 16) & 4) == 0 || v763 && (*(v763 + 16) & 4) == 0 || v765 && (*(v765 + 16) & 4) == 0)
      {
        v780 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        v757 = v945;
        v758 = v946;
        if (!v780)
        {
          goto LABEL_915;
        }

        v782 = v780;
        v783 = v781;
        if (v769)
        {
          memset_pattern16(v780, aIneStateTLTAne, 2 * v769);
          if (v783 < v769)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v769 = 0;
        }

        v788 = v782 + 2 * v769;
        *v788 = xmmword_225882540;
        *(v788 + 16) = xmmword_225882550;
        *(v788 + 32) = *&aIneStateTLTAne[60];
        *(v788 + 40) = 40;
        v789 = v783 - v769;
        if (v783 - v769 <= 0x14)
        {
          goto LABEL_1117;
        }

        v790 = (v788 + 42);
        v791 = v789 - 21;
        if (v763)
        {
          v792 = *(v763 + 8);
          v793 = *(v763 + 4);
          v794 = v945;
          v795 = v946;
          if ((*(v763 + 16) & 4) == 0)
          {
            if (v793)
            {
              if (v793 == 1)
              {
                *v790 = v792->i16[0];
              }

              else
              {
                memcpy(v790, v792, 2 * v793);
                v794 = v945;
                v795 = v946;
              }
            }

            goto LABEL_1003;
          }

          if (v793 < 0x40)
          {
            v797 = v788 + 42;
            v804 = &v790[v793];
            if (v790 != v804)
            {
              goto LABEL_978;
            }
          }

          else
          {
            v797 = &v790[v793 & 0xFFFFFFC0];
            v798 = (v788 + 42);
            do
            {
              v966.val[0] = *v792;
              v799 = v792[1];
              v973.val[0] = v792[2];
              v800 = v792[3];
              v792 += 4;
              v794 = v800;
              v973.val[1] = v946;
              v980.val[0] = v799;
              v966.val[1] = v946;
              v801 = v798;
              vst2q_s8(v801, v966);
              v801 += 32;
              v980.val[1] = v946;
              vst2q_s8(v801, v980);
              v802 = v798 + 64;
              vst2q_s8(v802, v973);
              v803 = v798 + 96;
              vst2q_s8(v803, *v794.n128_u64);
              v798 += 128;
            }

            while (v798 != v797);
            v804 = &v790[v793];
            if (v797 == v804)
            {
              goto LABEL_1003;
            }

LABEL_978:
            v805 = v782 + 2 * v793 + 2 * v769 - v797 + 40;
            if (v805 < 0xE || (v797 < v792->u64 + (v805 >> 1) + 1 ? (v806 = v792 >= v797 + (v805 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v806 = 1), !v806))
            {
              v809 = v792;
              v810 = v797;
              goto LABEL_987;
            }

            v807 = (v805 >> 1) + 1;
            if (v805 >= 0x3E)
            {
              v808 = v807 & 0xFFFFFFFFFFFFFFE0;
              v879 = (v797 + 32);
              v880 = &v792[1];
              v881 = v807 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v882 = *v880[-2].i8;
                v883 = vmovl_u8(*v880);
                v884 = vmovl_high_u8(*v880->i8);
                v879[-2] = vmovl_u8(*v882.i8);
                v879[-1] = vmovl_high_u8(v882);
                *v879 = v883;
                v879[1] = v884;
                v879 += 4;
                v880 += 4;
                v881 -= 32;
              }

              while (v881);
              if (v807 != v808)
              {
                if ((v807 & 0x18) == 0)
                {
                  v810 = (v797 + 2 * v808);
                  v809 = (v792 + v808);
                  goto LABEL_987;
                }

                goto LABEL_1084;
              }
            }

            else
            {
              v808 = 0;
LABEL_1084:
              v809 = (v792 + (v807 & 0xFFFFFFFFFFFFFFF8));
              v810 = (v797 + 2 * (v807 & 0xFFFFFFFFFFFFFFF8));
              v885 = (v797 + 2 * v808);
              v886 = &v792->i8[v808];
              v887 = v808 - (v807 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v888 = *v886++;
                *v885++ = vmovl_u8(v888);
                v887 += 8;
              }

              while (v887);
              if (v807 != (v807 & 0xFFFFFFFFFFFFFFF8))
              {
                do
                {
LABEL_987:
                  v811 = v809->u8[0];
                  v809 = (v809 + 1);
                  *v810++ = v811;
                }

                while (v810 != v804);
              }
            }
          }

LABEL_1003:
          v796 = *(v763 + 4);
          if (v791 < v796)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v796 = 0;
          v794 = v945;
          v795 = v946;
        }

        v821 = &v790[v796];
        *v821 = 3801146;
        v822 = v821 + 1;
        if (v791 - v796 <= 1)
        {
          goto LABEL_1117;
        }

        v823 = v791 - v796 - 2;
        v945 = v794;
        v946 = v795;
        if (v765)
        {
          v824 = *(v765 + 8);
          v825 = *(v765 + 4);
          v756 = v943;
          if ((*(v765 + 16) & 4) == 0)
          {
            if (v825)
            {
              if (v825 == 1)
              {
                *v822 = v824->i16[0];
              }

              else
              {
                memcpy(v822, v824, 2 * v825);
              }
            }

            goto LABEL_1029;
          }

          if (v825 < 0x40)
          {
            v827 = v822;
            v834 = &v822[v825];
            if (v822 != v834)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            v827 = &v822[v825 & 0xFFFFFFC0];
            v828 = v822;
            do
            {
              v967.val[0] = *v824;
              v829 = v824[1];
              v974.val[0] = v824[2];
              v830 = v824[3];
              v824 += 4;
              v981.val[0] = v830;
              v974.val[1] = v795;
              v986.val[0] = v829;
              v967.val[1] = v795;
              v831 = v828;
              vst2q_s8(v831, v967);
              v831 += 32;
              v981.val[1] = v795;
              v986.val[1] = v795;
              vst2q_s8(v831, v986);
              v832 = v828 + 64;
              vst2q_s8(v832, v974);
              v833 = v828 + 96;
              v828 += 128;
              vst2q_s8(v833, v981);
            }

            while (v828 != v827);
            v834 = &v822[v825];
            if (v827 == v834)
            {
              goto LABEL_1029;
            }

LABEL_1017:
            v835 = v782 + 2 * v796 + 2 * v825 + 2 * v769 - v827 + 44;
            if (v835 < 0xE || (v827 < v824->u64 + (v835 >> 1) + 1 ? (v836 = v824 >= v827 + (v835 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v836 = 1), !v836))
            {
              v839 = v824;
              v840 = v827;
              goto LABEL_1026;
            }

            v837 = (v835 >> 1) + 1;
            if (v835 >= 0x3E)
            {
              v838 = v837 & 0xFFFFFFFFFFFFFFE0;
              v889 = (v827 + 32);
              v890 = &v824[1];
              v891 = v837 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v892 = *v890[-2].i8;
                v893 = vmovl_u8(*v890);
                v894 = vmovl_high_u8(*v890->i8);
                v889[-2] = vmovl_u8(*v892.i8);
                v889[-1] = vmovl_high_u8(v892);
                *v889 = v893;
                v889[1] = v894;
                v889 += 4;
                v890 += 4;
                v891 -= 32;
              }

              while (v891);
              if (v837 != v838)
              {
                if ((v837 & 0x18) == 0)
                {
                  v840 = (v827 + 2 * v838);
                  v839 = (v824 + v838);
                  goto LABEL_1026;
                }

                goto LABEL_1092;
              }
            }

            else
            {
              v838 = 0;
LABEL_1092:
              v839 = (v824 + (v837 & 0xFFFFFFFFFFFFFFF8));
              v840 = (v827 + 2 * (v837 & 0xFFFFFFFFFFFFFFF8));
              v895 = (v827 + 2 * v838);
              v896 = &v824->i8[v838];
              v897 = v838 - (v837 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v898 = *v896++;
                *v895++ = vmovl_u8(v898);
                v897 += 8;
              }

              while (v897);
              if (v837 != (v837 & 0xFFFFFFFFFFFFFFF8))
              {
                do
                {
LABEL_1026:
                  v841 = v839->u8[0];
                  v839 = (v839 + 1);
                  *v840++ = v841;
                }

                while (v840 != v834);
              }
            }
          }

LABEL_1029:
          v826 = *(v765 + 4);
          if (v823 < v826)
          {
            goto LABEL_1117;
          }
        }

        else
        {
          v826 = 0;
          v756 = v943;
        }

        v842 = &v822[v826];
        *v842 = *&aIneStateTLTAne[64];
        v842[4] = 32;
        v843 = v823 - v826;
        if (v843 <= 4)
        {
          goto LABEL_1117;
        }

        v844 = v842 + 5;
        v845 = v843 - 5;
        WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v762, v842 + 5, v843 - 5);
        LODWORD(v846) = 0;
        do
        {
          v846 = (v846 + 1);
          v43 = v762 > 9;
          LODWORD(v762) = v762 / 0xA;
        }

        while (v43);
        v757 = v945;
        v758 = v946;
        if (v845 < v846)
        {
          goto LABEL_1117;
        }

        *&v844[v846] = 0xA000A003B0029;
        goto LABEL_915;
      }

      v784 = MEMORY[0x22AA68210](this + 64, v778, v945, v946);
      v757 = v945;
      v758 = v946;
      if (!v784)
      {
        goto LABEL_915;
      }

      v786 = v784;
      v787 = v785;
      if (v769)
      {
        memset(v784, 32, v769);
        if (v787 < v769)
        {
          goto LABEL_1117;
        }
      }

      else
      {
        v769 = 0;
      }

      v812 = &v786[v769];
      qmemcpy(&v786[v769], "static_assert(sizeof(", 21);
      if (v787 - v769 <= 0x14)
      {
        goto LABEL_1117;
      }

      v813 = v787 - v769 - 21;
      v814 = v812 + 21;
      if (!v763)
      {
        v820 = 0;
        goto LABEL_1049;
      }

      v815 = *(v763 + 8);
      v816 = *(v763 + 4);
      if ((*(v763 + 16) & 4) != 0)
      {
        if (v816)
        {
          if (v816 == 1)
          {
            *v814 = v815->i8[0];
          }

          else
          {
            memcpy(v812 + 21, v815, v816);
          }
        }
      }

      else
      {
        if (v816 < 0x10)
        {
          v817 = (v812 + 21);
          v819 = &v814[v816];
          if (v814 == &v814[v816])
          {
            goto LABEL_1048;
          }
        }

        else
        {
          v817 = (v812 + 21);
          do
          {
            v818 = vld2q_s8(v815->i8);
            v815 += 2;
            *v817++ = v818;
          }

          while (v817 != &v814[v816 & 0xFFFFFFF0]);
          v819 = &v814[v816];
          if (v817 == &v814[v816])
          {
            goto LABEL_1048;
          }
        }

        v847 = &v786[v816 + v769];
        v848 = v847 - v817;
        v849 = v847 - v817 + 21;
        if (v849 < 4 || ((v850 = v847 + 21, v817 < (&v815[2].u64[1] + 2 * v848 + 2)) ? (v851 = v815 >= v850) : (v851 = 1), !v851))
        {
          v853 = v817;
          v854 = v815;
          goto LABEL_1045;
        }

        if (v849 >= 0x20)
        {
          v852 = v849 & 0xFFFFFFFFFFFFFFE0;
          v899 = v815 + 2;
          v900 = (v817 + 1);
          v901 = v849 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v903 = v899[-2];
            v902 = v899[-1];
            v905 = *v899;
            v904 = v899[1];
            v899 += 4;
            v900[-1] = vuzp1q_s8(v903, v902);
            *v900 = vuzp1q_s8(v905, v904);
            v900 += 2;
            v901 -= 32;
          }

          while (v901);
          if (v849 == v852)
          {
            goto LABEL_1048;
          }

          if ((v849 & 0x1C) == 0)
          {
            v854 = (v815 + 2 * v852);
            v853 = (v817 + v852);
            do
            {
LABEL_1045:
              v855 = v854->i8[0];
              v854 = (v854 + 2);
              *v853 = v855;
              v853 = (v853 + 1);
            }

            while (v853 != v819);
            goto LABEL_1048;
          }
        }

        else
        {
          v852 = 0;
        }

        v853 = (v817 + (v849 & 0xFFFFFFFFFFFFFFFCLL));
        v854 = (v815 + 2 * (v849 & 0xFFFFFFFFFFFFFFFCLL));
        v906 = (v815 + 2 * v852);
        v907 = (v817 + v852);
        v908 = v852 - (v849 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v909 = *v906++;
          *v907++ = vuzp1_s8(v909, v909).u32[0];
          v908 += 4;
        }

        while (v908);
        if (v849 != (v849 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_1045;
        }
      }

LABEL_1048:
      v820 = *(v763 + 4);
      if (v813 < v820)
      {
        goto LABEL_1117;
      }

LABEL_1049:
      v856 = &v814[v820];
      *&v814[v820] = 14906;
      if (v813 - v820 <= 1)
      {
        goto LABEL_1117;
      }

      v857 = v813 - v820 - 2;
      v858 = v856 + 2;
      if (v765)
      {
        v859 = *(v765 + 8);
        v860 = *(v765 + 4);
        if ((*(v765 + 16) & 4) != 0)
        {
          if (v860)
          {
            if (v860 == 1)
            {
              *v858 = v859->i8[0];
            }

            else
            {
              memcpy(v856 + 2, v859, v860);
            }
          }

LABEL_1074:
          v864 = *(v765 + 4);
          if (v857 < v864)
          {
            goto LABEL_1117;
          }

          goto LABEL_1075;
        }

        if (v860 < 0x10)
        {
          v861 = (v856 + 2);
          v863 = &v858[v860];
          if (v858 == &v858[v860])
          {
            goto LABEL_1074;
          }
        }

        else
        {
          v861 = (v856 + 2);
          do
          {
            v862 = vld2q_s8(v859->i8);
            v859 += 2;
            *v861++ = v862;
          }

          while (v861 != &v858[v860 & 0xFFFFFFF0]);
          v863 = &v858[v860];
          if (v861 == &v858[v860])
          {
            goto LABEL_1074;
          }
        }

        v865 = &v786[v820 + v860 + v769];
        v866 = v865 - v861;
        v867 = v865 - v861 + 23;
        if (v867 < 4 || ((v868 = v865 + 23, v861 < (&v859[2].u64[1] + 2 * v866 + 6)) ? (v869 = v859 >= v868) : (v869 = 1), !v869))
        {
          v871 = v861;
          v872 = v859;
          goto LABEL_1071;
        }

        if (v867 < 0x20)
        {
          v870 = 0;
          goto LABEL_1108;
        }

        v870 = v867 & 0xFFFFFFFFFFFFFFE0;
        v910 = v859 + 2;
        v911 = (v861 + 1);
        v912 = v867 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v914 = v910[-2];
          v913 = v910[-1];
          v916 = *v910;
          v915 = v910[1];
          v910 += 4;
          v911[-1] = vuzp1q_s8(v914, v913);
          *v911 = vuzp1q_s8(v916, v915);
          v911 += 2;
          v912 -= 32;
        }

        while (v912);
        if (v867 == v870)
        {
          goto LABEL_1074;
        }

        if ((v867 & 0x1C) != 0)
        {
LABEL_1108:
          v871 = (v861 + (v867 & 0xFFFFFFFFFFFFFFFCLL));
          v872 = (v859 + 2 * (v867 & 0xFFFFFFFFFFFFFFFCLL));
          v917 = (v859 + 2 * v870);
          v918 = (v861 + v870);
          v919 = v870 - (v867 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v920 = *v917++;
            *v918++ = vuzp1_s8(v920, v920).u32[0];
            v919 += 4;
          }

          while (v919);
          if (v867 == (v867 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_1074;
          }
        }

        else
        {
          v872 = (v859 + 2 * v870);
          v871 = (v861 + v870);
        }

        do
        {
LABEL_1071:
          v873 = v872->i8[0];
          v872 = (v872 + 2);
          *v871 = v873;
          v871 = (v871 + 1);
        }

        while (v871 != v863);
        goto LABEL_1074;
      }

      v864 = 0;
LABEL_1075:
      v874 = v857 - v864;
      v875 = &v858[v864];
      v875[4] = 32;
      *v875 = 1027416105;
      if (v874 <= 4)
      {
        goto LABEL_1117;
      }

      v876 = v874 - 5;
      v877 = v875 + 5;
      WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v762, v875 + 5, v874 - 5);
      LODWORD(v878) = 0;
      do
      {
        v878 = (v878 + 1);
        v43 = v762 > 9;
        LODWORD(v762) = v762 / 0xA;
      }

      while (v43);
      v756 = v943;
      v757 = v945;
      v758 = v946;
      if (v876 < v878)
      {
        goto LABEL_1117;
      }

      *&v877[v878] = 168442665;
LABEL_915:
      ++v755;
    }

    while (v755 != v756);
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WTF::StringImpl *this, WGSL::AST::Variable *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 128))
  {
    v7 = *(this + 55);
    *(this + 55) = *(a2 + 129) | 0x100;
    v8 = *(a2 + 18);
    if (v8 && *(v8 + 48) == 10 && (v9 = *(v8 + 8)) != 0 && !v9[48] && *v9 == 10)
    {
      v18[0] = "texture_external ";
      v18[1] = 17;
      v10 = *(a2 + 6);
      v16[0] = " { ";
      v16[1] = 3;
      v17 = v10;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v18, &v17, v16);
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
      WTF::StringBuilder::append();
      (*(*this + 216))(this, *(a2 + 15));
    }

    else
    {
      v11 = *(a2 + 13);
      if (v11)
      {
        if (*(v11 + 24) == 5)
        {
          WTF::StringBuilder::append();
        }
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(this, v8, 0, a4, a5);
      LOBYTE(v16[0]) = 32;
      v18[0] = *(a2 + 6);
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), v16, v18);
      if (*(a2 + 128) == 2)
      {
        goto LABEL_15;
      }

      v12 = *(a2 + 15);
      if (v12)
      {
        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(this, v8, v12, v13, v14, v15);
LABEL_15:
        *(this + 55) = v7;
        return;
      }
    }

    WTF::StringBuilder::append();
    goto LABEL_15;
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(int8x16_t **this, const WGSL::Type **a2, WGSL::AST::Expression *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6 = a3;
  LOBYTE(v12[0]) = 0;
  v14 = 0;
  if (*(a3 + 56))
  {
LABEL_5:
    v13 = -1;
    v9 = *(v6 + 48);
    if (v9 == 255)
    {
      v14 = 1;
      LOBYTE(v10[0]) = 0;
      v11 = -1;
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v15, v12, v6 + 4);
      v13 = *(v6 + 48);
      v14 = 1;
      LOBYTE(v10[0]) = 0;
      v11 = -1;
      if (v13 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v13, &v15, v10, v12);
        v11 = v13;
      }
    }

    WGSL::Metal::FunctionDefinitionWriter::serializeConstant(this, a2, v10, a4, a5, a6);
    if (v11 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v15, v10);
    }

    v11 = -1;
    if ((v14 & 1) != 0 && v13 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v15, v12);
    }
  }

  else
  {
    while ((*(*v6 + 16))(v6) != 19)
    {
      if ((*(*v6 + 16))(v6) != 22)
      {

        WGSL::AST::Visitor::visit(this, v6);
        return;
      }

      v6 = *(v6 + 8);
      LOBYTE(v12[0]) = 0;
      v14 = 0;
      if (*(v6 + 56))
      {
        goto LABEL_5;
      }
    }

    WGSL::Metal::FunctionDefinitionWriter::visit(this, a2, v6);
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, WGSL::AST::BuiltinAttribute *a2)
{
  if (*(this + 109) != 1 || ((v2 = *(this + 108), v3 = v2 > 9, v4 = (1 << v2) & 0x310, !v3) ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    v6 = *(a2 + 24);
    if (v6 > 5)
    {
      if (*(a2 + 24) > 8u)
      {
        if (v6 == 9 || v6 == 10 || v6 == 11)
        {
          return WTF::StringBuilder::append();
        }
      }

      else if (v6 == 6 || v6 == 7 || v6 == 8)
      {
        return WTF::StringBuilder::append();
      }
    }

    else if (*(a2 + 24) <= 2u || v6 == 3 || v6 == 4 || v6 == 5)
    {
      return WTF::StringBuilder::append();
    }
  }

  return this;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, WGSL::AST::StageAttribute *a2)
{
  *(this + 114) = *(a2 + 24) | 0x100;
  v2 = *(a2 + 24);
  if (v2 == 1 || v2 == 4 || v2 == 2)
  {
    return WTF::StringBuilder::append();
  }

  return this;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::GroupAttribute *a2)
{
  v2 = *(a2 + 3);
  if ((*(v2 + 56) & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    result = 167;
    __break(0xC471u);
    return result;
  }

  v3 = *(v2 + 48);
  if (v3 != 5 && v3 != 4 && v3 != 3)
  {
    goto LABEL_35;
  }

  v4 = *(v2 + 32);
  if (*(this + 115) == 1 && *(this + 114) == 1)
  {
    v5 = *(*(this + 12) + 40) - 1;
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v4;
    }
  }

  v8 = 0;
  v9 = *(this + 20);
  v10 = v4;
  do
  {
    ++v8;
    v11 = v10 > 9;
    v10 /= 0xAu;
  }

  while (v11);
  v6 = __CFADD__(v8, 12);
  v12 = v8 + 12;
  if (v6)
  {
    v12 = -1;
  }

  v6 = __CFADD__(v9, v12);
  v13 = v9 + v12;
  if (v6)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(this + 9);
  if ((v15 || (v15 = *(this + 8)) != 0) && (*(v15 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
    if (!result)
    {
      return result;
    }

    *result = xmmword_225882560;
    *(result + 16) = 40;
    if (v17 > 8)
    {
      v18 = result + 18;
      v19 = v17 - 9;
      result = WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v4, (result + 18), v17 - 9);
      LODWORD(v20) = 0;
      do
      {
        v20 = (v20 + 1);
        v11 = v4 > 9;
        LODWORD(v4) = v4 / 0xA;
      }

      while (v11);
      if (v19 >= v20)
      {
        v21 = v18 + 2 * v20;
        *v21 = 6094889;
        *(v21 + 4) = 93;
        return result;
      }
    }

    goto LABEL_34;
  }

  result = MEMORY[0x22AA68210](this + 64, v14);
  if (result)
  {
    *(result + 8) = 40;
    *result = *"[[buffer(";
    if (v22 > 8)
    {
      v23 = v22 - 9;
      v24 = result + 9;
      result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v4, (result + 9), v22 - 9);
      LODWORD(v25) = 0;
      do
      {
        v25 = (v25 + 1);
        v11 = v4 > 9;
        LODWORD(v4) = v4 / 0xA;
      }

      while (v11);
      if (v23 >= v25)
      {
        v26 = v24 + v25;
        *(v26 + 2) = 93;
        *v26 = 23849;
        return result;
      }
    }

    goto LABEL_34;
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::BindingAttribute *a2)
{
  v4 = *(a2 + 3);
  if (*(v4 + 56))
  {
    v5 = *(v4 + 48);
    switch(v5)
    {
      case 5:
        v6 = *(v4 + 32);
        goto LABEL_8;
      case 4:
        v6 = *(v4 + 32);
LABEL_8:
        v9[2] = v2;
        v9[3] = v3;
        v9[0] = "[[id(";
        v9[1] = 5;
        v8 = v6;
        v7[0] = ")]]";
        v7[1] = 3;
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v9, &v8, v7);
        return;
      case 3:
        v6 = *(v4 + 32);
        goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(0xC471u);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(unsigned __int8 *this, WGSL::AST::LocationAttribute *a2)
{
  if (this[109] == 1)
  {
    v2 = this[108];
    if (v2 <= 3)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          return;
        }

LABEL_12:
        v6 = *(a2 + 3);
        if (*(v6 + 56))
        {
          v7 = *(v6 + 48);
          switch(v7)
          {
            case 5:
              v5 = *(v6 + 32);
              goto LABEL_23;
            case 4:
              v5 = *(v6 + 32);
LABEL_23:
              v10 = "[[user(loc";
              v11 = 10;
LABEL_34:
              v14[0] = v10;
              v14[1] = v11;
              v13 = v5;
              v12[0] = ")]]";
              v12[1] = 3;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v14, &v13, v12);
              return;
            case 3:
              v5 = *(v6 + 32);
              goto LABEL_23;
          }

LABEL_36:
          __break(0xC471u);
          JUMPOUT(0x225752398);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v8 = *(a2 + 3);
      if ((*(v8 + 56) & 1) == 0)
      {
        goto LABEL_35;
      }

      v9 = *(v8 + 48);
      switch(v9)
      {
        case 5:
          v5 = *(v8 + 32);
          goto LABEL_33;
        case 4:
          v5 = *(v8 + 32);
LABEL_33:
          v10 = "[[attribute(";
          v11 = 12;
          goto LABEL_34;
        case 3:
          v5 = *(v8 + 32);
          goto LABEL_33;
      }

LABEL_38:
      __break(0xC471u);
      JUMPOUT(0x2257522F8);
    }

    switch(v2)
    {
      case 4u:
        goto LABEL_12;
      case 8u:
        v3 = *(a2 + 3);
        if (*(v3 + 56))
        {
          v4 = *(v3 + 48);
          switch(v4)
          {
            case 5:
              v5 = *(v3 + 32);
              break;
            case 4:
              v5 = *(v3 + 32);
              break;
            case 3:
              v5 = *(v3 + 32);
              break;
            default:
              __break(0xC471u);
              JUMPOUT(0x2257523B8);
          }

          v10 = "[[color(";
          v11 = 8;
          goto LABEL_34;
        }

        goto LABEL_35;
      case 9u:
        goto LABEL_38;
    }
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::InterpolateAttribute *a2)
{
  v2 = *(a2 + 24);
  if (!*(a2 + 24))
  {
    goto LABEL_16;
  }

  v3 = *(a2 + 25);
  if (v2 == 2)
  {
    v4 = "center_perspective";
    v5 = 19;
    if (*(a2 + 25) > 1u)
    {
      if ((v3 - 2) < 2)
      {
        goto LABEL_17;
      }

      if (v3 == 4)
      {
        v4 = "sample_perspective";
        v5 = 19;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (*(a2 + 25))
    {
      v4 = "centroid_perspective";
      v5 = 21;
    }

    goto LABEL_17;
  }

  if (v2 != 1)
  {
LABEL_16:
    v4 = "flat";
    v5 = 5;
    goto LABEL_17;
  }

  v4 = "center_no_perspective";
  v5 = 22;
  if (*(a2 + 25) > 1u)
  {
    if ((v3 - 2) < 2)
    {
      goto LABEL_17;
    }

    if (v3 == 4)
    {
      v4 = "sample_no_perspective";
      v5 = 22;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(a2 + 25))
  {
    v4 = "centroid_no_perspective";
    v5 = 24;
  }

LABEL_17:
  v11[0] = "[[";
  v11[1] = 2;
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v10[0] = v4;
  v10[1] = v7;
  if (v7 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v9[0] = "]]";
    v9[1] = 2;
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v11, v10, v9);
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Parameter *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(this + 56);
  *(this + 56) = *(a2 + 24) | 0x100;
  WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a2 + 8) + 24), 0, a4, a5);
  v18[0] = 32;
  v17 = *(a2 + 7);
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), v18, &v17);
  v9 = *(a2 + 21);
  if (v9)
  {
    v10 = *(a2 + 9);
    v11 = 8 * v9;
    do
    {
      v12 = *v10;
      v18[1] = 32;
      v13 = *(this + 9);
      if (v13 && (v14 = *(this + 20), v14 < *(v13 + 4)) && !*(this + 8))
      {
        v15 = *(v13 + 16);
        v16 = *(v13 + 8);
        *(this + 20) = v14 + 1;
        if ((v15 & 4) != 0)
        {
          *(v16 + v14) = 32;
        }

        else
        {
          *(v16 + 2 * v14) = 32;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      if ((*(this + 32) & 1) == 0)
      {
        result = (*(*this + 96))(this, v12);
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  *(this + 56) = v7;
  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::serializeConstant(uint64_t a1, const WGSL::Type **a2, unsigned int **a3, uint64_t a4, uint64_t a5, __n128 _Q0)
{
  v400 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 48);
  if (v6 == 255)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(a2 + 48);
  }

  switch(v7)
  {
    case 1:
      if (v6 != 1 || *(a3 + 16) != 8)
      {
        goto LABEL_576;
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(a1, a2, 0, a4, a5);
      LOBYTE(v396[0]) = 40;
      v66 = *(a1 + 72);
      if (v66 && (v67 = *(a1 + 80), v67 < *(v66 + 4)) && !*(a1 + 64))
      {
        v228 = *(v66 + 16);
        v229 = *(v66 + 8);
        *(a1 + 80) = v67 + 1;
        if ((v228 & 4) != 0)
        {
          *(v229 + v67) = 40;
        }

        else
        {
          *(v229 + 2 * v67) = 40;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }

      v68 = *a3;
      v69 = *a3 + 2;
      if (*a3)
      {
        v70 = *a3 + 2;
      }

      else
      {
        v70 = 0;
      }

      if (v68)
      {
        v71 = &v69[6 * *v68];
        if (v70 == v71)
        {
          goto LABEL_397;
        }
      }

      else
      {
        v71 = 0;
        if (!v70)
        {
          goto LABEL_397;
        }
      }

      v98 = *a2;
      v99 = *(v70 + 16);
      LOBYTE(v398[0]) = 0;
      v399 = -1;
      if (v99 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v99, v396, v398, v70);
        v399 = *(v70 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v98, v398, v63, v64, v65);
      if (v399 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
      }

      v399 = -1;
      for (i = v70 + 6; i != v71; i += 6)
      {
        WTF::StringBuilder::append();
        v104 = *a2;
        LOBYTE(v398[0]) = 0;
        v399 = -1;
        v105 = *(i + 16);
        if (v105 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v105, v396, v398, i);
          v399 = *(i + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v104, v398, v101, v102, v103);
        if (v399 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
        }

        v399 = -1;
      }

      goto LABEL_397;
    case 2:
      if (v6 != 2 || *(a3 + 16) != 9)
      {
        goto LABEL_576;
      }

      WTF::StringBuilder::append();
      WGSL::Metal::FunctionDefinitionWriter::visit(a1, *a2, 0, v29, v30);
      v31 = 0;
      v32 = *(a2 + 8);
      v33 = *(a2 + 9);
      v34 = *(a1 + 80);
      v35 = *(a2 + 8);
      do
      {
        ++v31;
        v36 = v35;
        v35 /= 0xAu;
      }

      while (v36 > 9);
      v37 = 0;
      v38 = *(a2 + 9);
      do
      {
        ++v37;
        v39 = v38;
        v38 /= 0xAu;
      }

      while (v39 > 9);
      _CF = __CFADD__(v37, 4);
      v40 = v37 + 4;
      if (_CF)
      {
        v40 = -1;
      }

      _CF = __CFADD__(v31, v40);
      v41 = v31 + v40;
      if (_CF)
      {
        v41 = -1;
      }

      _CF = __CFADD__(v41, 2);
      v42 = v41 + 2;
      if (_CF)
      {
        v42 = -1;
      }

      _CF = __CFADD__(v34, v42);
      v43 = v34 + v42;
      if (_CF)
      {
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      v45 = *(a1 + 72);
      if ((v45 || (v45 = *(a1 + 64)) != 0) && (*(v45 + 16) & 4) == 0)
      {
        v46 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (v46)
        {
          *v46 = 2097196;
          v11 = v46 + 4;
          if (v47 <= 1)
          {
            goto LABEL_540;
          }

          v51 = v47 - 2;
          BYTE3(v396[0]) = (v32 % 0xAu) | 0x30;
          if (v32 >= 0xA)
          {
            BYTE2(v396[0]) = (v32 / 0xAu - 10 * ((26 * (v32 / 0xAu)) >> 8)) | 0x30;
            if (v32 >= 0x64)
            {
              v52 = 0;
              BYTE1(v396[0]) = ((41 * v32) >> 12) | 0x30;
              v53 = 1;
            }

            else
            {
              v52 = 1;
              v53 = 2;
            }
          }

          else
          {
            v52 = 0;
            v53 = 3;
          }

          if (v47 == 2)
          {
            goto LABEL_540;
          }

          *v11 = *(v396 + v53);
          if (v32 >= 0xA)
          {
            if (v47 == 3)
            {
              goto LABEL_540;
            }

            *(v46 + 6) = *(v396 + v53 + 1);
            if ((v52 & 1) == 0)
            {
              if (v47 == 4)
              {
                goto LABEL_540;
              }

              *(v46 + 8) = *(v396 + v53 + 2);
            }
          }

          LODWORD(v247) = 0;
          do
          {
            v247 = (v247 + 1);
            v248 = v32;
            LOBYTE(v32) = v32 / 0xAu;
          }

          while (v248 > 9);
          _CF = v51 >= v247;
          v249 = v51 - v247;
          if (!_CF)
          {
            goto LABEL_540;
          }

          v250 = v11 + 2 * v247;
          *v250 = 2097196;
          v11 = v250 + 4;
          if (v249 <= 1)
          {
            goto LABEL_540;
          }

          v251 = v249 - 2;
          BYTE3(v396[0]) = (v33 % 0xAu) | 0x30;
          if (v33 >= 0xA)
          {
            BYTE2(v396[0]) = (v33 / 0xAu - 10 * ((26 * (v33 / 0xAu)) >> 8)) | 0x30;
            if (v33 >= 0x64)
            {
              v252 = 0;
              BYTE1(v396[0]) = ((41 * v33) >> 12) | 0x30;
              v253 = 1;
            }

            else
            {
              v252 = 1;
              v253 = 2;
            }
          }

          else
          {
            v252 = 0;
            v253 = 3;
          }

          if (!v251)
          {
            goto LABEL_540;
          }

          *v11 = *(v396 + v253);
          if (v33 < 0xA)
          {
            goto LABEL_378;
          }

          if (v251 == 1)
          {
            goto LABEL_540;
          }

          *(v250 + 6) = *(v396 + v253 + 1);
          if (v252)
          {
LABEL_378:
            LODWORD(v254) = 0;
            do
            {
              v254 = (v254 + 1);
              v255 = v33;
              LOBYTE(v33) = v33 / 0xAu;
            }

            while (v255 > 9);
            if (v251 >= v254)
            {
              *(v11 + 2 * v254) = 2621502;
              v239 = a3[1];
              v240 = v239 + 2;
              if (v239)
              {
                v241 = v239 + 2;
              }

              else
              {
                v241 = 0;
              }

              if (!v239)
              {
                goto LABEL_385;
              }

              goto LABEL_343;
            }

            goto LABEL_540;
          }

          if (v251 != 2)
          {
            *(v250 + 8) = *(v396 + v253 + 2);
            goto LABEL_378;
          }

LABEL_540:
          __break(1u);
LABEL_541:
          if (v11 != 6)
          {
            return;
          }

          goto LABEL_544;
        }
      }

      else
      {
        v78 = MEMORY[0x22AA68210](a1 + 64, v44);
        if (v78)
        {
          LODWORD(v11) = 8236;
          *v78 = 8236;
          if (v79 <= 1)
          {
            goto LABEL_540;
          }

          v11 = v79 - 2;
          v80 = (205 * v32) >> 11;
          BYTE3(v396[0]) = (v32 - 10 * v80) | 0x30;
          if (v32 >= 0xA)
          {
            BYTE2(v396[0]) = (v80 - 10 * ((26 * v80) >> 8)) | 0x30;
            if (v32 >= 0x64)
            {
              v81 = 0;
              BYTE1(v396[0]) = ((41 * v32) >> 12) | 0x30;
              v82 = 1;
            }

            else
            {
              v81 = 1;
              v82 = 2;
            }
          }

          else
          {
            v81 = 0;
            v82 = 3;
          }

          if (v79 == 2)
          {
            goto LABEL_540;
          }

          *(v78 + 2) = *(v396 + v82);
          if (v32 >= 0xA)
          {
            if (v79 == 3)
            {
              goto LABEL_540;
            }

            *(v78 + 3) = *(v396 + v82 + 1);
            if ((v81 & 1) == 0)
            {
              if (v79 == 4)
              {
                goto LABEL_540;
              }

              *(v78 + 4) = *(v396 + v82 + 2);
            }
          }

          LODWORD(v230) = 0;
          do
          {
            v230 = (v230 + 1);
            v231 = v32;
            LOBYTE(v32) = v32 / 0xAu;
          }

          while (v231 > 9);
          _CF = v11 >= v230;
          v11 -= v230;
          if (!_CF)
          {
            goto LABEL_540;
          }

          v232 = v78 + 2 + v230;
          *v232 = 8236;
          if (v11 <= 1)
          {
            goto LABEL_540;
          }

          v11 -= 2;
          v233 = (205 * v33) >> 11;
          BYTE3(v396[0]) = (v33 - 10 * v233) | 0x30;
          if (v33 >= 0xA)
          {
            BYTE2(v396[0]) = (v233 - 10 * ((26 * v233) >> 8)) | 0x30;
            if (v33 >= 0x64)
            {
              v234 = 0;
              BYTE1(v396[0]) = ((41 * v33) >> 12) | 0x30;
              v235 = 1;
            }

            else
            {
              v234 = 1;
              v235 = 2;
            }
          }

          else
          {
            v234 = 0;
            v235 = 3;
          }

          if (!v11)
          {
            goto LABEL_540;
          }

          v236 = v232 + 2;
          *(v232 + 2) = *(v396 + v235);
          if (v33 >= 0xA)
          {
            if (v11 == 1)
            {
              goto LABEL_540;
            }

            *(v232 + 3) = *(v396 + v235 + 1);
            if ((v234 & 1) == 0)
            {
              if (v11 == 2)
              {
                goto LABEL_540;
              }

              *(v232 + 4) = *(v396 + v235 + 2);
            }
          }

          LODWORD(v237) = 0;
          do
          {
            v237 = (v237 + 1);
            v238 = v33;
            LOBYTE(v33) = v33 / 0xAu;
          }

          while (v238 > 9);
          if (v11 < v237)
          {
            goto LABEL_540;
          }

          *(v236 + v237) = 10302;
        }
      }

      v239 = a3[1];
      v240 = v239 + 2;
      if (v239)
      {
        v241 = v239 + 2;
      }

      else
      {
        v241 = 0;
      }

      if (!v239)
      {
LABEL_385:
        v242 = 0;
        if (v241)
        {
          goto LABEL_386;
        }

        goto LABEL_397;
      }

LABEL_343:
      v242 = &v240[6 * *v239];
      if (v241 != v242)
      {
LABEL_386:
        v256 = *a2;
        v257 = *(v241 + 16);
        LOBYTE(v398[0]) = 0;
        v399 = -1;
        if (v257 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v257, v396, v398, v241);
          v399 = *(v241 + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v256, v398, v48, v49, v50);
        if (v399 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
        }

        v399 = -1;
        for (j = v241 + 6; j != v242; j += 6)
        {
          WTF::StringBuilder::append();
          v262 = *a2;
          LOBYTE(v398[0]) = 0;
          v399 = -1;
          v263 = *(j + 16);
          if (v263 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v263, v396, v398, j);
            v399 = *(j + 16);
          }

          WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v262, v398, v259, v260, v261);
          if (v399 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
          }

          v399 = -1;
        }
      }

LABEL_397:
      LOBYTE(v396[0]) = 41;
      v264 = *(a1 + 72);
      if (!v264)
      {
        goto LABEL_538;
      }

      v265 = *(a1 + 80);
      if (v265 >= *(v264 + 4) || *(a1 + 64))
      {
        goto LABEL_538;
      }

      v266 = *(v264 + 16);
      v267 = *(v264 + 8);
      *(a1 + 80) = v265 + 1;
      if ((v266 & 4) != 0)
      {
        *(v267 + v265) = 41;
      }

      else
      {
        *(v267 + 2 * v265) = 41;
      }

      return;
    case 3:
      if (v6 != 3 || *(a3 + 16) != 7)
      {
        goto LABEL_576;
      }

      WGSL::Metal::FunctionDefinitionWriter::visit(a1, a2, 0, a4, a5);
      LOBYTE(v396[0]) = 123;
      v57 = *(a1 + 72);
      if (v57 && (v58 = *(a1 + 80), v58 < *(v57 + 4)) && !*(a1 + 64))
      {
        v226 = *(v57 + 16);
        v227 = *(v57 + 8);
        *(a1 + 80) = v58 + 1;
        if ((v226 & 4) != 0)
        {
          *(v227 + v58) = 123;
        }

        else
        {
          *(v227 + 2 * v58) = 123;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }

      v59 = *a3;
      v60 = *a3 + 2;
      if (*a3)
      {
        v61 = *a3 + 2;
      }

      else
      {
        v61 = 0;
      }

      if (v59)
      {
        v62 = &v60[6 * *v59];
        if (v61 == v62)
        {
          goto LABEL_285;
        }
      }

      else
      {
        v62 = 0;
        if (!v61)
        {
          goto LABEL_285;
        }
      }

      v90 = *a2;
      v91 = *(v61 + 16);
      LOBYTE(v398[0]) = 0;
      v399 = -1;
      if (v91 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v91, v396, v398, v61);
        v399 = *(v61 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v90, v398, v54, v55, v56);
      if (v399 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
      }

      v399 = -1;
      for (k = v61 + 6; k != v62; k += 6)
      {
        WTF::StringBuilder::append();
        v96 = *a2;
        LOBYTE(v398[0]) = 0;
        v399 = -1;
        v97 = *(k + 16);
        if (v97 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v97, v396, v398, k);
          v399 = *(k + 16);
        }

        WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v96, v398, v93, v94, v95);
        if (v399 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
        }

        v399 = -1;
      }

      goto LABEL_285;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_576;
      }

      v18 = *(a3 + 16);
      _CF = v18 >= 0xA;
      if (v18 != 10)
      {
        goto LABEL_576;
      }

      v20 = *(*a2 + 6);
      v21 = *(a1 + 80);
      if (v20)
      {
        v22 = *(v20 + 4);
        _CF = __CFADD__(v22, 3);
        v23 = v22 + 3;
        if (_CF)
        {
          v23 = -1;
        }

        _CF = __CFADD__(v21, v23);
        v24 = v21 + v23;
        if (_CF)
        {
          v25 = 0xFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        v26 = *(a1 + 72);
        if (!v26)
        {
LABEL_103:
          v26 = *(a1 + 64);
          if (!v26)
          {
            goto LABEL_108;
          }
        }
      }

      else
      {
        if (_CF)
        {
          v83 = -1;
        }

        else
        {
          v83 = 3;
        }

        _CF = __CFADD__(v21, v83);
        v84 = v21 + v83;
        if (_CF)
        {
          v25 = 0xFFFFFFFFLL;
        }

        else
        {
          v25 = v84;
        }

        v26 = *(a1 + 72);
        if (!v26)
        {
          goto LABEL_103;
        }
      }

      if ((*(v26 + 16) & 4) == 0)
      {
        v85 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (!v85)
        {
          goto LABEL_415;
        }

        if (!v20)
        {
          v11 = 0;
LABEL_414:
          v273 = &v85[v11];
          *v273 = 8060960;
          v273[2] = 32;
LABEL_415:
          v274 = *a2;
          v275 = *(*a2 + 21);
          if (v275)
          {
LABEL_416:
            v276 = *(v274 + 9);
            v277 = &v276[v275];
            v278 = 0uLL;
            while (1)
            {
              v279 = *v276;
              v280 = *(*v276 + 48);
              if (v280)
              {
                v281 = *(v280 + 4);
              }

              else
              {
                v281 = 0;
              }

              v394 = v87;
              v395 = v278;
              v282 = *(a1 + 80);
              _CF = __CFADD__(v281, 4);
              v283 = v281 + 4;
              if (_CF)
              {
                v283 = -1;
              }

              _CF = __CFADD__(v282, v283);
              v284 = v282 + v283;
              v285 = _CF ? 0xFFFFFFFFLL : v284;
              v286 = *(a1 + 72);
              if ((v286 || (v286 = *(a1 + 64)) != 0) && (*(v286 + 16) & 4) == 0)
              {
                break;
              }

              if (v280 && (*(v280 + 16) & 4) == 0)
              {
                break;
              }

              v295 = MEMORY[0x22AA68210](a1 + 64, v285);
              if (v295)
              {
                if (!v296)
                {
                  goto LABEL_540;
                }

                *v295 = 46;
                v297 = v295 + 1;
                if (v280)
                {
                  v298 = *(v280 + 8);
                  v289 = *(v280 + 4);
                  if ((*(v280 + 16) & 4) != 0)
                  {
                    if (v289)
                    {
                      if (v289 == 1)
                      {
                        *v297 = *v298;
                      }

                      else
                      {
                        v339 = v296;
                        memcpy(v295 + 1, *(v280 + 8), v289);
                        v296 = v339;
                      }
                    }

                    goto LABEL_501;
                  }

                  if (v289 < 0x10)
                  {
                    v299 = (v295 + 1);
                    v301 = &v297[v289];
                    if (v297 != &v297[v289])
                    {
                      goto LABEL_489;
                    }
                  }

                  else
                  {
                    v299 = (v295 + 1);
                    do
                    {
                      v300 = vld2q_s8(v298);
                      v298 += 32;
                      *v299++ = v300;
                    }

                    while (v299 != &v297[v289 & 0xFFFFFFF0]);
                    v301 = &v297[v289];
                    if (v299 == &v297[v289])
                    {
                      goto LABEL_501;
                    }

LABEL_489:
                    v332 = &v295[v289] - v299;
                    v333 = v332 + 1;
                    if ((v332 + 1) < 4 || (v299 < &v298[2 * v332 + 2] ? (v334 = v298 >= &v295[v289 + 1]) : (v334 = 1), !v334))
                    {
                      v336 = v299;
                      v337 = v298;
                      goto LABEL_498;
                    }

                    if (v333 >= 0x20)
                    {
                      v335 = v333 & 0xFFFFFFFFFFFFFFE0;
                      v352 = (v298 + 32);
                      v353 = v299 + 1;
                      v354 = v333 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v356 = v352[-2];
                        v355 = v352[-1];
                        v358 = *v352;
                        v357 = v352[1];
                        v352 += 4;
                        v353[-1] = vuzp1q_s8(v356, v355);
                        *v353 = vuzp1q_s8(v358, v357);
                        v353 += 2;
                        v354 -= 32;
                      }

                      while (v354);
                      if (v333 != v335)
                      {
                        if ((v333 & 0x1C) == 0)
                        {
                          v337 = &v298[2 * v335];
                          v336 = (v299 + v335);
                          goto LABEL_498;
                        }

                        goto LABEL_516;
                      }
                    }

                    else
                    {
                      v335 = 0;
LABEL_516:
                      v336 = (v299 + (v333 & 0xFFFFFFFFFFFFFFFCLL));
                      v337 = &v298[2 * (v333 & 0xFFFFFFFFFFFFFFFCLL)];
                      v359 = &v298[2 * v335];
                      v360 = (v299->i32 + v335);
                      v361 = v335 - (v333 & 0xFFFFFFFFFFFFFFFCLL);
                      do
                      {
                        v362 = *v359++;
                        *v360++ = vuzp1_s8(v362, v362).u32[0];
                        v361 += 4;
                      }

                      while (v361);
                      if (v333 != (v333 & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        do
                        {
LABEL_498:
                          v338 = *v337;
                          v337 += 2;
                          v336->i8[0] = v338;
                          v336 = (v336 + 1);
                        }

                        while (v336 != v301);
                      }
                    }
                  }

LABEL_501:
                  v11 = *(v280 + 4);
                  if (v296 - 1 < v11)
                  {
                    goto LABEL_540;
                  }
                }

                else
                {
                  v11 = 0;
                }

                v340 = &v297[v11];
                v340[2] = 32;
                *v340 = 15648;
                v341 = *(v279 + 80);
                v320 = (v279 + 80);
                v319 = v341;
                if (v341 == -1)
                {
LABEL_578:
                  __break(0xC471u);
                  JUMPOUT(0x22575456CLL);
                }

                goto LABEL_474;
              }

LABEL_473:
              v321 = *(v279 + 80);
              v320 = (v279 + 80);
              v319 = v321;
              if (v321 == -1)
              {
                goto LABEL_578;
              }

LABEL_474:
              if (!v319)
              {
                __break(0xC471u);
                JUMPOUT(0x22575454CLL);
              }

              v322 = a2[1];
              if (v322)
              {
                v323 = *(v322 - 2);
                v324 = *(v319 + 4);
                if (v324 < 0x100)
                {
                  v325 = WTF::StringImpl::hashSlowCase(v319);
                }

                else
                {
                  v325 = v324 >> 8;
                }

                for (m = 0; ; v325 = m + v327)
                {
                  v327 = v325 & v323;
                  v328 = *(v322 + 2 * v327);
                  if (v328 != -1)
                  {
                    if (!v328)
                    {
                      v322 = 0;
                      break;
                    }

                    if (WTF::equal(v328, *v320, v289))
                    {
                      v322 = *(v322 + 2 * v327 + 1);
                      break;
                    }
                  }

                  ++m;
                }
              }

              WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(a3, v320, v289, v398);
              WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v322, v398, v329, v330, v331);
              if (v399 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
              }

              v399 = -1;
              WTF::StringBuilder::append();
              ++v276;
              v87 = v394;
              v278 = v395;
              if (v276 == v277)
              {
                goto LABEL_538;
              }
            }

            v287 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
            if (!v287)
            {
              goto LABEL_473;
            }

            if (!v288)
            {
              goto LABEL_540;
            }

            *v287 = 46;
            v290 = v287 + 1;
            if (!v280)
            {
              v11 = 0;
LABEL_472:
              v318 = &v290[v11];
              *v318 = 3997728;
              v318[2] = 32;
              goto LABEL_473;
            }

            v291 = *(v280 + 8);
            v292 = *(v280 + 4);
            if ((*(v280 + 16) & 4) == 0)
            {
              v293 = v394;
              v294 = v395;
              if (v292)
              {
                if (v292 == 1)
                {
                  *v290 = *v291;
                }

                else
                {
                  v317 = v288;
                  memcpy(v287 + 1, *(v280 + 8), 2 * v292);
                  v293 = v394;
                  v294 = v395;
                  v288 = v317;
                }
              }

LABEL_471:
              v394 = v293;
              v395 = v294;
              v11 = *(v280 + 4);
              if (v288 - 1 < v11)
              {
                goto LABEL_540;
              }

              goto LABEL_472;
            }

            v293 = v394;
            v294 = v395;
            if (v292 < 0x40)
            {
              v302 = (v287 + 1);
              v309 = &v290[v292];
              if (v290 == v309)
              {
                goto LABEL_471;
              }
            }

            else
            {
              v302 = &v290[v292 & 0xFFFFFFC0];
              v303 = (v287 + 1);
              do
              {
                v403.val[0] = *v291;
                v304 = *(v291 + 16);
                v406.val[0] = *(v291 + 32);
                v305 = *(v291 + 48);
                v291 += 64;
                v293 = v305;
                v406.val[1] = v395;
                v409.val[0] = v304;
                v403.val[1] = v395;
                v306 = v303;
                vst2q_s8(v306, v403);
                v306 += 32;
                v409.val[1] = v395;
                vst2q_s8(v306, v409);
                v307 = v303 + 64;
                vst2q_s8(v307, v406);
                v308 = v303 + 96;
                vst2q_s8(v308, *&v293);
                v303 += 128;
              }

              while (v303 != v302);
              v309 = &v290[v292];
              if (v302 == v309)
              {
                goto LABEL_471;
              }
            }

            v310 = &v287[v292] - v302;
            if (v310 < 0xE || (v302 < v291 + (v310 >> 1) + 1 ? (v311 = v291 >= v302 + (v310 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v311 = 1), !v311))
            {
              v314 = v291;
              v315 = v302;
              goto LABEL_468;
            }

            v312 = (v310 >> 1) + 1;
            if (v310 >= 0x3E)
            {
              v313 = v312 & 0xFFFFFFFFFFFFFFE0;
              v342 = (v302 + 32);
              v343 = (v291 + 16);
              v344 = v312 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v345 = *v343[-2].i8;
                v346 = vmovl_u8(*v343);
                v347 = vmovl_high_u8(*v343->i8);
                v342[-2] = vmovl_u8(*v345.i8);
                v342[-1] = vmovl_high_u8(v345);
                *v342 = v346;
                v342[1] = v347;
                v342 += 4;
                v343 += 4;
                v344 -= 32;
              }

              while (v344);
              if (v312 == v313)
              {
                goto LABEL_471;
              }

              if ((v312 & 0x18) == 0)
              {
                v315 = (v302 + 2 * v313);
                v314 = (v291 + v313);
                goto LABEL_468;
              }
            }

            else
            {
              v313 = 0;
            }

            v314 = (v291 + (v312 & 0xFFFFFFFFFFFFFFF8));
            v315 = (v302 + 2 * (v312 & 0xFFFFFFFFFFFFFFF8));
            v348 = (v302 + 2 * v313);
            v349 = (v291 + v313);
            v350 = v313 - (v312 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v351 = *v349++;
              *v348++ = vmovl_u8(v351);
              v350 += 8;
            }

            while (v350);
            if (v312 == (v312 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_471;
            }

            do
            {
LABEL_468:
              v316 = *v314++;
              *v315++ = v316;
            }

            while (v315 != v309);
            goto LABEL_471;
          }

LABEL_538:
          WTF::StringBuilder::append();
          return;
        }

LABEL_111:
        v88 = *(v20 + 8);
        v89 = *(v20 + 4);
        if ((*(v20 + 16) & 4) == 0)
        {
          if (v89)
          {
            if (v89 == 1)
            {
              *v85 = *v88;
            }

            else
            {
              v271 = v85;
              v272 = v86;
              memcpy(v85, *(v20 + 8), 2 * v89);
              v86 = v272;
              v85 = v271;
            }
          }

LABEL_413:
          v11 = *(v20 + 4);
          if (v86 < v11)
          {
            goto LABEL_540;
          }

          goto LABEL_414;
        }

        v215 = &v85[v89];
        if (v89 < 0x40)
        {
          v216 = v85;
        }

        else
        {
          v216 = &v85[v89 & 0xFFFFFFC0];
          v217 = 0uLL;
          v218 = v85;
          do
          {
            v405.val[0] = *v88;
            v219 = *(v88 + 16);
            v408.val[0] = *(v88 + 32);
            v220 = *(v88 + 48);
            v88 += 64;
            v87 = v220;
            v408.val[1] = 0uLL;
            v410.val[0] = v219;
            v405.val[1] = 0uLL;
            v221 = v218;
            vst2q_s8(v221, v405);
            v221 += 32;
            v410.val[1] = 0uLL;
            vst2q_s8(v221, v410);
            v222 = v218 + 64;
            vst2q_s8(v222, v408);
            v223 = v218 + 96;
            vst2q_s8(v223, *&v87);
            v218 += 128;
          }

          while (v218 != v216);
        }

        if (v216 == v215)
        {
          goto LABEL_413;
        }

        v243 = v215 - v216 - 2;
        if (v243 < 0xE || (v216 < v88 + (v243 >> 1) + 1 ? (v244 = v88 >= (v243 & 0xFFFFFFFFFFFFFFFELL) + v216 + 2) : (v244 = 1), !v244))
        {
          v268 = v88;
          v269 = v216;
          goto LABEL_405;
        }

        v245 = (v243 >> 1) + 1;
        if (v243 >= 0x3E)
        {
          v246 = v245 & 0xFFFFFFFFFFFFFFE0;
          v372 = (v216 + 32);
          v373 = (v88 + 16);
          v374 = v245 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v375 = *v373[-2].i8;
            v376 = vmovl_u8(*v375.i8);
            v87 = vmovl_high_u8(v375);
            v377 = vmovl_u8(*v373);
            v378 = vmovl_high_u8(*v373->i8);
            v372[-2] = v376;
            v372[-1] = v87;
            *v372 = v377;
            v372[1] = v378;
            v372 += 4;
            v373 += 4;
            v374 -= 32;
          }

          while (v374);
          if (v245 == v246)
          {
            goto LABEL_413;
          }

          if ((v245 & 0x18) == 0)
          {
            v269 = (v216 + 2 * v246);
            v268 = (v88 + v246);
            goto LABEL_405;
          }
        }

        else
        {
          v246 = 0;
        }

        v268 = (v88 + (v245 & 0xFFFFFFFFFFFFFFF8));
        v269 = (v216 + 2 * (v245 & 0xFFFFFFFFFFFFFFF8));
        v379 = (v216 + 2 * v246);
        v380 = (v88 + v246);
        v381 = v246 - (v245 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v382 = *v380++;
          v87 = vmovl_u8(v382);
          *v379++ = v87;
          v381 += 8;
        }

        while (v381);
        if (v245 == (v245 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_413;
        }

        do
        {
LABEL_405:
          v270 = *v268++;
          *v269++ = v270;
        }

        while (v269 != v215);
        goto LABEL_413;
      }

LABEL_108:
      if (!v20)
      {
        v119 = MEMORY[0x22AA68210](a1 + 64, v25, _Q0);
        if (!v119)
        {
          goto LABEL_415;
        }

        v11 = 0;
LABEL_537:
        v371 = &v119[v11];
        v371[2] = 32;
        *v371 = 31520;
        v274 = *a2;
        v275 = *(*a2 + 21);
        if (v275)
        {
          goto LABEL_416;
        }

        goto LABEL_538;
      }

      if ((*(v20 + 16) & 4) == 0)
      {
        v85 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
        if (!v85)
        {
          goto LABEL_415;
        }

        goto LABEL_111;
      }

      v119 = MEMORY[0x22AA68210](a1 + 64, v25, _Q0);
      if (!v119)
      {
        goto LABEL_415;
      }

      v121 = *(v20 + 8);
      v122 = *(v20 + 4);
      if ((*(v20 + 16) & 4) != 0)
      {
        if (v122)
        {
          if (v122 == 1)
          {
            *v119 = *v121;
          }

          else
          {
            v369 = v119;
            v370 = v120;
            memcpy(v119, *(v20 + 8), v122);
            v120 = v370;
            v119 = v369;
          }
        }
      }

      else
      {
        v123 = &v119[v122];
        if (v122 < 0x10)
        {
          v124 = v119;
        }

        else
        {
          v124 = v119;
          do
          {
            v87 = vld2q_s8(v121);
            v121 += 32;
            *v124++ = v87;
          }

          while (v124 != &v119[v122 & 0xFFFFFFF0]);
        }

        if (v124 != v123)
        {
          v363 = &v119[v122] - v124;
          if (v363 < 4 || (v124 < &v121[2 * v363] ? (v364 = v121 >= &v119[v122]) : (v364 = 1), !v364))
          {
            v366 = v124;
            v367 = v121;
            goto LABEL_533;
          }

          if (v363 >= 0x20)
          {
            v365 = v363 & 0xFFFFFFFFFFFFFFE0;
            v383 = (v121 + 32);
            v384 = v124 + 1;
            v385 = v363 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v387 = v383[-2];
              v386 = v383[-1];
              v389 = *v383;
              v388 = v383[1];
              v383 += 4;
              v87 = vuzp1q_s8(v387, v386);
              v384[-1] = v87;
              *v384 = vuzp1q_s8(v389, v388);
              v384 += 2;
              v385 -= 32;
            }

            while (v385);
            if (v363 == v365)
            {
              goto LABEL_536;
            }

            if ((v363 & 0x1C) == 0)
            {
              v367 = &v121[2 * v365];
              v366 = (v124 + v365);
              do
              {
LABEL_533:
                v368 = *v367;
                v367 += 2;
                v366->i8[0] = v368;
                v366 = (v366 + 1);
              }

              while (v366 != v123);
              goto LABEL_536;
            }
          }

          else
          {
            v365 = 0;
          }

          v366 = (v124 + (v363 & 0xFFFFFFFFFFFFFFFCLL));
          v367 = &v121[2 * (v363 & 0xFFFFFFFFFFFFFFFCLL)];
          v390 = &v121[2 * v365];
          v391 = (v124->i32 + v365);
          v392 = v365 - (v363 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v393 = *v390++;
            *&v87 = vuzp1_s8(v393, v393);
            *v391++ = v87;
            v392 += 4;
          }

          while (v392);
          if (v363 != (v363 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_533;
          }
        }
      }

LABEL_536:
      v11 = *(v20 + 4);
      if (v120 < v11)
      {
        goto LABEL_540;
      }

      goto LABEL_537;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_576;
      }

      LODWORD(v11) = *(a3 + 16);
      if (v11 != 10)
      {
        goto LABEL_576;
      }

      v72 = *(a2 + 8);
      if (v72 >= 3)
      {
        goto LABEL_540;
      }

      v396[0] = *a2;
      v397 = 60;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v396, &v397);
      v75 = a2[2];
      if (v75)
      {
        v76 = (v75 + 8);
      }

      else
      {
        v76 = 0;
      }

      if (v75)
      {
        v77 = v75 + 8 * *v75 + 8;
        if (v76 == v77)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v77 = 0;
        if (!v76)
        {
          goto LABEL_142;
        }
      }

      v107 = *v76;
      v106 = v76 + 1;
      WGSL::Metal::FunctionDefinitionWriter::visit(a1, v107, 0, v73, v74);
      while (v106 != v77)
      {
        WTF::StringBuilder::append();
        v108 = *v106++;
        WGSL::Metal::FunctionDefinitionWriter::visit(a1, v108, 0, v109, v110);
      }

LABEL_142:
      WTF::StringBuilder::append();
      v112 = *a3;
      if (*a3)
      {
        v113 = *(v112 - 4);
        v114 = (v112 + 32 * v113);
        if (*(v112 - 12))
        {
          if (!v113)
          {
            goto LABEL_285;
          }

          v115 = 32 * v113;
          v116 = *a3;
          do
          {
            if ((*v116 + 1) > 1)
            {
              goto LABEL_151;
            }

            v116 += 4;
            v115 -= 32;
          }

          while (v115);
          v116 = v114;
LABEL_151:
          if (v112)
          {
            v117 = v112 + 32 * *(v112 - 4);
            v118 = v116 >= v117;
            if (v116 == v117)
            {
              goto LABEL_285;
            }
          }

          else
          {
            v117 = 0;
            v118 = 1;
            if (!v116)
            {
LABEL_285:
              LOBYTE(v396[0]) = 125;
              v211 = *(a1 + 72);
              if (!v211)
              {
                goto LABEL_538;
              }

              v212 = *(a1 + 80);
              if (v212 >= *(v211 + 4) || *(a1 + 64))
              {
                goto LABEL_538;
              }

              v213 = *(v211 + 16);
              v214 = *(v211 + 8);
              *(a1 + 80) = v212 + 1;
              if ((v213 & 4) != 0)
              {
                *(v214 + v212) = 125;
              }

              else
              {
                *(v214 + 2 * v212) = 125;
              }

              return;
            }
          }

          v125 = 1;
          v126 = 0uLL;
          while (1)
          {
            v394 = v111;
            v395 = v126;
            if ((v125 & 1) == 0)
            {
              WTF::StringBuilder::append();
            }

            v127 = *v116;
            v128 = *(a1 + 80);
            if (*v116)
            {
              v129 = v127[1];
              _CF = __CFADD__(v129, 4);
              v130 = v129 + 4;
              if (_CF)
              {
                v130 = -1;
              }

              _CF = __CFADD__(v128, v130);
              v131 = v128 + v130;
              if (_CF)
              {
                v132 = 0xFFFFFFFFLL;
              }

              else
              {
                v132 = v131;
              }

              v133 = *(a1 + 72);
              if (!v133)
              {
LABEL_192:
                v133 = *(a1 + 64);
                if (!v133)
                {
                  goto LABEL_194;
                }
              }
            }

            else
            {
              if (v118)
              {
                v134 = -1;
              }

              else
              {
                v134 = 4;
              }

              _CF = __CFADD__(v128, v134);
              v135 = v128 + v134;
              if (_CF)
              {
                v132 = 0xFFFFFFFFLL;
              }

              else
              {
                v132 = v135;
              }

              v133 = *(a1 + 72);
              if (!v133)
              {
                goto LABEL_192;
              }
            }

            if ((*(v133 + 16) & 4) == 0)
            {
              goto LABEL_196;
            }

LABEL_194:
            if (v127 && (v127[4] & 4) == 0)
            {
LABEL_196:
              v136 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((a1 + 64));
              v11 = &v394;
              v138 = v394;
              v139 = v395;
              if (v136)
              {
                if (!v137)
                {
                  goto LABEL_540;
                }

                *v136 = 46;
                v140 = v136 + 1;
                if (v127)
                {
                  v141 = *(v127 + 1);
                  v142 = v127[1];
                  if ((v127[4] & 4) == 0)
                  {
                    if (v142)
                    {
                      if (v142 == 1)
                      {
                        *v140 = *v141;
                      }

                      else
                      {
                        v166 = v137;
                        memcpy(v136 + 1, *(v127 + 1), 2 * v142);
                        v138 = v394;
                        v139 = v395;
                        v137 = v166;
                      }
                    }

                    goto LABEL_235;
                  }

                  if (v142 < 0x40)
                  {
                    v151 = (v136 + 1);
                    v158 = &v140[v142];
                    if (v140 != v158)
                    {
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    v151 = &v140[v142 & 0xFFFFFFC0];
                    v152 = (v136 + 1);
                    do
                    {
                      v402.val[0] = *v141;
                      v153 = *(v141 + 16);
                      v404.val[0] = *(v141 + 32);
                      v154 = *(v141 + 48);
                      v141 += 64;
                      v138 = v154;
                      v404.val[1] = v139;
                      v407.val[0] = v153;
                      v402.val[1] = v139;
                      v155 = v152;
                      vst2q_s8(v155, v402);
                      v155 += 32;
                      v407.val[1] = v139;
                      vst2q_s8(v155, v407);
                      v156 = v152 + 64;
                      vst2q_s8(v156, v404);
                      v157 = v152 + 96;
                      vst2q_s8(v157, *&v138);
                      v152 += 128;
                    }

                    while (v152 != v151);
                    v158 = &v140[v142];
                    if (v151 == v158)
                    {
                      goto LABEL_235;
                    }

LABEL_223:
                    v159 = &v136[v142] - v151;
                    if (v159 < 0xE || (v151 < v141 + (v159 >> 1) + 1 ? (v160 = v141 >= v151 + (v159 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v160 = 1), !v160))
                    {
                      v163 = v141;
                      v164 = v151;
                      goto LABEL_232;
                    }

                    v161 = (v159 >> 1) + 1;
                    if (v159 >= 0x3E)
                    {
                      v162 = v161 & 0xFFFFFFFFFFFFFFE0;
                      v190 = (v151 + 32);
                      v191 = (v141 + 16);
                      v192 = v161 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v193 = *v191[-2].i8;
                        v194 = vmovl_u8(*v191);
                        v195 = vmovl_high_u8(*v191->i8);
                        v190[-2] = vmovl_u8(*v193.i8);
                        v190[-1] = vmovl_high_u8(v193);
                        *v190 = v194;
                        v190[1] = v195;
                        v190 += 4;
                        v191 += 4;
                        v192 -= 32;
                      }

                      while (v192);
                      if (v161 != v162)
                      {
                        if ((v161 & 0x18) == 0)
                        {
                          v164 = (v151 + 2 * v162);
                          v163 = (v141 + v162);
                          goto LABEL_232;
                        }

                        goto LABEL_271;
                      }
                    }

                    else
                    {
                      v162 = 0;
LABEL_271:
                      v163 = (v141 + (v161 & 0xFFFFFFFFFFFFFFF8));
                      v164 = (v151 + 2 * (v161 & 0xFFFFFFFFFFFFFFF8));
                      v196 = (v151 + 2 * v162);
                      v197 = (v141 + v162);
                      v198 = v162 - (v161 & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v199 = *v197++;
                        *v196++ = vmovl_u8(v199);
                        v198 += 8;
                      }

                      while (v198);
                      if (v161 != (v161 & 0xFFFFFFFFFFFFFFF8))
                      {
                        do
                        {
LABEL_232:
                          v165 = *v163++;
                          *v164++ = v165;
                        }

                        while (v164 != v158);
                      }
                    }
                  }

LABEL_235:
                  v11 = v127[1];
                  if (v137 - 1 < v11)
                  {
                    goto LABEL_540;
                  }
                }

                else
                {
                  v11 = 0;
                }

                v167 = &v140[v11];
                *v167 = 3997728;
                v167[2] = 32;
              }

LABEL_237:
              v168 = *v116;
              v394 = v138;
              v395 = v139;
              if (v168)
              {
                goto LABEL_238;
              }

              goto LABEL_254;
            }

            v143 = MEMORY[0x22AA68210](a1 + 64, v132);
            v11 = &v394;
            v138 = v394;
            v139 = v395;
            if (!v143)
            {
              goto LABEL_237;
            }

            if (!v144)
            {
              goto LABEL_540;
            }

            *v143 = 46;
            v145 = v143 + 1;
            if (!v127)
            {
              v11 = 0;
              goto LABEL_253;
            }

            v146 = *(v127 + 1);
            v147 = v127[1];
            if ((v127[4] & 4) != 0)
            {
              if (v147)
              {
                if (v147 == 1)
                {
                  *v145 = *v146;
                }

                else
                {
                  v178 = v144;
                  memcpy(v143 + 1, *(v127 + 1), v147);
                  v138 = v394;
                  v139 = v395;
                  v144 = v178;
                }
              }
            }

            else
            {
              if (v147 < 0x10)
              {
                v148 = (v143 + 1);
                v150 = &v145[v147];
                if (v145 == &v145[v147])
                {
                  goto LABEL_252;
                }
              }

              else
              {
                v148 = (v143 + 1);
                do
                {
                  v149 = vld2q_s8(v146);
                  v146 += 32;
                  *v148++ = v149;
                }

                while (v148 != &v145[v147 & 0xFFFFFFF0]);
                v150 = &v145[v147];
                if (v148 == &v145[v147])
                {
                  goto LABEL_252;
                }
              }

              v171 = &v143[v147] - v148;
              v172 = v171 + 1;
              if ((v171 + 1) < 4 || (v148 < &v146[2 * v171 + 2] ? (v173 = v146 >= &v143[v147 + 1]) : (v173 = 1), !v173))
              {
                v175 = v148;
                v176 = v146;
                goto LABEL_249;
              }

              if (v172 >= 0x20)
              {
                v174 = v172 & 0xFFFFFFFFFFFFFFE0;
                v200 = (v146 + 32);
                v201 = v148 + 1;
                v202 = v172 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v204 = v200[-2];
                  v203 = v200[-1];
                  v206 = *v200;
                  v205 = v200[1];
                  v200 += 4;
                  v201[-1] = vuzp1q_s8(v204, v203);
                  *v201 = vuzp1q_s8(v206, v205);
                  v201 += 2;
                  v202 -= 32;
                }

                while (v202);
                if (v172 == v174)
                {
                  goto LABEL_252;
                }

                if ((v172 & 0x1C) == 0)
                {
                  v176 = &v146[2 * v174];
                  v175 = (v148 + v174);
                  do
                  {
LABEL_249:
                    v177 = *v176;
                    v176 += 2;
                    v175->i8[0] = v177;
                    v175 = (v175 + 1);
                  }

                  while (v175 != v150);
                  goto LABEL_252;
                }
              }

              else
              {
                v174 = 0;
              }

              v175 = (v148 + (v172 & 0xFFFFFFFFFFFFFFFCLL));
              v176 = &v146[2 * (v172 & 0xFFFFFFFFFFFFFFFCLL)];
              v207 = &v146[2 * v174];
              v208 = (v148->i32 + v174);
              v209 = v174 - (v172 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v210 = *v207++;
                *v208++ = vuzp1_s8(v210, v210).u32[0];
                v209 += 4;
              }

              while (v209);
              if (v172 != (v172 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_249;
              }
            }

LABEL_252:
            v11 = v127[1];
            if (v144 - 1 < v11)
            {
              goto LABEL_540;
            }

LABEL_253:
            v179 = &v145[v11];
            v179[2] = 32;
            *v179 = 15648;
            v168 = *v116;
            v394 = v138;
            v395 = v139;
            if (v168)
            {
LABEL_238:
              v169 = *(v168 + 1);
              v170 = v168[1] | (((v168[4] >> 2) & 1) << 32);
              goto LABEL_255;
            }

LABEL_254:
            v169 = 0;
            v170 = 0x100000000;
LABEL_255:
            v180 = WGSL::Types::PrimitiveStruct::keys[v72];
            if ((WTF::operator==(v169, v170, *v180, *(v180 + 1)) & 1) == 0)
            {
              v184 = *(v180 + 3);
              v185 = *(v180 + 4);
              v180 += 24;
              if ((WTF::operator==(v169, v170, v184, v185) & 1) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x2257545ACLL);
              }
            }

            v186 = *(v180 + 4);
            v187 = a2[2];
            if (*v187 <= v186)
            {
              __break(0xC471u);
              JUMPOUT(0x22575458CLL);
            }

            v188 = *(v187 + v186 + 1);
            LOBYTE(v398[0]) = 0;
            v399 = -1;
            v189 = *(v116 + 24);
            if (v189 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v189, v396, v398, v116 + 1);
              v399 = *(v116 + 24);
            }

            WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v188, v398, v181, v182, v183);
            if (v399 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
            }

            v399 = -1;
            v116 += 4;
            if (v116 == v114)
            {
              v111 = v394;
              v126 = v395;
            }

            else
            {
              v111 = v394;
              v126 = v395;
              do
              {
                if ((*v116 + 1) > 1)
                {
                  break;
                }

                v116 += 4;
              }

              while (v116 != v114);
            }

            v125 = 0;
            v118 = v116 >= v117;
            if (v116 == v117)
            {
              goto LABEL_285;
            }
          }
        }
      }

      else
      {
        v114 = 0;
        v113 = 0;
      }

      v116 = v114;
      v114 = (v112 + 32 * v113);
      goto LABEL_151;
    case 6:
      if (v6 == 6)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544D0);
      }

      goto LABEL_576;
    case 7:
      if (v6 == 7)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544A8);
      }

      goto LABEL_576;
    case 8:
      if (v6 == 8)
      {
        __break(0xC471u);
        JUMPOUT(0x225754480);
      }

      goto LABEL_576;
    case 9:
      if (v6 == 9)
      {
        __break(0xC471u);
        JUMPOUT(0x225754458);
      }

      goto LABEL_576;
    case 10:
      if (v6 != 10)
      {
        goto LABEL_576;
      }

      v27 = a2[1];
      LOBYTE(v398[0]) = 0;
      v399 = -1;
      v28 = *(a3 + 16);
      if (v28 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v28, v396, v398, a3);
        v399 = *(a3 + 16);
      }

      WGSL::Metal::FunctionDefinitionWriter::serializeConstant(a1, v27, v398, a4, a5, _Q0);
      if (v399 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v396, v398);
      }

      return;
    case 11:
      if (v6 == 11)
      {
        __break(0xC471u);
        JUMPOUT(0x2257545ECLL);
      }

      goto LABEL_576;
    case 12:
      if (v6 == 12)
      {
        __break(0xC471u);
        JUMPOUT(0x225754520);
      }

      goto LABEL_576;
    case 13:
      if (v6 == 13)
      {
        __break(0xC471u);
        JUMPOUT(0x2257544F8);
      }

      goto LABEL_576;
    default:
      if (*(a2 + 48))
      {
        goto LABEL_576;
      }

      LODWORD(v11) = *a2;
      if (v11 <= 2)
      {
        if (*a2)
        {
          if (v11 == 1)
          {
            if (*(a3 + 16) == 3)
            {
              LODWORD(v398[0]) = *a3;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<int,void>>((a1 + 64), v398);
              return;
            }
          }

          else
          {
            if (v11 != 2)
            {
              return;
            }

            if (*(a3 + 16) == 4)
            {
              LODWORD(v398[0]) = *a3;
              LOBYTE(v396[0]) = 117;
              WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v398, v396);
              return;
            }
          }
        }

        else if (*(a3 + 16) == 5)
        {
          v398[0] = *a3;
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<long long,void>>((a1 + 64), v398);
          return;
        }

        goto LABEL_576;
      }

      if (*a2 <= 4u)
      {
        if (v11 != 3)
        {
          if (v11 != 4)
          {
            return;
          }

          if (*(a3 + 16) == 1)
          {
            _H0 = *a3;
            __asm { FCVT            D0, H0 }

            v396[0] = WTF::numberToStringWithTrailingPoint();
            v396[1] = v17;
            if (v17 >> 31)
            {
              __break(0xC471u);
              JUMPOUT(0x2257545CCLL);
            }

            v397 = 104;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v396, &v397);
            return;
          }

          goto LABEL_576;
        }

        if (*(a3 + 16) != 2)
        {
          goto LABEL_576;
        }

LABEL_304:
        v224 = WTF::numberToStringWithTrailingPoint();
        WTF::StringBuilder::append<std::span<char const,18446744073709551615ul>>((a1 + 64), v224, v225);
        return;
      }

      if (*a2 > 6u)
      {
        if (v11 != 7)
        {
          if ((v11 - 8) >= 6)
          {
            return;
          }

LABEL_544:
          __break(0xC471u);
          JUMPOUT(0x22575431CLL);
        }

        if (*(a3 + 16) == 6)
        {

          WTF::StringBuilder::append();
          return;
        }
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_541;
        }

        if (!*(a3 + 16))
        {
          goto LABEL_304;
        }
      }

LABEL_576:
      mpark::throw_bad_variant_access(a1);
  }
}

void WGSL::Metal::FunctionDefinitionWriter::visit(int8x16_t **this, const WGSL::Type *a2, WGSL::AST::CallExpression *a3)
{
  v6 = *(a3 + 8);
  if ((*(*v6 + 16))(v6) == 58 && MEMORY[0x22AA683D0](v6[11], "bitcast", 7))
  {
    WTF::StringBuilder::append();
    WGSL::Metal::FunctionDefinitionWriter::visit(this, *(*(a3 + 8) + 24), 0, v7, v8);
    WTF::StringBuilder::append();
    if (*(a3 + 21))
    {
      ((*this)[13].i64[1])(this, **(a3 + 9));
      LOBYTE(v79[0]) = 41;
      v9 = this[9];
      if (v9 && (v10 = *(this + 20), v10 < v9->i32[1]) && !this[8])
      {
        v62 = v9[1].i32[0];
        v63 = v9->i64[1];
        *(this + 20) = v10 + 1;
        if ((v62 & 4) != 0)
        {
          *(v63 + v10) = 41;
        }

        else
        {
          *(v63 + 2 * v10) = 41;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }
    }

    else
    {
      __break(0xC471u);
    }

    return;
  }

  v13 = (*(**(a3 + 8) + 16))(*(a3 + 8));
  if (v13 == 57)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(*(a3 + 8) + 24) + 48) == 4;
    if (*(*(*(a3 + 8) + 24) + 48) != 4)
    {
      goto LABEL_19;
    }
  }

  if (*(a3 + 88))
  {
    v15 = WGSL::Metal::FunctionDefinitionWriter::visit(this, a2, 0, v11, v12);
    LOBYTE(v79[0]) = 40;
    v16 = this[9];
    if (v16 && (v17 = *(this + 20), v17 < v16->i32[1]) && !this[8])
    {
      v60 = v16[1].i32[0];
      v61 = v16->i64[1];
      *(this + 20) = v17 + 1;
      if ((v60 & 4) != 0)
      {
        *(v61 + v17) = 40;
      }

      else
      {
        *(v61 + 2 * v17) = 40;
      }
    }

    else
    {
      v15 = WTF::StringBuilder::append();
    }

    if (v13 == 57)
    {
      if (*(a2 + 48) != 3)
      {
        mpark::throw_bad_variant_access(v15);
      }

      v18 = *a2;
    }

    else
    {
      v18 = 0;
    }

    WTF::StringBuilder::append();
    ++*(this + 26);
    v27 = *(a3 + 21);
    if (v27)
    {
      v28 = *(a3 + 9);
      if (v14)
      {
        v29 = 8 * v27;
        do
        {
          v30 = *v28;
          v31 = *(this + 20);
          v32 = (4 * *(this + 26));
          if (__CFADD__(v31, v32))
          {
            v33 = 0xFFFFFFFFLL;
          }

          else
          {
            v33 = (v31 + v32);
          }

          v34 = this[9];
          if ((v34 || (v34 = this[8]) != 0) && (v34[1].i8[0] & 4) == 0)
          {
            v35 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 8));
            if (v35)
            {
              v36 = v32 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (!v36)
            {
              memset_pattern16(v35, aIneStateTLTAne, 2 * v32);
            }
          }

          else
          {
            v37 = MEMORY[0x22AA68210](this + 8, v33);
            if (v37)
            {
              v38 = v32 == 0;
            }

            else
            {
              v38 = 1;
            }

            if (!v38)
            {
              memset(v37, 32, v32);
            }
          }

          ((*this)[13].i64[1])(this, v30);
          WTF::StringBuilder::append();
          ++v28;
          v29 -= 8;
        }

        while (v29);
      }

      else
      {
        v39 = 8 * v27;
        do
        {
          v40 = *v28;
          v41 = *(this + 20);
          v42 = (4 * *(this + 26));
          if (__CFADD__(v41, v42))
          {
            v43 = 0xFFFFFFFFLL;
          }

          else
          {
            v43 = (v41 + v42);
          }

          v44 = this[9];
          if ((v44 || (v44 = this[8]) != 0) && (v44[1].i8[0] & 4) == 0)
          {
            v45 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 8));
            if (v45)
            {
              v46 = v42 == 0;
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              memset_pattern16(v45, aIneStateTLTAne, 2 * v42);
            }
          }

          else
          {
            v47 = MEMORY[0x22AA68210](this + 8, v43);
            if (v47)
            {
              v48 = v42 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (!v48)
            {
              memset(v47, 32, v42);
            }
          }

          WGSL::Metal::FunctionDefinitionWriter::visit(this, v18, v40);
          WTF::StringBuilder::append();
          ++v28;
          v39 -= 8;
        }

        while (v39);
      }
    }

    v49 = *(this + 26) - 1;
    *(this + 26) = v49;
    v80 = v49;
    v79[0] = "})";
    v79[1] = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 8), &v80, v79);
    return;
  }

LABEL_19:
  v19 = *(a3 + 8);
  if ((*(*v19 + 16))(v19) == 21)
  {
    v22 = v19[11];
    v23 = 0x100000000;
    v78 = a2;
    if (v22)
    {
      v24 = *(v22 + 8);
      v23 = *(v22 + 4) | (((*(v22 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v24 = 0;
    }

    v50 = &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::builtinMappings;
    v51 = 44;
    do
    {
      v52 = &v50[3 * (v51 >> 1)];
      v53 = WTF::codePointCompare();
      if (v53 >= 0)
      {
        v51 >>= 1;
      }

      else
      {
        v51 += ~(v51 >> 1);
      }

      if (v53 < 0)
      {
        v50 = v52 + 3;
      }
    }

    while (v51);
    if (v50 != &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::directMappings)
    {
      if (WTF::operator==(v24, v23, *v50, v50[1]))
      {
        v54 = v50[2];
        if (v54)
        {

          (v54)(this, a3);
          return;
        }
      }
    }

    if (*(a3 + 88) != 1)
    {
      v57 = v19[11];
      v58 = 0x100000000;
      if (v57)
      {
        v59 = *(v57 + 8);
        v58 = *(v57 + 4) | (((*(v57 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v59 = 0;
      }

      v64 = &WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::directMappings;
      v65 = 41;
      do
      {
        v66 = &v64[3 * (v65 >> 1)];
        v68 = WTF::codePointCompare();
        if (v68 >= 0)
        {
          v65 >>= 1;
        }

        else
        {
          v65 += ~(v65 >> 1);
        }

        if (v68 < 0)
        {
          v64 = v66 + 3;
        }
      }

      while (v65);
      {
        (v69)(this + 5);
        WTF::StringBuilder::append();
      }

      else if (*(this + 20) || this[9])
      {
        v70 = v19[11];
        if (!v70 || (*(v70 + 16) & 4) != 0)
        {
          WTF::StringBuilder::append();
        }

        else
        {
          WTF::StringBuilder::append();
        }
      }

      else
      {
        v75 = v19[11];
        if (v75)
        {
          atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
        }

        v76 = this[8];
        this[8] = v75;
        if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v67);
        }

        v77 = v19[11];
        if (v77)
        {
          LODWORD(v77) = *(v77 + 4);
        }

        *(this + 20) = v77;
      }

      goto LABEL_88;
    }

    v55 = *(a3 + 3);
    v26 = v78;
    if (!v55)
    {
      goto LABEL_86;
    }

    v56 = v55[48];
    if (v56 == 10)
    {
      v55 = *(v55 + 1);
      if (!v55)
      {
        goto LABEL_86;
      }

      v56 = v55[48];
    }

    if (v56 == 1)
    {
      v55 = *v55;
      if (!v55)
      {
        goto LABEL_86;
      }

      v56 = v55[48];
    }

    if (v56)
    {
      goto LABEL_86;
    }

    if (*v55 - 1 > 1)
    {
      goto LABEL_86;
    }

    if (*(a3 + 21) != 1)
    {
      goto LABEL_86;
    }

    v71 = *(**(a3 + 9) + 24);
    if (!v71)
    {
      goto LABEL_86;
    }

    v72 = v71[48];
    if (v72 == 10)
    {
      v71 = *(v71 + 1);
      if (!v71)
      {
        goto LABEL_86;
      }

      v72 = v71[48];
    }

    if (v72 != 1)
    {
LABEL_126:
      if (!v72 && *v71 - 3 <= 2)
      {
        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(this, v78, 0, v73, v74);
        WTF::StringBuilder::append();
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    v71 = *v71;
    if (v71)
    {
      v72 = v71[48];
      goto LABEL_126;
    }

LABEL_86:
    v25 = this;
    goto LABEL_87;
  }

  v25 = this;
  v26 = a2;
LABEL_87:
  WGSL::Metal::FunctionDefinitionWriter::visit(v25, v26, 0, v20, v21);
LABEL_88:

  WGSL::Metal::visitArguments(this, a3, 0);
}

uint64_t WGSL::Metal::emitDynamicOffset(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(*(a2 + 8) + 24);
  if (*(v3 + 48) != 11)
  {
    mpark::throw_bad_variant_access(this);
  }

  v6 = *v3;
  v7 = "device";
  v8 = "constant";
  v9 = 9;
  v10 = "threadgroup";
  v11 = 12;
  if (v6 != 5)
  {
    v10 = 0;
    v11 = 0;
  }

  if (v6 != 4)
  {
    v8 = v10;
    v9 = v11;
  }

  if (v6 == 3)
  {
    v12 = 7;
  }

  else
  {
    v7 = v8;
    v12 = v9;
  }

  if (*v3)
  {
    v13 = v6 == 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = "thread";
  v15 = 7;
  if (!v13)
  {
    v14 = 0;
    v15 = 0;
  }

  if (*v3 <= 2u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7;
  }

  if (*v3 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, v3, 0, v18, v19);
  v24[0] = ")(((";
  v24[1] = 4;
  v20 = (v17 - 1);
  if (!v17)
  {
    v20 = 0;
  }

  v23[0] = v16;
  v23[1] = v20;
  v22[0] = " uint8_t*)&(";
  v22[1] = 12;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v24, v23, v22);
  if (!*(a2 + 21) || ((*(*this + 216))(this, **(a2 + 9)), WTF::StringBuilder::append(), *(a2 + 21) <= 1u))
  {
    __break(0xC471u);
    JUMPOUT(0x225755038);
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicAdd(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_add_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicAnd(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_and_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicExchange(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_exchange_explicit";
  v14[1] = 24;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicLoad(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 42) >= 9u)
  {
    WTF::StringBuilder::append();
  }

  v14[0] = "atomic_load_explicit";
  v14[1] = 20;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  result = WTF::StringBuilder::append();
  if (*(this + 42) >= 9u)
  {

    return WTF::StringBuilder::append();
  }

  return result;
}

uint64_t WGSL::Metal::emitAtomicMax(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_max_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicMin(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_min_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicOr(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_or_explicit";
  v14[1] = 24;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicStore(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_store_explicit";
  v14[1] = 21;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicSub(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_sub_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::emitAtomicXor(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = "atomic_fetch_xor_explicit";
  v14[1] = 25;
  v13 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v14, &v13);
  v7 = *(a2 + 21);
  if (v7)
  {
    v8 = *(a2 + 9);
    (*(*this + 216))(this, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = *v9++;
        WTF::StringBuilder::append();
        (*(*this + 216))(this, v11);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return WTF::StringBuilder::append();
}

WTF::StringImpl *WGSL::Metal::emitDegrees(int8x16_t **this, const WGSL::Type **a2, WGSL::AST::CallExpression *a3)
{
  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, a2[3], 0, v5, v6);
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    v8 = ((*this)[13].i64[1])(this, *a2[9]);
    WTF::String::number(&v10, v8, 57.2957795);
    v13[0] = " * ";
    v13[1] = 3;
    v12 = v10;
    v11 = 41;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 8), v13, &v12, &v11);
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitDistance(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    goto LABEL_17;
  }

  if (*(*(**(a2 + 9) + 24) + 48))
  {
    (*(*this + 216))(this, *(a2 + 8), a3);

    return WGSL::Metal::visitArguments(this, a2, 0);
  }

  WTF::StringBuilder::append();
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    JUMPOUT(0x225755EC8);
  }

  (*(*this + 216))(this, **(a2 + 9));
  WTF::StringBuilder::append();
  if (*(a2 + 21) <= 1u)
  {
LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x225755EC0);
  }

  result = (*(*this + 216))(this, *(*(a2 + 9) + 8));
  v6 = *(this + 9);
  if (!v6)
  {
    return WTF::StringBuilder::append();
  }

  v7 = *(this + 20);
  if (v7 >= *(v6 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v8 = *(v6 + 16);
  v9 = *(v6 + 8);
  *(this + 20) = v7 + 1;
  if ((v8 & 4) != 0)
  {
    *(v9 + v7) = 41;
  }

  else
  {
    *(v9 + 2 * v7) = 41;
  }

  return result;
}

WGSL::Metal *WGSL::Metal::emitLength(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    v3 = this;
    WTF::StringBuilder::append();

    return WGSL::Metal::visitArguments(v3, a2, 0);
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitPack2x16Float(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xI8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xI8Clamp(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xU8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitPack4xU8Clamp(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

char *WGSL::Metal::emitQuantizeToF16(char *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    goto LABEL_178;
  }

  v3 = this;
  v4 = **(a2 + 9);
  v5 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
  v6 = *(v4 + 24);
  if (v6 && *(v6 + 48) == 1)
  {
    WTF::String::number(&v146, *(v6 + 8));
    v8 = v146;
    v146 = 0;
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(MEMORY[0x277CD4668], v7);
      v10 = v146;
      v146 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }
    }

    v11 = v3 + 64;
    v12 = *(v3 + 20);
    if (!v8)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = this + 64;
    v12 = *(this + 20);
    v8 = MEMORY[0x277CD4668];
  }

  v14 = 0;
  v13 = *(v8 + 1);
LABEL_12:
  v15 = v13 + 6;
  if (v13 >= 0xFFFFFFFA)
  {
    v15 = -1;
  }

  v49 = __CFADD__(v13, v15);
  v16 = v13 + v15;
  if (v49)
  {
    v16 = -1;
  }

  v49 = __CFADD__(v16, 5);
  v17 = v16 + 5;
  if (v49)
  {
    v17 = -1;
  }

  v49 = __CFADD__(v12, v17);
  v18 = v12 + v17;
  if (v49)
  {
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 1);
  if ((v20 || (v20 = *v11) != 0) && (*(v20 + 16) & 4) == 0 || (v14 & 1) == 0 && (*(v8 + 16) & 4) == 0)
  {
    this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(v11);
    if (!this)
    {
      goto LABEL_137;
    }

    *this = 0x61006F006C0066;
    *(this + 4) = 116;
    if (v21 <= 4)
    {
      goto LABEL_178;
    }

    v22 = this + 10;
    v23 = v21 - 5;
    if (v14)
    {
      v24 = 0;
      goto LABEL_81;
    }

    v31 = *(v8 + 1);
    v32 = *(v8 + 1);
    if ((*(v8 + 16) & 4) == 0)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          *v22 = v31->i16[0];
        }

        else
        {
          v62 = this;
          memcpy(this + 10, v31, 2 * v32);
          this = v62;
        }
      }

LABEL_80:
      v24 = *(v8 + 1);
      if (v23 < v24)
      {
        goto LABEL_178;
      }

LABEL_81:
      v63 = &v22[2 * v24];
      *v63 = 0x6C006100680028;
      *(v63 + 4) = 102;
      if (v23 - v24 <= 4)
      {
        goto LABEL_178;
      }

      v64 = v63 + 10;
      v65 = v23 - v24 - 5;
      if (v14)
      {
        v66 = 0;
LABEL_107:
        if (v65 != v66)
        {
          v64[v66] = 40;
          goto LABEL_137;
        }

LABEL_178:
        __break(1u);
        return this;
      }

      v67 = *(v8 + 1);
      v68 = *(v8 + 1);
      if ((*(v8 + 16) & 4) == 0)
      {
        if (v68)
        {
          if (v68 == 1)
          {
            *v64 = v67->i16[0];
          }

          else
          {
            this = memcpy(v64, v67, 2 * v68);
          }
        }

LABEL_106:
        v66 = *(v8 + 1);
        if (v65 < v66)
        {
          goto LABEL_178;
        }

        goto LABEL_107;
      }

      v69 = &v64[v68];
      if (v68 < 0x40)
      {
        v70 = v64;
      }

      else
      {
        v70 = &v64[v68 & 0xFFFFFFC0];
        v71 = 0uLL;
        v72 = v64;
        do
        {
          v148.val[0] = *v67;
          v73 = v67[1];
          v150.val[0] = v67[2];
          v74 = v67[3];
          v67 += 4;
          v75 = v74;
          v150.val[1] = 0uLL;
          v152.val[0] = v73;
          v148.val[1] = 0uLL;
          v76 = v72;
          vst2q_s8(v76, v148);
          v76 += 32;
          v152.val[1] = 0uLL;
          vst2q_s8(v76, v152);
          v77 = v72 + 64;
          vst2q_s8(v77, v150);
          v78 = v72 + 96;
          vst2q_s8(v78, *(&v71 - 1));
          v72 += 128;
        }

        while (v72 != v70);
      }

      if (v70 == v69)
      {
        goto LABEL_106;
      }

      v79 = &this[2 * v24 + 2 * v68 - v70 + 18];
      if (v79 < 0xE || (v70 < v67->u64 + (v79 >> 1) + 1 ? (v80 = v67 >= (v79 & 0xFFFFFFFFFFFFFFFELL) + v70 + 2) : (v80 = 1), !v80))
      {
        v83 = v67;
        v84 = v70;
        goto LABEL_103;
      }

      v81 = (v79 >> 1) + 1;
      if (v79 >= 0x3E)
      {
        v82 = v81 & 0xFFFFFFFFFFFFFFE0;
        v114 = (v70 + 32);
        v115 = &v67[1];
        v116 = v81 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v117 = *v115[-2].i8;
          v118 = vmovl_u8(*v115);
          v119 = vmovl_high_u8(*v115->i8);
          v114[-2] = vmovl_u8(*v117.i8);
          v114[-1] = vmovl_high_u8(v117);
          *v114 = v118;
          v114[1] = v119;
          v114 += 4;
          v115 += 4;
          v116 -= 32;
        }

        while (v116);
        if (v81 == v82)
        {
          goto LABEL_106;
        }

        if ((v81 & 0x18) == 0)
        {
          v84 = (v70 + 2 * v82);
          v83 = (v67 + v82);
          goto LABEL_103;
        }
      }

      else
      {
        v82 = 0;
      }

      v83 = (v67 + (v81 & 0xFFFFFFFFFFFFFFF8));
      v84 = (v70 + 2 * (v81 & 0xFFFFFFFFFFFFFFF8));
      v120 = (v70 + 2 * v82);
      v121 = &v67->i8[v82];
      v122 = v82 - (v81 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v123 = *v121++;
        *v120++ = vmovl_u8(v123);
        v122 += 8;
      }

      while (v122);
      if (v81 == (v81 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }

      do
      {
LABEL_103:
        v85 = v83->u8[0];
        v83 = (v83 + 1);
        *v84++ = v85;
      }

      while (v84 != v69);
      goto LABEL_106;
    }

    v38 = &v22[2 * v32];
    if (v32 < 0x40)
    {
      v39 = this + 10;
    }

    else
    {
      v39 = &v22[2 * (v32 & 0xFFFFFFC0)];
      v40 = 0uLL;
      v41 = this + 10;
      do
      {
        v147.val[0] = *v31;
        v42 = v31[1];
        v149.val[0] = v31[2];
        v43 = v31[3];
        v31 += 4;
        v44 = v43;
        v149.val[1] = 0uLL;
        v151.val[0] = v42;
        v147.val[1] = 0uLL;
        v45 = v41;
        vst2q_s8(v45, v147);
        v45 += 32;
        v151.val[1] = 0uLL;
        vst2q_s8(v45, v151);
        v46 = v41 + 64;
        vst2q_s8(v46, v149);
        v47 = v41 + 96;
        vst2q_s8(v47, *(&v40 - 1));
        v41 += 128;
      }

      while (v41 != v39);
    }

    if (v39 == v38)
    {
      goto LABEL_80;
    }

    v48 = &this[2 * v32] - v39 + 8;
    if (v48 < 0xE || (v39 < &v31->i8[(v48 >> 1) + 1] ? (v49 = v31 >= &v39[(v48 & 0xFFFFFFFFFFFFFFFELL) + 2]) : (v49 = 1), !v49))
    {
      v52 = v31;
      v53 = v39;
      goto LABEL_64;
    }

    v50 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      v51 = v50 & 0xFFFFFFFFFFFFFFE0;
      v104 = (v39 + 32);
      v105 = &v31[1];
      v106 = v50 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v107 = *v105[-2].i8;
        v108 = vmovl_u8(*v105);
        v109 = vmovl_high_u8(*v105->i8);
        v104[-2] = vmovl_u8(*v107.i8);
        v104[-1] = vmovl_high_u8(v107);
        *v104 = v108;
        v104[1] = v109;
        v104 += 4;
        v105 += 4;
        v106 -= 32;
      }

      while (v106);
      if (v50 == v51)
      {
        goto LABEL_80;
      }

      if ((v50 & 0x18) == 0)
      {
        v53 = &v39[2 * v51];
        v52 = (v31 + v51);
        goto LABEL_64;
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = (v31 + (v50 & 0xFFFFFFFFFFFFFFF8));
    v53 = &v39[2 * (v50 & 0xFFFFFFFFFFFFFFF8)];
    v110 = &v39[2 * v51];
    v111 = &v31->i8[v51];
    v112 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v113 = *v111++;
      *v110++ = vmovl_u8(v113);
      v112 += 8;
    }

    while (v112);
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_80;
    }

    do
    {
LABEL_64:
      v54 = v52->u8[0];
      v52 = (v52 + 1);
      *v53 = v54;
      v53 += 2;
    }

    while (v53 != v38);
    goto LABEL_80;
  }

  this = MEMORY[0x22AA68210](v11, v19);
  if (!this)
  {
    goto LABEL_137;
  }

  this[4] = 116;
  *this = 1634692198;
  if (v25 <= 4)
  {
    goto LABEL_178;
  }

  v26 = v25 - 5;
  v27 = this + 5;
  if ((v14 & 1) == 0)
  {
    v33 = *(v8 + 1);
    v34 = *(v8 + 1);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          *v27 = *v33;
        }

        else
        {
          v86 = this;
          memcpy(this + 5, v33, v34);
          this = v86;
        }
      }
    }

    else
    {
      v35 = &v27[v34];
      if (v34 < 0x10)
      {
        v36 = (this + 5);
      }

      else
      {
        v36 = (this + 5);
        do
        {
          v37 = vld2q_s8(v33);
          v33 += 32;
          *v36++ = v37;
        }

        while (v36 != &v27[v34 & 0xFFFFFFF0]);
      }

      if (v36 != v35)
      {
        v55 = &this[v34];
        v56 = &this[v34] - v36 + 5;
        if (v56 < 4 || (v36 < &v33[2 * v55 + 10 + -2 * v36] ? (v57 = v33 >= v55 + 5) : (v57 = 1), !v57))
        {
          v59 = v36;
          v60 = v33;
          goto LABEL_77;
        }

        if (v56 >= 0x20)
        {
          v58 = v56 & 0xFFFFFFFFFFFFFFE0;
          v124 = (v33 + 32);
          v125 = v36 + 1;
          v126 = v56 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v128 = v124[-2];
            v127 = v124[-1];
            v130 = *v124;
            v129 = v124[1];
            v124 += 4;
            v125[-1] = vuzp1q_s8(v128, v127);
            *v125 = vuzp1q_s8(v130, v129);
            v125 += 2;
            v126 -= 32;
          }

          while (v126);
          if (v56 == v58)
          {
            goto LABEL_110;
          }

          if ((v56 & 0x1C) == 0)
          {
            v60 = &v33[2 * v58];
            v59 = &v36->i8[v58];
            do
            {
LABEL_77:
              v61 = *v60;
              v60 += 2;
              *v59++ = v61;
            }

            while (v59 != v35);
            goto LABEL_110;
          }
        }

        else
        {
          v58 = 0;
        }

        v59 = &v36->i8[v56 & 0xFFFFFFFFFFFFFFFCLL];
        v60 = &v33[2 * (v56 & 0xFFFFFFFFFFFFFFFCLL)];
        v131 = &v33[2 * v58];
        v132 = &v36->i8[v58];
        v133 = v58 - (v56 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v134 = *v131++;
          *v132 = vuzp1_s8(v134, v134).u32[0];
          v132 += 4;
          v133 += 4;
        }

        while (v133);
        if (v56 != (v56 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_77;
        }
      }
    }

LABEL_110:
    v87 = *(v8 + 1);
    v88 = v26 - v87;
    if (v26 < v87)
    {
      goto LABEL_178;
    }

    v89 = &v27[v87];
    v89[4] = 102;
    *v89 = 1818322984;
    v29 = v88 - 5;
    if (v88 < 5)
    {
      goto LABEL_178;
    }

    v30 = v89 + 5;
    v90 = *(v8 + 1);
    v91 = *(v8 + 1);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v91)
      {
        if (v91 == 1)
        {
          *v30 = *v90;
        }

        else
        {
          this = memcpy(v89 + 5, v90, v91);
        }
      }
    }

    else
    {
      v92 = &v30[v91];
      if (v91 < 0x10)
      {
        v93 = (v89 + 5);
      }

      else
      {
        v93 = (v89 + 5);
        do
        {
          v94 = vld2q_s8(v90);
          v90 += 32;
          *v93 = v94;
          v93 += 16;
        }

        while (v93 != &v30[v91 & 0xFFFFFFF0]);
      }

      if (v93 != v92)
      {
        v95 = &this[v87 + v91];
        v96 = &v95[-v93 + 10];
        if (v96 < 4 || ((v97 = &this[v91 + 10 + v87], v93 < &v90[2 * v95 + 20 + -2 * v93]) ? (v98 = v90 >= v97) : (v98 = 1), !v98))
        {
          v100 = v93;
          v101 = v90;
          goto LABEL_131;
        }

        if (v96 >= 0x20)
        {
          v99 = v96 & 0xFFFFFFFFFFFFFFE0;
          v135 = (v90 + 32);
          v136 = (v93 + 16);
          v137 = v96 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v139 = v135[-2];
            v138 = v135[-1];
            v141 = *v135;
            v140 = v135[1];
            v135 += 4;
            v136[-1] = vuzp1q_s8(v139, v138);
            *v136 = vuzp1q_s8(v141, v140);
            v136 += 2;
            v137 -= 32;
          }

          while (v137);
          if (v96 == v99)
          {
            goto LABEL_134;
          }

          if ((v96 & 0x1C) == 0)
          {
            v101 = &v90[2 * v99];
            v100 = (v93 + v99);
            do
            {
LABEL_131:
              v102 = *v101;
              v101 += 2;
              *v100++ = v102;
            }

            while (v100 != v92);
            goto LABEL_134;
          }
        }

        else
        {
          v99 = 0;
        }

        v100 = (v93 + (v96 & 0xFFFFFFFFFFFFFFFCLL));
        v101 = &v90[2 * (v96 & 0xFFFFFFFFFFFFFFFCLL)];
        v142 = &v90[2 * v99];
        v143 = (v93 + v99);
        v144 = v99 - (v96 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v145 = *v142++;
          *v143++ = vuzp1_s8(v145, v145).u32[0];
          v144 += 4;
        }

        while (v144);
        if (v96 != (v96 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_131;
        }
      }
    }

LABEL_134:
    v28 = *(v8 + 1);
    if (v29 < v28)
    {
      goto LABEL_178;
    }

    goto LABEL_135;
  }

  this[9] = 102;
  *v27 = 1818322984;
  if (v26 < 5)
  {
    goto LABEL_178;
  }

  v28 = 0;
  v29 = v25 - 10;
  v30 = this + 10;
LABEL_135:
  if (v29 == v28)
  {
    goto LABEL_178;
  }

  v30[v28] = 40;
LABEL_137:
  (*(*v3 + 216))(v3, v4);
  this = WTF::StringBuilder::append();
  if ((v14 & 1) == 0 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v8, v103);
  }

  return this;
}