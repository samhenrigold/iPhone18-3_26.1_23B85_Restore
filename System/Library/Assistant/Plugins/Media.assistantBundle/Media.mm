id sub_2334DA3E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = qword_2814EE810;
  v12 = qword_2814EE810;
  if (!qword_2814EE810)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_23350C2CC;
    v8[3] = &unk_2789DC280;
    v8[4] = &v9;
    sub_23350C2CC(v8, a2, a3, a4, a5);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_2334DA4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2334DA4D4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_valueForProperty_(a1, a2, *MEMORY[0x277CD57C8], a4, a5);
  v12 = objc_msgSend_integerValue(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = 0x277D475B8;
  }

  else if ((v12 & 2) != 0)
  {
    v17 = 0x277D47588;
  }

  else if ((v12 & 4) != 0)
  {
    v17 = 0x277D47520;
  }

  else
  {
    if ((v12 & 0x20) == 0)
    {
      v16 = 0;
      goto LABEL_11;
    }

    v17 = 0x277D475A0;
  }

  v16 = objc_alloc_init(*v17);
LABEL_11:
  if (a3 == 1)
  {
    v18 = sub_233502524(a1);
    objc_msgSend_setIdentifier_(v16, v19, v18, v20, v21);
  }

  else
  {
    v18 = 0;
    objc_msgSend_setIdentifier_(v16, v13, 0, v14, v15);
  }

  return v16;
}

id sub_2334DA5C8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_valueForProperty_(a1, a2, *MEMORY[0x277CD57C8], a4, a5);
  v12 = objc_msgSend_integerValue(v7, v8, v9, v10, v11);

  if ((v12 & 0x402) != 0)
  {
    v13 = MEMORY[0x277D47588];
  }

  else if ((v12 & 4) != 0)
  {
    v13 = MEMORY[0x277D47520];
  }

  else if ((v12 & 0x200) != 0)
  {
    v13 = MEMORY[0x277D47530];
  }

  else
  {
    if ((v12 & 0x100) == 0)
    {
      v14 = objc_alloc_init(MEMORY[0x277D475B8]);
      v18 = objc_msgSend_valueForProperty_(a1, v15, *MEMORY[0x277CD5750], v16, v17);
      objc_msgSend_setGenre_(v14, v19, v18, v20, v21);

      goto LABEL_11;
    }

    v13 = MEMORY[0x277D47568];
  }

  v14 = objc_alloc_init(v13);
LABEL_11:
  v25 = objc_msgSend_valueForProperty_(a1, v22, *MEMORY[0x277CD56E8], v23, v24);
  objc_msgSend_setArtist_(v14, v26, v25, v27, v28);

  v32 = objc_msgSend_valueForProperty_(a1, v29, *MEMORY[0x277CD5840], v30, v31);
  objc_msgSend_setSortArtist_(v14, v33, v32, v34, v35);

  v36 = *MEMORY[0x277CD56D0];
  v40 = objc_msgSend_valueForProperty_(a1, v37, *MEMORY[0x277CD56D0], v38, v39);
  objc_msgSend_setAlbum_(v14, v41, v40, v42, v43);

  v47 = objc_msgSend_valueForProperty_(a1, v44, *MEMORY[0x277CD5838], v45, v46);
  objc_msgSend_setSortAlbum_(v14, v48, v47, v49, v50);

  v54 = objc_msgSend_valueForProperty_(a1, v51, *MEMORY[0x277CD58B8], v52, v53);
  objc_msgSend_setTitle_(v14, v55, v54, v56, v57);

  v61 = objc_msgSend_valueForProperty_(a1, v58, *MEMORY[0x277CD5848], v59, v60);
  objc_msgSend_setSortTitle_(v14, v62, v61, v63, v64);

  isExplicitItem = objc_msgSend_isExplicitItem(a1, v65, v66, v67, v68);
  objc_msgSend_setIsExplicit_(v14, v70, isExplicitItem, v71, v72);
  if (a3 == 1)
  {
    v77 = sub_233502524(a1);
    objc_msgSend_setIdentifier_(v14, v78, v77, v79, v80);
  }

  if ((v12 & 0x1F0F) != 0)
  {
    v269 = v36;
    v270 = v12;
    v81 = objc_msgSend_defaultTimeZone(MEMORY[0x277CBEBB0], v73, v74, v75, v76);
    v86 = objc_msgSend_name(v81, v82, v83, v84, v85);

    v87 = objc_alloc_init(MEMORY[0x277D471B8]);
    v91 = objc_msgSend_valueForProperty_(a1, v88, *MEMORY[0x277CD57C0], v89, v90);
    objc_msgSend_setDate_(v87, v92, v91, v93, v94);

    objc_msgSend_setTimeZoneId_(v87, v95, v86, v96, v97);
    v98 = objc_alloc_init(MEMORY[0x277D47578]);
    objc_msgSend_setLastPlayedDate_(v98, v99, v87, v100, v101);
    v105 = objc_msgSend_valueForProperty_(a1, v102, *MEMORY[0x277CD5708], v103, v104);
    objc_msgSend_doubleValue(v105, v106, v107, v108, v109);
    objc_msgSend_setPlaybackPositionMillis_(v98, v111, (v110 * 1000.0), v112, v113);

    v117 = objc_msgSend_valueForProperty_(a1, v114, *MEMORY[0x277CD5820], v115, v116);
    v122 = objc_msgSend_BOOLValue(v117, v118, v119, v120, v121);
    objc_msgSend_setRememberPlaybackPosition_(v98, v123, v122, v124, v125);

    v129 = objc_msgSend_valueForProperty_(a1, v126, *MEMORY[0x277CD57E0], v127, v128);
    v134 = objc_msgSend_unsignedIntegerValue(v129, v130, v131, v132, v133);

    v135 = 0.0;
    if (v134 >= 0x64)
    {
      v136 = 0;
      do
      {
        v137 = v134;
        v134 /= 0xAuLL;
        ++v136;
      }

      while (v137 > 0x3E7);
      v135 = v136;
    }

    v138 = __exp10(v135);
    objc_msgSend_setPlays_(v98, v139, (v138 * v134), v140, v141);
    objc_msgSend_setPlaybackInfo_(v14, v142, v98, v143, v144);
    v151 = objc_msgSend_valueForProperty_(a1, v145, *MEMORY[0x277CD5720], v146, v147);
    if (v151)
    {
      v152 = objc_alloc_init(MEMORY[0x277D471B8]);
      objc_msgSend_setDate_(v152, v153, v151, v154, v155);
      objc_msgSend_setTimeZoneId_(v152, v156, v86, v157, v158);
      objc_msgSend_setDateAdded_(v14, v159, v152, v160, v161);
    }

    v165 = objc_msgSend_valueForProperty_(a1, v148, *MEMORY[0x277CD5878], v149, v150);
    if (v165)
    {
      v166 = objc_alloc_init(MEMORY[0x277D471B8]);
      objc_msgSend_setDate_(v166, v167, v165, v168, v169);
      objc_msgSend_setTimeZoneId_(v166, v170, v86, v171, v172);
      objc_msgSend_setDatePurchased_(v14, v173, v166, v174, v175);
    }

    v176 = objc_msgSend_valueForProperty_(a1, v162, *MEMORY[0x277CD5818], v163, v164);
    if (v176)
    {
      v177 = objc_alloc_init(MEMORY[0x277D471B8]);
      objc_msgSend_setDate_(v177, v178, v176, v179, v180);
      objc_msgSend_setTimeZoneId_(v177, v181, v86, v182, v183);
      v184 = objc_alloc_init(MEMORY[0x277D475A8]);
      objc_msgSend_setReleaseDate_(v184, v185, v177, v186, v187);
      objc_msgSend_valueForProperty_(a1, v188, *MEMORY[0x277CD58C0], v189, v190);
      v268 = v14;
      v191 = v165;
      v192 = v98;
      v193 = v151;
      v194 = v87;
      v196 = v195 = v86;
      v201 = objc_msgSend_unsignedIntegerValue(v196, v197, v198, v199, v200);
      objc_msgSend_setReleaseYear_(v184, v202, v201, v203, v204);

      v86 = v195;
      v87 = v194;
      v151 = v193;
      v98 = v192;
      v165 = v191;
      v14 = v268;
      objc_msgSend_setReleaseInfo_(v268, v205, v184, v206, v207);
    }

    v36 = v269;
    v12 = v270;
  }

  v208 = objc_msgSend_valueForProperty_(a1, v73, *MEMORY[0x277CD5888], v75, v76);
  if (!objc_msgSend_longLongValue(v208, v209, v210, v211, v212))
  {
    v217 = objc_msgSend_valueForProperty_(a1, v213, *MEMORY[0x277CD58A0], v215, v216);

    v208 = v217;
  }

  if (v208)
  {
    v218 = objc_msgSend_stringValue(v208, v213, v214, v215, v216);
    objc_msgSend_setAdamIdentifier_(v14, v219, v218, v220, v221);
  }

  if ((v12 & 0x200) != 0)
  {
    v222 = *MEMORY[0x277CD5740];
    v223 = v14;
    v227 = objc_msgSend_valueForProperty_(a1, v224, v222, v225, v226);
    v232 = objc_msgSend_unsignedIntegerValue(v227, v228, v229, v230, v231);
    objc_msgSend_setEpisodeNumber_(v223, v233, v232, v234, v235);

    v239 = objc_msgSend_valueForProperty_(a1, v236, *MEMORY[0x277CD5830], v237, v238);
    v244 = objc_msgSend_unsignedIntegerValue(v239, v240, v241, v242, v243);
    objc_msgSend_setSeasonNumber_(v223, v245, v244, v246, v247);

    v251 = objc_msgSend_valueForProperty_(a1, v248, *MEMORY[0x277CD56D8], v249, v250);
    v256 = objc_msgSend_unsignedIntegerValue(v251, v252, v253, v254, v255);
    objc_msgSend_setShowEpisodesCount_(v223, v257, v256, v258, v259);

    v263 = objc_msgSend_valueForProperty_(a1, v260, v36, v261, v262);
    objc_msgSend_setShowName_(v223, v264, v263, v265, v266);
  }

  return v14;
}

id sub_2334DAC68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27DE0E748;
  v7 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_27DE0E748, &unk_2848D43C0);
  }

  v8 = objc_msgSend_objectForKey_(qword_27DE0E750, v4, v7, v5, v6);

  return v8;
}

uint64_t sub_2334DACE4()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  qword_27DE0E750 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, *MEMORY[0x277CD56D0], v2, v3, *MEMORY[0x277D48690], *MEMORY[0x277CD56E8], *MEMORY[0x277D48698], *MEMORY[0x277CD5750], *MEMORY[0x277D486A8], *MEMORY[0x277CD5710], *MEMORY[0x277D486A0], *MEMORY[0x277CD58B8], *MEMORY[0x277D486B0], 0);

  return MEMORY[0x2821F96F8]();
}

id sub_2334DADB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27DE0E738;
  v7 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_27DE0E738, &unk_2848D43A0);
  }

  v8 = objc_msgSend_objectForKey_(qword_27DE0E740, v4, v7, v5, v6);

  return v8;
}

uint64_t sub_2334DAE34()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  qword_27DE0E740 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, *MEMORY[0x277D48690], v2, v3, *MEMORY[0x277CD56D0], *MEMORY[0x277D48698], *MEMORY[0x277CD56E8], *MEMORY[0x277D486A8], *MEMORY[0x277CD5750], *MEMORY[0x277D486A0], *MEMORY[0x277CD5710], *MEMORY[0x277D486B0], *MEMORY[0x277CD58B8], 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2334DAF08(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_groupingType(a1, a2, a3, a4, a5);
  v11 = 3;
  if (v6 > 4)
  {
    v12 = 2;
    if (v6 == 10)
    {
      v11 = 4;
    }

    if (v6 == 7)
    {
      v11 = 5;
    }

    v13 = v6 == 5;
    goto LABEL_9;
  }

  if (v6 != 1)
  {
    v13 = v6 == 2;
    v12 = 1;
LABEL_9:
    if (v13)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  v16 = objc_msgSend_representativeItem(a1, v7, v8, v9, v10);
  v20 = v16;
  if (v16)
  {
    v21 = objc_msgSend_valueForProperty_(v16, v17, *MEMORY[0x277CD57C8], v18, v19);
    v26 = objc_msgSend_integerValue(v21, v22, v23, v24, v25);

    if ((v26 & 0x402) != 0)
    {
      v14 = 5;
    }

    else if ((v26 & 4) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = (v26 << 54 >> 63) & 6;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

__CFString *sub_2334DAFF0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend__assistantCollectionType(a1, a2, a3, a4, a5);
  if (v5 > 6)
  {
    v6 = off_2789DBC30;
  }

  else
  {
    v6 = off_2789DAAC8[v5];
  }

  v7 = *v6;

  return v7;
}

id sub_2334DB040(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_SAMPCollectionRepresentationUsingIdentifierType_(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_items(a1, v8, v9, v10, v11);
  if (objc_msgSend_count(v12, v13, v14, v15, v16))
  {
    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    v22 = objc_msgSend_count(v12, v18, v19, v20, v21);
    v26 = objc_msgSend_initWithCapacity_(v17, v23, v22, v24, v25);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v31 = objc_msgSend_items(a1, v27, v28, v29, v30, 0);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v48, v52, 16);
    if (v33)
    {
      v37 = v33;
      v38 = *v49;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v31);
          }

          v40 = objc_msgSend_SAMPMediaItemRepresentationUsingIdentifierType_(*(*(&v48 + 1) + 8 * i), v34, a3, v35, v36);
          objc_msgSend_addObject_(v26, v41, v40, v42, v43);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v48, v52, 16);
      }

      while (v37);
    }

    objc_msgSend_setItems_(v7, v44, v26, v45, v46);
  }

  return v7;
}

id sub_2334DB1D8(void *a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = objc_msgSend_itemsQuery(a1, v5, v6, v7, v8);
    if (!v38)
    {
      v33 = 0;
      v20 = 0;
      v16 = 0;
      goto LABEL_21;
    }

    v39 = objc_msgSend_groupingType(a1, v34, v35, v36, v37);
    v44 = objc_msgSend__assistantCollectionType(a1, v40, v41, v42, v43);
    v48 = v44;
    if (v44 <= 6 && ((0x5Fu >> v44) & 1) != 0)
    {
      v16 = objc_alloc_init(**(&unk_2789DAA90 + v44));
    }

    else
    {
      v16 = 0;
    }

    v52 = objc_msgSend_titlePropertyForGroupingType_(MEMORY[0x277CD5DF0], v45, v39, v46, v47);
    if (v52)
    {
      v20 = objc_msgSend_valueForProperty_(a1, v49, v52, v50, v51);
    }

    else
    {
      v56 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v85 = 134217984;
        v86 = v39;
        _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "No title property for grouping %ld", &v85, 0xCu);
      }

      v20 = 0;
    }

    v60 = objc_msgSend_sortTitlePropertyForGroupingType_(MEMORY[0x277CD5DF0], v53, v39, v54, v55);
    if (v60)
    {
      v33 = objc_msgSend_valueForProperty_(a1, v57, v60, v58, v59);
      if (v48)
      {
LABEL_20:

LABEL_21:
        v29 = 0;
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v33 = 0;
      if (v48)
      {
        goto LABEL_20;
      }
    }

    v61 = *MEMORY[0x277CD5698];
    v62 = v16;
    v66 = objc_msgSend_valueForProperty_(a1, v63, v61, v64, v65);
    objc_msgSend_setArtist_(v62, v67, v66, v68, v69);

    goto LABEL_20;
  }

  v9 = objc_msgSend_valueForProperty_(a1, v5, *MEMORY[0x277CD5918], v7, v8);
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  v15 = 0x277D47538;
  if (!v14)
  {
    v15 = 0x277D47580;
  }

  v16 = objc_alloc_init(*v15);
  v20 = objc_msgSend_valueForProperty_(a1, v17, *MEMORY[0x277CD5930], v18, v19);
  v24 = objc_msgSend_valueForProperty_(a1, v21, *MEMORY[0x277CD5928], v22, v23);
  v29 = objc_msgSend_BOOLValue(v24, v25, v26, v27, v28);

  v33 = 0;
  if (v16)
  {
LABEL_22:
    if (a3 == 1)
    {
      v70 = sub_233502524(a1);
      objc_msgSend_setIdentifier_(v16, v71, v70, v72, v73);
    }

    else
    {
      v70 = 0;
      objc_msgSend_setIdentifier_(v16, v30, 0, v31, v32);
    }

    objc_msgSend_setTitle_(v16, v74, v20, v75, v76);
    objc_msgSend_setSortTitle_(v16, v77, v33, v78, v79);
    objc_msgSend_setEditable_(v16, v80, v29, v81, v82);
  }

LABEL_26:
  v83 = v16;

  return v16;
}

uint64_t sub_2334DB4F8(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 6;
  }

  v7 = objc_msgSend_itemsQuery(a1, v2, v3, v4, v5);
  v12 = v7;
  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = objc_msgSend_filterPredicates(v7, v8, v9, v10, v11, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v35, v39, 16);
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v35 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (qword_27DE0E758 != -1)
            {
              dispatch_once(&qword_27DE0E758, &unk_2848D43E0);
            }

            v24 = objc_msgSend_property(v19, v20, v21, v22, v23);
            v28 = objc_msgSend_objectForKey_(qword_27DE0E760, v25, v24, v26, v27);
            if (v28)
            {
              v33 = v28;
              v6 = objc_msgSend_integerValue(v28, v29, v30, v31, v32);

              goto LABEL_19;
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v35, v39, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_19:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_2334DB6D0(uint64_t a1, const char *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD56F0];
  v5[0] = *MEMORY[0x277CD56C8];
  v5[1] = v2;
  v6[0] = &unk_2848D8B20;
  v6[1] = &unk_2848D8B38;
  v5[2] = *MEMORY[0x277CD5758];
  v6[2] = &unk_2848D8B50;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 3);
  v4 = qword_27DE0E760;
  qword_27DE0E760 = v3;
}

__CFString *sub_2334DB790(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_valueForProperty_(a1, a2, *MEMORY[0x277CD5918], a4, a5);
  v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = @"x-sampgeniusmix";
  }

  else
  {
    v11 = @"x-sampplaylist";
  }

  return v11;
}

id sub_2334DB7F8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_metricsContext(a1, a2, a3, a4, a5);
  v9 = objc_msgSend_dataUsingEncoding_(v5, v6, 4, v7, v8);

  if (v9)
  {
    v11 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v10, v9, 0, 0);
    v15 = 0;
    if (_NSIsNSDictionary())
    {
      v16 = objc_msgSend_objectForKey_(v11, v12, @"WHAMetrics", v13, v14);
      if (_NSIsNSDictionary())
      {
        v15 = v16;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_2334DB8C4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = objc_msgSend_MPMediaGroupingForScheme(a1, v11, v12, v13, v14);
  if (v16 == 1)
  {
    v19 = objc_msgSend_MPMediaItemQueryOnlyPlayableItems_withUserIdentity_plugin_hash_(a1, v15, 1, v8, v9, v10);
  }

  else
  {
    v20 = objc_msgSend_persistentIDPropertyForGroupingType_(MEMORY[0x277CD5DE0], v15, v16, v17, v18);
    v24 = v20;
    if (v20 && (objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277CD57D8], v22, v23) & 1) == 0)
    {
      v29 = objc_msgSend_identifier(a1, v25, v26, v27, v28);
      v34 = v29;
      if (v29)
      {
        v35 = objc_msgSend_path(v29, v30, v31, v32, v33);
        v40 = objc_msgSend_lastPathComponent(v35, v36, v37, v38, v39);
        v45 = objc_msgSend_longLongValue(v40, v41, v42, v43, v44);

        v46 = MEMORY[0x277CD5E30];
        v50 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v47, v45, v48, v49);
        v53 = objc_msgSend_predicateWithValue_forProperty_(v46, v51, v50, v24, v52);

        v56 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v54, MEMORY[0x277CBEC38], *MEMORY[0x277CD57A0], v55);
        v60 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v57, v53, v58, v59, v56, 0);
        v61 = objc_alloc(MEMORY[0x277CD5E38]);
        v19 = objc_msgSend_initWithFilterPredicates_(v61, v62, v60, v63, v64);
        objc_msgSend_setGroupingType_(v19, v65, 1, v66, v67);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

id sub_2334DBAB0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_path(v5, v6, v7, v8, v9);
    v16 = objc_msgSend_lastPathComponent(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_longLongValue(v16, v17, v18, v19, v20);

    v25 = objc_msgSend_persistentIDPropertyForGroupingType_(MEMORY[0x277CD5DE0], v22, 2, v23, v24);
    v26 = MEMORY[0x277CD5E30];
    v30 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v27, v21, v28, v29);
    v33 = objc_msgSend_predicateWithValue_forProperty_(v26, v31, v30, v25, v32);

    v37 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v34, v33, v35, v36, 0);
    v38 = objc_alloc(MEMORY[0x277CD5E38]);
    v42 = objc_msgSend_initWithFilterPredicates_(v38, v39, v37, v40, v41);
    objc_msgSend_setGroupingType_(v42, v43, 1, v44, v45);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

uint64_t sub_2334DBBDC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_scheme(v5, v6, v7, v8, v9);
    v12 = sub_2334DBC40(v11, 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_2334DBC40(void *a1, int a2)
{
  v23[7] = *MEMORY[0x277D85DE8];
  v22[0] = @"x-sampcollection-album";
  v22[1] = @"x-sampcollection-artist";
  v23[0] = &unk_2848D8B68;
  v23[1] = &unk_2848D8B80;
  v22[2] = @"x-sampcollection-genre";
  v22[3] = @"x-sampcollection-audiobook";
  v23[2] = &unk_2848D8B98;
  v23[3] = &unk_2848D8BB0;
  v22[4] = @"x-sampcollection-podcast";
  v22[5] = @"x-sampplaylist";
  v23[4] = &unk_2848D8BC8;
  v23[5] = &unk_2848D8BE0;
  v22[6] = @"x-sampgeniusmix";
  v23[6] = &unk_2848D8BE0;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v2, v4, v23, v22, 7);
  v20[0] = @"x-sampcollection-album";
  v20[1] = @"x-sampcollection-artist";
  v21[0] = &unk_2848D8B68;
  v21[1] = &unk_2848D8BF8;
  v20[2] = @"x-sampcollection-genre";
  v20[3] = @"x-sampcollection-audiobook";
  v21[2] = &unk_2848D8B98;
  v21[3] = &unk_2848D8BB0;
  v20[4] = @"x-sampcollection-podcast";
  v20[5] = @"x-sampplaylist";
  v21[4] = &unk_2848D8BC8;
  v21[5] = &unk_2848D8BE0;
  v20[6] = @"x-sampgeniusmix";
  v21[6] = &unk_2848D8BE0;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v21, v20, 7);
  v11 = v7;
  if (!a2)
  {
    v7 = v5;
  }

  v12 = objc_msgSend_objectForKey_(v7, v8, v3, v9, v10);

  if (v12)
  {
    v17 = objc_msgSend_integerValue(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_2334DBE1C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v8 = a3;
  v166 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  v157 = 0;
  v17 = objc_msgSend_identifier(a1, v13, v14, v15, v16);
  v22 = objc_msgSend_scheme(v17, v18, v19, v20, v21);
  v23 = sub_23350261C(v17);
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = sub_2334DC484;
  v146[3] = &unk_2789DAB08;
  v153 = v8;
  v24 = v22;
  v147 = v24;
  v25 = v11;
  v148 = v25;
  v26 = v12;
  v149 = v26;
  v151 = a1;
  v152 = &v154;
  v144 = v10;
  v150 = v144;
  v145 = MEMORY[0x2383A14D0](v146);
  if (v23 == 4)
  {
    v142 = objc_msgSend_scheme(v17, v27, v28, v29, v30);

    v56 = sub_2334DBC40(v142, 1);
    v35 = objc_msgSend_ULIDPropertyForGroupingType_(MEMORY[0x277CD5DE0], v57, v56, v58, v59);
    v64 = objc_msgSend_path(v17, v60, v61, v62, v63);
    v141 = objc_msgSend_lastPathComponent(v64, v65, v66, v67, v68);

    v143 = sub_2334DC830(v144, v35, v141, v56, v8);
    v73 = objc_msgSend__countOfCollections(v143, v69, v70, v71, v72);
    v155[3] = v73;
    if (v73)
    {
      v74 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v79 = objc_msgSend__countOfCollections(v143, v75, v76, v77, v78);
        *buf = 138543874;
        v159 = v25;
        v160 = 2114;
        v161 = v26;
        v162 = 2048;
        v163 = v79;
        _os_log_impl(&dword_2334D9000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ (ulid) <%{public}@>: collections: %lu", buf, 0x20u);
      }

      v83 = objc_msgSend_persistentIDPropertyForGroupingType_(MEMORY[0x277CD5DE0], v80, v56, v81, v82);
      v88 = objc_msgSend_collections(v143, v84, v85, v86, v87);
      v93 = objc_msgSend_firstObject(v88, v89, v90, v91, v92);

      v98 = objc_msgSend_representativeItem(v93, v94, v95, v96, v97);
      v102 = objc_msgSend_valueForProperty_(v98, v99, v83, v100, v101);
      v107 = objc_msgSend_longLongValue(v102, v103, v104, v105, v106);

      if (!v107)
      {
        v111 = objc_msgSend_valueForProperty_(v93, v108, v83, v109, v110);
        v107 = objc_msgSend_longLongValue(v111, v112, v113, v114, v115);
      }

      v116 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v108, v107, v109, v110, v141);
      v55 = (v145)[2](v145, v56, v83, v116);
    }

    else
    {
      v122 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v159 = v25;
        v160 = 2114;
        v161 = v26;
        _os_log_impl(&dword_2334D9000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@ (ulid) <%{public}@>: no collections", buf, 0x16u);
      }

      v127 = objc_msgSend_items(a1, v123, v124, v125, v126);
      v55 = sub_2334DC970(v144, v127, v8);

      v132 = objc_msgSend__countOfCollections(v55, v128, v129, v130, v131);
      v155[3] = v132;
    }

    v24 = v142;
  }

  else if (v23 == 1)
  {
    v31 = sub_2334DBC40(v24, 0);
    v35 = objc_msgSend_persistentIDPropertyForGroupingType_(MEMORY[0x277CD5DE0], v32, v31, v33, v34);
    v40 = objc_msgSend_path(v17, v36, v37, v38, v39);
    v45 = objc_msgSend_lastPathComponent(v40, v41, v42, v43, v44);
    v50 = objc_msgSend_longLongValue(v45, v46, v47, v48, v49);

    v54 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v51, v50, v52, v53);
    v55 = (v145)[2](v145, v31, v35, v54);
  }

  else
  {
    v35 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v121 = objc_msgSend_host(v17, v117, v118, v119, v120);
      *buf = 138543874;
      v159 = v25;
      v160 = 2114;
      v161 = v26;
      v162 = 2112;
      v163 = v121;
      _os_log_impl(&dword_2334D9000, v35, OS_LOG_TYPE_ERROR, "%{public}@ (query) <%{public}@>:  Unsupported identifier URL host: %@", buf, 0x20u);
    }

    v55 = 0;
  }

  v133 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
  {
    v138 = v155[3];
    v139 = objc_msgSend__countOfItems(v55, v134, v135, v136, v137);
    *buf = 138544130;
    v159 = v25;
    v160 = 2114;
    v161 = v26;
    v162 = 2048;
    v163 = v138;
    v164 = 2048;
    v165 = v139;
    _os_log_impl(&dword_2334D9000, v133, OS_LOG_TYPE_DEFAULT, "%{public}@ (query) <%{public}@>: collections: %lu items: %lu", buf, 0x2Au);
  }

  _Block_object_dispose(&v154, 8);

  return v55;
}

