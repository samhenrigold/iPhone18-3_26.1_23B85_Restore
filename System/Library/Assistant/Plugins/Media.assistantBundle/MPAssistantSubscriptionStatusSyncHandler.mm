@interface MPAssistantSubscriptionStatusSyncHandler
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation MPAssistantSubscriptionStatusSyncHandler

- (void)syncDidEnd
{
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (end): sync ended", v6, 2u);
  }

  postAnchor = self->_postAnchor;
  self->_postAnchor = 0;

  clientState = self->_clientState;
  self->_clientState = 0;
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ((objc_msgSend_isEqualToString_(anchor, v7, self->_postAnchor, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277CBEBC0];
    v15 = objc_msgSend_uniqueObjectIdentifier(MEMORY[0x277D472D0], v10, v11, v12, v13);
    v19 = objc_msgSend_URLWithString_(v14, v16, v15, v17, v18);
    objc_msgSend_setIdentifier_(self->_clientState, v20, v19, v21, v22);

    objc_msgSend_setObject_(infoCopy, v23, self->_clientState, v24, v25);
    v26 = _MPLogCategoryAssistant_Oversize();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_dictionary(self->_clientState, v27, v28, v29, v30);
      v32 = 138477827;
      v33 = v31;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (get): %{private}@", &v32, 0xCu);
    }
  }

  objc_msgSend_setPostAnchor_(infoCopy, v10, self->_postAnchor, v12, v13);
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  v355[0] = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    *&buf[4] = anchorCopy;
    *&buf[12] = 2114;
    *&buf[14] = validityCopy;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (begin): anchor: %{private}@, validity: %{public}@", buf, 0x16u);
  }

  v11 = dispatch_semaphore_create(0);
  v331 = 0;
  v332 = &v331;
  v333 = 0x3032000000;
  v334 = sub_23350408C;
  v335 = sub_23350409C;
  v336 = 0;
  v328[0] = MEMORY[0x277D85DD0];
  v328[1] = 3221225472;
  v328[2] = sub_2335040A4;
  v328[3] = &unk_2789DBCA0;
  v328[4] = self;
  v330 = &v331;
  v12 = v11;
  v329 = v12;
  sub_2335040A4(v328, 0);
  v13 = dispatch_time(0, 10000000000);
  v319 = v12;
  if (dispatch_semaphore_wait(v12, v13))
  {
    v18 = anchorCopy;
    postAnchor = self->_postAnchor;
    self->_postAnchor = v18;
    goto LABEL_208;
  }

  v318 = objc_msgSend_allKeys(v332[5], v14, v15, v16, v17);
  v316 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v20, @"self", 1, v21);
  v338 = v316;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, &v338, 1, v23);
  v28 = objc_msgSend_sortedArrayUsingDescriptors_(v318, v25, v24, v26, v27);

  v33 = objc_msgSend_string(MEMORY[0x277CCACA8], v29, v30, v31, v32);
  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  v34 = v28;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v324, v337, 16);
  if (v39)
  {
    v40 = *v325;
    do
    {
      v41 = 0;
      v42 = v33;
      do
      {
        if (*v325 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v43 = objc_msgSend_objectForKeyedSubscript_(v332[5], v36, *(*(&v324 + 1) + 8 * v41), v37, v38);
        v33 = objc_msgSend_stringByAppendingFormat_(v42, v44, @"%@:", v45, v46, v43);

        ++v41;
        v42 = v33;
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v324, v337, 16);
    }

    while (v39);
  }

  v317 = objc_msgSend_stringByAppendingString_(v33, v47, @"END", v48, v49);

  v50 = MEMORY[0x277CCACA8];
  v55 = objc_msgSend_defaultUserState(self->_clientState, v51, v52, v53, v54);
  v60 = objc_msgSend_status(v55, v56, v57, v58, v59);
  isEqualToString = objc_msgSend_isEqualToString_(v60, v61, *MEMORY[0x277D47D60], v62, v63);
  v69 = objc_msgSend_expirationDate(self->_clientState, v65, v66, v67, v68);
  v74 = objc_msgSend_date(v69, v70, v71, v72, v73);
  objc_msgSend_timeIntervalSinceReferenceDate(v74, v75, v76, v77, v78);
  v80 = v79;
  v85 = objc_msgSend_defaultUserState(self->_clientState, v81, v82, v83, v84);
  v90 = objc_msgSend_userHistoryUnmodifiable(v85, v86, v87, v88, v89);
  v94 = objc_msgSend_stringWithFormat_(v50, v91, @"FuseEligibility_%d_%f:PL_%@_UserAnchors_%@", v92, v93, isEqualToString, v80, v90, v317);

  v95 = v94;
  v350 = 0u;
  v349 = 0u;
  v348 = 0u;
  v347 = 0u;
  v346 = 0u;
  v345 = 0u;
  v344 = 0u;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  memset(&buf[8], 0, 32);
  *buf = 4256;
  CC_SHA256_Init(&buf[8]);
  v96 = v95;
  v97 = v96;
  v102 = objc_msgSend_UTF8String(v96, v98, v99, v100, v101);
  v107 = objc_msgSend_length(v96, v103, v104, v105, v106);
  v112 = v107;
  if (*buf <= 3000)
  {
    if (*buf <= 1999)
    {
      if (!*buf)
      {
        v148 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v108, v109, v110, v111);
        v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)", v150, v151);
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v148, v153, v152, @"MSVHasher+Algorithms.h", 262, @"Cannot append to unknown hasher algorithm");

        goto LABEL_108;
      }

      if (*buf != 1000)
      {
        goto LABEL_108;
      }

      v113 = BYTE7(v340);
      v114 = v340 & 0xFFFFFFFFFFFFFFLL;
      v115 = BYTE7(v340) & 7;
      if (v115)
      {
        v116 = 8 - v115;
        v117 = v107 - (8 - v115);
        if (v107 < 8 - v115)
        {
LABEL_30:
          if (v112)
          {
            v140 = 0;
            v141 = 0;
            v142 = v112;
            do
            {
              v143 = *v102++;
              v141 |= v143 << v140;
              v140 += 8;
              --v142;
            }

            while (v142);
            if (v115)
            {
              v144 = (v141 << (8 * v115)) | ((v112 + v113) << 56) | v114;
            }

            else
            {
              v144 = v141 | ((v112 + v113) << 56);
            }
          }

          else
          {
            if (v115)
            {
              goto LABEL_108;
            }

            v144 = v113 << 56;
          }

          *&v340 = v144;
          goto LABEL_108;
        }

        v118 = 8 * v115;
        v119 = v102;
        v120 = v340 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v121 = *v119++;
          v120 |= v121 << v118;
          v118 += 8;
        }

        while (v118 != 64);
        v122 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
        v123 = *&buf[24] + (*&buf[32] ^ v120);
        v124 = __ROR8__(*&buf[32] ^ v120, 48);
        v125 = (v123 ^ v124) + __ROR8__(*&buf[8] + *&buf[16], 32);
        v126 = v125 ^ __ROR8__(v123 ^ v124, 43);
        v127 = v123 + v122;
        *&buf[24] = __ROR8__(v127, 32);
        *&buf[32] = v126;
        *&buf[8] = v125 ^ v120;
        *&buf[16] = v127 ^ __ROR8__(v122, 47);
        v102 += v116;
        *&v340 = (v116 + v113) << 56;
        v112 = v117;
      }

      if (v112 >= 8)
      {
        v128 = *&buf[8];
        v131 = *&buf[24];
        v130 = *&buf[16];
        v129 = *&buf[32];
        do
        {
          v132 = *v102;
          v102 += 8;
          v133 = v129 ^ v132;
          v134 = v128 + v130;
          v135 = v134 ^ __ROR8__(v130, 51);
          v136 = v131 + v133;
          v137 = __ROR8__(v133, 48);
          v138 = (v136 ^ v137) + __ROR8__(v134, 32);
          v129 = v138 ^ __ROR8__(v136 ^ v137, 43);
          v139 = v136 + v135;
          v130 = v139 ^ __ROR8__(v135, 47);
          v131 = __ROR8__(v139, 32);
          *&buf[24] = v131;
          *&buf[32] = v129;
          v128 = v138 ^ v132;
          *&buf[8] = v128;
          *&buf[16] = v130;
          v112 -= 8;
          v113 += 8;
        }

        while (v112 > 7);
      }

      v115 = 0;
      goto LABEL_30;
    }

    if (*buf != 2000)
    {
      if (*buf != 3000 || !v102)
      {
        goto LABEL_108;
      }

      v146 = v107 > 0xF || (*&buf[8] + v107) > 0xF;
      *&buf[8] += v107;
      *&buf[12] |= v146;
      if (v107 + DWORD2(v340) > 0xF)
      {
        v161 = &v102[v107];
        if (DWORD2(v340))
        {
          memcpy(&buf[DWORD2(v340) + 32], v102, (16 - DWORD2(v340)));
          HIDWORD(v162) = *&buf[16] - 2048144777 * *&buf[32];
          LODWORD(v162) = HIDWORD(v162);
          v163 = -1640531535 * (v162 >> 19);
          HIDWORD(v162) = *&buf[20] - 2048144777 * *&buf[36];
          LODWORD(v162) = HIDWORD(v162);
          *&buf[16] = v163;
          *&buf[20] = -1640531535 * (v162 >> 19);
          HIDWORD(v162) = *&buf[24] - 2048144777 * v340;
          LODWORD(v162) = HIDWORD(v162);
          *&buf[24] = -1640531535 * (v162 >> 19);
          HIDWORD(v162) = *&buf[28] - 2048144777 * DWORD1(v340);
          LODWORD(v162) = HIDWORD(v162);
          v102 += (16 - DWORD2(v340));
          *&buf[28] = -1640531535 * (v162 >> 19);
          DWORD2(v340) = 0;
        }

        if (v102 <= v161 - 16)
        {
          v164 = *&buf[16];
          v165 = *&buf[20];
          v166 = *&buf[24];
          v167 = *&buf[28];
          do
          {
            HIDWORD(v168) = v164 - 2048144777 * *v102;
            LODWORD(v168) = HIDWORD(v168);
            v164 = -1640531535 * (v168 >> 19);
            HIDWORD(v168) = v165 - 2048144777 * *(v102 + 1);
            LODWORD(v168) = HIDWORD(v168);
            v165 = -1640531535 * (v168 >> 19);
            HIDWORD(v168) = v166 - 2048144777 * *(v102 + 2);
            LODWORD(v168) = HIDWORD(v168);
            v166 = -1640531535 * (v168 >> 19);
            HIDWORD(v168) = v167 - 2048144777 * *(v102 + 3);
            LODWORD(v168) = HIDWORD(v168);
            v167 = -1640531535 * (v168 >> 19);
            v102 += 16;
          }

          while (v102 <= v161 - 16);
          *&buf[16] = v164;
          *&buf[20] = v165;
          *&buf[24] = v166;
          *&buf[28] = v167;
        }

        if (v102 >= v161)
        {
          goto LABEL_108;
        }

        v147 = v161 - v102;
        __memcpy_chk();
      }

      else
      {
        memcpy(&buf[DWORD2(v340) + 32], v102, v107);
        v147 = DWORD2(v340) + v112;
      }

      DWORD2(v340) = v147;
      goto LABEL_108;
    }

    v154 = v107 + buf[19];
    if (v154 < 4)
    {
      v155 = &buf[buf[19]];
      if (v107 <= 1u)
      {
        if (!v107)
        {
LABEL_107:
          *&buf[12] += v112;
          goto LABEL_108;
        }

        if (v107 == 1)
        {
          v155[16] = *v102;
          goto LABEL_107;
        }

LABEL_91:
        memcpy(v155 + 16, v102, v107);
        goto LABEL_107;
      }

      if (v107 == 2)
      {
        v174 = *v102;
      }

      else
      {
        if (v107 != 3)
        {
          goto LABEL_91;
        }

        v174 = *v102;
        v155[18] = v102[2];
      }

      *(v155 + 8) = v174;
      goto LABEL_107;
    }

    LOBYTE(v157) = 0;
    v158 = v154 & 0xFFFFFFFFFFFFFFFCLL;
    if (buf[19] > 1u)
    {
      if (buf[19] != 2)
      {
        LOBYTE(v159) = 0;
        LOBYTE(v160) = 0;
        v175 = 0;
        if (buf[19] == 3)
        {
          LOBYTE(v159) = buf[16];
          v157 = HIBYTE(*&buf[16]);
          LOBYTE(v160) = buf[18];
          v175 = *v102;
        }

        goto LABEL_97;
      }

      LOBYTE(v159) = buf[16];
      v157 = HIBYTE(*&buf[16]);
      v160 = *v102;
    }

    else
    {
      if (!buf[19])
      {
        v159 = *v102;
        v157 = *v102 >> 8;
        v160 = HIWORD(*v102);
        v175 = HIBYTE(*v102);
        goto LABEL_97;
      }

      LOBYTE(v159) = buf[16];
      LOBYTE(v157) = *v102;
      v160 = *(v102 + 1);
    }

    v175 = v160 >> 8;
