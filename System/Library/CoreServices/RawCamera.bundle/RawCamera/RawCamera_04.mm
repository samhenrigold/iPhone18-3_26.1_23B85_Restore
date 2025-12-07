uint64_t sub_23376A630(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_23376A538(a1, a2);
  return a1;
}

void sub_23376A660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_2338F9818(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_23376A698()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.canon.cr3-raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".cr3.";
  v19[3] = &unk_284956D88;
  v19[4] = &unk_284956DA0;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_23376A990, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23376AAA0];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23376AAAC];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23376AAB8];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23376AAC4];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_23376A990(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  sub_233723C18(v2, &v3);
  sub_233725138();
}

void sub_23376AA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  sub_233735A90(&a9);
  if (a13)
  {
    sub_2337239E8(a13);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23376AA48);
}

void sub_23376AAD0(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_23377B9B8();
}

double sub_23376AB6C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v5 = sub_23373245C(a1, a2, a3, a4, a5);
  *v5 = &unk_284906B70;
  *(v5 + 504) = 0;
  *(v5 + 512) = -1;
  *(v5 + 604) = 0;
  *(v5 + 608) = 0;
  *(v5 + 612) = 0;
  *(v5 + 616) = 0;
  *(v5 + 620) = 0;
  *(v5 + 624) = 0;
  *(v5 + 628) = 0;
  *(v5 + 632) = 0;
  *(v5 + 636) = 0;
  *(v5 + 640) = 0;
  *(v5 + 644) = 0;
  *(v5 + 648) = 0;
  *(v5 + 652) = 0;
  *(v5 + 656) = 0;
  *(v5 + 660) = 0;
  *(v5 + 664) = 0;
  *(v5 + 668) = 0;
  *(v5 + 672) = 0;
  *(v5 + 676) = 0;
  *(v5 + 680) = 0;
  *(v5 + 684) = 0;
  *(v5 + 688) = 0;
  *(v5 + 692) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 732) = 0;
  *(v5 + 736) = 0;
  *(v5 + 600) = 0;
  result = 0.0;
  *(v5 + 568) = 0u;
  *(v5 + 584) = 0u;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0u;
  *(v5 + 520) = 0u;
  return result;
}

void sub_23376AC30(uint64_t a1)
{
  v242 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  sub_2337338AC(a1, &__p);
  LODWORD(__src) = 0;
  sub_233725F08(v230, &__p, &__src, 0);
  sub_233725FD4(v230);
  if (v219)
  {
    sub_2337239E8(v219);
  }

  sub_2337338AC(a1, &__p);
  sub_233735A18(v229, &__p, 2);
  sub_233735A90(v229);
  if (v219)
  {
    sub_2337239E8(v219);
  }

  sub_2337338AC(a1, &__p);
  v185 = sub_23376CF6C(a1, &__p, -1);
  if (v219)
  {
    sub_2337239E8(v219);
  }

  v182 = (*(*a1 + 400))(a1);
  v181 = [v185 valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT1"];
  if (!v181)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = [MEMORY[0x277CBEB38] dictionary];
  v227[0] = MEMORY[0x277D85DD0];
  v227[1] = 3221225472;
  v227[2] = sub_23376D8B4;
  v227[3] = &unk_2789EEC28;
  v3 = v2;
  v228 = v3;
  v170 = v3;
  [v181 enumerateKeysAndObjectsUsingBlock:v227];
  [v182 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD3490]];
  v177 = [v185 valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT2"];
  if (!v177)
  {
    v161 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v161, "RawCameraException");
    __cxa_throw(v161, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = sub_23376D9D4;
  v225[3] = &unk_2789EEC28;
  v5 = v4;
  v226 = v5;
  v184 = v5;
  [v177 enumerateKeysAndObjectsUsingBlock:v225];
  [v182 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD3038]];
  v180 = [v185 valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT3"];
  if (!v180)
  {
    v162 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v162, "RawCameraException");
    __cxa_throw(v162, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v223[0] = MEMORY[0x277D85DD0];
  v223[1] = 3221225472;
  v223[2] = sub_23376DAF4;
  v223[3] = &unk_2789EEC28;
  v7 = v6;
  v224 = v7;
  v169 = v7;
  [v180 enumerateKeysAndObjectsUsingBlock:v223];
  [v182 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD33B8]];
  v176 = [v185 valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT4"];
  if (!v176)
  {
    v163 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v163, "RawCameraException");
    __cxa_throw(v163, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v221[0] = MEMORY[0x277D85DD0];
  v221[1] = 3221225472;
  v221[2] = sub_23376DC14;
  v221[3] = &unk_2789EEC28;
  v9 = v8;
  v222 = v9;
  v168 = v9;
  [v176 enumerateKeysAndObjectsUsingBlock:v221];
  [v182 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD3258]];
  v10 = *(a1 + 112);
  if (v10)
  {
    [v10 bytes];
    [*(a1 + 112) length];
    CGImagePluginReadRawXMPSidecarProps();
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"uuid-%@", qword_27DE37BA0];
    v12 = [v185 valueForKeyPath:v11];

    if (v12)
    {
      v13 = v12;
      [v12 UTF8String];
      [v12 length];
      CGImagePluginReadRawXMPProps();
    }
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.val", *MEMORY[0x277CD34A8]];
  v15 = [v181 valueForKeyPath:v14];
  v16 = v15;
  v17 = [v15 UTF8String];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.val", *MEMORY[0x277CD34B0]];
  v19 = [v181 valueForKeyPath:v18];
  v20 = v19;
  v21 = [v19 UTF8String];

  if (v17)
  {
    sub_23372610C((a1 + 520), v17);
  }

  if (v21)
  {
    sub_23372610C((a1 + 544), v21);
  }

  v22 = [v180 valueForKeyPath:@"ModelID.val"];
  *(a1 + 512) = [v22 unsignedLongValue];

  v23 = [v180 objectForKeyedSubscript:@"SensorInfo"];
  v183 = v23;
  if (!v23)
  {
    v164 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v164, "RawCameraException");
    __cxa_throw(v164, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v24 = [v23 valueForKeyPath:@"parsedVal.SensorWidth"];
  *(a1 + 576) = [v24 unsignedIntValue];

  v25 = [v183 valueForKeyPath:@"parsedVal.SensorHeight"];
  *(a1 + 580) = [v25 unsignedIntValue];

  v26 = [v183 valueForKeyPath:@"parsedVal.SensorLeftBorder"];
  *(a1 + 584) = [v26 unsignedIntValue];

  v27 = [v183 valueForKeyPath:@"parsedVal.SensorTopBorder"];
  *(a1 + 588) = [v27 unsignedIntValue];

  v28 = [v183 valueForKeyPath:@"parsedVal.SensorRightBorder"];
  *(a1 + 592) = [v28 unsignedIntValue];

  v29 = [v183 valueForKeyPath:@"parsedVal.SensorBottomBorder"];
  *(a1 + 596) = [v29 unsignedIntValue];

  v166 = [v184 objectForKeyedSubscript:*MEMORY[0x277CD3148]];
  v30 = [v166 intValue] - 1;
  if (v30 < 7 && ([v184 objectForKeyedSubscript:**(&unk_2789EECF0 + v30)], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v167 = v31;
    LODWORD(v208[0]) = [v31 unsignedIntValue];
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    v32 = sub_23375E5EC((a1 + 192), &__p, &unk_233905F1C, &__src);
    sub_23375538C((v32 + 56), v208, v208 + 4, 1uLL);
    if (SHIBYTE(v220) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v167 = 0;
  }

  v172 = [v184 objectForKeyedSubscript:*MEMORY[0x277CD3060]];
  if (v172)
  {
    [v172 doubleValue];
    v34 = v33;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60((a1 + 288), &__p, &unk_233905F1C, &__src) + 56) = v34;
    if (SHIBYTE(v220) < 0)
    {
      operator delete(__p);
    }
  }

  v173 = [v184 objectForKeyedSubscript:*MEMORY[0x277CD3158]];
  if (v173)
  {
    [v173 doubleValue];
    v36 = v35;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60((a1 + 312), &__p, &unk_233905F1C, &__src) + 56) = v36;
    if (SHIBYTE(v220) < 0)
    {
      operator delete(__p);
    }
  }

  v174 = [v184 objectForKeyedSubscript:*MEMORY[0x277CD3068]];
  if (v174)
  {
    [v174 doubleValue];
    v38 = v37;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60((a1 + 336), &__p, &unk_233905F1C, &__src) + 56) = v38;
    if (SHIBYTE(v220) < 0)
    {
      operator delete(__p);
    }
  }

  v175 = [v184 objectForKeyedSubscript:*MEMORY[0x277CD3088]];
  if (v175)
  {
    [v175 doubleValue];
    v40 = v39;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60((a1 + 384), &__p, &unk_233905F1C, &__src) + 56) = v40;
    if (SHIBYTE(v220) < 0)
    {
      operator delete(__p);
    }
  }

  v178 = [v185 valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.THMB"];
  if (v178)
  {
    v41 = [v178 objectForKeyedSubscript:@"thumbnailOffset"];
    v42 = v41;
    if (v41)
    {
      *(a1 + 664) = [v41 unsignedIntValue];
      *(a1 + 668) = 1;
    }

    v43 = [v178 objectForKeyedSubscript:@"thumbnailLength"];
    v44 = v43;
    if (v43)
    {
      *(a1 + 672) = [v43 unsignedIntValue];
      *(a1 + 676) = 1;
    }

    v45 = [v178 objectForKeyedSubscript:@"thumbnailWidth"];
    v46 = v45;
    if (v45)
    {
      *(a1 + 680) = [v45 unsignedIntValue];
      *(a1 + 684) = 1;
    }

    v47 = [v178 objectForKeyedSubscript:@"thumbnailHeight"];
    v48 = v47;
    if (v47)
    {
      *(a1 + 688) = [v47 unsignedIntValue];
      *(a1 + 692) = 1;
    }
  }

  v179 = [v185 valueForKeyPath:@"uuid-EAF42B5E-1C98-4B88-B9FB-B7DC406E4D16.PRVW"];
  if (v179)
  {
    v49 = [v179 objectForKeyedSubscript:@"previewOffset"];
    v50 = v49;
    if (v49)
    {
      *(a1 + 632) = [v49 unsignedIntValue];
      *(a1 + 636) = 1;
    }

    v51 = [v179 objectForKeyedSubscript:@"previewLength"];
    v52 = v51;
    if (v51)
    {
      *(a1 + 640) = [v51 unsignedIntValue];
      *(a1 + 644) = 1;
    }

    v53 = [v179 objectForKeyedSubscript:@"previewWidth"];
    v54 = v53;
    if (v53)
    {
      *(a1 + 648) = [v53 unsignedIntValue];
      *(a1 + 652) = 1;
    }

    v55 = [v179 objectForKeyedSubscript:@"previewHeight"];
    v56 = v55;
    if (v55)
    {
      *(a1 + 656) = [v55 unsignedIntValue];
      *(a1 + 660) = 1;
    }
  }

  v186 = [MEMORY[0x277CBEB18] array];
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v57 = [v185 valueForKeyPath:@"moov.trak"];
  v187 = a1;
  v190 = [v57 countByEnumeratingWithState:&v214 objects:v241 count:16];
  if (v190)
  {
    v188 = *v215;
    v58 = v57;
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v215 != v188)
        {
          objc_enumerationMutation(v57);
        }

        v59 = *(*(&v214 + 1) + 8 * i);
        v60 = [v59 valueForKeyPath:@"mdia.hdlr.ComponentSubType"];
        v61 = [v60 unsignedIntValue];

        if (v61 == 1835365473)
        {
          v62 = [v59 valueForKeyPath:@"mdia.minf.stbl.co64.Metadata"];
          v195 = [v62 objectForKeyedSubscript:@"ExifInfo7"];
          v198 = [v62 objectForKeyedSubscript:@"ExifInfo8"];
          v196 = [v62 objectForKeyedSubscript:@"ExifInfo9"];
          v192 = [v198 valueForKeyPath:@"37500.ColorData.parsedVal"];
          v73 = v62;
          if ((*(*a1 + 632))(a1))
          {
            obj = [v192 objectForKeyedSubscript:@"WB_RGGBLevelsAsShot"];
            if (obj && [obj count] == 4)
            {
              v74 = [obj objectAtIndexedSubscript:0];
              LODWORD(__src) = [v74 unsignedIntValue];
              v75 = [obj objectAtIndexedSubscript:1];
              HIDWORD(__src) = [v75 unsignedIntValue];
              v76 = [obj objectAtIndexedSubscript:2];
              LODWORD(v239) = [v76 unsignedIntValue];
              v77 = [obj objectAtIndexedSubscript:3];
              HIDWORD(v239) = [v77 unsignedIntValue];
              sub_23372A488(&__p, "AsShotWhiteBalance");
              v208[0] = &__p;
              v78 = sub_23375E5EC((a1 + 120), &__p, &unk_233905F1C, v208);
              sub_23375538C((v78 + 56), &__src, &v240, 4uLL);
              if (SHIBYTE(v220) < 0)
              {
                operator delete(__p);
              }
            }

            v79 = [v192 objectForKeyedSubscript:@"PerChannelBlackLevel"];
            v80 = v79;
            if (v79 && [v79 count] == 4)
            {
              v81 = 0;
              __p = 0;
              v219 = 0;
              v220 = 0;
              do
              {
                v82 = [v80 objectAtIndexedSubscript:v81];
                [v82 doubleValue];
                v84 = v219;
                if (v219 >= v220)
                {
                  v86 = __p;
                  v87 = v219 - __p;
                  v88 = (v219 - __p) >> 3;
                  v89 = v88 + 1;
                  if ((v88 + 1) >> 61)
                  {
                    sub_2337235BC();
                  }

                  v90 = v220 - __p;
                  if ((v220 - __p) >> 2 > v89)
                  {
                    v89 = v90 >> 2;
                  }

                  v91 = v90 >= 0x7FFFFFFFFFFFFFF8;
                  v92 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v91)
                  {
                    v92 = v89;
                  }

                  if (v92)
                  {
                    sub_233723798(&__p, v92);
                  }

                  v93 = (8 * v88);
                  v94 = &v93[-((v219 - __p) >> 3)];
                  *v93 = v83;
                  p_shared_owners = (v93 + 1);
                  memcpy(v94, v86, v87);
                  v95 = __p;
                  __p = v94;
                  v219 = p_shared_owners;
                  v220 = 0;
                  if (v95)
                  {
                    operator delete(v95);
                  }

                  v62 = v73;
                }

                else
                {
                  v219->__vftable = v83;
                  p_shared_owners = &v84->__shared_owners_;
                }

                v219 = p_shared_owners;

                ++v81;
              }

              while (v81 != 4);
              sub_23372A488(&__src, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
              v208[0] = &__src;
              v96 = (sub_23375E520((a1 + 264), &__src, &unk_233905F1C, v208) + 56);
              if (v96 != &__p)
              {
                sub_23373176C(v96, __p, v219, (v219 - __p) >> 3);
              }

              if (SHIBYTE(v240) < 0)
              {
                operator delete(__src);
              }

              if (__p)
              {
                v219 = __p;
                operator delete(__p);
              }
            }
          }

          else
          {
            v97 = [v198 valueForKeyPath:@"37500.ColorData.val"];
            if (v97)
            {
              __p = 0;
              v219 = 0;
              v220 = 0;
              v239 = 0;
              __src = 0;
              v240 = 0;
              v210 = 0u;
              v211 = 0u;
              v212 = 0u;
              v213 = 0u;
              obj = v97;
              v98 = [obj countByEnumeratingWithState:&v210 objects:v237 count:16];
              if (v98)
              {
                v99 = *v211;
                do
                {
                  for (j = 0; j != v98; ++j)
                  {
                    if (*v211 != v99)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v101 = *(*(&v210 + 1) + 8 * j);
                    v102 = [v101 unsignedIntValue];
                    v103 = v219;
                    if (v219 >= v220)
                    {
                      v105 = __p;
                      v106 = v219 - __p;
                      v107 = (v219 - __p) >> 2;
                      v108 = v107 + 1;
                      if ((v107 + 1) >> 62)
                      {
                        sub_2337235BC();
                      }

                      v109 = v220 - __p;
                      if ((v220 - __p) >> 1 > v108)
                      {
                        v108 = v109 >> 1;
                      }

                      v91 = v109 >= 0x7FFFFFFFFFFFFFFCLL;
                      v110 = 0x3FFFFFFFFFFFFFFFLL;
                      if (!v91)
                      {
                        v110 = v108;
                      }

                      if (v110)
                      {
                        sub_2337235D4(&__p, v110);
                      }

                      *(4 * v107) = v102;
                      v104 = (4 * v107 + 4);
                      memcpy(0, v105, v106);
                      v111 = __p;
                      __p = 0;
                      v219 = v104;
                      v220 = 0;
                      if (v111)
                      {
                        operator delete(v111);
                      }

                      v57 = v58;
                    }

                    else
                    {
                      LODWORD(v219->__vftable) = v102;
                      v104 = &v103->__vftable + 4;
                    }

                    v219 = v104;
                    [v101 doubleValue];
                    v113 = v239;
                    if (v239 >= v240)
                    {
                      v115 = __src;
                      v116 = v239 - __src;
                      v117 = (v239 - __src) >> 3;
                      v118 = v117 + 1;
                      if ((v117 + 1) >> 61)
                      {
                        sub_2337235BC();
                      }

                      v119 = v240 - __src;
                      if ((v240 - __src) >> 2 > v118)
                      {
                        v118 = v119 >> 2;
                      }

                      v91 = v119 >= 0x7FFFFFFFFFFFFFF8;
                      v120 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v91)
                      {
                        v120 = v118;
                      }

                      if (v120)
                      {
                        sub_233723798(&__src, v120);
                      }

                      *(8 * v117) = v112;
                      v114 = (8 * v117 + 8);
                      memcpy(0, v115, v116);
                      v121 = __src;
                      __src = 0;
                      v239 = v114;
                      v240 = 0;
                      if (v121)
                      {
                        operator delete(v121);
                      }

                      v57 = v58;
                    }

                    else
                    {
                      *v239 = v112;
                      v114 = v113 + 8;
                    }

                    v239 = v114;
                    v62 = v73;
                  }

                  v98 = [obj countByEnumeratingWithState:&v210 objects:v237 count:16];
                }

                while (v98);
              }

              a1 = v187;
              sub_23372A488(v208, "IFD0:EXIF:MAKERNOTE:ColorBalance1");
              v231 = v208;
              v122 = (sub_23375E5EC((v187 + 120), v208, &unk_233905F1C, &v231) + 56);
              if (v122 != &__p)
              {
                sub_233723454(v122, __p, v219, (v219 - __p) >> 2);
              }

              if (v209 < 0)
              {
                operator delete(v208[0]);
              }

              sub_23372A488(v208, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
              v231 = v208;
              v123 = (sub_23375E520((v187 + 264), v208, &unk_233905F1C, &v231) + 56);
              if (v123 != &__src)
              {
                sub_23373176C(v123, __src, v239, (v239 - __src) >> 3);
              }

              if (v209 < 0)
              {
                operator delete(v208[0]);
              }

              if (__src)
              {
                v239 = __src;
                operator delete(__src);
              }

              if (__p)
              {
                v219 = __p;
                operator delete(__p);
              }
            }

            else
            {
              obj = 0;
            }
          }

LABEL_152:
          goto LABEL_153;
        }

        if (v61 != 1986618469)
        {
          continue;
        }

        v62 = [v59 valueForKeyPath:@"mdia.minf.stbl"];
        v195 = [v62 valueForKeyPath:@"stsz"];
        v198 = [v62 valueForKeyPath:@"co64"];
        v63 = [v62 valueForKeyPath:@"stsd.Entries.CRAW"];
        v196 = v63;
        if (v63)
        {
          v64 = [v63 valueForKeyPath:@"Extensions.JPEG"];
          v65 = v64 == 0;

          if (v65)
          {
            v124 = [v196 valueForKeyPath:@"Extensions.CMP1"];
            v125 = v124 == 0;

            if (!v125)
            {
              v126 = [v196 objectForKeyedSubscript:@"Width"];
              v127 = [v126 unsignedIntValue];

              v128 = [v196 objectForKeyedSubscript:@"Height"];
              v129 = [v128 unsignedIntValue];

              v193 = [v196 valueForKeyPath:@"Extensions.CMP1"];
              v235[0] = @"Width";
              v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v127];
              v236[0] = v130;
              v235[1] = @"Height";
              v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v129];
              v236[1] = v131;
              v236[2] = v198;
              v235[2] = @"co64";
              v235[3] = @"CMP1";
              v236[3] = v193;
              v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:4];
              [v186 addObject:v132];
            }

            goto LABEL_153;
          }

          v66 = [v198 objectForKeyedSubscript:@"offset"];
          v67 = v66;
          if (v66)
          {
            *(a1 + 600) = [v66 unsignedIntValue];
            *(a1 + 604) = 1;
          }

          v68 = [v195 objectForKeyedSubscript:@"SampleSize"];
          v69 = v68;
          if (v68)
          {
            *(a1 + 608) = [v68 unsignedIntValue];
            *(a1 + 612) = 1;
          }

          v70 = [v196 objectForKeyedSubscript:@"Width"];
          v71 = v70;
          if (v70)
          {
            *(a1 + 616) = [v70 unsignedIntValue];
            *(a1 + 620) = 1;
          }

          v72 = [v196 objectForKeyedSubscript:@"Height"];
          v192 = v72;
          if (v72)
          {
            *(a1 + 624) = [v72 unsignedIntValue];
            *(a1 + 628) = 1;
          }

          goto LABEL_152;
        }

LABEL_153:
      }

      v190 = [v57 countByEnumeratingWithState:&v214 objects:v241 count:16];
    }

    while (v190);
  }

  [v186 sortUsingComparator:&unk_284906DF0];
  if ([v186 count])
  {
    v133 = [v186 firstObject];
    v134 = [v133 objectForKeyedSubscript:@"Width"];
    *(a1 + 708) = [v134 unsignedIntValue];

    v135 = [v133 objectForKeyedSubscript:@"Height"];
    *(a1 + 712) = [v135 unsignedIntValue];

    v136 = [v133 valueForKeyPath:@"CMP1.bayer_type"];
    *(a1 + 716) = [v136 unsignedIntValue];

    v137 = [v133 valueForKeyPath:@"CMP1.tile_width"];
    v165 = v137;
    v138 = [v133 valueForKeyPath:@"CMP1.tile_height"];
    v189 = v138;
    v139 = [v133 valueForKeyPath:@"CMP1.dwt_level"];
    v191 = v139;
    v140 = [v133 valueForKeyPath:@"CMP1.tile_h_overlap"];
    v194 = v140;
    v141 = [v133 valueForKeyPath:@"CMP1.tile_v_overlap"];
    v142 = [v133 valueForKeyPath:@"CMP1.plane_num"];
    v197 = v142;
    v143 = [v133 valueForKeyPath:@"co64.tile_headers"];
    v199 = v143;
    v201 = [v133 valueForKeyPath:@"CMP1.ct_mode"];
    obja = [v133 valueForKeyPath:@"CMP1.bit_depth"];
    if (*(a1 + 732) == 1)
    {
      v144 = *(a1 + 728);
    }

    else
    {
      v144 = 0;
    }

    v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v144];
    v233[0] = @"tile_width";
    v233[1] = @"tile_height";
    v234[0] = v137;
    v234[1] = v138;
    v233[2] = @"dwt_level";
    v233[3] = @"tile_h_overlap";
    v234[2] = v139;
    v234[3] = v140;
    v233[4] = @"tile_v_overlap";
    v233[5] = @"plane_num";
    v234[4] = v141;
    v234[5] = v142;
    v233[6] = @"tile_headers";
    v233[7] = @"ct_mode";
    v234[6] = v143;
    v234[7] = v201;
    v233[8] = @"bit_depth";
    v233[9] = @"version";
    v234[8] = obja;
    v234[9] = v145;
    v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:10];
    v147 = *(a1 + 720);
    *(a1 + 720) = v146;

    *(a1 + 572) = 0;
    v148 = [v133 valueForKeyPath:@"CMP1.sub_header_part_length"];
    v149 = [v148 unsignedIntValue];

    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v150 = [v133 valueForKeyPath:@"co64.tile_headers"];
    v151 = [v150 countByEnumeratingWithState:&v204 objects:v232 count:16];
    if (v151)
    {
      v152 = *v205;
      do
      {
        for (k = 0; k != v151; ++k)
        {
          if (*v205 != v152)
          {
            objc_enumerationMutation(v150);
          }

          v154 = [*(*(&v204 + 1) + 8 * k) objectForKeyedSubscript:@"tile_data_length"];
          a1 = v187;
          *(v187 + 572) += [v154 unsignedIntValue];
        }

        v151 = [v150 countByEnumeratingWithState:&v204 objects:v232 count:16];
      }

      while (v151);
    }

    v155 = [v133 valueForKeyPath:@"co64.offset"];
    *(a1 + 568) = [v155 unsignedIntValue] + v149;
  }

  if ([v186 count] >= 2)
  {
    v156 = [v186 objectAtIndexedSubscript:1];
    v157 = [v156 objectForKeyedSubscript:@"Width"];
    *(a1 + 696) = [v157 unsignedIntValue];

    v158 = [v156 objectForKeyedSubscript:@"Height"];
    *(a1 + 700) = [v158 unsignedIntValue];

    v159 = [v156 valueForKeyPath:@"CMP1.bayer_type"];
    *(a1 + 704) = [v159 unsignedIntValue];
  }

  objc_storeStrong((a1 + 504), v185);

  objc_autoreleasePoolPop(context);
}