void sub_2334DC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2334DC484(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v11 = a4;
  if ((*(a1 + 80) & 1) == 0 && ((objc_msgSend_isEqualToString_(*(a1 + 32), v8, @"x-sampgeniusmix", v9, v10) & 1) != 0 || objc_msgSend_isEqualToString_(*(a1 + 32), v21, @"x-sampplaylist", v22, v23)))
  {
    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v72 = 138543618;
      v73 = v25;
      v74 = 2114;
      v75 = v26;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local playlist", &v72, 0x16u);
    }

    v27 = MEMORY[0x277CBEB98];
    v28 = MEMORY[0x277CD5E30];
    v29 = *(a1 + 56);
    v32 = objc_msgSend_predicateWithValue_forProperty_(v28, v30, v11, v7, v31);
    v36 = objc_msgSend_setWithObject_(v27, v33, v32, v34, v35);

    v40 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v37, v29, v38, v39);

    v41 = objc_alloc(MEMORY[0x277CD5E38]);
    v20 = objc_msgSend_initWithFilterPredicates_library_(v41, v42, v36, v40, v43);
    objc_msgSend_setGroupingType_(v20, v44, 6, v45, v46);

    v15 = v20;
LABEL_12:
    v47 = objc_msgSend__countOfCollections(v15, v16, v17, v18, v19);
    v48 = a1 + 72;
LABEL_13:
    *(*(*v48 + 8) + 24) = v47;
    goto LABEL_14;
  }

  if (a2 == 7 || !a2)
  {
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v72 = 138543618;
      v73 = v13;
      v74 = 2114;
      v75 = v14;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local title query", &v72, 0x16u);
    }

    v15 = sub_2334DC830(*(a1 + 56), v7, v11, a2, *(a1 + 80));
    v20 = v15;
    goto LABEL_12;
  }

  v51 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(a1 + 40);
    v53 = *(a1 + 48);
    v72 = 138543618;
    v73 = v52;
    v74 = 2114;
    v75 = v53;
    _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local query", &v72, 0x16u);
  }

  v20 = sub_2334DC830(*(a1 + 56), v7, v11, a2, *(a1 + 80));
  v48 = a1 + 72;
  *(*(*(a1 + 72) + 8) + 24) = objc_msgSend__countOfCollections(v20, v54, v55, v56, v57);
  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    v58 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(a1 + 40);
      v60 = *(a1 + 48);
      v72 = 138543618;
      v73 = v59;
      v74 = 2114;
      v75 = v60;
      _os_log_impl(&dword_2334D9000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: no collections", &v72, 0x16u);
    }

    v61 = *(a1 + 56);
    v66 = objc_msgSend_items(*(a1 + 64), v62, v63, v64, v65);
    v67 = sub_2334DC970(v61, v66, *(a1 + 80));

    v47 = objc_msgSend__countOfCollections(v67, v68, v69, v70, v71);
    v20 = v67;
    goto LABEL_13;
  }

LABEL_14:
  v49 = v20;

  return v20;
}

id sub_2334DC830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = MEMORY[0x277CD5E30];
  v10 = a1;
  v16 = objc_msgSend_predicateWithValue_forProperty_(v9, v11, a3, a2, v12);
  if (a5)
  {
    v17 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v13, MEMORY[0x277CBEC38], *MEMORY[0x277CD57A0], v15);
    objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v18, v16, v19, v20, v17, 0);
  }

  else
  {
    v17 = 0;
    objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v13, v16, v14, v15, 0, 0);
  }
  v21 = ;
  v25 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v22, v10, v23, v24);

  v26 = objc_alloc(MEMORY[0x277CD5E38]);
  v29 = objc_msgSend_initWithFilterPredicates_library_(v26, v27, v21, v25, v28);
  objc_msgSend_setGroupingType_(v29, v30, a4, v31, v32);
  if (a5)
  {
    objc_msgSend_setShouldIncludeNonLibraryEntities_(v29, v33, 1, v34, v35);
    objc_msgSend_setIgnoreSystemFilterPredicates_(v29, v36, 1, v37, v38);
  }

  return v29;
}

id sub_2334DC970(void *a1, void *a2, int a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_count(v6, v8, v9, v10, v11);
  v61 = objc_msgSend_arrayWithCapacity_(v7, v13, v12, v14, v15);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v16 = v6;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v63, v69, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v64;
    v24 = *MEMORY[0x277CD5828];
    v62 = *MEMORY[0x277CD57A0];
    v25 = a3 ^ 1;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v27 = *(*(&v63 + 1) + 8 * i);
        v28 = objc_msgSend_MPMediaItemRepresentationWithUserIdentity_(v27, v19, v5, v20, v21);
        v32 = v28;
        if (v28)
        {
          v33 = objc_msgSend_valueForProperty_(v28, v29, v24, v30, v31);
          v38 = objc_msgSend_BOOLValue(v33, v34, v35, v36, v37);

          if ((v38 & 1) == 0)
          {
            v42 = objc_msgSend_valueForProperty_(v32, v39, v62, v40, v41);
            v47 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);

            if ((v25 | v47))
            {
              objc_msgSend_addObject_(v61, v48, v32, v49, v50);
            }
          }
        }

        else
        {
          v51 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v68 = v27;
            _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_DEFAULT, "Warning, could not find local item for %{public}@", buf, 0xCu);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v63, v69, 16);
    }

    while (v22);
  }

  if (objc_msgSend_count(v61, v52, v53, v54, v55))
  {
    v56 = objc_alloc(MEMORY[0x277CD5E38]);
    v59 = objc_msgSend_initWithEntities_entityType_(v56, v57, v61, 0, v58);
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

id sub_2334DCBE0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_MPMediaItemQueryOnlyPlayableItems_withUserIdentity_plugin_hash_(a1, a2, 0, a3, a4, a5);
  v10 = objc_msgSend_collections(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);

  return v15;
}

id sub_2334DCC54(void *a1, uint64_t a2, void *a3)
{
  v104[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_identifier(a1, v5, v6, v7, v8);
  v14 = objc_msgSend_scheme(v9, v10, v11, v12, v13);
  if (objc_msgSend_isEqualToString_(v14, v15, @"x-sampmeditem", v16, v17))
  {
    v18 = sub_23350261C(v9);
    v23 = v18;
    if (v18 == 4 || v18 == 1)
    {
      v98 = v4;
      v24 = objc_msgSend_path(v9, v19, v20, v21, v22);
      v29 = objc_msgSend_lastPathComponent(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_longLongValue(v29, v30, v31, v32, v33);

      v35 = MEMORY[0x277CD5DC0];
      v36 = MEMORY[0x277CD5E30];
      v42 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v37, v34, v38, v39);
      if (v23 == 4)
      {
        v46 = objc_msgSend_predicateWithValue_forProperty_(v36, v40, v42, *MEMORY[0x277CD5858], v41);
        v104[0] = v46;
        v47 = MEMORY[0x277CD5870];
        v48 = v104;
      }

      else
      {
        v46 = objc_msgSend_predicateWithValue_forProperty_(v36, v40, v42, *MEMORY[0x277CD57D8], v41);
        v103 = v46;
        v47 = MEMORY[0x277CD58B0];
        v48 = &v103;
      }

      v51 = MEMORY[0x277CD5E30];
      v52 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v43, v34, v44, v45);
      v55 = objc_msgSend_predicateWithValue_forProperty_(v51, v53, v52, *v47, v54);
      v48[1] = v55;
      v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v48, 2, v57);
      v62 = objc_msgSend_predicateMatchingPredicates_(v35, v59, v58, v60, v61);

      v4 = v98;
      v66 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v63, v98, v64, v65);
      v67 = objc_alloc(MEMORY[0x277CD5E38]);
      v71 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v68, v62, v69, v70);
      v74 = objc_msgSend_initWithFilterPredicates_library_(v67, v72, v71, v66, v73);

      objc_msgSend_setIgnoreSystemFilterPredicates_(v74, v75, 1, v76, v77);
      objc_msgSend_setShouldIncludeNonLibraryEntities_(v74, v78, 1, v79, v80);
      v85 = objc_msgSend_items(v74, v81, v82, v83, v84);
      v90 = objc_msgSend_firstObject(v85, v86, v87, v88, v89);

      if (v90)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v91 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v96 = objc_msgSend_host(v9, v92, v93, v94, v95);
        *buf = 136315394;
        v100 = "/Library/Caches/com.apple.xbs/Sources/MobileMusicPlayer/AssistantBundle/Categories/SAMPMediaItem_MPAdditions.m";
        v101 = 2112;
        v102 = v96;
        _os_log_impl(&dword_2334D9000, v91, OS_LOG_TYPE_ERROR, "[%s] Unsupported identifier URL host: %@", buf, 0x16u);
      }
    }

    v49 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v100 = v9;
      v50 = "Could not find item with identifier %@";
      goto LABEL_16;
    }
  }

  else
  {
    v49 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v100 = v14;
      v50 = "Unknown identifier URL scheme: %{public}@";
LABEL_16:
      _os_log_impl(&dword_2334D9000, v49, OS_LOG_TYPE_ERROR, v50, buf, 0xCu);
    }
  }

  v90 = 0;
LABEL_18:

  return v90;
}

void sub_2334DD274(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3)
    {
      v5 = objc_alloc(MEMORY[0x277D47208]);
      v10 = objc_msgSend_localizedDescription(v4, v6, v7, v8, v9);
      v14 = objc_msgSend_initWithReason_(v5, v11, v10, v12, v13);
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v15, v16, v17, v18))
    {
      v23 = objc_msgSend_aceId(*(a1 + 32), v19, v20, v21, v22);
      v24 = sub_233505670(@"Add Media Entity To Acoustic ID History", v23);
      v25 = *(a1 + 32);
      v26 = *(v25 + 56);
      *(v25 + 56) = v24;
    }

    v27 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(a1 + 32) + 56);
      v33 = objc_msgSend_dictionary(v14, v28, v29, v30, v31);
      v40 = 138543618;
      v41 = v32;
      v42 = 2114;
      v43 = v33;
      _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Acoustic ID History (completion) <%{public}@>: notifying assistant %{public}@", &v40, 0x16u);
    }

    v34 = *(a1 + 40);
    v39 = objc_msgSend_dictionary(v14, v35, v36, v37, v38);
    (*(v34 + 16))(v34, v39);
  }
}

void sub_2334DD4F0(uint64_t a1, CFDictionaryRef theDict)
{
  v9 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27C50]);
  v4 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27CC0]);
  objc_msgSend_longLongValue(v4, v5, v6, v7, v8);
  (*(*(a1 + 32) + 16))();
}

void sub_2334DD78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v12 = v5;
    if (sub_2335059A8(a3))
    {
      v6 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D47208]);
      v6 = objc_msgSend_initWithReason_(v7, v8, @"System media app reported failure adding track to wishlist.", v9, v10);
    }

    v11 = v6;
    (*(*(a1 + 40) + 16))();

    v5 = v12;
  }
}

void sub_2334DD974(uint64_t a1, uint64_t a2, void *a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 | v5)
  {
    v10 = objc_alloc_init(MEMORY[0x277D7FC28]);
    v11 = objc_alloc(MEMORY[0x277D7FC30]);
    v16 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v12, v13, v14, v15);
    v20 = objc_msgSend_initWithIdentity_(v11, v17, v16, v18, v19);

    objc_msgSend_setRequestContext_(v10, v21, v20, v22, v23);
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%lld", v25, v26, *(a1 + 40));
    v46[0] = v27;
    v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v46, 1, v29);
    objc_msgSend_setItemIdentifiers_(v10, v31, v30, v32, v33);

    objc_msgSend_setPersonalizationStyle_(v10, v34, 1, v35, v36);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2334DDB60;
    v42[3] = &unk_2789DAB80;
    v43 = v5;
    v37 = *(a1 + 32);
    v44 = v20;
    v45 = v37;
    v41 = objc_msgSend_performWithResponseHandler_(v10, v38, v42, v39, v40);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D47208]);
    v10 = objc_msgSend_initWithReason_(v6, v7, @"User is not signed into an iTunes account.", v8, v9);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_2334DDB60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  if (!*(a1 + 32))
  {
    v21 = objc_msgSend_allItems(v5, v6, v7, v8, v9);
    v20 = objc_msgSend_firstObject(v21, v22, v23, v24, v25);

    if (v20)
    {
      v26 = objc_alloc(MEMORY[0x277D7FA20]);
      v29 = objc_msgSend_initWithRequestContext_platformMetadataItem_(v26, v27, *(a1 + 40), v20, v28);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2334DDCF4;
      v37[3] = &unk_2789DAB58;
      v38 = *(a1 + 48);
      objc_msgSend_performWithResponseHandler_(v29, v30, v37, v31, v32);
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277D47208]);
      v29 = objc_msgSend_initWithErrorCode_(v33, v34, *MEMORY[0x277D485B8], v35, v36);
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v16 = objc_msgSend_localizedDescription(v10, v12, v13, v14, v15);
    v20 = objc_msgSend_initWithReason_(v11, v17, v16, v18, v19);

    (*(*(a1 + 48) + 16))();
LABEL_8:
  }
}

void sub_2334DDCF4(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v7 = objc_alloc(MEMORY[0x277D47208]);
      v12 = objc_msgSend_localizedDescription(v6, v8, v9, v10, v11);
      v16 = objc_msgSend_initWithReason_(v7, v13, v12, v14, v15);
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_2334DDFF8(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(a1 + 40))
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Add Media Entity To Wish List", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 56);
      *(v14 + 56) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*(a1 + 32) + 56);
      v22 = objc_msgSend_dictionary(v7, v17, v18, v19, v20);
      v29 = 138543618;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Wish List (completion) <%{public}@>: notifying assistant %{public}@", &v29, 0x16u);
    }

    v23 = *(a1 + 40);
    v28 = objc_msgSend_dictionary(v7, v24, v25, v26, v27);
    (*(v23 + 16))(v23, v28);
  }
}

void sub_2334DE164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    MEMORY[0x2821F9670](v5, sel__addRadioTrackToWishListWithStoreID_stationHash_completion_, a2, a3, v4);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v11 = objc_msgSend_initWithErrorCode_(v7, v8, *MEMORY[0x277D485B8], v9, v10);
    (*(v6 + 16))(v6, v11);
  }
}

void sub_2334DE544(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _MPLogCategoryAssistant();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[7];
      *buf = 138544130;
      v29 = @"Add Media Items To Library";
      v30 = 2114;
      v31 = v7;
      v32 = 2048;
      v33 = v8;
      v34 = 2114;
      v35 = v4;
      _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_ERROR, "%{public}@ (cloud) <%{public}@>: Failed adding %lld. %{public}@", buf, 0x2Au);
    }

    v9 = MEMORY[0x277CCACA8];
    v14 = objc_msgSend_localizedDescription(v4, v10, v11, v12, v13);
    v18 = objc_msgSend_stringWithFormat_(v9, v15, @"Failed to add store item. %@", v16, v17, v14);

    v19 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithReason_(v19, v20, v18, v21, v22);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a1[4];
      v25 = a1[7];
      *buf = 138543874;
      v29 = @"Add Media Items To Library";
      v30 = 2114;
      v31 = v24;
      v32 = 2048;
      v33 = v25;
      _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud) <%{public}@>: Added %lld.", buf, 0x20u);
    }

    v23 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  (*(a1[6] + 16))();
  v26 = a1[5];
  v27 = *(v26 + 72);
  *(v26 + 72) = 0;
}

void sub_2334DEA48(uint64_t a1, void *a2)
{
  if (sub_2335059A8(a2))
  {
    v11 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"The system media app reported that adding the track to library was unsuccessful. (trackID = %@)", v4, v5, *(a1 + 32));
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v11 = objc_msgSend_initWithReason_(v7, v8, v6, v9, v10);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334DEAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(a1 + 32);
  v5(v4, a3);
}

void sub_2334DEFF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2334DF0F0;
    v12[3] = &unk_2789DB800;
    v4 = *(a1 + 32);
    v13 = *(a1 + 40);
    objc_msgSend__requestCompanionToAddMediaItemsForOrigin_withCompletion_(v4, v5, a2, v12, v6);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v11 = objc_msgSend_initWithErrorCode_(v7, v8, *MEMORY[0x277D485B0], v9, v10);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2334DF2E4(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2334DF4F8;
    v39[3] = &unk_2789DB620;
    v39[4] = v5;
    v40 = *(a1 + 40);
    objc_msgSend__performWithCompletion_(v5, v6, v39, v7, v8);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_initWithReason_(v9, v10, @"no user identity", v11, v12);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Add Media Items To Library", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      *buf = 138543618;
      v42 = v31;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    v38 = objc_msgSend_dictionary(v13, v34, v35, v36, v37);
    (*(v33 + 16))(v33, v38);
  }
}

void sub_2334DF4F8(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Add Media Items To Library", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 56);
    v22 = objc_msgSend_dictionary(v3, v17, v18, v19, v20);
    v29 = 138543618;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (completion) <%{public}@>: notifying assistant %{public}@", &v29, 0x16u);
  }

  v23 = *(a1 + 40);
  v28 = objc_msgSend_dictionary(v3, v24, v25, v26, v27);
  (*(v23 + 16))(v23, v28);
}

void sub_2334DFF3C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = @"Add Media Items To Playlist";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud items) <%{public}@>: rewrite finished", &v7, 0x16u);
  }

  objc_msgSend__notifyAssistantWithError_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, v6, v3, *(a1 + 32), *(a1 + 40));
}

void sub_2334E0840(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = @"Add Media Items To Playlist";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud items) <%{public}@>: rewrite finished", &v7, 0x16u);
  }

  objc_msgSend__notifyAssistantWithError_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, v6, v3, *(a1 + 32), *(a1 + 40));
}

void sub_2334E1888(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), a2, a3, a4, a5))
    {
      v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
      v11 = sub_233505670(@"Add Media Items To Playlist", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 56);
      *(v12 + 56) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 56);
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: added items", &v25, 0xCu);
    }

    v16 = *(a1 + 40);
    v17 = objc_alloc_init(MEMORY[0x277D47218]);
    v22 = objc_msgSend_dictionary(v17, v18, v19, v20, v21);
    (*(v16 + 16))(v16, v22);
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = *(*(a1 + 32) + 56);

    objc_msgSend__notifyAssistantWithString_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, a2, @"Unable to add item to playlist", v24, v23);
  }
}

void sub_2334E1A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), a2, a3, a4, a5))
    {
      v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
      v11 = sub_233505670(@"Add Media Items To Playlist", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 56);
      *(v12 + 56) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 56);
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: added items", &v25, 0xCu);
    }

    v16 = *(a1 + 40);
    v17 = objc_alloc_init(MEMORY[0x277D47218]);
    v22 = objc_msgSend_dictionary(v17, v18, v19, v20, v21);
    (*(v16 + 16))(v16, v22);
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = *(*(a1 + 32) + 56);

    objc_msgSend__notifyAssistantWithString_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, a2, @"Unable to add item to playlist", v24, v23);
  }
}

void sub_2334E2150(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2334E2358;
    v39[3] = &unk_2789DBC10;
    v5 = *(a1 + 32);
    v40 = *(a1 + 40);
    objc_msgSend__appendToPlaylistWithCompletion_(v5, v6, v39, v7, v8);
    v9 = v40;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v9 = objc_msgSend_initWithReason_(v10, v11, @"no user identity", v12, v13);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Add Media Items To Playlist", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v9, v27, v28, v29, v30);
      *buf = 138543618;
      v42 = v31;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    v38 = objc_msgSend_dictionary(v9, v34, v35, v36, v37);
    (*(v33 + 16))(v33, v38);
  }
}

uint64_t sub_2334E2AB0(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = MRMediaRemoteCommandInfoCopyValueForKey();
  v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, *(a1 + 40), v5, v6);
  v11 = objc_msgSend_containsObject_(v3, v8, v7, v9, v10);

  if ((v11 & 1) == 0)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 80), v12, v13, v14, v15))
    {
      v20 = objc_msgSend_aceId(*(a1 + 32), v16, v17, v18, v19);
      v21 = sub_233505670(@"Add Media Items To Up Next Queue", v20);
      v22 = *(a1 + 32);
      v23 = *(v22 + 80);
      *(v22 + 80) = v21;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(*(a1 + 32) + 80);
      v26 = *(a1 + 40);
      v28 = 138543874;
      v29 = v25;
      v30 = 2048;
      v31 = v26;
      v32 = 2114;
      v33 = v3;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (issupported) <%{public}@>: mode %ld not in %{public}@", &v28, 0x20u);
    }
  }

  return v11;
}

void sub_2334E30DC(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334E326C;
  v6[3] = &unk_2789DB788;
  v7 = *(a1 + 32);
  objc_msgSend_setUniversalStoreIdentifiersWithBlock_(a2, v3, v6, v4, v5);
}

void sub_2334E3168(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334E31F4;
  v6[3] = &unk_2789DB788;
  v7 = *(a1 + 32);
  objc_msgSend_setUniversalStoreIdentifiersWithBlock_(a2, v3, v6, v4, v5);
}

void sub_2334E31F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v21 = objc_msgSend_identifier(v2, v4, v5, v6, v7);
  v12 = objc_msgSend_lastPathComponent(v21, v8, v9, v10, v11);
  v17 = objc_msgSend_longLongValue(v12, v13, v14, v15, v16);
  objc_msgSend_setSubscriptionAdamID_(v3, v18, v17, v19, v20);
}

void sub_2334E326C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v16 = objc_msgSend_identifier(v2, v4, v5, v6, v7);
  v12 = objc_msgSend_lastPathComponent(v16, v8, v9, v10, v11);
  objc_msgSend_setGlobalPlaylistID_(v3, v13, v12, v14, v15);
}

void sub_2334E385C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 80), a2, a3, a4, a5))
  {
    v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
    v12 = sub_233505670(@"Add Media Items To Up Next Queue", v11);
    v13 = *(a1 + 32);
    v14 = *(v13 + 80);
    *(v13 + 80) = v12;
  }

  v15 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = v20[10];
    v22 = objc_msgSend_insertLocation(v20, v16, v17, v18, v19);
    *buf = 138543874;
    v76 = v21;
    v77 = 2114;
    v78 = v22;
    v79 = 2114;
    v80 = a2;
    _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: mode %{public}@ to origin %{public}@", buf, 0x20u);
  }

  v27 = objc_msgSend_mediaCollection(*(a1 + 32), v23, v24, v25, v26);
  v28 = *(a1 + 32);
  v74 = 0;
  v31 = objc_msgSend__createPlaybackQueueWithCollection_error_(v28, v29, v27, &v74, v30);
  v36 = v74;
  v37 = *(a1 + 32);
  if (v31)
  {
    v38 = objc_msgSend_insertLocation(v37, v32, v33, v34, v35);
    if ((objc_msgSend_isEqualToString_(v38, v39, *MEMORY[0x277D48578], v40, v41) & 1) == 0 && (objc_msgSend_isEqualToString_(v38, v42, *MEMORY[0x277D48588], v43, v44) & 1) == 0)
    {
      objc_msgSend_isEqualToString_(v38, v66, *MEMORY[0x277D48580], v67, v68);
    }

    objc_msgSend_createRemotePlaybackQueue(v31, v69, v70, v71, v72);
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    if (a2)
    {
      CFRetain(a2);
    }

    v73 = *(a1 + 40);
    MRMediaRemoteGetSupportedCommandsForOrigin();
  }

  else
  {
    if (!objc_msgSend_length(v37[10], v32, v33, v34, v35))
    {
      v49 = objc_msgSend_aceId(*(a1 + 32), v45, v46, v47, v48);
      v50 = sub_233505670(@"Add Media Items To Up Next Queue", v49);
      v51 = *(a1 + 32);
      v52 = *(v51 + 80);
      *(v51 + 80) = v50;
    }

    v53 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = *(*(a1 + 32) + 80);
      *buf = 138543618;
      v76 = v54;
      v77 = 2114;
      v78 = v36;
      _os_log_impl(&dword_2334D9000, v53, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (perform) <%{public}@>: playback queue creation failed %{public}@", buf, 0x16u);
    }

    v55 = objc_alloc(MEMORY[0x277D47208]);
    v59 = objc_msgSend_initWithErrorCode_(v55, v56, *MEMORY[0x277D48638], v57, v58);
    v60 = *(a1 + 40);
    v65 = objc_msgSend_dictionary(v59, v61, v62, v63, v64);
    (*(v60 + 16))(v60, v65);
  }
}

