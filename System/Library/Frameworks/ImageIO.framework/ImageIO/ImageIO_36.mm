void _APP1XMP::_APP1XMP(_APP1XMP *this, const __CFData *a2)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB7B0;
  *(this + 96) = 1;
  *(this + 7) = 236126177;
  *(this + 8) = 0x10000000000;
  *(this + 10) = 0;
  *(this + 11) = 0;
  _APP1XMP::setXMPData(this, a2);
}

void *_APP1XMP::setXMPData(void *this, CFDataRef theData)
{
  if (theData)
  {
    v3 = this;
    *(this + 15) = CFDataGetLength(theData) + 33;
    v3[10] = theData;
    this = CFRetain(theData);
    *(v3 + 96) = 1;
  }

  return this;
}

CFDataRef _APP1XMP::processData(CFDataRef this)
{
  v1 = *(this + 15);
  if (v1 >= 4)
  {
    v2 = this;
    v3 = (*(this + 5) + *(this + 2));
    if (__PAIR64__(v3[1], *v3) == 0xE1000000FFLL && v1 >= 0x21 && *(v3 + 4) == 0x6E2F2F3A70747468 && *(v3 + 12) == 0x2E65626F64612E73 && *(v3 + 20) == 0x2F7061782F6D6F63 && *(v3 + 25) == 0x2F302E312F7061)
    {
      v7 = __rev16(*(v3 + 1)) - 31;
      *(this + 11) = CreateMetadataFromXMPBuffer(v3 + 33, v7);
      this = CFDataCreate(*MEMORY[0x1E695E480], v3 + 33, v7);
      *(v2 + 10) = this;
    }
  }

  return this;
}

void _APP1XMP::~_APP1XMP(_APP1XMP *this)
{
  *this = &unk_1EF4DB7B0;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 11) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP1XMP::~_APP1XMP(this);

  JUMPOUT(0x186602850);
}

CFIndex _APP1XMP::writeToStream(CFDataRef *this, __CFWriteStream *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 96) == 1 && (v4 = this[10]) != 0)
  {
    v8 = xmmword_1862251F4;
    strcpy(v9, "obe.com/xap/1.0/");
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(this[10]);
    WORD1(v8) = bswap32(Length + 31) >> 16;
    CFWriteStreamWrite(a2, &v8, 33);
  }

  else
  {
    BytePtr = this[2] + this[5];
    Length = *(this + 15);
  }

  return CFWriteStreamWrite(a2, BytePtr, Length);
}

void _APP1ExtendedXMP::_APP1ExtendedXMP(_APP1ExtendedXMP *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB840;
  *(v7 + 68) = 0;
  *(v7 + 70) = 1;
  *(v7 + 58) |= 3u;
  *(v7 + 112) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
}

void _APP1ExtendedXMP::_APP1ExtendedXMP(_APP1ExtendedXMP *this, CFDataRef theData, int a3, int a4, CFTypeRef cf)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB840;
  *(this + 112) = 1;
  *(this + 7) = 236191713;
  *(this + 8) = 0x1000000000000;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(this + 26) = a3;
  *(this + 27) = a4;
  _APP1ExtendedXMP::setXMPData(this, theData);
}

void *_APP1ExtendedXMP::setXMPData(void *this, CFDataRef theData)
{
  if (theData)
  {
    v3 = this;
    *(this + 15) = CFDataGetLength(theData) + 79;
    v3[10] = theData;
    this = CFRetain(theData);
    *(v3 + 112) = 1;
  }

  return this;
}

CFDataRef _APP1ExtendedXMP::processData(CFDataRef this)
{
  v1 = *(this + 15);
  if (v1 >= 4)
  {
    v2 = this;
    v3 = (*(this + 5) + *(this + 2));
    if (*v3 == 255 && v1 >= 0x27 && v3[1] == 225)
    {
      this = strcmp(v3 + 4, "http://ns.adobe.com/xmp/extension/");
      if (v1 >= 0x47 && !this)
      {
        v4 = *MEMORY[0x1E695E480];
        this = CFDataCreate(*MEMORY[0x1E695E480], v3 + 39, 32);
        *(v2 + 12) = this;
        v5 = *(v2 + 15);
        if (v5 >= 0x4F)
        {
          *(v2 + 27) = bswap32(*(v3 + 71));
          *(v2 + 26) = bswap32(*(v3 + 75));
          this = CFDataCreate(v4, v3 + 79, v5 - 79);
          *(v2 + 10) = this;
        }
      }
    }
  }

  return this;
}

void _APP1ExtendedXMP::~_APP1ExtendedXMP(_APP1ExtendedXMP *this)
{
  *this = &unk_1EF4DB840;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 11) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 12) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP1ExtendedXMP::~_APP1ExtendedXMP(this);

  JUMPOUT(0x186602850);
}

CFIndex _APP1ExtendedXMP::writeToStream(_APP1ExtendedXMP *this, __CFWriteStream *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 112) == 1 && (v4 = *(this + 10)) != 0)
  {
    v10 = xmmword_186225239;
    strcpy(v11, "obe.com/xmp/extension/");
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(*(this + 10));
    WORD1(v10) = bswap32(Length + 77) >> 16;
    v7 = CFDataGetBytePtr(*(this + 12));
    v8 = *(v7 + 1);
    *&v11[23] = *v7;
    *&v11[39] = v8;
    v12 = vrev64_s32(vrev32_s8(*(this + 104)));
    CFWriteStreamWrite(a2, &v10, 79);
  }

  else
  {
    BytePtr = (*(this + 5) + *(this + 2));
    Length = *(this + 15);
  }

  return CFWriteStreamWrite(a2, BytePtr, Length);
}

void _APP2ICC::_APP2ICC(_APP2ICC *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB8D0;
  *(v7 + 90) = 0;
  *(v7 + 80) = 0;
  *(v7 + 71) = 1;
  *(v7 + 88) = 0;
}

void _APP2ICC::_APP2ICC(_APP2ICC *this, CFDataRef theData, char a3, char a4)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 237043682;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB8D0;
  Length = CFDataGetLength(theData);
  *(this + 10) = CFRetain(theData);
  *(this + 71) = 1;
  *(this + 88) = a3;
  *(this + 89) = a4;
  *(this + 15) = Length + 18;
  *(this + 90) = 1;
}

void _APP2ICC::~_APP2ICC(_APP2ICC *this)
{
  *this = &unk_1EF4DB8D0;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1EF4DB368;
}

{
  _APP2ICC::~_APP2ICC(this);

  JUMPOUT(0x186602850);
}

uint64_t _APP2ICC::writeToStream(uint64_t this, CFWriteStreamRef stream)
{
  v3 = this;
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 90) == 1 && *(this + 80))
  {
    v9 = xmmword_186225288;
    WORD1(v9) = bswap32(*(this + 60) - 2) >> 16;
    v10 = *(this + 88);
    CFWriteStreamWrite(stream, &v9, 18);
    BytePtr = CFDataGetBytePtr(*(v3 + 80));
    Length = CFDataGetLength(*(v3 + 80));
    return CFWriteStreamWrite(stream, BytePtr, Length);
  }

  else
  {
    v6 = *(this + 40);
    if (v6)
    {
      v7 = *(this + 60);
      v8 = (v6 + *(this + 16));

      return CFWriteStreamWrite(stream, v8, v7);
    }
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,false>(uint64_t result, _TAG **a2, uint64_t a3, int a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
LABEL_3:
    v211 = a4;
    while (1)
    {
      v7 = v9;
      v10 = a2 - v9;
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:

            return std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v8);
          case 4:

            return std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v9 + 2, v8);
          case 5:

            return std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
        }
      }

      else
      {
        if (v10 < 2)
        {
          return result;
        }

        if (v10 == 2)
        {
          v88 = *(a2 - 1);
          v89 = *v9;
          v90 = _TAG::priority(v88);
          result = _TAG::priority(v89);
          if (v90 > result || v90 >= result && ((v185 = *(v88 + 17), v185 <= 4) ? (v186 = 0) : (v186 = (v185 + 1) & 0xFFFFFFFE), (v187 = *(v89 + 17), v187 >= 5) ? (v188 = ((v187 + 1) & 0xFFFFFFFE) > v186) : (v188 = 0), v188))
          {
            *v9 = v88;
            *(a2 - 1) = v89;
          }

          return result;
        }
      }

      v210 = v9;
      if (v10 <= 23)
      {
        v91 = v9 + 1;
        v92 = v7 == a2 || v91 == a2;
        v93 = v92;
        if (a4)
        {
          if ((v93 & 1) == 0)
          {
            v94 = 0;
            v95 = v7;
            do
            {
              v96 = v95;
              v95 = v91;
              v98 = *v96;
              v97 = v96[1];
              v99 = _TAG::priority(v97);
              result = _TAG::priority(v98);
              if (v99 > result || v99 >= result && ((v108 = *(v97 + 17), v108 <= 4) ? (v109 = 0) : (v109 = (v108 + 1) & 0xFFFFFFFE), (v110 = *(v98 + 17), v110 >= 5) ? (v111 = ((v110 + 1) & 0xFFFFFFFE) > v109) : (v111 = 0), v111))
              {
                v96[1] = v98;
                v100 = v7;
                if (v96 != v7)
                {
                  v101 = v94;
                  do
                  {
                    v102 = *(v210 + v101 - 8);
                    v103 = _TAG::priority(v97);
                    result = _TAG::priority(v102);
                    if (v103 <= result)
                    {
                      if (v103 < result)
                      {
                        v100 = (v210 + v101);
                        v7 = v210;
                        goto LABEL_238;
                      }

                      v104 = *(v97 + 17);
                      v105 = v104 <= 4 ? 0 : (v104 + 1) & 0xFFFFFFFE;
                      v106 = *(v102 + 17);
                      if (v106 < 5 || ((v106 + 1) & 0xFFFFFFFE) <= v105)
                      {
                        v100 = v96;
                        v7 = v210;
                        goto LABEL_238;
                      }
                    }

                    --v96;
                    *(v210 + v101) = v102;
                    v101 -= 8;
                  }

                  while (v101);
                  v7 = v210;
                  v100 = v210;
                }

LABEL_238:
                *v100 = v97;
              }

              ++v91;
              v94 += 8;
            }

            while (v95 + 1 != a2);
          }
        }

        else if ((v93 & 1) == 0)
        {
          v189 = 0;
          v190 = -8;
          v191 = 8;
          v192 = v7;
          do
          {
            v193 = *(v7 + v189);
            v189 = v191;
            v194 = *v91;
            v195 = _TAG::priority(*v91);
            result = _TAG::priority(v193);
            if (v195 > result || v195 >= result && ((v204 = *(v194 + 17), v204 <= 4) ? (v205 = 0) : (v205 = (v204 + 1) & 0xFFFFFFFE), (v206 = *(v193 + 17), v206 >= 5) ? (v207 = ((v206 + 1) & 0xFFFFFFFE) > v205) : (v207 = 0), v207))
            {
              *v91 = v193;
              v196 = v190;
              v197 = v192;
              while (1)
              {
                v198 = *(v197 - 1);
                v199 = _TAG::priority(v194);
                result = _TAG::priority(v198);
                if (v199 <= result)
                {
                  if (v199 < result)
                  {
                    break;
                  }

                  v200 = *(v194 + 17);
                  v201 = v200 <= 4 ? 0 : (v200 + 1) & 0xFFFFFFFE;
                  v202 = *(v198 + 17);
                  if (v202 < 5 || ((v202 + 1) & 0xFFFFFFFE) <= v201)
                  {
                    break;
                  }
                }

                *v197-- = v198;
                v196 += 8;
                if (!v196)
                {
                  goto LABEL_368;
                }
              }

              *v197 = v194;
              v7 = v210;
            }

            v191 = v189 + 8;
            v91 = (v7 + v189 + 8);
            ++v192;
            v190 -= 8;
          }

          while (v91 != a2);
        }

        return result;
      }

      if (!a3)
      {
        if (v9 != a2)
        {
          v112 = (v10 - 2) >> 1;
          v113 = v112;
          v212 = v112;
          v215 = a2 - v9;
          do
          {
            v114 = v113;
            if (v112 >= v113)
            {
              v115 = (2 * v113) | 1;
              v116 = &v7[v115];
              if (2 * v113 + 2 < v10)
              {
                v117 = *v116;
                v118 = v116[1];
                v119 = _TAG::priority(*v116);
                v120 = _TAG::priority(v118);
                if (v119 > v120 || v119 >= v120 && ((v121 = *(v117 + 17), v121 <= 4) ? (v122 = 0) : (v122 = (v121 + 1) & 0xFFFFFFFE), (v123 = *(v118 + 17), v123 >= 5) ? (v124 = ((v123 + 1) & 0xFFFFFFFE) > v122) : (v124 = 0), v124))
                {
                  ++v116;
                  v115 = 2 * v114 + 2;
                }
              }

              v125 = *v116;
              v7 = v210;
              v126 = v210[v114];
              v127 = _TAG::priority(*v116);
              result = _TAG::priority(v126);
              v112 = v212;
              v10 = v215;
              if (v127 <= result)
              {
                if (v127 < result || ((v128 = *(v125 + 17), v128 <= 4) ? (v129 = 0) : (v129 = (v128 + 1) & 0xFFFFFFFE), (v130 = *(v126 + 17), v130 >= 5) ? (v131 = ((v130 + 1) & 0xFFFFFFFE) > v129) : (v131 = 0), !v131))
                {
                  v208 = v114;
                  v210[v114] = v125;
                  while (v112 >= v115)
                  {
                    v132 = v116;
                    v133 = 2 * v115;
                    v115 = (2 * v115) | 1;
                    v116 = &v7[v115];
                    v134 = v133 + 2;
                    if (v133 + 2 < v10)
                    {
                      v135 = *v116;
                      v136 = v116[1];
                      v137 = _TAG::priority(*v116);
                      v138 = _TAG::priority(v136);
                      v139 = v137 >= v138;
                      v27 = v137 > v138;
                      v112 = v212;
                      if (v27 || v139 && ((v140 = *(v135 + 17), v140 <= 4) ? (v141 = 0) : (v141 = (v140 + 1) & 0xFFFFFFFE), (v142 = *(v136 + 17), v142 >= 5) ? (v143 = ((v142 + 1) & 0xFFFFFFFE) > v141) : (v143 = 0), v143))
                      {
                        ++v116;
                        v115 = v134;
                      }
                    }

                    v144 = *v116;
                    v145 = _TAG::priority(*v116);
                    result = _TAG::priority(v126);
                    if (v145 > result)
                    {
                      v116 = v132;
                      v7 = v210;
                      v10 = v215;
                      break;
                    }

                    v7 = v210;
                    v10 = v215;
                    if (v145 >= result)
                    {
                      v146 = *(v144 + 17);
                      v147 = v146 <= 4 ? 0 : (v146 + 1) & 0xFFFFFFFE;
                      v148 = *(v126 + 17);
                      if (v148 >= 5 && ((v148 + 1) & 0xFFFFFFFE) > v147)
                      {
                        v116 = v132;
                        break;
                      }
                    }

                    *v132 = v144;
                  }

                  *v116 = v126;
                  v114 = v208;
                }
              }
            }

            v113 = v114 - 1;
          }

          while (v114);
          do
          {
            v153 = 0;
            v209 = *v7;
            v154 = (v10 - 2) >> 1;
            v155 = v7;
            do
            {
              v156 = v155;
              v157 = &v155[v153];
              v155 = v157 + 1;
              v158 = 2 * v153;
              v153 = (2 * v153) | 1;
              v159 = v158 + 2;
              if (v158 + 2 < v10)
              {
                v160 = v157 + 1;
                v162 = v157[2];
                v161 = v157 + 2;
                v213 = *(v161 - 1);
                v163 = a2;
                v164 = v10;
                v165 = _TAG::priority(v213);
                v216 = v162;
                v155 = v160;
                result = _TAG::priority(v162);
                v10 = v164;
                a2 = v163;
                if (v165 > result || v165 >= result && ((v166 = *(v213 + 17), v166 <= 4) ? (v167 = 0) : (v167 = (v166 + 1) & 0xFFFFFFFE), (v168 = *(v216 + 17), v168 >= 5) ? (v169 = ((v168 + 1) & 0xFFFFFFFE) > v167) : (v169 = 0), v169))
                {
                  v155 = v161;
                  v153 = v159;
                }
              }

              *v156 = *v155;
            }

            while (v153 <= v154);
            if (v155 == --a2)
            {
              *v155 = v209;
            }

            else
            {
              *v155 = *a2;
              *a2 = v209;
              v170 = (v155 - v210 + 8) >> 3;
              v171 = v170 - 2;
              if (v170 >= 2)
              {
                v172 = v171 >> 1;
                v173 = &v210[v171 >> 1];
                v174 = *v173;
                v175 = *v155;
                v176 = v10;
                v177 = _TAG::priority(*v173);
                result = _TAG::priority(v175);
                if (v177 > result || (v10 = v176, v177 >= result) && ((v149 = *(v174 + 17), v149 <= 4) ? (v150 = 0) : (v150 = (v149 + 1) & 0xFFFFFFFE), (v151 = *(v175 + 17), v151 >= 5) ? (v152 = ((v151 + 1) & 0xFFFFFFFE) > v150) : (v152 = 0), v152))
                {
                  *v155 = v174;
                  if (v171 >= 2)
                  {
                    while (1)
                    {
                      v179 = v172 - 1;
                      v172 = (v172 - 1) >> 1;
                      v178 = &v210[v172];
                      v180 = *v178;
                      v181 = _TAG::priority(*v178);
                      result = _TAG::priority(v175);
                      if (v181 <= result)
                      {
                        if (v181 < result)
                        {
                          break;
                        }

                        v182 = *(v180 + 17);
                        v183 = v182 <= 4 ? 0 : (v182 + 1) & 0xFFFFFFFE;
                        v184 = *(v175 + 17);
                        if (v184 < 5 || ((v184 + 1) & 0xFFFFFFFE) <= v183)
                        {
                          break;
                        }
                      }

                      *v173 = v180;
                      v173 = &v210[v172];
                      if (v179 <= 1)
                      {
                        goto LABEL_327;
                      }
                    }
                  }

                  v178 = v173;
LABEL_327:
                  *v178 = v175;
                  v10 = v176;
                }
              }
            }

            v27 = v10-- <= 2;
            v7 = v210;
          }

          while (!v27);
        }

        return result;
      }

      v11 = v10 >> 1;
      v12 = &v9[v10 >> 1];
      if (v10 < 0x81)
      {
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(&v9[v10 >> 1], v9, v8);
      }

      else
      {
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, &v9[v10 >> 1], v8);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9 + 1, v12 - 1, a2 - 2);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9 + 2, &v9[v11 + 1], a2 - 3);
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v12 - 1, v12, &v9[v11 + 1]);
        v13 = *v9;
        *v9 = *v12;
        *v12 = v13;
      }

      --a3;
      v14 = *v9;
      if ((a4 & 1) == 0)
      {
        v15 = *(v9 - 1);
        v16 = _TAG::priority(v15);
        result = _TAG::priority(v14);
        if (v16 <= result)
        {
          v17 = result;
          if (v16 < result || ((v18 = *(v15 + 17), v18 <= 4) ? (v19 = 0) : (v19 = (v18 + 1) & 0xFFFFFFFE), (v20 = *(v14 + 17), v20 < 5) || ((v20 + 1) & 0xFFFFFFFE) <= v19))
          {
            v56 = *v8;
            result = _TAG::priority(*v8);
            if (v17 > result || v17 >= result && ((v85 = *(v14 + 17), v85 <= 4) ? (v86 = 0) : (v86 = (v85 + 1) & 0xFFFFFFFE), (v87 = *(v56 + 17), v87 >= 5) && ((v87 + 1) & 0xFFFFFFFE) > v86))
            {
              for (++v9; v9 != a2; ++v9)
              {
                v57 = *v9;
                result = _TAG::priority(*v9);
                if (v17 > result)
                {
                  goto LABEL_136;
                }

                if (v17 >= result)
                {
                  v58 = *(v14 + 17);
                  v59 = v58 <= 4 ? 0 : (v58 + 1) & 0xFFFFFFFE;
                  v60 = *(v57 + 17);
                  if (v60 >= 5 && ((v60 + 1) & 0xFFFFFFFE) > v59)
                  {
                    goto LABEL_136;
                  }
                }
              }

              goto LABEL_368;
            }

            for (++v9; v9 < a2; ++v9)
            {
              v62 = *v9;
              result = _TAG::priority(*v9);
              if (v17 > result)
              {
                break;
              }

              if (v17 >= result)
              {
                v63 = *(v14 + 17);
                v64 = v63 <= 4 ? 0 : (v63 + 1) & 0xFFFFFFFE;
                v65 = *(v62 + 17);
                if (v65 >= 5 && ((v65 + 1) & 0xFFFFFFFE) > v64)
                {
                  break;
                }
              }
            }

LABEL_136:
            v67 = a2;
            if (v9 < a2)
            {
              v67 = a2 - 1;
              if (a2 != v7)
              {
                do
                {
                  v68 = *v67;
                  result = _TAG::priority(*v67);
                  if (v17 <= result)
                  {
                    if (v17 < result)
                    {
                      goto LABEL_151;
                    }

                    v69 = *(v14 + 17);
                    v70 = v69 <= 4 ? 0 : (v69 + 1) & 0xFFFFFFFE;
                    v71 = *(v68 + 17);
                    if (v71 < 5 || ((v71 + 1) & 0xFFFFFFFE) <= v70)
                    {
                      goto LABEL_151;
                    }
                  }

                  v92 = v67-- == v7;
                }

                while (!v92);
              }

LABEL_368:
              __break(1u);
              return result;
            }

LABEL_151:
            if (v9 < v67)
            {
              v73 = *v9;
              v74 = *v67;
              do
              {
                *v9++ = v74;
                *v67 = v73;
                if (v9 == a2)
                {
                  goto LABEL_368;
                }

                v75 = _TAG::priority(v14);
                while (1)
                {
                  v73 = *v9;
                  result = _TAG::priority(*v9);
                  if (v75 > result)
                  {
                    break;
                  }

                  if (v75 >= result)
                  {
                    v76 = *(v14 + 17);
                    v77 = v76 <= 4 ? 0 : (v76 + 1) & 0xFFFFFFFE;
                    v78 = *(v73 + 17);
                    if (v78 >= 5 && ((v78 + 1) & 0xFFFFFFFE) > v77)
                    {
                      break;
                    }
                  }

                  if (++v9 == a2)
                  {
                    goto LABEL_368;
                  }
                }

                if (v67 == v7)
                {
                  goto LABEL_368;
                }

                --v67;
                while (1)
                {
                  v74 = *v67;
                  result = _TAG::priority(*v67);
                  if (v75 <= result)
                  {
                    if (v75 < result)
                    {
                      break;
                    }

                    v80 = *(v14 + 17);
                    v81 = v80 <= 4 ? 0 : (v80 + 1) & 0xFFFFFFFE;
                    v82 = *(v74 + 17);
                    if (v82 < 5 || ((v82 + 1) & 0xFFFFFFFE) <= v81)
                    {
                      break;
                    }
                  }

                  v92 = v67-- == v7;
                  if (v92)
                  {
                    goto LABEL_368;
                  }
                }
              }

              while (v9 < v67);
            }

            v84 = v9 - 1;
            if (v9 - 1 != v7)
            {
              *v7 = *v84;
            }

            a4 = 0;
            *v84 = v14;
            v8 = a2 - 1;
            goto LABEL_3;
          }
        }
      }

      if (v9 + 1 == a2)
      {
        goto LABEL_368;
      }

      v21 = _TAG::priority(v14);
      v22 = 1;
      while (1)
      {
        v23 = v7[v22];
        result = _TAG::priority(v23);
        if (result <= v21)
        {
          if (result < v21)
          {
            break;
          }

          v24 = *(v23 + 17);
          v25 = v24 <= 4 ? 0 : (v24 + 1) & 0xFFFFFFFE;
          v26 = *(v14 + 17);
          v27 = v26 >= 5 && ((v26 + 1) & 0xFFFFFFFE) > v25;
          if (!v27)
          {
            break;
          }
        }

        if (&v7[++v22] == a2)
        {
          goto LABEL_368;
        }
      }

      v214 = a3;
      v28 = &v7[v22];
      if (v22 == 1)
      {
        v29 = a2;
        if (v28 < a2)
        {
          v35 = *v8;
          result = _TAG::priority(*v8);
          v29 = v8;
          if (result <= v21)
          {
            v29 = v8;
            do
            {
              if (result >= v21)
              {
                v36 = *(v35 + 17);
                if (v36 <= 4)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = (v36 + 1) & 0xFFFFFFFE;
                }

                v38 = *(v14 + 17);
                v139 = v38 >= 5;
                v39 = (v38 + 1) & 0xFFFFFFFE;
                v41 = !v139 || v39 <= v37;
                if (v28 >= v29 || (v41 & 1) == 0)
                {
                  break;
                }
              }

              else if (v28 >= v29)
              {
                break;
              }

              v42 = *--v29;
              v35 = v42;
              result = _TAG::priority(v42);
            }

            while (result <= v21);
          }
        }
      }

      else
      {
        v29 = v8;
        if (a2 == v7)
        {
          goto LABEL_368;
        }

        while (1)
        {
          v30 = *v29;
          result = _TAG::priority(*v29);
          if (result > v21)
          {
            break;
          }

          if (result >= v21)
          {
            v31 = *(v30 + 17);
            v32 = v31 <= 4 ? 0 : (v31 + 1) & 0xFFFFFFFE;
            v33 = *(v14 + 17);
            if (v33 >= 5 && ((v33 + 1) & 0xFFFFFFFE) > v32)
            {
              break;
            }
          }

          v92 = v29-- == v7;
          if (v92)
          {
            goto LABEL_368;
          }
        }
      }

      if (v28 < v29)
      {
        v43 = *v29;
        v9 = v28;
        v44 = v29;
        while (1)
        {
          *v9++ = v43;
          *v44 = v23;
          if (v9 == a2)
          {
            goto LABEL_368;
          }

          v45 = _TAG::priority(v14);
          while (1)
          {
            v23 = *v9;
            result = _TAG::priority(*v9);
            if (result <= v45)
            {
              if (result < v45)
              {
                break;
              }

              v46 = *(v23 + 17);
              v47 = v46 <= 4 ? 0 : (v46 + 1) & 0xFFFFFFFE;
              v48 = *(v14 + 17);
              if (v48 < 5 || ((v48 + 1) & 0xFFFFFFFE) <= v47)
              {
                break;
              }
            }

            if (++v9 == a2)
            {
              goto LABEL_368;
            }
          }

          if (v44 == v7)
          {
            goto LABEL_368;
          }

          --v44;
          while (1)
          {
            v43 = *v44;
            result = _TAG::priority(*v44);
            if (result > v45)
            {
              break;
            }

            if (result >= v45)
            {
              v50 = *(v43 + 17);
              v51 = v50 <= 4 ? 0 : (v50 + 1) & 0xFFFFFFFE;
              v52 = *(v14 + 17);
              if (v52 >= 5 && ((v52 + 1) & 0xFFFFFFFE) > v51)
              {
                break;
              }
            }

            v92 = v44-- == v7;
            if (v92)
            {
              goto LABEL_368;
            }
          }

          if (v9 >= v44)
          {
            goto LABEL_103;
          }
        }
      }

      v9 = v28;