id sub_23376CF6C(uint64_t a1, uint64_t *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  for (i = [MEMORY[0x277CBEB38] dictionary];
  {
    if (sub_23376E438(*a2) < 1)
    {
      break;
    }

    v6 = sub_233725614(*a2);
    v11 = bswap32(sub_233725614(*a2));
    if (v6 >= 8)
    {
      v7 = *a2;
      v12 = v6 - 8;
      sub_233725D94(v7, &v12);
    }

    v8 = *a2;
    LODWORD(v10) = 0;
    (*(*v8 + 40))(v8, &v10, 2);
  }

  return i;
}

void sub_23376D7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2337239E8(a29);
  }

  _Unwind_Resume(a1);
}

void sub_23376D8B4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 valueForKey:@"hide"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 valueForKey:@"parsedVal"];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
    }

    else
    {
      v9 = [v5 valueForKey:@"val"];
      if (v9)
      {
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
      }
    }
  }
}

void sub_23376D9D4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 valueForKey:@"hide"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 valueForKey:@"parsedVal"];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
    }

    else
    {
      v9 = [v5 valueForKey:@"val"];
      if (v9)
      {
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
      }
    }
  }
}

void sub_23376DAF4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 valueForKey:@"hide"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 valueForKey:@"parsedVal"];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
    }

    else
    {
      v9 = [v5 valueForKey:@"val"];
      if (v9)
      {
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
      }
    }
  }
}

void sub_23376DC14(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 valueForKey:@"hide"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 valueForKey:@"parsedVal"];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
    }

    else
    {
      v9 = [v5 valueForKey:@"val"];
      if (v9)
      {
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
      }
    }
  }
}

uint64_t sub_23376DD34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 valueForKey:@"Width"];
  v6 = [v4 valueForKey:@"Width"];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_23376DDB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23376DDE0(uint64_t a1)
{
  (*(*a1 + 384))(&v5);
  (*(*a1 + 424))(a1);
  sub_23377BC0C();
}

void sub_23376DEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23376DEDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 504) valueForKeyPath:@"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT1.Orientation.val"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 668) == 1 && *(a1 + 676) == 1)
  {
    sub_233723AE0(&v8, (a1 + 664));
    if ((*(a1 + 676) & 1) == 0)
    {
      sub_233728FA8();
    }

    v7 = *(a1 + 672);
    sub_23373401C(a1, &v8, &v7, v6, &v9);
    if (v9)
    {
      sub_233753C74(a2, &v9);
    }

    if (*(&v9 + 1))
    {
      sub_2337239E8(*(&v9 + 1));
    }
  }

  if (*(a1 + 636) == 1 && *(a1 + 644) == 1)
  {
    sub_233723AE0(&v8, (a1 + 632));
    if ((*(a1 + 644) & 1) == 0)
    {
      sub_233728FA8();
    }

    v7 = *(a1 + 640);
    sub_23373401C(a1, &v8, &v7, v6, &v9);
    if (v9)
    {
      sub_233753C74(a2, &v9);
    }

    if (*(&v9 + 1))
    {
      sub_2337239E8(*(&v9 + 1));
    }
  }

  if (*(a1 + 604) == 1 && *(a1 + 612) == 1)
  {
    sub_233723AE0(&v8, (a1 + 600));
    if ((*(a1 + 612) & 1) == 0)
    {
      sub_233728FA8();
    }

    v7 = *(a1 + 608);
    sub_23373401C(a1, &v8, &v7, v6, &v9);
    if (v9)
    {
      sub_233753C74(a2, &v9);
    }

    if (*(&v9 + 1))
    {
      sub_2337239E8(*(&v9 + 1));
    }
  }
}

void sub_23376E0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);

  _Unwind_Resume(a1);
}

char *sub_23376E0FC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[543] < 0)
  {
    return sub_233731FB8(a2, *(result + 65), *(result + 66));
  }

  *a2 = *(result + 520);
  *(a2 + 16) = *(result + 67);
  return result;
}

char *sub_23376E12C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[567] < 0)
  {
    return sub_233731FB8(a2, *(result + 68), *(result + 69));
  }

  *a2 = *(result + 34);
  *(a2 + 16) = *(result + 70);
  return result;
}

uint64_t sub_23376E160(uint64_t a1)
{
  v1 = *(a1 + 716) - 1;
  if (v1 > 2)
  {
    return 2492765332;
  }

  else
  {
    return dword_233904994[v1];
  }
}

uint64_t sub_23376E1CC(_DWORD *a1)
{
  v1 = a1[146];
  v2 = a1[147];
  v3 = a1[148] - v1;
  v4 = a1[149] - v2;
  sub_2337238F0(&v6, v1, v2);
  sub_2337238F0(&v7, v3 + 1, v4 + 1);
  return v6;
}

void sub_23376E230(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 440))(a1);
  snprintf(__str, 0x10uLL, "%u", a1[128]);
  snprintf(__s, 0x10uLL, "%d", v4);
  snprintf(v7, 0x10uLL, "%d", HIDWORD(v4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "cr3");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __s);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, v7);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23376E3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23376E438(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v4 = (*(*a1 + 48))(a1);
  v5 = v2 - sub_233751844(&v4);
  sub_233723AE0(&v6, &v5);
  return v6;
}

id sub_23376E4D4(uint64_t a1, uint64_t *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = sub_233725614(*a2);
  v4 = sub_233725614(*a2);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = (*(**a2 + 16))() - 8;
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sub_233725614(*a2)];
      [v5 addObject:v8];

      --v7;
    }

    while (v7);
  }

  v13[0] = @"majorBrand";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v14[0] = v9;
  v13[1] = @"minorVersion";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v13[2] = @"compatibleBrands";
  v14[1] = v10;
  v14[2] = v5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

id sub_23376E6B8(uint64_t a1, uint64_t *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  if (v9 >= 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = v9;
  if (!v8 && v9 == 1)
  {
    v8 = sub_233725614(*a2);
  }

  v11 = sub_23376CF6C(a1, a2, v10);
  v17[0] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
  v18[0] = v12;
  v17[1] = @"Flags";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v5 << 16) | (v6 << 8) | v7];
  v18[1] = v13;
  v17[2] = @"SampleSize";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v17[3] = @"Entries";
  v18[2] = v14;
  v18[3] = v11;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

__CFString *sub_23376E8E0(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *a2;
  v6 = (*(**a2 + 16))(*a2);
  if (sub_2337257E8(v2, &v6, __p))
  {
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  else
  {
    v4 = &stru_284938540;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_23376E9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23376E9C8(uint64_t a1, uint64_t *a2)
{
  sub_233725614(*a2);
  v4 = sub_233725614(*a2);

  return sub_23376CF6C(a1, a2, v4);
}

id sub_23376EA18(uint64_t a1, uint64_t *a2)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v23 = sub_233725614(*a2);
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  v11 = *a2;
  v24 = sub_23376E438(v11);
  sub_233726938(&v25, &v24);
  sub_2337257E8(v11, &v25, __p);
  if (v27 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
  v28[0] = @"Version";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  v29[0] = v13;
  v28[1] = @"Flags";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v4 << 16) | (v5 << 8) | v6];
  v29[1] = v14;
  v28[2] = @"ComponentType";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v29[2] = v15;
  v28[3] = @"ComponentSubType";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v29[3] = v16;
  v28[4] = @"Component";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v29[4] = v17;
  v28[5] = @"ComponentFlags";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v29[5] = v18;
  v28[6] = @"ComponentFlagsMask";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
  v28[7] = @"ComponentName";
  v29[6] = v19;
  v29[7] = v22;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

void sub_23376ECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_23376ED5C(uint64_t a1, uint64_t *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_23376CF6C(a1, a2, v8);
  v14[0] = @"Version";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
  v15[0] = v10;
  v14[1] = @"Flags";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v5 << 16) | (v6 << 8) | v7];
  v14[2] = @"Entries";
  v15[1] = v11;
  v15[2] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

id sub_23376EEE4(uint64_t a1, uint64_t *a2)
{
  v48[18] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v4 = sub_2337255C0(*a2);
  v5 = sub_2337255C0(*a2);
  v6 = sub_2337255C0(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v40 = sub_233725614(*a2);
  v38 = sub_2337255C0(*a2);
  v37 = sub_2337255C0(*a2);
  v36 = sub_2337255C0(*a2);
  v35 = sub_2337255C0(*a2);
  v34 = sub_2337255C0(*a2);
  v33 = sub_2337255C0(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_2337255C0(*a2);
  v11 = sub_233725510(*a2);
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  v12 = *a2;
  v44 = v11;
  sub_2337257E8(v12, &v44, __p);
  v13 = *a2;
  v44 = 31 - v11;
  (*(*v13 + 40))(v13, &v44, 1);
  v32 = sub_2337255C0(*a2);
  v14 = sub_2337255C0(*a2);
  sub_233725614(*a2);
  v42 = sub_23376CF6C(a1, a2, -1);
  if (v46 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
  v47[0] = @"DataReference";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v4];
  v48[0] = v31;
  v47[1] = @"Version";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v5];
  v48[1] = v30;
  v47[2] = @"RevisionLevel";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  v48[2] = v29;
  v47[3] = @"Vendor";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v48[3] = v28;
  v47[4] = @"TemporalQuality";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v48[4] = v27;
  v47[5] = @"SpatialQuality";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
  v48[5] = v26;
  v47[6] = @"Width";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v38];
  v48[6] = v39;
  v47[7] = @"Height";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v37];
  v48[7] = v41;
  v47[8] = @"HorizontalRes";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v36];
  v48[8] = v16;
  v47[9] = @"HorizontalResDec";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v35];
  v48[9] = v17;
  v47[10] = @"VerticalRes";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v34];
  v48[10] = v18;
  v47[11] = @"VerticalResDec";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
  v48[11] = v19;
  v47[12] = @"DataSize";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v48[12] = v20;
  v47[13] = @"FrameCount";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
  v48[13] = v21;
  v48[14] = v43;
  v47[14] = @"CompressorName";
  v47[15] = @"Depth";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v32];
  v48[15] = v22;
  v47[16] = @"ColorTableID";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];
  v47[17] = @"Extensions";
  v48[16] = v23;
  v48[17] = v42;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:18];

  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  return v24;
}

void sub_23376F3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_23376F530(uint64_t a1, uint64_t *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v13 = sub_2337255C0(*a2);
  v3 = sub_233725614(*a2);
  for (i = sub_233755CB8(v3);
  {
    sub_2337255C0(*a2);
    v5 = sub_2337255C0(*a2);
    v6 = sub_233725614(*a2);
    v16[0] = @"tagID";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v5];
    v16[1] = @"tagSize";
    v17[0] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [i addObject:v9];
  }

  v14[0] = @"DataReference";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
  v14[1] = @"Tags";
  v15[0] = v10;
  v15[1] = i;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v11;
}

id sub_23376F74C(uint64_t a1, uint64_t *a2)
{
  v81[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2337255C0(*a2);
  v5 = sub_2337255C0(*a2);
  v6 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v71 = sub_233725614(*a2);
  v7 = sub_233725614(*a2);
  v69 = sub_233725614(*a2);
  v64 = sub_233725614(*a2);
  v8 = sub_233725510(*a2);
  v67 = sub_233725510(*a2);
  v60 = sub_233725510(*a2);
  v61 = sub_233725510(*a2);
  v59 = sub_233725614(*a2);
  v58 = sub_233725510(*a2);
  sub_233725510(*a2);
  sub_2337255C0(*a2);
  if (v6 == 256)
  {
    if ((*(a1 + 732) & 1) == 0)
    {
      *(a1 + 732) = 1;
    }

    *(a1 + 728) = 256;
    v9 = v64;
  }

  else if (v6 == 512)
  {
    v9 = v64;
    if ((*(a1 + 732) & 1) == 0)
    {
      *(a1 + 732) = 1;
    }

    *(a1 + 728) = 512;
  }

  else
  {
    v9 = v64;
    if ((*(a1 + 732) & 1) == 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  if (*(a1 + 728) == 256)
  {
    v10 = 65280;
  }

  else
  {
    v10 = 65296;
  }

  if (v10 != v4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v71 >> 5 >= 0xC35)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 > 0x1869F)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v71)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v69)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v71 < v69)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 < v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v55 = v6;
  v57 = v8;
  v62 = v67 >> 4;
  v73 = sub_233755CB8(v62);
  if (v67 >= 0x10)
  {
    v11 = v62;
    do
    {
      v12 = sub_233725510(*a2);
      v13 = sub_233725510(*a2);
      sub_2337255C0(*a2);
      v80[0] = @"sample_width";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
      v80[1] = @"sample_height";
      v81[0] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
      v81[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
      [v73 addObject:v16];

      --v11;
    }

    while (v11);
  }

  v66 = [MEMORY[0x277CBEB38] dictionary];
  v78[0] = @"marker_code_main_header";
  v79[0] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v4];
  v78[1] = @"main_header_length";
  v53 = v79[0];
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v5];
  v79[1] = v54;
  v78[2] = @"revision";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v55];
  v79[2] = v56;
  v78[3] = @"frame_width";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v71];
  v79[3] = v52;
  v78[4] = @"frame_height";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v79[4] = v51;
  v78[5] = @"tile_width";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v69];
  v79[5] = v50;
  v78[6] = @"tile_height";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v64];
  v18 = v7 / v64 * (v71 / v69);
  v72 = v17;
  v79[6] = v17;
  v78[7] = @"tile_num";
  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
  v79[7] = v70;
  v78[8] = @"bit_depth";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v57];
  v79[8] = v65;
  v78[9] = @"plane_num";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v62];
  v79[9] = v63;
  v78[10] = @"bayer_type";
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v67 & 0xF];
  v79[10] = v68;
  v78[11] = @"ct_mode";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v60 >> 4];
  v79[11] = v19;
  v78[12] = @"dwt_level";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v60 & 0xF];
  v79[12] = v20;
  v78[13] = @"tile_h_overlap";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v61 >> 7];
  v79[13] = v21;
  v78[14] = @"tile_v_overlap";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:(v61 >> 6) & 1];
  v79[14] = v22;
  v78[15] = @"sub_header_part_length";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
  v79[15] = v23;
  v78[16] = @"main_extension_flag";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:(v58 >> 7) & 1];
  v78[17] = @"planes";
  v79[16] = v24;
  v79[17] = v73;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:18];
  [v66 addEntriesFromDictionary:v25];

  if (v58 < 0)
  {
    v26 = sub_233725614(*a2);
    v27 = sub_233725510(*a2);
    sub_2337255C0(*a2);
    v28 = sub_233725510(*a2);
    v76[0] = @"main_extension_header_data_length";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
    v30 = v27;
    v77[0] = v29;
    v76[1] = @"buffer_model_info_flag";
    v31 = [MEMORY[0x277CCABB0] numberWithBool:(v27 >> 7) & 1];
    v77[1] = v31;
    v76[2] = @"user_info_flag";
    v32 = [MEMORY[0x277CCABB0] numberWithBool:v28 & 1];
    v77[2] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
    [v66 addEntriesFromDictionary:v33];

    if (v30 < 0)
    {
      v34 = sub_233725614(*a2);
      v35 = sub_233725614(*a2);
      v36 = sub_233725614(*a2);
      v37 = sub_233725614(*a2);
      v38 = sub_233725614(*a2);
      v39 = sub_233725614(*a2);
      v74[0] = @"bit_rate_value_minus1";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
      v75[0] = v40;
      v74[1] = @"bit_rate_scale";
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35];
      v75[1] = v41;
      v74[2] = @"buffersize_value_minus1";
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36];
      v75[2] = v42;
      v74[3] = @"buffersize_scale";
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
      v75[3] = v43;
      v74[4] = @"num_units_in_tick";
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
      v75[4] = v44;
      v74[5] = @"time_scale";
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
      v75[5] = v45;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:6];
      [v66 addEntriesFromDictionary:v46];
    }

    if ((*(a1 + 732) & 1) == 0)
    {
      sub_233728FA8();
    }

    if (*(a1 + 728) == 512)
    {
      v47 = [MEMORY[0x277CCABB0] numberWithBool:(v30 >> 6) & 1];
      [v66 setObject:v47 forKeyedSubscript:@"bit_depth_transformation_info_flag"];

      if ((v30 >> 6))
      {
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_233725614(*a2) >> 24];
        [v66 setObject:v48 forKeyedSubscript:@"bit_depth_before_transformation"];
      }
    }
  }

  return v66;
}

id sub_233770440(uint64_t a1, uint64_t *a2)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v11 = sub_2337255C0(*a2);
  v22 = sub_2337255C0(*a2);
  v23[0] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  v24[0] = v12;
  v23[1] = @"Flags";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v4 << 16) | (v5 << 8) | v6];
  v24[1] = v13;
  v23[2] = @"CreationTime";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v24[2] = v14;
  v23[3] = @"ModificationTime";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v24[3] = v15;
  v23[4] = @"TimeScale";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v24[4] = v16;
  v23[5] = @"Duration";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v24[5] = v17;
  v23[6] = @"Language";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
  v24[6] = v18;
  v23[7] = @"Quality";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
  v24[7] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];

  return v20;
}

id sub_233770718(uint64_t a1, uint64_t *a2)
{
  v59[16] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v54 = sub_233725614(*a2);
  v52 = sub_2337255C0(*a2);
  sub_233725614(*a2);
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v50 = sub_233725614(*a2);
  v48 = sub_233725614(*a2);
  v46 = sub_233725614(*a2);
  v44 = sub_233725614(*a2);
  v42 = sub_233725614(*a2);
  v40 = sub_233725614(*a2);
  v38 = sub_233725614(*a2);
  v36 = sub_233725614(*a2);
  v35 = sub_233725614(*a2);
  v34 = sub_233725614(*a2);
  v33 = sub_233725614(*a2);
  v32 = sub_233725614(*a2);
  v31 = sub_233725614(*a2);
  v30 = sub_233725614(*a2);
  v29 = sub_233725614(*a2);
  v11 = sub_233725614(*a2);
  v58[0] = @"Version";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  v59[0] = v56;
  v58[1] = @"Flags";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v4 << 16) | (v5 << 8) | v6];
  v59[1] = v28;
  v58[2] = @"CreationTime";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v59[2] = v27;
  v58[3] = @"ModificationTime";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v59[3] = v26;
  v58[4] = @"TimeScale";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v59[4] = v25;
  v58[5] = @"Duration";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v59[5] = v24;
  v58[6] = @"PreferredRate";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v54];
  v59[6] = v55;
  v58[7] = @"PreferredVolume";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v52];
  v59[7] = v53;
  v58[8] = @"Matrix";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50];
  v57[0] = v51;
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48];
  v57[1] = v49;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v46];
  v57[2] = v47;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v44];
  v57[3] = v45;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
  v57[4] = v43;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
  v57[5] = v41;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
  v57[6] = v39;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36];
  v57[7] = v37;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35];
  v13 = v11;
  v57[8] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:9];
  v59[8] = v14;
  v58[9] = @"PreviewTime";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
  v59[9] = v15;
  v58[10] = @"PreviewDuration";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
  v59[10] = v16;
  v58[11] = @"PosterTime";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32];
  v59[11] = v17;
  v58[12] = @"SelectionTime";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31];
  v59[12] = v18;
  v58[13] = @"SelectionDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
  v59[13] = v19;
  v58[14] = @"CurrentTime";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
  v59[14] = v20;
  v58[15] = @"NextTrackID";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  v59[15] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:16];

  return v22;
}