void sub_2334E3BEC(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27830]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334E4380;
  v8[3] = &unk_2789DACE8;
  v9 = v4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = v4;
  objc_msgSend_connectToEndpoint_completion_(v5, v6, a2, v8, v7);
}

void sub_2334E3CC0(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = dispatch_queue_create("com.apple.MPAssistantAddMediaItemsToUpNextQueue", 0);
    v4 = a1[7];
    MRMediaRemoteGetActiveOrigin();
  }

  else
  {
    v5 = a1[5];
    v6 = a1[6];
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }
}

void sub_2334E3DF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = v3;
    v10 = objc_msgSend_allKeys(a2, v6, v7, v8, v9);
    v11 = objc_alloc_init(MEMORY[0x277D27838]);
    v12 = *(a1 + 40);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;

    v14 = *(*(a1 + 40) + 56);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2334E3F40;
    v29[3] = &unk_2789DAD60;
    v30 = *(a1 + 48);
    v31 = *(a1 + 56);
    objc_msgSend_discoverRemoteControlEndpointsMatchingUIDs_completion_(v14, v15, v10, v29, v16);
  }

  else
  {
    v17 = MEMORY[0x277D47208];
    v18 = v3;
    v19 = [v17 alloc];
    v10 = objc_msgSend_initWithReason_(v19, v20, @"UID decoding error", v21, v22);
    v23 = *(a1 + 48);
    v28 = objc_msgSend_dictionary(v10, v24, v25, v26, v27);
    (*(v23 + 16))(v23, v28);
  }
}

void sub_2334E3F40(uint64_t a1, void *a2)
{
  v32 = a2;
  if (objc_msgSend_count(v32, v3, v4, v5, v6) < 2)
  {
    if (objc_msgSend_count(v32, v7, v8, v9, v10))
    {
      v24 = *(a1 + 40);
      v25 = objc_msgSend_firstObject(v32, v20, v21, v22, v23);
      (*(v24 + 16))(v24, v25);
      goto LABEL_7;
    }

    v26 = objc_alloc(MEMORY[0x277D47208]);
    v15 = objc_msgSend_initWithReason_(v26, v27, @"No endpoints found", v28, v29);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v15 = objc_msgSend_initWithReason_(v11, v12, @"Too many endpoints requested", v13, v14);
  }

  v25 = v15;
  v30 = *(a1 + 32);
  v31 = objc_msgSend_dictionary(v15, v16, v17, v18, v19);
  (*(v30 + 16))(v30, v31);

LABEL_7:
}

void sub_2334E4030(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 80), v6, v7, v8, v9))
    {
      v63 = objc_msgSend_aceId(*(a1 + 32), v59, v60, v61, v62);
      v64 = sub_233505670(@"Add Media Items To Up Next Queue", v63);
      v65 = *(a1 + 32);
      v66 = *(v65 + 80);
      *(v65 + 80) = v64;
    }

    v28 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v67 = *(*(a1 + 32) + 80);
    v70 = 138543618;
    v71 = v67;
    v72 = 2114;
    v73 = a2;
    v30 = "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader endpoint %{public}@";
    v31 = v28;
    v32 = 22;
    goto LABEL_17;
  }

  if (objc_msgSend_code(v5, v6, v7, v8, v9) == 33)
  {
    v15 = objc_msgSend_domain(v10, v11, v12, v13, v14);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D27AE0], v17, v18);

    if (isEqualToString)
    {
      if (!objc_msgSend_length(*(*(a1 + 32) + 80), v11, v12, v13, v14))
      {
        v24 = objc_msgSend_aceId(*(a1 + 32), v20, v21, v22, v23);
        v25 = sub_233505670(@"Add Media Items To Up Next Queue", v24);
        v26 = *(a1 + 32);
        v27 = *(v26 + 80);
        *(v26 + 80) = v25;
      }

      v28 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v29 = *(*(a1 + 32) + 80);
      v70 = 138543362;
      v71 = v29;
      v30 = "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader legacy";
      v31 = v28;
      v32 = 12;
LABEL_17:
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_DEFAULT, v30, &v70, v32);
LABEL_18:

      (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v68, v69);
      goto LABEL_19;
    }
  }

  if (!objc_msgSend_length(*(*(a1 + 32) + 80), v11, v12, v13, v14))
  {
    v37 = objc_msgSend_aceId(*(a1 + 32), v33, v34, v35, v36);
    v38 = sub_233505670(@"Add Media Items To Up Next Queue", v37);
    v39 = *(a1 + 32);
    v40 = *(v39 + 80);
    *(v39 + 80) = v38;
  }

  v41 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = *(*(a1 + 32) + 80);
    v70 = 138543618;
    v71 = v42;
    v72 = 2114;
    v73 = v10;
    _os_log_impl(&dword_2334D9000, v41, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader endpoint not found %{public}@", &v70, 0x16u);
  }

  v43 = objc_alloc(MEMORY[0x277D47208]);
  v48 = objc_msgSend_localizedFailureReason(v10, v44, v45, v46, v47);
  v52 = objc_msgSend_initWithReason_(v43, v49, v48, v50, v51);

  v53 = *(a1 + 48);
  v58 = objc_msgSend_dictionary(v52, v54, v55, v56, v57);
  (*(v53 + 16))(v53, v58);

LABEL_19:
}

void sub_2334E4380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  v23 = v5;
  if (a4)
  {
    v6 = MEMORY[0x277D47208];
    v7 = v5;
    v8 = [v6 alloc];
    v12 = objc_msgSend_initWithReason_(v8, v9, @"Failed to connect to endpoint", v10, v11);
    v13 = a1[6];
    v18 = objc_msgSend_dictionary(v12, v14, v15, v16, v17);
    (*(v13 + 16))(v13, v18);
  }

  else
  {
    v20 = a1[5];
    v21 = *(v20 + 16);
    v22 = v5;
    v21(v20, a3);
  }
}

void sub_2334E4444(uint64_t a1, const char *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  if (objc_msgSend__isInsertionPositionSupported_origin_supportedCommands_(*(a1 + 32), a2, *(a1 + 64), *(a1 + 48), a2))
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 80), v3, v4, v5, v6))
    {
      v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
      v12 = sub_233505670(@"Add Media Items To Up Next Queue", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 80);
      *(v13 + 80) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 32) + 80);
      v17 = *(a1 + 48);
      *buf = 138543618;
      v62 = v16;
      v63 = 2112;
      v64 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: sending add request to %@", buf, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = *(*(a1 + 32) + 64);
    v60 = 0;
    v21 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v20, v19, 1, &v60);
    v22 = v60;
    v27 = objc_msgSend_length(*(*(a1 + 32) + 80), v23, v24, v25, v26);
    if (v22)
    {
      if (!v27)
      {
        v32 = objc_msgSend_aceId(*(a1 + 32), v28, v29, v30, v31);
        v33 = sub_233505670(@"Add Media Items To Up Next Queue", v32);
        v34 = *(a1 + 32);
        v35 = *(v34 + 80);
        *(v34 + 80) = v33;
      }

      v36 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(*(a1 + 32) + 80);
        *buf = 138543618;
        v62 = v37;
        v63 = 2114;
        v64 = v22;
        _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: could not encode user identity: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (!v27)
      {
        v49 = objc_msgSend_aceId(*(a1 + 32), v28, v29, v30, v31);
        v50 = sub_233505670(@"Add Media Items To Up Next Queue", v49);
        v51 = *(a1 + 32);
        v52 = *(v51 + 80);
        *(v51 + 80) = v50;
      }

      v53 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(*(a1 + 32) + 80);
        *buf = 138543619;
        v62 = v54;
        v63 = 2113;
        v64 = v21;
        _os_log_impl(&dword_2334D9000, v53, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: user identity set to: %{private}@", buf, 0x16u);
      }

      objc_msgSend_setObject_forKey_(v18, v55, v21, *MEMORY[0x277D27E18], v56);
    }

    v57 = *(*(a1 + 32) + 72);
    if (v57)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v38, v57, *MEMORY[0x277D27DA8], v39);
    }

    v59 = *(a1 + 40);
    MRMediaRemoteInsertSystemAppPlaybackQueueWithOptions();
  }

  else
  {
    v40 = objc_alloc(MEMORY[0x277D47208]);
    v18 = objc_msgSend_initWithErrorCode_(v40, v41, *MEMORY[0x277D486E8], v42, v43);
    v44 = *(a1 + 40);
    v22 = objc_msgSend_dictionary(v18, v45, v46, v47, v48);
    (*(v44 + 16))(v44, v22);
  }

  MRSystemAppPlaybackQueueDestroy();
  v58 = *(a1 + 48);
  if (v58)
  {
    CFRelease(v58);
  }
}

void sub_2334E4848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"MediaRemote command failed. err = %ld", v6, v7, a2);
    v18 = objc_msgSend_initWithReason_(v4, v9, v8, v10, v11);
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  v16 = *(a1 + 32);
  v17 = objc_msgSend_dictionary(v18, v12, v13, v14, v15);
  (*(v16 + 16))(v16, v17);
}

void sub_2334E4B78(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    objc_storeStrong((*(a1 + 32) + 72), a3);
    v8 = *(a1 + 32);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2334E4DBC;
    v42[3] = &unk_2789DB2D8;
    v42[4] = v8;
    v43 = *(a1 + 40);
    objc_msgSend__perform_(v8, v9, v42, v10, v11);
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v16 = objc_msgSend_initWithReason_(v12, v13, @"no user identity", v14, v15);
    if (!objc_msgSend_length(*(*(a1 + 32) + 80), v17, v18, v19, v20))
    {
      v25 = objc_msgSend_aceId(*(a1 + 32), v21, v22, v23, v24);
      v26 = sub_233505670(@"Add Media Items To Up Next Queue", v25);
      v27 = *(a1 + 32);
      v28 = *(v27 + 80);
      *(v27 + 80) = v26;
    }

    v29 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(a1 + 32) + 80);
      v35 = objc_msgSend_dictionary(v16, v30, v31, v32, v33);
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v36 = *(a1 + 40);
    v41 = objc_msgSend_dictionary(v16, v37, v38, v39, v40);
    (*(v36 + 16))(v36, v41);
  }
}

void sub_2334E4DBC(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 80), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Add Media Items To Up Next Queue", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 80);
    *(v14 + 80) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 80);
    v18 = 138543618;
    v19 = v17;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334E5188(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = objc_msgSend_mutableCopy(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_groupID(*(a1 + 40), v10, v11, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"LOCAL_DEVICE", v16, v17);

  if (isEqualToString)
  {
    v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_groupID(*(a1 + 40), v19, v20, v21, v22);
    v28 = objc_msgSend_allKeysForObject_(v9, v25, v24, v26, v27);
    v23 = objc_msgSend_firstObject(v28, v29, v30, v31, v32);

    if ((*(a1 + 56) & 1) == 0)
    {
      objc_msgSend_removeObjectForKey_(v9, v19, v23, v21, v22);
    }
  }

  v33 = objc_msgSend_allKeys(v9, v19, v20, v21, v22);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), v39, v40, v41, v42);
  v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

  if (v38 == v48)
  {
    v79 = *(a1 + 48);
    MRAVEndpointAddOutputDevicesToGroupFromSource();
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277D47208]);
    v53 = objc_msgSend_initWithReason_(v49, v50, @"UID decoding error", v51, v52);
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v54, v55, v56, v57))
    {
      v62 = objc_msgSend_aceId(*(a1 + 40), v58, v59, v60, v61);
      v63 = sub_233505670(@"Add Output Devices To Group", v62);
      v64 = *(a1 + 40);
      v65 = *(v64 + 56);
      *(v64 + 56) = v63;
    }

    v66 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v71 = *(*(a1 + 40) + 56);
      v72 = objc_msgSend_dictionary(v53, v67, v68, v69, v70);
      *buf = 138543618;
      v81 = v71;
      v82 = 2114;
      v83 = v72;
      _os_log_impl(&dword_2334D9000, v66, OS_LOG_TYPE_ERROR, "Add Output Devices To Group (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v73 = *(a1 + 48);
    v78 = objc_msgSend_dictionary(v53, v74, v75, v76, v77);
    (*(v73 + 16))(v73, v78);
  }
}

void sub_2334E5474(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v9 = objc_msgSend_localizedFailureReason(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_initWithReason_(v4, v10, v9, v11, v12);

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Add Output Devices To Group", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      v61 = 138543618;
      v62 = v31;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v33, v34, "Add Output Devices To Group (completion) <%{public}@>: notifying assistant %{public}@", &v61, 0x16u);
    }
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D475D0]);
    objc_msgSend_setRouteResponse_(v13, v35, *MEMORY[0x277D48678], v36, v37);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v38, v39, v40, v41))
    {
      v46 = objc_msgSend_aceId(*(a1 + 32), v42, v43, v44, v45);
      v47 = sub_233505670(@"Add Output Devices To Group", v46);
      v48 = *(a1 + 32);
      v49 = *(v48 + 56);
      *(v48 + 56) = v47;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v50, v51, v52, v53);
      v61 = 138543618;
      v62 = v54;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v55 = *(a1 + 40);
  v60 = objc_msgSend_dictionary(v13, v56, v57, v58, v59);
  (*(v55 + 16))(v55, v60);
}

void sub_2334E5C54(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27850]);
  objc_msgSend_setOrigin_(v4, v5, a2, v6, v7);
  v8 = objc_alloc_init(MEMORY[0x277D27828]);
  v9 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334E6730;
  v15[3] = &unk_2789DBB98;
  v16 = v8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v19 = v10;
  v17 = v11;
  v18 = v12;
  v13 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v13, v14, 121, v4, v9, v15);
}

void sub_2334E5D54(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27830]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334E64A4;
  v10[3] = &unk_2789DAE00;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = v4;
  objc_msgSend_connectToEndpoint_completion_(v7, v8, a2, v10, v9);
}

void sub_2334E5E28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }
}

void sub_2334E5F04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v8 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334E5FE0;
  v10[3] = &unk_2789DB418;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v7, v9, v8, v5, v10);
}

void sub_2334E5FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334E6084;
  v6[3] = &unk_2789DAEA0;
  v7 = *(a1 + 48);
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v3, v5, 121, a2, v4, v6);
}

void sub_2334E6084(uint64_t a1, void *a2)
{
  v20 = a2;
  v7 = objc_alloc_init(MEMORY[0x277D47218]);
  if (v20)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_localizedFailureReason(v20, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithReason_(v8, v14, v13, v15, v16);

    v7 = v17;
  }

  v18 = *(a1 + 32);
  v19 = objc_msgSend_dictionary(v7, v3, v4, v5, v6);
  (*(v18 + 16))(v18, v19);
}

void sub_2334E6154(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v6, v7, v8, v9))
    {
      v76 = objc_msgSend_aceId(*(a1 + 32), v72, v73, v74, v75);
      v77 = sub_233505670(@"Create Radio Station", v76);
      v78 = *(a1 + 32);
      v79 = *(v78 + 56);
      *(v78 + 56) = v77;
    }

    v32 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v80 = *(*(a1 + 32) + 56);
    v83 = 138543618;
    v84 = v80;
    v85 = 2114;
    v86 = a2;
    v34 = "Create Radio Station (perform) <%{public}@>: group leader endpoint %{public}@";
    v35 = v32;
    v36 = 22;
    goto LABEL_17;
  }

  if (objc_msgSend_code(v5, v6, v7, v8, v9) == 33)
  {
    v15 = objc_msgSend_domain(v10, v11, v12, v13, v14);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D27AE0], v17, v18);

    if (isEqualToString)
    {
      if (!objc_msgSend_length(*(*(a1 + 32) + 56), v20, v21, v22, v23))
      {
        v28 = objc_msgSend_aceId(*(a1 + 32), v24, v25, v26, v27);
        v29 = sub_233505670(@"Create Radio Station", v28);
        v30 = *(a1 + 32);
        v31 = *(v30 + 56);
        *(v30 + 56) = v29;
      }

      v32 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v33 = *(*(a1 + 32) + 56);
      v83 = 138543362;
      v84 = v33;
      v34 = "Create Radio Station (perform) <%{public}@>: group leader legacy";
      v35 = v32;
      v36 = 12;
LABEL_17:
      _os_log_impl(&dword_2334D9000, v35, OS_LOG_TYPE_DEFAULT, v34, &v83, v36);
LABEL_18:

      (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v81, v82);
      goto LABEL_19;
    }
  }

  v37 = objc_alloc(MEMORY[0x277D47208]);
  v42 = objc_msgSend_localizedFailureReason(v10, v38, v39, v40, v41);
  v46 = objc_msgSend_initWithReason_(v37, v43, v42, v44, v45);

  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v47, v48, v49, v50))
  {
    v55 = objc_msgSend_aceId(*(a1 + 32), v51, v52, v53, v54);
    v56 = sub_233505670(@"Create Radio Station", v55);
    v57 = *(a1 + 32);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v64 = *(*(a1 + 32) + 56);
    v65 = objc_msgSend_dictionary(v46, v60, v61, v62, v63);
    v83 = 138543618;
    v84 = v64;
    v85 = 2114;
    v86 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", &v83, 0x16u);
  }

  v66 = *(a1 + 48);
  v71 = objc_msgSend_dictionary(v46, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

LABEL_19:
}

void sub_2334E64A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v11 = *(a1 + 32);
  if (v6)
  {
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v17 = objc_msgSend_localizedFailureReason(v6, v13, v14, v15, v16);
    v21 = objc_msgSend_initWithReason_(v12, v18, v17, v19, v20);

    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v22, v23, v24, v25))
    {
      v30 = objc_msgSend_aceId(*(a1 + 40), v26, v27, v28, v29);
      v31 = sub_233505670(@"Create Radio Station", v30);
      v32 = *(a1 + 40);
      v33 = *(v32 + 56);
      *(v32 + 56) = v31;
    }

    v34 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(a1 + 40) + 56);
      v40 = objc_msgSend_dictionary(v21, v35, v36, v37, v38);
      v57 = 138543618;
      v58 = v39;
      v59 = 2114;
      v60 = v40;
      _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", &v57, 0x16u);
    }

    v41 = *(a1 + 56);
    v46 = objc_msgSend_dictionary(v21, v42, v43, v44, v45);
    (*(v41 + 16))(v41, v46);
  }

  else
  {
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v7, v8, v9, v10))
    {
      v51 = objc_msgSend_aceId(*(a1 + 40), v47, v48, v49, v50);
      v52 = sub_233505670(@"Create Radio Station", v51);
      v53 = *(a1 + 40);
      v54 = *(v53 + 56);
      *(v53 + 56) = v52;
    }

    v55 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *(*(a1 + 40) + 56);
      v57 = 138543618;
      v58 = v56;
      v59 = 2114;
      v60 = a2;
      _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Create Radio Station (connection) <%{public}@>: connected to: %{public}@", &v57, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2334E6730(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (sub_2335059A8(a3))
    {
      v9 = objc_alloc_init(MEMORY[0x277D47218]);
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v10, v11, v12, v13))
      {
        v18 = objc_msgSend_aceId(*(a1 + 40), v14, v15, v16, v17);
        v19 = sub_233505670(@"Create Radio Station", v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 56);
        *(v20 + 56) = v19;
      }

      v22 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v27 = *(*(a1 + 40) + 56);
      v28 = objc_msgSend_dictionary(v9, v23, v24, v25, v26);
      *buf = 138543618;
      v58 = v27;
      v59 = 2114;
      v60 = v28;
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    else
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"The system media app reported that creating the station was unsuccessful. (stationURL = %@)", v7, v8, *(a1 + 48));
      v29 = objc_alloc(MEMORY[0x277D47208]);
      v9 = objc_msgSend_initWithReason_(v29, v30, v22, v31, v32);
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v33, v34, v35, v36))
      {
        v41 = objc_msgSend_aceId(*(a1 + 40), v37, v38, v39, v40);
        v42 = sub_233505670(@"Create Radio Station", v41);
        v43 = *(a1 + 40);
        v44 = *(v43 + 56);
        *(v43 + 56) = v42;
      }

      v28 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v49 = *(*(a1 + 40) + 56);
        v50 = objc_msgSend_dictionary(v9, v45, v46, v47, v48);
        *buf = 138543618;
        v58 = v49;
        v59 = 2114;
        v60 = v50;
        _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
      }
    }

LABEL_12:
    v51 = *(a1 + 56);
    v56 = objc_msgSend_dictionary(v9, v52, v53, v54, v55);
    (*(v51 + 16))(v51, v56);
  }
}

void sub_2334E6C8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334E6DA4;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334E6DA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334E6E74;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 19, a2, v5, v10);
}

void sub_2334E6E74(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Decrease Playback Speed", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (sub_2335059A8(v4))
  {
    v31 = objc_alloc_init(MEMORY[0x277D47218]);
LABEL_5:
    v43 = v31;
    goto LABEL_7;
  }

  if (objc_msgSend_containsObject_(v4, v28, &unk_2848D8C28, v29, v30))
  {
    v39 = objc_alloc(MEMORY[0x277D47208]);
    v31 = objc_msgSend_initWithErrorCode_(v39, v40, *MEMORY[0x277D486F0], v41, v42);
    goto LABEL_5;
  }

  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"player statuses: %@", v37, v38, v4);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v45, MEMORY[0x277CBEC28], @"success", v46);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v44, @"errorstring", v48);
  v49 = objc_alloc(MEMORY[0x277D47208]);
  v43 = objc_msgSend_initWithReason_(v49, v50, v44, v51, v52);

LABEL_7:
  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v32, v33, v34, v35))
  {
    v57 = objc_msgSend_aceId(*(a1 + 48), v53, v54, v55, v56);
    v58 = sub_233505670(@"Decrease Playback Speed", v57);
    v59 = *(a1 + 48);
    v60 = *(v59 + 56);
    *(v59 + 56) = v58;
  }

  v61 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(*(a1 + 48) + 56);
    v67 = objc_msgSend_dictionary(v43, v62, v63, v64, v65);
    *buf = 138543618;
    v77 = v66;
    v78 = 2114;
    v79 = v67;
    _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "Decrease Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v68 = *(a1 + 56);
  v73 = objc_msgSend_dictionary(v43, v69, v70, v71, v72);
  (*(v68 + 16))(v68, v73);

  v75 = v10;
  v74 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334E72B8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Dislikes Media Entity", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 56);
    v18 = 138543618;
    v19 = v17;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334E7594(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2334E77A8;
    v39[3] = &unk_2789DB2D8;
    v39[4] = v5;
    v40 = *(a1 + 40);
    objc_msgSend__performWithCompletion_(v5, v6, v39, v7, v8);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_initWithReason_(v9, v10, @"no user identity", v11, v12);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Dislikes Media Entity", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      *buf = 138543618;
      v42 = v31;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    v38 = objc_msgSend_dictionary(v13, v34, v35, v36, v37);
    (*(v33 + 16))(v33, v38);
  }
}

void sub_2334E77A8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Dislikes Media Entity", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 56);
    v18 = 138543618;
    v19 = v17;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334E7C10(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334E7CE0;
  v7[3] = &unk_2789DAEC8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  sub_233507BFC(@"Get Dynamite Client State", v4, 0, a2, v7);
}

uint64_t sub_2334E7CE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  objc_msgSend_setClientState_(*(a1 + 32), a2, a2, a4, a5);
  if (!objc_msgSend_length(*(*(a1 + 40) + 56), v6, v7, v8, v9))
  {
    v14 = objc_msgSend_aceId(*(a1 + 40), v10, v11, v12, v13);
    v15 = sub_233505670(@"Get Dynamite Client State", v14);
    v16 = *(a1 + 40);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant_Oversize();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(a1 + 40) + 56);
    v24 = objc_msgSend_dictionary(*(a1 + 32), v19, v20, v21, v22);
    v32 = 138543619;
    v33 = v23;
    v34 = 2113;
    v35 = v24;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Get Dynamite Client State (completion) <%{public}@>: notifying assistant %{private}@", &v32, 0x16u);
  }

  v25 = *(a1 + 48);
  v30 = objc_msgSend_dictionary(*(a1 + 32), v26, v27, v28, v29);
  (*(v25 + 16))(v25, v30);

  return ICSiriPostDynamiteClientStateChangedNotification();
}