LABEL_103:
      v54 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v54;
      }

      *v54 = v14;
      v139 = v28 >= v29;
      a3 = v214;
      v8 = a2 - 1;
      a4 = v211;
      if (!v139)
      {
LABEL_109:
        result = std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,false>(v7, v9 - 1, v214, v211 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v55 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(v7, v9 - 1);
      result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v55)
      {
        goto LABEL_109;
      }
    }

    a2 = v9 - 1;
    if (!v55)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = _TAG::priority(*a2);
  v9 = _TAG::priority(v7);
  if (v8 > v9 || v8 >= v9 && ((v12 = *(v6 + 17), v12 <= 4) ? (v13 = 0) : (v13 = (v12 + 1) & 0xFFFFFFFE), (v14 = *(v7 + 17), v14 >= 5) ? (v15 = ((v14 + 1) & 0xFFFFFFFE) > v13) : (v15 = 0), v15))
  {
    v10 = *a3;
    result = _TAG::priority(*a3);
    if (result > v8 || result >= v8 && ((v20 = *(v10 + 17), v20 <= 4) ? (v21 = 0) : (v21 = (v20 + 1) & 0xFFFFFFFE), (v22 = *(v6 + 17), v22 >= 5) ? (v23 = ((v22 + 1) & 0xFFFFFFFE) > v21) : (v23 = 0), v23))
    {
      *a1 = v10;
    }

    else
    {
      *a1 = v6;
      *a2 = v7;
      v24 = *a3;
      v25 = _TAG::priority(*a3);
      result = _TAG::priority(v7);
      if (v25 <= result)
      {
        if (v25 < result)
        {
          return result;
        }

        v33 = *(v24 + 17);
        v34 = v33 <= 4 ? 0 : (v33 + 1) & 0xFFFFFFFE;
        v35 = *(v7 + 17);
        if (v35 < 5 || ((v35 + 1) & 0xFFFFFFFE) <= v34)
        {
          return result;
        }
      }

      *a2 = v24;
    }

    *a3 = v7;
    return result;
  }

  v16 = *a3;
  result = _TAG::priority(*a3);
  if (result > v8 || result >= v8 && ((v26 = *(v16 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v6 + 17), v28 >= 5) ? (v29 = ((v28 + 1) & 0xFFFFFFFE) > v27) : (v29 = 0), v29))
  {
    *a2 = v16;
    *a3 = v6;
    v17 = *a2;
    v18 = *a1;
    v19 = _TAG::priority(*a2);
    result = _TAG::priority(v18);
    if (v19 > result || v19 >= result && ((v30 = *(v17 + 17), v30 <= 4) ? (v31 = 0) : (v31 = (v30 + 1) & 0xFFFFFFFE), (v32 = *(v18 + 17), v32 >= 5) && ((v32 + 1) & 0xFFFFFFFE) > v31))
    {
      *a1 = v17;
      *a2 = v18;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3, _TAG **a4)
{
  std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = _TAG::priority(*a4);
  result = _TAG::priority(v9);
  if (v10 > result || v10 >= result && ((v18 = *(v8 + 17), v18 <= 4) ? (v19 = 0) : (v19 = (v18 + 1) & 0xFFFFFFFE), (v20 = *(v9 + 17), v20 >= 5) ? (v21 = ((v20 + 1) & 0xFFFFFFFE) > v19) : (v21 = 0), v21))
  {
    *a3 = v8;
    *a4 = v9;
    v12 = *a3;
    v13 = *a2;
    v14 = _TAG::priority(*a3);
    result = _TAG::priority(v13);
    if (v14 > result || v14 >= result && ((v22 = *(v12 + 17), v22 <= 4) ? (v23 = 0) : (v23 = (v22 + 1) & 0xFFFFFFFE), (v24 = *(v13 + 17), v24 >= 5) ? (v25 = ((v24 + 1) & 0xFFFFFFFE) > v23) : (v25 = 0), v25))
    {
      *a2 = v12;
      *a3 = v13;
      v15 = *a2;
      v16 = *a1;
      v17 = _TAG::priority(*a2);
      result = _TAG::priority(v16);
      if (v17 > result || v17 >= result && ((v26 = *(v15 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v16 + 17), v28 >= 5) && ((v28 + 1) & 0xFFFFFFFE) > v27))
      {
        *a1 = v15;
        *a2 = v16;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3, _TAG **a4, _TAG **a5)
{
  std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = _TAG::priority(*a5);
  result = _TAG::priority(v11);
  if (v12 > result || v12 >= result && ((v23 = *(v10 + 17), v23 <= 4) ? (v24 = 0) : (v24 = (v23 + 1) & 0xFFFFFFFE), (v25 = *(v11 + 17), v25 >= 5) ? (v26 = ((v25 + 1) & 0xFFFFFFFE) > v24) : (v26 = 0), v26))
  {
    *a4 = v10;
    *a5 = v11;
    v14 = *a4;
    v15 = *a3;
    v16 = _TAG::priority(*a4);
    result = _TAG::priority(v15);
    if (v16 > result || v16 >= result && ((v27 = *(v14 + 17), v27 <= 4) ? (v28 = 0) : (v28 = (v27 + 1) & 0xFFFFFFFE), (v29 = *(v15 + 17), v29 >= 5) ? (v30 = ((v29 + 1) & 0xFFFFFFFE) > v28) : (v30 = 0), v30))
    {
      *a3 = v14;
      *a4 = v15;
      v17 = *a3;
      v18 = *a2;
      v19 = _TAG::priority(*a3);
      result = _TAG::priority(v18);
      if (v19 > result || v19 >= result && ((v31 = *(v17 + 17), v31 <= 4) ? (v32 = 0) : (v32 = (v31 + 1) & 0xFFFFFFFE), (v33 = *(v18 + 17), v33 >= 5) && ((v33 + 1) & 0xFFFFFFFE) > v32))
      {
        *a2 = v17;
        *a3 = v18;
        v20 = *a2;
        v21 = *a1;
        v22 = _TAG::priority(*a2);
        result = _TAG::priority(v21);
        if (v22 > result || v22 >= result && ((v34 = *(v20 + 17), v34 <= 4) ? (v35 = 0) : (v35 = (v34 + 1) & 0xFFFFFFFE), (v36 = *(v21 + 17), v36 >= 5) && ((v36 + 1) & 0xFFFFFFFE) > v35))
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(_TAG **a1, _TAG **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = _TAG::priority(v5);
        v8 = _TAG::priority(v6);
        if (v7 > v8 || v7 >= v8 && ((v31 = *(v5 + 17), v31 <= 4) ? (v32 = 0) : (v32 = (v31 + 1) & 0xFFFFFFFE), (v33 = *(v6 + 17), v33 >= 5) ? (v34 = ((v33 + 1) & 0xFFFFFFFE) > v32) : (v34 = 0), v34))
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    v14 = *v9;
    v15 = _TAG::priority(*v10);
    v16 = _TAG::priority(v14);
    if (v15 > v16 || v15 >= v16 && ((v26 = *(v13 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v14 + 17), v28 >= 5) ? (v29 = ((v28 + 1) & 0xFFFFFFFE) > v27) : (v29 = 0), v29))
    {
      *v10 = v14;
      v17 = v11;
      while (1)
      {
        v18 = *(a1 + v17 + 8);
        v19 = _TAG::priority(v13);
        v20 = _TAG::priority(v18);
        if (v19 <= v20)
        {
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v13 + 17);
          v22 = v21 <= 4 ? 0 : (v21 + 1) & 0xFFFFFFFE;
          v23 = *(v18 + 17);
          if (v23 < 5 || ((v23 + 1) & 0xFFFFFFFE) <= v22)
          {
            break;
          }
        }

        *(a1 + v17 + 16) = v18;
        v17 -= 8;
        if (v17 == -16)
        {
          v25 = a1;
          goto LABEL_37;
        }
      }

      v25 = (a1 + v17 + 16);
LABEL_37:
      *v25 = v13;
      if (++v12 == 8)
      {
        return v10 + 1 == a2;
      }
    }

    v9 = v10;
    v11 += 8;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,false>(uint64_t *result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *v8;
        if (*(v82 + 40) < *(*v8 + 40))
        {
          *v8 = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v51 = (v8 + 1);
      v84 = v8[1];
      v52 = (v8 + 2);
      v12 = v8[2];
      v85 = *v8;
      v86 = *(v84 + 40);
      v87 = *(*v8 + 40);
      v88 = *(v12 + 40);
      if (v86 >= v87)
      {
        if (v88 >= v86)
        {
          goto LABEL_190;
        }

        *v51 = v12;
        *v52 = v84;
        v89 = v8;
        v90 = v8 + 1;
        result = v84;
        if (v88 >= v87)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v89 = v8;
        v90 = v8 + 2;
        result = *v8;
        if (v88 >= v86)
        {
          *v8 = v84;
          v8[1] = v85;
          v89 = v8 + 1;
          v90 = v8 + 2;
          result = v85;
          if (v88 >= v87)
          {
            goto LABEL_190;
          }
        }
      }

      *v89 = v12;
      *v90 = v85;
      v84 = result;
      goto LABEL_191;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v51 = (v8 + 1);
      v92 = v8 == a2 || v51 == a2;
      if (a4)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v8;
          do
          {
            v95 = *v94;
            v94 = v51;
            v96 = *v51;
            v97 = *(v96 + 40);
            if (v97 < *(v95 + 40))
            {
              v98 = v93;
              while (1)
              {
                *(v8 + v98 + 8) = v95;
                if (!v98)
                {
                  break;
                }

                v95 = *(v8 + v98 - 8);
                v98 -= 8;
                if (v97 >= *(v95 + 40))
                {
                  v99 = (v8 + v98 + 8);
                  goto LABEL_140;
                }
              }

              v99 = v8;
LABEL_140:
              *v99 = v96;
            }

            v51 = (v94 + 8);
            v93 += 8;
          }

          while (v94 + 8 != a2);
        }

        return result;
      }

      if (v92)
      {
        return result;
      }

      v52 = 0;
      v132 = 8;
      while (1)
      {
        v133 = *(v52 + v8);
        v52 = v132;
        v134 = *v51;
        v12 = *(*v51 + 40);
        if (v12 < *(v133 + 40))
        {
          break;
        }

LABEL_187:
        v132 = (v52 + 4);
        v51 += 4;
        if (v51 == a2)
        {
          return result;
        }
      }

      v135 = 0;
      while (1)
      {
        *&v51[v135] = v133;
        if (!&v52[v135])
        {
          break;
        }

        v133 = *&v51[v135 - 8];
        v135 -= 4;
        if (v12 >= *(v133 + 40))
        {
          *&v51[v135] = v134;
          goto LABEL_187;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      v84 = v12;
LABEL_191:
      v136 = *(a2 - 1);
      if (*(v136 + 40) < *(v84 + 40))
      {
        *v52 = v136;
        *(a2 - 1) = v84;
        v137 = *v52;
        v138 = *v51;
        v139 = *(v137 + 40);
        if (v139 < *(v138 + 40))
        {
          v7[1] = v137;
          v7[2] = v138;
          v140 = *v7;
          if (v139 < *(*v7 + 40))
          {
            *v7 = v137;
            v7[1] = v140;
          }
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v100 = (v9 - 2) >> 1;
        v101 = v100;
        do
        {
          v102 = v101;
          if (v100 >= v101)
          {
            v103 = (2 * v101) | 1;
            v104 = &v8[v103];
            v105 = *v104;
            if (2 * v102 + 2 < v9 && *(v105 + 40) < *(v104[1] + 40))
            {
              v105 = v104[1];
              ++v104;
              v103 = 2 * v102 + 2;
            }

            result = &v8[v102];
            v106 = *result;
            v107 = *(*result + 40);
            if (*(v105 + 40) >= v107)
            {
              do
              {
                v108 = v104;
                *result = v105;
                if (v100 < v103)
                {
                  break;
                }

                v109 = (2 * v103) | 1;
                v104 = &v8[v109];
                v110 = 2 * v103 + 2;
                v105 = *v104;
                if (v110 < v9 && *(v105 + 40) < *(v104[1] + 40))
                {
                  v105 = v104[1];
                  ++v104;
                  v109 = v110;
                }

                result = v108;
                v103 = v109;
              }

              while (*(v105 + 40) >= v107);
              *v108 = v106;
            }
          }

          v101 = v102 - 1;
        }

        while (v102);
        do
        {
          v111 = 0;
          v112 = *v8;
          v113 = v8;
          do
          {
            v114 = &v113[v111];
            v115 = (v114 + 1);
            v116 = v114[1];
            v117 = (2 * v111) | 1;
            v111 = 2 * v111 + 2;
            if (v111 >= v9)
            {
              v111 = v117;
            }

            else
            {
              v120 = v114[2];
              v118 = (v114 + 2);
              v119 = v120;
              result = *(v116 + 40);
              if (result >= *(v120 + 40))
              {
                v111 = v117;
              }

              else
              {
                v116 = v119;
                v115 = v118;
              }
            }

            *v113 = v116;
            v113 = v115;
          }

          while (v111 <= ((v9 - 2) >> 1));
          a2 -= 4;
          if (v115 == a2)
          {
            *v115 = v112;
          }

          else
          {
            *v115 = *a2;
            *a2 = v112;
            v121 = (v115 - v8 + 8) >> 3;
            v122 = v121 < 2;
            v123 = v121 - 2;
            if (!v122)
            {
              v124 = v123 >> 1;
              v125 = &v8[v124];
              v126 = *v125;
              v127 = *v115;
              v128 = *(*v115 + 40);
              if (*(*v125 + 40) < v128)
              {
                do
                {
                  v129 = v125;
                  *v115 = v126;
                  if (!v124)
                  {
                    break;
                  }

                  v124 = (v124 - 1) >> 1;
                  v125 = &v8[v124];
                  v126 = *v125;
                  v115 = v129;
                }

                while (*(*v125 + 40) < v128);
                *v129 = v127;
              }
            }
          }

          v122 = v9-- <= 2;
        }

        while (!v122);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 40);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 40);
      v17 = *(*v8 + 40);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 40) < *(*v8 + 40))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 40) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 40) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 40);
      v40 = *(v38 + 40);
      v41 = *(a2 - 3);
      v42 = *(v41 + 40);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 40) < *(v43 + 40))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 40) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v12 = *v11;
      v45 = *v25;
      v46 = *(*v11 + 40);
      v47 = *(*v25 + 40);
      v48 = *v35;
      v49 = *(*v35 + 40);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v11 = v48;
        *v35 = v12;
        v35 = v11;
        v12 = v45;
        if (v49 >= v47)
        {
          v12 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v12;
        *v11 = v45;
        v25 = v11;
        v12 = v48;
        if (v49 >= v47)
        {
          v12 = v45;
LABEL_56:
          v50 = *v8;
          *v8 = v12;
          *v11 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v35 = v45;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 40);
    v21 = *(*v11 + 40);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        v12 = *(*v8 + 40);
        if (v12 < *(*v11 + 40))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }
    }

    else
    {
      if (v13 < v20)
      {
        *v11 = v12;
LABEL_36:
        *(a2 - 1) = v19;
        goto LABEL_57;
      }

      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*(v33 + 40) < v21)
      {
        *v8 = v33;
        goto LABEL_36;
      }
    }

LABEL_57:
    --a3;
    v51 = *v8;
    if ((a4 & 1) != 0 || (v52 = v51[20], *(*(v8 - 1) + 40) < v52))
    {
      v53 = 0;
      do
      {
        v52 = &v8[v53 + 1];
        if (v52 == a2)
        {
          goto LABEL_189;
        }

        v54 = *v52;
        v12 = v51[20];
        ++v53;
      }

      while (*(*v52 + 40) < v12);
      v52 = &v8[v53];
      v55 = a2;
      if (v53 != 1)
      {
        while (v55 != v8)
        {
          v56 = *(v55 - 1);
          v55 -= 4;
          if (*(v56 + 40) < v12)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_189;
      }

      v55 = a2;
      do
      {
        if (v52 >= v55)
        {
          break;
        }

        v57 = *(v55 - 1);
        v55 -= 4;
      }

      while (*(v57 + 40) >= v12);
LABEL_69:
      if (v52 < v55)
      {
        v58 = *v55;
        v59 = &v8[v53];
        v60 = v55;
LABEL_71:
        *v59 = v58;
        *v60 = v54;
        v61 = (v59 + 1);
        while (v61 != a2)
        {
          v62 = *v61;
          v61 += 4;
          v54 = v62;
          if (*(v62 + 40) >= v12)
          {
            v59 = (v61 - 4);
            while (v60 != v8)
            {
              v63 = *--v60;
              v58 = v63;
              if (*(v63 + 40) < v12)
              {
                if (v59 < v60)
                {
                  goto LABEL_71;
                }

                v64 = v61 - 8;
                goto LABEL_80;
              }
            }

            goto LABEL_189;
          }
        }

        goto LABEL_189;
      }

      v64 = v52 - 4;
LABEL_80:
      if (v64 != v8)
      {
        *v8 = *v64;
      }

      *v64 = v51;
      if (v52 < v55)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,false>(v7, v64, a3, a4 & 1);
        a4 = 0;
        v8 = (v64 + 4);
        continue;
      }

      v65 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(v8, v64);
      v8 = (v64 + 4);
      result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(v64 + 1, a2);
      if (!result)
      {
        if (v65)
        {
          continue;
        }

        goto LABEL_85;
      }

      a2 = v64;
      if (v65)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (v52 >= *(*(a2 - 1) + 40))
    {
      v68 = (v8 + 1);
      do
      {
        v8 = v68;
        if (v68 >= a2)
        {
          break;
        }

        v68 += 8;
        v12 = *(*v8 + 40);
      }

      while (v52 >= v12);
    }

    else
    {
      v66 = (v8 + 1);
      do
      {
        if (v66 == a2)
        {
          goto LABEL_189;
        }

        v67 = *v66;
        v66 += 4;
        v12 = *(v67 + 40);
      }

      while (v52 >= v12);
      v8 = (v66 - 4);
    }

    v69 = a2;
    if (v8 < a2)
    {
      v69 = a2;
      while (v69 != v7)
      {
        v70 = *(v69 - 1);
        v69 -= 4;
        v12 = *(v70 + 40);
        if (v52 >= v12)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_189;
    }

LABEL_99:
    if (v8 < v69)
    {
      v12 = *v8;
      v71 = *v69;
      do
      {
        *v8 = v71;
        v72 = (v8 + 1);
        *v69 = v12;
        do
        {
          if (v72 == a2)
          {
            goto LABEL_189;
          }

          v73 = *v72;
          v72 += 4;
          v12 = v73;
        }

        while (v52 >= *(v73 + 40));
        v8 = (v72 - 4);
        do
        {
          if (v69 == v7)
          {
            goto LABEL_189;
          }

          v74 = *(v69 - 1);
          v69 -= 4;
          v71 = v74;
        }

        while (v52 < *(v74 + 40));
      }

      while (v8 < v69);
    }

    v75 = (v8 - 1);
    if (v8 - 1 != v7)
    {
      *v7 = *v75;
    }

    a4 = 0;
    *v75 = v51;
  }

  v76 = *v8;
  v77 = v8[1];
  v78 = *(v77 + 40);
  v79 = *(*v8 + 40);
  v80 = *(a2 - 1);
  v81 = *(v80 + 40);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v8[1] = v80;
      *(a2 - 1) = v77;
      v131 = *v8;
      v130 = v8[1];
      if (*(v130 + 40) < *(*v8 + 40))
      {
        *v8 = v130;
        v8[1] = v131;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v8 = v77;
      v8[1] = v76;
      v141 = *(a2 - 1);
      if (*(v141 + 40) >= v79)
      {
        return result;
      }

      v8[1] = v141;
    }

    else
    {
      *v8 = v80;
    }

    *(a2 - 1) = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 40) < *(*a1 + 40))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 40))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void IIOMemoryHash::~IIOMemoryHash(IIOMemoryHash *this)
{
  *this = &unk_1EF4DBA68;
  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1EF4DBA68;
  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x186602850);
}

uint64_t _ImageIO_AccreditMemory(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gImageIOMemoryHashLock);
  if (gMemoryHashCreateOnce != -1)
  {
    _ImageIO_AccreditMemory_cold_1();
  }

  v5 = ~a1;
  v6 = &v5;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, &v5, &std::piecewise_construct, &v6)[5] = a2;
  ImageIORecordMemory(a1, a2);
  return pthread_mutex_unlock(&gImageIOMemoryHashLock);
}

uint64_t IOMemorySizeLookup(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    pthread_mutex_lock(&gImageIOMemoryHashLock);
    if (gMemoryHashCreateOnce != -1)
    {
      _ImageIO_AccreditMemory_cold_1();
    }

    v3 = ~v1;
    v4 = &v3;
    v1 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, &v3, &std::piecewise_construct, &v4)[5];
    pthread_mutex_unlock(&gImageIOMemoryHashLock);
  }

  return v1;
}

uint64_t IIO_ImageBlockSetRelease(const void *a1)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    ImageIOLog("    CGImageBlockSetRelease:   %14p [%ld]\n", a1, gBlockSetCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {
      IIODebug_ShowBacktrace(2);
    }
  }

  return CGImageBlockSetRelease();
}

const char *IIO_ImageBlockSetReleased(const char *result)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockSetCount, 0xFFFFFFFF, memory_order_relaxed);
    result = ImageIOLog("    CGImageBlockSetReleaseCB:                  info: %14p                        S-[%2ld]\n", result, gBlockSetCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {

      return IIODebug_ShowBacktrace(2);
    }
  }

  return result;
}

const char *IIO_ImageBlockReleased(const char *result, const void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockCount, 0xFFFFFFFF, memory_order_relaxed);
    result = ImageIOLog("    CGImageBlockReleaseCB:    %14p - info: %14p                        B-[%2ld]\n", a2, result, gBlockCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {

      return IIODebug_ShowBacktrace(2);
    }
  }

  return result;
}

void IIOImageRead::IIOImageRead(IIOImageRead *this, CGDataProvider *a2, char a3)
{
  *this = &unk_1EF4DBAF8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 32) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  IIOImageRead::setup(this, 3);
  *(this + 5) = CFRetain(a2);
  *(this + 64) = a3;
  *(this + 65) = a3 ^ 1;
  *(this + 10) = CGDataProviderGetSizeOfData();
}

void sub_18607FBF4(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void IIOImageRead::IIOImageRead(IIOImageRead *this, IIOImageRead *a2)
{
  *this = &unk_1EF4DBAF8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 32) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  IIOImageRead::setup(this, 9);
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E80])
  {
    DataFromXPCDict = IIOImageRead::CreateDataFromXPCDict(a2, v4);
    *(this + 4) = DataFromXPCDict;
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CreateDataFromXPCDict %p\n", "IIOImageRead", 628, DataFromXPCDict);
      DataFromXPCDict = *(this + 4);
    }

    *(this + 32) = 1;
    if (DataFromXPCDict)
    {
      DataFromXPCDict = CFDataGetLength(DataFromXPCDict);
    }

    *(this + 10) = DataFromXPCDict;
  }
}

void sub_18607FD24(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t IIOImageRead::releaseGlobalInfoPtr(IIOImageRead *this)
{
  pthread_mutex_lock((this + 88));
  v2 = *(this + 19);
  v4 = *(this + 20);
  v3 = (this + 152);
  if (v2 != v4)
  {
    do
    {
      v5 = v2[1];
      if (v5 && *v2)
      {
        v5();
      }

      v2 += 3;
    }

    while (v2 != v4);
    v2 = *v3;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  pthread_mutex_unlock((this + 88));
  return 0;
}

uint64_t IIOImageRead::getClientValueForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_mutex_lock((a1 + 176));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(a1 + 240, a2);
  if (a1 + 248 != v6)
  {
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v8;
  }

  return pthread_mutex_unlock((a1 + 176));
}

void sub_18607FE64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIOImageRead::setClientValueForKey(uint64_t a1, const void **a2, uint64_t *a3)
{
  pthread_mutex_lock((a1 + 176));
  v12 = a2;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 240), a2, &std::piecewise_construct, &v12, &v11);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[8];
  v6[7] = v8;
  v6[8] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return pthread_mutex_unlock((a1 + 176));
}