LABEL_97:
    v176 = v154 & 3;
    v177 = (v160 << 16) | (v175 << 24) | v159 | (v157 << 8);
    HIDWORD(v178) = (461845907 * ((380141568 * v177) | ((-862048943 * v177) >> 17))) ^ *&buf[8];
    LODWORD(v178) = HIDWORD(v178);
    v179 = 5 * (v178 >> 19) - 430675100;
    *&buf[8] = v179;
    v180 = &v102[-buf[19] + 4];
    v181 = &v102[v158 - buf[19]];
    while (v180 < v181)
    {
      v182 = *v180;
      v180 += 4;
      HIDWORD(v183) = (461845907 * ((380141568 * v182) | ((-862048943 * v182) >> 17))) ^ v179;
      LODWORD(v183) = HIDWORD(v183);
      v179 = 5 * (v183 >> 19) - 430675100;
      *&buf[8] = v179;
    }

    if (v176 > 1)
    {
      if (v176 == 2)
      {
        *&buf[16] = *v181;
      }

      else
      {
        v184 = *v181;
        buf[18] = v181[2];
        *&buf[16] = v184;
      }
    }

    else if (v176)
    {
      buf[16] = *v181;
    }

    buf[19] = v176;
    goto LABEL_107;
  }

  if (*buf > 4000)
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[8], v102, v107);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[8], v102, v107);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[8], v102, v107);
        break;
    }

    goto LABEL_108;
  }

  if (*buf != 3001)
  {
    if (*buf == 4000)
    {
      CC_MD5_Update(&buf[8], v102, v107);
    }

    goto LABEL_108;
  }

  if (!v102)
  {
    goto LABEL_108;
  }

  *&buf[8] += v107;
  if (v107 + DWORD2(v342) <= 0x1F)
  {
    memcpy(&v340 + DWORD2(v342) + 8, v102, v107);
    v156 = DWORD2(v342) + v112;
LABEL_82:
    DWORD2(v342) = v156;
    goto LABEL_108;
  }

  v169 = &v102[v107];
  if (DWORD2(v342))
  {
    memcpy(&v340 + DWORD2(v342) + 8, v102, (32 - DWORD2(v342)));
    *&buf[16] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[16] - 0x3D4D51C2D82B14B1 * *(&v340 + 1), 33);
    *&buf[24] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[24] - 0x3D4D51C2D82B14B1 * v341, 33);
    *&buf[32] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[32] - 0x3D4D51C2D82B14B1 * *(&v341 + 1), 33);
    *&v340 = 0x9E3779B185EBCA87 * __ROR8__(v340 - 0x3D4D51C2D82B14B1 * v342, 33);
    v102 += (32 - DWORD2(v342));
    DWORD2(v342) = 0;
  }

  if ((v102 + 32) <= v169)
  {
    v171 = *&buf[24];
    v170 = *&buf[16];
    v173 = *&buf[32];
    v172 = v340;
    do
    {
      v170 = 0x9E3779B185EBCA87 * __ROR8__(v170 - 0x3D4D51C2D82B14B1 * *v102, 33);
      v171 = 0x9E3779B185EBCA87 * __ROR8__(v171 - 0x3D4D51C2D82B14B1 * *(v102 + 1), 33);
      v173 = 0x9E3779B185EBCA87 * __ROR8__(v173 - 0x3D4D51C2D82B14B1 * *(v102 + 2), 33);
      v172 = 0x9E3779B185EBCA87 * __ROR8__(v172 - 0x3D4D51C2D82B14B1 * *(v102 + 3), 33);
      v102 += 32;
    }

    while (v102 <= v169 - 32);
    *&buf[16] = v170;
    *&buf[24] = v171;
    *&buf[32] = v173;
    *&v340 = v172;
  }

  if (v102 < v169)
  {
    v156 = v169 - v102;
    __memcpy_chk();
    goto LABEL_82;
  }