void sub_2334E81E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v5, v6, *(a1 + 48), v7, v8);
  if (!a3 && MRPlaybackQueueGetContentItemsCount())
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = MRPlaybackQueueCopyContentItems();
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = MRContentItemCopyNowPlayingInfo();
          v17 = sub_2335051C8(v16);
          objc_msgSend_addObject_(v9, v18, v17, v19, v20, v22);

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v21, &v22, v26, 16);
      }

      while (v13);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2334E8A14(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = objc_msgSend_allKeys(a2, v5, v6, v7, v8);
  if (a2)
  {
    v10 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    dispatch_group_enter(*(a1 + 48));
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v10);

    v11 = v41;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v11 = objc_msgSend_initWithReason_(v12, v13, @"UID decoding error", v14, v15);
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v16, v17, v18, v19))
    {
      v24 = objc_msgSend_aceId(*(a1 + 40), v20, v21, v22, v23);
      v25 = sub_233505670(@"Get Now Playing Queue Details", v24);
      v26 = *(a1 + 40);
      v27 = *(v26 + 56);
      *(v26 + 56) = v25;
    }

    v28 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = *(*(a1 + 40) + 56);
      v34 = objc_msgSend_dictionary(v11, v29, v30, v31, v32);
      *buf = 138543618;
      v44 = v33;
      v45 = 2114;
      v46 = v34;
      _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v35 = *(a1 + 56);
    v40 = objc_msgSend_dictionary(v11, v36, v37, v38, v39);
    (*(v35 + 16))(v35, v40);
  }
}

void sub_2334E8C80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), a2, a3, a4, a5))
    {
      v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
      v12 = sub_233505670(@"Get Now Playing Queue Details", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 56);
      v17 = 138543618;
      v18 = v16;
      v19 = 2114;
      v20 = a2;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (default) <%{public}@>: leader %{public}@", &v17, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = MRAVEndpointCopyOrigin();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = MRMediaRemoteGetLocalOrigin();
    CFRetain(*(*(*(a1 + 48) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2334E8DD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setPreviousItems_(*(a1 + 32), a2, a2, a4, a5);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_2334E8E18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setNextItems_(*(a1 + 32), a2, a2, a4, a5);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_2334E8E58(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  CFRelease(*(*(*(a1 + 56) + 8) + 24));
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v2, v3, v4, v5))
  {
    v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
    v11 = sub_233505670(@"Get Now Playing Queue Details", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 56);
    v20 = objc_msgSend_dictionary(*(a1 + 40), v15, v16, v17, v18);
    v27 = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", &v27, 0x16u);
  }

  v21 = *(a1 + 48);
  v26 = objc_msgSend_dictionary(*(a1 + 40), v22, v23, v24, v25);
  (*(v21 + 16))(v21, v26);
}

void sub_2334E8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFRelease(*(a1 + 64));
  if (a4)
  {
    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D27830]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2334E90E4;
    v16[3] = &unk_2789DAF18;
    v17 = v8;
    v9 = *(a1 + 56);
    *&v10 = *(a1 + 32);
    *(&v10 + 1) = *(a1 + 40);
    v15 = v10;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v9;
    v18 = v15;
    v19 = v11;
    v12 = v8;
    objc_msgSend_connectToEndpoint_completion_(v12, v13, a3, v16, v14);
  }
}

void sub_2334E90E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_localizedFailureReason(v6, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithReason_(v8, v14, v13, v15, v16);

    if (!objc_msgSend_length(*(*(a1 + 48) + 56), v18, v19, v20, v21))
    {
      v26 = objc_msgSend_aceId(*(a1 + 48), v22, v23, v24, v25);
      v27 = sub_233505670(@"Get Now Playing Queue Details", v26);
      v28 = *(a1 + 48);
      v29 = *(v28 + 56);
      *(v28 + 56) = v27;
    }

    v30 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = *(*(a1 + 48) + 56);
      v36 = objc_msgSend_dictionary(v17, v31, v32, v33, v34);
      v43 = 138543618;
      v44 = v35;
      v45 = 2114;
      v46 = v36;
      _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", &v43, 0x16u);
    }

    v37 = *(a1 + 56);
    v42 = objc_msgSend_dictionary(v17, v38, v39, v40, v41);
    (*(v37 + 16))(v37, v42);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = a3;
    CFRetain(*(*(*(a1 + 64) + 8) + 24));
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_2334E9660(id *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v9 = objc_msgSend_allKeys(a2, v5, v6, v7, v8);
  if (a2)
  {
    v10 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    v41 = a1[6];
    v42 = a1[7];
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v10);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v15 = objc_msgSend_initWithReason_(v11, v12, @"UID decoding error", v13, v14);
    if (!objc_msgSend_length(*(a1[5] + 7), v16, v17, v18, v19))
    {
      v24 = objc_msgSend_aceId(a1[5], v20, v21, v22, v23);
      v25 = sub_233505670(@"Get Now Playing Queue Details Remote", v24);
      v26 = a1[5];
      v27 = v26[7];
      v26[7] = v25;
    }

    v28 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1[5] + 7);
      v34 = objc_msgSend_dictionary(v15, v29, v30, v31, v32);
      *buf = 138543618;
      v44 = v33;
      v45 = 2114;
      v46 = v34;
      _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v35 = a1[7];
    v40 = objc_msgSend_dictionary(v15, v36, v37, v38, v39);
    v35[2](v35, v40);
  }
}

void sub_2334E98A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v12 = objc_msgSend_localizedFailureReason(v6, v8, v9, v10, v11);
    v16 = objc_msgSend_initWithReason_(v7, v13, v12, v14, v15);

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v17, v18, v19, v20))
    {
      v25 = objc_msgSend_aceId(*(a1 + 32), v21, v22, v23, v24);
      v26 = sub_233505670(@"Get Now Playing Queue Details Remote", v25);
      v27 = *(a1 + 32);
      v28 = *(v27 + 56);
      *(v27 + 56) = v26;
    }

    v29 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v34 = *(*(a1 + 32) + 56);
      v35 = objc_msgSend_dictionary(v16, v30, v31, v32, v33);
      *buf = 138543618;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v36 = *(a1 + 48);
    v41 = objc_msgSend_dictionary(v16, v37, v38, v39, v40);
    (*(v36 + 16))(v36, v41);
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x277D27830]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2334E9AE8;
    v47[3] = &unk_2789DB030;
    v43 = *(a1 + 32);
    v44 = *(a1 + 40);
    v48 = v42;
    v49 = v43;
    v50 = v44;
    v51 = *(a1 + 48);
    v16 = v42;
    objc_msgSend_connectToEndpoint_completion_(v16, v45, a3, v47, v46);

    v41 = v48;
  }
}

void sub_2334E9AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = objc_msgSend_queueDetails(v5, v7, v8, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x277D475D8]);
  dispatch_group_enter(*(a1 + 48));
  v17 = -objc_msgSend_previousItemCount(v11, v13, v14, v15, v16);
  v22 = objc_msgSend_previousItemCount(v11, v18, v19, v20, v21);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2334E9D1C;
  v40[3] = &unk_2789DB008;
  v23 = v12;
  v41 = v23;
  v42 = *(a1 + 48);
  objc_msgSend_getSAMPMediaItems_origin_completion_(v11, v24, v17, v22, a3, v40);
  dispatch_group_enter(*(a1 + 48));
  ItemCount = objc_msgSend_nextItemCount(v11, v25, v26, v27, v28);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2334E9D5C;
  v37[3] = &unk_2789DB008;
  v30 = v23;
  v38 = v30;
  v39 = *(a1 + 48);
  objc_msgSend_getSAMPMediaItems_origin_completion_(v11, v31, 0, ItemCount, a3, v37);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334E9D9C;
  block[3] = &unk_2789DB120;
  v32 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v35 = v30;
  v36 = *(a1 + 56);
  v33 = v30;
  dispatch_group_notify(v32, MEMORY[0x277D85CD0], block);
}

void sub_2334E9D1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setPreviousItems_(*(a1 + 32), a2, a2, a4, a5);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_2334E9D5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setNextItems_(*(a1 + 32), a2, a2, a4, a5);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_2334E9D9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), a2, a3, a4, a5))
  {
    v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
    v11 = sub_233505670(@"Get Now Playing Queue Details Remote", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 56);
    v20 = objc_msgSend_dictionary(*(a1 + 40), v15, v16, v17, v18);
    v27 = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", &v27, 0x16u);
  }

  v21 = *(a1 + 48);
  v26 = objc_msgSend_dictionary(*(a1 + 40), v22, v23, v24, v25);
  (*(v21 + 16))(v21, v26);
}

void sub_2334EA1B0(uint64_t a1, void *a2)
{
  v36 = a2;
  v3 = sub_2335051C8(v36);
  v7 = objc_msgSend_objectForKeyedSubscript_(v36, v4, *MEMORY[0x277D27C30], v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277D27AF8], v9, v10);
  v12 = MEMORY[0x277D48608];
  if (!isEqualToString)
  {
    v12 = MEMORY[0x277D48600];
  }

  v13 = *v12;
  objc_msgSend_setListeningToItem_(*(a1 + 32), v14, v3, v15, v16);
  objc_msgSend_setSource_(*(a1 + 32), v17, v13, v18, v19);
  v23 = objc_msgSend_objectForKeyedSubscript_(v36, v20, *MEMORY[0x277D27C28], v21, v22);
  v28 = objc_msgSend_BOOLValue(v23, v24, v25, v26, v27);

  v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, v28, v30, v31);
  objc_msgSend_setListeningToMusicApplication_(*(a1 + 32), v33, v32, v34, v35);

  dispatch_group_leave(*(a1 + 40));
}

void sub_2334EA2DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 - 1) > 4)
  {
    objc_msgSend_setState_(*(a1 + 32), a2, 0, a4, a5);
  }

  else
  {
    objc_msgSend_setState_(*(a1 + 32), a2, dword_2335115C0[a2 - 1], a4, a5);
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_2334EA338(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), a2, a3, a4, a5))
  {
    v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
    v11 = sub_233505670(@"Get State", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 56);
    v20 = objc_msgSend_dictionary(*(a1 + 40), v15, v16, v17, v18);
    v27 = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Get State (completion) <%{public}@>: notifying assistant %{public}@", &v27, 0x16u);
  }

  v21 = *(a1 + 48);
  v26 = objc_msgSend_dictionary(*(a1 + 40), v22, v23, v24, v25);
  (*(v21 + 16))(v21, v26);
}

void sub_2334EABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v58 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334EAC10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334EAC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
  v10 = objc_msgSend_length(*(*(a1 + 32) + 104), v6, v7, v8, v9);
  if (a3)
  {
    if (!v10)
    {
      v15 = objc_msgSend_aceId(*(a1 + 32), v11, v12, v13, v14);
      v16 = sub_233505670(@"Get State Response Remote", v15);
      v17 = *(a1 + 32);
      v18 = *(v17 + 104);
      *(v17 + 104) = v16;
    }

    v19 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = *(*(a1 + 32) + 104);
      v31 = 138543874;
      v32 = v21;
      v33 = 2114;
      v34 = a3;
      v35 = 2114;
      v36 = v20;
      _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_ERROR, "Get State Response Remote (playinginfo) <%{public}@>: no queue %{public}@ endpoint %{public}@", &v31, 0x20u);
    }
  }

  else
  {
    if (!v10)
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v11, v12, v13, v14);
      v23 = sub_233505670(@"Get State Response Remote", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 104);
      *(v24 + 104) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      v28 = *(*(a1 + 32) + 104);
      v31 = 138543874;
      v32 = v28;
      v33 = 2114;
      v34 = ContentItemAtOffset;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: playing %{public}@ endpoint %{public}@", &v31, 0x20u);
    }

    v29 = MRContentItemCopyNowPlayingInfo();
    v30 = *(*(a1 + 56) + 8);
    v19 = *(v30 + 40);
    *(v30 + 40) = v29;
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));
}

void sub_2334EAE2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 104), a2, a3, a4, a5))
  {
    v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
    v12 = sub_233505670(@"Get State Response Remote", v11);
    v13 = *(a1 + 32);
    v14 = *(v13 + 104);
    *(v13 + 104) = v12;
  }

  v15 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 32) + 104);
    v20 = 138543874;
    v21 = v17;
    v22 = 2048;
    v23 = v5;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: playback state %ld endpoint %{public}@", &v20, 0x20u);
  }

  if (v5 - 1 > 4)
  {
    v18 = 0;
  }

  else
  {
    v18 = dword_2335115C0[v5 - 1];
  }

  v19 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = v18;
  CFRelease(v19);
  dispatch_group_leave(*(a1 + 48));
}

void sub_2334EAF88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 104), a2, a3, a4, a5))
    {
      v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
      v12 = sub_233505670(@"Get State Response Remote", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 104);
      *(v13 + 104) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 104);
      v40 = 138543874;
      v41 = v17;
      v42 = 2114;
      *v43 = a3;
      *&v43[8] = 2114;
      *&v43[10] = v16;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Get State Response Remote (playinginfo) <%{public}@>: no device info %{public}@ endpoint %{public}@", &v40, 0x20u);
    }
  }

  else
  {
    BundleIdentifier = *(a1 + 64);
    if (BundleIdentifier)
    {
      BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
    }

    v19 = BundleIdentifier;
    v15 = MRPairedDeviceCopySystemMediaApplication();
    isEqual = objc_msgSend_isEqual_(v15, v20, v19, v21, v22);

    *(*(*(a1 + 56) + 8) + 24) = isEqual;
    if (!objc_msgSend_length(*(*(a1 + 32) + 104), v24, v25, v26, v27))
    {
      v32 = objc_msgSend_aceId(*(a1 + 32), v28, v29, v30, v31);
      v33 = sub_233505670(@"Get State Response Remote", v32);
      v34 = *(a1 + 32);
      v35 = *(v34 + 104);
      *(v34 + 104) = v33;
    }

    v36 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 40);
      v38 = *(*(a1 + 32) + 104);
      v39 = *(*(*(a1 + 56) + 8) + 24);
      v40 = 138543874;
      v41 = v38;
      v42 = 1024;
      *v43 = v39;
      *&v43[4] = 2114;
      *&v43[6] = v37;
      _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: is music app %{BOOL}u endpoint %{public}@", &v40, 0x1Cu);
    }
  }

  CFRelease(*(a1 + 72));
  dispatch_group_leave(*(a1 + 48));
}

void sub_2334EB1C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 104), a2, a3, a4, a5))
  {
    v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
    v12 = sub_233505670(@"Get State Response Remote", v11);
    v13 = *(a1 + 32);
    v14 = *(v13 + 104);
    *(v13 + 104) = v12;
  }

  v15 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 32) + 104);
    v25 = 138543874;
    v26 = v17;
    v27 = 2114;
    v28 = a2;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: group identity %{public}@endpoint %{public}@", &v25, 0x20u);
  }

  v22 = objc_msgSend_copy(a2, v18, v19, v20, v21);
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  dispatch_group_leave(*(a1 + 48));
}

void sub_2334EB308(uint64_t a1)
{
  v177 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v7 = objc_msgSend_outputDevices(v2, v3, v4, v5, v6);
  if (!objc_msgSend_length(*(*(a1 + 32) + 104), v8, v9, v10, v11))
  {
    v16 = objc_msgSend_aceId(*(a1 + 32), v12, v13, v14, v15);
    v17 = sub_233505670(@"Get State Response Remote", v16);
    v18 = *(a1 + 32);
    v19 = *(v18 + 104);
    *(v18 + 104) = v17;
  }

  v20 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 32) + 104);
    v26 = objc_msgSend_count(v7, v21, v22, v23, v24);
    v27 = *(a1 + 72);
    *buf = 138543874;
    v172 = v25;
    v173 = 2048;
    v174 = v26;
    v175 = 2114;
    v176 = v27;
    _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: %ld output devices endpoint %{public}@", buf, 0x20u);
  }

  CFRelease(*(a1 + 72));
  v36 = objc_msgSend_designatedGroupLeader(v2, v28, v29, v30, v31);
  if (!v36)
  {
    v37 = objc_msgSend_outputDevices(v2, v32, v33, v34, v35);
    v36 = objc_msgSend_firstObject(v37, v38, v39, v40, v41);

    if (!objc_msgSend_length(*(*(a1 + 32) + 104), v42, v43, v44, v45))
    {
      v50 = objc_msgSend_aceId(*(a1 + 32), v46, v47, v48, v49);
      v51 = sub_233505670(@"Get State Response Remote", v50);
      v52 = *(a1 + 32);
      v53 = *(v52 + 104);
      *(v52 + 104) = v51;
    }

    v54 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(*(a1 + 32) + 104);
      *buf = 138543618;
      v172 = v55;
      v173 = 2114;
      v174 = v36;
      _os_log_impl(&dword_2334D9000, v54, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using first output device %{public}@", buf, 0x16u);
    }
  }

  v148 = v36;
  v149 = v2;
  v152 = objc_msgSend_groupID(v36, v32, v33, v34, v35);
  v60 = objc_msgSend_array(MEMORY[0x277CBEB18], v56, v57, v58, v59);
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v61 = v7;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v163, v170, 16);
  v150 = v61;
  if (v63)
  {
    v68 = v63;
    v69 = *v164;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v164 != v69)
        {
          objc_enumerationMutation(v61);
        }

        v71 = *(*(&v163 + 1) + 8 * i);
        v76 = objc_msgSend_clusterComposition(v71, v64, v65, v66, v67);
        if (v76)
        {
          v77 = NSStringFromSelector(sel_uid);
          v81 = objc_msgSend_valueForKeyPath_(v76, v78, v77, v79, v80);
          objc_msgSend_addObjectsFromArray_(v60, v82, v81, v83, v84);

          if (!objc_msgSend_length(*(*(a1 + 32) + 104), v85, v86, v87, v88))
          {
            v93 = objc_msgSend_aceId(*(a1 + 32), v89, v90, v91, v92);
            v94 = sub_233505670(@"Get State Response Remote", v93);
            v95 = *(a1 + 32);
            v96 = *(v95 + 104);
            *(v95 + 104) = v94;
          }

          v97 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = *(*(a1 + 32) + 104);
            *buf = 138543618;
            v172 = v98;
            v173 = 2114;
            v174 = v60;
            _os_log_impl(&dword_2334D9000, v97, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using cluster device IDs %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v99 = objc_msgSend_uid(v71, v72, v73, v74, v75);
          objc_msgSend_addObject_(v60, v100, v99, v101, v102);

          if (!objc_msgSend_length(*(*(a1 + 32) + 104), v103, v104, v105, v106))
          {
            v111 = objc_msgSend_aceId(*(a1 + 32), v107, v108, v109, v110);
            v112 = sub_233505670(@"Get State Response Remote", v111);
            v113 = *(a1 + 32);
            v114 = *(v113 + 104);
            *(v113 + 104) = v112;
          }

          v97 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v119 = *(*(a1 + 32) + 104);
            v120 = objc_msgSend_uid(v71, v115, v116, v117, v118);
            *buf = 138543618;
            v172 = v119;
            v61 = v150;
            v173 = 2114;
            v174 = v120;
            _os_log_impl(&dword_2334D9000, v97, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using output device ID %{public}@", buf, 0x16u);
          }
        }
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v64, &v163, v170, 16);
    }

    while (v68);
  }

  v121 = dispatch_group_create();
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  aSelector = v60;
  v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(aSelector, v122, &v159, v169, 16);
  v124 = v152;
  if (v123)
  {
    v125 = v123;
    v126 = *v160;
    do
    {
      v127 = 0;
      do
      {
        if (*v160 != v126)
        {
          objc_enumerationMutation(aSelector);
        }

        v128 = *(*(&v159 + 1) + 8 * v127);
        dispatch_group_enter(v121);
        if (objc_msgSend_length(v124, v129, v130, v131, v132))
        {
          v168 = v124;
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v133, &v168, 1, v136);
          v139 = LABEL_36:;
          goto LABEL_37;
        }

        if (objc_msgSend_length(*(*(*(a1 + 40) + 8) + 40), v133, v134, v135, v136))
        {
          v167 = *(*(*(a1 + 40) + 8) + 40);
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v137, &v167, 1, v138);
          goto LABEL_36;
        }

        v139 = &unk_2848D8D18;
LABEL_37:
        v140 = *(a1 + 32);
        v141 = *(v140 + 96);
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = sub_2334EBA30;
        v155[3] = &unk_2789DB1E8;
        v157 = *(a1 + 48);
        v158 = *(a1 + 64);
        v155[4] = v140;
        v155[5] = v128;
        v156 = v121;
        objc_msgSend_encodeHashedRouteUIDs_completion_(v141, v142, v139, v155, v143);

        ++v127;
        v124 = v152;
      }

      while (v125 != v127);
      v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(aSelector, v144, &v159, v169, 16);
      v125 = v145;
    }

    while (v145);
  }

  v146 = *(a1 + 32);
  v147 = *(v146 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EBC0C;
  block[3] = &unk_2789DB210;
  v154 = *(a1 + 80);
  block[4] = v146;
  dispatch_group_notify(v121, v147, block);
}

void sub_2334EBA30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D47558];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v10 = objc_msgSend_firstObject(v4, v6, v7, v8, v9);

  objc_msgSend_setHashedGroupID_(v5, v11, v10, v12, v13);
  v14 = sub_2335051C8(*(*(*(a1 + 56) + 8) + 40));
  v18 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v15, *MEMORY[0x277D27C58], v16, v17);
  v23 = objc_msgSend_length(v18, v19, v20, v21, v22);
  v24 = MEMORY[0x277D48600];
  if (v23)
  {
    v24 = MEMORY[0x277D48608];
  }

  v25 = *v24;
  objc_msgSend_setListeningToItem_(v5, v26, v14, v27, v28);
  objc_msgSend_setSource_(v5, v29, v25, v30, v31);
  v35 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, *(*(*(a1 + 64) + 8) + 24), v33, v34);
  objc_msgSend_setListeningToMusicApplication_(v5, v36, v35, v37, v38);

  objc_msgSend_setState_(v5, v39, *(*(*(a1 + 72) + 8) + 24), v40, v41);
  v42 = *(a1 + 32);
  v43 = *(*(a1 + 32) + 80);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_2334EBC5C;
  v45[3] = &unk_2789DBFB8;
  v46 = v42;
  v47 = v5;
  v48 = *(a1 + 48);
  v44 = v5;
  dispatch_sync(v43, v45);
}

void sub_2334EBC0C(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v2 = *(*(a1 + 32) + 88);

  dispatch_group_leave(v2);
}

void sub_2334EBC5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 56), a2, *(a1 + 40), a4, a5);
  v11 = *(a1 + 32);
  if (v10)
  {
    objc_msgSend_setObject_forKey_(*(v11 + 64), v6, *(a1 + 48), v10, v9);
    if (!objc_msgSend_length(*(*(a1 + 32) + 104), v12, v13, v14, v15))
    {
      v20 = objc_msgSend_aceId(*(a1 + 32), v16, v17, v18, v19);
      v21 = sub_233505670(@"Get State Response Remote", v20);
      v22 = *(a1 + 32);
      v23 = *(v22 + 104);
      *(v22 + 104) = v21;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(a1 + 32) + 104);
      v30 = objc_msgSend_dictionary(*(a1 + 48), v25, v26, v27, v28);
      v41 = 138543874;
      v42 = v29;
      v43 = 2114;
      v44 = v10;
      v45 = 2114;
      v46 = v30;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: hashedUID %{public}@ response %{public}@.", &v41, 0x20u);
    }
  }

  else
  {
    if (!objc_msgSend_length(*(v11 + 104), v6, v7, v8, v9))
    {
      v35 = objc_msgSend_aceId(*(a1 + 32), v31, v32, v33, v34);
      v36 = sub_233505670(@"Get State Response Remote", v35);
      v37 = *(a1 + 32);
      v38 = *(v37 + 104);
      *(v37 + 104) = v36;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 40);
      v40 = *(*(a1 + 32) + 104);
      v41 = 138543618;
      v42 = v40;
      v43 = 2114;
      v44 = v39;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: UID %{public}@ was not requested", &v41, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_2334EC0E8(id *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong(a1[4] + 7, a2);
  v9 = objc_msgSend_allKeys(*(a1[4] + 7), v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  if (*(a1[4] + 7))
  {
    v15 = dispatch_group_create();
    v16 = a1[4];
    v17 = v16[11];
    v16[11] = v15;

    v18 = dispatch_queue_create("com.apple.MediaPlayer.assistant.responseCollection", 0);
    v19 = a1[4];
    v20 = v19[10];
    v19[10] = v18;

    if (objc_msgSend_count(v14, v21, v22, v23, v24))
    {
      if (!objc_msgSend_length(*(a1[4] + 13), v25, v26, v27, v28))
      {
        v33 = objc_msgSend_aceId(a1[4], v29, v30, v31, v32);
        v34 = sub_233505670(@"Get State Response Remote", v33);
        v35 = a1[4];
        v36 = v35[13];
        v35[13] = v34;
      }

      v37 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1[4] + 13);
        *buf = 138543618;
        v61 = v38;
        v62 = 2114;
        v63 = v14;
        _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (discovery) <%{public}@>: To discover: %{public}@", buf, 0x16u);
      }

      v39 = objc_alloc_init(MEMORY[0x277D27838]);
      dispatch_group_enter(*(a1[4] + 11));
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = sub_2334EC414;
      v58[3] = &unk_2789DB0F8;
      v58[4] = a1[4];
      v59 = v39;
      v40 = v39;
      objc_msgSend_discoverRemoteControlEndpointsMatchingUIDs_completion_(v40, v41, v14, v58, v42);
    }

    v43 = *(a1[4] + 11);
    v44 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2334EC698;
    block[3] = &unk_2789DB120;
    v45 = a1[5];
    v46 = a1[4];
    v55 = v45;
    v56 = v46;
    v57 = a1[6];
    dispatch_group_notify(v43, v44, block);
  }

  else
  {
    v47 = a1[6];
    v48 = objc_alloc_init(MEMORY[0x277D47208]);
    v53 = objc_msgSend_dictionary(v48, v49, v50, v51, v52);
    v47[2](v47, v53);
  }
}