ssize_t IIOImageRead::getBytesAtOffset(IIOImageRead *this, unsigned __int8 *a2, off_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  if (!a2)
  {
    return v5;
  }

  if (a3 < 0)
  {
    return v5;
  }

  v7 = a4;
  v8 = (a4 - 1);
  if (a4 < 1)
  {
    return v5;
  }

  if ((a5 & 1) == 0)
  {
    pthread_mutex_lock((this + 376));
  }

  v12 = *(this + 10);
  v19 = 0;
  ERROR_ImageIO_DestinationBufferIsNotWritable(a2);
  if (v7 >= 2)
  {
    ERROR_ImageIO_DestinationBufferIsNotBigEnough(a2, v8);
  }

  if ((*(this + 6) & 0x80000000) != 0 && !*(this + 4) && !*(this + 5) && *(this + 67) == 1)
  {
    if ((gIIODebugFlags & 0x100000000000) == 0 || (ImageIOLog("    %s:   <IIOImageRead: %p> mmapping data   count: %d\n", "getBytesAtOffset", this, *(this + 110) + 1), !*(this + 4)))
    {
      IIOImageRead::getBytesAtOffset(this, &v19, this + 4);
    }

    ++*(this + 110);
  }

  if (v12 != -1)
  {
    if (v12 < a3)
    {
      _cg_jpeg_mem_term("getBytesAtOffset", 1623, "*** ERROR: offset > _length (%ld > %ld)\n");
    }

    v16 = v12 - a3;
    if (v12 <= a3)
    {
      goto LABEL_32;
    }

    if (v16 >= v7)
    {
      v16 = v7;
    }

    if (v16 <= 0)
    {
      _cg_jpeg_mem_term("getBytesAtOffset", 1635, " inCount = %ld   count = %ld   _length = %ld   offset = %ld \n");
      goto LABEL_32;
    }

    v7 = v16;
  }

  if (*(this + 5))
  {
    CGDataProviderBytesAtOffset = IIOImageRead::getCGDataProviderBytesAtOffset(this, a2, a3, v7, v13, v14, v15);
    goto LABEL_28;
  }

  if (!*(this + 4))
  {
    if ((*(this + 6) & 0x80000000) == 0)
    {
      CGDataProviderBytesAtOffset = IIOImageRead::getFileBytesAtOffset(this, a2, a3, v7);
      goto LABEL_28;
    }

LABEL_32:
    v5 = 0;
    if (a5)
    {
      return v5;
    }

    goto LABEL_29;
  }

  CGDataProviderBytesAtOffset = IIOImageRead::getCFDataBytesAtOffset(this, a2, a3, v7);
LABEL_28:
  v5 = CGDataProviderBytesAtOffset;
  if ((a5 & 1) == 0)
  {
LABEL_29:
    pthread_mutex_unlock((this + 376));
  }

  return v5;
}

char *IIOImageRead::copySourceInfo(IIOImageRead *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  bzero(__str, 0x400uLL);
  pthread_mutex_lock((this + 376));
  if (*(this + 7))
  {
    _CFStringGetFileSystemRepresentation();
  }

  else
  {
    v2 = *(this + 4);
    if (v2)
    {
      Length = CFDataGetLength(*(this + 4));
      snprintf(__str, 0x400uLL, "(CFDataRef) %p @%ld bytes", v2, Length);
    }

    else
    {
      __str[0] = 0;
    }
  }

  pthread_mutex_unlock((this + 376));
  v4 = *(this + 19) - 1;
  if (v4 > 9)
  {
    v5 = "[unknown]      %s";
  }

  else
  {
    v5 = off_1E6F0B580[v4];
  }

  v6 = __str;
  if (!__str[0])
  {
    v6 = "";
  }

  asprintf(&v8, v5, v6);
  return v8;
}

uint64_t IIOImageRead::getCGDataProviderBytesAtOffset(IIOImageRead *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = *MEMORY[0x1E69E9840];
  v13 = *(v11 + 80);
  v14 = CGAccessSessionCreate();
  if (v10 >= 1)
  {
    if ((gIIODebugFlags & 0x800000) != 0)
    {
      ImageIOLog("    %s:%d:  dataProvider %p skip offset: 0x%08lX\n", "getCGDataProviderBytesAtOffset", 1392, *(v12 + 40), v10);
    }

    if (v13 == -1)
    {
      bzero(v20, 0x2000uLL);
      v17 = v10;
      do
      {
        Bytes = CGAccessSessionGetBytes();
        v17 -= Bytes;
        if (Bytes)
        {
          v19 = v17 <= 0;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
      if (v17)
      {
        v15 = 0;
        if (!v14)
        {
          return v15;
        }

        goto LABEL_9;
      }
    }

    else
    {
      CGAccessSessionSkipForward();
    }
  }

  if ((gIIODebugFlags & 0x800000) != 0)
  {
    ImageIOLog("    %s:%d:  dataProvider %p read offset: 0x%08lX   size: %8ld\n", "getCGDataProviderBytesAtOffset", 1417, *(v12 + 40), v10, v8);
  }

  v15 = CGAccessSessionGetBytes();
  if (v14)
  {
LABEL_9:
    CGAccessSessionRelease();
  }

  return v15;
}

void IIOImageRead::removeCacheKey(IIOImageRead *this, uint64_t a2)
{
  if (*(this + 37) != *(this + 36))
  {
    pthread_mutex_lock((this + 312));
    v5 = *(this + 36);
    v4 = *(this + 37);
    if (v5 != v4)
    {
      v6 = 0uLL;
      do
      {
        *&v14[12] = v6;
        key = v6;
        *v14 = v6;
        v7 = *v5;
        v8 = *(v5 + 1);
        *&v14[12] = *(v5 + 28);
        key = v7;
        *v14 = v8;
        if (WORD6(v8) == a2)
        {
          cache_remove(gImageBlockCache, &key);
          if ((gIIODebugFlags & 0x200) != 0)
          {
            DebugStringFromKey = createDebugStringFromKey(&key);
            if (DebugStringFromKey)
            {
              v10 = DebugStringFromKey;
              ImageIOLog("    cache_remove:            %p key: %s\n", gImageBlockCache, DebugStringFromKey);
              free(v10);
            }
          }

          v11 = *(this + 37);
          if (v11 == v5)
          {
            __break(1u);
            return;
          }

          v12 = v11 - (v5 + 44);
          if (v11 != v5 + 44)
          {
            memmove(v5, v5 + 44, v11 - (v5 + 44));
          }

          v4 = &v5[v12];
          *(this + 37) = &v5[v12];
          v6 = 0uLL;
        }

        else
        {
          v5 += 44;
        }
      }

      while (v5 != v4);
    }

    pthread_mutex_unlock((this + 312));
  }
}

uint64_t IIOImageRead::updateDataProvider(IIOImageRead *this, CGDataProvider *a2, int a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 5);
  if (a2)
  {
    v8 = CFRetain(a2);
    *(this + 4) = 0;
    *(this + 5) = v8;
    SizeOfData = CGDataProviderGetSizeOfData();
  }

  else
  {
    SizeOfData = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  *(this + 10) = SizeOfData;
  *(this + 64) = a3;
  if (a3)
  {
    *(this + 65) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t IIOImageRead::updateData(IIOImageRead *this, const __CFData *a2, int a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 4);
  *(this + 5) = 0;
  if (a2)
  {
    *(this + 4) = CFRetain(a2);
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
    *(this + 4) = 0;
  }

  *(this + 10) = Length;
  *(this + 64) = a3;
  if (a3)
  {
    *(this + 65) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t IIOImageRead::length(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  v2 = *(this + 10);
  pthread_mutex_unlock((this + 376));
  return v2;
}

void ___ZN12IIOImageRead16addDataToXPCDictEPvPS0__block_invoke(IIOImageRead *a1)
{
  v1 = *(a1 + 5);
  if (v1)
  {
    IIOImageRead::releaseBytePointer(a1, v1);
  }
}

CFTypeRef IIOImageRead::getCFData(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  v2 = *(this + 4);
  if (v2)
  {
    CFRetain(*(this + 4));
    pthread_mutex_unlock((this + 376));

    return CFAutorelease(v2);
  }

  else
  {
    pthread_mutex_unlock((this + 376));
    return 0;
  }
}

uint64_t IIOImageRead::shouldExposeMultiFrameContents(IIOImageRead *this)
{
  Source = CGImageSourceGetSource(~*(this + 2));
  if (Source)
  {

    return IIOImageSource::shouldExposeMultiFrameContents(Source);
  }

  else
  {
    _cg_jpeg_mem_term("shouldExposeMultiFrameContents", 2216, "*** could not get 'shouldExposeMultiFrameContents' -- nil iSource\n");
    return 0;
  }
}

uint64_t IIOImageRead::useImageSequence(IIOImageRead *this)
{
  Source = CGImageSourceGetSource(~*(this + 2));
  if (Source)
  {

    return IIOImageSource::useImageSequence(Source);
  }

  else
  {
    _cg_jpeg_mem_term("useImageSequence", 2231, "*** could not get 'useSequence' -- nil iSource\n");
    return 0;
  }
}

uint64_t CGImageReadGetTypeID()
{
  if (CGImageReadGetTypeID::once != -1)
  {
    CGImageReadGetTypeID_cold_1();
  }

  return CGImageReadGetTypeID::id;
}

CFStringRef _CGImageReadCopyDebugDesc(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
  }

  else
  {
    v1 = 0;
  }

  v2 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CGImageReadRef %p>%s", v1, "");
}

void _providerRelease(CGDataProvider *a1)
{
  CGDataProviderReleaseBytePtr();

  CGDataProviderRelease(a1);
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIO_GlobalInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__find_equal<std::string>(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<imageio_key>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void lexerror(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  vasprintf(__s1, a2, va);
  v9 = __s1[0];
  if (__s1[0])
  {
    if (a1)
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = strdup(__s1[0]);
      }
    }

    free(v9);
  }
}

void *yy_create_buffer(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x2DE7D2C5uLL);
  if (!v6 || (v7 = v6, v6[3] = a2, v8 = malloc_type_malloc(a2 + 2, 0x2DE7D2C5uLL), (*(v7 + 8) = v8) == 0))
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", "out of dynamic memory in yy_create_buffer()");
    exit(2);
  }

  *(v7 + 36) = 1;
  yy_init_buffer(v7, a1, a3);
  return v7;
}

int *yyrestart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (yyensure_buffer_stack(a2), buffer = yy_create_buffer(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = buffer, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = yy_init_buffer(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 52) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 64) = v12;
  *(a2 + 128) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  yy_flush_buffer(a1, a3);
  *a1 = a2;
  *(a1 + 56) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 48) = 1;
  }

  *(a1 + 40) = 0;
  result = __error();
  *result = v6;
  return result;
}

uint64_t yy_flush_buffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 44) = 1;
    *(result + 60) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 52) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 64) = v6;
      *(a2 + 128) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void yypop_buffer_state(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      yy_delete_buffer(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 52) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 64) = v7;
          *(a1 + 128) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 80) = 1;
        }
      }
    }
  }
}

void GIFWritePlugin::GIFWritePlugin(GIFWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1195984416);
  *v3 = &unk_1EF4DBC10;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 83) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
}

void GIFWritePlugin::~GIFWritePlugin(GIFWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

IIOImageWriteSession *GIFWritePlugin::gifWriteFunc(uint64_t a1, const void *a2, int a3)
{
  result = *(a1 + 88);
  if (result)
  {
    return IIOImageWriteSession::putBytes(result, a2, a3);
  }

  return result;
}

BOOL GIFWritePlugin::colorMapEntriesAreEqual(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = 2 * a2;
LABEL_5:
    v10 = (v7 + v8 + a2);
    v18 = v4;
    v19 = v5;
    v11 = *v10;
    v17 = *(v10 + 2);
    v16 = v11;
    v12 = *(a3 + 16) + 3 * a4;
    LOBYTE(v11) = *(v12 + 2);
    v14 = *v12;
    v15 = v11;
    return RGBColorType::isCloseTo(&v16, &v14);
  }

  v9 = *(*(a1 + 40) + 16);
  if (v9)
  {
    v7 = *(v9 + 16);
    v8 = 2 * a2;
    goto LABEL_5;
  }

  return 0;
}

const char *GIFWritePlugin::reduceFrame(const char *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t *a8, unint64_t *a9, uint64_t *a10)
{
  v10 = *a9;
  v11 = *a10;
  if (*a9 >= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = *a9;
  }

  if (v11 >= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = *a10;
  }

  if (result[97] != 1)
  {
    return result;
  }

  v14 = a8;
  v18 = result;
  v45 = v12;
  v46 = v13;
  v19 = *(result + 96);
  v48 = *a10;
  v20 = *a7;
  v21 = v11;
  v22 = *a8;
  v54.origin.x = v20;
  v54.origin.y = v22;
  v54.size.width = v10;
  v54.size.height = v11;
  result = CGRectEqualToRect(v54, **(result + 14));
  v23 = a9;
  if ((result & 1) == 0 && v18[97] != 1)
  {
    goto LABEL_42;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    result = ImageIOLog("                    newRect: (%.0f, %.0f, %.0f, %.0f)\n", v20, v22, v10, v21);
    v23 = a9;
  }

  v24 = v19 ? a2 : *(*(v18 + 5) + 6);
  if (v18[97] == 1)
  {
    v25 = *(v18 + 7);
    v26 = *(v18 + 11) * v10;
    v27 = a3 + v26 * (v25 - 1);
    a3 += v26 * v25;
  }

  else
  {
    v27 = **(v18 + 13);
  }

  v28 = *a10;
  if (!*a10)
  {
    goto LABEL_42;
  }

  v50 = v18;
  v44 = v14;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v10 - 1;
  v34 = *v23;
  v35 = v48 - 1;
  v36 = a4;
  v49 = v10;
  do
  {
    if (!v34)
    {
      goto LABEL_39;
    }

    v37 = 0;
    do
    {
      v38 = *(a3 + v37);
      if (a6)
      {
        v39 = *(v27 + v37);
        if (v36)
        {
          v53 = v35;
          v40 = a6;
          v41 = v24;
          v42 = v27;
          result = GIFWritePlugin::colorMapEntriesAreEqual(v50, v39, a5, v38);
          v23 = a9;
          v35 = v53;
          v27 = v42;
          v24 = v41;
          a6 = v40;
          v36 = a4;
          if (result)
          {
            goto LABEL_35;
          }
        }

        else if (v38 == v39)
        {
          goto LABEL_35;
        }
      }

      else if (v24 == v38)
      {
        goto LABEL_35;
      }

      ++v32;
      if (v37 < v33)
      {
        v33 = v37;
      }

      if (v37 > v30)
      {
        v30 = v37;
      }

      if (v29 < v35)
      {
        v35 = v29;
      }

      if (v29 > v31)
      {
        v31 = v29;
      }

LABEL_35:
      ++v37;
      v34 = *v23;
    }

    while (v37 < *v23);
    v10 = v49;
    v28 = *a10;
LABEL_39:
    ++v29;
    a3 += v10;
    v27 += v10;
  }

  while (v29 < v28);
  v14 = v44;
  if (v32)
  {
    *a7 = v33;
    *v44 = v35;
    *v23 = v30 - v33 + 1;
    v43 = v31 - v35 + 1;
    goto LABEL_43;
  }

LABEL_42:
  v43 = v46;
  *a7 = v10 >> 1;
  *v14 = v48 >> 1;
  *v23 = v45;
LABEL_43:
  *a10 = v43;
  return result;
}

uint64_t GIFWritePlugin::getDelayTime(GIFWritePlugin *this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  v2 = @"UnclampedDelayTime";
  if ((IIODictionary::containsKey(v8, @"UnclampedDelayTime") & 1) != 0 || (v2 = @"DelayTime", v3 = IIODictionary::containsKey(v8, @"DelayTime"), DoubleForKey = 0.0, v3))
  {
    DoubleForKey = IIODictionary::getDoubleForKey(v8, v2);
  }

  v5 = vcvtmd_u64_f64(DoubleForKey * 100.0 + 0.5);
  if (DoubleForKey <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  IIODictionary::~IIODictionary(v8);
  return v6;
}

void sub_186081420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t GIFWritePlugin::writeSingleFrame(GIFWritePlugin *this)
{
  v100 = *MEMORY[0x1E69E9840];
  v82 = *(this + 98);
  v97 = 0;
  v98 = 0;
  v96 = 0;
  bzero(v99, 0x300uLL);
  v92[0] = 0;
  v92[1] = 0;
  buffer = v99;
  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, *(this + 7));
  PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, *(this + 7));
  ContainerProperties = IIOWritePlugin::getContainerProperties(this);
  *(this + 96) = IIOImagePixelDataProvider::getAlphaInfo(PixelDataProviderAtIndex) - 3 < 2;
  v4 = IIOImageSource::count(PixelDataProviderAtIndex);
  v95 = v4;
  v5 = IIO_Reader::testHeaderSize(PixelDataProviderAtIndex);
  v6 = 0;
  v94 = v5;
  v7 = 4294967246;
  *(this + 8) = v4;
  *(this + 9) = v5;
  v8 = "no";
  if (v5)
  {
    if (v4)
    {
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
      Type = CGColorSpaceGetType();
      Model = CGColorSpaceGetModel(SourceGeomColorSpace);
      v11 = Model;
      v6 = 0;
      if (Model <= kCGColorSpaceModelIndexed && ((1 << Model) & 0x23) != 0)
      {
        if (_cg_GifLastError(PixelDataProviderAtIndex) - 9 < 0xFFFFFFF8)
        {
          v6 = 0;
          goto LABEL_113;
        }

        theDict = IIODictionary::getObjectForKey(PropertiesAtIndex, @"{GIF}");
        if (!theDict || (Value = CFDictionaryGetValue(theDict, @"ImageColorMap"), (v13 = Value) == 0) || (v14 = CFGetTypeID(Value), v14 != CFDataGetTypeID()))
        {
LABEL_26:
          v6 = malloc_type_malloc(v5 * v4, 0x100004077774924uLL);
          if (!v6)
          {
            goto LABEL_112;
          }

          v91 = 0;
          ColorQuantization::ColorQuantization(&v91);
          BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(PixelDataProviderAtIndex);
          Error = _cg_GifLastError(PixelDataProviderAtIndex);
          v89 = 0;
          v90 = 0;
          IIOColorSpace::IIOColorSpace(&v89, *MEMORY[0x1E695F1C0]);
          v83 = v6;
          v87 = 0;
          v88 = 0;
          IIOColorSpace::IIOColorSpace(&v87, *MEMORY[0x1E695F128]);
          v26 = IIOImagePixelDataProvider::getBitmapInfo(PixelDataProviderAtIndex) & 0x1F;
          if (v26 == 3)
          {
            v27 = 1;
          }

          else if (v26 == 4)
          {
            v27 = 2;
          }

          else if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = 5;
          }

          if (v11 == kCGColorSpaceModelRGB)
          {
            v28 = v90;
            if (BytesPerRow <= 3 * v4)
            {
              BytesPerRow = 4 * v4;
            }
          }

          else if (v11)
          {
            v28 = 0;
          }

          else
          {
            v28 = v88;
            BytesPerRow = 2 * v4;
          }

          v29 = malloc_type_calloc(v5, BytesPerRow, 0x100004077774924uLL);
          v30 = v29;
          if (!v29)
          {
            IIOColorSpace::~IIOColorSpace(&v87);
            IIOColorSpace::~IIOColorSpace(&v89);
            ColorQuantization::~ColorQuantization(&v91);
            v7 = 4294967246;
            v8 = "no";
            v6 = v83;
            goto LABEL_113;
          }

          if (Type != 7)
          {
            v31 = CGBitmapContextCreate(v29, v4, v5, Error, BytesPerRow, v28, v27);
            v32 = v31;
            if (v31)
            {
              v102.origin.x = 0.0;
              v102.origin.y = 0.0;
              v102.size.width = v4;
              v102.size.height = v5;
              CGContextClearRect(v31, v102);
              v33 = IIOWritePlugin::getPixelDataProviderAtIndex(this, *(this + 7));
              Ref = IIOImageSource::imageReadRef(v33);
              v103.origin.x = 0.0;
              v103.origin.y = 0.0;
              v103.size.width = v4;
              v103.size.height = v5;
              CGContextDrawImage(v32, v103, Ref);
              v104.origin.x = 0.0;
              v104.origin.y = 0.0;
              v104.size.width = v4;
              v104.size.height = v5;
              CGRectOffset(v104, 0.0, v5);
              CGContextRelease(v32);
LABEL_47:
              dest.data = v30;
              dest.height = v5;
              dest.width = v4;
              dest.rowBytes = BytesPerRow;
              v35 = v27;
              v6 = v83;
              if (v11 == kCGColorSpaceModelRGB)
              {
                if (v35 == 2)
                {
                  vImageUnpremultiplyData_ARGB8888(&dest, &dest, 0x10u);
                }

                else if (v35 == 1)
                {
                  vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                }
              }

              if (Type == 7)
              {
                if (!Ref)
                {
                  Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
                }

                v36 = _cg_GifLastError(PixelDataProviderAtIndex);
                v37 = *(this + 96);
                v38 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                v39 = ColorQuantization::generateFromIndexedImage(&v91, &dest, Ref, v36, v35, v37, v38, v92, v83, &v96);
              }

              else if (v11)
              {
                if (v11 != kCGColorSpaceModelRGB)
                {
                  free(v30);
                  IIOColorSpace::~IIOColorSpace(&v87);
                  IIOColorSpace::~IIOColorSpace(&v89);
                  ColorQuantization::~ColorQuantization(&v91);
                  goto LABEL_112;
                }

                if (LODWORD(v92[0]))
                {
                  v40 = _cg_GifLastError(PixelDataProviderAtIndex);
                  v41 = *(this + 96);
                  v42 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                  v39 = ColorQuantization::generateFromRGBImage(&v91, &dest, v40, v35, v41, v42, v92, v83, &v96);
                }

                else
                {
                  v46 = _cg_GifLastError(PixelDataProviderAtIndex);
                  v47 = *(this + 96);
                  v48 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                  v39 = ColorQuantization::generateFromRGBImageWu(&v91, &dest, v46, v35, v47, v48, v92, v83, &v96);
                }
              }

              else
              {
                v43 = _cg_GifLastError(PixelDataProviderAtIndex);
                v44 = *(this + 96);
                v45 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                v39 = ColorQuantization::generateFromGrayImage(&v91, &dest, v43, v35, v44, v45, v92, v83, &v96);
              }

              v49 = v39;
              free(v30);
              IIOColorSpace::~IIOColorSpace(&v87);
              IIOColorSpace::~IIOColorSpace(&v89);
              ColorQuantization::~ColorQuantization(&v91);
              if (v49)
              {
                DelayTime = GIFWritePlugin::getDelayTime(v50, theDict);
                if (*(this + 7))
                {
                  goto LABEL_73;
                }

                if (_cg_EGifPutScreenDesc(*(this + 5), v95, v94, SHIDWORD(v92[0]), 0, v92) == 1)
                {
                  if (!*(this + 7) && IIODictionary::containsKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}"))
                  {
                    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}");
                    v53 = Uint32ForKeyGroup;
                    v82 = 0;
                    if (Uint32ForKeyGroup << 16 == 0x10000 || (v54 = Uint32ForKeyGroup, Uint32ForKeyGroup < 0))
                    {
LABEL_73:
                      v57 = *(this + 96);
                      *(&dest.data + 1) = DelayTime;
                      v58 = v96;
                      if (!v57)
                      {
                        v58 = 0;
                      }

                      BYTE3(dest.data) = v58;
                      if (v57)
                      {
                        v59 = 8;
                      }

                      else
                      {
                        v59 = 4;
                      }

                      LOBYTE(dest.data) = v59 | v57;
                      v8 = "no";
                      if (_cg_EGifPutExtension(*(this + 5), 249, 4u, &dest) != 1)
                      {
LABEL_107:
                        v7 = 4294967246;
                        goto LABEL_113;
                      }

                      v60 = *(this + 7);
                      if (v82)
                      {
                        v61 = *(this + 5);
                        if (!v60)
                        {
                          v65 = v97;
                          v64 = v98;
                          v67 = v94;
                          v66 = v95;
                          v63 = 1;
                          goto LABEL_92;
                        }

                        v62 = *(v61 + 16);
                        if (v62)
                        {
                          v63 = !RGBColorMap::equalTo(v92, v62);
                          if (!*(this + 7))
                          {
                            goto LABEL_91;
                          }
                        }

                        else
                        {
                          v63 = 1;
                        }
                      }

                      else
                      {
                        v63 = 0;
                        if (!v60)
                        {
                          goto LABEL_91;
                        }
                      }

                      *(this + 97) = 0;
                      if (*(this + 96) == 1)
                      {
                        GIFWritePlugin::reduceFrame(this, v96, v83, v63, v92, 0, &v98, &v97, &v95, &v94);
                      }

                      else
                      {
                        GIFWritePlugin::reduceFrame(this, v96, v83, v63, v92, 1, &v98, &v97, &v95, &v94);
                      }

LABEL_91:
                      v61 = *(this + 5);
                      v65 = v97;
                      v64 = v98;
                      v67 = v94;
                      v66 = v95;
                      if (!v63)
                      {
                        v68 = 0;
                        goto LABEL_94;
                      }

LABEL_92:
                      v68 = v92;
LABEL_94:
                      v69 = _cg_EGifPutImageDesc(v61, v64, v65, v66, v67, 0, v68);
                      if ((gIIODebugFlags & 0x30000) != 0)
                      {
                        ImageIOLog("      optimized image frame: (%d, %d, %d, %d)\n", v64, v65, v66, v67);
                        if ((gIIODebugFlags & 0x30000) != 0)
                        {
                          v70 = "yes";
                          if (!v63)
                          {
                            v70 = "no";
                          }

                          ImageIOLog("         writeImageColorMap: %s\n", v70);
                        }
                      }

                      if (v69 == 1)
                      {
                        if (v65 >= v67 + v65)
                        {
                          v7 = 0;
                          v8 = "yes";
                          goto LABEL_113;
                        }

                        v71 = *(this + 8);
                        v72 = **(this + 13);
                        v73 = v64 + v71 * v65;
                        while (_cg_EGifPutLine(*(this + 5), &v83[v73], v66) == 1)
                        {
                          if (**(this + 13))
                          {
                            bzero((v72 + v73), v66);
                          }

                          v73 += v71;
                          if (!--v67)
                          {
                            v7 = 0;
                            v8 = "yes";
                            goto LABEL_113;
                          }
                        }
                      }

                      goto LABEL_107;
                    }

                    _cg_EGifPutExtensionLeader(*(this + 5), 255);
                    _cg_EGifPutExtensionBlock(*(this + 5), 0xBu, "NETSCAPE2.0");
                    v55 = v53 - (v54 > 1);
                    LOBYTE(dest.data) = 1;
                    BYTE1(dest.data) = v53 - (v54 > 1);
                    v56 = v55;
                    BYTE2(dest.data) = (v55 + (v55 >> 23)) >> 8;
                    _cg_EGifPutExtensionBlock(*(this + 5), 3u, &dest);
                    _cg_EGifPutExtensionTrailer(*(this + 5));
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("                 loop count: %d\n", v56);
                    }
                  }

                  v82 = 0;
                  goto LABEL_73;
                }

                GIFWritePlugin::writeSingleFrame();
              }

LABEL_112:
              v7 = 4294967246;
              v8 = "no";
              goto LABEL_113;
            }

            _cg_jpeg_mem_term("writeSingleFrame", 708, "*** ERROR: CGBitmapContextCreate returned NULL\n");
          }

          Ref = 0;
          goto LABEL_47;
        }

        Length = CFDataGetLength(v13);
        if (Length <= 770)
        {
          v16 = Length / 3;
        }

        else
        {
          v16 = 256;
        }

        v17 = *(this + 96);
        if (v16 >= 255)
        {
          v18 = 255;
        }

        else
        {
          v18 = v16;
        }

        if (*(this + 96))
        {
          v16 = v18;
        }

        LODWORD(v92[0]) = v16;
        if (v16 < 1)
        {
          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v101.length = 3 * v16;
          v101.location = 0;
          CFDataGetBytes(v13, v101, buffer);
          if (*(this + 96))
          {
LABEL_19:
            v19 = v92[0];
            v20 = &buffer[3 * SLODWORD(v92[0])];
            *v20 = 0;
            v20[2] = 0;
            v21 = v19 + 1;
            LODWORD(v92[0]) = v19 + 1;
LABEL_22:
            v22 = v21 - 1;
            if (v21 != 1)
            {
              v21 = 0;
              do
              {
                ++v21;
                v23 = v22 > 1;
                v22 >>= 1;
              }

              while (v23);
            }

            HIDWORD(v92[0]) = v21;
            goto LABEL_26;
          }
        }

        v21 = v92[0];
        goto LABEL_22;
      }
    }
  }