id sub_233770E60(uint64_t a1, uint64_t *a2)
{
  v55[14] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  sub_233725660(*a2);
  v50 = sub_2337255C0(*a2);
  v48 = sub_2337255C0(*a2);
  v46 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v44 = sub_233725614(*a2);
  v42 = sub_233725614(*a2);
  v40 = sub_233725614(*a2);
  v38 = sub_233725614(*a2);
  v36 = sub_233725614(*a2);
  v34 = sub_233725614(*a2);
  v33 = sub_233725614(*a2);
  v32 = sub_233725614(*a2);
  v31 = sub_233725614(*a2);
  v30 = sub_2337255C0(*a2);
  v29 = sub_2337255C0(*a2);
  v28 = sub_2337255C0(*a2);
  v11 = sub_2337255C0(*a2);
  v54[0] = @"Version";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  v55[0] = v52;
  v54[1] = @"Flags";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v4 << 16) | (v5 << 8) | v6];
  v55[1] = v27;
  v54[2] = @"CreationTime";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v55[2] = v26;
  v54[3] = @"ModificationTime";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v55[3] = v25;
  v54[4] = @"TrackID";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v55[4] = v24;
  v54[5] = @"Duration";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v55[5] = v23;
  v54[6] = @"Layer";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
  v55[6] = v51;
  v54[7] = @"AlternateGroup";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v48];
  v55[7] = v49;
  v54[8] = @"Volume";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v46];
  v55[8] = v47;
  v54[9] = @"Matrix";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v44];
  v53[0] = v45;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
  v53[1] = v43;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
  v53[2] = v41;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
  v53[3] = v39;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36];
  v53[4] = v37;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
  v53[5] = v35;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
  v13 = v11;
  v53[6] = v12;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32];
  v53[7] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31];
  v53[8] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
  v55[9] = v16;
  v54[10] = @"TrackWidth";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v30];
  v55[10] = v17;
  v54[11] = @"TrackWidthQ";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
  v55[11] = v18;
  v54[12] = @"TrackHeight";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
  v55[12] = v19;
  v54[13] = @"TrackHeightQ";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
  v55[13] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:14];

  return v21;
}

id sub_233771520(uint64_t a1, uint64_t *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_23376CF6C(a1, a2, v9);
  v16[0] = @"Version";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
  v17[0] = v11;
  v16[1] = @"Flags";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v5 << 16) | (v6 << 8) | v7];
  v17[1] = v12;
  v16[2] = @"MainShootingMode";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v16[3] = @"boxes";
  v17[2] = v13;
  v17[3] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v14;
}

id sub_2337716F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233778774();
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_23377175C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233773E4C();
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_2337717C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233774D40(a1);
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_233771834(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233778C90();
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_2337718A0(uint64_t a1, uint64_t *a2)
{
  v21[5] = *MEMORY[0x277D85DE8];
  sub_233725510(*a2);
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_2337255C0(*a2);
  v7 = sub_2337255C0(*a2);
  v8 = sub_233725614(*a2);
  sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v9 = sub_233725428(*a2);
  v18 = (*(**a2 + 48))();
  v19 = v9;
  v19 = *sub_233725A80(&v19, &v18);
  v10 = sub_233751844(&v19);
  v20[0] = @"Flags";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v3 << 16) | (v4 << 8) | v5];
  v21[0] = v11;
  v20[1] = @"thumbnailWidth";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  v21[1] = v12;
  v20[2] = @"thumbnailHeight";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  v21[2] = v13;
  v20[3] = @"thumbnailOffset";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v21[3] = v14;
  v20[4] = @"thumbnailLength";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v21[4] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  return v16;
}

id sub_233771B14(uint64_t a1, uint64_t *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v3 = sub_2337255C0(*a2);
  v4 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v5 = sub_233725614(*a2);
  v6 = sub_233725428(*a2);
  v14 = (*(**a2 + 48))();
  v15 = v6;
  v15 = *sub_233725A80(&v15, &v14);
  v7 = sub_233751844(&v15);
  v16[0] = @"previewWidth";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v3];
  v17[0] = v8;
  v16[1] = @"previewHeight";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v4];
  v17[1] = v9;
  v16[2] = @"previewOffset";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v17[2] = v10;
  v16[3] = @"previewLength";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v12;
}

id sub_233771D20(uint64_t a1, uint64_t *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v31 setObject:v5 forKeyedSubscript:@"Metadata"];
  v6 = sub_233725510(*a2);
  v33 = v5;
  v7 = sub_233725510(*a2);
  v8 = sub_233725510(*a2);
  v9 = sub_233725510(*a2);
  v10 = sub_233725614(*a2);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
  [v31 setObject:v11 forKeyedSubscript:@"version"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v7 << 16) | (v8 << 8) | v9];
  [v31 setObject:v12 forKeyedSubscript:@"flags"];

  if (v10 < 2)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:sub_233725660(*a2)];
    [v31 setObject:v13 forKeyedSubscript:@"offset"];
  }

  else
  {
    v13 = sub_233755CB8(v10);
    do
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:sub_233725660(*a2)];
      [v13 addObject:v14];

      --v10;
    }

    while (v10);
    [v31 setObject:v13 forKeyedSubscript:@"offset"];
  }

  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v15 = [v30 objectForKeyedSubscript:@"Tags"];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = *v49;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v48 + 1) + 8 * i) objectForKeyedSubscript:@"tagSize"];
        [v19 unsignedIntValue];
      }

      v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v16);
  }

  v20 = [v31 objectForKeyedSubscript:@"offset"];
  v21 = [v20 unsignedLongLongValue];

  v47 = v21;
  if (v21)
  {
    sub_2337338AC(a1, &v44);
    sub_233723B40(&v42, &v47);
    sub_233725F08(v46, &v44, &v42, 0);
    if (v45)
    {
      sub_2337239E8(v45);
    }

    sub_2337338AC(a1, &v42);
    sub_233735A18(&v44, &v42, 1);
    if (v43)
    {
      sub_2337239E8(v43);
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v30 objectForKeyedSubscript:@"Tags"];
    v22 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v22)
    {
      v34 = *v39;
      do
      {
        v35 = v22;
        for (j = 0; j != v35; ++j)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [*(*(&v38 + 1) + 8 * j) objectForKeyedSubscript:@"tagID"];
          v25 = [v24 unsignedIntValue];

          sub_2337338AC(a1, &v42);
          v26 = sub_233725614(v42);
          if (v43)
          {
            sub_2337239E8(v43);
          }

          sub_2337338AC(a1, &v42);
          v27 = sub_2337255C0(v42);
          if (v43)
          {
            sub_2337239E8(v43);
          }

          if (v25 == v27)
          {
            sub_2337338AC(a1, &v37);
            v36 = v26 - 6;
            sub_233725D94(v37, &v36);
          }

          sub_2337338AC(a1, &v42);
          v28 = v42;
          v36 = v26 - 6;
          sub_233723AE0(&v37, &v36);
          (*(*v28 + 40))(v28, &v37, 1);
          if (v43)
          {
            sub_2337239E8(v43);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v22);
    }

    sub_233735A90(&v44);
    sub_233725FD4(v46);
  }

  return v31;
}

id sub_233772F14(uint64_t a1, uint64_t *a2, void *a3)
{
  v21 = a3;
  v22 = [MEMORY[0x277CBEB38] dictionary];
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725510(*a2);
  v9 = sub_233725614(*a2);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
  [v22 setObject:v10 forKeyedSubscript:@"version"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v6 << 16) | (v7 << 8) | v8];
  [v22 setObject:v11 forKeyedSubscript:@"flags"];

  if (v9 < 2)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:sub_233725660(*a2)];
    [v22 setObject:v12 forKeyedSubscript:@"offset"];
  }

  else
  {
    v12 = sub_233755CB8(v9);
    v13 = v9;
    do
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:sub_233725660(*a2)];
      [v12 addObject:v14];

      --v13;
    }

    while (v13);
    [v22 setObject:v12 forKeyedSubscript:@"offset"];
  }

  if (v21)
  {
    if (v9 == 1)
    {
      v15 = [v21 objectForKeyedSubscript:@"sub_header_part_length"];
      v16 = [v15 unsignedIntValue];

      v17 = [v22 objectForKeyedSubscript:@"offset"];
      v18 = [v17 unsignedLongLongValue];

      v28 = v18;
      if (v18)
      {
        sub_2337338AC(a1, &v25);
        sub_233723B40(&v24, &v28);
        sub_233725F08(v27, &v25, &v24, 0);
        if (v26)
        {
          sub_2337239E8(v26);
        }

        sub_2337338AC(a1, &v24);
        v23 = v16;
        sub_233725D94(v24, &v23);
      }
    }
  }

  v19 = v22;

  return v19;
}

void sub_233773B9C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, ...)
{
  va_start(va, a22);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  sub_233725FD4(va);

  _Unwind_Resume(a1);
}

id sub_233773E4C()
{
  v125[39] = *MEMORY[0x277D85DE8];
  v124[0] = @"33434";
  v122 = qword_27DE37BA8;
  v123 = *MEMORY[0x277CD3060];
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  v125[0] = v45;
  v124[1] = @"33437";
  v120 = qword_27DE37BA8;
  v121 = *MEMORY[0x277CD3068];
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
  v125[1] = v44;
  v124[2] = @"34850";
  v118 = qword_27DE37BA8;
  v119 = *MEMORY[0x277CD3058];
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v125[2] = v43;
  v124[3] = @"34855";
  v116 = qword_27DE37BA8;
  v117 = *MEMORY[0x277CD30A8];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
  v125[3] = v42;
  v124[4] = @"34864";
  v114 = qword_27DE37BA8;
  v115 = *MEMORY[0x277CD3148];
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v125[4] = v41;
  v124[5] = @"34866";
  v112 = qword_27DE37BA8;
  v113 = *MEMORY[0x277CD3120];
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
  v125[5] = v40;
  v124[6] = @"36864";
  v0 = *MEMORY[0x277CD31A0];
  v110[0] = qword_27DE37BA8;
  v110[1] = qword_27DE37BB0;
  v111[0] = v0;
  v111[1] = &unk_284954A48;
  v110[2] = qword_27DE37BB8;
  v111[2] = &unk_284906E10;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];
  v125[6] = v39;
  v124[7] = @"36867";
  v108 = qword_27DE37BA8;
  v109 = *MEMORY[0x277CD3030];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  v125[7] = v38;
  v124[8] = @"36868";
  v106 = qword_27DE37BA8;
  v107 = *MEMORY[0x277CD3028];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
  v125[8] = v37;
  v124[9] = @"36880";
  v104[0] = qword_27DE37BA8;
  v104[1] = qword_27DE37BC0;
  v1 = MEMORY[0x277CBEC38];
  v105[0] = @"36880";
  v105[1] = MEMORY[0x277CBEC38];
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v125[9] = v36;
  v124[10] = @"36881";
  v102[0] = qword_27DE37BA8;
  v102[1] = qword_27DE37BC0;
  v103[0] = @"36881";
  v103[1] = v1;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v125[10] = v35;
  v124[11] = @"36882";
  v100[0] = qword_27DE37BA8;
  v100[1] = qword_27DE37BC0;
  v101[0] = @"36882";
  v101[1] = v1;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v125[11] = v34;
  v124[12] = @"37121";
  v2 = *MEMORY[0x277CD3008];
  v98[0] = qword_27DE37BA8;
  v98[1] = qword_27DE37BB0;
  v99[0] = v2;
  v99[1] = &unk_284954A60;
  v98[2] = qword_27DE37BB8;
  v99[2] = &unk_284906E10;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v125[12] = v33;
  v124[13] = @"37377";
  v96 = qword_27DE37BA8;
  v97 = *MEMORY[0x277CD3158];
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  v125[13] = v32;
  v124[14] = @"37378";
  v94 = qword_27DE37BA8;
  v95 = *MEMORY[0x277CD2F48];
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
  v125[14] = v31;
  v124[15] = @"37380";
  v92 = qword_27DE37BA8;
  v93 = *MEMORY[0x277CD3048];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v125[15] = v30;
  v124[16] = @"37383";
  v90 = qword_27DE37BA8;
  v91 = *MEMORY[0x277CD30F0];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v125[16] = v29;
  v124[17] = @"37385";
  v88 = qword_27DE37BA8;
  v89 = *MEMORY[0x277CD3070];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v125[17] = v28;
  v124[18] = @"37386";
  v86 = qword_27DE37BA8;
  v87 = *MEMORY[0x277CD3088];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v125[18] = v27;
  v124[19] = @"37510";
  v3 = *MEMORY[0x277CD3198];
  v84[0] = qword_27DE37BA8;
  v84[1] = qword_27DE37BC0;
  v85[0] = v3;
  v85[1] = v1;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v125[19] = v26;
  v124[20] = @"37520";
  v82 = qword_27DE37BA8;
  v83 = *MEMORY[0x277CD3180];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v125[20] = v25;
  v124[21] = @"37521";
  v80 = qword_27DE37BA8;
  v81 = *MEMORY[0x277CD3190];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v125[21] = v24;
  v124[22] = @"37522";
  v78 = qword_27DE37BA8;
  v79 = *MEMORY[0x277CD3188];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v125[22] = v23;
  v124[23] = @"40960";
  v4 = *MEMORY[0x277CD3078];
  v76[0] = qword_27DE37BA8;
  v76[1] = qword_27DE37BB0;
  v77[0] = v4;
  v77[1] = &unk_284954A78;
  v76[2] = qword_27DE37BB8;
  v77[2] = &unk_284906E10;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v125[23] = v22;
  v124[24] = @"40961";
  v74 = qword_27DE37BA8;
  v75 = *MEMORY[0x277CD3000];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v125[24] = v21;
  v124[25] = @"40962";
  v72 = qword_27DE37BA8;
  v73 = *MEMORY[0x277CD3110];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v125[25] = v20;
  v124[26] = @"40963";
  v70 = qword_27DE37BA8;
  v71 = *MEMORY[0x277CD3118];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v125[26] = v19;
  v124[27] = @"41486";
  v68 = qword_27DE37BA8;
  v69 = *MEMORY[0x277CD3098];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v125[27] = v18;
  v124[28] = @"41487";
  v66 = qword_27DE37BA8;
  v67 = *MEMORY[0x277CD30A0];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v125[28] = v17;
  v124[29] = @"41488";
  v64 = qword_27DE37BA8;
  v65 = *MEMORY[0x277CD3090];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v125[29] = v16;
  v124[30] = @"41985";
  v62 = qword_27DE37BA8;
  v63 = *MEMORY[0x277CD3020];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v125[30] = v5;
  v124[31] = @"41986";
  v60 = qword_27DE37BA8;
  v61 = *MEMORY[0x277CD3050];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v125[31] = v6;
  v124[32] = @"41987";
  v58 = qword_27DE37BA8;
  v59 = *MEMORY[0x277CD31A8];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v125[32] = v7;
  v124[33] = @"41990";
  v56 = qword_27DE37BA8;
  v57 = *MEMORY[0x277CD3130];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v125[33] = v8;
  v124[34] = @"42032";
  v54 = qword_27DE37BA8;
  v55 = *MEMORY[0x277CD2FF8];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v125[34] = v9;
  v124[35] = @"42033";
  v52 = qword_27DE37BA8;
  v53 = *MEMORY[0x277CD2FE8];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v125[35] = v10;
  v124[36] = @"42034";
  v50 = qword_27DE37BA8;
  v51 = *MEMORY[0x277CD30D8];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v125[36] = v11;
  v124[37] = @"42036";
  v48 = qword_27DE37BA8;
  v49 = *MEMORY[0x277CD30C8];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v125[37] = v12;
  v124[38] = @"42037";
  v46 = qword_27DE37BA8;
  v47 = *MEMORY[0x277CD30D0];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v125[38] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:39];

  return v14;
}