void sub_2334EC414(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a2;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v35, v43, 16);
  if (v4)
  {
    v10 = v4;
    v11 = *v36;
    *&v9 = 138543618;
    v28 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if (!objc_msgSend_length(*(*(a1 + 32) + 104), v5, v6, v7, v8, v28))
        {
          v18 = objc_msgSend_aceId(*(a1 + 32), v14, v15, v16, v17);
          v19 = sub_233505670(@"Get State Response Remote", v18);
          v20 = *(a1 + 32);
          v21 = *(v20 + 104);
          *(v20 + 104) = v19;
        }

        v22 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(*(a1 + 32) + 104);
          *buf = v28;
          v40 = v23;
          v41 = 2114;
          v42 = v13;
          _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (discovery) <%{public}@>: Discovered: %{public}@", buf, 0x16u);
        }

        v24 = objc_alloc_init(MEMORY[0x277D27830]);
        dispatch_group_enter(*(*(a1 + 32) + 88));
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_2334EC7F8;
        v30[3] = &unk_2789DB0D0;
        v31 = *(a1 + 40);
        v32 = v24;
        v33 = *(a1 + 32);
        v34 = v13;
        v25 = v24;
        objc_msgSend_connectToEndpoint_completion_(v25, v26, v13, v30, v27);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v35, v43, 16);
    }

    while (v10);
  }

  dispatch_group_leave(*(*(a1 + 32) + 88));
}

void sub_2334EC698(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  objc_msgSend_setRouteResponses_(*(a1 + 32), a2, *(*(a1 + 40) + 64), a4, a5);
  if (!objc_msgSend_length(*(*(a1 + 40) + 104), v6, v7, v8, v9))
  {
    v14 = objc_msgSend_aceId(*(a1 + 40), v10, v11, v12, v13);
    v15 = sub_233505670(@"Get State Response Remote", v14);
    v16 = *(a1 + 40);
    v17 = *(v16 + 104);
    *(v16 + 104) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(a1 + 40) + 104);
    v24 = objc_msgSend_dictionary(*(a1 + 32), v19, v20, v21, v22);
    v31 = 138543618;
    v32 = v23;
    v33 = 2114;
    v34 = v24;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (completion) <%{public}@>: notifying assistant %{public}@", &v31, 0x16u);
  }

  v25 = *(a1 + 48);
  v30 = objc_msgSend_dictionary(*(a1 + 32), v26, v27, v28, v29);
  (*(v25 + 16))(v25, v30);
}

void sub_2334EC7F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v5)
  {
    if (!objc_msgSend_length(v12[13], v7, v8, v9, v10))
    {
      v17 = objc_msgSend_aceId(*(a1 + 48), v13, v14, v15, v16);
      v18 = sub_233505670(@"Get State Response Remote", v17);
      v19 = *(a1 + 48);
      v20 = *(v19 + 104);
      *(v19 + 104) = v18;
    }

    v21 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 56);
      v23 = *(*(a1 + 48) + 104);
      v24 = 138543874;
      v25 = v23;
      v26 = 2114;
      v27 = v22;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_ERROR, "Get State Response Remote (connect) <%{public}@>: Failed connect: %{public}@ -- %{public}@", &v24, 0x20u);
    }

    dispatch_group_leave(*(*(a1 + 48) + 88));
  }

  else
  {
    objc_msgSend_setPlayingInfoFromEndpoint_(v12, v7, *(a1 + 56), v9, v10);
  }
}

void sub_2334ECBDC(id *a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v13 = objc_msgSend_allKeys(a2, v5, v6, v7, v8);
  if (!a2)
  {
    v14 = objc_alloc(MEMORY[0x277D47208]);
    v18 = objc_msgSend_initWithReason_(v14, v15, @"UID decoding error", v16, v17);
    if (!objc_msgSend_length(*(a1[5] + 7), v19, v20, v21, v22))
    {
      v27 = objc_msgSend_aceId(a1[5], v23, v24, v25, v26);
      v28 = sub_233505670(@"Get Volume Level", v27);
      v29 = a1[5];
      v30 = v29[7];
      v29[7] = v28;
    }

    v31 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1[5] + 7);
      v37 = objc_msgSend_dictionary(v18, v32, v33, v34, v35);
      *buf = 138543618;
      v77 = v36;
      v78 = 2114;
      v79 = v37;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v38 = a1[6];
    v43 = objc_msgSend_dictionary(v18, v39, v40, v41, v42);
    v38[2](v38, v43);
  }

  if (objc_msgSend_count(v13, v9, v10, v11, v12) == 1)
  {
    v44 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    v75 = a1[6];
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v44);
  }

  else
  {
    v45 = objc_alloc(MEMORY[0x277D47208]);
    v49 = objc_msgSend_initWithReason_(v45, v46, @"Too many UIDs requested", v47, v48);
    if (!objc_msgSend_length(*(a1[5] + 7), v50, v51, v52, v53))
    {
      v58 = objc_msgSend_aceId(a1[5], v54, v55, v56, v57);
      v59 = sub_233505670(@"Get Volume Level", v58);
      v60 = a1[5];
      v61 = v60[7];
      v60[7] = v59;
    }

    v62 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v67 = *(a1[5] + 7);
      v68 = objc_msgSend_dictionary(v49, v63, v64, v65, v66);
      *buf = 138543618;
      v77 = v67;
      v78 = 2114;
      v79 = v68;
      _os_log_impl(&dword_2334D9000, v62, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v69 = a1[6];
    v74 = objc_msgSend_dictionary(v49, v70, v71, v72, v73);
    v69[2](v69, v74);
  }
}

void sub_2334ECF38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v11 = a4;
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v17 = objc_msgSend_localizedFailureReason(v11, v13, v14, v15, v16);
    v21 = objc_msgSend_initWithReason_(v12, v18, v17, v19, v20);

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v22, v23, v24, v25))
    {
      v30 = objc_msgSend_aceId(*(a1 + 32), v26, v27, v28, v29);
      v31 = sub_233505670(@"Get Volume Level", v30);
      v32 = *(a1 + 32);
      v33 = *(v32 + 56);
      *(v32 + 56) = v31;
    }

    v34 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(a1 + 32) + 56);
      v40 = objc_msgSend_dictionary(v21, v35, v36, v37, v38);
      *buf = 138543618;
      v63 = v39;
      v64 = 2114;
      v65 = v40;
      _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v41 = *(a1 + 40);
    v46 = objc_msgSend_dictionary(v21, v42, v43, v44, v45);
    (*(v41 + 16))(v41, v46);
  }

  else
  {
    v47 = objc_msgSend_firstObject(a2, v7, v8, v9, v10);

    v48 = objc_alloc_init(MEMORY[0x277D27830]);
    CFRetain(*(a1 + 48));
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_2334ED190;
    v55[3] = &unk_2789DB288;
    v59 = a3;
    v60 = v47;
    v49 = *(a1 + 32);
    v50 = *(a1 + 40);
    v56 = v48;
    v57 = v49;
    v51 = v50;
    v52 = *(a1 + 48);
    v58 = v51;
    v61 = v52;
    v21 = v48;
    objc_msgSend_connectToEndpoint_completion_(v21, v53, a3, v55, v54);

    v46 = v56;
  }
}

void sub_2334ED190(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  MRAVEndpointGetOutputDeviceVolume();
}

void sub_2334ED24C(uint64_t a1, void *a2, float a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = a2;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_localizedFailureReason(v7, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithReason_(v8, v14, v13, v15, v16);

    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v18, v19, v20, v21))
    {
      v26 = objc_msgSend_aceId(*(a1 + 40), v22, v23, v24, v25);
      v27 = sub_233505670(@"Get Volume Level", v26);
      v28 = *(a1 + 40);
      v29 = *(v28 + 56);
      *(v28 + 56) = v27;
    }

    v30 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = *(*(a1 + 40) + 56);
      v36 = objc_msgSend_dictionary(v17, v31, v32, v33, v34);
      v71 = 138543618;
      v72 = v35;
      v73 = 2114;
      v74 = v36;
      v37 = v30;
      v38 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v37, v38, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", &v71, 0x16u);
    }
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D475E0]);
    *&v39 = a3;
    v44 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v40, v41, v42, v43, v39);
    objc_msgSend_setVolumeValue_(v17, v45, v44, v46, v47);

    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v48, v49, v50, v51))
    {
      v56 = objc_msgSend_aceId(*(a1 + 40), v52, v53, v54, v55);
      v57 = sub_233505670(@"Get Volume Level", v56);
      v58 = *(a1 + 40);
      v59 = *(v58 + 56);
      *(v58 + 56) = v57;
    }

    v30 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(*(a1 + 40) + 56);
      v36 = objc_msgSend_dictionary(v17, v60, v61, v62, v63);
      v71 = 138543618;
      v72 = v64;
      v73 = 2114;
      v74 = v36;
      v37 = v30;
      v38 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v65 = *(a1 + 48);
  v70 = objc_msgSend_dictionary(v17, v66, v67, v68, v69);
  (*(v65 + 16))(v65, v70);

  CFRelease(*(a1 + 56));
}

void sub_2334ED7CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334ED8E4;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334ED8E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334ED9B4;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 19, a2, v5, v10);
}

void sub_2334ED9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Increase Playback Speed", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (sub_2335059A8(v4))
  {
    v31 = objc_alloc_init(MEMORY[0x277D47218]);
LABEL_5:
    v43 = v31;
    goto LABEL_7;
  }

  if (objc_msgSend_containsObject_(v4, v28, &unk_2848D8C58, v29, v30))
  {
    v39 = objc_alloc(MEMORY[0x277D47208]);
    v31 = objc_msgSend_initWithErrorCode_(v39, v40, *MEMORY[0x277D486F0], v41, v42);
    goto LABEL_5;
  }

  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"player statuses: %@", v37, v38, v4);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v45, MEMORY[0x277CBEC28], @"success", v46);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v44, @"errorstring", v48);
  v49 = objc_alloc(MEMORY[0x277D47208]);
  v43 = objc_msgSend_initWithReason_(v49, v50, v44, v51, v52);

LABEL_7:
  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v32, v33, v34, v35))
  {
    v57 = objc_msgSend_aceId(*(a1 + 48), v53, v54, v55, v56);
    v58 = sub_233505670(@"Increase Playback Speed", v57);
    v59 = *(a1 + 48);
    v60 = *(v59 + 56);
    *(v59 + 56) = v58;
  }

  v61 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(*(a1 + 48) + 56);
    v67 = objc_msgSend_dictionary(v43, v62, v63, v64, v65);
    *buf = 138543618;
    v77 = v66;
    v78 = 2114;
    v79 = v67;
    _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "Increase Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v68 = *(a1 + 56);
  v73 = objc_msgSend_dictionary(v43, v69, v70, v71, v72);
  (*(v68 + 16))(v68, v73);

  v75 = v10;
  v74 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334EDDF8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Likes Media Entity", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 56);
    v18 = 138543618;
    v19 = v17;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334EE0D4(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2334EE2E8;
    v39[3] = &unk_2789DB2D8;
    v39[4] = v5;
    v40 = *(a1 + 40);
    objc_msgSend__performWithCompletion_(v5, v6, v39, v7, v8);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_initWithReason_(v9, v10, @"no user identity", v11, v12);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Likes Media Entity", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      *buf = 138543618;
      v42 = v31;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    v38 = objc_msgSend_dictionary(v13, v34, v35, v36, v37);
    (*(v33 + 16))(v33, v38);
  }
}

void sub_2334EE2E8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 56), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Likes Media Entity", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 56);
    v18 = 138543618;
    v19 = v17;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334EE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334EE62C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334EE644(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
    if (v11)
    {
      v16 = v11;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(*(*(a1 + 40) + 8) + 40);
          v20 = objc_msgSend_stations(*(*(&v24 + 1) + 8 * v18), v12, v13, v14, v15, v24);
          objc_msgSend_addObjectsFromArray_(v19, v21, v20, v22, v23);

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v24, v28, 16);
      }

      while (v16);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2334EF324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = objc_msgSend_mutableCopy(a3, v6, v7, v8, v9);
  objc_msgSend_setSingleGroup_(v10, v11, 1, v12, v13);
  v14 = objc_alloc_init(MEMORY[0x277D27828]);
  objc_msgSend_setUserIdentity_(v5, v15, *(*(a1 + 32) + 80), v16, v17);
  objc_msgSend_setFeatureName_(v5, v18, @"siri", v19, v20);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2334F0570;
  v24[3] = &unk_2789DB350;
  v25 = v14;
  v21 = *(a1 + 40);
  v26 = *(a1 + 48);
  v22 = v14;
  objc_msgSend_sendPlaybackQueue_toDestination_withOptions_completion_(v22, v23, v5, v10, v21, v24);
}

void sub_2334EF440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.mediaPlayer.assistant.loadPredefinedQueue.sendCommand", 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F026C;
  v12[3] = &unk_2789DB3C8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  MEMORY[0x2383A0F90](v7, v12);
}

void sub_2334EF52C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v169 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), 0, a3, a4, a5))
    {
      v37 = objc_msgSend_aceId(*(a1 + 32), v33, v34, v35, v36);
      v38 = sub_233505670(@"Load Predefined Queue", v37);
      v39 = *(a1 + 32);
      v40 = *(v39 + 72);
      *(v39 + 72) = v38;
    }

    v41 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = *(*(a1 + 32) + 72);
      *buf = 138543362;
      v166 = v42;
      _os_log_impl(&dword_2334D9000, v41, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: radio not available", buf, 0xCu);
    }

    v17 = *(a1 + 56);
    v43 = objc_alloc(MEMORY[0x277D47208]);
    v22 = objc_msgSend_initWithErrorCode_(v43, v44, *MEMORY[0x277D48660], v45, v46);
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), 2, a3, a4, a5))
    {
      v27 = objc_msgSend_aceId(*(a1 + 32), v23, v24, v25, v26);
      v28 = sub_233505670(@"Load Predefined Queue", v27);
      v29 = *(a1 + 32);
      v30 = *(v29 + 72);
      *(v29 + 72) = v28;
    }

    v31 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(*(a1 + 32) + 72);
      *buf = 138543362;
      v166 = v32;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: companion not available", buf, 0xCu);
    }

    v17 = *(a1 + 56);
    v22 = objc_alloc_init(MEMORY[0x277D47208]);
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), 1, a3, a4, a5))
    {
      v11 = objc_msgSend_aceId(*(a1 + 32), v7, v8, v9, v10);
      v12 = sub_233505670(@"Load Predefined Queue", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 72);
      *(v13 + 72) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 72);
      *buf = 138543362;
      v166 = v16;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: network conditions do not permit radio playback", buf, 0xCu);
    }

    v17 = *(a1 + 56);
    v18 = objc_alloc(MEMORY[0x277D47208]);
    v22 = objc_msgSend_initWithErrorCode_(v18, v19, *MEMORY[0x277D485A8], v20, v21);
LABEL_20:
    v47 = v22;
    (*(v17 + 16))(v17, v22);
    goto LABEL_44;
  }

  v47 = objc_msgSend_objectForKey_(*(a1 + 40), a2, *MEMORY[0x277D27C50], a4, a5);
  v52 = *(a1 + 32);
  if (v47)
  {
    if (!objc_msgSend_length(v52[9], v48, v49, v50, v51))
    {
      v57 = objc_msgSend_aceId(*(a1 + 32), v53, v54, v55, v56);
      v58 = sub_233505670(@"Load Predefined Queue", v57);
      v59 = *(a1 + 32);
      v60 = *(v59 + 72);
      *(v59 + 72) = v58;
    }

    v61 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(*(a1 + 32) + 72);
      *buf = 138543362;
      v166 = v62;
      _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (radio) <%{public}@>: resuming playback", buf, 0xCu);
    }

    v67 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v63, v64, v65, v66);
    v72 = objc_msgSend_hashedRouteUIDs(*(a1 + 32), v68, v69, v70, v71);
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_2334EFE98;
    v162[3] = &unk_2789DB418;
    v162[4] = *(a1 + 32);
    v163 = *(a1 + 48);
    v164 = *(a1 + 56);
    objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v67, v73, v72, *(a1 + 76), v162);
  }

  else
  {
    v67 = objc_msgSend__radioStations(v52, v48, v49, v50, v51);
    if (objc_msgSend_count(v67, v74, v75, v76, v77) && (objc_msgSend_firstObject(v67, v78, v79, v80, v81), (v82 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v87 = v82;
      v88 = a2 == 4;
      v89 = objc_msgSend_stationStringID(v82, v83, v84, v85, v86);
      v90 = MEMORY[0x277D27870];
      v95 = objc_msgSend_refId(*(a1 + 32), v91, v92, v93, v94);
      v98 = objc_msgSend_radioQueueWithContextID_stationStringID_(v90, v96, v95, v89, v97);

      v103 = objc_msgSend_startPlaying(*(a1 + 32), v99, v100, v101, v102);
      v108 = objc_msgSend_BOOLValue(v103, v104, v105, v106, v107);
      objc_msgSend_setShouldImmediatelyStartPlayback_(v98, v109, v108, v110, v111);

      objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v98, v112, 1, v113, v114);
      v119 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v115, v116, v117, v118);
      v124 = objc_msgSend_hashedRouteUIDs(*(a1 + 32), v120, v121, v122, v123);
      v158[0] = MEMORY[0x277D85DD0];
      v158[1] = 3221225472;
      v158[2] = sub_2334EFFE8;
      v158[3] = &unk_2789DB440;
      v158[4] = *(a1 + 32);
      v160 = *(a1 + 56);
      v161 = *(a1 + 64);
      v159 = v98;
      v125 = *(a1 + 76);
      v126 = v98;
      objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v119, v127, v126, v124, v88, v125, v158);
    }

    else
    {
      v128 = sub_2335055C0(*(*(a1 + 32) + 80));
      v133 = objc_msgSend_length(*(*(a1 + 32) + 72), v129, v130, v131, v132);
      if (v128)
      {
        if (!v133)
        {
          v138 = objc_msgSend_aceId(*(a1 + 32), v134, v135, v136, v137);
          v139 = sub_233505670(@"Load Predefined Queue", v138);
          v140 = *(a1 + 32);
          v141 = *(v140 + 72);
          *(v140 + 72) = v139;
        }

        v142 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
        {
          v143 = *(*(a1 + 32) + 72);
          v144 = *(a1 + 72);
          *buf = 138543618;
          v166 = v143;
          v167 = 2048;
          v168 = v144;
          _os_log_impl(&dword_2334D9000, v142, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: still loading library (type %ld).", buf, 0x16u);
        }

        v145 = *(a1 + 56);
        v146 = objc_alloc(MEMORY[0x277D47208]);
        v150 = MEMORY[0x277D48630];
      }

      else
      {
        if (!v133)
        {
          v151 = objc_msgSend_aceId(*(a1 + 32), v134, v135, v136, v137);
          v152 = sub_233505670(@"Load Predefined Queue", v151);
          v153 = *(a1 + 32);
          v154 = *(v153 + 72);
          *(v153 + 72) = v152;
        }

        v155 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          v156 = *(*(a1 + 32) + 72);
          v157 = *(a1 + 72);
          *buf = 138543618;
          v166 = v156;
          v167 = 2048;
          v168 = v157;
          _os_log_impl(&dword_2334D9000, v155, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: empty library for (type %ld).", buf, 0x16u);
        }

        v145 = *(a1 + 56);
        v146 = objc_alloc(MEMORY[0x277D47208]);
        v150 = MEMORY[0x277D485F8];
      }

      v87 = objc_msgSend_initWithErrorCode_(v146, v147, *v150, v148, v149);
      (*(v145 + 16))(v145, v87);
    }
  }

LABEL_44:
}

void sub_2334EFCF4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Load Predefined Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 72);
      *(v14 + 72) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 72);
      v26 = 138543362;
      v27 = v17;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: no available destination", &v26, 0xCu);
    }

    v18 = *(a1 + 48);
    v19 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithErrorCode_(v19, v20, *MEMORY[0x277D485A0], v21, v22);
    (*(v18 + 16))(v18, v23);
  }

  if (objc_msgSend_dryRun(*(a1 + 32), v3, v4, v5, v6))
  {
    v24 = *(a1 + 48);
    v25 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v24 + 16))(v24, v25);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_2334EFE98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (objc_msgSend_dryRun(v3, v5, v6, v7, v8))
  {
    v13 = *(a1 + 48);
    v22 = objc_alloc_init(MEMORY[0x277D47218]);

    (*(v13 + 16))(v13, v22);
  }

  else
  {
    v14 = objc_msgSend_mutableCopy(v4, v9, v10, v11, v12);

    objc_msgSend_setSingleGroup_(v14, v15, 1, v16, v17);
    v18 = objc_alloc_init(MEMORY[0x277D27828]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2334F018C;
    v23[3] = &unk_2789DB350;
    v24 = v18;
    v19 = *(a1 + 40);
    v25 = *(a1 + 48);
    v20 = v18;
    objc_msgSend_sendCommand_toDestination_withOptions_completion_(v20, v21, 0, v14, v19, v23);
  }
}

void sub_2334EFFE8(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Load Predefined Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 72);
      *(v14 + 72) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 72);
      v26 = 138543362;
      v27 = v17;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: no available destination", &v26, 0xCu);
    }

    v18 = *(a1 + 48);
    v19 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithErrorCode_(v19, v20, *MEMORY[0x277D485A0], v21, v22);
    (*(v18 + 16))(v18, v23);
  }

  if (objc_msgSend_dryRun(*(a1 + 32), v3, v4, v5, v6))
  {
    v24 = *(a1 + 48);
    v25 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v24 + 16))(v24, v25);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_2334F018C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v20 = v3;
  if (v3)
  {
    v6 = MEMORY[0x277D47208];
    v7 = v5;
    v8 = [v6 alloc];
    v13 = objc_msgSend_localizedFailureReason(v20, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithReason_(v8, v14, v13, v15, v16);
    (*(v4 + 16))(v4, v17);
  }

  else
  {
    v18 = MEMORY[0x277D47218];
    v19 = v5;
    v13 = objc_alloc_init(v18);
    (*(v4 + 16))(v4, v13);
  }
}

void sub_2334F026C(id *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  MRAVEndpointGetLocalEndpoint();
  v4 = MRAVEndpointCopyUniqueIdentifier();
  v5 = a1[4];
  v6 = a2;
  v11 = objc_msgSend_outputDeviceUIDs(v5, v7, v8, v9, v10);
  LODWORD(v5) = objc_msgSend_containsObject_(v11, v12, v6, v13, v14);

  if (v5)
  {

LABEL_4:
    if (!objc_msgSend_length(*(a1[5] + 9), v19, v20, v21, v22))
    {
      v32 = objc_msgSend_aceId(a1[5], v28, v29, v30, v31);
      v33 = sub_233505670(@"Load Predefined Queue", v32);
      v34 = a1[5];
      v35 = v34[9];
      v34[9] = v33;
    }

    v36 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1[5] + 9);
      *buf = 138543362;
      v58 = v37;
      _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (send) <%{public}@>: sending to local WHA destination", buf, 0xCu);
    }

    v38 = *(a1[5] + 7);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_2334F0558;
    v53[3] = &unk_2789DB3A0;
    v56 = a1[7];
    v54 = a1[6];
    v55 = a1[4];
    objc_msgSend_prepareForAudioHandoffWithCompletion_(v38, v39, v53, v40, v41);

    goto LABEL_14;
  }

  v23 = objc_msgSend_outputDeviceUIDs(a1[4], v15, v16, v17, v18);
  v27 = objc_msgSend_containsObject_(v23, v24, v4, v25, v26);

  if (v27)
  {
    goto LABEL_4;
  }

  if (!objc_msgSend_length(*(a1[5] + 9), v19, v20, v21, v22))
  {
    v46 = objc_msgSend_aceId(a1[5], v42, v43, v44, v45);
    v47 = sub_233505670(@"Load Predefined Queue", v46);
    v48 = a1[5];
    v49 = v48[9];
    v48[9] = v47;
  }

  v50 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = a1[4];
    v52 = *(a1[5] + 9);
    *buf = 138543618;
    v58 = v52;
    v59 = 2114;
    v60 = v51;
    _os_log_impl(&dword_2334D9000, v50, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (send) <%{public}@>: sending to destination %{public}@", buf, 0x16u);
  }

  (*(a1[7] + 2))();
LABEL_14:
}

void sub_2334F0570(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v10 = *(a1 + 32);
  v11 = v28;
  if (v28 && (objc_msgSend_domain(v28, v6, v7, v8, v9), v12 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277D277F0], v14, v15), v12, v11 = v28, !isEqualToString))
  {
    IsInformational = MRMediaRemoteErrorIsInformational();
    v20 = *(a1 + 40);
    if (IsInformational)
    {
      v18 = objc_alloc_init(MEMORY[0x277D47218]);
      (*(v20 + 16))(v20, v18);
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277D47208]);
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Send playback failed: %@", v22, v23, v28);
      v27 = objc_msgSend_initWithReason_(v21, v24, v18, v25, v26);
      (*(v20 + 16))(v20, v27);
    }
  }

  else
  {
    v17 = *(a1 + 40);
    objc_msgSend_code(v11, v6, v7, v8, v9);
    v18 = sub_233505AA8(v5);
    (*(v17 + 16))(v17, v18);
  }
}