LABEL_108:

  memset(&v351[8], 0, 64);
  *v351 = *buf;
  if (*buf <= 3000)
  {
    if (*buf <= 1999)
    {
      if (!*buf)
      {
        v221 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v185, v186, v187, v188);
        v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v222, "MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)", v223, v224);
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v221, v226, v225, @"MSVHasher+Algorithms.h", 156, @"Cannot finalize unknown hasher algorithm");

        goto LABEL_155;
      }

      if (*buf != 1000)
      {
        goto LABEL_155;
      }

      v189 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
      v190 = *&buf[24] + (*&buf[32] ^ v340);
      v191 = __ROR8__(*&buf[32] ^ v340, 48);
      v192 = (v190 ^ v191) + __ROR8__(*&buf[8] + *&buf[16], 32);
      v193 = v192 ^ __ROR8__(v190 ^ v191, 43);
      v194 = v190 + v189;
      v195 = v194 ^ __ROR8__(v189, 47);
      v196 = (v192 ^ v340) + v195;
      v197 = v196 ^ __ROR8__(v195, 51);
      v198 = (__ROR8__(v194, 32) ^ 0xFFLL) + v193;
      v199 = __ROR8__(v193, 48);
      v200 = __ROR8__(v196, 32) + (v198 ^ v199);
      v201 = v200 ^ __ROR8__(v198 ^ v199, 43);
      v202 = v197 + v198;
      v203 = v202 ^ __ROR8__(v197, 47);
      v204 = v203 + v200;
      v205 = v204 ^ __ROR8__(v203, 51);
      v206 = __ROR8__(v202, 32) + v201;
      v207 = __ROR8__(v201, 48);
      v208 = __ROR8__(v204, 32) + (v206 ^ v207);
      v209 = v208 ^ __ROR8__(v206 ^ v207, 43);
      v210 = v205 + v206;
      v211 = v210 ^ __ROR8__(v205, 47);
      v212 = v211 + v208;
      v213 = v212 ^ __ROR8__(v211, 51);
      v214 = __ROR8__(v210, 32) + v209;
      v215 = __ROR8__(v209, 48);
      v216 = __ROR8__(v212, 32) + (v214 ^ v215);
      v217 = v216 ^ __ROR8__(v214 ^ v215, 43);
      v218 = v213 + v214;
      *&buf[8] = v216;
      *&buf[16] = v218 ^ __ROR8__(v213, 47);
      *&buf[24] = __ROR8__(v218, 32);
      *&buf[32] = v217;
      v219 = *&buf[16] ^ v216 ^ *&buf[24] ^ v217;
      goto LABEL_142;
    }

    if (*buf != 2000)
    {
      if (*buf != 3000)
      {
        goto LABEL_155;
      }

      if (*&buf[12])
      {
        v220 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_2335115B0), vshlq_u32(*&buf[16], xmmword_2335115A0)));
      }

      else
      {
        v220 = *&buf[24] + 374761393;
      }

      v236 = *&buf[8] + v220;
      v237 = &buf[32];
      v238 = BYTE8(v340) & 0xF;
      if (v238 >= 4)
      {
        do
        {
          v239 = *v237;
          v237 += 4;
          HIDWORD(v240) = v236 - 1028477379 * v239;
          LODWORD(v240) = HIDWORD(v240);
          v236 = 668265263 * (v240 >> 15);
          v238 -= 4;
        }

        while (v238 > 3);
      }

      for (; v238; --v238)
      {
        v241 = *v237++;
        HIDWORD(v242) = v236 + 374761393 * v241;
        LODWORD(v242) = HIDWORD(v242);
        v236 = -1640531535 * (v242 >> 21);
      }

      v243 = (-2048144777 * (v236 ^ (v236 >> 15))) ^ ((-2048144777 * (v236 ^ (v236 >> 15))) >> 13);
      v244 = (-1028477379 * v243) ^ ((-1028477379 * v243) >> 16);
      goto LABEL_154;
    }

    switch(buf[19])
    {
      case 1:
        v227 = buf[16];
        break;
      case 2:
        v227 = *&buf[16];
        break;
      case 3:
        v227 = *&buf[16] | (buf[18] << 16);
        break;
      default:
        v245 = *&buf[8];
        goto LABEL_153;
    }

    v245 = (461845907 * ((380141568 * v227) | ((-862048943 * v227) >> 17))) ^ *&buf[8];