id sub_233774D40(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v288[93] = *MEMORY[0x277D85DE8];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = sub_23377A494;
  v100[3] = &unk_2789EECD0;
  v100[4] = v1;
  v99 = MEMORY[0x2383AC810](v100);
  v287[0] = @"1";
  v285[0] = qword_27DE37BA8;
  v285[1] = qword_27DE37BC0;
  v2 = MEMORY[0x277CBEC38];
  v286[0] = @"CameraSettings";
  v286[1] = MEMORY[0x277CBEC38];
  v285[2] = qword_27DE37BB0;
  v286[2] = &unk_284954DA8;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v286 forKeys:v285 count:3];
  v288[0] = v93;
  v287[1] = @"2";
  v283[0] = qword_27DE37BA8;
  v283[1] = qword_27DE37BC0;
  v284[0] = @"FocalLength";
  v284[1] = v2;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v284 forKeys:v283 count:2];
  v288[1] = v92;
  v287[2] = @"3";
  v281[0] = qword_27DE37BA8;
  v281[1] = qword_27DE37BC0;
  v282[0] = @"FlashInfo";
  v282[1] = v2;
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v282 forKeys:v281 count:2];
  v288[2] = v91;
  v287[3] = @"4";
  v279[0] = qword_27DE37BA8;
  v279[1] = qword_27DE37BB0;
  v280[0] = @"ShotInfo";
  v280[1] = &unk_284954DC0;
  v279[2] = qword_27DE37BB8;
  v279[3] = qword_27DE37BC0;
  v280[2] = &unk_284906F90;
  v280[3] = v2;
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v280 forKeys:v279 count:4];
  v288[3] = v90;
  v287[4] = @"5";
  v277[0] = qword_27DE37BA8;
  v277[1] = qword_27DE37BC0;
  v278[0] = @"Panorama";
  v278[1] = v2;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v278 forKeys:v277 count:2];
  v288[4] = v89;
  v287[5] = @"6";
  v275[0] = qword_27DE37BA8;
  v275[1] = qword_27DE37BB0;
  v276[0] = @"ImageType";
  v276[1] = &unk_284954DD8;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v276 forKeys:v275 count:2];
  v288[5] = v88;
  v287[6] = @"7";
  v273[0] = qword_27DE37BA8;
  v273[1] = qword_27DE37BB0;
  v274[0] = @"FirmwareVersion";
  v274[1] = &unk_284954DF0;
  v273[2] = qword_27DE37BB8;
  v274[2] = &unk_284906E90;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v274 forKeys:v273 count:3];
  v288[6] = v87;
  v287[7] = @"8";
  v271 = qword_27DE37BA8;
  v272 = @"FileNumber";
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
  v288[7] = v86;
  v287[8] = @"9";
  v269[0] = qword_27DE37BA8;
  v269[1] = qword_27DE37BB0;
  v270[0] = @"OwnerName";
  v270[1] = &unk_284954E08;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v270 forKeys:v269 count:2];
  v288[8] = v85;
  v287[9] = @"10";
  v267[0] = qword_27DE37BA8;
  v267[1] = qword_27DE37BC0;
  v268[0] = @"UnknownD30";
  v268[1] = v2;
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v268 forKeys:v267 count:2];
  v288[9] = v84;
  v287[10] = @"12";
  v265 = qword_27DE37BA8;
  v266 = @"SerialNumber";
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
  v288[10] = v83;
  v287[11] = @"13";
  v263[0] = qword_27DE37BA8;
  v263[1] = qword_27DE37BC0;
  v264[0] = @"CameraInfo";
  v264[1] = v2;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:2];
  v288[11] = v82;
  v287[12] = @"14";
  v261 = qword_27DE37BA8;
  v262 = @"FileLength";
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
  v288[12] = v81;
  v287[13] = @"15";
  v259[0] = qword_27DE37BA8;
  v259[1] = qword_27DE37BC0;
  v260[0] = @"CustomFunctions";
  v260[1] = v2;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:2];
  v288[13] = v80;
  v287[14] = @"16";
  v257 = qword_27DE37BA8;
  v258 = @"ModelID";
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
  v288[14] = v79;
  v287[15] = @"17";
  v255[0] = qword_27DE37BA8;
  v255[1] = qword_27DE37BC0;
  v256[0] = @"MovieInfo";
  v256[1] = v2;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:2];
  v288[15] = v78;
  v287[16] = @"18";
  v253[0] = qword_27DE37BA8;
  v253[1] = qword_27DE37BC0;
  v254[0] = @"AFInfo";
  v254[1] = v2;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:2];
  v288[16] = v77;
  v287[17] = @"19";
  v251[0] = qword_27DE37BA8;
  v251[1] = qword_27DE37BC0;
  v252[0] = @"ThumbnailImageValidArea";
  v252[1] = v2;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:2];
  v288[17] = v76;
  v287[18] = @"21";
  v249[0] = qword_27DE37BA8;
  v249[1] = qword_27DE37BC0;
  v250[0] = @"SerialNumberFormat";
  v250[1] = v2;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:2];
  v288[18] = v75;
  v287[19] = @"25";
  v247[0] = qword_27DE37BA8;
  v247[1] = qword_27DE37BC0;
  v248[0] = @"25";
  v248[1] = v2;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v248 forKeys:v247 count:2];
  v288[19] = v74;
  v287[20] = @"26";
  v245 = qword_27DE37BA8;
  v246 = @"SuperMacro";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
  v288[20] = v73;
  v287[21] = @"28";
  v243[0] = qword_27DE37BA8;
  v243[1] = qword_27DE37BC0;
  v244[0] = @"DateStampMode";
  v244[1] = v2;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v244 forKeys:v243 count:2];
  v288[21] = v72;
  v287[22] = @"29";
  v241[0] = qword_27DE37BA8;
  v241[1] = qword_27DE37BC0;
  v242[0] = @"MyColors";
  v242[1] = v2;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:2];
  v288[22] = v71;
  v287[23] = @"30";
  v239 = qword_27DE37BA8;
  v240 = @"FirmwareRevision";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
  v288[23] = v70;
  v287[24] = @"35";
  v237[0] = qword_27DE37BA8;
  v237[1] = qword_27DE37BC0;
  v238[0] = @"Categories";
  v238[1] = v2;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v238 forKeys:v237 count:2];
  v288[24] = v69;
  v287[25] = @"36";
  v235[0] = qword_27DE37BA8;
  v235[1] = qword_27DE37BC0;
  v236[0] = @"FaceDetect1";
  v236[1] = v2;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:2];
  v288[25] = v68;
  v287[26] = @"37";
  v233[0] = qword_27DE37BA8;
  v233[1] = qword_27DE37BC0;
  v234[0] = @"FaceDetect2";
  v234[1] = v2;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:2];
  v288[26] = v67;
  v287[27] = @"38";
  v231[0] = qword_27DE37BA8;
  v231[1] = qword_27DE37BC0;
  v232[0] = @"AFInfo2";
  v232[1] = v2;
  v231[2] = qword_27DE37BB0;
  v231[3] = qword_27DE37BB8;
  v232[2] = &unk_284954E20;
  v232[3] = &unk_284906F10;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:v231 count:4];
  v288[27] = v66;
  v287[28] = @"39";
  v229[0] = qword_27DE37BA8;
  v229[1] = qword_27DE37BC0;
  v230[0] = @"ContrastInfo";
  v230[1] = v2;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:2];
  v288[28] = v65;
  v287[29] = @"40";
  v227[0] = qword_27DE37BA8;
  v227[1] = qword_27DE37BC0;
  v228[0] = @"ImageUniqueID";
  v228[1] = v2;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v288[29] = v64;
  v287[30] = @"47";
  v225[0] = qword_27DE37BA8;
  v225[1] = qword_27DE37BC0;
  v226[0] = @"FaceDetect3";
  v226[1] = v2;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:2];
  v288[30] = v63;
  v287[31] = @"51";
  v223[0] = qword_27DE37BA8;
  v223[1] = qword_27DE37BC0;
  v224[0] = @"51";
  v224[1] = v2;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:2];
  v288[31] = v62;
  v287[32] = @"53";
  v221[0] = qword_27DE37BA8;
  v221[1] = qword_27DE37BC0;
  v222[0] = @"TimeInfo";
  v222[1] = v2;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v222 forKeys:v221 count:2];
  v288[32] = v61;
  v287[33] = @"56";
  v219[0] = qword_27DE37BA8;
  v219[1] = qword_27DE37BC0;
  v220[0] = @"BatteryType";
  v220[1] = v2;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:2];
  v288[33] = v60;
  v287[34] = @"60";
  v217[0] = qword_27DE37BA8;
  v217[1] = qword_27DE37BC0;
  v218[0] = @"AFInfo3";
  v218[1] = v2;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:2];
  v288[34] = v59;
  v287[35] = @"61";
  v215[0] = qword_27DE37BA8;
  v215[1] = qword_27DE37BC0;
  v216[0] = @"61";
  v216[1] = v2;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v216 forKeys:v215 count:2];
  v288[35] = v58;
  v287[36] = @"63";
  v213[0] = qword_27DE37BA8;
  v213[1] = qword_27DE37BC0;
  v214[0] = @"63";
  v214[1] = v2;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:v213 count:2];
  v288[36] = v57;
  v287[37] = @"129";
  v211[0] = qword_27DE37BA8;
  v211[1] = qword_27DE37BC0;
  v212[0] = @"RawDataOffset";
  v212[1] = v2;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v212 forKeys:v211 count:2];
  v288[37] = v56;
  v287[38] = @"131";
  v209[0] = qword_27DE37BA8;
  v209[1] = qword_27DE37BC0;
  v210[0] = @"OriginalDecisionDataOffset";
  v210[1] = v2;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v210 forKeys:v209 count:2];
  v288[38] = v55;
  v287[39] = @"144";
  v207[0] = qword_27DE37BA8;
  v207[1] = qword_27DE37BC0;
  v208[0] = @"CustomFunctions";
  v208[1] = v2;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v208 forKeys:v207 count:2];
  v288[39] = v54;
  v287[40] = @"145";
  v205[0] = qword_27DE37BA8;
  v205[1] = qword_27DE37BC0;
  v206[0] = @"PersonalFunctions";
  v206[1] = v2;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v206 forKeys:v205 count:2];
  v288[40] = v53;
  v287[41] = @"146";
  v203[0] = qword_27DE37BA8;
  v203[1] = qword_27DE37BC0;
  v204[0] = @"PersonalFunctionValues";
  v204[1] = v2;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v204 forKeys:v203 count:2];
  v288[41] = v52;
  v287[42] = @"147";
  v201[0] = qword_27DE37BA8;
  v201[1] = qword_27DE37BC0;
  v202[0] = @"FileInfo";
  v202[1] = v2;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v202 forKeys:v201 count:2];
  v288[42] = v51;
  v287[43] = @"148";
  v199[0] = qword_27DE37BA8;
  v199[1] = qword_27DE37BC0;
  v200[0] = @"AFPointsInFocus";
  v200[1] = v2;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v200 forKeys:v199 count:2];
  v288[43] = v50;
  v287[44] = @"149";
  v197 = qword_27DE37BA8;
  v198 = *MEMORY[0x277CD33C0];
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
  v288[44] = v49;
  v287[45] = @"150";
  v195[0] = qword_27DE37BA8;
  v195[1] = qword_27DE37BC0;
  v196[0] = @"InternalSerialNumber";
  v196[1] = v2;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:2];
  v288[45] = v48;
  v287[46] = @"151";
  v193[0] = qword_27DE37BA8;
  v193[1] = qword_27DE37BC0;
  v194[0] = @"DustRemovalData";
  v194[1] = v2;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];
  v288[46] = v47;
  v287[47] = @"152";
  v191[0] = qword_27DE37BA8;
  v191[1] = qword_27DE37BC0;
  v192[0] = @"CropInfo";
  v192[1] = v2;
  v191[2] = qword_27DE37BB0;
  v191[3] = qword_27DE37BB8;
  v192[2] = &unk_284954E38;
  v192[3] = &unk_284906F30;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:4];
  v288[47] = v46;
  v287[48] = @"153";
  v189[0] = qword_27DE37BA8;
  v189[1] = qword_27DE37BC0;
  v190[0] = @"CustomFunctions2";
  v190[1] = v2;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:2];
  v288[48] = v45;
  v287[49] = @"154";
  v187[0] = qword_27DE37BA8;
  v187[1] = qword_27DE37BC0;
  v188[0] = @"AspectInfo";
  v188[1] = v2;
  v187[2] = qword_27DE37BB0;
  v187[3] = qword_27DE37BB8;
  v188[2] = &unk_284954E50;
  v188[3] = &unk_284906EF0;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:4];
  v288[49] = v44;
  v287[50] = @"160";
  v185[0] = qword_27DE37BA8;
  v185[1] = qword_27DE37BC0;
  v186[0] = @"ProcessingInfo";
  v186[1] = v2;
  v185[2] = qword_27DE37BB0;
  v185[3] = qword_27DE37BB8;
  v186[2] = &unk_284954E68;
  v186[3] = &unk_284906F70;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:4];
  v288[50] = v43;
  v287[51] = @"161";
  v183[0] = qword_27DE37BA8;
  v183[1] = qword_27DE37BC0;
  v184[0] = @"ToneCurveTable";
  v184[1] = v2;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
  v288[51] = v42;
  v287[52] = @"162";
  v181[0] = qword_27DE37BA8;
  v181[1] = qword_27DE37BC0;
  v182[0] = @"SharpnessTable";
  v182[1] = v2;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
  v288[52] = v41;
  v287[53] = @"163";
  v179[0] = qword_27DE37BA8;
  v179[1] = qword_27DE37BC0;
  v180[0] = @"SharpnessFreqTable";
  v180[1] = v2;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
  v288[53] = v40;
  v287[54] = @"164";
  v177[0] = qword_27DE37BA8;
  v177[1] = qword_27DE37BC0;
  v178[0] = @"WhiteBalanceTable";
  v178[1] = v2;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
  v288[54] = v39;
  v287[55] = @"169";
  v175[0] = qword_27DE37BA8;
  v175[1] = qword_27DE37BC0;
  v176[0] = @"ColorBalance";
  v176[1] = v2;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
  v288[55] = v38;
  v287[56] = @"170";
  v173[0] = qword_27DE37BA8;
  v173[1] = qword_27DE37BC0;
  v174[0] = @"MeasuredColor";
  v174[1] = v2;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
  v288[56] = v37;
  v287[57] = @"174";
  v171 = qword_27DE37BA8;
  v172 = @"ColorTemperature";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v288[57] = v36;
  v287[58] = @"176";
  v169[0] = qword_27DE37BA8;
  v169[1] = qword_27DE37BC0;
  v170[0] = @"Flags";
  v170[1] = v2;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
  v288[58] = v35;
  v287[59] = @"177";
  v167[0] = qword_27DE37BA8;
  v167[1] = qword_27DE37BC0;
  v168[0] = @"ModifiedInfo";
  v168[1] = v2;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:2];
  v288[59] = v34;
  v287[60] = @"178";
  v165[0] = qword_27DE37BA8;
  v165[1] = qword_27DE37BC0;
  v166[0] = @"ToneCurveMatching";
  v166[1] = v2;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  v288[60] = v33;
  v287[61] = @"179";
  v163[0] = qword_27DE37BA8;
  v163[1] = qword_27DE37BC0;
  v164[0] = @"WhiteBalanceMatching";
  v164[1] = v2;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
  v288[61] = v16;
  v287[62] = @"180";
  v161 = qword_27DE37BA8;
  v162 = @"ColorSpace";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
  v288[62] = v15;
  v287[63] = @"182";
  v159[0] = qword_27DE37BA8;
  v159[1] = qword_27DE37BC0;
  v160[0] = @"PreviewImageInfo";
  v160[1] = v2;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
  v288[63] = v14;
  v287[64] = @"208";
  v157[0] = qword_27DE37BA8;
  v157[1] = qword_27DE37BC0;
  v158[0] = @"VRDOffset";
  v158[1] = v2;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:2];
  v288[64] = v13;
  v287[65] = @"224";
  v155[0] = qword_27DE37BA8;
  v155[1] = qword_27DE37BC0;
  v156[0] = @"SensorInfo";
  v156[1] = v2;
  v155[2] = qword_27DE37BB8;
  v156[2] = &unk_284906EB0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:3];
  v288[65] = v12;
  v287[66] = @"16385";
  v153[0] = qword_27DE37BA8;
  v153[1] = qword_27DE37BC0;
  v154[0] = @"ColorData";
  v154[1] = v2;
  v154[2] = &unk_284954E80;
  v153[2] = qword_27DE37BB0;
  v153[3] = qword_27DE37BB8;
  v98 = MEMORY[0x2383AC810](v99);
  v154[3] = v98;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:4];
  v288[66] = v97;
  v287[67] = @"16386";
  v151[0] = qword_27DE37BA8;
  v151[1] = qword_27DE37BC0;
  v152[0] = @"CRWParam";
  v152[1] = v2;
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];
  v288[67] = v96;
  v287[68] = @"16387";
  v149[0] = qword_27DE37BA8;
  v149[1] = qword_27DE37BC0;
  v150[0] = @"ColorInfo";
  v150[1] = v2;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
  v288[68] = v95;
  v287[69] = @"16389";
  v147[0] = qword_27DE37BA8;
  v147[1] = qword_27DE37BC0;
  v148[0] = @"Flavor";
  v148[1] = v2;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];
  v288[69] = v94;
  v287[70] = @"16392";
  v145[0] = qword_27DE37BA8;
  v145[1] = qword_27DE37BC0;
  v146[0] = @"PictureStyleUserDef";
  v146[1] = v2;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
  v288[70] = v32;
  v287[71] = @"16393";
  v143[0] = qword_27DE37BA8;
  v143[1] = qword_27DE37BC0;
  v144[0] = @"PictureStylePC";
  v144[1] = v2;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:2];
  v288[71] = v31;
  v287[72] = @"16400";
  v141[0] = qword_27DE37BA8;
  v141[1] = qword_27DE37BC0;
  v142[0] = @"CustomPictureStyleFileName";
  v142[1] = v2;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
  v288[72] = v30;
  v287[73] = @"16401";
  v139[0] = qword_27DE37BA8;
  v139[1] = qword_27DE37BC0;
  v140[0] = @"16401";
  v140[1] = v2;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];
  v288[73] = v29;
  v287[74] = @"16402";
  v137[0] = qword_27DE37BA8;
  v137[1] = qword_27DE37BC0;
  v138[0] = @"16402";
  v138[1] = v2;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
  v288[74] = v28;
  v287[75] = @"16403";
  v135[0] = qword_27DE37BA8;
  v135[1] = qword_27DE37BC0;
  v136[0] = @"AFMicroAdj";
  v136[1] = v2;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
  v288[75] = v27;
  v287[76] = @"16405";
  v133[0] = qword_27DE37BA8;
  v133[1] = qword_27DE37BC0;
  v134[0] = @"VignettingCorr";
  v134[1] = v2;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
  v288[76] = v26;
  v287[77] = @"16406";
  v131[0] = qword_27DE37BA8;
  v131[1] = qword_27DE37BC0;
  v132[0] = @"VignettingCorr2";
  v132[1] = v2;
  v131[2] = qword_27DE37BB0;
  v131[3] = qword_27DE37BB8;
  v132[2] = &unk_284954E98;
  v132[3] = &unk_284906ED0;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:4];
  v288[77] = v25;
  v287[78] = @"16408";
  v129[0] = qword_27DE37BA8;
  v129[1] = qword_27DE37BC0;
  v130[0] = @"LightingOpt";
  v130[1] = v2;
  v129[2] = qword_27DE37BB0;
  v129[3] = qword_27DE37BB8;
  v130[2] = &unk_284954EB0;
  v130[3] = &unk_284906F50;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:4];
  v288[78] = v24;
  v287[79] = @"16409";
  v127[0] = qword_27DE37BA8;
  v127[1] = qword_27DE37BC0;
  v128[0] = @"LensInfo";
  v128[1] = v2;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];
  v288[79] = v23;
  v287[80] = @"16416";
  v125[0] = qword_27DE37BA8;
  v125[1] = qword_27DE37BC0;
  v126[0] = @"AmbienceInfo";
  v126[1] = v2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
  v288[80] = v22;
  v287[81] = @"16417";
  v123[0] = qword_27DE37BA8;
  v123[1] = qword_27DE37BC0;
  v124[0] = @"MultiExp";
  v124[1] = v2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  v288[81] = v21;
  v287[82] = @"16420";
  v121[0] = qword_27DE37BA8;
  v121[1] = qword_27DE37BC0;
  v122[0] = @"FilterInfo";
  v122[1] = v2;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
  v288[82] = v20;
  v287[83] = @"16421";
  v119[0] = qword_27DE37BA8;
  v119[1] = qword_27DE37BC0;
  v120[0] = @"HDRInfo";
  v120[1] = v2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
  v288[83] = v19;
  v287[84] = @"16423";
  v117[0] = qword_27DE37BA8;
  v117[1] = qword_27DE37BC0;
  v118[0] = @"16423";
  v118[1] = v2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
  v288[84] = v18;
  v287[85] = @"16424";
  v115[0] = qword_27DE37BA8;
  v115[1] = qword_27DE37BC0;
  v116[0] = @"AFConfig";
  v116[1] = v2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v288[85] = v17;
  v287[86] = @"16428";
  v113[0] = qword_27DE37BA8;
  v113[1] = qword_27DE37BC0;
  v114[0] = @"16428";
  v114[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
  v288[86] = v3;
  v287[87] = @"16430";
  v111[0] = qword_27DE37BA8;
  v111[1] = qword_27DE37BC0;
  v112[0] = @"16430";
  v112[1] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
  v288[87] = v4;
  v287[88] = @"16435";
  v109[0] = qword_27DE37BA8;
  v109[1] = qword_27DE37BC0;
  v110[0] = @"16435";
  v110[1] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
  v288[88] = v5;
  v287[89] = @"16437";
  v107[0] = qword_27DE37BA8;
  v107[1] = qword_27DE37BC0;
  v108[0] = @"16437";
  v108[1] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
  v288[89] = v6;
  v287[90] = @"16439";
  v105[0] = qword_27DE37BA8;
  v105[1] = qword_27DE37BC0;
  v106[0] = @"16439";
  v106[1] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
  v288[90] = v7;
  v287[91] = @"16441";
  v103[0] = qword_27DE37BA8;
  v103[1] = qword_27DE37BC0;
  v104[0] = @"16441";
  v104[1] = v2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v288[91] = v8;
  v287[92] = @"16444";
  v101[0] = qword_27DE37BA8;
  v101[1] = qword_27DE37BC0;
  v102[0] = @"16444";
  v102[1] = v2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v288[92] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v288 forKeys:v287 count:93];

  return v11;
}