LABEL_113:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("           gifWrite-success: %s\n", v8);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v74 = _cg_GifLastError(*(this + 5));
      ImageIOLog("               GifLastError: %d\n\n", v74);
    }
  }

  if (v6)
  {
    v75 = *(this + 15);
    if (v75)
    {
      _cg_GifFreeMapObject(v75);
      *(this + 15) = _cg_GifMakeMapObject(v92[0], buffer);
    }

    v76 = *(this + 13);
    if (*v76)
    {
      free(v6);
    }

    else
    {
      *v76 = v6;
      v77 = v95;
      v78 = v94;
      v79 = *(this + 14);
      *v79 = 0;
      *(v79 + 8) = 0;
      *(v79 + 16) = v77;
      *(v79 + 24) = v78;
    }
  }

  return v7;
}

void sub_186081EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CGColorSpaceRef a24, uint64_t a25, CGColorSpaceRef a26, uint64_t a27, ...)
{
  va_start(va, a27);
  IIOColorSpace::~IIOColorSpace(&a24);
  IIOColorSpace::~IIOColorSpace(&a26);
  ColorQuantization::~ColorQuantization(va);
  _Unwind_Resume(a1);
}

uint64_t GIFWritePlugin::writeAllFramesWithGlobalColorMap(GIFWritePlugin *this)
{
  v77 = *MEMORY[0x1E69E9840];
  v75 = 0;
  bzero(v76, 0x300uLL);
  v74[0] = 0;
  v74[1] = 0;
  v74[2] = v76;
  v72 = 0;
  space = 0;
  IIOColorSpace::IIOColorSpace(&v72, *MEMORY[0x1E695F1C0]);
  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
  ContainerProperties = IIOWritePlugin::getContainerProperties(this);
  Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
  v63 = *(this + 11);
  v4 = *(this + 6) * v63;
  width = *(this + 10);
  data = malloc_type_calloc(v4 * 4 * width, 1uLL, 0x100004077774924uLL);
  if (!data)
  {
    v26 = 0;
    v25 = 0;
    goto LABEL_102;
  }

  AlphaInfo = CGImageGetAlphaInfo(Ref);
  if (*(this + 6) != 1)
  {
    if (AlphaInfo <= kCGImageAlphaNoneSkipFirst)
    {
      v6 = 1;
      if (((1 << AlphaInfo) & 0x54) != 0)
      {
        v8 = 0;
        v7 = 2;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 5;
  if (AlphaInfo <= kCGImageAlphaPremultipliedFirst)
  {
    if (AlphaInfo != kCGImageAlphaPremultipliedLast)
    {
      v8 = 0;
      if (AlphaInfo != kCGImageAlphaPremultipliedFirst)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_14:
    v6 = 1;
    v8 = 1;
    v7 = 1;
    goto LABEL_15;
  }

  if (AlphaInfo == kCGImageAlphaLast)
  {
    goto LABEL_14;
  }

  if (AlphaInfo == kCGImageAlphaFirst)
  {
LABEL_13:
    v8 = 0;
    v7 = 2;
    v6 = 1;
    goto LABEL_15;
  }

  v8 = 0;
  if (AlphaInfo == kCGImageAlphaNoneSkipFirst)
  {
    v6 = 0;
    v8 = 0;
    v7 = 6;
  }

LABEL_15:
  *(this + 96) = v6;
  v9 = CGBitmapContextCreate(data, width, v4, 8uLL, 4 * width, space, v7);
  v10 = v9;
  if (v9)
  {
    v11 = width;
    v78.size.height = v4;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = width;
    CGContextClearRect(v9, v78);
    v12 = *(this + 6);
    if (v12)
    {
      v13 = 0;
      x = 0.0;
      v15 = -1;
      y = 0.0;
      height = v63;
      do
      {
        v18 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v12 + v15);
        v19 = IIOImageSource::imageReadRef(v18);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("drawing image %d\n", v13);
        }

        v79.origin.x = x;
        v79.origin.y = y;
        v79.size.width = v11;
        v79.size.height = height;
        CGContextDrawImage(v10, v79, v19);
        v80.origin.x = x;
        v80.origin.y = y;
        v80.size.width = v11;
        v80.size.height = height;
        v81 = CGRectOffset(v80, 0.0, v63);
        x = v81.origin.x;
        y = v81.origin.y;
        v11 = v81.size.width;
        height = v81.size.height;
        ++v13;
        v12 = *(this + 6);
        --v15;
      }

      while (v13 < v12);
    }

    CGContextRelease(v10);
  }

  else
  {
    _cg_jpeg_mem_term("writeAllFramesWithGlobalColorMap", 1148, "*** ERROR: CGBitmapContextCreate returned NULL\n");
  }

  v71 = 0;
  ColorQuantization::ColorQuantization(&v71);
  dest.data = data;
  dest.height = v4;
  dest.width = width;
  dest.rowBytes = 4 * width;
  if (*(this + 96) == 1 && (!v8 ? (vImageUnpremultiplyData_ARGB8888(&dest, &dest, 0), v20 = 0) : (vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0), v20 = 3), dest.height))
  {
    v21 = 0;
    v22 = dest.data + v20;
    v66 = 1;
    do
    {
      if (dest.width)
      {
        v23 = &v22[dest.rowBytes * v21];
        v24 = dest.width;
        while (*v23 == 255)
        {
          v23 += 4;
          if (!--v24)
          {
            goto LABEL_35;
          }
        }

        v66 = 0;
      }

LABEL_35:
      ++v21;
    }

    while (v21 != dest.height);
  }

  else
  {
    v66 = 1;
  }

  *(this + 8) = width;
  *(this + 9) = v4;
  v25 = malloc_type_malloc(width + width * v4, 0x100004077774924uLL);
  if (!v25 || (ColorQuantization::generateFromRGBImageWu(&v71, &dest, 8, v7, *(this + 96), space, v74, v25, &v75) & 1) == 0)
  {
    ColorQuantization::~ColorQuantization(&v71);
    v26 = 0;
LABEL_102:
    v57 = 4294967246;
    v58 = "no";
    goto LABEL_87;
  }

  ColorQuantization::~ColorQuantization(&v71);
  v26 = malloc_type_malloc(width, 0x100004077774924uLL);
  *(this + 9) = v63;
  *(this + 7) = 0;
  if (!*(this + 6))
  {
LABEL_86:
    v57 = 0;
    v58 = "yes";
LABEL_87:
    v61 = v58;
    goto LABEL_90;
  }

  v27 = 0;
  v65 = v25;
  v61 = "no";
  while (1)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("####################################################################\n", v27);
      v27 = *(this + 7);
    }

    PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v27);
    ObjectForKey = IIODictionary::getObjectForKey(PropertiesAtIndex, @"{GIF}");
    DelayTime = GIFWritePlugin::getDelayTime(ObjectForKey, ObjectForKey);
    if (!*(this + 7))
    {
      if (_cg_EGifPutScreenDesc(*(this + 5), width, v63, SHIDWORD(v74[0]), 0, v74) != 1)
      {
        goto LABEL_88;
      }

      if (IIODictionary::containsKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}");
        v32 = Uint32ForKeyGroup;
        if (Uint32ForKeyGroup << 16 != 0x10000)
        {
          v33 = Uint32ForKeyGroup;
          if ((Uint32ForKeyGroup & 0x80000000) == 0)
          {
            _cg_EGifPutExtensionLeader(*(this + 5), 255);
            _cg_EGifPutExtensionBlock(*(this + 5), 0xBu, "NETSCAPE2.0");
            v34 = v32 - (v33 > 1);
            LOBYTE(dest.data) = 1;
            v35 = v34;
            BYTE1(dest.data) = v34;
            BYTE2(dest.data) = (v34 + (v34 >> 23)) >> 8;
            _cg_EGifPutExtensionBlock(*(this + 5), 3u, &dest);
            _cg_EGifPutExtensionTrailer(*(this + 5));
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("                 loop count: %d\n", v35);
            }
          }
        }
      }
    }

    v36 = *(this + 96);
    *(&dest.data + 1) = DelayTime;
    v37 = v75;
    if (!v36)
    {
      v37 = 0;
    }

    BYTE3(dest.data) = v37;
    v38 = v36 ^ 1 | v66;
    if (v38)
    {
      v39 = 4;
    }

    else
    {
      v39 = 8;
    }

    LOBYTE(dest.data) = v39 | v36;
    if (_cg_EGifPutExtension(*(this + 5), 249, 4u, &dest) != 1)
    {
LABEL_88:
      v57 = 4294967246;
      goto LABEL_90;
    }

    v71 = 0;
    v69 = width;
    dest.data = 0;
    v68 = *(this + 11);
    *(this + 97) = 1;
    if (*(this + 7))
    {
      GIFWritePlugin::reduceFrame(this, v75, v25, 0, v74, v66 & 1u | ((*(this + 96) & 1) == 0), &v71, &dest, &v69, &v68);
    }

    v40 = v71;
    v42 = v69;
    v41 = dest.data;
    v43 = v68;
    v44 = _cg_EGifPutImageDesc(*(this + 5), v71, dest.data, v69, v68, 0, 0);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("      optimized image frame: (%d, %d, %d, %d)\n", v40, v41, v42, v43);
    }

    if (v44 != 1)
    {
      break;
    }

    if (v42 + v40 > width)
    {
      v42 = width - v40;
      v69 = width - v40;
    }

    v45 = (v43 + v41);
    v46 = *(this + 11);
    if (v43 + v41 > v46)
    {
      v42 = v46 - v41;
      v69 = v46 - v41;
    }

    if (v41 < v45)
    {
      v47 = *(this + 7);
      v48 = *(this + 8);
      v49 = v40 + v48 * v41;
      v50 = (**(this + 13) + v49);
      v51 = v48 * v46;
      if ((*(this + 97) & (v47 != 0)) != 0)
      {
        v52 = &v65[(v47 - 1) * v51 + v49];
      }

      else
      {
        v52 = 0;
      }

      v53 = &v65[v47 * v51 + v49];
      do
      {
        v54 = v53;
        if (((v52 != 0) & v38) == 1)
        {
          memcpy(v26, v53, v42);
          v54 = v26;
          if (v42)
          {
            v55 = 0;
            do
            {
              if (v53[v55] == v52[v55])
              {
                *(v26 + v55) = v75;
              }

              ++v55;
            }

            while (v42 > v55);
            v54 = v26;
          }
        }

        if (_cg_EGifPutLine(*(this + 5), v54, v42) != 1)
        {
          goto LABEL_89;
        }

        if (**(this + 13))
        {
          bzero(v50, v42);
        }

        if (v52)
        {
          v52 += v48;
        }

        else
        {
          v52 = 0;
        }

        ++v41;
        v53 += v48;
        v50 += v48;
      }

      while (v41 != v45);
    }

    v56 = *(this + 6);
    v27 = *(this + 7) + 1;
    *(this + 7) = v27;
    v25 = v65;
    if (v27 >= v56)
    {
      goto LABEL_86;
    }
  }

LABEL_89:
  v57 = 4294967246;
  v61 = "no";
  v25 = v65;
LABEL_90:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("           gifWrite-success: %s\n", v61);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      Error = _cg_GifLastError(*(this + 5));
      ImageIOLog("               GifLastError: %d\n\n", Error);
    }
  }

  if (data)
  {
    free(data);
  }

  if (v25)
  {
    free(v25);
  }

  if (v26)
  {
    free(v26);
  }

  IIOColorSpace::~IIOColorSpace(&v72);
  return v57;
}

void sub_1860827EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CGColorSpaceRef a29)
{
  ColorQuantization::~ColorQuantization(&a28);
  IIOColorSpace::~IIOColorSpace(&a29);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::loadDataFromXPCObject(HEIFReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_heif", &length);
    if (length == 88)
    {
      v6 = data[1];
      *(this + 29) = *data;
      *(this + 30) = v6;
      v7 = data[2];
      v8 = data[3];
      v9 = data[4];
      *(this + 68) = *(data + 10);
      *(this + 32) = v8;
      *(this + 33) = v9;
      *(this + 31) = v7;
      string = xpc_dictionary_get_string(a2, "iio_xpc_plugin_data_heif_req_cs");
      if (string && *string)
      {
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *(this + 68) = v11;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t HEIFReadPlugin::saveDataToXPCObject(const void **this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_heif", this + 58, 0x58uLL);
    memset(v7, 0, sizeof(v7));
    IIOString::IIOString(v7, this[68]);
    v5 = IIOString::utf8String(v7);
    xpc_dictionary_set_string(a2, "iio_xpc_plugin_data_heif_req_cs", v5);
    IIOString::~IIOString(v7);
  }

  return v4;
}

void sub_186082A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getExpectedWidthAndHeightForSubsampling(HEIFReadPlugin *this, const __CFData *a2, uint64_t a3, unint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  IIODictionary::IIODictionary(&v27);
  cf = 0;
  v26 = 0;
  if (!a2)
  {
    _cg_jpeg_mem_term("getExpectedWidthAndHeightForSubsampling", 212, "*** ERROR: getExpectedWidthAndHeightForSubsampling called with NULL-data\n");
LABEL_19:
    ImageGeometryForIndexWithOptions = 0;
    goto LABEL_20;
  }

  ImageGeometryForIndexWithOptions = IIOCreateCMPhotoDecompressionSession(&v31);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 217, "*** ERROR: CMPhotoDecompressionSessionCreate failed\n");
    goto LABEL_20;
  }

  ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionSessionCreateContainer(v31, 0, a2, 0, &v30);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 224, "*** ERROR: CMPhotoDecompressionSessionCreateContainer failed\n");
    goto LABEL_20;
  }

  v23 = 0;
  v24 = 0;
  ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v30, a3, 0, &v24, &v23, 0);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 235, "*** ERROR: CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions failed\n");
  }

  else
  {
    if (v24 / a4 <= v23 / a4)
    {
      v13 = v23 / a4;
    }

    else
    {
      v13 = v24 / a4;
    }

    if (IIODictionary::containsKey(*(this + 6), @"kCGImageDestinationImageMaxPixelSize"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageDestinationImageMaxPixelSize");
      if (v13 > Uint32ForKey)
      {
        LODWORD(v13) = (Uint32ForKey & 0xFFFFFFF0) + 64;
        *(this + 368) = 1;
      }
    }

    ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions(v30, a3, 0, &cf);
    if (!ImageGeometryForIndexWithOptions)
    {
      if (cf)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        IIOArray::IIOArray(&v20, cf);
        Uint32AtIndex = IIOArray::getUint32AtIndex(&v20, 0);
        PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(this, Uint32AtIndex, v16);
        IIONumber::IIONumber(v19, PixelFormatForBitDepth);
        IIODictionary::setObjectForKey(&v27, v19, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(v19);
        CFRelease(cf);
        IIOArray::~IIOArray(&v20);
      }

      IIONumber::IIONumber(&v20, v13);
      IIODictionary::setObjectForKey(&v27, &v20, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
      IIONumber::~IIONumber(&v20);
      IIONumber::IIONumber(&v20, *(this + 127));
      IIODictionary::setObjectForKey(&v27, &v20, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
      IIONumber::~IIONumber(&v20);
      ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(v30, a3, v28, &v26);
      if (ImageGeometryForIndexWithOptions)
      {
        LogError("getExpectedWidthAndHeightForSubsampling", 277, "*** ERROR: CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex failed\n");
        goto LABEL_20;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      IIODictionary::IIODictionary(&v20, v26);
      *a5 = IIODictionary::getUint32ForKey(&v20, *gIIO_kCVPixelBufferWidthKey);
      *a6 = IIODictionary::getUint32ForKey(&v20, *gIIO_kCVPixelBufferHeightKey);
      IIODictionary::~IIODictionary(&v20);
      goto LABEL_19;
    }

    LogError("getExpectedWidthAndHeightForSubsampling", 253, "*** ERROR: CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions failed\n");
  }

LABEL_20:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  IIODictionary::~IIODictionary(&v27);
  return ImageGeometryForIndexWithOptions;
}

void sub_186082E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getPixelFormatForBitDepth(HEIFReadPlugin *this, unsigned int a2, IIODictionary *a3)
{
  v4 = *(this + 85);
  if (v4 == 1196573017)
  {
    if (*(this + 528))
    {
      v7 = 843264056;
    }

    else
    {
      v7 = 1278226488;
    }

    if (a2 <= 8)
    {
      return v7;
    }

    else
    {
      return v7 + 254;
    }
  }

  else if (v4 == 1380401696)
  {
    if (a2 == 10)
    {
      v5 = 1815162994;
    }

    else
    {
      v5 = 1815491698;
    }

    if (a2 >= 9)
    {
      return v5;
    }

    else
    {
      return 1111970369;
    }
  }

  else
  {
    if ((v4 >> 24) > 0x7F)
    {
      __maskrune(v4 >> 24, 0x40000uLL);
      v4 = *(this + 85);
    }

    v8 = v4 << 8 >> 24;
    if (v8 > 0x7F)
    {
      __maskrune(v8, 0x40000uLL);
      v4 = *(this + 85);
    }

    v9 = v4 >> 8;
    if (v9 > 0x7F)
    {
      __maskrune(v9, 0x40000uLL);
      v4 = *(this + 85);
    }

    if (v4 > 0x7F)
    {
      __maskrune(v4, 0x40000uLL);
    }

    v6 = 1111970369;
    _cg_jpeg_mem_term("getPixelFormatForBitDepth", 1378, "*** getPixelFormatForBitDepth - unexpected colorModel: '%c%c%c%c' [0x%08x]- using icSigRgbData with 'BGRA'\n");
    *(this + 85) = 1380401696;
  }

  return v6;
}

uint64_t HEIFReadPlugin::handleDecodeRequest(HEIFReadPlugin *this, IIODictionary *a2, void **a3)
{
  if ((*(this + 382) & 1) != 0 || *(this + 383) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"kCGImageSourceDecodeRequestOptions");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    IIODictionary::IIODictionary(&v58, ObjectForKey, 1);
    if (*(this + 383) != 1)
    {
      if (*(this + 382) != 1)
      {
        goto LABEL_114;
      }

      v9 = *(this + 20);
      if (!v9 || !CGColorSpaceUsesITUR_2100TF(v9) && !CGColorSpaceUsesExtendedRange(*(this + 20)))
      {
        goto LABEL_114;
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  decodeRequest: 'kCGImageSourceDecodeToSDR'\n");
      }

      *(this + 260) = 256;
      *(this + 524) = 0;
      *(this + 192) = 0;
      v10 = 1;
LABEL_38:
      cf = 0;
      v18 = *(this + 20);
      if (v18)
      {
        IIODictionary::setObjectForKey(a3, v18, *gIIO_kCVImageBufferCGColorSpaceKey);
      }

      v19 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v19, *(this + 133));
      HEIFAlternateImageAtIndex = HEIFMainImage::getHEIFAlternateImageAtIndex(HEIFMainImageAtIndex, *(this + 133));
      if (HEIFAlternateImageAtIndex)
      {
        Metadata = IIOImagePlus::getMetadata(HEIFAlternateImageAtIndex);
        if (Metadata)
        {
          IIODictionary::setObjectForKey(&v58, Metadata, @"kCGFlexRangeAlternateColorSpace");
        }
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallCreatePixelBufferAttributesForHDRType'\n");
      }

      if (*(this + 528) == 1)
      {
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  image has alpha plane --> pixelformat 'l64r'\n");
        }

        IIONumber::IIONumber(&v55, 1815491698);
        IIODictionary::setObjectForKey(&v58, value, @"kCGTargetPixelFormat");
        IIONumber::~IIONumber(&v55);
      }

      v23 = IIOCallCreatePixelBufferAttributesForHDRType(v10, a3[1], v59, &cf);
      v24 = v23;
      if (v23)
      {
        v25 = IIOCMErrorString(v23);
        LogError("handleDecodeRequest", 412, "*** ERROR: Cannot decode to SDR: err = %s [%d]\n", v25, v24);
      }

      if (!cf)
      {
        goto LABEL_114;
      }

      v55 = 0;
      v56 = 0;
      value = 0;
      IIODictionary::IIODictionary(&v55, cf);
      Uint32ForKey = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferPixelFormatTypeKey);
      v27 = Uint32ForKey;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v28 = Uint32ForKey >> 24;
        if ((Uint32ForKey >> 24) <= 0x7F)
        {
          v29 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
        }

        else
        {
          v29 = __maskrune(Uint32ForKey >> 24, 0x40000uLL);
        }

        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 46;
        }

        v31 = v27 << 8 >> 24;
        if (v31 <= 0x7F)
        {
          v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
        }

        else
        {
          v32 = __maskrune(v27 << 8 >> 24, 0x40000uLL);
        }

        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 46;
        }

        v34 = v27 >> 8;
        if (v34 <= 0x7F)
        {
          v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(v27 >> 8, 0x40000uLL);
        }

        if (v27 <= 0x7F)
        {
          v36 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
        }

        else
        {
          v36 = __maskrune(v27, 0x40000uLL);
        }

        if (v35)
        {
          v37 = v34;
        }

        else
        {
          v37 = 46;
        }

        if (v36)
        {
          v38 = v27;
        }

        else
        {
          v38 = 46;
        }

        ImageIOLog("☀️  requestedPixelFormat: '%c%c%c%c'   %s:%d\n", v30, v33, v37, v38, "handleDecodeRequest", 418);
      }

      v39 = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferWidthKey);
      v40 = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferHeightKey);
      v41 = IIODictionary::getObjectForKey(&v55, *gIIO_kCVImageBufferCGColorSpaceKey);
      v42 = IIODictionary::getObjectForKey(&v55, *gIIO_kCVImageBufferYCbCrMatrixKey);
      FloatForKey = IIODictionary::getFloatForKey(&v55, @"IOSurfaceContentHeadroom");
      *(this + 116) = v27;
      v44 = CGColorSpaceCopyName(v41);
      *(this + 68) = v44;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        IIOString::IIOString(v53, v44);
        v45 = IIOString::utf8String(v53);
        ImageIOLog("☀️  requestedColorSpace: '%s'\n", v45);
        IIOString::~IIOString(v53);
      }

      if (v41)
      {
        CGColorSpaceRelease(*(this + 20));
        *(this + 20) = CFRetain(v41);
      }

      if (FloatForKey > 0.0)
      {
        *(this + 46) = FloatForKey;
        *(this + 118) = FloatForKey;
      }

      *(this + 525) = IIODictionary::getBoolForKey(&v58, @"kCGDisableMetal");
      if (v42)
      {
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          IIOString::IIOString(v53, v42);
          v46 = IIOString::utf8String(v53);
          ImageIOLog("☀️  requestedYCCMatrix: '%s'\n", v46);
          IIOString::~IIOString(v53);
        }

        if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4, 0))
        {
          if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_709_2, 0))
          {
            if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020, 0))
            {
              goto LABEL_94;
            }

            v47 = 3;
          }

          else
          {
            v47 = 2;
          }
        }

        else
        {
          v47 = 1;
        }

        *(this + 117) = v47;
      }