LABEL_153:
    v246 = -2048144789 * (v245 ^ *&buf[12] ^ ((v245 ^ *&buf[12]) >> 16));
    v244 = (-1028477387 * (v246 ^ (v246 >> 13))) ^ ((-1028477387 * (v246 ^ (v246 >> 13))) >> 16);
    *&buf[8] = v244;
LABEL_154:
    *&v351[8] = v244;
    goto LABEL_155;
  }

  if (*buf > 4000)
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Final(&v351[8], &buf[8]);
        break;
      case 0x10A0:
        CC_SHA256_Final(&v351[8], &buf[8]);
        break;
      case 0x11A0:
        CC_SHA512_Final(&v351[8], &buf[8]);
        break;
    }

    goto LABEL_155;
  }

  if (*buf == 3001)
  {
    if (*&buf[8] < 0x20uLL)
    {
      v228 = *&buf[32] + 0x27D4EB2F165667C5;
    }

    else
    {
      v185 = __ROR8__(v340, 46);
      v228 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * (&v185[__ROR8__(*&buf[32], 52) + __ROR8__(*&buf[24], 57) + __ROR8__(*&buf[16], 63)] ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[16], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[24], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[32], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v340, 33)));
    }

    v229 = v228 + *&buf[8];
    v230 = &v340 + 1;
    v231 = buf[8] & 0x1F;
    if (v231 >= 8)
    {
      do
      {
        v232 = *v230++;
        v229 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v232, 33)) ^ v229, 37);
        v231 -= 8;
      }

      while (v231 > 7);
    }

    if (v231 >= 4)
    {
      v233 = *v230;
      v230 = (v230 + 4);
      v229 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v233) ^ v229, 41);
      v231 -= 4;
    }

    for (; v231; --v231)
    {
      v234 = *v230;
      v230 = (v230 + 1);
      v229 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v234) ^ v229, 53);
    }

    v235 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v229 ^ (v229 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v229 ^ (v229 >> 33))) >> 29));
    v219 = v235 ^ HIDWORD(v235);