id sub_233777384(uint64_t a1, uint64_t *a2, void *a3, char a4)
{
  v106[6] = *MEMORY[0x277D85DE8];
  v95 = a3;
  v93 = [MEMORY[0x277CBEB38] dictionary];
  v5 = sub_2337255C0(*a2);
  if (v5 != 18761 && v5 != 19789)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v5 == 18761)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  sub_23372540C(*a2, v7);
  if (sub_2337255C0(*a2) != 42)
  {
    v89 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v89, "RawCameraException");
    __cxa_throw(v89, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v104 = sub_233725614(*a2);
  v98 = a2;
  v8 = *a2;
  sub_233723AE0(&v102, &v104);
  (*(*v8 + 40))(v8, &v102, 0);
  v9 = v98;
  v94 = sub_2337255C0(*v98);
  if (v94)
  {
    for (i = 0; v94 > i; ++i)
    {
      v97 = sub_2337255C0(*v9);
      v10 = sub_2337255C0(*v9);
      v11 = sub_233725614(*v9);
      v12 = sub_233725614(*v9);
      v103 = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v15 = v13;
      if (v10 > 6)
      {
        if (v10 > 9)
        {
          switch(v10)
          {
            case 0xA:
              if (v11 < 2)
              {
                sub_233723AE0(__p, &v103);
                sub_233725F08(&v102, v9, __p, 0);
                v58 = v9;
                v59 = MEMORY[0x277CCABB0];
                *&v60 = sub_233725768(*v58);
                v16 = [v59 numberWithFloat:v60];

                sub_233725FD4(&v102);
                goto LABEL_116;
              }

              sub_233723AE0(__p, &v103);
              sub_233725F08(&v102, v9, __p, 0);
              v16 = sub_233755CB8(v11);
              v32 = v11;
              do
              {
                v33 = MEMORY[0x277CCABB0];
                *&v34 = sub_233725768(*v98);
                v35 = [v33 numberWithFloat:v34];
                [(__CFString *)v16 addObject:v35];

                --v32;
              }

              while (v32);
              break;
            case 0xB:
              if (v11 < 2)
              {
                LODWORD(v14) = v103;
                v16 = [MEMORY[0x277CCABB0] numberWithFloat:v14];

                goto LABEL_116;
              }

              sub_233723AE0(__p, &v103);
              sub_233725F08(&v102, v9, __p, 0);
              v16 = sub_233755CB8(v11);
              v44 = v11;
              do
              {
                v45 = MEMORY[0x277CCABB0];
                *&v46 = sub_233725730(*v98);
                v47 = [v45 numberWithFloat:v46];
                [(__CFString *)v16 addObject:v47];

                --v44;
              }

              while (v44);
              break;
            case 0xC:
              if (v11 < 2)
              {
                sub_233723AE0(__p, &v103);
                sub_233725F08(&v102, v9, __p, 0);
                v16 = [MEMORY[0x277CCABB0] numberWithDouble:sub_23372574C(*v9)];

                sub_233725FD4(&v102);
                goto LABEL_116;
              }

              sub_233723AE0(__p, &v103);
              sub_233725F08(&v102, v9, __p, 0);
              v16 = sub_233755CB8(v11);
              v23 = v11;
              do
              {
                v24 = [MEMORY[0x277CCABB0] numberWithDouble:sub_23372574C(*v98)];
                [(__CFString *)v16 addObject:v24];

                --v23;
              }

              while (v23);
              break;
            default:
              goto LABEL_77;
          }
        }

        else
        {
          if (v10 == 7)
          {
            if (v11 < 5)
            {
              v16 = [MEMORY[0x277CBEB28] dataWithBytes:&v103 length:v11];
            }

            else
            {
              sub_233723AE0(__p, &v103);
              sub_233725F08(&v102, v9, __p, 0);
              v27 = [MEMORY[0x277CBEB28] dataWithLength:v11];
              v28 = *v98;
              v29 = v27;
              LODWORD(v28) = (*(*v28 + 32))(v28, [v27 mutableBytes], objc_msgSend(v27, "length"));
              if ([v27 length] == v28)
              {
                v16 = v27;
              }

              else
              {
                v16 = v15;
              }

              sub_233725FD4(&v102);
            }

            goto LABEL_116;
          }

          if (v10 == 8)
          {
            if (v11 < 3)
            {
              if (v11 != 2)
              {
                v16 = [MEMORY[0x277CCABB0] numberWithShort:v103];

                goto LABEL_116;
              }

              v16 = sub_233755CB8(2uLL);
              v68 = 0;
              do
              {
                v69 = [MEMORY[0x277CCABB0] numberWithShort:*(&v103 + v68)];
                [(__CFString *)v16 addObject:v69];

                v68 += 2;
              }

              while (v68 != 4);
              goto LABEL_106;
            }

            sub_233723AE0(__p, &v103);
            sub_233725F08(&v102, v9, __p, 0);
            v16 = sub_233755CB8(v11);
            v38 = v11;
            do
            {
              v39 = [MEMORY[0x277CCABB0] numberWithShort:sub_2337256DC(*v98)];
              [(__CFString *)v16 addObject:v39];

              --v38;
            }

            while (v38);
          }

          else
          {
            if (v11 < 2)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithInt:v103];

              goto LABEL_116;
            }

            sub_233723AE0(__p, &v103);
            sub_233725F08(&v102, v9, __p, 0);
            v16 = sub_233755CB8(v11);
            v19 = v11;
            do
            {
              v20 = [MEMORY[0x277CCABB0] numberWithInt:sub_233725614(*v98)];
              [(__CFString *)v16 addObject:v20];

              --v19;
            }

            while (v19);
          }
        }
      }

      else if (v10 > 3)
      {
        if (v10 == 4)
        {
          if (v11 < 2)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v103];

            goto LABEL_116;
          }

          sub_233723AE0(__p, &v103);
          sub_233725F08(&v102, v9, __p, 0);
          v16 = sub_233755CB8(v11);
          v30 = v11;
          do
          {
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sub_233725614(*v98)];
            [(__CFString *)v16 addObject:v31];

            --v30;
          }

          while (v30);
        }

        else if (v10 == 5)
        {
          if (v11 < 2)
          {
            sub_233723AE0(__p, &v103);
            sub_233725F08(&v102, v9, __p, 0);
            v70 = v9;
            v71 = MEMORY[0x277CCABB0];
            *&v72 = sub_2337257A8(*v70);
            v16 = [v71 numberWithFloat:v72];

            sub_233725FD4(&v102);
            goto LABEL_116;
          }

          sub_233723AE0(__p, &v103);
          sub_233725F08(&v102, v9, __p, 0);
          v16 = sub_233755CB8(v11);
          v40 = v11;
          do
          {
            v41 = MEMORY[0x277CCABB0];
            *&v42 = sub_2337257A8(*v98);
            v43 = [v41 numberWithFloat:v42];
            [(__CFString *)v16 addObject:v43];

            --v40;
          }

          while (v40);
        }

        else
        {
          if (v11 < 5)
          {
            v50 = v11;
            v16 = sub_233755CB8(v11);
            if (v11)
            {
              v51 = &v103;
              do
              {
                v52 = *v51;
                v51 = (v51 + 1);
                v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52];
                [(__CFString *)v16 addObject:v53];

                --v50;
              }

              while (v50);
            }

            goto LABEL_106;
          }

          sub_233723AE0(__p, &v103);
          sub_233725F08(&v102, v9, __p, 0);
          v16 = sub_233755CB8(v11);
          v21 = v11;
          do
          {
            v22 = [MEMORY[0x277CCABB0] numberWithChar:sub_2337256AC(*v98)];
            [(__CFString *)v16 addObject:v22];

            --v21;
          }

          while (v21);
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            if (v11 < 5)
            {
              v54 = v11;
              v16 = sub_233755CB8(v11);
              if (v11)
              {
                v55 = &v103;
                do
                {
                  v56 = *v55;
                  v55 = (v55 + 1);
                  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
                  [(__CFString *)v16 addObject:v57];

                  --v54;
                }

                while (v54);
              }

LABEL_106:

              goto LABEL_116;
            }

            sub_233723AE0(__p, &v103);
            sub_233725F08(&v102, v9, __p, 0);
            v16 = sub_233755CB8(v11);
            v25 = v11;
            do
            {
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_233725510(*v98)];
              [(__CFString *)v16 addObject:v26];

              --v25;
            }

            while (v25);
            break;
          case 2:
            if (v11 < 5)
            {
              v61 = sub_233725404(*v9);
              v62 = v103;
              v63 = bswap32(v103);
              if (v61 == 2)
              {
                v62 = v63;
              }

              LODWORD(__p[0]) = v62;
              memset(&v102, 0, sizeof(v102));
              if (v11)
              {
                v64 = v11;
                v65 = __p;
                do
                {
                  v66 = *v65++;
                  std::string::append(&v102, 1uLL, v66);
                  --v64;
                }

                while (v64);
                if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = &v102;
                }

                else
                {
                  v67 = v102.__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                v67 = &v102;
              }

              v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v67];

              if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v102.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              sub_233723AE0(__p, &v103);
              sub_233725F08(&v102, v9, __p, 0);
              __p[0] = 0;
              __p[1] = 0;
              v101 = 0;
              v36 = *v9;
              v99 = v11;
              v16 = &stru_284938540;
              if (sub_2337257E8(v36, &v99, __p))
              {
                if (v101 >= 0)
                {
                  v37 = __p;
                }

                else
                {
                  v37 = __p[0];
                }

                v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
              }

              if (SHIBYTE(v101) < 0)
              {
                operator delete(__p[0]);
              }

              sub_233725FD4(&v102);
            }

            goto LABEL_116;
          case 3:
            if (v11 < 3)
            {
              if (v11 != 2)
              {
                v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v103];

                goto LABEL_116;
              }

              v16 = sub_233755CB8(2uLL);
              v48 = 0;
              do
              {
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(&v103 + v48)];
                [(__CFString *)v16 addObject:v49];

                v48 += 2;
              }

              while (v48 != 4);
              goto LABEL_106;
            }

            sub_233723AE0(__p, &v103);
            sub_233725F08(&v102, v9, __p, 0);
            v16 = sub_233755CB8(v11);
            v17 = v11;
            do
            {
              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:sub_2337255C0(*v98)];
              [(__CFString *)v16 addObject:v18];

              --v17;
            }

            while (v17);
            break;
          default:
LABEL_77:
            v16 = v13;
            goto LABEL_116;
        }
      }

      sub_233725FD4(&v102);
LABEL_116:
      v73 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v97];
      v74 = [v73 stringValue];
      v75 = [v95 objectForKeyedSubscript:v74];

      if (v75)
      {
        v76 = [v75 objectForKeyedSubscript:qword_27DE37BA8];
        v77 = [v75 objectForKeyedSubscript:qword_27DE37BC0];
        v78 = [v75 objectForKeyedSubscript:qword_27DE37BB0];
        v79 = [v75 objectForKeyedSubscript:qword_27DE37BB8];
        if (v78 && ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v10], v80 = objc_claimAutoreleasedReturnValue(), v81 = objc_msgSend(v78, "containsObject:", v80), v80, !v81))
        {
          NSLog(&cfstr_UnexpectedType.isa);
        }

        else if (v76)
        {
          v105[0] = @"tag";
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v97];
          v106[0] = v82;
          v106[1] = v76;
          v105[1] = @"tagName";
          v105[2] = @"type";
          v83 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
          v106[2] = v83;
          v105[3] = @"count";
          v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
          v106[3] = v84;
          v106[4] = v16;
          v105[4] = @"val";
          v105[5] = @"hide";
          v85 = MEMORY[0x277CBEC28];
          if (v77)
          {
            v85 = v77;
          }

          v106[5] = v85;
          v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:6];

          if (v79)
          {
            v87 = (v79)[2](v79, v86);

            v86 = v87;
          }

          [v93 setObject:v86 forKeyedSubscript:v76];
        }

        else
        {
          NSLog(&cfstr_NoTagName.isa);
        }
      }

      v9 = v98;
    }
  }

  if ((a4 & 1) != 0 && sub_233725614(*v9))
  {
    v90 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v90, "RawCameraException");
    __cxa_throw(v90, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v93;
}

void sub_233778338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);

  _Unwind_Resume(a1);
}

id sub_233778774()
{
  v42[13] = *MEMORY[0x277D85DE8];
  v41[0] = @"256";
  v39 = qword_27DE37BA8;
  v40 = *MEMORY[0x277CD3520];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42[0] = v14;
  v41[1] = @"257";
  v37 = qword_27DE37BA8;
  v38 = *MEMORY[0x277CD3370];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v42[1] = v13;
  v41[2] = @"258";
  v35 = qword_27DE37BA8;
  v36 = *MEMORY[0x277CD2DF0];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v42[2] = v12;
  v41[3] = @"259";
  v33 = qword_27DE37BA8;
  v34 = *MEMORY[0x277CD3478];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v42[3] = v11;
  v41[4] = @"271";
  v31 = qword_27DE37BA8;
  v32 = *MEMORY[0x277CD34A8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v42[4] = v0;
  v41[5] = @"272";
  v29 = qword_27DE37BA8;
  v30 = *MEMORY[0x277CD34B0];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v42[5] = v1;
  v41[6] = @"274";
  v27 = qword_27DE37BA8;
  v28 = *MEMORY[0x277CD34B8];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v42[6] = v2;
  v41[7] = @"282";
  v25 = qword_27DE37BA8;
  v26 = *MEMORY[0x277CD34E0];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v42[7] = v3;
  v41[8] = @"283";
  v23 = qword_27DE37BA8;
  v24 = *MEMORY[0x277CD34F0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v42[8] = v4;
  v41[9] = @"296";
  v21 = qword_27DE37BA8;
  v22 = *MEMORY[0x277CD34C8];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v42[9] = v5;
  v41[10] = @"306";
  v19 = qword_27DE37BA8;
  v20 = *MEMORY[0x277CD3488];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v42[10] = v6;
  v41[11] = @"315";
  v17 = qword_27DE37BA8;
  v18 = *MEMORY[0x277CD3470];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v42[11] = v7;
  v41[12] = @"33432";
  v15 = qword_27DE37BA8;
  v16 = *MEMORY[0x277CD3480];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v42[12] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:13];

  return v9;
}

id sub_233778C90()
{
  v127[31] = *MEMORY[0x277D85DE8];
  v126[0] = @"0";
  v0 = *MEMORY[0x277CD32E8];
  v124[0] = qword_27DE37BA8;
  v124[1] = qword_27DE37BB0;
  v125[0] = v0;
  v125[1] = &unk_284954A90;
  v124[2] = qword_27DE37BB8;
  v125[2] = &unk_284906E30;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
  v127[0] = v63;
  v126[1] = @"1";
  v1 = *MEMORY[0x277CD3280];
  v122[0] = qword_27DE37BA8;
  v122[1] = qword_27DE37BB0;
  v123[0] = v1;
  v123[1] = &unk_284954AA8;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v127[1] = v62;
  v126[2] = @"2";
  v2 = *MEMORY[0x277CD3278];
  v120[0] = qword_27DE37BA8;
  v120[1] = qword_27DE37BB0;
  v121[0] = v2;
  v121[1] = &unk_284954AC0;
  v120[2] = qword_27DE37BB8;
  v121[2] = &unk_284906E70;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:3];
  v127[2] = v61;
  v126[3] = @"3";
  v3 = *MEMORY[0x277CD3290];
  v118[0] = qword_27DE37BA8;
  v118[1] = qword_27DE37BB0;
  v119[0] = v3;
  v119[1] = &unk_284954AD8;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
  v127[3] = v60;
  v126[4] = @"4";
  v4 = *MEMORY[0x277CD3288];
  v116[0] = qword_27DE37BA8;
  v116[1] = qword_27DE37BB0;
  v117[0] = v4;
  v117[1] = &unk_284954AF0;
  v116[2] = qword_27DE37BB8;
  v117[2] = &unk_284906E70;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];
  v127[4] = v59;
  v126[5] = @"5";
  v5 = *MEMORY[0x277CD31F8];
  v114[0] = qword_27DE37BA8;
  v114[1] = qword_27DE37BB0;
  v115[0] = v5;
  v115[1] = &unk_284954B08;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v127[5] = v58;
  v126[6] = @"6";
  v6 = *MEMORY[0x277CD31F0];
  v112[0] = qword_27DE37BA8;
  v112[1] = qword_27DE37BB0;
  v113[0] = v6;
  v113[1] = &unk_284954B20;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v127[6] = v57;
  v126[7] = @"7";
  v7 = *MEMORY[0x277CD32D0];
  v110[0] = qword_27DE37BA8;
  v110[1] = qword_27DE37BB0;
  v111[0] = v7;
  v111[1] = &unk_284954B38;
  v110[2] = qword_27DE37BB8;
  v111[2] = &unk_284906E50;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];
  v127[7] = v56;
  v126[8] = @"8";
  v8 = *MEMORY[0x277CD32B0];
  v108[0] = qword_27DE37BA8;
  v108[1] = qword_27DE37BB0;
  v109[0] = v8;
  v109[1] = &unk_284954B50;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v127[8] = v55;
  v126[9] = @"9";
  v9 = *MEMORY[0x277CD32C8];
  v106[0] = qword_27DE37BA8;
  v106[1] = qword_27DE37BB0;
  v107[0] = v9;
  v107[1] = &unk_284954B68;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v127[9] = v54;
  v126[10] = @"10";
  v10 = *MEMORY[0x277CD32A0];
  v104[0] = qword_27DE37BA8;
  v104[1] = qword_27DE37BB0;
  v105[0] = v10;
  v105[1] = &unk_284954B80;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v127[10] = v53;
  v126[11] = @"11";
  v11 = *MEMORY[0x277CD3208];
  v102[0] = qword_27DE37BA8;
  v102[1] = qword_27DE37BB0;
  v103[0] = v11;
  v103[1] = &unk_284954B98;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v127[11] = v52;
  v126[12] = @"12";
  v12 = *MEMORY[0x277CD32C0];
  v100[0] = qword_27DE37BA8;
  v100[1] = qword_27DE37BB0;
  v101[0] = v12;
  v101[1] = &unk_284954BB0;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v127[12] = v51;
  v126[13] = @"13";
  v13 = *MEMORY[0x277CD32B8];
  v98[0] = qword_27DE37BA8;
  v98[1] = qword_27DE37BB0;
  v99[0] = v13;
  v99[1] = &unk_284954BC8;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
  v127[13] = v50;
  v126[14] = @"14";
  v14 = *MEMORY[0x277CD32E0];
  v96[0] = qword_27DE37BA8;
  v96[1] = qword_27DE37BB0;
  v97[0] = v14;
  v97[1] = &unk_284954BE0;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
  v127[14] = v49;
  v126[15] = @"15";
  v15 = *MEMORY[0x277CD32D8];
  v94[0] = qword_27DE37BA8;
  v94[1] = qword_27DE37BB0;
  v95[0] = v15;
  v95[1] = &unk_284954BF8;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v127[15] = v48;
  v126[16] = @"16";
  v16 = *MEMORY[0x277CD3270];
  v92[0] = qword_27DE37BA8;
  v92[1] = qword_27DE37BB0;
  v93[0] = v16;
  v93[1] = &unk_284954C10;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v127[16] = v47;
  v126[17] = @"17";
  v17 = *MEMORY[0x277CD3268];
  v90[0] = qword_27DE37BA8;
  v90[1] = qword_27DE37BB0;
  v91[0] = v17;
  v91[1] = &unk_284954C28;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v127[17] = v46;
  v126[18] = @"18";
  v18 = *MEMORY[0x277CD3298];
  v88[0] = qword_27DE37BA8;
  v88[1] = qword_27DE37BB0;
  v89[0] = v18;
  v89[1] = &unk_284954C40;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v127[18] = v45;
  v126[19] = @"19";
  v19 = *MEMORY[0x277CD3240];
  v86[0] = qword_27DE37BA8;
  v86[1] = qword_27DE37BB0;
  v87[0] = v19;
  v87[1] = &unk_284954C58;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v127[19] = v44;
  v126[20] = @"20";
  v20 = *MEMORY[0x277CD3238];
  v84[0] = qword_27DE37BA8;
  v84[1] = qword_27DE37BB0;
  v85[0] = v20;
  v85[1] = &unk_284954C70;
  v84[2] = qword_27DE37BB8;
  v85[2] = &unk_284906E70;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v127[20] = v43;
  v126[21] = @"21";
  v21 = *MEMORY[0x277CD3250];
  v82[0] = qword_27DE37BA8;
  v82[1] = qword_27DE37BB0;
  v83[0] = v21;
  v83[1] = &unk_284954C88;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v127[21] = v42;
  v126[22] = @"22";
  v22 = *MEMORY[0x277CD3248];
  v80[0] = qword_27DE37BA8;
  v80[1] = qword_27DE37BB0;
  v81[0] = v22;
  v81[1] = &unk_284954CA0;
  v80[2] = qword_27DE37BB8;
  v81[2] = &unk_284906E70;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v127[22] = v41;
  v126[23] = @"23";
  v23 = *MEMORY[0x277CD3220];
  v78[0] = qword_27DE37BA8;
  v78[1] = qword_27DE37BB0;
  v79[0] = v23;
  v79[1] = &unk_284954CB8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v127[23] = v24;
  v126[24] = @"24";
  v25 = *MEMORY[0x277CD3218];
  v76[0] = qword_27DE37BA8;
  v76[1] = qword_27DE37BB0;
  v77[0] = v25;
  v77[1] = &unk_284954CD0;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v127[24] = v26;
  v126[25] = @"25";
  v27 = *MEMORY[0x277CD3230];
  v74[0] = qword_27DE37BA8;
  v74[1] = qword_27DE37BB0;
  v75[0] = v27;
  v75[1] = &unk_284954CE8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v127[25] = v28;
  v126[26] = @"26";
  v29 = *MEMORY[0x277CD3228];
  v72[0] = qword_27DE37BA8;
  v72[1] = qword_27DE37BB0;
  v73[0] = v29;
  v73[1] = &unk_284954D00;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v127[26] = v30;
  v126[27] = @"27";
  v31 = *MEMORY[0x277CD32A8];
  v70[0] = qword_27DE37BA8;
  v70[1] = qword_27DE37BB0;
  v71[0] = v31;
  v71[1] = &unk_284954D18;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v127[27] = v32;
  v126[28] = @"28";
  v33 = *MEMORY[0x277CD3200];
  v68[0] = qword_27DE37BA8;
  v68[1] = qword_27DE37BB0;
  v69[0] = v33;
  v69[1] = &unk_284954D30;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v127[28] = v34;
  v126[29] = @"29";
  v35 = *MEMORY[0x277CD3210];
  v66[0] = qword_27DE37BA8;
  v66[1] = qword_27DE37BB0;
  v67[0] = v35;
  v67[1] = &unk_284954D48;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v127[29] = v36;
  v126[30] = @"30";
  v37 = *MEMORY[0x277CD3260];
  v64[0] = qword_27DE37BA8;
  v64[1] = qword_27DE37BB0;
  v65[0] = v37;
  v65[1] = &unk_284954D60;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v127[30] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:31];

  return v39;
}

id sub_233779AB4(uint64_t a1, void *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:@"val"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length] == 4)
    {
      v5 = [v4 bytes];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v5];
      v12[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[1]];
      v12[1] = v7;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[2]];
      v12[2] = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[3]];
      v12[3] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

      [v3 setObject:v10 forKeyedSubscript:@"parsedVal"];
    }
  }

  return v3;
}

void sub_233779C48(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_233779CC0(uint64_t a1, void *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:@"val"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length] == 4)
    {
      v5 = [v4 bytes];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v5];
      v12[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[1]];
      v12[1] = v7;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[2]];
      v12[2] = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[3]];
      v12[3] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

      [v3 setObject:v10 forKeyedSubscript:@"parsedVal"];
    }
  }

  return v3;
}

void sub_233779E54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_233779ECC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:@"val"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 doubleValue];
    v7 = v6;

    v8 = [v4 objectAtIndexedSubscript:1];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v4 objectAtIndexedSubscript:2];
    [v11 doubleValue];
    v13 = v7 + v10 / 60.0 + v12 / 3600.0;

    v14 = 2000000000.0;
    if (v13 <= 2000000000.0)
    {
      v14 = v13;
    }

    if (v13 >= -2000000000.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = -2000000000.0;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = fmod(v15 * 60.0, 60.0);
    v18 = fmod(v15 * 3600.0, 60.0);
    v19 = [v16 stringWithFormat:@"%.2d:%.2d:%05.2f", v15, v17, v18];
    [v3 setObject:v19 forKeyedSubscript:@"parsedVal"];
  }

  return v3;
}

void sub_23377A08C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_23377A0D8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:@"val"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 doubleValue];
    v7 = v6;

    v8 = [v4 objectAtIndexedSubscript:1];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v4 objectAtIndexedSubscript:2];
    [v11 doubleValue];
    v13 = v7 + v10 / 60.0 + v12 / 3600.0;

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    [v3 setObject:v14 forKeyedSubscript:@"parsedVal"];
  }

  return v3;
}

void sub_23377A220(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_23377A270(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377A3D4;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495C790 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377A3D4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377A494(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v29 = *(a1 + 32);
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v28 objectForKeyedSubscript:@"type"];
  v4 = [v3 isEqualToValue:&unk_284956DB8];

  if (v4)
  {
    v5 = [v28 objectForKeyedSubscript:@"val"];
    sub_233755CB8([v5 length] >> 1);
    objc_claimAutoreleasedReturnValue();
    [v5 bytes];
    v35 = [v5 length];
    sub_233723C18(&v36, &v35);
    sub_233725138();
  }

  v6 = [v28 objectForKeyedSubscript:@"val"];
  v7 = [v6 objectAtIndexedSubscript:0];
  if ([v7 unsignedShortValue] <= 0x1F)
  {
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v8 unsignedShortValue] < 0x22;

    if (v9)
    {
      v10 = &unk_284954D78;
      goto LABEL_12;
    }
  }

  v11 = [v6 objectAtIndexedSubscript:0];
  if ([v11 unsignedShortValue] <= 0xF)
  {

    v10 = 0;
  }

  else
  {
    v12 = [v6 objectAtIndexedSubscript:0];
    v13 = [v12 unsignedShortValue] < 0x20;

    if (v13)
    {
      v10 = &unk_284954D90;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_12:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        *(v29 + 736) = 1;
        v18 = [v17 objectForKeyedSubscript:@"index"];
        v19 = [v18 unsignedIntValue];

        v20 = [v17 objectForKeyedSubscript:@"name"];
        v21 = [v17 objectForKeyedSubscript:@"size"];
        v22 = [v21 unsignedIntValue];

        if (v22 == 1)
        {
          v23 = [v6 objectAtIndexedSubscript:v19];
          [v30 setObject:v23 forKeyedSubscript:v20];
        }

        else
        {
          v24 = v22;
          v23 = sub_233755CB8(v22);
          if (v22)
          {
            do
            {
              v25 = [v6 objectAtIndexedSubscript:v19];
              [v23 addObject:v25];

              ++v19;
              --v24;
            }

            while (v24);
          }

          [v30 setObject:v23 forKeyedSubscript:v20];
        }
      }

      v14 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v14);
  }

  v26 = [v28 mutableCopy];
  [v26 setObject:v30 forKeyedSubscript:@"parsedVal"];

  return v26;
}