LABEL_94:
      v48 = (this + 294);
      *(this + 69) = v39;
      *(this + 70) = v40;
      if (v27 > 2019963439)
      {
        if (v27 != 2019963440 && v27 != 2019963442 && v27 != 2019963956)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v27 == 1380411457)
        {
          *(this + 72) = 4194320;
          *(this + 146) = 4;
          if (*(this + 528) == 1)
          {
            v49 = 16777475;
          }

          else
          {
            v49 = 16777477;
          }

          goto LABEL_112;
        }

        if (v27 != 1815162994)
        {
          if (v27 == 1815491698)
          {
            *(this + 72) = 4194320;
            *(this + 146) = 4;
            if (*(this + 528) == 1)
            {
              v49 = 259;
            }

            else
            {
              v49 = 261;
            }

LABEL_112:
            *v48 = v49;
            v50 = 8;
            goto LABEL_113;
          }

LABEL_106:
          *(this + 72) = 2097160;
          *(this + 146) = 4;
          if (*(this + 528) == 1)
          {
            v51 = 3;
          }

          else
          {
            v51 = 5;
          }

          *v48 = v51;
          v50 = 4;
          goto LABEL_113;
        }
      }

      *(this + 72) = 2097162;
      v50 = 4;
      *(this + 146) = 4;
      *v48 = 197126;
      *(this + 80) = 2097162;
      *(this + 162) = 4;
      *(this + 326) = 197126;
LABEL_113:
      *(this + 71) = (v39 * v50 + 15) & 0xFFFFFFF0;
      *(this + 378) = 1;
      CFRelease(cf);
      IIODictionary::~IIODictionary(&v55);
LABEL_114:
      IIODictionary::~IIODictionary(&v58);
      return 0;
    }

    if ((*(this + 523) & 1) == 0 && *(this + 522) != 1)
    {
      v10 = 0;
      v14 = 1;
      goto LABEL_33;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  decodeRequest: 'kCGImageSourceDecodeToHDR'\n");
    }

    *(this + 260) = 1;
    if (IIODictionary::containsKey(&v58, @"kCGTargetHeadroom"))
    {
      v7 = IIODictionary::getFloatForKey(&v58, @"kCGTargetHeadroom");
      *(this + 119) = v7;
      v8 = v7;
    }

    else
    {
      *(this + 119) = 0;
      v8 = 0.0;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  %s - _gainMapHeadroom: %g\n", "handleDecodeRequest", v8);
    }

    v11 = IIODictionary::containsKey(&v58, @"kCGFallbackHDRGain");
    v12 = 0.0;
    if (v11)
    {
      v12 = IIODictionary::getFloatForKey(&v58, @"kCGFallbackHDRGain");
    }

    *(this + 120) = v12;
    if (IIODictionary::containsKey(&v58, @"kCGGenerateFlexGTC"))
    {
      BoolForKey = IIODictionary::getBoolForKey(&v58, @"kCGGenerateFlexGTC");
    }

    else
    {
      if (!IIODictionary::containsKey(&v58, @"kCGImageSourceGenerateImageSpecificLumaScaling"))
      {
        *(this + 524) = 1;
        goto LABEL_29;
      }

      BoolForKey = IIODictionary::getBoolForKey(&v58, @"kCGImageSourceGenerateImageSpecificLumaScaling");
    }

    *(this + 524) = BoolForKey;
LABEL_29:
    if (IIODictionary::getBoolForKey(a2, @"kCGImageSourceCreateThumbnailWithTransform"))
    {
      Position = IIOImageWriteSession::getPosition(this);
      TagWithPath = CGImageMetadataGetTagWithPath(Position, 0, @"tiff:Orientation");
      v17 = CGImageMetadataTagGetValue(TagWithPath);
      v55 = 0;
      v56 = 0;
      value = 0;
      IIONumber::IIONumber(&v55, v17);
      *(this + 126) = IIONumber::uint32Num(&v55);
      IIONumber::~IIONumber(&v55);
      v14 = 0;
    }

    else
    {
      v14 = 0;
      *(this + 126) = 1;
    }

    v10 = 2;
LABEL_33:
    if (IIODictionary::containsKey(&v58, @"kCGComputeHDRStats"))
    {
      *(this + 192) = IIODictionary::getBoolForKey(&v58, @"kCGComputeHDRStats");
      *(this + 525) = IIODictionary::getBoolForKey(&v58, @"kCGDisableMetal");
    }

    else
    {
      *(this + 192) = 1;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  kCGComputeHDRStats was not specified - temporary setting _computeHDRStats to true\n");
      }
    }

    if (v14)
    {
      goto LABEL_114;
    }

    goto LABEL_38;
  }

  return 0;
}

void sub_18608393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getDecodePixelFormatForBitDepth(HEIFReadPlugin *this, int a2)
{
  v2 = *(this + 85);
  if (v2 == 1196573017)
  {
    if (*(this + 528))
    {
      v3 = 843264056;
    }

    else
    {
      v3 = 1278226488;
    }

    v4 = v3 + 254;
  }

  else
  {
    if (v2 != 1380401696)
    {
      v5 = 0;
      goto LABEL_17;
    }

    if (*(this + 528))
    {
      v3 = 1111970369;
    }

    else
    {
      v3 = 875704422;
    }

    if (*(this + 528))
    {
      v4 = 1815491698;
    }

    else
    {
      v4 = 2019963440;
    }
  }

  if (a2 == 10)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

LABEL_17:
  _cg_jpeg_mem_term("getDecodePixelFormatForBitDepth", 1428, "*** getDecodePixelFormatForBitDepth[%d] --> '%c%c%c%c'\n");
  return v5;
}

void HEIFReadPlugin::updateCreateImageOptions(HEIFReadPlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  v6 = *(this + 57);
  if (*(this + 232) <= 1u && v6 == 0)
  {
    if (!*(this + 166))
    {
      goto LABEL_19;
    }

    v8 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
    HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v8, *(this + 133));
    if (*(this + 368) == 1)
    {
      v10 = *(this + 77);
      if (v10)
      {
        v11 = *(this + 78);
      }

      else
      {
        v10 = *(this + 61);
        v11 = *(this + 62);
      }

      if (v10 <= v11)
      {
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    else
    {
      v12 = HEIFMainImageAtIndex;
      v13 = HEIFMainImage::width(HEIFMainImageAtIndex) / *(this + 166);
      if (v13 <= HEIFMainImage::height(v12) / *(this + 166))
      {
        v14 = HEIFMainImage::height(v12);
      }

      else
      {
        v14 = HEIFMainImage::width(v12);
      }

      v6 = v14 / *(this + 166);
    }
  }

  IIONumber::IIONumber(v17, v6);
  IIODictionary::setObjectForKey(a2, v17, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
  IIONumber::~IIONumber(v17);
  IIONumber::IIONumber(v17, *(this + 127));
  IIODictionary::setObjectForKey(a2, v17, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
  IIONumber::~IIONumber(v17);
LABEL_19:
  BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
  v16 = MEMORY[0x1E695E4D0];
  if (!BoolForKey)
  {
    v16 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(a2, *v16, *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
}

void sub_186083CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFReadPlugin::updateHardwareDecodeOptions(IIODictionary **this, IIODictionary *a2, const __CFDictionary **a3)
{
  v6 = IIO_HardwareDecoderDefaultValue(this, a2);
  EnableRestrictedDecodingFlag = HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, a3);
  if (EnableRestrictedDecodingFlag)
  {
    if (!gFunc_VTAreVideoDecodersRunningInProcess())
    {
      LogError("updateHardwareDecodeOptions", 1470, "*** ERROR: kCGImageSourceEnableRestrictedDecoding was requested, but VTRestrictVideoDecoders() was not called.\n");
    }

    IIODictionary::setObjectForKey(a2, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("***************************************************************\n");
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("*** kCMPhotoDecompressionOption_RestrictedDecoding enabled ***\n");
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("***************************************************************\n");
        }
      }
    }

    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  if (v6 == 255)
  {
    if (IIODictionary::containsKey(a3, @"kCGImageSourceUseHardwareAcceleration"))
    {
      EnableRestrictedDecodingFlag = IIODictionary::getBoolForKey(a3, @"kCGImageSourceUseHardwareAcceleration");
      if (!EnableRestrictedDecodingFlag)
      {
LABEL_21:
        if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(EnableRestrictedDecodingFlag, v8))
        {
          ImageIOLog("••• UseHardwareAcceleration: ❌  | %s:%d\n", "updateHardwareDecodeOptions", 1517);
        }

        IIONumber::IIONumber(v24, 1);
        IIODictionary::setObjectForKey(a2, v24, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
        goto LABEL_25;
      }

      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = -1;
    }
  }

  EnableRestrictedDecodingFlag = IIOHardwareDecodingEnabledFlag();
  if (!EnableRestrictedDecodingFlag || !v6)
  {
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    v11 = *(this + 55);
    if (v11 == 1096173907 || v11 == 1096173894)
    {
      if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(EnableRestrictedDecodingFlag, v8))
      {
        v12 = *(this + 55);
        v13 = v12 >> 24;
        if ((v12 >> 24) <= 0x7F)
        {
          v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
        }

        else
        {
          v14 = __maskrune(v13, 0x40000uLL);
          v12 = *(this + 55);
        }

        if (v14)
        {
          v15 = (v12 >> 24);
        }

        else
        {
          v15 = 46;
        }

        v16 = v12 << 8 >> 24;
        if (v16 <= 0x7F)
        {
          v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
        }

        else
        {
          v17 = __maskrune(v16, 0x40000uLL);
          v12 = *(this + 55);
        }

        if (v17)
        {
          v18 = (v12 << 8 >> 24);
        }

        else
        {
          v18 = 46;
        }

        v19 = v12 >> 8;
        if (v19 <= 0x7F)
        {
          v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
        }

        else
        {
          v20 = __maskrune(v19, 0x40000uLL);
          v12 = *(this + 55);
        }

        if (v20)
        {
          v21 = (v12 >> 8);
        }

        else
        {
          v21 = 46;
        }

        if (v12 <= 0x7F)
        {
          v22 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
        }

        else
        {
          v22 = __maskrune(v12, 0x40000uLL);
        }

        if (v22)
        {
          v23 = *(this + 220);
        }

        else
        {
          v23 = 46;
        }

        ImageIOLog("••• UseHardwareAcceleration: not set (%c%c%c%c)  | %s:%d\n", v15, v18, v21, v23, "updateHardwareDecodeOptions", 1507);
      }
    }

    else if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(EnableRestrictedDecodingFlag, v8))
    {
      ImageIOLog("••• UseHardwareAcceleration: ✅  | %s:%d\n", "updateHardwareDecodeOptions", 1511);
    }

    IIONumber::IIONumber(v24, 0);
    IIODictionary::setObjectForKey(a2, v24, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
LABEL_25:
    IIONumber::~IIONumber(v24);
    goto LABEL_26;
  }

  if (v6 == 255)
  {
    IIONumber::IIONumber(v24, 0);
    IIODictionary::setObjectForKey(a2, v24, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
    IIONumber::~IIONumber(v24);
    if ((gIIODebugFlags & 0x4000000000000) != 0)
    {
      if (IIO_OSAppleInternalBuild(v9, v10))
      {
        ImageIOLog("••• UseHardwareAcceleration: not set  | %s:%d\n");
      }
    }
  }

LABEL_26:
  BREAK_ON_RESTRICTED_CHECK(*(this[6] + 1), a3[1]);
}

void sub_18608411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CFTypeRef HEIFReadPlugin::copyAuxiliaryDataInfo(HEIFReadPlugin *this, unsigned int a2, const __CFString *a3, IIODictionary *a4)
{
  v74 = 0;
  v75 = 0;
  v73 = 0;
  EnableRestrictedDecodingFlag = HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, a4);
  IIO_LoadHEIFSymbols();
  v9 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v9, *(this + 133));
  if (!HEIFMainImageAtIndex)
  {
    goto LABEL_20;
  }

  v11 = HEIFMainImageAtIndex;
  v72 = 0;
  Options = IIOImagePlus::getOptions(*(this + 2));
  v12 = IIOCreateCMPhotoDecompressionSession(&v74);
  v13 = v12;
  if (v12)
  {
    v14 = IIOCMErrorString(v12);
    LogError("copyAuxiliaryDataInfo", 1602, "*** ERROR: IIOCreateCMPhotoDecompressionSession err: %s [%d]\n", v14, v13);
  }

  if (!v74)
  {
LABEL_20:
    v26 = 0;
    v19 = 0;
    goto LABEL_62;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  v16 = IIOImageReadSession::retainBytePointer(*(this + 3), &v75, 1);
  if (!v16)
  {
    HEIFReadPlugin::copyAuxiliaryDataInfo();
    v19 = 0;
    goto LABEL_47;
  }

  v17 = v16;
  v18 = *(this + 61);
  if (v18)
  {
    if (*(this + 62))
    {
      Size = *(this + 62);
    }

    else
    {
      v18 = 0;
    }

    v17 = v16 + v18;
  }

  v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
  if (v19)
  {
    v20 = gFunc_CMPhotoDecompressionSessionCreateContainer(v74, 0, v19, &v72, &v73);
    v13 = v20;
    if (v20)
    {
      v21 = IIOCMErrorString(v20);
      LogError("copyAuxiliaryDataInfo", 1628, "*** ERROR: CMPhotoDecompressionSessionCreateContainer err: %s [%d]\n", v21, v13);
    }
  }

  if (a2 == 98)
  {
    if (!HEIFGroupItem::getStereoAggressorCount(v11))
    {
      goto LABEL_47;
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    IIODictionary::IIODictionary(&v69);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    IIODictionary::IIODictionary(&v66);
    IIONumber::IIONumber(theDict, 6);
    IIODictionary::setObjectForKey(&v66, value, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode);
    IIONumber::~IIONumber(theDict);
    v22 = *MEMORY[0x1E695E4D0];
    IIODictionary::setObjectForKey(&v66, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer);
    IIODictionary::setObjectForKey(&v69, v67, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions);
    if (EnableRestrictedDecodingFlag)
    {
      IIODictionary::setObjectForKey(&v69, v22, *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
    }

    v63 = 0;
    v23 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v73, *(this + 133), v70, 5, &v63);
    v24 = v23;
    if (v23)
    {
      v25 = IIOCMErrorString(v23);
      LogError("copyAuxiliaryDataInfo", 1651, "*** ERROR: CMPhotoDecompressionContainerCreateImageForIndex err: %s [%d]\n", v25, v24);
      v26 = 0;
    }

    else
    {
      theDict[0] = 0;
      theDict[1] = 0;
      value = 0;
      IIODictionary::IIODictionary(theDict, v63);
      ObjectForKey = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap);
      v44 = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata);
      v62 = 0;
      CGImageCreateFlexRangeMetadata(v44, &v62);
      cf = 0;
      v60 = 0;
      v61 = 0;
      IIODictionary::IIODictionary(&cf);
      HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(v45, ObjectForKey, v62, a4, &cf);
      v26 = CFRetain(v60);
      v46 = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace);
      if (v46)
      {
        IIODictionary::setObjectForKey(&cf, v46, @"kCGImageAuxiliaryDataInfoColorSpace");
      }

      if (IIODictionary::getBoolForKey(a4, @"kCGImageAuxiliaryDataIncludeMeteorPlusMetadata"))
      {
        v58 = 0;
        v57 = -1;
        gFunc_CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions(v73, *(this + 133), 0, 4, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, &v58, &v57);
        if (v58)
        {
          v56 = 0;
          gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(v73, *(this + 133), v57, 0, &v56);
          IIODictionary::setObjectForKey(&cf, v56, @"kCGImageAuxiliaryDataInfoMeteorPlusMetadata");
          if (v56)
          {
            CFRelease(v56);
          }
        }
      }

      if (v62)
      {
        CFRelease(v62);
      }

      IIODictionary::~IIODictionary(&cf);
      IIODictionary::~IIODictionary(theDict);
    }

    if (v63)
    {
      CFRelease(v63);
    }

    IIODictionary::~IIODictionary(&v66);
    IIODictionary::~IIODictionary(&v69);
    goto LABEL_60;
  }

  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v11);
  v66 = 0;
  if (!NumberOfAuxImages)
  {
    goto LABEL_47;
  }

  v54 = a4;
  v28 = 0;
  v29 = NumberOfAuxImages;
  v30 = Options;
  do
  {
    HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v11, v28);
    if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) != a2)
    {
      goto LABEL_38;
    }

    if (a2 < 4)
    {
      v37 = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation(v73, *(this + 133), v28, *(v30 + 8), &v66);
LABEL_35:
      v13 = v37;
      goto LABEL_36;
    }

    v32 = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
    if (!a3 || !v32)
    {
      goto LABEL_36;
    }

    if (CFStringCompare(a3, v32, 0))
    {
      goto LABEL_38;
    }

    if (a2 != 99)
    {
      theDict[0] = 0;
      v49 = v73;
      v52 = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex;
      v38 = *(this + 133);
      v39 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
      v30 = Options;
      v37 = v52(v49, v38, v39, *(Options + 8), 2, theDict);
      if (theDict[0])
      {
        cf = 0;
        v50 = v73;
        v53 = gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions;
        v40 = *(this + 133);
        v41 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
        v53(v50, v40, v41, *(Options + 8), &cf);
        v69 = 0;
        v70 = 0;
        v71 = 0;
        IIODictionary::IIODictionary(&v69);
        HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(v42, theDict[0], cf, v54, &v69);
        v66 = CFRetain(v70);
        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(theDict[0]);
        IIODictionary::~IIODictionary(&v69);
LABEL_44:
        v26 = v66;
        goto LABEL_60;
      }

      goto LABEL_35;
    }

    theDict[0] = 0;
    v51 = gFunc_CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions;
    v33 = v73;
    v34 = *(this + 133);
    v35 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
    v13 = (v51)(v33, v34, v35, 0, theDict);
    v30 = Options;
    if (theDict[0])
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      IIODictionary::IIODictionary(&v69);
      if (CFDictionaryContainsKey(theDict[0], @"Data"))
      {
        v36 = CFDictionaryGetValue(theDict[0], @"Data");
        IIODictionary::setObjectForKey(&v69, v36, @"kCGImageAuxiliaryDataInfoData");
      }

      v66 = CFRetain(v70);
      CFRelease(theDict[0]);
      IIODictionary::~IIODictionary(&v69);
      if (!v13)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

LABEL_36:
    if (!v13)
    {
      goto LABEL_44;
    }

LABEL_37:
    IIOCMErrorString(v13);
    _cg_jpeg_mem_term("copyAuxiliaryDataInfo", 1777, "*** CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation[%d]  err = %s [%d]\n");
LABEL_38:
    ++v28;
  }

  while (v29 != v28);
  if (v66)
  {
    CFRelease(v66);
  }

LABEL_47:
  v26 = 0;
LABEL_60:
  if (v74)
  {
    CFRelease(v74);
  }

LABEL_62:
  if (v73)
  {
    CFRelease(v73);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v75)
  {
    v47 = *(this + 3);
    if (v47)
    {
      IIOImageReadSession::releaseBytePointer(v47, v75);
    }
  }

  return v26;
}

void sub_1860848B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  IIODictionary::~IIODictionary(&a20);
  IIODictionary::~IIODictionary(&a25);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v27 - 144));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(HEIFReadPlugin *this, __CVBuffer *a2, const CGImageMetadata *a3, IIODictionary *a4, IIODictionary *a5)
{
  ObjectForKey = IIODictionary::getObjectForKey(a4, @"kCGImageAuxiliaryDataRepresentation");
  if (!ObjectForKey)
  {
    goto LABEL_9;
  }

  v9 = ObjectForKey;
  if (CFEqual(ObjectForKey, @"kCGImageAuxiliaryDataRepresentationPixelBuffer"))
  {
    v10 = @"kCGImageAuxiliaryDataInfoPixelBuffer";
    v11 = a5;
    v12 = a2;
LABEL_6:
    IIODictionary::setObjectForKey(v11, v12, v10);
    goto LABEL_39;
  }

  if (CFEqual(v9, @"kCGImageAuxiliaryDataRepresentationIOSurface"))
  {
    IOSurface = gFunc_CVPixelBufferGetIOSurface(a2);
    IOSurfaceIncrementUseCount(IOSurface);
    v10 = @"kCGImageAuxiliaryDataInfoIOSurface";
    v11 = a5;
    v12 = IOSurface;
    goto LABEL_6;
  }

  if (CFEqual(v9, @"kCGImageAuxiliaryDataRepresentationImage"))
  {
    v14 = gFunc_CVPixelBufferGetIOSurface(a2);
    v15 = CGImageCreateFromIOSurface(v14, 0);
    IIODictionary::setObjectForKey(a5, v15, @"kCGImageAuxiliaryDataInfoImage");
    CGImageRelease(v15);
  }

  else
  {
LABEL_9:
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(a2);
    Width = gFunc_CVPixelBufferGetWidth(a2);
    Height = gFunc_CVPixelBufferGetHeight(a2);
    BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(a2);
    if (gFunc_CVPixelBufferIsPlanar(a2))
    {
      v20 = PixelFormatType >> 24;
      v21 = MEMORY[0x1E69E9830];
      if ((PixelFormatType >> 24) <= 0x7F)
      {
        v22 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
      }

      v26 = Height;
      if (v22)
      {
        v27 = v20;
      }

      else
      {
        v27 = 46;
      }

      v40 = v27;
      v28 = PixelFormatType << 8 >> 24;
      v29 = v21;
      if (v28 <= 0x7F)
      {
        v30 = *(v21 + 4 * v28 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(PixelFormatType << 8 >> 24, 0x40000uLL);
      }

      v31 = BytesPerRow;
      if (v30)
      {
        v32 = v28;
      }

      else
      {
        v32 = 46;
      }

      v33 = PixelFormatType >> 8;
      v34 = Width;
      if (v33 <= 0x7F)
      {
        v35 = *(v29 + 4 * v33 + 60) & 0x40000;
      }

      else
      {
        v35 = __maskrune(PixelFormatType >> 8, 0x40000uLL);
      }

      if (v35)
      {
        v36 = v33;
      }

      else
      {
        v36 = 46;
      }

      if (PixelFormatType <= 0x7F)
      {
        v37 = *(v29 + 4 * PixelFormatType + 60) & 0x40000;
      }

      else
      {
        v37 = __maskrune(PixelFormatType, 0x40000uLL);
      }

      Height = v26;
      if (v37)
      {
        v38 = PixelFormatType;
      }

      else
      {
        v38 = 46;
      }

      LogError("updateAuxiliaryDataInfoFromPixelBuffer", 1857, "*** ERROR: Unsupported AuxiliaryData format '%c%c%c%c'\n", v40, v32, v36, v38);
      Width = v34;
      BytesPerRow = v31;
    }

    else
    {
      gFunc_CVPixelBufferLockBaseAddress(a2, 1);
      BaseAddress = gFunc_CVPixelBufferGetBaseAddress(a2);
      v24 = CFDataCreate(*MEMORY[0x1E695E480], BaseAddress, BytesPerRow * Height);
      if (v24)
      {
        v25 = v24;
        IIODictionary::setObjectForKey(a5, v24, @"kCGImageAuxiliaryDataInfoData");
        CFRelease(v25);
      }

      gFunc_CVPixelBufferUnlockBaseAddress(a2, 1);
    }

    v43 = 0;
    value = 0;
    v45 = 0;
    IIODictionary::IIODictionary(&v43);
    IIODictionary::setObjectForKey(a5, value, @"kCGImageAuxiliaryDataInfoDataDescription");
    IIONumber::IIONumber(v41, Width);
    IIODictionary::setObjectForKey(&v43, v42, @"Width");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, Height);
    IIODictionary::setObjectForKey(&v43, v42, @"Height");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, BytesPerRow);
    IIODictionary::setObjectForKey(&v43, v42, @"BytesPerRow");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, PixelFormatType);
    IIODictionary::setObjectForKey(&v43, v42, @"PixelFormat");
    IIONumber::~IIONumber(v41);
    IIODictionary::~IIODictionary(&v43);
  }

LABEL_39:
  if (a3)
  {
    IIODictionary::setObjectForKey(a5, a3, @"kCGImageAuxiliaryDataInfoMetadata");
  }

  return 0;
}

void sub_186084DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyISOGainMapDictionary(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary **a4)
{
  v20 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "copyISOGainMapDictionary");
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIODictionary::IIODictionary(&v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  IIODictionary::IIODictionary(&v14);
  IIONumber::IIONumber(v12, 6);
  IIODictionary::setObjectForKey(&v14, value, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode);
  IIONumber::~IIONumber(v12);
  IIODictionary::setObjectForKey(&v14, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer);
  IIODictionary::setObjectForKey(&v17, v15, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions);
  HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v17, a4);
  v7 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(a2, *(a1 + 532), v18, 5, &v20);
  v8 = v7;
  if (v7)
  {
    v9 = IIOCMErrorString(v7);
    LogError("copyISOGainMapDictionary", 1973, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v9, v8);
    ImageIODebugOptionsDictionary(v18);
  }

  v10 = v20;
  IIODictionary::~IIODictionary(&v14);
  IIODictionary::~IIODictionary(&v17);
  return v10;
}