void sub_2334F0A58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = v6[9];
  v8 = objc_msgSend_requesterSharedUserId(v6, a2, a3, a4, a5);
  v13 = objc_msgSend_sharedUserIdFromPlayableMusicAccount(*(a1 + 32), v9, v10, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334F0B34;
  v15[3] = &unk_2789DB648;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v14;
  sub_233506A24(@"Load Predefined Queue", v7, v8, v13, v15);
}

void sub_2334F0B34(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 80), a2);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2334F0D44;
    v36[3] = &unk_2789DB328;
    v5 = *(a1 + 40);
    v36[4] = *(a1 + 32);
    v37 = v5;
    sub_2334F0D44(v36, 0);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D47208]);
    v10 = objc_msgSend_initWithReason_(v6, v7, @"no user identity", v8, v9);
    if (!objc_msgSend_length(*(*(a1 + 32) + 72), v11, v12, v13, v14))
    {
      v19 = objc_msgSend_aceId(*(a1 + 32), v15, v16, v17, v18);
      v20 = sub_233505670(@"Load Predefined Queue", v19);
      v21 = *(a1 + 32);
      v22 = *(v21 + 72);
      *(v21 + 72) = v20;
    }

    v23 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*(a1 + 32) + 72);
      v29 = objc_msgSend_dictionary(v10, v24, v25, v26, v27);
      *buf = 138543618;
      v39 = v28;
      v40 = 2114;
      v41 = v29;
      _os_log_impl(&dword_2334D9000, v23, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v30 = *(a1 + 40);
    v35 = objc_msgSend_dictionary(v10, v31, v32, v33, v34);
    (*(v30 + 16))(v30, v35);
  }
}

void sub_2334F0D44(uint64_t a1, int a2)
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = *(a1 + 40);
  MRMediaRemoteGetNowPlayingInfo();
}

void sub_2334F0DFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334F0EA4;
  v6[3] = &unk_2789DB620;
  v6[4] = v4;
  v7 = *(a1 + 40);
  objc_msgSend__performWithNowPlayingItem_audioRoutingInfo_completion_(v4, v5, a2, *(a1 + 48), v6);
}

void sub_2334F0EA4(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 72), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Load Predefined Queue", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 72);
    *(v14 + 72) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 72);
    v22 = objc_msgSend_dictionary(v3, v17, v18, v19, v20);
    v29 = 138543618;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", &v29, 0x16u);
  }

  v23 = *(a1 + 40);
  v28 = objc_msgSend_dictionary(v3, v24, v25, v26, v27);
  (*(v23 + 16))(v23, v28);
}

void sub_2334F1008()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_27DE0E770;
  qword_27DE0E770 = v0;

  objc_msgSend_setMaxConcurrentOperationCount_(qword_27DE0E770, v2, 2, v3, v4);
  objc_msgSend_setName_(qword_27DE0E770, v5, @"com.apple.MediaPlayer.AssistantBundle.MPAssistantLoadPredefinedQueue", v6, v7);
  v8 = qword_27DE0E770;
  v21 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v9, v10, v11, v12);
  v17 = objc_msgSend_qualityOfService(v21, v13, v14, v15, v16);
  objc_msgSend_setQualityOfService_(v8, v18, v17, v19, v20);
}

void sub_2334F13C0(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = objc_msgSend_mutableCopy(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_groupID(*(a1 + 40), v10, v11, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"LOCAL_DEVICE", v16, v17);

  if (isEqualToString)
  {
    v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_groupID(*(a1 + 40), v19, v20, v21, v22);
    v28 = objc_msgSend_allKeysForObject_(v9, v25, v24, v26, v27);
    v23 = objc_msgSend_firstObject(v28, v29, v30, v31, v32);

    if ((*(a1 + 56) & 1) == 0)
    {
      objc_msgSend_removeObjectForKey_(v9, v19, v23, v21, v22);
    }
  }

  v33 = objc_msgSend_allKeys(v9, v19, v20, v21, v22);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), v39, v40, v41, v42);
  v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

  if (v38 == v48)
  {
    v79 = *(a1 + 48);
    MRAVEndpointMoveOutputGroupToDevicesFromSource();
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277D47208]);
    v53 = objc_msgSend_initWithReason_(v49, v50, @"UID decoding error", v51, v52);
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v54, v55, v56, v57))
    {
      v62 = objc_msgSend_aceId(*(a1 + 40), v58, v59, v60, v61);
      v63 = sub_233505670(@"Move Output Group To Devices", v62);
      v64 = *(a1 + 40);
      v65 = *(v64 + 56);
      *(v64 + 56) = v63;
    }

    v66 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v71 = *(*(a1 + 40) + 56);
      v72 = objc_msgSend_dictionary(v53, v67, v68, v69, v70);
      *buf = 138543618;
      v81 = v71;
      v82 = 2114;
      v83 = v72;
      _os_log_impl(&dword_2334D9000, v66, OS_LOG_TYPE_ERROR, "Move Output Group To Devices (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v73 = *(a1 + 48);
    v78 = objc_msgSend_dictionary(v53, v74, v75, v76, v77);
    (*(v73 + 16))(v73, v78);
  }
}

void sub_2334F16AC(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v9 = objc_msgSend_localizedFailureReason(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_initWithReason_(v4, v10, v9, v11, v12);

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Move Output Group To Devices", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      v61 = 138543618;
      v62 = v31;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v33, v34, "Move Output Group To Devices (completion) <%{public}@>: notifying assistant %{public}@", &v61, 0x16u);
    }
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D475E8]);
    objc_msgSend_setRouteResponse_(v13, v35, *MEMORY[0x277D48678], v36, v37);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v38, v39, v40, v41))
    {
      v46 = objc_msgSend_aceId(*(a1 + 32), v42, v43, v44, v45);
      v47 = sub_233505670(@"Move Output Group To Devices", v46);
      v48 = *(a1 + 32);
      v49 = *(v48 + 56);
      *(v48 + 56) = v47;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v50, v51, v52, v53);
      v61 = 138543618;
      v62 = v54;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v55 = *(a1 + 40);
  v60 = objc_msgSend_dictionary(v13, v56, v57, v58, v59);
  (*(v55 + 16))(v55, v60);
}

void sub_2334F1CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = sub_2335059A8(a3);
  v7 = 0x277D47218;
  if (!v6)
  {
    v7 = 0x277D47208;
  }

  v12 = objc_alloc_init(*v7);
  if (*(a1 + 48))
  {
    if (!objc_msgSend_length(*(*(a1 + 40) + 72), v8, v9, v10, v11))
    {
      v17 = objc_msgSend_aceId(*(a1 + 40), v13, v14, v15, v16);
      v18 = sub_233505670(@"Music Playback Imminent", v17);
      v19 = *(a1 + 40);
      v20 = *(v19 + 72);
      *(v19 + 72) = v18;
    }

    v21 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*(a1 + 40) + 72);
      v27 = objc_msgSend_dictionary(v12, v22, v23, v24, v25);
      v34 = 138543618;
      v35 = v26;
      v36 = 2114;
      v37 = v27;
      _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (perform) <%{public}@>: notifying assistant %{public}@", &v34, 0x16u);
    }

    v28 = *(a1 + 48);
    v33 = objc_msgSend_dictionary(v12, v29, v30, v31, v32);
    (*(v28 + 16))(v28, v33);
  }
}

void sub_2334F206C(id *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong(a1[4] + 7, a2);
    objc_storeStrong(a1[4] + 8, a3);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2334F22C4;
    v44[3] = &unk_2789DBA80;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[4];
    v45 = v9;
    v46 = v10;
    v47 = a1[6];
    objc_msgSend__perform_(v8, v11, v44, v12, v13);

    v14 = v45;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D47208]);
    v14 = objc_msgSend_initWithReason_(v15, v16, @"no user identity", v17, v18);
    if (!objc_msgSend_length(*(a1[4] + 9), v19, v20, v21, v22))
    {
      v27 = objc_msgSend_aceId(a1[4], v23, v24, v25, v26);
      v28 = sub_233505670(@"Music Playback Imminent", v27);
      v29 = a1[4];
      v30 = v29[9];
      v29[9] = v28;
    }

    v31 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1[4] + 9);
      v37 = objc_msgSend_dictionary(v14, v32, v33, v34, v35);
      *buf = 138543618;
      v49 = v36;
      v50 = 2114;
      v51 = v37;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v38 = a1[6];
    v43 = objc_msgSend_dictionary(v14, v39, v40, v41, v42);
    v38[2](v38, v43);

    dispatch_group_leave(a1[5]);
  }
}

void sub_2334F22C4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_leave(v3);
  if (!objc_msgSend_length(*(*(a1 + 40) + 72), v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(*(a1 + 40), v9, v10, v11, v12);
    v14 = sub_233505670(@"Music Playback Imminent", v13);
    v15 = *(a1 + 40);
    v16 = *(v15 + 72);
    *(v15 + 72) = v14;
  }

  v17 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(*(a1 + 40) + 72);
    v19 = 138543362;
    v20 = v18;
    _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (completion) <%{public}@>: done", &v19, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_2334F262C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F2700;
  v9[3] = &unk_2789DBB70;
  v10 = *(a1 + 32);
  v11 = v3;
  v4 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v4;
  v14 = *(a1 + 56);
  v5 = v3;
  sub_2334F2700(v9, 0, v6, v7, v8);
}

void sub_2334F2700(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = objc_msgSend_refId(*(a1 + 48), a2, a3, a4, a5);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2334F27F8;
  v13[3] = &unk_2789DB4E0;
  v14 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 64);
  objc_msgSend_pauseDevicesByUID_withRefId_audioRoutingInfo_source_completion_(v7, v12, v8, v9, v5, @"siri", v13);
}

void sub_2334F27F8(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = objc_alloc(MEMORY[0x277D47208]);
    v10 = objc_msgSend_initWithReason_(v6, v7, v3, v8, v9);
    if (!objc_msgSend_length(*(*(a1 + 48) + 56), v11, v12, v13, v14))
    {
      v19 = objc_msgSend_aceId(*(a1 + 48), v15, v16, v17, v18);
      v20 = sub_233505670(@"Pause Playback", v19);
      v21 = *(a1 + 48);
      v22 = *(v21 + 56);
      *(v21 + 56) = v20;
    }

    v23 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v40 = *(*(a1 + 48) + 56);
      v41 = objc_msgSend_dictionary(v10, v24, v25, v26, v27);
      v48 = 138543618;
      v49 = v40;
      v50 = 2114;
      v51 = v41;
      _os_log_impl(&dword_2334D9000, v23, OS_LOG_TYPE_DEFAULT, "Pause Playback (completion) <%{public}@>: notifying assistant %{public}@", &v48, 0x16u);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D47218]);
    if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
    {
      v36 = objc_msgSend_aceId(*(a1 + 48), v32, v33, v34, v35);
      v37 = sub_233505670(@"Pause Playback", v36);
      v38 = *(a1 + 48);
      v39 = *(v38 + 56);
      *(v38 + 56) = v37;
    }

    v23 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  v42 = *(a1 + 56);
  v47 = objc_msgSend_dictionary(v10, v43, v44, v45, v46);
  (*(v42 + 16))(v42, v47);
}

void sub_2334F2DA4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F2EAC;
  v12[3] = &unk_2789DBBC0;
  v6 = (a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 80);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v4, v11, v5, a2, v12);
}

void sub_2334F2EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334F2F7C;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 20, a2, v5, v10);
}

void sub_2334F2F7C(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Rate Media Entity", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Rate Media Entity", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Rate Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334F3518(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = objc_msgSend_mutableCopy(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_groupID(*(a1 + 40), v10, v11, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"LOCAL_DEVICE", v16, v17);

  if (isEqualToString)
  {
    v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_groupID(*(a1 + 40), v19, v20, v21, v22);
    v28 = objc_msgSend_allKeysForObject_(v9, v25, v24, v26, v27);
    v23 = objc_msgSend_firstObject(v28, v29, v30, v31, v32);

    if ((*(a1 + 56) & 1) == 0)
    {
      objc_msgSend_removeObjectForKey_(v9, v19, v23, v21, v22);
    }
  }

  v33 = objc_msgSend_allKeys(v9, v19, v20, v21, v22);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), v39, v40, v41, v42);
  v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

  if (v38 == v48)
  {
    v79 = *(a1 + 48);
    MRAVEndpointRemoveOutputDevicesFromGroupFromSource();
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277D47208]);
    v53 = objc_msgSend_initWithReason_(v49, v50, @"UID decoding error", v51, v52);
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v54, v55, v56, v57))
    {
      v62 = objc_msgSend_aceId(*(a1 + 40), v58, v59, v60, v61);
      v63 = sub_233505670(@"Remove Output Devices From Group", v62);
      v64 = *(a1 + 40);
      v65 = *(v64 + 56);
      *(v64 + 56) = v63;
    }

    v66 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v71 = *(*(a1 + 40) + 56);
      v72 = objc_msgSend_dictionary(v53, v67, v68, v69, v70);
      *buf = 138543618;
      v81 = v71;
      v82 = 2114;
      v83 = v72;
      _os_log_impl(&dword_2334D9000, v66, OS_LOG_TYPE_ERROR, "Remove Output Devices From Group (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v73 = *(a1 + 48);
    v78 = objc_msgSend_dictionary(v53, v74, v75, v76, v77);
    (*(v73 + 16))(v73, v78);
  }
}

void sub_2334F3804(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v9 = objc_msgSend_localizedFailureReason(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_initWithReason_(v4, v10, v9, v11, v12);

    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v14, v15, v16, v17))
    {
      v22 = objc_msgSend_aceId(*(a1 + 32), v18, v19, v20, v21);
      v23 = sub_233505670(@"Remove Output Devices From Group", v22);
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v27, v28, v29, v30);
      v61 = 138543618;
      v62 = v31;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v33, v34, "Remove Output Devices From Group (completion) <%{public}@>: notifying assistant %{public}@", &v61, 0x16u);
    }
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D475F0]);
    objc_msgSend_setRouteResponse_(v13, v35, *MEMORY[0x277D48678], v36, v37);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v38, v39, v40, v41))
    {
      v46 = objc_msgSend_aceId(*(a1 + 32), v42, v43, v44, v45);
      v47 = sub_233505670(@"Remove Output Devices From Group", v46);
      v48 = *(a1 + 32);
      v49 = *(v48 + 56);
      *(v48 + 56) = v47;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(*(a1 + 32) + 56);
      v32 = objc_msgSend_dictionary(v13, v50, v51, v52, v53);
      v61 = 138543618;
      v62 = v54;
      v63 = 2114;
      v64 = v32;
      v33 = v26;
      v34 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v55 = *(a1 + 40);
  v60 = objc_msgSend_dictionary(v13, v56, v57, v58, v59);
  (*(v55 + 16))(v55, v60);
}

void sub_2334F3E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334F3E68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_2334F3E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_copy(a2, a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_2334F4D58(uint64_t a1, void *a2)
{
  v302 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v293 = 0u;
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v8 = objc_msgSend_mediaPlayerOrderingTerms(v3, v4, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v293, v301, 16);
  if (v10)
  {
    v15 = v10;
    v16 = 0;
    v17 = *v294;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v294 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = *(*(&v293 + 1) + 8 * i);
        if (objc_msgSend_mediaPlayerSearchProperty(v19, v11, v12, v13, v14) == 7)
        {
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v22 = objc_msgSend_mediaPlayerOrderingDirection(v19, v11, v12, v13, v14);
          v26 = objc_msgSend__playlistsByDateCreatedOrder_(v21, v23, v22, v24, v25);
          objc_msgSend_addObject_(v20, v27, v26, v28, v29);

          v16 = 1;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v293, v301, 16);
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v30 = MEMORY[0x277CBEB98];
  v35 = objc_msgSend_searchProperties(v3, v31, v32, v33, v34);
  v39 = objc_msgSend_setWithArray_(v30, v36, v35, v37, v38);

  if (*(a1 + 56))
  {
    if (objc_msgSend_containsObject_(v39, v40, *MEMORY[0x277D48698], v41, v42))
    {
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v43, v44, v45, v46))
      {
        v51 = objc_msgSend_aceId(*(a1 + 40), v47, v48, v49, v50);
        v52 = sub_233505670(@"Search", v51);
        v53 = *(a1 + 40);
        v54 = *(v53 + 56);
        *(v53 + 56) = v52;
      }

      v55 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(*(a1 + 40) + 56);
        v61 = objc_msgSend_query(v3, v56, v57, v58, v59);
        *buf = 138543619;
        v298 = v60;
        v299 = 2113;
        v300 = v61;
        _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for artist: %{private}@", buf, 0x16u);
      }

      v62 = *(a1 + 32);
      v63 = *(a1 + 40);
      v68 = objc_msgSend_query(v3, v64, v65, v66, v67);
      v70 = objc_msgSend__songCollectionsWithGroupingType_searchString_mediaTypes_(v63, v69, 2, v68, *(a1 + 56));
      objc_msgSend_addObject_(v62, v71, v70, v72, v73);
    }

    if (objc_msgSend_containsObject_(v39, v43, *MEMORY[0x277D48690], v45, v46))
    {
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v74, v75, v76, v77))
      {
        v82 = objc_msgSend_aceId(*(a1 + 40), v78, v79, v80, v81);
        v83 = sub_233505670(@"Search", v82);
        v84 = *(a1 + 40);
        v85 = *(v84 + 56);
        *(v84 + 56) = v83;
      }

      v86 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(*(a1 + 40) + 56);
        v92 = objc_msgSend_query(v3, v87, v88, v89, v90);
        *buf = 138543619;
        v298 = v91;
        v299 = 2113;
        v300 = v92;
        _os_log_impl(&dword_2334D9000, v86, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for album: %{private}@", buf, 0x16u);
      }

      v93 = *(a1 + 32);
      v94 = *(a1 + 40);
      v99 = objc_msgSend_query(v3, v95, v96, v97, v98);
      v101 = objc_msgSend__songCollectionsWithGroupingType_searchString_mediaTypes_(v94, v100, 1, v99, *(a1 + 56));
      objc_msgSend_addObject_(v93, v102, v101, v103, v104);
    }

    if (objc_msgSend_containsObject_(v39, v74, *MEMORY[0x277D486A8], v76, v77))
    {
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v105, v106, v107, v108))
      {
        v113 = objc_msgSend_aceId(*(a1 + 40), v109, v110, v111, v112);
        v114 = sub_233505670(@"Search", v113);
        v115 = *(a1 + 40);
        v116 = *(v115 + 56);
        *(v115 + 56) = v114;
      }

      v117 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v122 = *(*(a1 + 40) + 56);
        v123 = objc_msgSend_query(v3, v118, v119, v120, v121);
        *buf = 138543619;
        v298 = v122;
        v299 = 2113;
        v300 = v123;
        _os_log_impl(&dword_2334D9000, v117, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for genre: %{private}@", buf, 0x16u);
      }

      v124 = *(a1 + 32);
      v125 = *(a1 + 40);
      v130 = objc_msgSend_query(v3, v126, v127, v128, v129);
      v132 = objc_msgSend__songCollectionsWithGroupingType_searchString_mediaTypes_(v125, v131, 5, v130, *(a1 + 56));
      objc_msgSend_addObject_(v124, v133, v132, v134, v135);
    }

    if (objc_msgSend_containsObject_(v39, v105, *MEMORY[0x277D486A0], v107, v108))
    {
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v136, v137, v138, v139))
      {
        v144 = objc_msgSend_aceId(*(a1 + 40), v140, v141, v142, v143);
        v145 = sub_233505670(@"Search", v144);
        v146 = *(a1 + 40);
        v147 = *(v146 + 56);
        *(v146 + 56) = v145;
      }

      v148 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        v153 = *(*(a1 + 40) + 56);
        v154 = objc_msgSend_query(v3, v149, v150, v151, v152);
        *buf = 138543619;
        v298 = v153;
        v299 = 2113;
        v300 = v154;
        _os_log_impl(&dword_2334D9000, v148, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for composer: %{private}@", buf, 0x16u);
      }

      v155 = *(a1 + 32);
      v156 = *(a1 + 40);
      v161 = objc_msgSend_query(v3, v157, v158, v159, v160);
      v163 = objc_msgSend__songCollectionsWithGroupingType_searchString_mediaTypes_(v156, v162, 4, v161, *(a1 + 56));
      objc_msgSend_addObject_(v155, v164, v163, v165, v166);
    }

    if (objc_msgSend_containsObject_(v39, v136, *MEMORY[0x277D486B0], v138, v139))
    {
      if (!objc_msgSend_length(*(*(a1 + 40) + 56), v40, v167, v41, v42))
      {
        v172 = objc_msgSend_aceId(*(a1 + 40), v168, v169, v170, v171);
        v173 = sub_233505670(@"Search", v172);
        v174 = *(a1 + 40);
        v175 = *(v174 + 56);
        *(v174 + 56) = v173;
      }

      v176 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        v181 = *(*(a1 + 40) + 56);
        v182 = objc_msgSend_query(v3, v177, v178, v179, v180);
        *buf = 138543619;
        v298 = v181;
        v299 = 2113;
        v300 = v182;
        _os_log_impl(&dword_2334D9000, v176, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for title: %{private}@", buf, 0x16u);
      }

      v183 = *(a1 + 32);
      v184 = *(a1 + 40);
      v189 = objc_msgSend_query(v3, v185, v186, v187, v188);
      v192 = objc_msgSend__itemsByTitle_mediaTypes_(v184, v190, v189, *(a1 + 56), v191);
      objc_msgSend_addObject_(v183, v193, v192, v194, v195);
    }
  }

  if (!(v16 & 1 | ((objc_msgSend_containsObject_(*(a1 + 48), v40, *MEMORY[0x277D486D0], v41, v42) & 1) == 0)))
  {
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v196, v197, v198, v199))
    {
      v204 = objc_msgSend_aceId(*(a1 + 40), v200, v201, v202, v203);
      v205 = sub_233505670(@"Search", v204);
      v206 = *(a1 + 40);
      v207 = *(v206 + 56);
      *(v206 + 56) = v205;
    }

    v208 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      v213 = *(*(a1 + 40) + 56);
      v214 = objc_msgSend_query(v3, v209, v210, v211, v212);
      *buf = 138543619;
      v298 = v213;
      v299 = 2113;
      v300 = v214;
      _os_log_impl(&dword_2334D9000, v208, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for playlist: %{private}@", buf, 0x16u);
    }

    v215 = *(a1 + 32);
    v216 = *(a1 + 40);
    v221 = objc_msgSend_query(v3, v217, v218, v219, v220);
    v224 = objc_msgSend__playlistsByName_isGeniusMix_(v216, v222, v221, 0, v223);
    objc_msgSend_addObject_(v215, v225, v224, v226, v227);
  }

  if (objc_msgSend_containsObject_(*(a1 + 48), v196, *MEMORY[0x277D486C8], v198, v199))
  {
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v228, v229, v230, v231))
    {
      v236 = objc_msgSend_aceId(*(a1 + 40), v232, v233, v234, v235);
      v237 = sub_233505670(@"Search", v236);
      v238 = *(a1 + 40);
      v239 = *(v238 + 56);
      *(v238 + 56) = v237;
    }

    v240 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
    {
      v245 = *(*(a1 + 40) + 56);
      v246 = objc_msgSend_query(v3, v241, v242, v243, v244);
      *buf = 138543619;
      v298 = v245;
      v299 = 2113;
      v300 = v246;
      _os_log_impl(&dword_2334D9000, v240, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for genius mix: %{private}@", buf, 0x16u);
    }

    v247 = *(a1 + 32);
    v248 = *(a1 + 40);
    v253 = objc_msgSend_query(v3, v249, v250, v251, v252);
    v256 = objc_msgSend__playlistsByName_isGeniusMix_(v248, v254, v253, 1, v255);
    objc_msgSend_addObject_(v247, v257, v256, v258, v259);
  }

  if (objc_msgSend_containsObject_(*(a1 + 48), v228, *MEMORY[0x277D486C0], v230, v231))
  {
    if (!objc_msgSend_length(*(*(a1 + 40) + 56), v260, v261, v262, v263))
    {
      v268 = objc_msgSend_aceId(*(a1 + 40), v264, v265, v266, v267);
      v269 = sub_233505670(@"Search", v268);
      v270 = *(a1 + 40);
      v271 = *(v270 + 56);
      *(v270 + 56) = v269;
    }

    v272 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
    {
      v277 = *(*(a1 + 40) + 56);
      v278 = objc_msgSend_query(v3, v273, v274, v275, v276);
      *buf = 138543619;
      v298 = v277;
      v299 = 2113;
      v300 = v278;
      _os_log_impl(&dword_2334D9000, v272, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for audiobook: %{private}@", buf, 0x16u);
    }

    v280 = *(a1 + 32);
    v279 = *(a1 + 40);
    v285 = objc_msgSend_query(v3, v281, v282, v283, v284);
    v289 = objc_msgSend__audiobooksByName_(v279, v286, v285, v287, v288);
    objc_msgSend_addObject_(v280, v290, v289, v291, v292);
  }
}

void sub_2334F57EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F5890;
  v12[3] = &unk_2789DB5A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = a4;
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v9, v12, v10, v11);
}

void sub_2334F5890(uint64_t a1, void *a2)
{
  v14 = a2;
  if (objc_msgSend_count(*(a1 + 32), v3, v4, v5, v6) >= *(a1 + 40))
  {
    **(a1 + 48) = 1;
  }

  else
  {
    v13 = objc_msgSend_SAMPMediaEntityRepresentationUsingIdentifierType_(v14, v7, 1, v8, v9);
    if (v13)
    {
      objc_msgSend_addObject_(*(a1 + 32), v10, v13, v11, v12);
    }
  }
}