id sub_23377A9F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377AB5C;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495CF88 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377AB5C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377AC1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377AD80;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495CFB0 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377AD80(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377AE40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377AFA4;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495CFD8 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377AFA4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377B064(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377B1C8;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495D000 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377B1C8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377B288(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377B3EC;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495D028 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377B3EC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377B4AC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377B610;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495D050 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377B610(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

id sub_23377B6D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"val"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23377B834;
  v12 = &unk_2789EECB0;
  v5 = v3;
  v13 = v5;
  v6 = v4;
  v14 = v6;
  [&unk_28495D078 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [v2 mutableCopy];
  [v7 setObject:v6 forKeyedSubscript:@"parsedVal"];

  return v7;
}

void sub_23377B834(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 unsignedIntegerValue];
  if ([*(a1 + 32) count] > v6)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_23377B8F8(uint64_t a1)
{
  sub_23377B938(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23377B938(uint64_t a1)
{
  *a1 = &unk_284906B70;

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  return sub_233755950(a1);
}

void *sub_23377BA5C(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906FD8;
  sub_23376AB6C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_23377BAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23377BB60(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_233757640(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_23377BCC0(void *a1, void *a2, unint64_t *a3, int *a4, _OWORD *a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907028;
  sub_23377BDC4((a1 + 3), a2, *a3, a4, a5, *a6, 16);
}

void sub_23377BD48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23377BDC4(uint64_t a1, void *a2, unint64_t a3, int *a4, _OWORD *a5, void *a6, int a7)
{
  v13 = a6;
  sub_2337AD9D8(a1, a2, a3, a4, a5);
  *a1 = &unk_2849379D0;
  *(a1 + 188) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = v13;
  *(a1 + 256) = 0;
  sub_23384F87C();
}

void sub_23377C0D8(_Unwind_Exception *a1)
{
  v5 = *(v2 + 272);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  sub_233723A54(v2);
  _Unwind_Resume(a1);
}

id sub_23377C168()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC28];
  v19[1] = @"com.fuji.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".raf.";
  v19[3] = &unk_2849574D8;
  v19[4] = &unk_2849574F0;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2338F982C, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23377C460];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23377C46C];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23377C478];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23377C484];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_23377C490(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_23377FED4();
}

double sub_23377C52C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284907098;
  *(v5 + 1380) = 0;
  *(v5 + 1384) = 0;
  *(v5 + 1392) = 0;
  *(v5 + 1604) = 0;
  *(v5 + 1608) = 0;
  *(v5 + 1612) = 0;
  *(v5 + 1616) = 0;
  *(v5 + 1620) = 0;
  *(v5 + 1624) = 0;
  *(v5 + 1628) = 0;
  *(v5 + 1632) = 0;
  *(v5 + 1640) = 0;
  *(v5 + 1180) = 0;
  *(v5 + 1184) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1216) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1248) = 0u;
  *(v5 + 1264) = 0u;
  *(v5 + 1280) = 0u;
  *(v5 + 1296) = 0u;
  *(v5 + 1312) = 0u;
  *(v5 + 1328) = 0u;
  *(v5 + 1344) = 0u;
  *(v5 + 1357) = 0u;
  *(v5 + 1400) = 0u;
  *(v5 + 1416) = 0u;
  *(v5 + 1440) = 0;
  *(v5 + 1448) = 0;
  *(v5 + 1456) = 0u;
  *(v5 + 1472) = 0u;
  *(v5 + 1488) = 0u;
  *(v5 + 1504) = 0u;
  *(v5 + 1520) = 0u;
  *(v5 + 1536) = 0u;
  *(v5 + 1552) = 0u;
  *(v5 + 1568) = 0u;
  *(v5 + 1584) = 0u;
  *(v5 + 1600) = 0;
  result = NAN;
  *(v5 + 1432) = -1;
  return result;
}

void sub_23377C60C(_DWORD *a1)
{
  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 100;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v2 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  v23 = v2;
  sub_2337338AC(a1, &v20);
  v3 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v4 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 128;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v5 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  v22 = v5;
  sub_2337338AC(a1, &v20);
  v6 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v7 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (v4 == 2 || v7 == 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 == 3 || v7 == 3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 92;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v8 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    sub_23377CE08(a1, v8);
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 84;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  a1[337] = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  a1[338] = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v17);
  v19 = a1[337] + 12;
  sub_233723AE0(&v15, &v19);
  sub_233754E8C(&v20, &v17, &v15);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  sub_23374B9D8(a1);
  sub_233754F18(&v20);
  if (v23)
  {
    sub_2337338AC(a1, &v17);
    sub_233723AE0(&v15, &v23);
    sub_233754E8C(&v20, &v17, &v15);
    if (v18)
    {
      sub_2337239E8(v18);
    }

    sub_2337338AC(a1, &v15);
    v19 = 0;
    sub_233725F08(&v17, &v15, &v19, 0);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v9 = sub_2337255C0(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v10 = sub_2337255C0(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v9 == 18761 && v10 == 10752 || v9 == 19789 && v10 == 42)
    {
      sub_23374B9D8(a1);
    }

    else
    {
      *(a1 + 175) = v23;
      *(a1 + 177) = v3;
    }

    sub_233725FD4(&v17);
    sub_233754F18(&v20);
  }

  ++a1[336];
  if (v22)
  {
    sub_2337338AC(a1, &v20);
    if ((**v20)(v20))
    {
      v11 = 1;
    }

    else
    {
      sub_2337338AC(a1, &v17);
      if ((**v17)(v17))
      {
        v11 = 0;
      }

      else
      {
        v12 = v22;
        sub_2337338AC(a1, &v15);
        v11 = v12 + v6 < (*(*v15 + 16))(v15);
        if (v16)
        {
          sub_2337239E8(v16);
        }
      }

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }

    if (v21)
    {
      sub_2337239E8(v21);
    }

    if (v11)
    {
      sub_2337338AC(a1, &v17);
      sub_233723AE0(&v15, &v22);
      sub_233754E8C(&v20, &v17, &v15);
      if (v18)
      {
        sub_2337239E8(v18);
      }

      sub_2337338AC(a1, &v15);
      v19 = 0;
      sub_233725F08(&v17, &v15, &v19, 0);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      sub_2337338AC(a1, &v15);
      v13 = sub_2337255C0(v15);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      sub_2337338AC(a1, &v15);
      v14 = sub_2337255C0(v15);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      if (v13 == 18761 && v14 == 10752 || v13 == 19789 && v14 == 42)
      {
        sub_23374B9D8(a1);
      }

      else
      {
        *(a1 + 176) = v22;
        *(a1 + 178) = v6;
      }

      sub_233725FD4(&v17);
      sub_233754F18(&v20);
    }
  }
}

void sub_23377CCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, char a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377CE08(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = a2;
  sub_2337338AC(a1, &__p);
  v3 = __p;
  sub_2337268D8(&__src, &v35);
  (*(*v3 + 40))(v3, &__src, 0);
  if (v32)
  {
    sub_2337239E8(v32);
  }

  sub_2337338AC(a1, &__p);
  LODWORD(__src) = sub_233725614(__p);
  sub_233726998(&v34, &__src);
  if (v32)
  {
    sub_2337239E8(v32);
  }

  sub_2337338AC(a1, &__p);
  v4 = (*(*__p + 48))(__p);
  LODWORD(v27) = 4;
  LODWORD(__src) = v34;
  LODWORD(v29) = *sub_23378007C(&__src, &v27);
  LODWORD(__src) = v4;
  v5 = *sub_233723874(&__src, &v29);
  sub_2337338AC(a1, &__src);
  v6 = (*(*__src + 16))(__src);
  v8 = v5 < 0 || v6 >= v5;
  if (v39)
  {
    sub_2337239E8(v39);
  }

  if (v32)
  {
    sub_2337239E8(v32);
  }

  if (v34 - 1 < 0xC8 && v8)
  {
    for (i = 0; i < v34; ++i)
    {
      sub_2337338AC(a1, &__p);
      v11 = sub_2337255C0(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      sub_2337338AC(a1, &__p);
      v12 = sub_2337255C0(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      sub_2337338AC(a1, &__p);
      v13 = (*(*__p + 48))(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      if (v11 <= 288)
      {
        if (v11 != 256)
        {
          if (v11 == 272)
          {
            if (v12 == 4)
            {
              sub_2337338AC(a1, &__p);
              v19 = sub_2337255C0(__p);
              if (v32)
              {
                sub_2337239E8(v32);
              }

              sub_2337338AC(a1, &__p);
              v20 = sub_2337255C0(__p);
              if (v32)
              {
                sub_2337239E8(v32);
              }

              if ((*(a1 + 1380) & 1) == 0)
              {
                *(a1 + 1380) = 1;
              }

              *(a1 + 1372) = v20 | (v19 << 32);
            }
          }

          else if (v11 == 273 && v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            v14 = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            v15 = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            if ((*(a1 + 1392) & 1) == 0)
            {
              *(a1 + 1392) = 1;
            }

            *(a1 + 1384) = v15 | (v14 << 32);
          }

          goto LABEL_79;
        }

        if (v12 == 4)
        {
          sub_2337338AC(a1, &__p);
          *(a1 + 1360) = sub_2337255C0(__p);
          if (v32)
          {
            sub_2337239E8(v32);
          }

          sub_2337338AC(a1, &__p);
          *(a1 + 1356) = sub_2337255C0(__p);
          goto LABEL_59;
        }
      }

      else
      {
        if (v11 > 12271)
        {
          if (v11 == 12272)
          {
            sub_23372A488(&__p, "RAF:WB_GRGBLevels");
            sub_2337338AC(a1, &v29);
            LODWORD(__src) = sub_2337255C0(v29);
            sub_2337338AC(a1, &v27);
            HIDWORD(__src) = sub_2337255C0(v27);
            sub_2337338AC(a1, &v25);
            LODWORD(v39) = sub_2337255C0(v25);
            sub_2337338AC(a1, &v23);
            HIDWORD(v39) = sub_2337255C0(v23);
            p_p = &__p;
            v18 = sub_2337577E4((a1 + 120), &__p, &unk_233905F1C, &p_p, &v36);
            sub_23375538C(v18 + 7, &__src, &v40, 4uLL);
            if (v24)
            {
              sub_2337239E8(v24);
            }

            if (v26)
            {
              sub_2337239E8(v26);
            }

            if (v28)
            {
              sub_2337239E8(v28);
            }

            if (v30)
            {
              sub_2337239E8(v30);
            }

            if (v33 < 0)
            {
              operator delete(__p);
            }
          }

          else if (v11 == 38480 && v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            v16 = sub_2337256DC(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            v17 = sub_2337256DC(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            *(a1 + 1632) = v16 / v17;
            *(a1 + 1640) = 1;
          }

          goto LABEL_79;
        }

        if (v11 == 289)
        {
          if (v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            *(a1 + 1368) = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            *(a1 + 1364) = sub_2337255C0(__p);
            goto LABEL_59;
          }
        }

        else if (v11 == 304 && v12 == 4)
        {
          sub_2337338AC(a1, &__p);
          *(a1 + 1396) = sub_233725614(__p);
LABEL_59:
          if (v32)
          {
            sub_2337239E8(v32);
          }
        }
      }

LABEL_79:
      sub_2337338AC(a1, &__p);
      v21 = v12;
      v22 = __p;
      __src = v13 + v21;
      sub_2337268D8(&v29, &__src);
      (*(*v22 + 40))(v22, &v29, 0);
      if (v32)
      {
        sub_2337239E8(v32);
      }
    }
  }
}

void sub_23377D434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 96);
  if (v24)
  {
    sub_2337239E8(v24);
  }

  if (a18)
  {
    sub_2337239E8(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23377D5F4(_BYTE *a1)
{
  if (a1[1380] == 1 && (a1[1392] & 1) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x800000008;
  }

  (*(*a1 + 800))(a1);
  return v1;
}

uint64_t sub_23377D690(uint64_t a1)
{
  if (*(a1 + 1380) == 1 && *(a1 + 1392) == 1)
  {
    return *(a1 + 1372);
  }

  (*(*a1 + 800))(a1);
  return 0;
}

void sub_23377D728(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  if (a2[1] == *a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**a2 + 16);
  }

  sub_233723AE0(&v6, (a1 + 1348));
  v5 = *(a1 + 1352);
  sub_23373401C(a1, &v6, &v5, v4, &v7);
  if (v7)
  {
    sub_233753C74(a2, &v7);
  }

  if (*(&v7 + 1))
  {
    sub_2337239E8(*(&v7 + 1));
  }
}

void sub_23377D7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_23377D7F8(uint64_t a1)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_2337338AC(a1, &v9);
  v2 = v9;
  v7 = 8;
  sub_233726998(&v8, &v7);
  v3 = sub_2337257E8(v2, &v8, &__p);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if (SHIBYTE(v13) == 8)
    {
      p_p = &__p;
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (v12 != 8)
  {
    goto LABEL_10;
  }

  p_p = __p;
LABEL_9:
  if (*p_p != 0x4D4C4946494A5546)
  {
    goto LABEL_10;
  }

  sub_2337338AC(a1, &v9);
  sub_233725614(v9);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  (*(*a1 + 128))(a1, 1);
  sub_2337338AC(a1, &v9);
  v8 = (*(*v9 + 48))(v9);
  (*(*a1 + 160))(a1, &v8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v5 = 1;
LABEL_11:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_23377D98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377D9D0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v105 = *MEMORY[0x277D85DE8];
  if (*v3 == -4096)
  {
    if (v3[1] == 13)
    {
      sub_2337338AC(v1, &v99);
      LODWORD(__src) = *(v4 + 2);
      sub_233723AE0(&v96, &__src);
      sub_233725F08(v101, &v99, &v96, 0);
      if (v100)
      {
        sub_2337239E8(v100);
      }

      v76 = v4;
      v7 = sub_23374DF5C(v6, v5, &v99);
      if (v7)
      {
        v8 = 0;
        v80 = (v6 + 1344);
        v75 = v6 + 1416;
        v77 = v6 + 1442;
        v78 = v6 + 1180;
        v9 = v7;
        v79 = v5;
        while (2)
        {
          v10 = &v99 + 12 * v8 + 4;
          switch(*v10)
          {
            case 0xF001:
              if (v76[1] != 3)
              {
                goto LABEL_149;
              }

              goto LABEL_111;
            case 0xF002:
              if (*(v10 + 1) == 3)
              {
LABEL_111:
                LODWORD(__src) = 0;
                sub_233726998(&v96, &__src);
                v52 = sub_23374B704(&v99 + 12 * v8 + 4, &v96);
                v96 = v5;
                *(sub_2337575A8((v6 + 536), v5, &unk_233905F1C, &v96, &__src) + 14) = v52;
              }

              else
              {
LABEL_149:
                v68 = *(v10 + 2);
                v96 = v5;
                *(sub_2337575A8((v6 + 536), v5, &unk_233905F1C, &v96, &__src) + 14) = v68;
              }

              goto LABEL_178;
            case 0xF003:
              if (*(v10 + 1) != 4)
              {
                goto LABEL_178;
              }

              v96 = 0;
              v97 = 0;
              v98 = 0;
              if (sub_23375134C(v6, &v99 + 12 * v8 + 4, &v96))
              {
                __src = v5;
                v51 = (sub_2337577E4((v6 + 656), v5, &unk_233905F1C, &__src, &__p) + 7);
                if (v51 != &v96)
                {
                  sub_233723454(v51, v96, v97, (v97 - v96) >> 2);
                }
              }

              *(v6 + 1600) = *(v10 + 2);
              *(v6 + 1604) = 1;
              goto LABEL_176;
            case 0xF004:
              if (*(v10 + 1) == 4)
              {
                *(v6 + 1608) = *(v10 + 2);
                *(v6 + 1612) = 1;
              }

              goto LABEL_178;
            case 0xF005:
              if (*(v10 + 1) == 4)
              {
                *(v6 + 1616) = *(v10 + 2);
                *(v6 + 1620) = 1;
              }

              goto LABEL_178;
            case 0xF006:
              if (*(v10 + 1) == 4)
              {
                *(v6 + 1624) = *(v10 + 2);
                *(v6 + 1628) = 1;
              }

              goto LABEL_178;
            case 0xF007:
              if (*(v10 + 1) - 3 > 1)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &v96);
              LODWORD(__src) = sub_233725414(v96);
              if (v97)
              {
                sub_2337239E8(v97);
              }

              v96 = 0;
              v97 = 0;
              v98 = 0;
              if (!sub_23375134C(v6, &v99 + 12 * v8 + 4, &v96))
              {
                goto LABEL_176;
              }

              if (v96 == v97)
              {
                sub_2338F9990();
                goto LABEL_176;
              }

              if (!__src)
              {
                goto LABEL_175;
              }

              if ((__src & 0x80000000) != 0)
              {
                sub_2338F995C();
                goto LABEL_176;
              }

              if (((v97 - v96) & 0x3FFFFFFFCLL) == 0)
              {
                goto LABEL_175;
              }

              v53 = 0;
              v54 = ((v97 - v96) >> 2);
              while (1)
              {
                v55 = sub_233751844(&__src);
                v56 = *(v96 + v53);
                if (__CFADD__(v55, v56))
                {
                  break;
                }

                *(v96 + v53++) = v56 + v55;
                if (v54 == v53)
                {
                  goto LABEL_175;
                }
              }

              sub_2338F98D4();
LABEL_175:
              sub_2338F9908(v80, &v96, v6 + 1400);
LABEL_176:
              v66 = v96;
              if (v96)
              {
LABEL_177:
                v97 = v66;
                operator delete(v66);
              }

              goto LABEL_178;
            case 0xF008:
              if (*(v10 + 1) - 3 > 1)
              {
                goto LABEL_178;
              }

              v96 = 0;
              v97 = 0;
              v98 = 0;
              if (!sub_23375134C(v6, &v99 + 12 * v8 + 4, &v96))
              {
                goto LABEL_176;
              }

              v57 = v96;
              v58 = v97;
              if (v96 == v97)
              {
                v60 = *MEMORY[0x277D85DF8];
                v61 = "eFujiCD_RawDataBytes: Empty value vector\n";
                v62 = 41;
              }

              else
              {
                v59 = *v80;
                if (v59 < 2)
                {
                  v69 = 0;
                  v70 = 0;
                  *(v75 + 8 * v59) = 0;
                  v71 = (v58 - v57) >> 2;
                  v72 = 1;
                  while (1)
                  {
                    v73 = *&v57[4 * v70];
                    if (0xFFFFFFFFLL - v69 < v73)
                    {
                      break;
                    }

                    v69 += v73;
                    v70 = v72;
                    v74 = v71 > v72++;
                    *(v75 + 8 * v59) = v69;
                    if (!v74)
                    {
                      goto LABEL_176;
                    }
                  }

                  v60 = *MEMORY[0x277D85DF8];
                  v61 = "eFujiCD_RawDataBytes: Integer overflow in length calculation\n";
                  v62 = 61;
                }

                else
                {
                  v60 = *MEMORY[0x277D85DF8];
                  v61 = "eFujiCD_RawDataBytes: Array index out of bounds\n";
                  v62 = 48;
                }
              }

              fwrite(v61, v62, 1uLL, v60);
              goto LABEL_176;
            case 0xF009:
              if (*(v10 + 1) == 4 && *(v10 + 1) == 1)
              {
                *(v6 + 1432 + 4 * *v80) = *(v10 + 2);
              }

              goto LABEL_178;
            case 0xF00A:
              v63 = *(v10 + 1);
              if (*(v10 + 1) != 4 || (v63 & 0xFFFFFFDF) != 4)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &__src);
              sub_23374AEDC(&v99 + 12 * v8 + 4, &__src, &v96);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              if (v63 == 36 && v96 + 32 != v97)
              {
                v97 = v96 + 32;
              }

              __src = v5;
              v65 = sub_233757B14((v6 + 264), v5, &unk_233905F1C, &__src, &__p) + 7;
              if (v65 != &v96)
              {
                sub_23373176C(v65, v96, v97, (v97 - v96) >> 3);
              }

              v66 = v96;
              if (!v96)
              {
                goto LABEL_178;
              }

              goto LABEL_177;
            case 0xF00B:
              if (*(v10 + 1) != 10 || *(v10 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &__src);
              LODWORD(v92) = sub_233749410(&v99 + 12 * v8 + 4);
              sub_233726A8C(&__p, &v92);
              sub_233725F08(&v96, &__src, &__p, 0);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v22 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v23 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              if (v23 <= 0x10)
              {
                sub_233730758(&__src, 2 * v23);
                if (v23)
                {
                  v24 = 0;
                  do
                  {
                    sub_2337338AC(v6, &__p);
                    v25 = sub_233725614(__p);
                    if (v95)
                    {
                      sub_2337239E8(v95);
                    }

                    sub_2337338AC(v6, &__p);
                    v26 = sub_233725614(__p);
                    if (v95)
                    {
                      sub_2337239E8(v95);
                    }

                    *(&__src->__vftable + v24) = v25 / v26;
                    v24 += 8;
                  }

                  while (16 * v23 != v24);
                }

                *(v78 + *v80) = 0;
                sub_233730758(&__p, v23);
                sub_233730758(&v92, v23);
                if (v23)
                {
                  v27 = 0;
                  v28 = __src;
                  v29 = v92;
                  v30 = __p;
                  do
                  {
                    *&v29[v27] = v28->__vftable;
                    v31 = *(&v28->__vftable + v23);
                    v28 = (v28 + 8);
                    *&v30[v27] = v31;
                    v27 += 8;
                  }

                  while (8 * v23 != v27);
                }

                *(v6 + 1184 + 4 * *v80) = v22;
                v32 = *v80;
                v33 = (v6 + 1192 + 24 * *v80);
                v5 = v79;
                if (v33 != &v92)
                {
                  sub_23373176C(v33, v92, v93, (v93 - v92) >> 3);
                  v32 = *v80;
                }

                v34 = (v6 + 1240 + 24 * v32);
                v35 = __p;
                if (v34 != &__p)
                {
                  sub_23373176C(v34, __p, v95, (v95 - __p) >> 3);
                  v35 = __p;
                }

                v89 = 0;
                v90 = 0;
                v91 = 0;
                sub_2337236E0(&v89, v35, v95, (v95 - v35) >> 3);
                *(v78 + *v80) = (*(*v6 + 864))(v6, &v89);
                if (v89)
                {
                  v90 = v89;
                  operator delete(v89);
                }

                if (v92)
                {
                  v93 = v92;
                  operator delete(v92);
                }

                if (__p)
                {
                  v95 = __p;
                  operator delete(__p);
                }

                if (__src)
                {
                  v103 = __src;
                  operator delete(__src);
                }
              }

              goto LABEL_162;
            case 0xF00E:
              if (*(v10 + 1) != 4 || *(v10 + 1) != 3)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &__src);
              sub_23374B2FC(&v99 + 12 * v8 + 4, &__src, &v96);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              LODWORD(__src) = *(v96 + 1);
              HIDWORD(__src) = *v96;
              LODWORD(v103) = HIDWORD(__src);
              HIDWORD(v103) = *(v96 + 2);
              __p = v5;
              v50 = sub_2337577E4((v6 + 120), v5, &unk_233905F1C, &__p, &v92);
              sub_23375538C(v50 + 7, &__src, v104, 4uLL);
              goto LABEL_176;
            case 0xF00F:
              if (*(v10 + 1) != 10 || *(v10 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &__src);
              LODWORD(v92) = sub_233749410(&v99 + 12 * v8 + 4);
              sub_233726A8C(&__p, &v92);
              sub_233725F08(&v96, &__src, &__p, 0);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v36 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v37 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              if (v37 <= 0x10)
              {
                sub_233730758(&__src, 3 * v37);
                if (v37)
                {
                  v38 = 0;
                  do
                  {
                    sub_2337338AC(v6, &__p);
                    v39 = sub_233725614(__p);
                    if (v95)
                    {
                      sub_2337239E8(v95);
                    }

                    sub_2337338AC(v6, &__p);
                    v40 = sub_233725614(__p);
                    if (v95)
                    {
                      sub_2337239E8(v95);
                    }

                    *(&__src->__vftable + v38) = v39 / v40;
                    v38 += 8;
                  }

                  while (24 * v37 != v38);
                }

                *(v77 + *v80) = 0;
                sub_233730758(&__p, v37);
                sub_233730758(&v92, v37);
                sub_233730758(&v87, v37);
                if (v37)
                {
                  v41 = 0;
                  v42 = __src;
                  v43 = __p;
                  v44 = v92;
                  v45 = v87;
                  do
                  {
                    *&v43[v41] = v42->__vftable;
                    *&v44[v41] = *(&v42->__vftable + v37);
                    *&v45[v41] = *(&v42->__vftable + 2 * v37);
                    v42 = (v42 + 8);
                    v41 += 8;
                  }

                  while (8 * v37 != v41);
                }

                v46 = *v80;
                *(v6 + 1444 + 4 * v46) = v36;
                v47 = (v6 + 1456 + 24 * v46);
                v5 = v79;
                if (v47 != &__p)
                {
                  sub_23373176C(v47, __p, v95, (v95 - __p) >> 3);
                  LODWORD(v46) = *v80;
                }

                v48 = (v6 + 1504 + 24 * v46);
                if (v48 != &v92)
                {
                  sub_23373176C(v48, v92, v93, (v93 - v92) >> 3);
                  LODWORD(v46) = *v80;
                }

                v49 = (v6 + 1552 + 24 * v46);
                if (v49 != &v87)
                {
                  sub_23373176C(v49, v87, v88, (v88 - v87) >> 3);
                }

                v84 = 0;
                v85 = 0;
                v86 = 0;
                sub_2337236E0(&v84, v92, v93, (v93 - v92) >> 3);
                if ((*(*v6 + 864))(v6, &v84))
                {
                  *(v77 + *v80) = 1;
                }

                else
                {
                  v81 = 0;
                  v82 = 0;
                  v83 = 0;
                  sub_2337236E0(&v81, v87, v88, (v88 - v87) >> 3);
                  *(v77 + *v80) = (*(*v6 + 864))(v6, &v81);
                  if (v81)
                  {
                    v82 = v81;
                    operator delete(v81);
                  }
                }

                if (v84)
                {
                  v85 = v84;
                  operator delete(v84);
                }

                if (v87)
                {
                  v88 = v87;
                  operator delete(v87);
                }

                if (v92)
                {
                  v93 = v92;
                  operator delete(v92);
                }

                if (__p)
                {
                  v95 = __p;
                  operator delete(__p);
                }

                if (__src)
                {
                  v103 = __src;
                  operator delete(__src);
                }
              }

LABEL_162:
              sub_233725FD4(&v96);
              goto LABEL_178;
            case 0xF010:
              if (*(v10 + 1) != 10 || *(v10 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v6, &__src);
              LODWORD(v92) = sub_233749410(&v99 + 12 * v8 + 4);
              sub_233726A8C(&__p, &v92);
              sub_233725F08(&v96, &__src, &__p, 0);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v11 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              sub_2337338AC(v6, &__src);
              v12 = sub_233725614(__src);
              if (v103)
              {
                sub_2337239E8(v103);
              }

              if (v12 > 0x10)
              {
                goto LABEL_34;
              }

              sub_233730758(&__src, 2 * v12);
              if (v12)
              {
                v13 = 0;
                do
                {
                  sub_2337338AC(v6, &__p);
                  v14 = sub_233725614(__p);
                  if (v95)
                  {
                    sub_2337239E8(v95);
                  }

                  sub_2337338AC(v6, &__p);
                  v15 = sub_233725614(__p);
                  if (v95)
                  {
                    sub_2337239E8(v95);
                  }

                  *(&__src->__vftable + v13) = v14 / v15;
                  v13 += 8;
                }

                while (16 * v12 != v13);
              }

              sub_23377FB8C(&__p, v12);
              v16 = __p;
              if (v12)
              {
                v17 = 0;
                v18 = __src;
                v19 = __p + 8;
                do
                {
                  v20 = *(&v18->__vftable + v12);
                  *(v19 - 1) = v18->__vftable;
                  *v19 = v20;
                  v18 = (v18 + 8);
                  v17 += 8;
                  v19 += 2;
                }

                while (8 * v12 != v17);
              }

              *(v6 + 1288 + 4 * *v80) = v11;
              v21 = (v6 + 1296 + 24 * *v80);
              if (v21 != &__p)
              {
                sub_23377FC88(v21, v16, v95, (v95 - v16) >> 4);
                v16 = __p;
                if (!__p)
                {
                  goto LABEL_32;
                }

LABEL_31:
                v95 = v16;
                operator delete(v16);
                goto LABEL_32;
              }

              if (v16)
              {
                goto LABEL_31;
              }

LABEL_32:
              if (__src)
              {
                v103 = __src;
                operator delete(__src);
              }

LABEL_34:
              sub_233725FD4(&v96);
              v5 = v79;
LABEL_178:
              if (++v8 == v9)
              {
                break;
              }

              continue;
            default:
              goto LABEL_178;
          }

          break;
        }
      }

      sub_233725FD4(v101);
    }
  }

  else
  {

    sub_23374FA0C(v1, v2, v3);
  }
}

void sub_23377E96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  v51 = *(v49 - 120);
  if (v51)
  {
    *(v49 - 112) = v51;
    operator delete(v51);
  }

  sub_233725FD4(&a45);
  sub_233725FD4((v49 - 144));
  _Unwind_Resume(a1);
}

void sub_23377EC48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "raf");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "fuji");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23377ECFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void *sub_23377ED70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = (*(*a1 + 824))(a1);
  if (result)
  {
    (*(*a1 + 464))(a1, 0);
    sub_233780104();
  }

  *a2 = 0uLL;
  return result;
}

void *sub_23377EE44@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = (*(*a1 + 824))(a1);
  if (result)
  {
    (*(*a1 + 464))(a1, 0);
    sub_233780454();
  }

  *a2 = 0uLL;
  return result;
}

BOOL sub_23377EF28(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v3 = *a2 + 8;
  do
  {
    v4 = fabs(*(v3 - 8));
    result = v4 > 0.0001;
    v6 = v4 > 0.0001 || v3 == v2;
    v3 += 8;
  }

  while (!v6);
  return result;
}

float sub_23377EF68@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1464);
  v3 = *(a1 + 1456);
  v4 = v2 - v3;
  *a2 = *(a1 + 1442);
  v5 = *(a1 + 1444);
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  if (v4 > 0x10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = 0uLL;
  *(a2 + 60) = 0u;
  v7 = (a2 + 76);
  v8 = (a2 + 140);
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = 0u;
  v9 = 16;
  do
  {
    *(v8 - 4) = 0uLL;
    *v8++ = 0uLL;
    v9 -= 4;
  }

  while (v9);
  if (v2 != v3)
  {
    v10 = *(a1 + 1504);
    v11 = *(a1 + 1552);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v12 = *v10++;
      v13 = v12;
      *v7 = v13;
      v14 = *v11++;
      v15 = v14;
      v7[16] = v15;
      v16 = *v3++;
      *&v6 = v16;
      *(v7++ - 16) = v6;
      --v4;
    }

    while (v4);
  }

  return *&v6;
}

float sub_23377F058@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1200);
  v3 = *(a1 + 1192);
  v4 = v2 - v3;
  *a2 = *(a1 + 1180);
  *(a2 + 4) = *(a1 + 1184);
  *(a2 + 8) = v4;
  if (v4 > 0x10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  result = 0.0;
  *(a2 + 76) = 0u;
  v6 = a2 + 76;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0u;
  *(v6 - 32) = 0u;
  *(v6 - 16) = 0u;
  *(v6 - 64) = 0u;
  *(v6 - 48) = 0u;
  if (v2 != v3)
  {
    v7 = *(a1 + 1240);
    v8 = (*(a1 + 1248) - v7) >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v9 = *v3;
      *(v6 - 64) = v9;
      if (!v8)
      {
        sub_2337306B0();
      }

      v10 = *v7++;
      result = v10;
      *v6 = result;
      v6 += 4;
      --v8;
      ++v3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_23377F138(unsigned int *a1)
{
  v2 = (*(*a1 + 784))(a1);
  v3 = a1[358];
  if (v2)
  {
    if (v3 >= 4)
    {
      return 0;
    }

    else
    {
      return dword_233904AA0[v3];
    }
  }

  else if (v3 <= 2)
  {
    if (v3 == 2)
    {
      v5 = 1229539657;
    }

    else
    {
      v5 = 0;
    }

    if (v3 == 1)
    {
      v6 = 1633771873;
    }

    else
    {
      v6 = v5;
    }

    if (v3)
    {
      return v6;
    }

    else
    {
      return 2492765332;
    }
  }

  else
  {
    switch(v3)
    {
      case 128:
        return 2172748160;
      case 129:
        return 2172748161;
      case 130:
        return 2172748162;
      case 131:
        return 2172748163;
      case 132:
        return 2172748164;
      case 133:
        v7 = 5;
        goto LABEL_36;
      case 134:
        return 2172748166;
      case 135:
        return 2172748167;
      case 136:
        return 2172748168;
      case 137:
        v7 = 9;
        goto LABEL_36;
      case 138:
        v7 = 10;
        goto LABEL_36;
      case 139:
        v7 = 11;
        goto LABEL_36;
      case 140:
        return 2172748172;
      case 141:
        v7 = 13;
        goto LABEL_36;
      case 142:
        return 2172748174;
      case 143:
        return 2172748175;
      case 144:
        return 2172748176;
      case 145:
        v7 = 17;
LABEL_36:
        result = v7 | 0x81818180;
        break;
      default:
        if (v3 == 3)
        {
          result = 370546198;
        }

        else
        {
          result = 0;
        }

        break;
    }
  }

  return result;
}

void sub_23377F31C(_DWORD *a1@<X0>, void *a4@<X8>)
{
  if ((*(*a1 + 784))(a1))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 1604) != 1 || ((v6 = a1[400], v6 <= 0x10) ? (v7 = ((1 << v6) & 0x15000) == 0) : (v7 = 1), v7))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 1612) != 1 || *(a1 + 1620) != 1 || (a1[407] & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a4 = 0;
  a4[1] = 0;
  v8 = a1[402];
  if (v6 == 12)
  {
    if (v8 == 4)
    {
      v9 = a1[406];
      if (v9 == 1)
      {
        (*(*a1 + 384))(&v10, a1);
        (*(*a1 + 424))(a1);
        sub_2337646DC();
      }

      if (!v9)
      {
        (*(*a1 + 384))(&v10, a1);
        (*(*a1 + 424))(a1);
        (*(*a1 + 784))(a1);
        sub_233780650();
      }

      return;
    }

    goto LABEL_18;
  }

  if (v8 != 4)
  {
LABEL_18:
    if (!v8 && !a1[406])
    {
      (*(*a1 + 384))(&v10, a1);
      (*(*a1 + 424))(a1);
      (*(*a1 + 784))(a1);
      sub_2337809F8();
    }

    return;
  }

  if (a1[406] == 1)
  {
    (*(*a1 + 384))(&v10, a1);
    (*(*a1 + 424))(a1);
    sub_233780838();
  }
}