void sub_186084F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__CFDictionary *HEIFReadPlugin::copyHDRGainMapDictionary(uint64_t a1, uint64_t a2, GlobalHEIFInfo *this, uint64_t a4)
{
  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(this, *(a1 + 532));
  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(HEIFMainImageAtIndex);
  v9 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
  cf = 0uLL;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "copyHDRGainMapDictionary");
  }

  if (NumberOfAuxImages)
  {
    v10 = 0;
    v11 = NumberOfAuxImages;
    while (1)
    {
      HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(HEIFMainImageAtIndex, v10);
      if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) == 4)
      {
        Size = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
        if (!v9 || !Size)
        {
          goto LABEL_13;
        }

        if (CFStringCompare(v9, Size, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v11 == ++v10)
      {
        goto LABEL_16;
      }
    }

    AuxiliaryImageForIndex = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(a2, *(a1 + 532), v10, *(a4 + 8), 2, &cf + 8);
    if (AuxiliaryImageForIndex)
    {
      IIOCMErrorString(AuxiliaryImageForIndex);
      v15 = "*** CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex[%d]  err = %s [%d]\n";
      v16 = 2016;
      goto LABEL_15;
    }

LABEL_13:
    v17 = gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(a2, *(a1 + 532), v10, 0, &cf);
    if (!v17)
    {
      goto LABEL_16;
    }

    IIOCMErrorString(v17);
    v15 = "*** CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions[%d]  err = %s [%d]\n";
    v16 = 2025;
LABEL_15:
    _cg_jpeg_mem_term("copyHDRGainMapDictionary", v16, v15);
  }

LABEL_16:
  if (cf == 0)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = Mutable;
  if (*(&cf + 1))
  {
    CFDictionarySetValue(Mutable, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, *(&cf + 1));
    gFunc_CVPixelBufferRelease(*(&cf + 1), v20);
  }

  if (cf)
  {
    CFDictionarySetValue(v19, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, cf);
    CFRelease(cf);
  }

  return v19;
}

uint64_t HEIFReadPlugin::createFlexGTCInfo(HEIFReadPlugin *this, IIODictionary *a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  IIO_LoadHEIFSymbols();
  v39 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createFlexGTCInfo");
    v8 = gIIODebugFlags;
    v10 = this + 192;
    v9 = *(this + 192);
    v11 = this + 520;
    v12 = *(this + 520);
    *(this + 520) = 1;
    *(this + 192) = 0;
    if ((*&v8 & 0x300000) != 0)
    {
      ImageIOLog("☀️  temp setting: _computeHDRStats to false   [%p]\n", this);
    }
  }

  else
  {
    v10 = this + 192;
    v9 = *(this + 192);
    v11 = this + 520;
    v12 = *(this + 520);
    *(this + 520) = 1;
    *(this + 192) = 0;
  }

  v38 = 0;
  if (IIORestrictedDecodingEnabledFlag())
  {
    goto LABEL_36;
  }

  FlexGTCInfo = (*(*this + 224))(this, 0, *(a2 + 1), &v38, &v39);
  if (!v38)
  {
    goto LABEL_36;
  }

  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(v38, "inputSurface", "createFlexGTCInfo", 2080);
  }

  if (v39)
  {
    cf = 0;
    value = 0;
    v35 = 0;
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
    if (cf)
    {
      v14 = CFGetTypeID(cf);
      if (v14 == CFDictionaryGetTypeID())
      {
        CGImageCreateFlexRangeMetadata(cf, &v35);
        v15 = v35;
      }

      else
      {
        v15 = CFRetain(cf);
        v35 = v15;
      }

      IIODictionary::setObjectForKey(a2, v15, @"kCGImageAuxiliaryDataInfoMetadata");
      CFRelease(v35);
    }

    v16 = *(this + 7);
    if (v16 && (ObjectForKey = IIODictionary::getObjectForKey(v16, @"{MakerApple}")) != 0)
    {
      IIODictionary::setObjectForKey(a2, ObjectForKey, @"{MakerApple}");
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      IIODictionary::IIODictionary(&v32);
      IIONumber::IIONumber(v31, *(this + 134));
      IIODictionary::setObjectForKey(&v32, v31, @"33");
      IIONumber::~IIONumber(v31);
      IIONumber::IIONumber(v31, *(this + 135));
      IIODictionary::setObjectForKey(&v32, v31, @"48");
      IIONumber::~IIONumber(v31);
      IIODictionary::setObjectForKey(a2, v33, @"{MakerApple}");
      IIODictionary::~IIODictionary(&v32);
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallCreateFlexGTCInfo (didCalculateFlexGTC: %d)'\n", *(this + 379));
    }

    FlexGTCInfo = IIOCallCreateFlexGTCInfo(v38, 0, value, a3, *(a2 + 1));
    if (!FlexGTCInfo)
    {
      *(this + 379) = 1;
    }

    if (a4)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      }

      v19 = value;
      v18 = v38;
      v20 = *(a2 + 1);
LABEL_29:
      FlexGTCInfo = IIOCallComputeHDRStats(v18, 0, v19, a4, v20);
      if (!FlexGTCInfo)
      {
        *(this + 360) = 1;
      }
    }
  }

  else
  {
    if (a3)
    {
      _cg_jpeg_mem_term("createFlexGTCInfo", 2136, "*** ERROR: createFlexGTCInfo - failed to extract gainMap\n");
      FlexGTCInfo = 4294967246;
      goto LABEL_35;
    }

    if (a4)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      }

      v18 = v38;
      v20 = *(a2 + 1);
      v19 = 0;
      goto LABEL_29;
    }
  }

LABEL_35:
  CFRelease(v38);
  if (v38)
  {
    goto LABEL_64;
  }

LABEL_36:
  value = 0;
  FlexGTCInfo = (*(*this + 232))(this, 0, *(a2 + 1), &value, &v39);
  v21 = value;
  if (!value)
  {
    goto LABEL_64;
  }

  if (v39)
  {
    v35 = 0;
    cf = 0;
    v30 = 0;
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &cf);
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &v35);
    if (v35)
    {
      v22 = CFGetTypeID(v35);
      if (v22 == CFDictionaryGetTypeID())
      {
        CGImageCreateFlexRangeMetadata(v35, &v30);
        v23 = v30;
      }

      else
      {
        v23 = CFRetain(v35);
        v30 = v23;
      }

      IIODictionary::setObjectForKey(a2, v23, @"kCGImageAuxiliaryDataInfoMetadata");
      CFRelease(v30);
    }

    v24 = *(this + 7);
    if (v24 && (v25 = IIODictionary::getObjectForKey(v24, @"{MakerApple}")) != 0)
    {
      IIODictionary::setObjectForKey(a2, v25, @"{MakerApple}");
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      IIODictionary::IIODictionary(&v32);
      IIONumber::IIONumber(v31, *(this + 134));
      IIODictionary::setObjectForKey(&v32, v31, @"33");
      IIONumber::~IIONumber(v31);
      IIONumber::IIONumber(v31, *(this + 135));
      IIODictionary::setObjectForKey(&v32, v31, @"48");
      IIONumber::~IIONumber(v31);
      IIODictionary::setObjectForKey(a2, v33, @"{MakerApple}");
      IIODictionary::~IIODictionary(&v32);
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallCreateFlexGTCInfo (didCalculateFlexGTC: %d)'\n", *(this + 379));
    }

    FlexGTCInfo = IIOCallCreateFlexGTCInfo(0, value, cf, a3, *(a2 + 1));
    if (!FlexGTCInfo)
    {
      *(this + 379) = 1;
    }

    if (!a4)
    {
      goto LABEL_63;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
    }

    v26 = cf;
    v21 = value;
    v27 = *(a2 + 1);
    goto LABEL_57;
  }

  if (a3)
  {
    _cg_jpeg_mem_term("createFlexGTCInfo", 2211, "*** ERROR: createFlexGTCInfo - failed to extract gainMap\n");
    FlexGTCInfo = 4294967246;
  }

  else if (a4)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      v21 = value;
    }

    v27 = *(a2 + 1);
    v26 = 0;
LABEL_57:
    FlexGTCInfo = IIOCallComputeHDRStats(0, v21, v26, a4, v27);
    if (!FlexGTCInfo)
    {
      *(this + 360) = 1;
    }
  }

LABEL_63:
  gFunc_CVPixelBufferRelease(value, v21);
LABEL_64:
  if (v39)
  {
    CFRelease(v39);
  }

  *v11 = v12;
  *v10 = v9;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v28 = "false";
    if (v9)
    {
      v28 = "true";
    }

    ImageIOLog("☀️  re-setting: _computeHDRStats to %s   [%p]\n", v28, this);
  }

  return FlexGTCInfo;
}

void sub_186085874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetImp(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v153[0] = 0;
  memset(v152, 0, sizeof(v152));
  IIODictionary::IIODictionary(v152, a4);
  v19 = IIORestrictedDecodingEnabledFlag();
  if (!*(a1 + 24))
  {
    v29 = 0;
    goto LABEL_203;
  }

  v20 = v19;
  IIO_LoadHEIFSymbols();
  v138 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v138))
  {
    v137 = GlobalHEIFInfo::useHEIFSequence(v138);
  }

  else
  {
    v137 = 0;
  }

  IIOReadPlugin::debugCopyBlockSet(a1, a3, a5, a6, a7, a8, a9, a10);
  v21 = MEMORY[0x1E695F2A0];
  if ((*(a1 + 520) & 1) != 0 || *(a1 + 521) == 1)
  {
    *(a1 + 371) = 1;
    v22 = *v21;
  }

  else
  {
    v37 = *(a1 + 440);
    v39 = v37 != 1 && a8 == a10 && a7 == a9;
    v22 = *MEMORY[0x1E695F2A0];
    if (!v39 && v37 != 1 && (IIODictionary::containsKey(v152, *MEMORY[0x1E695F2A0]) & 1) == 0 && (*(a1 + 527) & 1) == 0)
    {
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v138, *(a1 + 532));
      if ((*(a1 + 526) & 1) == 0 && *(a1 + 332) <= 1u)
      {
        v42 = HEIFMainImageAtIndex;
        TileWidth = HEIFMainImage::getTileWidth(HEIFMainImageAtIndex);
        TileLength = HEIFMainImage::getTileLength(v42);
        if (TileWidth)
        {
          if (TileLength)
          {
            if (TileWidth != *(a1 + 308))
            {
              v46 = *(a1 + 312);
              if (TileLength != v46 && *(a1 + 316) * v46 >= 0x1000001)
              {
                LODWORD(v143) = 0;
                v47 = *(a1 + 316);
                *&dest.data = *(a1 + 300);
                *&dest.width = v47;
                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("    decoding multi tiles: {%g,%g,%g,%g} {%g,%g} - subsample: %d\n", a5, a6, a7, a8, a9, a10, *(a1 + 332));
                }

                v29 = HEIFReadPlugin::copyImageBlockSetTiles(a1, a2, a3, v152, TileWidth, a5, a6, a7, a8, v45, &v143);
                v48 = *&dest.width;
                *(a1 + 300) = *&dest.data;
                *(a1 + 316) = v48;
                if (v29 || v143 == 1)
                {
                  goto LABEL_203;
                }

                _cg_jpeg_mem_term("copyImageBlockSetImp", 2313, "*** ERROR: tiled decoding failed - falling back to standard decode\n");
              }
            }
          }
        }
      }
    }
  }

  if (!IIODictionary::containsKey(v152, v22) || (*(a1 + 520) & 1) != 0)
  {
LABEL_24:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    _blockCount = %d\n", *(a1 + 104));
    }

    v139 = *(a1 + 112);
    IIOReadPlugin::debugCopyBlockSet(a1, a3, a5, a6, a7, a8, a9, a10);
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    if (IIOReadPlugin::getCachedBlocks(a1))
    {
      v33 = *(a1 + 24);
      v134 = a3;
      v132 = v20;
      if (v33)
      {
        v34 = IIOImageReadSession::mapData(v33);
      }

      else
      {
        v34 = 0;
      }

      v49 = *(a1 + 112);
      if (v49 < *(a1 + 116))
      {
        __dst = 0;
        v35 = 0;
        v130 = (a1 + 308);
        v131 = 1;
        v135 = *MEMORY[0x1E695E498];
        v136 = *MEMORY[0x1E695E480];
        value = *MEMORY[0x1E695E4C0];
        while (1)
        {
          if (*(*(a1 + 96) + 8 * (v49 - v139)))
          {
            _cg_jpeg_mem_term("copyImageBlockSetImp", 2371, "*** _blockArray[%d] was cached - and already allocated\n");
          }

          v50 = *(a1 + 312);
          v51 = (v50 * v49);
          LODWORD(a8) = *(a1 + 308);
          LODWORD(v32) = *(a1 + 280);
          v52 = *&v32;
          v53 = v50 + v51 <= v52 ? v50 : v52 - (v50 * v49);
          v54 = *(a1 + 316);
          v150 = 0;
          v55 = IIOCreateCMPhotoDecompressionSession(&v150);
          v56 = v55;
          if (!v55)
          {
            break;
          }

          IIOCMErrorString(v55);
          _cg_jpeg_mem_term("copyImageBlockSetImp", 2400, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
LABEL_65:
          a8 = *&a8;
          v154.origin.x = 0.0;
          v154.origin.y = v51;
          v154.size.width = a8;
          v154.size.height = v53;
          *(*(a1 + 96) + 8 * (v49 - v139)) = IIOReadPlugin::createImageBlock(a1, __dst, v153[0], v154, *(a1 + 316), *(a1 + 371));
          v57 = CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]);
          v58 = 0;
          if (!v57)
          {
            v155.origin.x = 0.0;
            v155.origin.y = v51;
            v155.size.width = a8;
            v155.size.height = v53;
            *(&v32 - 2) = CGRectUnion(*(a1 + 120), v155);
            v51 = v59;
            a8 = v32;
            v53 = v60;
          }

          *(a1 + 120) = v58;
          *(a1 + 128) = v51;
          *(a1 + 136) = a8;
          *(a1 + 144) = v53;
          if (++v49 >= *(a1 + 116))
          {
            a3 = v134;
            v36 = v131;
            if (v56)
            {
              goto LABEL_190;
            }

LABEL_184:
            v29 = 0;
            v123 = *(a1 + 104);
            if (v123 && ((a3 != 0) & v36) != 0)
            {
              v29 = IIOReadPlugin::imageBlockSetCreate(a1, a3, v123, *(a1 + 96), a2, *(a1 + 136), *(a1 + 144), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
            }

            if (!v35)
            {
LABEL_192:
              if (a3)
              {
                goto LABEL_193;
              }

              goto LABEL_194;
            }

LABEL_191:
            CFRelease(v35);
            goto LABEL_192;
          }
        }

        cf = 0;
        v149 = 0;
        v147 = 0;
        v146 = 0;
        Size = IIOImageReadSession::getSize(*(a1 + 24));
        v62 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v146, 1);
        v63 = v62;
        if (!v62)
        {
          LogError("copyImageBlockSetImp", 2416, "*** ERROR: retainBytePointer failed\n");
          a3 = v134;
          goto LABEL_190;
        }

        v64 = *(a1 + 488);
        if (v64)
        {
          if (*(a1 + 496))
          {
            Size = *(a1 + 496);
          }

          else
          {
            v64 = 0;
          }

          v63 = v62 + v64;
        }

        if (!v35)
        {
          v35 = CFDataCreateWithBytesNoCopy(v136, v63, Size, v135);
          if (!v35)
          {
            v56 = 0;
            goto LABEL_178;
          }
        }

        v65 = gFunc_CMPhotoDecompressionSessionCreateContainer(v150, 0, v35, &v147, &v149);
        v56 = v65;
        if (v65)
        {
          IIOCMErrorString(v65);
          _cg_jpeg_mem_term("copyImageBlockSetImp", 2436, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
LABEL_178:
          CFRelease(v150);
          if (v146)
          {
            v122 = *(a1 + 24);
            if (v122)
            {
              IIOImageReadSession::releaseBytePointer(v122, v146);
            }
          }

          goto LABEL_65;
        }

        *(a1 + 516) = v147;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        IIODictionary::IIODictionary(&v143);
        HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v143, v152);
        data = 0;
        if (*(a1 + 521) == 1)
        {
          v67 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v138, *(a1 + 532));
          v68 = HEIFMainImage::bitDepth(v67);
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v68);
        }

        else if (*(a1 + 520) == 1)
        {
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, 10);
        }

        else
        {
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v66);
        }

        IIONumber::IIONumber(&dest, DecodePixelFormatForBitDepth);
        IIODictionary::setObjectForKey(&v143, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(&dest);
        IIODictionary::setObjectForKey(&v143, value, *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
        HEIFReadPlugin::updateCreateImageOptions(a1, &v143, *(a1 + 48));
        if (v137)
        {
          v70 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v149, 0, 0, &cf);
          if (v70)
          {
            IIOCMErrorString(v70);
            _cg_jpeg_mem_term("copyImageBlockSetImp", 2479, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n");
          }

          if (*(a1 + 232) < 2u || (*(a1 + 526) & 1) != 0)
          {
            v56 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, *(a1 + 532), v144, 2, &data);
            if (v56)
            {
              _cg_jpeg_mem_term("copyImageBlockSetImp", 2496, "CMPhotoDecompressionContainerCreateImageForIndex(%d)  err=%d\n");
              goto LABEL_92;
            }

            goto LABEL_101;
          }

          p_cf = &cf;
        }

        else
        {
          if (*(a1 + 232) < 2u || *(a1 + 526) == 1)
          {
            v72 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v149, *(a1 + 532), v144, 2, &data);
            goto LABEL_100;
          }

          p_cf = &v149;
        }

        v72 = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(a1 + 532), 0, v144, 2, &data);
LABEL_100:
        v56 = v72;
        if (v72)
        {
LABEL_92:
          if (v56 == -15470)
          {
            LogError("copyImageBlockSetImp", 2548, "*** ERROR: CMPhotoDecompressionContainerCreateImageForIndex failed (kCMPhotoError_XPCError) - mediaserverd is not running? - no way to decode a HEIC\n");
            v131 = 0;
            v56 = -15470;
          }

LABEL_175:
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v149);
          IIODictionary::~IIODictionary(&v143);
          goto LABEL_178;
        }

LABEL_101:
        if (*(a1 + 520) == 1)
        {
          if ((gIIODebugFlags & 0x300000) != 0)
          {
            ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n");
          }

          IOSurface = gFunc_CVPixelBufferGetIOSurface(data);
          v76 = IOSurface;
          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(IOSurface, "surface", "copyImageBlockSetImp", 2570);
          }

          PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v75);
          if (PixelFormatForBitDepth == 1815491698)
          {
            if (*(a1 + 329))
            {
              PixelFormatForBitDepth = 1380411457;
            }

            else
            {
              PixelFormatForBitDepth = 1815491698;
            }
          }

          *(a1 + 464) = PixelFormatForBitDepth;
          if (v132)
          {
            PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithGainMapApplied(a1, v149, v78, v138, data);
            if (PixelBufferWithGainMapApplied)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          SurfaceWithGainMapApplied = HEIFReadPlugin::createSurfaceWithGainMapApplied(a1, v149, v78, v138, v76);
          v86 = SurfaceWithGainMapApplied;
          if (!SurfaceWithGainMapApplied)
          {
            goto LABEL_129;
          }

          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(SurfaceWithGainMapApplied, "outputSurface", "copyImageBlockSetImp", 2594);
          }
        }

        else
        {
          if (*(a1 + 521) != 1)
          {
            goto LABEL_129;
          }

          if (v132)
          {
            v81 = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v71);
            PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithToneMapApplied(v81, v82, v83, v84, data, v81, *(a1 + 544), *(a1 + 525));
            if (PixelBufferWithGainMapApplied)
            {
LABEL_116:
              gFunc_CVPixelBufferRelease(data, v79);
              data = PixelBufferWithGainMapApplied;
            }

LABEL_129:
            __dst = _ImageIO_Malloc(v54 * v50, *(a1 + 416), v153, kImageMalloc_HEIF_Data[0], 0, 0);
            if (!__dst)
            {
              _cg_jpeg_mem_term("copyImageBlockSetImp", 2643, "failed to alloc imageData (%ld bytes)\n");
              IIODictionary::~IIODictionary(&v143);
              a3 = v134;
              goto LABEL_190;
            }

            gFunc_CVPixelBufferLockBaseAddress(data, 0);
            IsPlanar = gFunc_CVPixelBufferIsPlanar(data);
            PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(data);
            v98 = PixelFormatType;
            if (IsPlanar)
            {
              v99 = PixelFormatType >> 24;
              if ((PixelFormatType >> 24) <= 0x7F)
              {
                v100 = *(MEMORY[0x1E69E9830] + 4 * v99 + 60) & 0x40000;
              }

              else
              {
                v100 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
              }

              if (v100)
              {
                v112 = v99;
              }

              else
              {
                v112 = 46;
              }

              v113 = (v98 << 8) >> 24;
              if (v113 <= 0x7F)
              {
                v114 = *(MEMORY[0x1E69E9830] + 4 * v113 + 60) & 0x40000;
              }

              else
              {
                v114 = __maskrune((v98 << 8) >> 24, 0x40000uLL);
              }

              if (v114)
              {
                v115 = v113;
              }

              else
              {
                v115 = 46;
              }

              v116 = v98 >> 8;
              if (v116 <= 0x7F)
              {
                v117 = *(MEMORY[0x1E69E9830] + 4 * v116 + 60) & 0x40000;
              }

              else
              {
                v117 = __maskrune(v98 >> 8, 0x40000uLL);
              }

              v98 = v98;
              if (v98 <= 0x7F)
              {
                v118 = *(MEMORY[0x1E69E9830] + 4 * v98 + 60) & 0x40000;
              }

              else
              {
                v118 = __maskrune(v98, 0x40000uLL);
              }

              if (v117)
              {
                v119 = v116;
              }

              else
              {
                v119 = 46;
              }

              if (v118)
              {
                v120 = v98;
              }

              else
              {
                v120 = 46;
              }

              LogError("copyImageBlockSetImp", 2654, "*** 'BGRA' request returned planar data - not handled '%c%c%c%c'\n", v112, v115, v119, v120);
            }

            else
            {
              BaseAddress = gFunc_CVPixelBufferGetBaseAddress(data);
              v129 = v98;
              BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(data);
              v127 = v35;
              v128 = v34;
              Height = gFunc_CVPixelBufferGetHeight(data);
              v104 = *(a1 + 312);
              v105 = *(a1 + 316);
              if (BytesPerRow >= v105)
              {
                v106 = *(a1 + 316);
              }

              else
              {
                v106 = BytesPerRow;
              }

              if (v104 && Height)
              {
                v107 = 0;
                if (v104 >= Height)
                {
                  v108 = Height;
                }

                else
                {
                  v108 = *(a1 + 312);
                }

                v109 = __dst;
                do
                {
                  memcpy(v109, BaseAddress, v106);
                  v109 += v105;
                  BaseAddress += BytesPerRow;
                  ++v107;
                }

                while (v107 < v108);
              }

              v34 = v128;
              v35 = v127;
              if (v129 == 1111970369)
              {
                if (!*(a1 + 437))
                {
                  goto LABEL_149;
                }

                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("    vImagePermuteChannels_ARGB8888:   BGRX -> RGBX\n");
                }

                dest.data = __dst;
                v110.i64[0] = *v130;
                v110.i64[1] = HIDWORD(*v130);
                *&dest.height = vextq_s8(v110, v110, 8uLL);
                dest.rowBytes = *(a1 + 316);
                *permuteMap = 50331906;
                vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                if (!*(a1 + 437))
                {
LABEL_149:
                  if (*(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
                  {
                    dest.data = __dst;
                    v111.i64[0] = *v130;
                    v111.i64[1] = HIDWORD(*v130);
                    *&dest.height = vextq_s8(v111, v111, 8uLL);
                    dest.rowBytes = *(a1 + 316);
                    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                  }
                }
              }
            }

            gFunc_CVPixelBufferUnlockBaseAddress(data, 0);
            gFunc_CVPixelBufferRelease(data, v121);
            v56 = 0;
            goto LABEL_175;
          }

          if ((gIIODebugFlags & 0x300000) != 0)
          {
            ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n");
          }

          v87 = gFunc_CVPixelBufferGetIOSurface(data);
          v89 = v87;
          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(v87, "surface", "copyImageBlockSetImp", 2622);
          }

          v90 = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v88);
          SurfaceWithToneMapApplied = HEIFReadPlugin::createSurfaceWithToneMapApplied(v90, v91, v92, v93, v89, v90, *(a1 + 544), *(a1 + 525));
          v86 = SurfaceWithToneMapApplied;
          if (!SurfaceWithToneMapApplied)
          {
            goto LABEL_129;
          }

          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(SurfaceWithToneMapApplied, "outputSurface", "copyImageBlockSetImp", 2628);
          }
        }

        dest.data = 0;
        gFunc_CVPixelBufferCreateWithIOSurface(0, v86, 0, &dest);
        CFRelease(v86);
        gFunc_CVPixelBufferRelease(data, v95);
        data = dest.data;
        goto LABEL_129;
      }

      v35 = 0;
      v36 = 1;
      if (!BlockArray)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v35 = 0;
      v34 = 0;
      v36 = 1;
      if (!BlockArray)
      {
        goto LABEL_184;
      }
    }