void sub_2334F5AA8(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v9 = objc_msgSend__perform(*(a1 + 32), v5, v6, v7, v8);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v10, v11, v12, v13))
    {
      v18 = objc_msgSend_aceId(*(a1 + 32), v14, v15, v16, v17);
      v19 = sub_233505670(@"Search", v18);
      v20 = *(a1 + 32);
      v21 = *(v20 + 56);
      *(v20 + 56) = v19;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(a1 + 32) + 56);
      v28 = objc_msgSend_dictionary(v9, v23, v24, v25, v26);
      v57 = 138543618;
      v58 = v27;
      v59 = 2114;
      v60 = v28;
      v29 = "Search (completion) <%{public}@>: notifying assistant: %{public}@";
LABEL_10:
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, v29, &v57, 0x16u);
    }
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D47208]);
    v9 = objc_msgSend_initWithReason_(v30, v31, @"no user identity", v32, v33);
    if (!objc_msgSend_length(*(*(a1 + 32) + 56), v34, v35, v36, v37))
    {
      v42 = objc_msgSend_aceId(*(a1 + 32), v38, v39, v40, v41);
      v43 = sub_233505670(@"Search", v42);
      v44 = *(a1 + 32);
      v45 = *(v44 + 56);
      *(v44 + 56) = v43;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(*(a1 + 32) + 56);
      v28 = objc_msgSend_dictionary(v9, v46, v47, v48, v49);
      v57 = 138543618;
      v58 = v50;
      v59 = 2114;
      v60 = v28;
      v29 = "Search (completion) <%{public}@>: notifying assistant %{public}@";
      goto LABEL_10;
    }
  }

  v51 = *(a1 + 40);
  v56 = objc_msgSend_dictionary(v9, v52, v53, v54, v55);
  (*(v51 + 16))(v51, v56);
}

void sub_2334F603C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334F6154;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334F6154(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334F6224;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 24, a2, v5, v10);
}

void sub_2334F6224(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Seek To Playback Position", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Seek To Playback Position", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Seek To Playback Position (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334F6DD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334F6EF0;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334F6EF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334F6FC0;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 19, a2, v5, v10);
}

void sub_2334F6FC0(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Seek To Playback Speed", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Seek To Playback Speed", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Seek To Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334F750C(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D27828]);
  objc_msgSend_setUserIdentity_(*(a1 + 32), v5, *(*(a1 + 40) + 72), v6, v7);
  objc_msgSend_setFeatureName_(*(a1 + 32), v8, @"siri", v9, v10);
  v31 = *MEMORY[0x277D27DC0];
  v32[0] = @"com.apple.MediaAssistant.siri";
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v32, &v31, 1);
  v17 = objc_msgSend_mutableCopy(v12, v13, v14, v15, v16);

  v20 = *(*(a1 + 40) + 80);
  if (v20)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v20, *MEMORY[0x277D27DA8], v19);
  }

  v21 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2334F7A68;
  v26[3] = &unk_2789DB8C8;
  v27 = v4;
  v30 = *(a1 + 56);
  v22 = *(a1 + 48);
  v28 = v3;
  v29 = v22;
  v23 = v3;
  v24 = v4;
  objc_msgSend_sendPlaybackQueue_toDestination_withOptions_completion_(v24, v25, v21, v23, v17, v26);
}

void sub_2334F76C4(id *a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  MRAVEndpointGetLocalEndpoint();
  v4 = MRAVEndpointCopyUniqueIdentifier();
  v5 = a1[4];
  v6 = a2;
  v11 = objc_msgSend_outputDeviceUIDs(v5, v7, v8, v9, v10);
  LODWORD(v5) = objc_msgSend_containsObject_(v11, v12, v6, v13, v14);

  if (v5)
  {

LABEL_4:
    if (!objc_msgSend_length(*(a1[5] + 11), v19, v20, v21, v22))
    {
      v32 = objc_msgSend_aceId(a1[5], v28, v29, v30, v31);
      v33 = sub_233505670(@"Set Queue", v32);
      v34 = a1[5];
      v35 = v34[11];
      v34[11] = v33;
    }

    v36 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1[5] + 11);
      *buf = 138543362;
      v76 = v37;
      _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to local WHA destination", buf, 0xCu);
    }

    v38 = *(a1[5] + 7);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2334F7A54;
    v72[3] = &unk_2789DB918;
    v74 = a1[8];
    v73 = a1[6];
    objc_msgSend_prepareForAudioHandoffWithCompletion_(v38, v39, v72, v40, v41);

    goto LABEL_21;
  }

  v23 = objc_msgSend_outputDeviceUIDs(a1[4], v15, v16, v17, v18);
  v27 = objc_msgSend_containsObject_(v23, v24, v4, v25, v26);

  if (v27)
  {
    goto LABEL_4;
  }

  v42 = objc_msgSend_outputDeviceUIDs(a1[4], v19, v20, v21, v22);
  v47 = objc_msgSend_count(v42, v43, v44, v45, v46);

  v52 = objc_msgSend_length(*(a1[5] + 11), v48, v49, v50, v51);
  if (v47)
  {
    if (!v52)
    {
      v57 = objc_msgSend_aceId(a1[5], v53, v54, v55, v56);
      v58 = sub_233505670(@"Set Queue", v57);
      v59 = a1[5];
      v60 = v59[11];
      v59[11] = v58;
    }

    v61 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(a1[5] + 11);
      *buf = 138543362;
      v76 = v62;
      _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to WHA destination", buf, 0xCu);
    }

    objc_msgSend_setShouldImmediatelyStartPlayback_(a1[7], v63, 1, v64, v65);
  }

  else
  {
    if (!v52)
    {
      v66 = objc_msgSend_aceId(a1[5], v53, v54, v55, v56);
      v67 = sub_233505670(@"Set Queue", v66);
      v68 = a1[5];
      v69 = v68[11];
      v68[11] = v67;
    }

    v70 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *(a1[5] + 11);
      *buf = 138543362;
      v76 = v71;
      _os_log_impl(&dword_2334D9000, v70, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to default destination", buf, 0xCu);
    }
  }

  (*(a1[8] + 2))();
LABEL_21:
}

void sub_2334F7A68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5 && (*(a1 + 56) & 1) != 0)
  {
    notify_post("com.apple.media.entities.siri_data_changed");
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v78 = v5;
  v10 = v6;
  v15 = objc_msgSend_domain(v78, v11, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D277F0], v17, v18);

  if (isEqualToString)
  {
    v24 = objc_msgSend_code(v78, v20, v21, v22, v23);
    if (v24)
    {
      if (v24 == 7)
      {
        v49 = objc_alloc(MEMORY[0x277D47208]);
        v29 = objc_msgSend_initWithErrorCode_(v49, v50, *MEMORY[0x277D48670], v51, v52);
      }

      else
      {
        if (v24 != 6)
        {
          v53 = MPCAssistantCreateError();
          v54 = objc_alloc(MEMORY[0x277D47208]);
          v59 = objc_msgSend_localizedDescription(v53, v55, v56, v57, v58);
          v63 = objc_msgSend_initWithReason_(v54, v60, v59, v61, v62);

          goto LABEL_21;
        }

        v25 = objc_alloc(MEMORY[0x277D47208]);
        v29 = objc_msgSend_initWithErrorCode_(v25, v26, *MEMORY[0x277D48668], v27, v28);
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v30 = objc_msgSend_domain(v78, v20, v21, v22, v23);
  v34 = objc_msgSend_isEqualToString_(v30, v31, *MEMORY[0x277D277F8], v32, v33);

  if (!v34 || (v39 = objc_msgSend_code(v78, v35, v36, v37, v38)) == 0)
  {
LABEL_14:
    v29 = sub_233505AA8(v10);
LABEL_20:
    v63 = v29;
    goto LABEL_21;
  }

  if (v39 == 9)
  {
    v44 = objc_msgSend_appBundleID(v9, v40, v41, v42, v43);
    if (MRMediaRemoteApplicationIsSystemMediaApplication())
    {

      goto LABEL_18;
    }

    v64 = objc_msgSend_appBundleID(v9, v45, v46, v47, v48);
    v68 = objc_msgSend_isEqualToString_(v64, v65, *MEMORY[0x277D27E58], v66, v67);

    if (v68)
    {
LABEL_18:
      v69 = objc_alloc(MEMORY[0x277D47208]);
      v29 = objc_msgSend_initWithErrorCode_(v69, v70, *MEMORY[0x277D48650], v71, v72);
      goto LABEL_20;
    }
  }

  v73 = objc_alloc(MEMORY[0x277D47208]);
  v74 = MRMediaRemoteCopySendCommandErrorDescription();
  v63 = objc_msgSend_initWithReason_(v73, v75, v74, v76, v77);

LABEL_21:
  (*(v8 + 16))(v8, v63);
}

void sub_2334F7DE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v174 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_assistantStreamingGetAvailability_(*(*(a1 + 32) + 64), a2, a2, a4, a5) == 4;
  v12 = objc_msgSend_collections(*(a1 + 40), v8, v9, v10, v11);
  v17 = objc_msgSend_firstObject(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_representativeItem(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_valueForProperty_(v22, v23, *MEMORY[0x277CD57C8], v24, v25);
  v31 = objc_msgSend_unsignedIntegerValue(v26, v27, v28, v29, v30);

  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v32, v33, v34, v35))
  {
    v40 = objc_msgSend_aceId(*(a1 + 32), v36, v37, v38, v39);
    v41 = sub_233505670(@"Set Queue", v40);
    v42 = *(a1 + 32);
    v43 = *(v42 + 88);
    *(v42 + 88) = v41;
  }

  v44 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v49 = *(*(a1 + 32) + 88);
    v50 = objc_msgSend_items(v17, v45, v46, v47, v48);
    *buf = 138543874;
    v169 = v49;
    v170 = 2048;
    v171 = objc_msgSend_count(v50, v51, v52, v53, v54);
    v172 = 2112;
    v173 = v17;
    _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: item collection [%ld items] %@", buf, 0x20u);
  }

  shouldShuffle = objc_msgSend_shouldShuffle(*(a1 + 32), v55, v56, v57, v58);
  objc_msgSend_setIgnoreSystemFilterPredicates_(*(a1 + 40), v60, 1, v61, v62);
  objc_msgSend_setShouldIncludeNonLibraryEntities_(*(a1 + 40), v63, 1, v64, v65);
  v68 = objc_msgSend_queryQueueWithContextID_query_(MEMORY[0x277D27868], v66, *(a1 + 48), *(a1 + 40), v67);
  objc_msgSend_setShuffleType_(v68, v69, shouldShuffle, v70, v71);
  shouldOverrideManuallyCuratedUpNext = objc_msgSend_shouldOverrideManuallyCuratedUpNext(*(a1 + 32), v72, v73, v74, v75);
  objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v68, v77, shouldOverrideManuallyCuratedUpNext, v78, v79);
  v84 = objc_msgSend_startPlaying(*(a1 + 32), v80, v81, v82, v83);
  v89 = objc_msgSend_BOOLValue(v84, v85, v86, v87, v88);
  objc_msgSend_setShouldImmediatelyStartPlayback_(v68, v90, v89, v91, v92);

  v97 = objc_msgSend_recommendationId(*(a1 + 32), v93, v94, v95, v96);
  objc_msgSend_setSiriRecommendationID_(v68, v98, v97, v99, v100);

  v105 = objc_msgSend_assetInfo(*(a1 + 32), v101, v102, v103, v104);
  objc_msgSend_setSiriAssetInfo_(v68, v106, v105, v107, v108);

  v113 = objc_msgSend_MP_WHAMetricsInfo(*(a1 + 32), v109, v110, v111, v112);
  objc_msgSend_setSiriWHAMetricsInfo_(v68, v114, v113, v115, v116);

  v121 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v117, v118, v119, v120);
  v125 = v121;
  if ((v31 & 4) != 0)
  {
    objc_msgSend_setAppBundleID_(v121, v122, @"com.apple.iBooks", v123, v124);
  }

  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = sub_2334F825C;
  v160[3] = &unk_2789DB850;
  v126 = v125;
  v161 = v126;
  v127 = v68;
  v128 = *(a1 + 32);
  v162 = v127;
  v163 = v128;
  v165 = v7;
  v166 = v5;
  v164 = *(a1 + 56);
  v167 = *(a1 + 64);
  v129 = MEMORY[0x2383A14D0](v160);
  v134 = objc_msgSend_items(*(a1 + 40), v130, v131, v132, v133);
  v139 = objc_msgSend_firstObject(v134, v135, v136, v137, v138);
  v143 = objc_msgSend_valueForProperty_(v139, v140, *MEMORY[0x277CD5780], v141, v142);
  v148 = objc_msgSend_BOOLValue(v143, v144, v145, v146, v147);

  if (v148)
  {
    v153 = objc_msgSend_defaultManager(MEMORY[0x277D7FA28], v149, v150, v151, v152);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_2334F8348;
    v157[3] = &unk_2789DB878;
    v157[4] = *(a1 + 32);
    v158 = *(a1 + 56);
    v159 = v129;
    objc_msgSend_getAgeVerificationStateWithCompletion_(v153, v154, v157, v155, v156);
  }

  else
  {
    v129[2](v129);
  }
}

void sub_2334F825C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = objc_msgSend_hashedRouteUIDs(*(a1 + 48), a2, a3, a4, a5);
  v9 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F84C8;
  v12[3] = &unk_2789DB6C0;
  v10 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v15 = v9;
  v14 = v10;
  v16 = *(a1 + 69);
  v13 = *(a1 + 40);
  objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v6, v11, v7, v8, v9, *(a1 + 65), v12);
}

void sub_2334F8348(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Set Queue", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 88);
    *(v14 + 88) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 88);
    v32 = 138543618;
    v33 = v21;
    v34 = 1024;
    isExplicitContentAllowed = objc_msgSend_isExplicitContentAllowed(v3, v17, v18, v19, v20);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: explicit content allowed: %{BOOL}u", &v32, 0x12u);
  }

  if (objc_msgSend_isExplicitContentAllowed(v3, v22, v23, v24, v25))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v26 = *(a1 + 40);
    v27 = objc_alloc(MEMORY[0x277D47208]);
    v31 = objc_msgSend_initWithErrorCode_(v27, v28, *MEMORY[0x277D48590], v29, v30);
    (*(v26 + 16))(v26, v31);
  }
}

void sub_2334F84C8(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 88);
      v18 = *(a1 + 56);
      v27 = 138543618;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Queue (local) <%{public}@>: destination not available, local allowed %{BOOL}u", &v27, 0x12u);
    }

    v19 = *(a1 + 48);
    v20 = objc_alloc(MEMORY[0x277D47208]);
    v24 = objc_msgSend_initWithErrorCode_(v20, v21, *MEMORY[0x277D485A0], v22, v23);
    (*(v19 + 16))(v19, v24);
  }

  if (*(a1 + 57))
  {
    v25 = *(a1 + 48);
    v26 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    objc_msgSend_sendQueue_toDestination_shouldResync_completion_(*(a1 + 32), v3, *(a1 + 40), v7, 1, *(a1 + 48));
  }
}

void sub_2334F8844(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v255 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_assistantStreamingGetAvailability_(*(*(a1 + 32) + 64), a2, a2, a4, a5) == 4;
  v12 = objc_msgSend_items(*(a1 + 40), v8, v9, v10, v11);
  v16 = objc_msgSend_objectAtIndex_(v12, v13, 0, v14, v15);

  v20 = objc_msgSend_valueForProperty_(v16, v17, *MEMORY[0x277CD57C8], v18, v19);
  v237 = objc_msgSend_unsignedIntegerValue(v20, v21, v22, v23, v24);

  v25 = *MEMORY[0x277CD5858];
  v29 = objc_msgSend_valueForProperty_(v16, v26, *MEMORY[0x277CD5858], v27, v28);
  v30 = *MEMORY[0x277CD5890];
  v34 = objc_msgSend_valueForProperty_(v16, v31, *MEMORY[0x277CD5890], v32, v33);
  v35 = *MEMORY[0x277CD56D0];
  v39 = objc_msgSend_valueForProperty_(v16, v36, *MEMORY[0x277CD56D0], v37, v38);
  v239 = v7;
  if (objc_msgSend_length(v29, v40, v41, v42, v43))
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v44, v45, v46, v47))
    {
      v52 = objc_msgSend_aceId(*(a1 + 32), v48, v49, v50, v51);
      v53 = sub_233505670(@"Set Queue", v52);
      v54 = *(a1 + 32);
      v55 = *(v54 + 88);
      *(v54 + 88) = v53;
    }

    v56 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v252 = v57;
      v253 = 2114;
      v254 = v29;
      _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found cloud album %{public}@", buf, 0x16u);
    }
  }

  else if (objc_msgSend_longLongValue(v34, v44, v45, v46, v47))
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v58, v59, v60, v61))
    {
      v66 = objc_msgSend_aceId(*(a1 + 32), v62, v63, v64, v65);
      v67 = sub_233505670(@"Set Queue", v66);
      v68 = *(a1 + 32);
      v69 = *(v68 + 88);
      *(v68 + 88) = v67;
    }

    v56 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v252 = v70;
      v253 = 2114;
      v254 = v34;
      _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found store album %{public}@", buf, 0x16u);
    }

    v25 = v30;
  }

  else
  {
    if (!objc_msgSend_length(v39, v58, v59, v60, v61))
    {
      goto LABEL_32;
    }

    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v71, v72, v73, v74))
    {
      v79 = objc_msgSend_aceId(*(a1 + 32), v75, v76, v77, v78);
      v80 = sub_233505670(@"Set Queue", v79);
      v81 = *(a1 + 32);
      v82 = *(v81 + 88);
      *(v81 + 88) = v80;
    }

    v56 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v83 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v252 = v83;
      v253 = 2114;
      v254 = v39;
      _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found album title %{public}@", buf, 0x16u);
    }

    v25 = v35;
  }

  v84 = objc_alloc_init(MEMORY[0x277CD5E38]);
  v88 = objc_msgSend_predicateForProperty_(v16, v85, v25, v86, v87);
  objc_msgSend_addFilterPredicate_(v84, v89, v88, v90, v91);

  if (v84)
  {
    v92 = *(*(a1 + 32) + 72);
    if (v92)
    {
      v93 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v71, v92, v73, v74);
      objc_msgSend_setMediaLibrary_(v84, v94, v93, v95, v96);
    }

    objc_msgSend_setIgnoreSystemFilterPredicates_(v84, v71, 1, v73, v74);
    objc_msgSend_setShouldIncludeNonLibraryEntities_(v84, v97, 1, v98, v99);
    objc_msgSend_setGroupingType_(v84, v100, 1, v101, v102);
    if (objc_msgSend__hasCollections(v84, v103, v104, v105, v106) && (objc_msgSend_collections(v84, v107, v108, v109, v110), v111 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend_count(v111, v112, v113, v114, v115), v111, v116 == 1))
    {
      v236 = v39;
      shouldShuffle = objc_msgSend_shouldShuffle(*(a1 + 32), v107, v108, v109, v110);
      v120 = objc_msgSend_queryQueueWithContextID_query_(MEMORY[0x277D27868], v118, *(a1 + 48), v84, v119);
      objc_msgSend_setFirstItem_(v120, v121, v16, v122, v123);
      objc_msgSend_setShuffleType_(v120, v124, shouldShuffle, v125, v126);
      shouldOverrideManuallyCuratedUpNext = objc_msgSend_shouldOverrideManuallyCuratedUpNext(*(a1 + 32), v127, v128, v129, v130);
      objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v120, v132, shouldOverrideManuallyCuratedUpNext, v133, v134);
      v139 = objc_msgSend_startPlaying(*(a1 + 32), v135, v136, v137, v138);
      v144 = objc_msgSend_BOOLValue(v139, v140, v141, v142, v143);
      objc_msgSend_setShouldImmediatelyStartPlayback_(v120, v145, v144, v146, v147);

      v152 = objc_msgSend_recommendationId(*(a1 + 32), v148, v149, v150, v151);
      objc_msgSend_setSiriRecommendationID_(v120, v153, v152, v154, v155);

      v160 = objc_msgSend_assetInfo(*(a1 + 32), v156, v157, v158, v159);
      objc_msgSend_setSiriAssetInfo_(v120, v161, v160, v162, v163);

      v168 = objc_msgSend_MP_WHAMetricsInfo(*(a1 + 32), v164, v165, v166, v167);
      objc_msgSend_setSiriWHAMetricsInfo_(v120, v169, v168, v170, v171);

      v176 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v172, v173, v174, v175);
      v180 = v176;
      if ((v237 & 4) != 0)
      {
        objc_msgSend_setAppBundleID_(v176, v177, @"com.apple.iBooks", v178, v179);
      }

      v243[0] = MEMORY[0x277D85DD0];
      v243[1] = 3221225472;
      v243[2] = sub_2334F9124;
      v243[3] = &unk_2789DB850;
      v238 = v180;
      v244 = v238;
      v181 = v120;
      v182 = *(a1 + 32);
      v235 = v181;
      v245 = v181;
      v246 = v182;
      v248 = v239;
      v249 = v5;
      v247 = *(a1 + 56);
      v250 = *(a1 + 64);
      v183 = MEMORY[0x2383A14D0](v243);
      v188 = objc_msgSend_items(v84, v184, v185, v186, v187);
      v193 = objc_msgSend_firstObject(v188, v189, v190, v191, v192);
      v197 = objc_msgSend_valueForProperty_(v193, v194, *MEMORY[0x277CD5780], v195, v196);
      v202 = objc_msgSend_BOOLValue(v197, v198, v199, v200, v201);

      if (v202)
      {
        v207 = objc_msgSend_defaultManager(MEMORY[0x277D7FA28], v203, v204, v205, v206, v235);
        v240[0] = MEMORY[0x277D85DD0];
        v240[1] = 3221225472;
        v240[2] = sub_2334F9210;
        v240[3] = &unk_2789DB878;
        v240[4] = *(a1 + 32);
        v241 = *(a1 + 56);
        v242 = v183;
        objc_msgSend_getAgeVerificationStateWithCompletion_(v207, v208, v240, v209, v210);
      }

      else
      {
        v183[2](v183);
      }

      v39 = v236;
    }

    else
    {
      if (!objc_msgSend_length(*(*(a1 + 32) + 88), v107, v108, v109, v110))
      {
        objc_msgSend_aceId(*(a1 + 32), v211, v212, v213, v214);
        v215 = v34;
        v217 = v216 = v39;
        v218 = sub_233505670(@"Set Queue", v217);
        v219 = *(a1 + 32);
        v220 = *(v219 + 88);
        *(v219 + 88) = v218;

        v39 = v216;
        v34 = v215;
      }

      v221 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
      {
        v222 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v252 = v222;
        _os_log_impl(&dword_2334D9000, v221, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: enqueueing reference item", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }

    goto LABEL_40;
  }

LABEL_32:
  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v71, v72, v73, v74))
  {
    objc_msgSend_aceId(*(a1 + 32), v223, v224, v225, v226);
    v227 = v34;
    v229 = v228 = v39;
    v230 = sub_233505670(@"Set Queue", v229);
    v231 = *(a1 + 32);
    v232 = *(v231 + 88);
    *(v231 + 88) = v230;

    v39 = v228;
    v34 = v227;
  }

  v233 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
  {
    v234 = *(*(a1 + 32) + 88);
    *buf = 138543362;
    v252 = v234;
    _os_log_impl(&dword_2334D9000, v233, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: enqueueing reference item", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
LABEL_40:
}

void sub_2334F9124(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = objc_msgSend_hashedRouteUIDs(*(a1 + 48), a2, a3, a4, a5);
  v9 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F9390;
  v12[3] = &unk_2789DB6C0;
  v10 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v15 = v9;
  v14 = v10;
  v16 = *(a1 + 69);
  v13 = *(a1 + 40);
  objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v6, v11, v7, v8, v9, *(a1 + 65), v12);
}

void sub_2334F9210(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Set Queue", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 88);
    *(v14 + 88) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 88);
    v32 = 138543618;
    v33 = v21;
    v34 = 1024;
    isExplicitContentAllowed = objc_msgSend_isExplicitContentAllowed(v3, v17, v18, v19, v20);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: explicit content allowed: %{BOOL}u", &v32, 0x12u);
  }

  if (objc_msgSend_isExplicitContentAllowed(v3, v22, v23, v24, v25))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v26 = *(a1 + 40);
    v27 = objc_alloc(MEMORY[0x277D47208]);
    v31 = objc_msgSend_initWithErrorCode_(v27, v28, *MEMORY[0x277D48590], v29, v30);
    (*(v26 + 16))(v26, v31);
  }
}

void sub_2334F9390(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 88);
      v18 = *(a1 + 56);
      v27 = 138543618;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Queue (local) <%{public}@>: destination not available, local allowed %{BOOL}u", &v27, 0x12u);
    }

    v19 = *(a1 + 48);
    v20 = objc_alloc(MEMORY[0x277D47208]);
    v24 = objc_msgSend_initWithErrorCode_(v20, v21, *MEMORY[0x277D485A0], v22, v23);
    (*(v19 + 16))(v19, v24);
  }

  if (*(a1 + 57))
  {
    v25 = *(a1 + 48);
    v26 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    objc_msgSend_sendQueue_toDestination_shouldResync_completion_(*(a1 + 32), v3, *(a1 + 40), v7, 1, *(a1 + 48));
  }
}