void sub_23377F764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23377F7CC(uint64_t a1)
{
  if (*(a1 + 1604) == 1)
  {
    return *(a1 + 1600);
  }

  else
  {
    return sub_233733AFC();
  }
}

id sub_23377F7E4(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23374C650(a1);
  v3 = [v2 mutableCopy];

  v12 = &unk_284957508;
  v10[1] = @"Namespace";
  v11[0] = @"FujiIFD";
  v9[4] = a1;
  v10[0] = @"Name";
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23377F9B4;
  v9[3] = &unk_2789EEAE0;
  v4 = MEMORY[0x2383AC810](v9);
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v3 addEntriesFromDictionary:v6];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v7;
}

id sub_23377F9E4()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284957520;
  v2[1] = &unk_284957538;
  v3[0] = &unk_28495D0A0;
  v3[1] = &unk_28495D0C8;
  v2[2] = &unk_284957550;
  v2[3] = &unk_284957568;
  v3[2] = &unk_28495D0F0;
  v3[3] = &unk_28495D118;
  v2[4] = &unk_284957580;
  v2[5] = &unk_284957598;
  v3[4] = &unk_28495D140;
  v3[5] = &unk_28495D168;
  v2[6] = &unk_2849575B0;
  v2[7] = &unk_2849575C8;
  v3[6] = &unk_28495D190;
  v3[7] = &unk_28495D1B8;
  v2[8] = &unk_2849575E0;
  v2[9] = &unk_2849575F8;
  v3[8] = &unk_28495D1E0;
  v3[9] = &unk_28495D208;
  v2[10] = &unk_284957610;
  v2[11] = &unk_284957628;
  v3[10] = &unk_28495D230;
  v3[11] = &unk_28495D258;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:12];

  return v0;
}

void sub_23377FB4C(void *a1)
{
  sub_23377FDAC(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23377FB8C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_23377FC04(a1, a2);
  }

  return a1;
}

void sub_23377FBE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377FC04(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_23377FC40(a1, a2);
  }

  sub_2337235BC();
}

void sub_23377FC40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2337236AC();
}