LABEL_142:
    *&v351[8] = v219;
    goto LABEL_155;
  }

  if (*buf == 4000)
  {
    CC_MD5_Final(&v351[8], &buf[8]);
  }

LABEL_155:
  v352[0] = *v351;
  v352[1] = *&v351[16];
  v352[2] = *&v351[32];
  v352[3] = *&v351[48];
  v353 = *&v351[64];
  if (*v351 > 3999)
  {
    if (*v351 > 4255)
    {
      if (*v351 == 4256)
      {
        v294 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v295 = v294;
        v296 = 0;
        v297 = v352 + 8;
        do
        {
          v298 = *v297++;
          v299 = &v294[v296];
          *v299 = a0123456789abcd[v298 >> 4];
          v299[1] = a0123456789abcd[v298 & 0xF];
          v296 += 2;
        }

        while (v296 != 64);
        v300 = objc_alloc(MEMORY[0x277CCACA8]);
        v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v300, v301, v295, 64, 4, 1);
      }

      else
      {
        if (*v351 != 4512)
        {
          goto LABEL_209;
        }

        v266 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v267 = v266;
        v268 = 0;
        v269 = v352 + 8;
        do
        {
          v270 = *v269++;
          v271 = &v266[v268];
          *v271 = a0123456789abcd[v270 >> 4];
          v271[1] = a0123456789abcd[v270 & 0xF];
          v268 += 2;
        }

        while (v268 != 128);
        v272 = objc_alloc(MEMORY[0x277CCACA8]);
        v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v272, v273, v267, 128, 4, 1);
      }
    }

    else if (*v351 == 4000)
    {
      v280 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v281 = v280;
      v282 = 0;
      v283 = v352 + 8;
      do
      {
        v284 = *v283++;
        v285 = &v280[v282];
        *v285 = a0123456789abcd[v284 >> 4];
        v285[1] = a0123456789abcd[v284 & 0xF];
        v282 += 2;
      }

      while (v282 != 32);
      v286 = objc_alloc(MEMORY[0x277CCACA8]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v286, v287, v281, 32, 4, 1);
    }

    else
    {
      if (*v351 != 4001)
      {
        goto LABEL_209;
      }

      v252 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v253 = v252;
      v254 = 0;
      v255 = v352 + 8;
      do
      {
        v256 = *v255++;
        v257 = &v252[v254];
        *v257 = a0123456789abcd[v256 >> 4];
        v257[1] = a0123456789abcd[v256 & 0xF];
        v254 += 2;
      }

      while (v254 != 40);
      v258 = objc_alloc(MEMORY[0x277CCACA8]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v258, v259, v253, 40, 4, 1);
    }
  }

  else
  {
    if (*v351 <= 2999)
    {
      if (*v351 == 1000)
      {
        v274 = *(&v352[0] + 1);
        if (*(&v352[0] + 1))
        {
          v275 = v355 + 1;
          quot = *(&v352[0] + 1);
          do
          {
            v277 = lldiv(quot, 10);
            quot = v277.quot;
            if (v277.rem >= 0)
            {
              LOBYTE(v278) = v277.rem;
            }

            else
            {
              v278 = -v277.rem;
            }

            *(v275 - 2) = v278 + 48;
            v279 = (v275 - 2);
            --v275;
          }

          while (v277.quot);
          if (v274 < 0)
          {
            *(v275 - 2) = 45;
            v279 = (v275 - 2);
          }

          v251 = CFStringCreateWithBytes(0, v279, v355 - v279, 0x8000100u, 0);
          goto LABEL_200;
        }

        goto LABEL_210;
      }

      if (*v351 == 2000)
      {
        v247 = DWORD2(v352[0]);
        if (DWORD2(v352[0]))
        {
          v248 = v355;
          do
          {
            v249 = ldiv(v247, 10);
            v247 = v249.quot;
            if (v249.rem >= 0)
            {
              LOBYTE(v250) = v249.rem;
            }

            else
            {
              v250 = -v249.rem;
            }

            *--v248 = v250 + 48;
          }

          while (v249.quot);
          v251 = CFStringCreateWithBytes(0, v248, v355 - v248, 0x8000100u, 0);
          goto LABEL_200;
        }

LABEL_210:
        v302 = @"0";
        goto LABEL_201;
      }

LABEL_209:
      v310 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v185, v186, v187, v188);
      v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v311, "NSString * _Nonnull _MSVHashGetDigest(MSVHash)", v312, v313);
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v310, v315, v314, @"MSVHasher+Algorithms.h", 356, @"Cannot obtain digest from unknown hasher algorithm");

      v302 = &stru_2848D4AE0;
      goto LABEL_201;
    }

    if (*v351 == 3000)
    {
      LODWORD(v354[0]) = bswap32(DWORD2(v352[0]));
      v288 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v289 = 0;
      v290 = v288 + 1;
      do
      {
        v291 = *(v354 + v289);
        *(v290 - 1) = a0123456789abcd[v291 >> 4];
        *v290 = a0123456789abcd[v291 & 0xF];
        v290 += 2;
        ++v289;
      }

      while (v289 != 4);
      v292 = objc_alloc(MEMORY[0x277CCACA8]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v292, v293, v288, 8, 4, 1);
    }

    else
    {
      if (*v351 != 3001)
      {
        goto LABEL_209;
      }

      v354[0] = bswap64(*(&v352[0] + 1));
      v260 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v261 = 0;
      v262 = v260 + 1;
      do
      {
        v263 = *(v354 + v261);
        *(v262 - 1) = a0123456789abcd[v263 >> 4];
        *v262 = a0123456789abcd[v263 & 0xF];
        v262 += 2;
        ++v261;
      }

      while (v261 != 8);
      v264 = objc_alloc(MEMORY[0x277CCACA8]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v264, v265, v260, 16, 4, 1);
    }
  }

LABEL_200:
  v302 = v251;
LABEL_201:

  v303 = self->_postAnchor;
  self->_postAnchor = &v302->isa;

  if ((objc_msgSend_isEqualToString_(self->_postAnchor, v304, anchorCopy, v305, v306) & 1) == 0)
  {
    v307 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v307, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (anchor): anchor changed, sync expected", buf, 2u);
    }
  }

  v308 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
  {
    v309 = self->_postAnchor;
    *buf = 138477827;
    *&buf[4] = v309;
    _os_log_impl(&dword_2334D9000, v308, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (anchor): %{private}@", buf, 0xCu);
  }

  postAnchor = v318;
LABEL_208:

  _Block_object_dispose(&v331, 8);
}

@end