uint64_t sub_2334FA878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334FA890(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_items(*(*(*(a1 + 56) + 8) + 40), a2, a3, a4, a5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  v16 = *(a1 + 32);
  if (v11)
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = *(a1 + 64);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2334FAAA0;
    v33[3] = &unk_2789DB800;
    v19 = *(a1 + 40);
    v34 = *(a1 + 48);
    objc_msgSend__playMediaItems_contextID_dryRun_completion_(v16, v20, v17, v19, v18, v33);
    v21 = v34;
  }

  else
  {
    if (!objc_msgSend_length(v16[11], v12, v13, v14, v15))
    {
      v26 = objc_msgSend_aceId(*(a1 + 32), v22, v23, v24, v25);
      v27 = sub_233505670(@"Set Queue", v26);
      v28 = *(a1 + 32);
      v29 = *(v28 + 88);
      *(v28 + 88) = v27;
    }

    v30 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 88);
      *buf = 138543362;
      v36 = v31;
      _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no for you cache", buf, 0xCu);
    }

    v32 = *(a1 + 48);
    v21 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v32 + 16))(v32, 1, v21);
  }
}

uint64_t sub_2334FAA74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_2334FAB84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v300 = *MEMORY[0x277D85DE8];
  Availability = objc_msgSend_assistantStreamingGetAvailability_(*(*(a1 + 32) + 64), a2, a2, a4, a5);
  if (Availability != 1)
  {
    if (!*(a1 + 40))
    {
      if (!objc_msgSend_length(*(*(a1 + 32) + 88), v8, v9, v10, v11))
      {
        v109 = objc_msgSend_aceId(*(a1 + 32), v105, v106, v107, v108);
        v110 = sub_233505670(@"Set Queue", v109);
        v111 = *(a1 + 32);
        v112 = *(v111 + 88);
        *(v111 + 88) = v110;
      }

      v113 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v114 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v296 = v114;
        _os_log_impl(&dword_2334D9000, v113, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no media items requested", buf, 0xCu);
      }

      v22 = *(a1 + 48);
      v23 = objc_alloc(MEMORY[0x277D47208]);
      v27 = MEMORY[0x277D48648];
      goto LABEL_31;
    }

    v278 = a2;
    v280 = Availability;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v33 = objc_msgSend_items(*(a1 + 40), v29, v30, v31, v32);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v291, v299, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v292;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v292 != v41)
          {
            objc_enumerationMutation(v33);
          }

          v43 = objc_msgSend_identifier(*(*(&v291 + 1) + 8 * i), v36, v37, v38, v39, v278);
          v44 = sub_23350261C(v43);
          if (v44 == 3)
          {
            v49 = objc_msgSend_lastPathComponent(v43, v45, v46, v47, v48);
            v54 = objc_msgSend_longLongValue(v49, v50, v51, v52, v53);

            if (!v54)
            {
              goto LABEL_21;
            }

            v58 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v55, v54, v56, v57);
            objc_msgSend_addObject_(v28, v59, v58, v60, v61);
          }

          else
          {
            v62 = v44;
            if (!objc_msgSend_length(*(*(a1 + 32) + 88), v45, v46, v47, v48))
            {
              v67 = objc_msgSend_aceId(*(a1 + 32), v63, v64, v65, v66);
              v68 = sub_233505670(@"Set Queue", v67);
              v69 = *(a1 + 32);
              v70 = *(v69 + 88);
              *(v69 + 88) = v68;
            }

            v58 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v71 = *(*(a1 + 32) + 88);
              *buf = 138543618;
              v296 = v71;
              v297 = 2048;
              v298 = v62;
              _os_log_impl(&dword_2334D9000, v58, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: content origin %ld", buf, 0x16u);
            }
          }

LABEL_21:
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v291, v299, 16);
      }

      while (v40);
    }

    v72 = v28;
    if (objc_msgSend_count(v28, v73, v74, v75, v76) || (objc_msgSend_identifier(*(a1 + 40), v77, v78, v79, v80), v136 = objc_claimAutoreleasedReturnValue(), v136, !v136))
    {
      v81 = objc_msgSend_identifier(*(a1 + 40), v77, v78, v79, v80, v278);
      v86 = objc_msgSend_scheme(v81, v82, v83, v84, v85);
      isEqualToString = objc_msgSend_isEqualToString_(v86, v87, @"x-sampplaylist", v88, v89);

      v95 = 0x27DE0E000;
      if (isEqualToString)
      {
        v96 = objc_alloc(MEMORY[0x277CD5DA0]);
        v101 = objc_msgSend_identityKind(MEMORY[0x277CD5F08], v97, v98, v99, v100);
        v289[0] = MEMORY[0x277D85DD0];
        v289[1] = 3221225472;
        v289[2] = sub_2334FB6AC;
        v289[3] = &unk_2789DB7B0;
        v290 = *(a1 + 40);
        v103 = objc_msgSend_initWithSource_modelKind_block_(v96, v102, @"MPCAssistant", v101, v289);

        v104 = v290;
      }

      else
      {
        v115 = objc_msgSend_identifier(*(a1 + 40), v91, v92, v93, v94);
        v120 = objc_msgSend_scheme(v115, v116, v117, v118, v119);
        v124 = objc_msgSend_isEqualToString_(v120, v121, @"x-sampcollection-album", v122, v123);

        if (!v124)
        {
          v103 = 0;
LABEL_41:
          v164 = objc_msgSend_count(v28, v125, v126, v127, v128, v278);
          v165 = *(v95 + 1468);
          v170 = objc_msgSend_length(*(*(a1 + 32) + v165), v166, v167, v168, v169);
          if (!v164)
          {
            if (!v170)
            {
              v250 = objc_msgSend_aceId(*(a1 + 32), v171, v172, v173, v174);
              v251 = sub_233505670(@"Set Queue", v250);
              v252 = *(a1 + 32);
              v253 = *(v252 + v165);
              *(v252 + v165) = v251;
            }

            v254 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
            {
              v259 = *(*(a1 + 32) + v165);
              v260 = objc_msgSend_items(*(a1 + 40), v255, v256, v257, v258);
              *buf = 138543618;
              v296 = v259;
              v297 = 2114;
              v298 = v260;
              _os_log_impl(&dword_2334D9000, v254, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no playable items in %{public}@", buf, 0x16u);
            }

            v261 = *(a1 + 48);
            v262 = objc_alloc(MEMORY[0x277D47208]);
            v190 = objc_msgSend_initWithErrorCode_(v262, v263, *MEMORY[0x277D48648], v264, v265);
            (*(v261 + 16))(v261, v190);
            goto LABEL_62;
          }

          if (!v170)
          {
            v175 = objc_msgSend_aceId(*(a1 + 32), v171, v172, v173, v174);
            v176 = sub_233505670(@"Set Queue", v175);
            v177 = *(a1 + 32);
            v178 = *(v177 + v165);
            *(v177 + v165) = v176;
          }

          v179 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
          {
            v180 = *(*(a1 + 32) + v165);
            *buf = 138543618;
            v296 = v180;
            v297 = 2114;
            v298 = v28;
            _os_log_impl(&dword_2334D9000, v179, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: queue from store identifers: %{public}@", buf, 0x16u);
          }

          shouldShuffle = objc_msgSend_shouldShuffle(*(a1 + 32), v181, v182, v183, v184);
          v190 = objc_msgSend_refId(*(a1 + 32), v186, v187, v188, v189);
          v192 = objc_msgSend_storeTracklistQueueWithContextID_storeItemIDs_collectionIdentifierSet_(MEMORY[0x277D27888], v191, v190, v28, v103);
          objc_msgSend_setShuffleType_(v192, v193, shouldShuffle, v194, v195);
          shouldOverrideManuallyCuratedUpNext = objc_msgSend_shouldOverrideManuallyCuratedUpNext(*(a1 + 32), v196, v197, v198, v199);
          objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v192, v201, shouldOverrideManuallyCuratedUpNext, v202, v203);
          v208 = objc_msgSend_startPlaying(*(a1 + 32), v204, v205, v206, v207);
          v213 = objc_msgSend_BOOLValue(v208, v209, v210, v211, v212);
          objc_msgSend_setShouldImmediatelyStartPlayback_(v192, v214, v213, v215, v216);

          v221 = objc_msgSend_recommendationId(*(a1 + 32), v217, v218, v219, v220);
          objc_msgSend_setSiriRecommendationID_(v192, v222, v221, v223, v224);

          v229 = objc_msgSend_assetInfo(*(a1 + 32), v225, v226, v227, v228);
          objc_msgSend_setSiriAssetInfo_(v192, v230, v229, v231, v232);

          v237 = objc_msgSend_MP_WHAMetricsInfo(*(a1 + 32), v233, v234, v235, v236);
          objc_msgSend_setSiriWHAMetricsInfo_(v192, v238, v237, v239, v240);

          v281[0] = MEMORY[0x277D85DD0];
          v281[1] = 3221225472;
          v281[2] = sub_2334FB7C4;
          v281[3] = &unk_2789DB7D8;
          v241 = v192;
          v242 = *(a1 + 32);
          v282 = v241;
          v283 = v242;
          v285 = v279;
          v284 = *(a1 + 48);
          v286 = *(a1 + 56);
          v243 = MEMORY[0x2383A14D0](v281);
          v248 = v243;
          if (v280 == 3)
          {
            v249 = *(v243 + 16);
          }

          else
          {
            if (v280 != 4)
            {
              if (!objc_msgSend_length(*(*(a1 + 32) + v165), v244, v245, v246, v247))
              {
                v270 = objc_msgSend_aceId(*(a1 + 32), v266, v267, v268, v269);
                v271 = sub_233505670(@"Set Queue", v270);
                v272 = *(a1 + 32);
                v273 = *(v272 + v165);
                *(v272 + v165) = v271;
              }

              v274 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
              {
                v275 = *(*(a1 + 32) + v165);
                *buf = 138543362;
                v296 = v275;
                _os_log_impl(&dword_2334D9000, v274, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: remapping not supported", buf, 0xCu);
              }

              v276 = *(a1 + 48);
              v277 = objc_alloc_init(MEMORY[0x277D47208]);
              (*(v276 + 16))(v276, v277);

              goto LABEL_61;
            }

            v249 = *(v243 + 16);
          }

          v249();
LABEL_61:

LABEL_62:
          goto LABEL_63;
        }

        v129 = objc_alloc(MEMORY[0x277CD5DA0]);
        v134 = objc_msgSend_identityKind(MEMORY[0x277CD5E48], v130, v131, v132, v133);
        v287[0] = MEMORY[0x277D85DD0];
        v287[1] = 3221225472;
        v287[2] = sub_2334FB738;
        v287[3] = &unk_2789DB7B0;
        v288 = *(a1 + 40);
        v103 = objc_msgSend_initWithSource_modelKind_block_(v129, v135, @"MPCAssistant", v134, v287);

        v104 = v288;
      }
    }

    else
    {
      v95 = 0x27DE0E000uLL;
      if (!objc_msgSend_length(*(*(a1 + 32) + 88), v77, v78, v79, v80))
      {
        v141 = objc_msgSend_aceId(*(a1 + 32), v137, v138, v139, v140);
        v142 = sub_233505670(@"Set Queue", v141);
        v143 = *(a1 + 32);
        v144 = *(v143 + 88);
        *(v143 + 88) = v142;
      }

      v145 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v150 = *(*(a1 + 32) + 88);
        v151 = objc_msgSend_identifier(*(a1 + 40), v146, v147, v148, v149);
        *buf = 138543618;
        v296 = v150;
        v297 = 2114;
        v298 = v151;
        _os_log_impl(&dword_2334D9000, v145, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: using collection identifier %{public}@", buf, 0x16u);
      }

      v104 = objc_msgSend_identifier(*(a1 + 40), v152, v153, v154, v155);
      v160 = objc_msgSend_lastPathComponent(v104, v156, v157, v158, v159);
      objc_msgSend_addObject_(v28, v161, v160, v162, v163);

      v103 = 0;
    }

    goto LABEL_41;
  }

  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v8, v9, v10, v11))
  {
    v16 = objc_msgSend_aceId(*(a1 + 32), v12, v13, v14, v15);
    v17 = sub_233505670(@"Set Queue", v16);
    v18 = *(a1 + 32);
    v19 = *(v18 + 88);
    *(v18 + 88) = v17;
  }

  v20 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = *(*(a1 + 32) + 88);
    *buf = 138543362;
    v296 = v21;
    _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: network unavailable", buf, 0xCu);
  }

  v22 = *(a1 + 48);
  v23 = objc_alloc(MEMORY[0x277D47208]);
  v27 = MEMORY[0x277D485A8];
LABEL_31:
  v72 = objc_msgSend_initWithErrorCode_(v23, v24, *v27, v25, v26);
  (*(v22 + 16))(v22, v72);
LABEL_63:
}

void sub_2334FB6AC(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334FBAD4;
  v6[3] = &unk_2789DB788;
  v7 = *(a1 + 32);
  objc_msgSend_setUniversalStoreIdentifiersWithBlock_(a2, v3, v6, v4, v5);
}

void sub_2334FB738(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334FBA5C;
  v6[3] = &unk_2789DB788;
  v7 = *(a1 + 32);
  objc_msgSend_setUniversalStoreIdentifiersWithBlock_(a2, v3, v6, v4, v5);
}

void sub_2334FB7C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27878], a2, a3, a4, a5);
  v8 = *(a1 + 32);
  v13 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), v9, v10, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2334FB8C0;
  v16[3] = &unk_2789DB8F0;
  v14 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  v18 = v14;
  v19 = *(a1 + 60);
  v17 = *(a1 + 32);
  objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v7, v15, v8, v13, a2, *(a1 + 56), v16);
}

void sub_2334FB8C0(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 88);
      v26 = 138543362;
      v27 = v17;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: destination not available, local allowed YES", &v26, 0xCu);
    }

    v18 = *(a1 + 48);
    v19 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithErrorCode_(v19, v20, *MEMORY[0x277D485A0], v21, v22);
    (*(v18 + 16))(v18, v23);
  }

  if (*(a1 + 56))
  {
    v24 = *(a1 + 48);
    v25 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v24 + 16))(v24, v25);
  }

  else
  {
    objc_msgSend_sendQueue_toDestination_shouldResync_completion_(*(a1 + 32), v3, *(a1 + 40), v7, 0, *(a1 + 48));
  }
}

void sub_2334FBA5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v21 = objc_msgSend_identifier(v2, v4, v5, v6, v7);
  v12 = objc_msgSend_lastPathComponent(v21, v8, v9, v10, v11);
  v17 = objc_msgSend_longLongValue(v12, v13, v14, v15, v16);
  objc_msgSend_setSubscriptionAdamID_(v3, v18, v17, v19, v20);
}

void sub_2334FBAD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v16 = objc_msgSend_identifier(v2, v4, v5, v6, v7);
  v12 = objc_msgSend_lastPathComponent(v16, v8, v9, v10, v11);
  objc_msgSend_setGlobalPlaylistID_(v3, v13, v12, v14, v15);
}

void sub_2334FBE48(uint64_t a1)
{
  v29 = *(a1 + 32);
  v6 = objc_msgSend_scheme(*(a1 + 40), v2, v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"x-sampplaylist", v8, v9);

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  if (isEqualToString)
  {
    objc_msgSend_MPMediaItemQueryOnlyPlayableItems_withUserIdentity_plugin_hash_(v12, v11, 1, *(v13 + 72), @"Set Queue", *(v13 + 88));
    v29 = v14 = v29;
  }

  else
  {
    v14 = objc_msgSend_albumQueryByGroupingForSchemeWithUserIdentity_plugin_hash_(v12, v11, *(v13 + 72), @"Set Queue", *(v13 + 88));
    v19 = objc_msgSend_collections(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

    if (v24 == 1)
    {
      v14 = v14;

      objc_msgSend_setShouldShuffle_(*(a1 + 56), v25, 0, v26, v27);
      v29 = v14;
    }
  }

  objc_msgSend__playMediaItems_contextID_dryRun_completion_(*(a1 + 56), v28, v29, *(a1 + 64), *(a1 + 80), *(a1 + 72));
}

uint64_t sub_2334FBF74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_2334FC074(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334FC144;
  v8[3] = &unk_2789DB6E8;
  v8[4] = v4;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v11 = a2;
  v12 = *(a1 + 56);
  objc_msgSend_assistantRadioGetAvailability_completion_(v5, v6, a2, v8, v7);
}

void sub_2334FC144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v155 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (!a2)
  {
    if (!objc_msgSend_length(v6[11], 0, a3, a4, a5))
    {
      v38 = objc_msgSend_aceId(*(a1 + 32), v34, v35, v36, v37);
      v39 = sub_233505670(@"Set Queue", v38);
      v40 = *(a1 + 32);
      v41 = *(v40 + 88);
      *(v40 + 88) = v39;
    }

    v42 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(a1 + 32) + 88);
      *buf = 138543362;
      v152 = v43;
      _os_log_impl(&dword_2334D9000, v42, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: radio unavailable", buf, 0xCu);
    }

    v18 = *(a1 + 48);
    v44 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithErrorCode_(v44, v45, *MEMORY[0x277D48660], v46, v47);
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    if (!objc_msgSend_length(v6[11], 2, a3, a4, a5))
    {
      v28 = objc_msgSend_aceId(*(a1 + 32), v24, v25, v26, v27);
      v29 = sub_233505670(@"Set Queue", v28);
      v30 = *(a1 + 32);
      v31 = *(v30 + 88);
      *(v30 + 88) = v29;
    }

    v32 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(*(a1 + 32) + 88);
      *buf = 138543362;
      v152 = v33;
      _os_log_impl(&dword_2334D9000, v32, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: companion unavailable", buf, 0xCu);
    }

    v18 = *(a1 + 48);
    v23 = objc_alloc_init(MEMORY[0x277D47208]);
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    if (!objc_msgSend_length(v6[11], 1, a3, a4, a5))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 88);
      *buf = 138543362;
      v152 = v17;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: network unavailable", buf, 0xCu);
    }

    v18 = *(a1 + 48);
    v19 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithErrorCode_(v19, v20, *MEMORY[0x277D485A8], v21, v22);
LABEL_20:
    v48 = v23;
    (*(v18 + 16))(v18, v23);
    goto LABEL_33;
  }

  v48 = objc_msgSend_refId(v6, a2, a3, a4, a5);
  v57 = objc_msgSend_lastPathComponent(*(a1 + 40), v49, v50, v51, v52);
  if (v57)
  {
    v58 = objc_msgSend_radioQueueWithContextID_stationStringID_(MEMORY[0x277D27870], v53, v48, v57, v56);
    v63 = objc_msgSend_startPlaying(*(a1 + 32), v59, v60, v61, v62);
    v68 = objc_msgSend_BOOLValue(v63, v64, v65, v66, v67);
    objc_msgSend_setShouldImmediatelyStartPlayback_(v58, v69, v68, v70, v71);

    shouldOverrideManuallyCuratedUpNext = objc_msgSend_shouldOverrideManuallyCuratedUpNext(*(a1 + 32), v72, v73, v74, v75);
    objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v58, v77, shouldOverrideManuallyCuratedUpNext, v78, v79);
    v84 = objc_msgSend_recommendationId(*(a1 + 32), v80, v81, v82, v83);
    objc_msgSend_setSiriRecommendationID_(v58, v85, v84, v86, v87);

    v92 = objc_msgSend_assetInfo(*(a1 + 32), v88, v89, v90, v91);
    objc_msgSend_setSiriAssetInfo_(v58, v93, v92, v94, v95);

    v100 = objc_msgSend_MP_WHAMetricsInfo(*(a1 + 32), v96, v97, v98, v99);
    objc_msgSend_setSiriWHAMetricsInfo_(v58, v101, v100, v102, v103);

    v104 = a2 == 4;
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v105, v106, v107, v108))
    {
      v113 = objc_msgSend_aceId(*(a1 + 32), v109, v110, v111, v112);
      v114 = sub_233505670(@"Set Queue", v113);
      v115 = *(a1 + 32);
      v116 = *(v115 + 88);
      *(v115 + 88) = v114;
    }

    v117 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v152 = v118;
      v153 = 2114;
      v154 = v57;
      _os_log_impl(&dword_2334D9000, v117, OS_LOG_TYPE_DEFAULT, "Set Queue (radio) <%{public}@>: station %{public}@", buf, 0x16u);
    }

    v119 = a2 == 4;

    v124 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27878], v120, v121, v122, v123);
    v129 = objc_msgSend_hashedRouteUIDs(*(a1 + 32), v125, v126, v127, v128);
    v146[0] = MEMORY[0x277D85DD0];
    v146[1] = 3221225472;
    v146[2] = sub_2334FC778;
    v146[3] = &unk_2789DB6C0;
    v146[4] = *(a1 + 32);
    v149 = v104;
    v130 = *(a1 + 48);
    v150 = *(a1 + 60);
    v147 = v58;
    v148 = v130;
    v131 = *(a1 + 56);
    v132 = v58;
    objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v124, v133, v132, v129, v119, v131, v146);
  }

  else
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v53, v54, v55, v56))
    {
      v138 = objc_msgSend_aceId(*(a1 + 32), v134, v135, v136, v137);
      v139 = sub_233505670(@"Set Queue", v138);
      v140 = *(a1 + 32);
      v141 = *(v140 + 88);
      *(v140 + 88) = v139;
    }

    v142 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = *(a1 + 40);
      v144 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v152 = v144;
      v153 = 2114;
      v154 = v143;
      _os_log_impl(&dword_2334D9000, v142, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: no radio identifier %{public}@", buf, 0x16u);
    }

    v145 = *(a1 + 48);
    v124 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v145 + 16))(v145, v124);
  }

LABEL_33:
}

void sub_2334FC778(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v3, v4, v5, v6))
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Queue", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 88);
      v18 = *(a1 + 56);
      v27 = 138543618;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: destination not available, local allowed %{BOOL}u", &v27, 0x12u);
    }

    v19 = *(a1 + 48);
    v20 = objc_alloc(MEMORY[0x277D47208]);
    v24 = objc_msgSend_initWithErrorCode_(v20, v21, *MEMORY[0x277D485A0], v22, v23);
    (*(v19 + 16))(v19, v24);
  }

  if (*(a1 + 57))
  {
    v25 = *(a1 + 48);
    v26 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    objc_msgSend_sendQueue_toDestination_shouldResync_completion_(*(a1 + 32), v3, *(a1 + 40), v7, 0, *(a1 + 48));
  }
}

uint64_t sub_2334FD034(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), a2, a3, a4, a5))
    {
      v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
      v11 = sub_233505670(@"Set Queue", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 88);
      *(v12 + 88) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = v19[11];
      v22 = objc_msgSend_dryRun(v19, v15, v16, v17, v18);
      v23 = &stru_2848D4AE0;
      v34 = 138543874;
      v35 = v21;
      v36 = 2114;
      if (v22)
      {
        v23 = @" ⚠️ DRY RUN";
      }

      v37 = v20;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Queue (localstore) <%{public}@>: search failed, use identifier %{public}@%{public}@", &v34, 0x20u);
    }

    v24 = *(a1 + 32);
    v29 = objc_msgSend_dryRun(v24, v25, v26, v27, v28);
    return objc_msgSend__performStoreItemsSetQueueAsDryRun_completion_(v24, v30, v29, *(a1 + 48), v31);
  }

  else
  {
    v33 = *(*(a1 + 48) + 16);

    return v33();
  }
}

void sub_2334FD4DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = v6[11];
  v8 = objc_msgSend_requesterSharedUserId(v6, a2, a3, a4, a5);
  v13 = objc_msgSend_sharedUserIdFromPlayableMusicAccount(*(a1 + 32), v9, v10, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334FD5B8;
  v15[3] = &unk_2789DB648;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v14;
  sub_233506A24(@"Set Queue", v7, v8, v13, v15);
}

void sub_2334FD5B8(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    objc_storeStrong((*(a1 + 32) + 80), a3);
    v8 = *(a1 + 32);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2334FD7FC;
    v42[3] = &unk_2789DB620;
    v42[4] = v8;
    v43 = *(a1 + 40);
    objc_msgSend__performWithCompletion_(v8, v9, v42, v10, v11);
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v16 = objc_msgSend_initWithReason_(v12, v13, @"no user identity", v14, v15);
    if (!objc_msgSend_length(*(*(a1 + 32) + 88), v17, v18, v19, v20))
    {
      v25 = objc_msgSend_aceId(*(a1 + 32), v21, v22, v23, v24);
      v26 = sub_233505670(@"Set Queue", v25);
      v27 = *(a1 + 32);
      v28 = *(v27 + 88);
      *(v27 + 88) = v26;
    }

    v29 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(a1 + 32) + 88);
      v35 = objc_msgSend_dictionary(v16, v30, v31, v32, v33);
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "Set Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v36 = *(a1 + 40);
    v41 = objc_msgSend_dictionary(v16, v37, v38, v39, v40);
    (*(v36 + 16))(v36, v41);
  }
}

void sub_2334FD7FC(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_length(*(*(a1 + 32) + 88), v4, v5, v6, v7))
  {
    v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
    v13 = sub_233505670(@"Set Queue", v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 88);
    *(v14 + 88) = v13;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 88);
    v22 = objc_msgSend_dictionary(v3, v17, v18, v19, v20);
    v29 = 138543618;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (completion) <%{public}@>: notifying assistant %{public}@", &v29, 0x16u);
  }

  v23 = *(a1 + 40);
  v28 = objc_msgSend_dictionary(v3, v24, v25, v26, v27);
  (*(v23 + 16))(v23, v28);
}

void sub_2334FDD50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334FDE68;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334FDE68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334FDF38;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 25, a2, v5, v10);
}

void sub_2334FDF38(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Set Repeat Mode", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Set Repeat Mode", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Set Repeat Mode (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}