char *sub_23377FC88(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_23377FC04(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_23377FDAC(void *a1)
{
  v2 = 0;
  *a1 = &unk_284907098;
  do
  {
    v3 = a1[v2 + 197];
    if (v3)
    {
      a1[v2 + 198] = v3;
      operator delete(v3);
    }

    v2 -= 3;
  }

  while (v2 != -6);
  for (i = 0; i != -6; i -= 3)
  {
    v5 = a1[i + 191];
    if (v5)
    {
      a1[i + 192] = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -6; j -= 3)
  {
    v7 = a1[j + 185];
    if (v7)
    {
      a1[j + 186] = v7;
      operator delete(v7);
    }
  }

  for (k = 0; k != -6; k -= 3)
  {
    v9 = a1[k + 165];
    if (v9)
    {
      a1[k + 166] = v9;
      operator delete(v9);
    }
  }

  for (m = 0; m != -6; m -= 3)
  {
    v11 = a1[m + 158];
    if (v11)
    {
      a1[m + 159] = v11;
      operator delete(v11);
    }
  }

  for (n = 0; n != -6; n -= 3)
  {
    v13 = a1[n + 152];
    if (v13)
    {
      a1[n + 153] = v13;
      operator delete(v13);
    }
  }

  return sub_2337557B4(a1);
}

void *sub_23377FF78(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907430;
  sub_23377C52C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233780000(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

unsigned int *sub_23378007C(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  if ((*a2 & 0x80000000) != 0)
  {
    v2 = -v2;
  }

  v3 = *result * v2;
  if ((*a2 & 0x80000000) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  v5 = (v3 & 0xFFFFFFFF00000000) != 0;
  if (v3)
  {
    v6 = (*a2 & 0x80000000) != 0;
  }

  else
  {
    v6 = 0;
  }

  *result = v4;
  if (v5 || v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337801A8(void *a1, void *a2, void *a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907480;
  sub_2337802A0((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_233780224(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337802A0(uint64_t a1, void *a2, void *a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a4;
  v12 = *a5;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_2337236E0(&v17, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337236E0(&__p, *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 3);
  sub_23378039C(a1, a2, a3, v11, v12, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return a1;
}

void sub_233780368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23378039C(uint64_t a1, void *a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_284937FE8;
  *(a1 + 8) = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2337236E0((a1 + 40), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2337236E0((a1 + 64), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 3);
  return a1;
}

void sub_233780438(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337804F8(void *a1, void *a2, void *a3, int *a4, int *a5, uint64_t a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907480;
  sub_233780554((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t sub_233780554(uint64_t a1, void *a2, void *a3, int *a4, int *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a4;
  v12 = *a5;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_2337236E0(&v17, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337236E0(&__p, *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 3);
  sub_23378039C(a1, a2, a3, v11, v12, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return a1;
}

void sub_23378061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233780704(void *a1, void *a2, unint64_t *a3, uint64_t *a4, void *a5, _OWORD *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849074D0;
  v7 = *a4;
  sub_2337AD9D8((a1 + 3), a2, *a3, a5, a6);
  a1[3] = &unk_28491FDD8;
  *(a1 + 212) = 0x100000000;
  a1[28] = v7;
  return a1;
}

void sub_2337807BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849074D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337808DC(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284907520;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284925B58;
  *(a1 + 211) = 0;
  return a1;
}

void sub_23378097C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233780AAC(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, void *a5, _OWORD *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849060F0;
  v7 = *a4;
  sub_2337AD9D8(a1 + 24, a2, *a3, a5, a6);
  *(a1 + 24) = &unk_28490B2B8;
  *(a1 + 212) = 16;
  *(a1 + 216) = v7;
  return a1;
}

id sub_233780B40()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.canon.tif-raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".tif.";
  v19[3] = &unk_284957640;
  v19[4] = &unk_284957658;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2338F99C4, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233780E38];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233780E44];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233780E50];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233780E5C];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_233780E68(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337814C8();
}

void sub_233780F04(uint64_t **a1, uint64_t **a2, unsigned __int16 *a3)
{
  sub_2338F9C58(a1, a2, a3);
  v5 = *a3;
  switch(v5)
  {
    case 160:
      if ((((*a1)[7])(a1) & 1) == 0)
      {
        sub_2337338AC(a1, &v30);
        v6 = sub_233749410(a3);
        v32 = 16;
        LODWORD(v28) = v6;
        v36 = *sub_233726AE8(&v28, &v32);
        sub_233723AE0(&v24, &v36);
        sub_233725F08(&__src, &v30, &v24, 0);
        if (v31)
        {
          sub_2337239E8(v31);
        }

        sub_2337338AC(a1, &v30);
        LODWORD(v24) = sub_2337255C0(v30);
        v28 = a2;
        v7 = sub_2337577E4(a1 + 21, a2, &unk_233905F1C, &v28, &v36);
        sub_23375538C(v7 + 7, &v24, &v24 + 4, 1uLL);
        if (v31)
        {
          sub_2337239E8(v31);
        }

        sub_233725FD4(&__src);
      }

      break;
    case 164:
      if ((((*a1)[7])(a1) & 1) == 0 && a3[1] == 3)
      {
        __src = 0;
        v34 = 0;
        v35 = 0;
        if (*(a3 + 1) >= 3u)
        {
          v8 = 0;
          do
          {
            sub_2337338AC(a1, &v28);
            v9 = sub_233749410(a3);
            v24 = 48;
            sub_233723C18(&v25, &v24);
            v36 = v8;
            v26 = *sub_233757DB0(&v36, &v25);
            v36 = v9;
            v27 = *sub_233753AB0(&v36, &v26);
            sub_233723AE0(&v32, &v27);
            sub_233725F08(&v30, &v28, &v32, 0);
            if (v29)
            {
              sub_2337239E8(v29);
            }

            v10 = 3;
            do
            {
              sub_2337338AC(a1, &v28);
              v11 = sub_2337255C0(v28);
              if (v29)
              {
                sub_2337239E8(v29);
              }

              v12 = v34;
              if (v34 >= v35)
              {
                v14 = __src;
                v15 = v34 - __src;
                v16 = (v34 - __src) >> 2;
                v17 = v16 + 1;
                if ((v16 + 1) >> 62)
                {
                  sub_2337235BC();
                }

                v18 = v35 - __src;
                if ((v35 - __src) >> 1 > v17)
                {
                  v17 = v18 >> 1;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v19 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v17;
                }

                if (v19)
                {
                  sub_2337235D4(&__src, v19);
                }

                *(4 * v16) = v11;
                v13 = (4 * v16 + 4);
                memcpy(0, v14, v15);
                v20 = __src;
                __src = 0;
                v34 = v13;
                v35 = 0;
                if (v20)
                {
                  operator delete(v20);
                }
              }

              else
              {
                *v34 = v11;
                v13 = v12 + 4;
              }

              v34 = v13;
              --v10;
            }

            while (v10);
            sub_233725FD4(&v30);
            v21 = 24 * v8++ + 27;
          }

          while (v21 <= *(a3 + 1));
        }

        v30 = a2;
        v22 = (sub_2337577E4(a1 + 15, a2, &unk_233905F1C, &v30, &v28) + 7);
        if (v22 != &__src)
        {
          sub_233723454(v22, __src, v34, (v34 - __src) >> 2);
        }

        sub_2338F884C(&__src);
      }

      break;
    case 129:
      sub_2338F9A38(a3, a1);
      break;
  }
}

void sub_233781354(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_233786818(a2);
  snprintf(__str, 0x10uLL, "%u", v3);
  sub_23372A488(__p, "tif");
  sub_233735478(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23378144C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_233781490(uint64_t a1)
{
  sub_23375BA54(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23378156C(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849078C8;
  sub_233785D40((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284907590;
  a1[160] = 0;
  return a1;
}

void sub_233781614(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849078C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233781748(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = [MEMORY[0x277CBF758] redImage];
  v5 = [v4 imageByCroppingToRect:{0.0, 0.0, 698.0, 282.0}];
  [v1 setCiImage:v5];

  __cxa_end_catch();
  JUMPOUT(0x233781718);
}

void sub_233781854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void *sub_2337819B4(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337819F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

uint64_t sub_233781BD8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, char a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284907918;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = *a3;
  *(a1 + 40) = a2;
  *(a1 + 48) = v7;
  *(a1 + 56) = *a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 113) = a5;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 168) = MEMORY[0x2383AC810](a6);
  return a1;
}

void sub_233781C78(_Unwind_Exception *a1)
{
  v4 = *(v1 + 160);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  sub_2338F9AD4((v1 + 144), v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_233781CA8(uint64_t a1)
{
  *a1 = &unk_284907918;
  v2 = (a1 + 24);
  if (*(a1 + 24) && *(a1 + 112) == 1)
  {
    v3 = sub_23384B990();
    sub_23384BEE4(v3, v2);
  }

  if (*(a1 + 112) == 1)
  {
    v4 = sub_23384B990();
    sub_23384C088(v4, a1);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_233781D90(uint64_t a1)
{
  sub_233781CA8(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233781DC8(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    v3 = CGImagePluginGetOptions();
    v4 = *(a1 + 136);
    *(a1 + 136) = v3;

    v2 = *(a1 + 136);
  }

  return v2;
}

void sub_233781E1C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (getenv("RAWCAMERA_IMAGEBLOCKSET_NOLOCK"))
  {
    operator new();
  }

  sub_23384F87C();
}

void sub_23378210C(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_end_catch();
  JUMPOUT(0x233781FF4);
}

void sub_23378214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337821A0(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v56[0] = a4;
  v56[1] = a5;
  v57[0] = a6;
  v57[1] = a7;
  v55[0] = a8;
  v55[1] = a9;
  v11 = a1[1];
  v13 = *v11;
  v12 = *(v11 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13 || ((v15 = a1[2], (v14 = a1[3]) != 0) ? (v16 = (a1[3] & 1 | v15) == 0) : (v16 = 1), !v16 ? (v17 = 0) : (v17 = 1), !v15 && (v17 & 1) != 0))
  {
    v21 = 0;
    if (!v12)
    {
      return v21;
    }

    goto LABEL_33;
  }

  v18 = v13[16];
  v44 = v13[15];
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233785314(v54, &v44);
  if (v45)
  {
    sub_2337239E8(v45);
  }

  v19 = a3;
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBF530]];
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v22 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBF540]];
    if (v22)
    {
      v21 = 0;
    }

    else
    {
      [0 BOOLValue];
      v23 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBF538]];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        [0 BOOLValue];
        v24 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBF510]];
        if (v24)
        {
          v21 = 0;
        }

        else
        {
          v32 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBF518]];
          if (v32 || ([v19 objectForKeyedSubscript:{*MEMORY[0x277CBF520], 0}], v25 = objc_claimAutoreleasedReturnValue(), v25, v25) || (objc_msgSend(v19, "objectForKeyedSubscript:", *MEMORY[0x277CBF528]), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            v21 = 0;
          }

          else
          {
            sub_233741018(&v53, v56);
            sub_233741018(&v53 + 2, v57);
            sub_233741018(&v52, v55);
            v44 = 0;
            v45 = &v44;
            v46 = 0x4012000000;
            v47 = sub_233785054;
            v48 = sub_233785064;
            v49 = "";
            v50 = 0;
            v51 = 0;
            (*(*v13 + 64))(&v42, v13);
            (*(*v42 + 120))(v42);
            (*(*v13 + 64))(&v40, v13);
            sub_233739B84(v40);
            v28 = sub_233785074();
            v29 = v28;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3321888768;
            block[2] = sub_233785204;
            block[3] = &unk_284907A30;
            block[4] = &v44;
            block[5] = v13;
            v34 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v35 = v15;
            v36 = v14;
            v37 = a2;
            v38 = v53;
            v39 = v52;
            dispatch_sync(v28, block);

            if (v41)
            {
              sub_2337239E8(v41);
            }

            if (v43)
            {
              sub_2337239E8(v43);
            }

            if (v34)
            {
              sub_2337239E8(v34);
            }

            v30 = v45[2].__vftable;
            if (!v30)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](exception, "RawCameraException");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v21 = sub_233857374(v30);
            _Block_object_dispose(&v44, 8);
            if (v51)
            {
              sub_2337239E8(v51);
            }
          }

          v24 = 0;
        }
      }
    }
  }

  sub_2337853E4(v54);
  if (v12)
  {
LABEL_33:
    sub_2337239E8(v12);
  }

  return v21;
}

void sub_2337825F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  _Block_object_dispose(&a28, 8);
  if (a35)
  {
    sub_2337239E8(a35);
  }

  sub_2337853E4((v37 - 160));
  if (v35)
  {
    sub_2337239E8(v35);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337823A0);
}

uint64_t sub_2337826D8(uint64_t result)
{
  v1 = result;
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        sub_2337239E8(v3);
      }

      MEMORY[0x2383ABF10](v2, 0x20C40A4A59CD2);
      *(v1 + 8) = 0;
    }

    v4 = *v1;
    *v1 = 0;

    return MEMORY[0x2383ABF10](v1, 0xA0C40069AE433);
  }

  return result;
}

uint64_t sub_233782764(uint64_t a1, void *a2, void *a3, void *a4, CGColorSpaceRef space)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ((*a2 - 0xFFFFFFFFLL) < 0xFFFFFFFF00000002 || !*(a1 + 40))
  {
    return 0;
  }

  if (space)
  {
    v8 = *MEMORY[0x277CD3400];
    v9[0] = CGColorSpaceGetName(space);
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    inited = CGImagePluginInitThumbJPEGAtOffsetWithOptions();

    return inited;
  }

  return MEMORY[0x282122AE8]();
}

void sub_2337828C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (*(a1 + 40))
  {
    CGImagePluginReadRawXMPProps();
  }
}

uint64_t sub_233782944(std::__shared_weak_count **a1)
{
  ((*a1)[5].__shared_weak_owners_)(v22);
  sub_233785424(v30, v22);
  if (*(&v22[0] + 1))
  {
    sub_2337239E8(*(&v22[0] + 1));
  }

  *(a1 + 112) = 0;
  ((*a1)[2].__shared_weak_owners_)(&v28, a1);
  if (!v28 || (*(a1 + 113) & 1) == 0 && ((*(*v28 + 40))() & 1) == 0)
  {
    goto LABEL_53;
  }

  v2 = a1[12];
  if (v2)
  {
    goto LABEL_7;
  }

  v6 = v28;
  v7 = ((*a1)[1].__vftable)(a1);
  (*(*v6 + 296))(v22, v6, v7);
  v8 = v22[0];
  v22[0] = 0uLL;
  v9 = a1[13];
  *(a1 + 6) = v8;
  if (v9)
  {
    sub_2337239E8(v9);
    if (*(&v22[0] + 1))
    {
      sub_2337239E8(*(&v22[0] + 1));
    }

    v2 = a1[12];
    if (!v2)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = v8;
    if (!v8)
    {
LABEL_53:
      v17 = 0;
      goto LABEL_54;
    }
  }

LABEL_7:
  v3 = __dynamic_cast(v2, &unk_284911100, &unk_284911168, 0);
  if (v3)
  {
    v4 = a1[13];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[12];
      if (!v2)
      {
        v5 = 0;
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = __dynamic_cast(v2, &unk_284911100, &unk_2849259A8, 0);
  if (v10)
  {
    v5 = a1[13];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[12];
      if (!v2)
      {
LABEL_25:
        if (v3)
        {
LABEL_37:
          v21[0] = (*(*v3 + 16))(v3);
          v27 = (*(*v3 + 24))(v3);
          v26 = ((*a1)[1].__vftable)(a1);
          v22[0] = 0uLL;
          v16 = (*(*v3 + 56))(v3, v22);
          v17 = ((*a1)[5].__vftable)(a1, v21, &v27, &v26, v16);
          if (*(&v22[0] + 1))
          {
            sub_2337239E8(*(&v22[0] + 1));
          }

          goto LABEL_46;
        }

LABEL_41:
        v18 = a1[12];
        ((*a1)[5].__shared_weak_owners_)(v22, a1);
        v19 = (v18->__vftable[1].__on_zero_shared)(v18, v22);
        if (!v19)
        {
          v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
        }

        if (*(&v22[0] + 1))
        {
          sub_2337239E8(*(&v22[0] + 1));
        }

        v25 = 0u;
        v24 = 0u;
        *&v22[0] = sub_2337DE858(a1[12]);
        *(&v22[0] + 1) = sub_2337DE858(a1[12]) >> 32;
        v22[1] = xmmword_233904B30;
        v23 = (3 * sub_2337DE858(a1[12]));
        LODWORD(v24) = 1380401696;
        *(&v24 + 1) = v19;
        DWORD1(v25) = 0;
        *(&v25 + 7) = 0;
        v21[0] = sub_233783170;
        v21[1] = 0;
        ((*a1)[4].__shared_owners_)(a1, v22, v21);
        CGColorSpaceRelease(v19);
        v17 = 1;
        goto LABEL_46;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = __dynamic_cast(v2, &unk_284911100, &unk_284911238, 0);
  if (v11)
  {
    v2 = a1[13];
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!a1[12])
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v12 = ((*a1)[3].__shared_weak_owners_)(a1);
  if (v12)
  {
    v13 = a1[12];
    if (LODWORD(v13->__shared_weak_owners_) >= 2)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:?];
      sub_2337830C4(v12, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v14);

      v13 = a1[12];
    }

    if (HIDWORD(v13->__shared_weak_owners_))
    {
      if (*(a1 + 113) == 1)
      {
        if (((*a1)[1].__shared_weak_owners_)(a1))
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(a1[12]->__shared_weak_owners_)];
          [v12 setObject:v15 forKeyedSubscript:@"disorientation"];
        }
      }

      else
      {
        sub_2337830C4(v12, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], &unk_284957670);
      }
    }

    if (v3)
    {
      goto LABEL_37;
    }

    if (v11 | v10)
    {
      goto LABEL_41;
    }
  }

  v17 = 0;
LABEL_46:
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }

LABEL_54:
  if (v29)
  {
    sub_2337239E8(v29);
  }

  sub_233785598(v30);
  return v17;
}

void sub_233782FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v26)
  {
    sub_2337239E8(v26);
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else if (!v25)
  {
LABEL_7:
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_2337239E8(v25);
  if (!v24)
  {
LABEL_9:
    if (a24)
    {
      sub_2337239E8(a24);
    }

    sub_233785598((v29 - 96));
    _Unwind_Resume(a1);
  }

LABEL_8:
  sub_2337239E8(v24);
  goto LABEL_9;
}

void sub_2337830C4(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = sub_2337854A4(a1, a2, 0);
  [v8 setObject:v7 forKeyedSubscript:v9];
}

uint64_t sub_233783194(_DWORD *a1)
{
  if (*(a1 + 113) == 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 136))(&v30);
  sub_233785424(v45, &v30);
  if (*(&v30 + 1))
  {
    sub_2337239E8(*(&v30 + 1));
  }

  (*(*a1 + 64))(&v43, a1);
  if (!v43)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = (*(*v43 + 408))(v43);
  v42[0] = 0;
  v42[1] = v2;
  v41[0] = (*(*v43 + 432))();
  v41[1] = v3;
  v40[0] = 0;
  v40[1] = v3;
  v4 = (*(*v43 + 456))(v43);
  v6 = v5;
  v7 = (*(*v43 + 2640))(v43);
  v8 = (*(*v43 + 2648))(v43);
  v37 = v4;
  v38 = (v6 / v7);
  v39 = (SHIDWORD(v6) / v8);
  if (!sub_23385F3FC(v41, v42) || !sub_23385F3FC(&v37, v40))
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v27, "RawCameraException");
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v43;
  v10 = sub_233739B84(v43);
  v11 = (*(*a1 + 88))(a1);
  (*(*v9 + 2728))(v9, v10, v11);

  if (v43)
  {
    (*(*v43 + 2872))(&v35);
    if (v36)
    {
      sub_2337239E8(v36);
    }
  }

  if (sub_233739BAC(v43))
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = (*(*a1 + 80))(a1);
    v13 = sub_2337397F8(v12, @"PreserveMargin");
    sub_233783A14(a1, v13, &v30);

    v28 = sub_233783B24;
    v29 = 0;
    (*(*a1 + 104))(a1, &v30, &v28);
    v14 = (*(*a1 + 88))(a1);
    v15 = v43;
    v16 = sub_233739B84(v43);
    v17 = (*(*v15 + 2736))(v15, v16);
    [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD3468]];
  }

  else
  {
    v18 = sub_233739B8C(v43);
    if (sub_2338191D0(v18))
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_233783A14(a1, 0, &v30);
      v28 = sub_233783B48;
      v29 = 0;
      (*(*a1 + 104))(a1, &v30, &v28);
    }

    else
    {
      if (!(*(*v43 + 544))(v43) && (*(*a1 + 24))(a1))
      {
        v19 = (*(*a1 + 24))(a1);
        v20 = 16;
        do
        {
          (*(*v43 + 552))(v43, v20 >> 1);
          v21 = (*(*v43 + 520))(v43);
          v23 = v21 <= v19 && SHIDWORD(v21) <= v19 && v20 > 1;
          v20 >>= 1;
        }

        while (v23);
      }

      if ((*(*a1 + 24))(a1))
      {
        if ((*(*v43 + 544))(v43))
        {
          v24 = 8;
        }

        else
        {
          v24 = 16;
        }
      }

      else
      {
        v24 = 16;
      }

      a1[22] = v24;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_233783B6C(a1, &v30);
      a1[16] = (*(*v43 + 544))(v43);
      v28 = sub_233783B48;
      v29 = 0;
      (*(*a1 + 104))(a1, &v30, &v28);
      (*(*a1 + 144))(a1);
    }
  }

  if (v44)
  {
    sub_2337239E8(v44);
  }

  sub_233785598(v45);
  return 1;
}

void sub_233783950(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  sub_233785598((v1 - 80));
  _Unwind_Resume(a1);
}

CGColorSpaceRef sub_233783A14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  v4 = **(a1 + 24);
  if (a2)
  {
    v5 = (*(v4 + 408))();
  }

  else
  {
    (*(v4 + 432))();
    v5 = v6;
  }

  *a3 = v5;
  *(a3 + 8) = v5 >> 32;
  *(a3 + 16) = vdupq_n_s64(0x10uLL);
  v7 = 63;
  if (((2 * v5) & 0x1FFFFFFFFFFFFE00) == 0)
  {
    v7 = 31;
  }

  v8 = 15;
  if (((2 * v5) & 0x1FFFFFFFFFFFFF80) != 0)
  {
    v8 = v7;
  }

  *(a3 + 32) = (v8 + ((2 * v5) & 0x1FFFFFFFFFFFFFFELL)) & ~v8;
  *(a3 + 40) = 1196573017;
  v9 = sub_2338F297C();
  *(a3 + 48) = v9;
  *(a3 + 60) = 0;
  *(a3 + 64) = 256;
  *(a3 + 66) = 0;

  return CGColorSpaceRetain(v9);
}

CGColorSpaceRef sub_233783B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (*(*a1[3] + 520))(a1[3]);
  v5 = v4;
  *a2 = v4;
  *(a2 + 8) = v4 >> 32;
  *(a2 + 16) = (*(*a1 + 152))(a1);
  v6 = 4 * (*(*a1 + 152))(a1);
  v7 = v5 * v6;
  v8 = 63;
  if ((v5 * v6) < 0x1000)
  {
    v8 = 31;
  }

  if (v7 < 0x400)
  {
    v8 = 15;
  }

  *(a2 + 24) = v6;
  *(a2 + 32) = (v8 + (v7 >> 3)) & ~v8;
  *(a2 + 40) = 1380401696;
  if (sub_233739B84(a1[3]) && !sub_233739B94(a1[3]))
  {
    v9 = sub_2338F28E4();
  }

  else
  {
    v9 = sub_233739BB4(a1[3]);
  }

  *(a2 + 48) = v9;
  *(a2 + 60) = 5;
  *(a2 + 64) = 256;
  *(a2 + 66) = 0;

  return CGColorSpaceRetain(v9);
}

id sub_233783CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*a1 + 136))(&v7, a1);
  sub_233785424(v9, &v7);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  (*(*a1 + 64))(&v7, a1);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = (*(*v7 + 16))(v7, v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  sub_233785598(v9);

  return v4;
}

void sub_233783E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_233785598(va);

  _Unwind_Resume(a1);
}

void sub_233783E64(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[9];
  if (!v3)
  {
    if (a1[5])
    {
      if (CGImagePluginGetSession())
      {
        sub_23372518C();
      }

      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = a1[10];
  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_233783F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (a1 + 24);
  result = *(a1 + 24);
  if (result)
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 113);
  if (*(a1 + 112) != 1)
  {
    v10 = *(a1 + 168);
    (*(*a1 + 136))(&v23, a1);
    v11 = *(a1 + 113);
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(*a1 + 88))(a1);
    }

    v13 = (*(*a1 + 184))(a1);
    (*(v10 + 16))(&v24, v10, &v23, v11, v12, v13);

    if ((v6 & 1) == 0)
    {
    }

    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }

    v14 = (*(*a1 + 80))(a1);
    sub_233758808(v14, &v22);
  }

  sub_2337269FC(&v24, (a1 + 8));
  v7 = sub_23384B990();
  sub_23384BD84(v7, a1, &v23);
  v8 = v23;
  v23 = 0uLL;
  v9 = *(a1 + 32);
  *(a1 + 24) = v8;
  if (v9)
  {
    sub_2337239E8(v9);
    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }

    if (!*v5)
    {
LABEL_25:
      v16 = *(a1 + 168);
      (*(*a1 + 136))(&v22, a1);
      v17 = *(a1 + 113);
      if (v6)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*(*a1 + 88))(a1);
      }

      v19 = (*(*a1 + 184))(a1);
      (*(v16 + 16))(&v23, v16, &v22, v17, v18, v19);

      if ((v6 & 1) == 0)
      {
      }

      if (*(&v22 + 1))
      {
        sub_2337239E8(*(&v22 + 1));
      }

      v20 = (*(*a1 + 80))(a1);
      sub_233758808(v20, &v21);
    }
  }

  else if (!v8)
  {
    goto LABEL_25;
  }

  if (v25)
  {
    sub_2337239E8(v25);
  }

  result = *v5;
  if (*v5)
  {
LABEL_35:
    if (*(a1 + 120))
    {
      sub_233738F44(result, (a1 + 120));
      result = *v5;
    }
  }

  v15 = *(a1 + 32);
  *a2 = result;
  a2[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337845A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a20)
  {
    sub_2337239E8(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337846D0(uint64_t a1)
{
  v1 = (a1 + 24);
  if (*(a1 + 24))
  {
    v3 = sub_23384B990();
    sub_23384BEE4(v3, v1);
    v4 = *(a1 + 32);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if (v4)
    {

      sub_2337239E8(v4);
    }
  }
}

void sub_233784738(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = (*(*a1 + 80))(a1);
  v5 = sub_2337397F8(v4, @"PreserveMargin");

  (*(*a1 + 64))(&v7, a1);
  if (v5)
  {
    (*(*v7 + 384))(&v9);
  }

  else
  {
    (*(*v7 + 392))(&v9);
  }

  v6 = v9;
  v9 = 0uLL;
  *a2 = v6;
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_233784890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337848C4(void *a1)
{
  sub_233784738(a1, &v1);
  sub_2337B0628(v1);
  operator new();
}

void sub_233784AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  __cxa_free_exception(v14);
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_233784AEC(uint64_t result)
{
  v1 = result;
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      sub_2337239E8(v2);
    }

    return MEMORY[0x2383ABF10](v1, 0x20C40A4A59CD2);
  }

  return result;
}

void sub_233784B40(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[19];
  if (!v3)
  {
    v6 = 0;
    (*(*a1 + 64))(&v5, a1);
    sub_23385E314(&v5, &v6);
  }

  v4 = a1[20];
  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_233784C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_233784CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}