LABEL_190:
    v29 = 0;
    if (!v35)
    {
      goto LABEL_192;
    }

    goto LABEL_191;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    got 'kCGImageBlockTileRequest'\n");
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v152, v22);
  if (Uint32ForKey - 1 >= 0xFF)
  {
    v25 = Uint32ForKey;
  }

  else
  {
    v25 = 256;
  }

  v26 = (a1 + 300);
  if (v25 > *(a1 + 308) || v25 > *(a1 + 312))
  {
    v27 = *(a1 + 316);
    *&dest.data = *v26;
    *&dest.width = v27;
    LODWORD(v143) = 0;
LABEL_18:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    decoding single tile: {%g,%g,%g,%g} {%g,%g}\n", a5, a6, a7, a8, a9, a10);
    }

    v28 = HEIFReadPlugin::copyImageBlockSetSingleTile(a1, a2, a3, v152, &v143, a5, a6, a7, a8);
    goto LABEL_21;
  }

  v126 = *(a1 + 316);
  *&dest.data = *v26;
  *&dest.width = v126;
  LODWORD(v143) = 0;
  if (!v25)
  {
    goto LABEL_18;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    decoding multi tiles [%d]: {%g,%g,%g,%g} {%g,%g}\n", v25, a5, a6, a7, a8, a9, a10);
  }

  v28 = HEIFReadPlugin::copyImageBlockSetTiles(a1, a2, a3, v152, v25, a5, a6, a7, a8, v24, &v143);
LABEL_21:
  v29 = v28;
  v30 = *&dest.width;
  *v26 = *&dest.data;
  *(a1 + 316) = v30;
  if (!v28 && v143 != 1)
  {
    *(a1 + 104) = 1;
    goto LABEL_24;
  }

LABEL_203:
  v34 = 0;
  if (a3)
  {
LABEL_193:
    IIOReadPlugin::freeBlockArray(a1);
  }

LABEL_194:
  if (v34)
  {
    v124 = *(a1 + 24);
    if (v124)
    {
      IIOImageReadSession::unmapData(v124);
    }
  }

  IIODictionary::~IIODictionary(v152);
  return v29;
}

void sub_186086900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v30 - 176));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetTiles(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4, unsigned int a5, double a6, double a7, double a8, double a9, uint64_t a10, _DWORD *a11)
{
  v11 = a11;
  v17 = a6;
  v18 = a3;
  v108 = 0;
  *a11 = 0;
  if (a3)
  {
    CGImageProviderGetSize();
    v22 = v21;
    v24 = v23;
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    LODWORD(a6) = *(a1 + 308);
    v22 = *&a6;
    LODWORD(a6) = *(a1 + 312);
    v24 = *&a6;
    PixelSize = *(a1 + 324);
  }

  v109[0] = 0;
  if ((a5 & 0x1FF) != 0)
  {
    v26 = 512;
  }

  else
  {
    v26 = a5;
  }

  if (!v26)
  {
    v80 = 0;
    v81 = 0;
    v38 = 0;
    if (v18)
    {
      goto LABEL_98;
    }

    goto LABEL_104;
  }

  v27 = (v26 - 1);
  v92 = (v17 / v26);
  v93 = ((a7 + a9 + v27) / v26);
  v97 = ((v17 + a8 + v27) / v26);
  v95 = (a7 / v26);
  *(a1 + 252) = 16 * ((a8 * PixelSize + 15.0) * 0.0625);
  v28 = vmin_u32(vdup_n_s32(v26), *(a1 + 244));
  v89 = (a1 + 308);
  *(a1 + 308) = v28;
  *(a1 + 316) = v28.i32[0] * PixelSize;
  *(a1 + 104) = (v97 - v92) * (v93 - v95);
  v29 = IIOCreateCMPhotoDecompressionSession(&v108);
  if (v29)
  {
    HEIFReadPlugin::copyImageBlockSetTiles(v29);
    v87 = 0;
    v38 = 0;
    v34 = 0;
    goto LABEL_95;
  }

  v107 = 0;
  v106 = 0;
  v105 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v31 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v105, 1);
  if (!v31)
  {
    HEIFReadPlugin::copyImageBlockSetTiles();
    v34 = 0;
    v87 = 0;
LABEL_100:
    v38 = 0;
    goto LABEL_101;
  }

  v32 = v31;
  v33 = *(a1 + 488);
  v96 = v26;
  if (v33)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v33 = 0;
    }

    v32 = v31 + v33;
  }

  v34 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v32, Size, *MEMORY[0x1E695E498]);
  if (!v34)
  {
    goto LABEL_90;
  }

  v35 = gFunc_CMPhotoDecompressionSessionCreateContainer(v108, 0, v34, &v106, &v107);
  if (v35)
  {
    HEIFReadPlugin::copyImageBlockSetTiles(v35);
LABEL_90:
    v38 = 0;
    v87 = 0;
    v78 = 1;
    goto LABEL_91;
  }

  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  v87 = IIOImageReadSession::mapData(*(a1 + 24));
  v102 = 0;
  v103 = 0;
  v104 = 0;
  IIODictionary::IIODictionary(&v102);
  v101 = 0;
  PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v36);
  HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v102, a4);
  IIONumber::IIONumber(&dest, PixelFormatForBitDepth);
  IIODictionary::setObjectForKey(&v102, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
  IIONumber::~IIONumber(&dest);
  HEIFReadPlugin::updateCreateImageOptions(a1, &v102, *(a1 + 48));
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    copyImageBlockSetTiles - decoding %d x %d tiles\n", v93 - v95, v97 - v92);
  }

  v84 = a2;
  v85 = v34;
  v88 = v18;
  v86 = v11;
  if (v93 <= v95)
  {
    v38 = 0;
    v94 = 1;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = (PixelFormatForBitDepth << 8 >> 24);
    v91 = PixelFormatForBitDepth >> 8;
    v90 = PixelFormatForBitDepth;
    v94 = 1;
    do
    {
      v41 = *(a1 + 312);
      v42 = (v41 * v95);
      v43 = v41;
      if (v41 + v42 <= v24)
      {
        v44 = v41;
      }

      else
      {
        v44 = v24 - (v41 * v95);
      }

      if (v97 <= v92)
      {
LABEL_70:
        v77 = 1;
      }

      else
      {
        v45 = v92;
        while (1)
        {
          v98 = v45;
          v46 = (v45 * v96);
          LODWORD(v43) = *(a1 + 308);
          v47 = *&v43;
          if (v46 + v47 <= v22)
          {
            v48 = v47;
          }

          else
          {
            v48 = v22 - (v45 * v96);
          }

          v38 = _ImageIO_Malloc(*(a1 + 316) * *(a1 + 312), *(a1 + 416), v109, kImageMalloc_HEIF_Data[0], 0, 0);
          if (!v38)
          {
            IIODictionary::~IIODictionary(&v102);
            v34 = v85;
            v11 = v86;
            v18 = v88;
            goto LABEL_100;
          }

          v49 = *(a1 + 332);
          v50 = v42 * v49;
          v51 = v48 * v49;
          v52 = v49 >= 2 ? v44 * v49 : v44;
          if (v49 >= 2)
          {
            v53 = v46 * v49;
          }

          else
          {
            v51 = v48;
            v50 = v42;
            v53 = v46;
          }

          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v50 - 1));
          IIODictionary::setObjectForKey(&v102, DictionaryRepresentation, *gIIO_kCMPhotoDecompressionOption_SourceCropRect);
          CFRelease(DictionaryRepresentation);
          v55 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v107, *(a1 + 532), v103, 2, &v101);
          v56 = v55;
          if (v55)
          {
            break;
          }

          gFunc_CVPixelBufferLockBaseAddress(v101, 0);
          IsPlanar = gFunc_CVPixelBufferIsPlanar(v101);
          PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v101);
          v59 = PixelFormatType;
          if (IsPlanar)
          {
            if ((PixelFormatType >> 24) > 0x7F)
            {
              __maskrune(PixelFormatType >> 24, 0x40000uLL);
            }

            if ((v59 << 8 >> 24) > 0x7F)
            {
              __maskrune(v59 << 8 >> 24, 0x40000uLL);
            }

            if ((v59 >> 8) > 0x7F)
            {
              __maskrune(v59 >> 8, 0x40000uLL);
            }

            v59 = v59;
            if (v59 > 0x7F)
            {
              __maskrune(v59, 0x40000uLL);
            }

            _cg_jpeg_mem_term("copyImageBlockSetTiles", 3200, "*** '%c%c%c%c' request returned planar data - not handled\n");
          }

          else
          {
            BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v101);
            v61 = v39;
            BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v101);
            v63 = v40;
            Height = gFunc_CVPixelBufferGetHeight(v101);
            if (Height >= *(a1 + 312))
            {
              v65 = *(a1 + 312);
            }

            else
            {
              v65 = Height;
            }

            if (v65)
            {
              v66 = *(a1 + 316);
              if (BytesPerRow <= v66)
              {
                v67 = BytesPerRow;
              }

              else
              {
                v67 = v66;
              }

              v68 = v38;
              do
              {
                memcpy(v68, BaseAddress, v67);
                v68 += *(a1 + 316);
                BaseAddress += BytesPerRow;
                --v65;
              }

              while (v65);
            }

            v40 = v63;
            v39 = v61;
            if (v59 == 1111970369 && *(a1 + 436) == 1)
            {
              goto LABEL_55;
            }

            v69 = *(a1 + 316);
            v70 = *(a1 + 308);
            if (v69 >= 4 * v70)
            {
              v71 = *(a1 + 312);
              dest.data = v38;
              dest.height = v71;
              dest.width = v70;
              dest.rowBytes = v69;
              *permuteMap = 50331906;
              vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
            }

            if (*(a1 + 436) == 1)
            {
LABEL_55:
              if (*(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
              {
                dest.data = v38;
                v72.i64[0] = *v89;
                v72.i64[1] = HIDWORD(*v89);
                *&dest.height = vextq_s8(v72, v72, 8uLL);
                dest.rowBytes = *(a1 + 316);
                vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
              }
            }

            v94 = 1;
          }

          gFunc_CVPixelBufferUnlockBaseAddress(v101, 0);
          gFunc_CVPixelBufferRelease(v101, v73);
          v110.origin.x = v46;
          v110.origin.y = v42;
          v110.size.width = v48;
          v110.size.height = v44;
          *(*(a1 + 96) + 8 * v39) = IIOReadPlugin::createImageBlock(a1, v38, v109[0], v110, *(a1 + 316), 0);
          if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
          {
            v74 = v42;
            v75 = v44;
          }

          else
          {
            v111.origin.x = v46;
            v111.origin.y = v42;
            v111.size.width = v48;
            v111.size.height = v44;
            *&v43 = CGRectUnion(*(a1 + 120), v111);
            v46 = v43;
            v48 = v76;
          }

          *(a1 + 120) = v46;
          *(a1 + 128) = v74;
          *(a1 + 136) = v48;
          *(a1 + 144) = v75;
          ++v39;
          v45 = v98 + 1;
          if (v98 + 1 == v97)
          {
            v38 = 0;
            goto LABEL_70;
          }
        }

        if (v55 == -15470)
        {
          if (v88)
          {
            CGImageProviderSetProperty();
          }

          v77 = 0;
        }

        else
        {
          v77 = 1;
        }

        IIOCMErrorString(v56);
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 3186, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
        if (v40 > 0x7F)
        {
          __maskrune(v40, 0x40000uLL);
        }

        if (v91 > 0x7F)
        {
          __maskrune(v91, 0x40000uLL);
        }

        if (v90 > 0x7F)
        {
          __maskrune(v90, 0x40000uLL);
        }

        _cg_jpeg_mem_term("copyImageBlockSetTiles", 3187, "    outputPixelFormat: %c%c%c%c\n");
        ImageIODebugOptionsDictionary(v103);
        v94 = 0;
      }

      ++v95;
    }

    while (v95 < v93 && (v77 & 1) != 0);
  }

  CFRelease(v107);
  v34 = v85;
  v11 = v86;
  v18 = v88;
  a2 = v84;
  IIODictionary::~IIODictionary(&v102);
  v78 = v94;
LABEL_91:
  gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v108, 0, 0);
  CFRelease(v108);
  if (v105)
  {
    v79 = *(a1 + 24);
    if (v79)
    {
      IIOImageReadSession::releaseBytePointer(v79, v105);
    }
  }

  if (v78)
  {
LABEL_95:
    v80 = IIOReadPlugin::imageBlockSetCreate(a1, v18, *(a1 + 104), *(a1 + 96), a2, *(a1 + 136), *(a1 + 144), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
    if (!v34)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_101:
  v80 = 0;
  if (v34)
  {
LABEL_96:
    CFRelease(v34);
  }

LABEL_97:
  v81 = v87;
  if (v18)
  {
LABEL_98:
    IIOReadPlugin::freeBlockArray(a1);
    goto LABEL_106;
  }

LABEL_104:
  if (*(a1 + 104))
  {
    *v11 = 1;
  }

LABEL_106:
  if (v81)
  {
    v82 = *(a1 + 24);
    if (v82)
    {
      IIOImageReadSession::unmapData(v82);
    }
  }

  if (v38)
  {
    _ImageIO_Free(v38, v109[0]);
  }

  return v80;
}

void sub_186087438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  IIONumber::~IIONumber(&a27);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetSingleTile(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4, _DWORD *a5, double x, double y, double width, double a9)
{
  v73 = 0;
  *a5 = 0;
  if (a3)
  {
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    PixelSize = *(a1 + 324);
  }

  v74[0] = 0;
  *(a1 + 104) = 1;
  IIOReadPlugin::allocateBlockArray(a1, 1uLL);
  v17 = IIOImageReadSession::mapData(*(a1 + 24));
  *(a1 + 308) = width;
  *(a1 + 312) = a9;
  v18 = width * PixelSize;
  *(a1 + 316) = v18;
  v19 = _ImageIO_Malloc(v18 * a9, *(a1 + 416), v74, kImageMalloc_HEIF_Data[0], 0, 0);
  if (v19)
  {
    v20 = IIOCreateCMPhotoDecompressionSession(&v73);
    if (v20)
    {
      HEIFReadPlugin::copyImageBlockSetSingleTile(v20);
    }

    else
    {
      v63 = v17;
      cf = 0;
      v71 = 0;
      v70 = 0;
      Size = IIOImageReadSession::getSize(*(a1 + 24));
      v22 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v70, 1);
      v23 = v22;
      v24 = *(a1 + 488);
      if (v24)
      {
        if (*(a1 + 496))
        {
          Size = *(a1 + 496);
        }

        else
        {
          v24 = 0;
        }

        v23 = v22 + v24;
      }

      if (v23)
      {
        v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v23, Size, *MEMORY[0x1E695E498]);
        if (v25)
        {
          v26 = v25;
          v27 = gFunc_CMPhotoDecompressionSessionCreateContainer(v73, 0, v25, &v71, &cf);
          if (v27)
          {
            IIOCMErrorString(v27);
            _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2844, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
            v28 = 0;
          }

          else
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            IIODictionary::IIODictionary(&v67);
            v66 = 0;
            PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v29);
            if (CGImageProviderGetComponentType() == 6)
            {
              v31 = 1815162994;
            }

            else
            {
              v31 = PixelFormatForBitDepth;
            }

            HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v67, a4);
            IIONumber::IIONumber(&dest, v31);
            IIODictionary::setObjectForKey(&v67, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
            IIONumber::~IIONumber(&dest);
            HEIFReadPlugin::updateCreateImageOptions(a1, &v67, *(a1 + 48));
            v32 = a9;
            v33 = width;
            v34 = y;
            v35 = x;
            if (*(a1 + 332))
            {
              IIONumber::IIONumber(&dest, *(a1 + 508));
              IIODictionary::setObjectForKey(&v67, &dest.data, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
              IIONumber::~IIONumber(&dest);
              v36 = *(a1 + 308) <= *(a1 + 312) ? *(a1 + 312) : *(a1 + 308);
              IIONumber::IIONumber(&dest, v36);
              IIODictionary::setObjectForKey(&v67, &dest.data, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
              IIONumber::~IIONumber(&dest);
              v32 = a9;
              v37 = *(a1 + 332);
              v33 = width;
              v34 = y;
              v35 = x;
              if (v37 >= 2)
              {
                v35 = x * v37;
                v34 = y * v37;
                v33 = width * v37;
                v32 = a9 * v37;
              }
            }

            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v35);
            IIODictionary::setObjectForKey(&v67, DictionaryRepresentation, *gIIO_kCMPhotoDecompressionOption_SourceCropRect);
            CFRelease(DictionaryRepresentation);
            v39 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, *(a1 + 532), v68, 2, &v66);
            if (v39)
            {
              IIOCMErrorString(v39);
              _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2891, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
              if ((v31 << 8 >> 24) > 0x7F)
              {
                __maskrune(v31 << 8 >> 24, 0x40000uLL);
              }

              if ((v31 >> 8) > 0x7F)
              {
                __maskrune(v31 >> 8, 0x40000uLL);
              }

              v31 = v31;
              if (v31 > 0x7F)
              {
                __maskrune(v31, 0x40000uLL);
              }

              _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2892, "    outputPixelFormat: %c%c%c%c\n");
              ImageIODebugOptionsDictionary(v68);
              v28 = 0;
            }

            else
            {
              gFunc_CVPixelBufferLockBaseAddress(v66, 0);
              IsPlanar = gFunc_CVPixelBufferIsPlanar(v66);
              PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v66);
              v28 = IsPlanar == 0;
              if (IsPlanar)
              {
                _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2903, "*** 'BGRA' request returned planar data - not handled\n");
              }

              else
              {
                v42 = PixelFormatType;
                BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v66);
                BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v66);
                v60 = v42;
                Height = gFunc_CVPixelBufferGetHeight(v66);
                if (Height >= *(a1 + 312))
                {
                  v46 = *(a1 + 312);
                }

                else
                {
                  v46 = Height;
                }

                if (v46)
                {
                  v47 = *(a1 + 316);
                  if (BytesPerRow <= v47)
                  {
                    v48 = BytesPerRow;
                  }

                  else
                  {
                    v48 = v47;
                  }

                  v49 = v19;
                  do
                  {
                    memcpy(v49, BaseAddress, v48);
                    v49 += *(a1 + 316);
                    BaseAddress += BytesPerRow;
                    --v46;
                  }

                  while (v46);
                }

                if (v60 == 1111970369 && *(a1 + 436) != 1)
                {
                  v50 = *(a1 + 316);
                  v51 = *(a1 + 308);
                  if (v50 >= 4 * v51)
                  {
                    v52 = *(a1 + 312);
                    dest.data = v19;
                    dest.height = v52;
                    dest.width = v51;
                    dest.rowBytes = v50;
                    *permuteMap = 50331906;
                    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                  }
                }

                if (*(a1 + 436) == 1 && *(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
                {
                  dest.data = v19;
                  v53 = *(a1 + 308);
                  v54.i64[0] = v53;
                  v54.i64[1] = HIDWORD(v53);
                  *&dest.height = vextq_s8(v54, v54, 8uLL);
                  dest.rowBytes = *(a1 + 316);
                  vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                }
              }

              gFunc_CVPixelBufferUnlockBaseAddress(v66, 0);
              gFunc_CVPixelBufferRelease(v66, v55);
            }

            CFRelease(cf);
            IIODictionary::~IIODictionary(&v67);
          }

          CFRelease(v73);
          CFRelease(v26);
        }

        else
        {
          CFRelease(v73);
          v28 = 0;
        }

        v17 = v63;
        if (v70)
        {
          v56 = *(a1 + 24);
          if (v56)
          {
            IIOImageReadSession::releaseBytePointer(v56, v70);
          }
        }

        if (v28)
        {
          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = a9;
          **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v19, v74[0], v75, *(a1 + 316), *(a1 + 371));
          if (!CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
          {
            v77.origin.x = x;
            v77.origin.y = y;
            v77.size.width = width;
            v77.size.height = a9;
            v76 = CGRectUnion(*(a1 + 120), v77);
            x = v76.origin.x;
            y = v76.origin.y;
            width = v76.size.width;
            a9 = v76.size.height;
          }

          *(a1 + 120) = x;
          *(a1 + 128) = y;
          *(a1 + 136) = width;
          *(a1 + 144) = a9;
          if (a3)
          {
            v57 = IIOReadPlugin::imageBlockSetCreate(a1, a3, *(a1 + 104), *(a1 + 96), a2, width, a9, x, y, width, a9);
            v19 = 0;
            goto LABEL_68;
          }

          v19 = 0;
          goto LABEL_70;
        }
      }

      else
      {
        LogError("copyImageBlockSetSingleTile", 2834, "*** ERROR: retainBytePointer failed\n");
      }
    }
  }

  if (a3)
  {
    v57 = 0;
LABEL_68:
    IIOReadPlugin::freeBlockArray(a1);
    if (!v17)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_70:
  if (*(a1 + 104))
  {
    v57 = 0;
    *a5 = 1;
    if (!v17)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v57 = 0;
    if (!v17)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  v58 = *(a1 + 24);
  if (v58)
  {
    IIOImageReadSession::unmapData(v58);
  }

LABEL_76:
  if (v19)
  {
    _ImageIO_Free(v19, v74[0]);
  }

  return v57;
}

void sub_186087C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::createPixelBufferWithGainMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, GlobalHEIFInfo *a4, uint64_t a5)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  IIODictionary::IIODictionary(&v34);
  v32 = 0;
  cf = 0;
  space = 0;
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createPixelBufferWithGainMapApplied");
  }

  if (IIORestrictedDecodingEnabledFlag())
  {
    IIODictionary::setObjectForKey(&v34, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
  }

  if (*(a1 + 523) == 1)
  {
    v11 = HEIFReadPlugin::copyISOGainMapDictionary(a1, a2, v10, &v34);
  }

  else
  {
    v11 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, a2, a4, &v34);
  }

  v12 = v11;
  if (!v11)
  {
    v17 = 0;
    goto LABEL_37;
  }

  CFDictionaryGetValueIfPresent(v11, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace, &space);
  if (value)
  {
    Width = gFunc_CVPixelBufferGetWidth(a5);
    Height = gFunc_CVPixelBufferGetHeight(a5);
    v15 = *(a1 + 464);
    v16 = *(a1 + 544);
    memset(v29, 0, sizeof(v29));
    IIODictionary::IIODictionary(v29);
    v17 = IIOCreatePixelBuffer(Width, Height, v15, v29);
    Alpha = IIOPixelBufferGetAlpha(a5);
    IIOPixelBufferSetAlpha(v17, Alpha);
    if (*(a1 + 524) == 1 && CGColorSpaceContainsFlexGTCInfo())
    {
      v19 = CGColorSpaceRetain(*(a1 + 160));
    }

    else
    {
      v20 = CGColorSpaceCreateWithName(v16);
      if (v20 || (v20 = CGColorSpaceRetain(space)) != 0)
      {
LABEL_18:
        IIOPixelBufferSetColorSpace(v17, v20);
        CGColorSpaceRelease(v20);
        v21 = *(a1 + 476);
        if (v21 > 0.0)
        {
          IIONumber::IIONumber(v28, v21);
          IIODictionary::setObjectForKey(&v34, v28, @"kCGTargetHeadroom");
          IIONumber::~IIONumber(v28);
        }

        v22 = *(a1 + 480);
        if (v22 > 0.0)
        {
          IIONumber::IIONumber(v28, v22);
          IIODictionary::setObjectForKey(&v34, v28, @"kCGFallbackHDRGain");
          IIONumber::~IIONumber(v28);
        }

        IIONumber::IIONumber(v28, *(a1 + 525));
        IIODictionary::setObjectForKey(&v34, v28, @"kCGDisableMetal");
        IIONumber::~IIONumber(v28);
        IIONumber::IIONumber(v28, *(a1 + 524));
        IIODictionary::setObjectForKey(&v34, v28, @"kCGGenerateFlexGTC");
        IIONumber::~IIONumber(v28);
        IIONumber::IIONumber(v28, *(a1 + 192));
        IIODictionary::setObjectForKey(&v34, v28, @"kCGComputeHDRStats");
        IIONumber::~IIONumber(v28);
        IIONumber::IIONumber(v28, *(a1 + 504));
        IIODictionary::setObjectForKey(&v34, v28, @"Orientation");
        IIONumber::~IIONumber(v28);
        if (!cf)
        {
          goto LABEL_31;
        }

        v23 = CFGetTypeID(cf);
        if (v23 == CFDictionaryGetTypeID())
        {
          if (CGImageCreateFlexRangeMetadata(cf, &v32))
          {
            _cg_jpeg_mem_term("createPixelBufferWithGainMapApplied", 4154, "*** ERROR: CGImageCreateFlexRangeMetadata failed to create gainmapdata (err=%d)\n");
          }

          v24 = v32;
          if (!v32)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v24 = CFRetain(cf);
          v32 = v24;
          if (!v24)
          {
LABEL_31:
            ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 56), @"{MakerApple}");
            IIODictionary::setObjectForKey(&v34, ObjectForKey, @"{MakerApple}");
            IIODictionary::setObjectForKey(&v34, space, @"kCGFlexRangeAlternateColorSpace");
            if ((gIIODebugFlags & 0x300000) != 0)
            {
              ImageIOLog("☀️  'IIOCallApplyHDRGainmap'\n");
            }

            if (IIOApplyHDRGainMap(a5, value, v17, v35))
            {
              _cg_jpeg_mem_term("createPixelBufferWithGainMapApplied", 4176, "*** ERROR: IIOCallApplyHDRGainmap retuned %d\n");
            }

            IIODictionary::~IIODictionary(v29);
            goto LABEL_36;
          }
        }

        IIODictionary::setObjectForKey(&v34, v24, @"kCGImageAuxiliaryDataInfoMetadata");
        CFRelease(v32);
        goto LABEL_31;
      }

      v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
    }

    v20 = v19;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_36:
  CFRelease(v12);
LABEL_37:
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v26 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  <<< %s [%g ms]\n", "createPixelBufferWithGainMapApplied", (v26 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(&v34);
  return v17;
}

void sub_1860881CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__IOSurface *HEIFReadPlugin::createSurfaceWithGainMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, GlobalHEIFInfo *a4, __IOSurface *a5)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  IIODictionary::IIODictionary(&v41);
  v39 = 0;
  cf = 0;
  space = 0;
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createSurfaceWithGainMapApplied");
  }

  if (*(a1 + 523) == 1)
  {
    v11 = HEIFReadPlugin::copyISOGainMapDictionary(a1, a2, v9, &v41);
  }

  else
  {
    v11 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, a2, a4, &v41);
  }

  v12 = v11;
  if (!v11)
  {
    v23 = 0;
    goto LABEL_43;
  }

  CFDictionaryGetValueIfPresent(v11, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace, &space);
  if (!value)
  {
    goto LABEL_41;
  }

  Width = IOSurfaceGetWidth(a5);
  Height = IOSurfaceGetHeight(a5);
  v15 = *(a1 + 544);
  v16 = *(a1 + 468);
  v17 = *(a1 + 472);
  IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(Width, Height, 0, *(a1 + 464), 0, v18, v19, v20);
  v23 = IOSurfaceWithFormat;
  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(IOSurfaceWithFormat, "outputSurface", "createSurfaceWithGainMapApplied", 4226);
  }

  Alpha = IIO_IOSurfaceGetAlpha(a5, v22);
  IIO_IOSurfaceSetAlpha(v23, Alpha);
  if (*(a1 + 524) == 1 && CGColorSpaceContainsFlexGTCInfo())
  {
    v25 = CGColorSpaceRetain(*(a1 + 160));
LABEL_17:
    v26 = v25;
    goto LABEL_18;
  }

  v26 = CGColorSpaceCreateWithName(v15);
  if (!v26)
  {
    v26 = CGColorSpaceRetain(space);
    if (!v26)
    {
      v25 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
      goto LABEL_17;
    }
  }

LABEL_18:
  v27 = CGColorSpaceCopyPropertyList(v26);
  if (v27)
  {
    IOSurfaceSetValue(v23, *MEMORY[0x1E696CEE0], v27);
    CFRelease(v27);
  }

  CGColorSpaceRelease(v26);
  if ((v16 - 1) <= 2)
  {
    IOSurfaceSetYCbCrMatrix();
  }

  if (v17 > 0.0)
  {
    IIONumber::IIONumber(v36, v17);
    IOSurfaceSetValue(v23, @"IOSurfaceContentHeadroom", v36[2]);
    IIONumber::~IIONumber(v36);
  }

  v28 = *(a1 + 476);
  if (v28 > 0.0)
  {
    IIONumber::IIONumber(v36, v28);
    IIODictionary::setObjectForKey(&v41, v36, @"kCGTargetHeadroom");
    IIONumber::~IIONumber(v36);
  }

  v29 = *(a1 + 480);
  if (v29 > 0.0)
  {
    IIONumber::IIONumber(v36, v29);
    IIODictionary::setObjectForKey(&v41, v36, @"kCGFallbackHDRGain");
    IIONumber::~IIONumber(v36);
  }

  IIONumber::IIONumber(v36, *(a1 + 525));
  IIODictionary::setObjectForKey(&v41, v36, @"kCGDisableMetal");
  IIONumber::~IIONumber(v36);
  IIONumber::IIONumber(v36, *(a1 + 524));
  IIODictionary::setObjectForKey(&v41, v36, @"kCGGenerateFlexGTC");
  IIONumber::~IIONumber(v36);
  IIONumber::IIONumber(v36, *(a1 + 192));
  IIODictionary::setObjectForKey(&v41, v36, @"kCGComputeHDRStats");
  IIONumber::~IIONumber(v36);
  IIONumber::IIONumber(v36, *(a1 + 504));
  IIODictionary::setObjectForKey(&v41, v36, @"Orientation");
  IIONumber::~IIONumber(v36);
  if (!cf)
  {
    goto LABEL_36;
  }

  v30 = CFGetTypeID(cf);
  if (v30 == CFDictionaryGetTypeID())
  {
    if (CGImageCreateFlexRangeMetadata(cf, &v39))
    {
      _cg_jpeg_mem_term("createSurfaceWithGainMapApplied", 4287, "*** ERROR: CGImageCreateFlexRangeMetadata failed to create gainmapdata (err=%d)\n");
    }

    v31 = v39;
    if (!v39)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v31 = CFRetain(cf);
  v39 = v31;
  if (v31)
  {
LABEL_35:
    IIODictionary::setObjectForKey(&v41, v31, @"kCGImageAuxiliaryDataInfoMetadata");
    CFRelease(v39);
  }

LABEL_36:
  ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 56), @"{MakerApple}");
  IIODictionary::setObjectForKey(&v41, ObjectForKey, @"{MakerApple}");
  IIODictionary::setObjectForKey(&v41, space, @"kCGFlexRangeAlternateColorSpace");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallApplyHDRGainmap'\n");
  }

  if (!IIOCallApplyHDRGainmap(a5, value, v23, v42))
  {
    goto LABEL_42;
  }

  _cg_jpeg_mem_term("createSurfaceWithGainMapApplied", 4309, "*** ERROR: IIOCallApplyHDRGainmap retuned %d\n");
  if (!v23)
  {
    goto LABEL_42;
  }

  CFRelease(v23);
LABEL_41:
  v23 = 0;
LABEL_42:
  CFRelease(v12);
LABEL_43:
  v33 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v34 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createSurfaceWithGainMapApplied", (v34 - Current) * 1000.0);
    v33 = gIIODebugFlags;
  }

  if ((v33 & 0x2000000) != 0)
  {
    LogSurfaceFormat(v23, "outputSurface", "createSurfaceWithGainMapApplied", 4318);
  }

  IIODictionary::~IIODictionary(&v41);
  return v23;
}

void sub_1860887A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::createPixelBufferWithToneMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, int a8)
{
  Current = CFAbsoluteTimeGetCurrent();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  IIODictionary::IIODictionary(&v22);
  v13 = MEMORY[0x1E695E4D0];
  if (!a8)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(&v22, *v13, @"kCGDisableMetal");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createPixelBufferWithToneMapApplied");
  }

  Width = gFunc_CVPixelBufferGetWidth(a5);
  Height = gFunc_CVPixelBufferGetHeight(a5);
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21);
  v16 = IIOCreatePixelBuffer(Width, Height, a6, v21);
  v17 = CGColorSpaceCreateWithName(a7);
  IIOPixelBufferSetColorSpace(v16, v17);
  CGColorSpaceRelease(v17);
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallConvertHDRData'\n");
  }

  if (IIOConvertHDRData(a5, v16, v23))
  {
    _cg_jpeg_mem_term("createPixelBufferWithToneMapApplied", 4352, "*** ERROR: IIOCallConvertHDRData retuned %d\n");
    if (v16)
    {
      gFunc_CVPixelBufferRelease(v16, v18);
      v16 = 0;
    }
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v19 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createPixelBufferWithToneMapApplied", (v19 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(v21);
  IIODictionary::~IIODictionary(&v22);
  return v16;
}

void sub_186088A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

__IOSurface *HEIFReadPlugin::createSurfaceWithToneMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOSurface *a5, uint64_t a6, const __CFString *a7, int a8)
{
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  IIODictionary::IIODictionary(&v25);
  v13 = MEMORY[0x1E695E4D0];
  if (!a8)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(&v25, *v13, @"kCGDisableMetal");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createSurfaceWithToneMapApplied");
  }

  Width = IOSurfaceGetWidth(a5);
  Height = IOSurfaceGetHeight(a5);
  IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(Width, Height, 0, a6, 0, v16, v17, v18);
  v20 = IOSurfaceWithFormat;
  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(IOSurfaceWithFormat, "outputSurface", "createSurfaceWithToneMapApplied", 4383);
  }

  v21 = CGColorSpaceCreateWithName(a7);
  v22 = CGColorSpaceCopyPropertyList(v21);
  if (v22)
  {
    IOSurfaceSetValue(v20, *MEMORY[0x1E696CEE0], v22);
    CFRelease(v22);
  }

  CGColorSpaceRelease(v21);
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallConvertHDRData'\n");
  }

  if (IIOCallConvertHDRData(a5, v20, v26))
  {
    _cg_jpeg_mem_term("createSurfaceWithToneMapApplied", 4397, "*** ERROR: IIOCallConvertHDRData retuned %d\n");
    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v23 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createSurfaceWithToneMapApplied", (v23 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(&v25);
  return v20;
}

void sub_186088C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, __IOSurface **a4, uint64_t a5, uint64_t *a6)
{
  *(this + 56) = *(a2 + 9);
  *(this + 371) = 0;
  *(this + 440) = 1;
  *(this + 26) = 1;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(this + 55);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v11 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v11 << 8 >> 24;
    if (v16 <= 0x7F)
    {
      v17 = *(v13 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v11 << 8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v11 >> 8;
    if (v19 <= 0x7F)
    {
      v20 = *(v13 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v19, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v20)
    {
      v21 = (v11 >> 8);
    }

    else
    {
      v21 = 46;
    }

    if (v11 <= 0x7F)
    {
      if ((*(v13 + 4 * v11 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v11, 0x40000uLL))
    {
LABEL_22:
      v22 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus HEIFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v23 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
  if (!v23)
  {
    HEIFReadPlugin::decodeImageImp();
    return 4294967246;
  }

  *(this + 133) = GlobalHEIFInfo::resolvedIndexForIndex(v23, *(this + 56));
  if (a3 == 3)
  {
    v25 = *(a2 + 1);
    v26 = *(a2 + 2);
    v27 = *(a2 + 3);
    v28 = *(a2 + 4);
    v29 = *(a2 + 5);
    v30 = *(a2 + 6);
    v31 = *(a2 + 7);
    v32 = *(a2 + 8);
    XmpData = _APP1XMP::getXmpData(a2);
    v34 = (*(*this + 208))(this, v25, v26, XmpData, v27, v28, v29, v30, v31, v32);
    if (a6)
    {
      v24 = 0;
      *a6 = v34;
      return v24;
    }

    return 4294967246;
  }

  if (a3 != 1 || !a4)
  {
    return 4294967246;
  }

  if (*a4)
  {
    v24 = HEIFReadPlugin::decodeIntoIOSurface(this, a2, *a4);
    if ((gIIODebugFlags & 0x2000000) != 0)
    {
      LogSurfaceFormat(*a4, "*ioSurface", "decodeImageImp", 3326);
    }

    if (v24)
    {
      _cg_jpeg_mem_term("decodeImageImp", 3328, "*** decodeIntoIOSurface - err = %d\n");
    }
  }

  else
  {
    v35 = *(a2 + 2);
    v36 = _APP1XMP::getXmpData(a2);
    v24 = (*(*this + 224))(this, v35, v36, a4, 0);
    if ((gIIODebugFlags & 0x2000000) != 0)
    {
      LogSurfaceFormat(*a4, "*ioSurface", "decodeImageImp", 3335);
    }
  }

  return v24;
}

uint64_t HEIFReadPlugin::decodeIntoIOSurface(HEIFReadPlugin *this, IIODecodeParameter *a2, __IOSurface *a3)
{
  memset(v40, 0, sizeof(v40));
  XmpData = _APP1XMP::getXmpData(a2);
  IIODictionary::IIODictionary(v40, XmpData);
  v7 = *(a2 + 2);
  v39 = 0;
  v8 = *(this + 3);
  if (!v8)
  {
LABEL_6:
    v9 = 4294967246;
    goto LABEL_7;
  }

  if ((*(this + 520) & 1) != 0 || *(this + 521) == 1)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  ***ERROR: cannot applyGainMap / applyToneMap into a caller-provided IOSurface\n");
    }

    goto LABEL_6;
  }

  v11 = IIOImageReadSession::mapData(v8);
  v38 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("decodeIntoIOSurface", 3380, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v12 = IIOCreateCMPhotoDecompressionSession(&v38);
  v9 = v12;
  if (v12)
  {
    IIOCMErrorString(v12);
    _cg_jpeg_mem_term("decodeIntoIOSurface", 3387, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
    goto LABEL_12;
  }

  cf = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  Size = IIOImageReadSession::getSize(*(this + 3));
  v16 = IIOImageReadSession::retainBytePointer(*(this + 3), &v34, 1);
  v17 = v16;
  if (v16)
  {
    v18 = *(this + 61);
    if (v18)
    {
      if (*(this + 62))
      {
        Size = *(this + 62);
      }

      else
      {
        v18 = 0;
      }

      v17 = v16 + v18;
    }

    v19 = *MEMORY[0x1E695E480];
    v20 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
    if (v20)
    {
      v21 = gFunc_CMPhotoDecompressionSessionCreateContainer(v38, 0, v20, &v35, &v37);
      v9 = v21;
      if (!v21 && v37)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        IIODictionary::IIODictionary(&v31);
        v22 = gFunc_CVPixelBufferCreateWithIOSurface(v19, a3, 0, &v39);
        if (v22)
        {
          IIOCMErrorString(v22);
          _cg_jpeg_mem_term("decodeIntoIOSurface", 3431, "*** CVPixelBufferCreateWithIOSurface  err = %s [%d]\n");
        }

        PixelFormat = IOSurfaceGetPixelFormat(a3);
        v24 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
        GlobalHEIFInfo::getHEIFMainImageAtIndex(v24, *(this + 133));
        if (GlobalHEIFInfo::hasHEIFSequence(v24))
        {
          v25 = GlobalHEIFInfo::useHEIFSequence(v24);
        }

        else
        {
          v25 = 0;
        }

        HEIFReadPlugin::updateHardwareDecodeOptions(this, &v31, v40);
        IIONumber::IIONumber(v30, PixelFormat);
        IIODictionary::setObjectForKey(&v31, v30, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(v30);
        IIODictionary::setObjectForKey(&v31, v39, *gIIO_kCMPhotoDecompressionOption_UseProvidedPixelBuffer);
        HEIFReadPlugin::updateCreateImageOptions(this, &v31, *(this + 6));
        if (v25)
        {
          v26 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v37, 0, 0, &cf);
          if (v26)
          {
            IIOCMErrorString(v26);
            _cg_jpeg_mem_term("decodeIntoIOSurface", 3450, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n");
          }

          if (*(this + 232) >= 2u)
          {
            p_cf = &cf;
            if (*(this + 526))
            {
              goto LABEL_44;
            }

LABEL_41:
            ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(this + 133), 0, v32, 2, 0);
LABEL_45:
            v9 = ThumbnailImageForIndex;
            if (ThumbnailImageForIndex)
            {
              if (ThumbnailImageForIndex == -15470 && v7)
              {
                CGImageProviderSetProperty();
              }

              IIOCMErrorString(v9);
              _cg_jpeg_mem_term("decodeIntoIOSurface", 3491, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
              if ((PixelFormat >> 24) > 0x7F)
              {
                __maskrune(PixelFormat >> 24, 0x40000uLL);
              }

              if ((PixelFormat << 8 >> 24) > 0x7F)
              {
                __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
              }

              if ((PixelFormat >> 8) > 0x7F)
              {
                __maskrune(PixelFormat >> 8, 0x40000uLL);
              }

              PixelFormat = PixelFormat;
              if (PixelFormat > 0x7F)
              {
                __maskrune(PixelFormat, 0x40000uLL);
              }

              _cg_jpeg_mem_term("decodeIntoIOSurface", 3492, "    outputPixelFormat: %c%c%c%c\n");
              ImageIODebugOptionsDictionary(v32);
            }

            else
            {
              if (gFunc_CMPhotoDecompressionSessionDetachSurface)
              {
                v9 = gFunc_CMPhotoDecompressionSessionDetachSurface(v38, a3);
              }

              else
              {
                v9 = 0;
              }

              if ((gIIODebugFlags & 0x2000000) != 0)
              {
                LogSurfaceFormat(a3, "surface", "decodeIntoIOSurface", 3502);
              }

              if (v9)
              {
                IIOCMErrorString(v9);
                _cg_jpeg_mem_term("decodeIntoIOSurface", 3505, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n");
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            CFRelease(v37);
            IIODictionary::~IIODictionary(&v31);
            goto LABEL_68;
          }

          p_cf = &cf;
        }

        else if (*(this + 232) == 2)
        {
          p_cf = &v37;
          if ((*(this + 526) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          p_cf = &v37;
        }

LABEL_44:
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(*p_cf, *(this + 133), v32, 2, 0);
        goto LABEL_45;
      }

      IIOCMErrorString(v21);
      _cg_jpeg_mem_term("decodeIntoIOSurface", 3419, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
    }

    else
    {
      v9 = 0;
    }

LABEL_68:
    gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v38, 0, 0);
    CFRelease(v38);
    if (v20)
    {
      CFRelease(v20);
    }

    v13 = v34;
    if (v34)
    {
      v29 = *(this + 3);
      if (v29)
      {
        IIOImageReadSession::releaseBytePointer(v29, v34);
      }
    }

    goto LABEL_12;
  }

  LogError("decodeIntoIOSurface", 3402, "*** ERROR: retainBytePointer failed\n");
  v9 = 0;
LABEL_12:
  if (v11)
  {
    v14 = *(this + 3);
    if (v14)
    {
      IIOImageReadSession::unmapData(v14);
    }
  }

  if (v39)
  {
    gFunc_CVPixelBufferRelease(v39, v13);
  }

LABEL_7:
  IIODictionary::~IIODictionary(v40);
  return v9;
}

void sub_186089654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary((v11 - 104));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyPixelBufferImp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, uint64_t *a5)
{
  v52 = 0;
  v53[0] = 0;
  v50 = 0;
  v51 = 0;
  IIODictionary::IIODictionary(&v50, a3);
  IIO_LoadHEIFSymbols();
  v9 = *(a1 + 24);
  if (!v9)
  {
    v12 = 4294967246;
    goto LABEL_12;
  }

  v10 = IIOImageReadSession::mapData(v9);
  v49 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("copyPixelBufferImp", 3558, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v11 = IIOCreateCMPhotoDecompressionSession(&v49);
  v12 = v11;
  if (v11)
  {
    IIOCMErrorString(v11);
    _cg_jpeg_mem_term("copyPixelBufferImp", 3565, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
    goto LABEL_6;
  }

  cf = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v16 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v45, 1);
  v17 = v16;
  if (!v16)
  {
    LogError("copyPixelBufferImp", 3580, "*** ERROR: retainBytePointer failed\n");
    v12 = 4294967277;
    goto LABEL_6;
  }

  v18 = *(a1 + 488);
  if (v18)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v18 = 0;
    }

    v17 = v16 + v18;
  }

  v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
  if (!v19)
  {
    v12 = 0;
LABEL_66:
    CFRelease(v49);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v45)
    {
      v33 = *(a1 + 24);
      if (v33)
      {
        IIOImageReadSession::releaseBytePointer(v33, v45);
      }
    }

    goto LABEL_6;
  }

  v20 = gFunc_CMPhotoDecompressionSessionCreateContainer(v49, 0, v19, &v46, &v48);
  v21 = v20;
  if (v20 || !v48)
  {
    IIOCMErrorString(v20);
    _cg_jpeg_mem_term("copyPixelBufferImp", 3596, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
    if (v21)
    {
      v12 = v21;
    }

    else
    {
      v12 = 4294967246;
    }

    goto LABEL_66;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  IIODictionary::IIODictionary(&v42);
  v38 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v38))
  {
    v22 = GlobalHEIFInfo::useHEIFSequence(v38);
  }

  else
  {
    v22 = 0;
  }

  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v38, *(a1 + 532));
  if (HEIFMainImageAtIndex)
  {
    v41 = 0;
    if ((*(a1 + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v48, *(a1 + 532), 0, &v41), (DecodePixelFormatForBitDepth = v41) == 0))
    {
      v25 = HEIFMainImage::bitDepth(HEIFMainImageAtIndex);
      DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v25);
    }

    HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v42, *(a1 + 48));
    IIONumber::IIONumber(v40, DecodePixelFormatForBitDepth);
    IIODictionary::setObjectForKey(&v42, v40, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
    IIONumber::~IIONumber(v40);
    HEIFReadPlugin::updateCreateImageOptions(a1, &v42, *(a1 + 48));
    if (IIODictionary::containsKey(&v50, @"kCGImageSurfaceFormatRequest") && (*(a1 + 520) & 1) == 0 && (*(a1 + 521) & 1) == 0)
    {
      DecodePixelFormatForBitDepth = IIODictionary::getUint32ForKey(&v50, @"kCGImageSurfaceFormatRequest");
      IIONumber::IIONumber(v40, DecodePixelFormatForBitDepth);
      IIODictionary::setObjectForKey(&v42, v40, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
      IIONumber::~IIONumber(v40);
    }

    if (v22)
    {
      v26 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v48, 0, 0, &cf);
      v12 = v26;
      if (v26)
      {
        IIOCMErrorString(v26);
        _cg_jpeg_mem_term("copyPixelBufferImp", 3637, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n");
        goto LABEL_45;
      }

      if (*(a1 + 232) < 2u)
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = &cf;
        if ((*(a1 + 526) & 1) == 0)
        {
          goto LABEL_80;
        }
      }
    }

    else if (*(a1 + 232) == 2 && (*(a1 + 526) & 1) == 0)
    {
      p_cf = &v48;
      if (!*(a1 + 488))
      {
LABEL_80:
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(a1 + 532), 0, v43, 2, v53);
        goto LABEL_44;
      }
    }

    else
    {
      p_cf = &v48;
    }

    ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(*p_cf, *(a1 + 532), v43, 2, v53);
LABEL_44:
    v12 = ThumbnailImageForIndex;
LABEL_45:
    if (v12)
    {
      if (v12 == -15470 && a2)
      {
        CGImageProviderSetProperty();
      }

      IIOCMErrorString(v12);
      _cg_jpeg_mem_term("copyPixelBufferImp", 3682, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
      if ((DecodePixelFormatForBitDepth >> 24) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth >> 24, 0x40000uLL);
      }

      if ((DecodePixelFormatForBitDepth << 8 >> 24) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth << 8 >> 24, 0x40000uLL);
      }

      if ((DecodePixelFormatForBitDepth >> 8) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth >> 8, 0x40000uLL);
      }

      if (DecodePixelFormatForBitDepth > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth, 0x40000uLL);
      }

      _cg_jpeg_mem_term("copyPixelBufferImp", 3683, "    outputPixelFormat: %c%c%c%c\n");
      ImageIODebugOptionsDictionary(v43);
      goto LABEL_63;
    }

    if (*(a1 + 520) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n");
      }

      PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithGainMapApplied(a1, v48, v29, v38, v53[0]);
      if (PixelBufferWithGainMapApplied)
      {
LABEL_78:
        CFRelease(v53[0]);
        v53[0] = PixelBufferWithGainMapApplied;
      }
    }

    else if (*(a1 + 521) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ThumbnailImageForIndex = ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n");
      }

      PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithToneMapApplied(ThumbnailImageForIndex, v28, v29, v30, v53[0], *(a1 + 464), *(a1 + 544), *(a1 + 525));
      if (PixelBufferWithGainMapApplied)
      {
        goto LABEL_78;
      }
    }

    else if ((*(a1 + 192) & 1) == 0 && (gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  no apply / no tone mapping / no compute stats [%p]\n", a1);
    }

    if (*(a1 + 192) == 1)
    {
      v34 = *(a1 + 352);
      v35 = gIIODebugFlags & 0x300000;
      if (v34 == 0.0)
      {
        if (v35)
        {
          ImageIOLog("☀️  _computeHDRStats --> IIOCallComputeHDRStats\n");
        }

        v39 = 0;
        IIONumber::IIONumber(v40, *(a1 + 525));
        IIODictionary::setObjectForKey(&v50, v40, @"kCGDisableMetal");
        IIONumber::~IIONumber(v40);
        v12 = CGImageComputeHDRImageStatistics(v53[0], 0, &v39, v51);
        if (!v12)
        {
          *(a1 + 360) = 1;
        }

        memset(v40, 0, sizeof(v40));
        IIODictionary::IIODictionary(v40, v39);
        *(a1 + 352) = IIODictionary::getFloatForKey(v40, @"kCGContentBrightness");
        FloatForKey = IIODictionary::getFloatForKey(v40, @"kCGContentHeadroom");
        *(a1 + 356) = FloatForKey;
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  HDR Stats: headroom=%g brightness=%g  (%g)", FloatForKey, *(a1 + 352), *(a1 + 352) * 203.0);
        }

        IIODictionary::~IIODictionary(v40);
      }

      else
      {
        if (v35)
        {
          ImageIOLog("☀️  HDR Stats(cached): headroom=%g brightness=%g  (%g)", *(a1 + 356), v34, v34 * 203.0);
        }

        v12 = 0;
      }

      if (!CGImageProviderGetContentAverageLightLevelNits())
      {
        CGImageProviderSetContentAverageLightLevelNits();
      }
    }

    else
    {
      v12 = 0;
    }

    if (!a5)
    {
      goto LABEL_63;
    }

    if (*(a1 + 523) == 1)
    {
      v37 = HEIFReadPlugin::copyISOGainMapDictionary(a1, v48, v29, &v50);
    }

    else
    {
      if (*(a1 + 522) != 1)
      {
LABEL_63:
        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(v48);
        IIODictionary::~IIODictionary(&v42);
        goto LABEL_66;
      }

      v37 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, v48, v38, &v50);
    }

    *a5 = v37;
    goto LABEL_63;
  }

  LogError("copyPixelBufferImp", 3608, "*** ERROR: failed to get mainImage [#%d]\n", *(a1 + 532));
  IIODictionary::~IIODictionary(&v42);
  v12 = 4294967246;
LABEL_6:
  if (v10)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      IIOImageReadSession::unmapData(v13);
    }
  }

  if (a4)
  {
    *a4 = v53[0];
  }

LABEL_12:
  IIODictionary::~IIODictionary(&v50);
  return v12;
}