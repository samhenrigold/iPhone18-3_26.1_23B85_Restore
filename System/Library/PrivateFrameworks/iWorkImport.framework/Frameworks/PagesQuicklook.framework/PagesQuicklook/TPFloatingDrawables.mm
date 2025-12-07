@interface TPFloatingDrawables
- (NSArray)swift_allDrawables;
- (NSIndexSet)pageIndexesOfPagesContainingDrawables;
- (NSSet)allDrawables;
- (TPDocumentRoot)documentRoot;
- (TPFloatingDrawables)initWithContext:(id)context;
- (id)childEnumerator;
- (id)drawablesOnPageIndex:(unint64_t)index;
- (id)orderedDrawablesOnPageIndex:(unint64_t)index;
- (id)swift_drawablesOnPageIndex:(unint64_t)index;
- (id)tagForDrawable:(id)drawable;
- (unint64_t)countOfAllDrawables;
- (unint64_t)maximumPageIndex;
- (unint64_t)pageIndexForDrawable:(id)drawable;
- (void)addDrawable:(id)drawable toPageIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c;
- (void)addDrawables:(id)drawables toPageIndex:(unint64_t)index insertContext:(id)context;
- (void)applyTag:(id)tag toDrawable:(id)drawable;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveDrawable:(id)drawable toPageIndex:(unint64_t)index;
- (void)p_addDrawable:(id)drawable toPageIndex:(unint64_t)index;
- (void)p_removeDrawable:(id)drawable;
- (void)removeDrawable:(id)drawable suppressDOLC:(BOOL)c;
- (void)removeDrawables:(id)drawables;
- (void)removeTagForDrawable:(id)drawable;
- (void)saveToArchiver:(id)archiver;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPFloatingDrawables

- (TPFloatingDrawables)initWithContext:(id)context
{
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = TPFloatingDrawables;
  v5 = [(TPFloatingDrawables *)&v27 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    drawablesByPageIndex = v5->_drawablesByPageIndex;
    v5->_drawablesByPageIndex = v6;

    v15 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v8, v11, v12, v13, v14, 517, 0, v9, v10);
    pageIndexByDrawable = v5->_pageIndexByDrawable;
    v5->_pageIndexByDrawable = v15;

    v24 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v17, v20, v21, v22, v23, 517, 0, v18, v19);
    tagByDrawable = v5->_tagByDrawable;
    v5->_tagByDrawable = v24;

    if (!v5->_drawablesByPageIndex || !v5->_pageIndexByDrawable || !v5->_tagByDrawable)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  drawablesByPageIndex = self->_drawablesByPageIndex;
  self->_drawablesByPageIndex = v4;

  v13 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v6, v9, v10, v11, v12, 517, 0, v7, v8);
  pageIndexByDrawable = self->_pageIndexByDrawable;
  self->_pageIndexByDrawable = v13;

  v22 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v15, v18, v19, v20, v21, 517, 0, v16, v17);
  tagByDrawable = self->_tagByDrawable;
  self->_tagByDrawable = v22;

  v24 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v33 = objc_msgSend_messageWithDescriptor_(v24, v25, v29, v30, v31, v32, off_2812F85B8[16], v26, v27, v28);
  selfCopy = self;
  v142 = v24;

  v155 = 0;
  v156 = 0;
  v157 = 0;
  v34 = *(v33 + 32);
  v147 = objc_opt_new();
  v146 = v34;
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = MEMORY[0x277D80A18];
    v145 = v33;
    while (1)
    {
      v37 = *(*(v33 + 40) + 8 * v35 + 8);
      v38 = *(v37 + 96);
      v39 = *(v37 + 32);
      v40 = *(v37 + 56);
      v41 = *(v37 + 80);
      if (!(v39 | v40))
      {
        break;
      }

      if (v39 >= 1)
      {
        v42 = *(v37 + 32);
        v43 = 8;
        while (1)
        {
          v44 = *(*(v37 + 40) + v43);
          v45 = v157;
          if (!v157)
          {
            goto LABEL_11;
          }

          v46 = v156;
          v47 = *v157;
          if (v156 >= *v157)
          {
            break;
          }

          LODWORD(v156) = v156 + 1;
          v48 = *&v157[2 * v46 + 2];
LABEL_13:
          if (*(v44 + 24))
          {
            v50 = *(v44 + 24);
          }

          else
          {
            v50 = v36;
          }

          TSP::Reference::CopyFrom(v48, v50);
          v43 += 8;
          if (!--v42)
          {
            goto LABEL_17;
          }
        }

        if (v47 == HIDWORD(v156))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v155);
          v45 = v157;
          v47 = *v157;
        }

        *v45 = v47 + 1;
        v48 = MEMORY[0x277C92D60](v155);
        v49 = &v157[2 * v156];
        LODWORD(v156) = v156 + 1;
        *(v49 + 1) = v48;
        goto LABEL_13;
      }

LABEL_17:
      if (v40 >= 1)
      {
        v51 = v40;
        v52 = 8;
        while (1)
        {
          v53 = *(*(v37 + 64) + v52);
          v54 = v157;
          if (!v157)
          {
            goto LABEL_24;
          }

          v55 = v156;
          v56 = *v157;
          if (v156 >= *v157)
          {
            break;
          }

          LODWORD(v156) = v156 + 1;
          v57 = *&v157[2 * v55 + 2];
LABEL_26:
          if (*(v53 + 24))
          {
            v59 = *(v53 + 24);
          }

          else
          {
            v59 = v36;
          }

          TSP::Reference::CopyFrom(v57, v59);
          v52 += 8;
          if (!--v51)
          {
            goto LABEL_44;
          }
        }

        if (v56 == HIDWORD(v156))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v155);
          v54 = v157;
          v56 = *v157;
        }

        *v54 = v56 + 1;
        v57 = MEMORY[0x277C92D60](v155);
        v58 = &v157[2 * v156];
        LODWORD(v156) = v156 + 1;
        *(v58 + 1) = v57;
        goto LABEL_26;
      }

LABEL_44:
      v69 = [TPPageGroupInfo alloc];
      v75 = objc_msgSend_initWithPageIndex_bgCount_fgCount_drawableCount_(v69, v70, v71, v72, v73, v74, v38, v39, v40, v41, v142);
      objc_msgSend_addObject_(v147, v76, v80, v81, v82, v83, v75, v77, v78, v79);
      v33 = v145;

      if (++v35 == v146)
      {
        goto LABEL_45;
      }
    }

    if (v41 < 1)
    {
      goto LABEL_44;
    }

    v60 = *(v37 + 80);
    v61 = 8;
    while (1)
    {
      v62 = *(*(v37 + 88) + v61);
      v63 = v157;
      if (!v157)
      {
        goto LABEL_38;
      }

      v64 = v156;
      v65 = *v157;
      if (v156 >= *v157)
      {
        break;
      }

      LODWORD(v156) = v156 + 1;
      v66 = *&v157[2 * v64 + 2];
LABEL_40:
      if (*(v62 + 24))
      {
        v68 = *(v62 + 24);
      }

      else
      {
        v68 = v36;
      }

      TSP::Reference::CopyFrom(v66, v68);
      v61 += 8;
      if (!--v60)
      {
        goto LABEL_44;
      }
    }

    if (v65 == HIDWORD(v156))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v155);
      v63 = v157;
      v65 = *v157;
    }

    *v63 = v65 + 1;
    v66 = MEMORY[0x277C92D60](v155);
    v67 = &v157[2 * v156];
    LODWORD(v156) = v156 + 1;
    *(v67 + 1) = v66;
    goto LABEL_40;
  }

LABEL_45:
  v153[0] = 0;
  v153[1] = v153;
  v153[2] = 0x3032000000;
  v153[3] = sub_275FBF8BC;
  v153[4] = sub_275FBF8CC;
  v154 = 0;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = sub_275FBF8D4;
  v152[3] = &unk_27A6A8290;
  v152[4] = v153;
  v84 = v142;
  v85 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v84, v86, v87, v88, v89, v90, &v155, v85, 0, v152);

  if (*(v33 + 16))
  {
    v100 = *(v33 + 48);
    v101 = *(v100 + 24);
    if (v101 >= 1)
    {
      v102 = 8;
      v103 = MEMORY[0x277D80A18];
      do
      {
        v104 = *(*(v100 + 32) + v102);
        v105 = objc_alloc(MEMORY[0x277CCACA8]);
        v114 = objc_msgSend_tsp_initWithProtobufString_(v105, v106, v110, v111, v112, v113, *(v104 + 24) & 0xFFFFFFFFFFFFFFFELL, v107, v108, v109);
        v115 = *(v104 + 32);
        v151[0] = MEMORY[0x277D85DD0];
        v151[1] = 3221225472;
        v151[2] = sub_275FBF8E4;
        v151[3] = &unk_27A6A82B8;
        v151[4] = selfCopy;
        v151[5] = v114;
        v116 = v84;
        v118 = objc_opt_class();
        if (v115)
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v116, v117, v119, v120, v121, v122, v115, v118, 0, v151, v142);
        }

        else
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v116, v117, v119, v120, v121, v122, v103, v118, 0, v151, v142);
        }

        v102 += 8;
        --v101;
      }

      while (v101);
    }
  }

  v123 = objc_msgSend_sourceType(v84, v91, v96, v97, v98, v99, v92, v93, v94, v95, v142);
  v133 = objc_msgSend_fileFormatVersion(v84, v124, v129, v130, v131, v132, v125, v126, v127, v128);
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = sub_275FBF8FC;
  v148[3] = &unk_27A6A8308;
  v150 = v123 == 3;
  v149 = v146;
  v148[4] = selfCopy;
  v148[5] = v147;
  v148[6] = v153;
  v148[7] = v133;
  objc_msgSend_addFinalizeHandler_(v84, v134, v138, v139, v140, v141, v148, v135, v136, v137);
  _Block_object_dispose(v153, 8);

  sub_275FB56E8(&v155);
}

- (void)saveToArchiver:(id)archiver
{
  v232 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_275FC2680, off_2812F85B8[16], v5, v6);

  v21 = objc_msgSend_allKeys(self->_drawablesByPageIndex, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_sortedArrayUsingSelector_(v21, v22, v26, v27, v28, v29, sel_compare_, v23, v24, v25);

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  obj = v30;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v33, v34, v35, v36, &v225, v231, 16, v32);
  if (v42)
  {
    v214 = *v226;
    do
    {
      v47 = 0;
      v215 = v42;
      do
      {
        if (*v226 != v214)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v225 + 1) + 8 * v47);
        v49 = *(v11 + 40);
        if (!v49)
        {
          goto LABEL_11;
        }

        v50 = *(v11 + 32);
        v51 = *v49;
        if (v50 < *v49)
        {
          *(v11 + 32) = v50 + 1;
          v52 = *&v49[2 * v50 + 2];
          goto LABEL_13;
        }

        if (v51 == *(v11 + 36))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 24));
          v49 = *(v11 + 40);
          v51 = *v49;
        }

        *v49 = v51 + 1;
        v52 = sub_275FAF18C(*(v11 + 24));
        v53 = *(v11 + 32);
        v54 = *(v11 + 40) + 8 * v53;
        *(v11 + 32) = v53 + 1;
        *(v54 + 8) = v52;
LABEL_13:
        v55 = objc_msgSend_unsignedIntValue(v48, v37, v43, v44, v45, v46, v38, v39, v40, v41);
        if (v55 >= 0x7FFFFFFF)
        {
          v188 = v55;
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d bad page index: %lu for drawable", "[TPFloatingDrawables saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", 236, v55);
          v189 = MEMORY[0x277D81150];
          v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v194, v195, v196, v197, "[TPFloatingDrawables saveToArchiver:]", v191, v192, v193);
          v207 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, v203, v204, v205, v206, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v200, v201, v202);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v208, v209, v210, v211, v212, v198, v207, 236, 1, "bad page index: %lu for drawable", v188);

          TSUCrashBreakpoint();
          abort();
        }

        *(v52 + 16) |= 1u;
        *(v52 + 96) = v55;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v224 = 0u;
        v63 = objc_msgSend_orderedDrawablesOnPageIndex_(self, v56, 0, v60, v61, v62, v55, v57, v58, v59);
        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v66, v67, v68, v69, &v221, v230, 16, v65);
        if (v73)
        {
          v78 = *v222;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v222 != v78)
              {
                objc_enumerationMutation(v63);
              }

              v80 = *(*(&v221 + 1) + 8 * i);
              v81 = *(v52 + 88);
              if (!v81)
              {
                goto LABEL_24;
              }

              v82 = *(v52 + 80);
              v83 = *v81;
              if (v82 < *v81)
              {
                *(v52 + 80) = v82 + 1;
                v84 = *&v81[2 * v82 + 2];
                goto LABEL_26;
              }

              if (v83 == *(v52 + 84))
              {
LABEL_24:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v52 + 72));
                v81 = *(v52 + 88);
                v83 = *v81;
              }

              *v81 = v83 + 1;
              v84 = sub_275FAF0C0(*(v52 + 72));
              v85 = *(v52 + 80);
              v86 = *(v52 + 88) + 8 * v85;
              *(v52 + 80) = v85 + 1;
              *(v86 + 8) = v84;
LABEL_26:
              *(v84 + 16) |= 1u;
              v87 = *(v84 + 24);
              if (!v87)
              {
                v88 = *(v84 + 8);
                if (v88)
                {
                  v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
                }

                v87 = MEMORY[0x277C92D60](v88);
                *(v84 + 24) = v87;
              }

              objc_msgSend_setStrongReference_message_(archiverCopy, v70, v74, v75, v76, v77, v80, v87, v71, v72);
            }

            v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v70, v74, v75, v76, v77, &v221, v230, 16, v72);
          }

          while (v73);
        }

        ++v47;
      }

      while (v47 != v215);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, v43, v44, v45, v46, &v225, v231, 16, v41);
    }

    while (v42);
  }

  if (objc_msgSend_count(self->_tagByDrawable, v89, v94, v95, v96, v97, v90, v91, v92, v93))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v98, v100, v101, v102, v103, *MEMORY[0x277D80988], *MEMORY[0x277D80990], @"TPPageTemplates", v99);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v104, v107, v108, v109, v110, 2, v11, v105, v106);
    *(v11 + 16) |= 1u;
    v120 = *(v11 + 48);
    if (!v120)
    {
      v121 = *(v11 + 8);
      if (v121)
      {
        v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
      }

      v120 = sub_275FAF034(v121);
      *(v11 + 48) = v120;
    }

    v122 = objc_msgSend_keyEnumerator(self->_tagByDrawable, v111, v116, v117, v118, v119, v112, v113, v114, v115);
    v132 = objc_msgSend_allObjects(v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
    v141 = objc_msgSend_sortedArrayUsingComparator_(v132, v133, v137, v138, v139, v140, &unk_2885010B8, v134, v135, v136);

    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v142 = v141;
    v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v143, v145, v146, v147, v148, &v217, v229, 16, v144);
    if (v152)
    {
      v157 = *v218;
      do
      {
        for (j = 0; j != v152; ++j)
        {
          if (*v218 != v157)
          {
            objc_enumerationMutation(v142);
          }

          v159 = *(*(&v217 + 1) + 8 * j);
          v160 = *(v120 + 32);
          if (!v160)
          {
            goto LABEL_49;
          }

          v161 = *(v120 + 24);
          v162 = *v160;
          if (v161 < *v160)
          {
            *(v120 + 24) = v161 + 1;
            v163 = *&v160[2 * v161 + 2];
            goto LABEL_51;
          }

          if (v162 == *(v120 + 28))
          {
LABEL_49:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v120 + 16));
            v160 = *(v120 + 32);
            v162 = *v160;
          }

          *v160 = v162 + 1;
          v163 = sub_275FAEFA8(*(v120 + 16));
          v164 = *(v120 + 24);
          v165 = *(v120 + 32) + 8 * v164;
          *(v120 + 24) = v164 + 1;
          *(v165 + 8) = v163;
LABEL_51:
          *(v163 + 16) |= 2u;
          v166 = *(v163 + 32);
          if (!v166)
          {
            v167 = *(v163 + 8);
            if (v167)
            {
              v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
            }

            v166 = MEMORY[0x277C92D60](v167);
            *(v163 + 32) = v166;
          }

          objc_msgSend_setWeakReference_message_(archiverCopy, v149, v153, v154, v155, v156, v159, v166, v150, v151);
          v176 = objc_msgSend_objectForKey_(self->_tagByDrawable, v168, v172, v173, v174, v175, v159, v169, v170, v171);
          v177 = v176;
          v187 = objc_msgSend_UTF8String(v176, v178, v183, v184, v185, v186, v179, v180, v181, v182);
          sub_275FC0914(v163, v187);
        }

        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v149, v153, v154, v155, v156, &v217, v229, 16, v151);
      }

      while (v152);
    }
  }
}

- (unint64_t)countOfAllDrawables
{
  result = self->_pageIndexByDrawable;
  if (result)
  {
    return objc_msgSend_count(result, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  }

  return result;
}

- (NSSet)allDrawables
{
  v10 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10 && objc_msgSend_count(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15))
  {
    v29 = objc_msgSend_setWithArray_(MEMORY[0x277D81310], v21, v25, v26, v27, v28, v20, v22, v23, v24);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (NSArray)swift_allDrawables
{
  v10 = objc_msgSend_allDrawables(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_allObjects(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)drawablesOnPageIndex:(unint64_t)index
{
  if (objc_msgSend_isDocSetupPageIndex_(TPPageInfo, a2, v6, v7, v8, v9, index, v3, v4, v5))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPFloatingDrawables drawablesOnPageIndex:]", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 292, 0, "shouldn't use the doc setup page index in TPFloatingDrawables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  drawablesByPageIndex = self->_drawablesByPageIndex;
  v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, v16, v17, v18, v19, index, v13, v14, v15);
  v55 = objc_msgSend_objectForKeyedSubscript_(drawablesByPageIndex, v47, v51, v52, v53, v54, v46, v48, v49, v50);

  return v55;
}

- (id)swift_drawablesOnPageIndex:(unint64_t)index
{
  v10 = objc_msgSend_drawablesOnPageIndex_(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v20 = objc_msgSend_allObjects(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)orderedDrawablesOnPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_drawablesZOrder(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v31 = objc_msgSend_drawablesOnPageIndex_(self, v23, v27, v28, v29, v30, index, v24, v25, v26);
  v40 = objc_msgSend_orderedDrawables_(v22, v32, v36, v37, v38, v39, v31, v33, v34, v35);

  return v40;
}

- (unint64_t)maximumPageIndex
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = self->_drawablesByPageIndex;
  v9 = 0;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v5, v6, v7, v8, &v25, v29, 16, v4);
  if (v15)
  {
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v2);
        }

        v22 = objc_msgSend_unsignedIntegerValue(*(*(&v25 + 1) + 8 * v21), v10, v16, v17, v18, v19, v11, v12, v13, v14, v25);
        if (v22 <= v9)
        {
          v23 = v9;
        }

        else
        {
          v23 = v22;
        }

        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v23;
        }

        ++v21;
      }

      while (v15 != v21);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v10, v16, v17, v18, v19, &v25, v29, 16, v14);
    }

    while (v15);
  }

  return v9;
}

- (NSIndexSet)pageIndexesOfPagesContainingDrawables
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = self->_drawablesByPageIndex;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v7, v8, v9, v10, &v43, v47, 16, v6);
  if (v16)
  {
    v21 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v23 = objc_msgSend_unsignedIntegerValue(*(*(&v43 + 1) + 8 * i), v11, v17, v18, v19, v20, v12, v13, v14, v15, v43);
        objc_msgSend_addIndex_(v3, v24, v28, v29, v30, v31, v23, v25, v26, v27);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, v17, v18, v19, v20, &v43, v47, 16, v15);
    }

    while (v16);
  }

  v41 = objc_msgSend_copy(v3, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  return v41;
}

- (unint64_t)pageIndexForDrawable:(id)drawable
{
  v10 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, a2, v6, v7, v8, v9, drawable, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_unsignedIntegerValue(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

- (id)tagForDrawable:(id)drawable
{
  v10 = objc_msgSend_objectForKey_(self->_tagByDrawable, a2, v6, v7, v8, v9, drawable, v3, v4, v5);

  return v10;
}

- (void)p_addDrawable:(id)drawable toPageIndex:(unint64_t)index
{
  drawableCopy = drawable;
  v15 = objc_msgSend_documentRoot(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v16, v19, v20, v21, v22, index, v15, v17, v18);

  if (isAlternativePageIndex_documentRoot)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "[TPFloatingDrawables p_addDrawable:toPageIndex:]", v25, v26, v27);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v35, v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v47, v33, v42, 350, 0, "shouldn't use the alternative page page index in TPFloatingDrawables (%lu)", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v53, v54, v55, v56, v49, v50, v51, v52);
  }

  if (index >= 0x7FFFFFFF)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d bad page index: %lu for drawable", "[TPFloatingDrawables p_addDrawable:toPageIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", 357, index);
    v98 = MEMORY[0x277D81150];
    v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v103, v104, v105, v106, "[TPFloatingDrawables p_addDrawable:toPageIndex:]", v100, v101, v102);
    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v109, v110, v111);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v117, v118, v119, v120, v121, v107, v116, 357, 1, "bad page index: %lu for drawable", index);

    TSUCrashBreakpoint();
    abort();
  }

  v57 = objc_alloc(MEMORY[0x277CCABB0]);
  v66 = objc_msgSend_initWithUnsignedInteger_(v57, v58, v62, v63, v64, v65, index, v59, v60, v61);
  v79 = objc_msgSend_objectForKeyedSubscript_(self->_drawablesByPageIndex, v67, v71, v72, v73, v74, v66, v68, v69, v70);
  if (!v79)
  {
    v79 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_msgSend_setObject_forKeyedSubscript_(self->_drawablesByPageIndex, v84, v87, v88, v89, v90, v79, v66, v85, v86);
  }

  objc_msgSend_addObject_(v79, v75, v80, v81, v82, v83, drawableCopy, v76, v77, v78);
  objc_msgSend_setObject_forKey_(self->_pageIndexByDrawable, v91, v94, v95, v96, v97, v66, drawableCopy, v92, v93);
}

- (void)addDrawable:(id)drawable toPageIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  contextCopy = context;
  objc_msgSend_willModify(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (!c)
  {
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(drawableCopy, v28, v31, v32, v33, v34, WeakRetained, contextCopy, v29, v30);
  }

  objc_msgSend_p_addDrawable_toPageIndex_(self, v20, v23, v24, v25, v26, drawableCopy, index, v21, v22);
  if (!c)
  {
    v35 = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(drawableCopy, v36, v39, v40, v41, v42, v35, contextCopy, v37, v38);

    v43 = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_didAddDrawable_(v43, v44, v48, v49, v50, v51, drawableCopy, v45, v46, v47);
  }
}

- (void)addDrawables:(id)drawables toPageIndex:(unint64_t)index insertContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  contextCopy = context;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = drawablesCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v13, v14, v15, v16, &v26, v30, 16, v12);
  if (v19)
  {
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addDrawable_toPageIndex_insertContext_(self, v17, v20, v21, v22, v23, *(*(&v26 + 1) + 8 * v25++), index, contextCopy, v18, v26);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, v20, v21, v22, v23, &v26, v30, 16, v18);
    }

    while (v19);
  }
}

- (void)applyTag:(id)tag toDrawable:(id)drawable
{
  tagCopy = tag;
  drawableCopy = drawable;
  v20 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, v8, v12, v13, v14, v15, drawableCopy, v9, v10, v11);
  if (!tagCopy || !drawableCopy || objc_msgSend_isEqualToString_(tagCopy, v16, v21, v22, v23, v24, &stru_288501738, v17, v18, v19))
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v21, v22, v23, v24, "[TPFloatingDrawables applyTag:toDrawable:]", v17, v18, v19);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v29, v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v37, v38, v39, v40, v41, v27, v36, 405, 0, "The given parameters are invalid.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v47, v48, v49, v50, v43, v44, v45, v46);
  }

  if (!v20)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v21, v22, v23, v24, "[TPFloatingDrawables applyTag:toDrawable:]", v17, v18, v19);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v54, v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v62, v63, v64, v65, v66, v52, v61, 406, 0, "The given drawable is not in the storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v72, v73, v74, v75, v68, v69, v70, v71);
  }

  v76 = objc_msgSend_unsignedIntegerValue(v20, v16, v21, v22, v23, v24, v25, v17, v18, v19);
  v85 = objc_msgSend_drawablesOnPageIndex_(self, v77, v81, v82, v83, v84, v76, v78, v79, v80);
  v113 = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = sub_275FC1868;
  v116 = &unk_27A6A8350;
  v86 = drawableCopy;
  v117 = v86;
  selfCopy = self;
  v87 = tagCopy;
  v119 = v87;
  v88 = v20;
  v120 = v88;
  objc_msgSend_enumerateObjectsUsingBlock_(v85, v89, v93, v94, v95, v96, &v113, v90, v91, v92);
  objc_msgSend_willModify(self, v97, v102, v103, v104, v105, v98, v99, v100, v101, v113, v114, v115, v116);
  objc_msgSend_setObject_forKey_(self->_tagByDrawable, v106, v109, v110, v111, v112, v87, v86, v107, v108);
}

- (void)p_removeDrawable:(id)drawable
{
  drawableCopy = drawable;
  v16 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, v4, v8, v9, v10, v11, drawableCopy, v5, v6, v7);
  if (v16)
  {
    v21 = objc_msgSend_objectForKeyedSubscript_(self->_drawablesByPageIndex, v12, v17, v18, v19, v20, v16, v13, v14, v15);
    objc_msgSend_removeObjectForKey_(self->_pageIndexByDrawable, v22, v26, v27, v28, v29, drawableCopy, v23, v24, v25);
    objc_msgSend_removeObject_(v21, v30, v34, v35, v36, v37, drawableCopy, v31, v32, v33);
    if (!objc_msgSend_count(v21, v38, v43, v44, v45, v46, v39, v40, v41, v42))
    {
      objc_msgSend_removeObjectForKey_(self->_drawablesByPageIndex, v47, v51, v52, v53, v54, v16, v48, v49, v50);
    }

    objc_msgSend_removeObjectForKey_(self->_tagByDrawable, v47, v51, v52, v53, v54, drawableCopy, v48, v49, v50);
  }
}

- (void)removeTagForDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (drawableCopy)
  {
    objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
    objc_msgSend_removeObjectForKey_(self->_tagByDrawable, v13, v17, v18, v19, v20, drawableCopy, v14, v15, v16);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPFloatingDrawables removeTagForDrawable:]", v6, v7, v8);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 445, 0, "The given drawable is nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }
}

- (void)removeDrawable:(id)drawable suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  objc_msgSend_willModify(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  if (!c)
  {
    v24 = objc_msgSend_documentRoot(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    objc_msgSend_willRemoveDrawable_(v24, v25, v29, v30, v31, v32, drawableCopy, v26, v27, v28);

    v42 = objc_msgSend_documentRoot(self, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    objc_msgSend_willBeRemovedFromDocumentRoot_(drawableCopy, v43, v47, v48, v49, v50, v42, v44, v45, v46);
  }

  objc_msgSend_p_removeDrawable_(self, v15, v20, v21, v22, v23, drawableCopy, v17, v18, v19);
  if (!c)
  {
    v60 = objc_msgSend_documentRoot(self, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    objc_msgSend_wasRemovedFromDocumentRoot_(drawableCopy, v61, v65, v66, v67, v68, v60, v62, v63, v64);
  }
}

- (void)removeDrawables:(id)drawables
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  drawablesCopy = drawables;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v5, v7, v8, v9, v10, &v22, v26, 16, v6);
  if (v15)
  {
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(drawablesCopy);
        }

        objc_msgSend_removeDrawable_(self, v11, v16, v17, v18, v19, *(*(&v22 + 1) + 8 * v21++), v12, v13, v14, v22);
      }

      while (v15 != v21);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v11, v16, v17, v18, v19, &v22, v26, 16, v14);
    }

    while (v15);
  }
}

- (void)moveDrawable:(id)drawable toPageIndex:(unint64_t)index
{
  drawableCopy = drawable;
  if (objc_msgSend_pageIndexForDrawable_(self, v6, v10, v11, v12, v13, drawableCopy, v7, v8, v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPFloatingDrawables moveDrawable:toPageIndex:]", v16, v17, v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 486, 0, "moving unknown drawable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }

  else
  {
    objc_msgSend_willModify(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    objc_msgSend_p_removeDrawable_(self, v48, v52, v53, v54, v55, drawableCopy, v49, v50, v51);
    objc_msgSend_p_addDrawable_toPageIndex_(self, v56, v59, v60, v61, v62, drawableCopy, index, v57, v58);
  }
}

- (id)childEnumerator
{
  v10 = objc_msgSend_allDrawables(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_objectEnumerator(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v8, 0, v13, v14, v15, v9, v10, v11, v12, 0);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v19, v20, v21, v22, &v33, v37, 16, v18);
  if (v26)
  {
    v31 = *v34;
    do
    {
      v32 = 0;
      do
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v33 + 1) + 8 * v32++), v23, v27, v28, v29, v30, rootCopy, contextCopy, v24, v25);
      }

      while (v26 != v32);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, v27, v28, v29, v30, &v33, v37, 16, v25);
    }

    while (v26);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  objc_storeWeak(&self->_documentRoot, rootCopy);
  v17 = objc_msgSend_context(rootCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v18, v22, v23, v24, v25, v17, v19, v20, v21);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v34 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v26, 0, v31, v32, v33, v27, v28, v29, v30, 0);
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v37, v38, v39, v40, &v60, v64, 16, v36);
  if (v44)
  {
    v49 = *v61;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(v34);
        }

        v51 = *(*(&v60 + 1) + 8 * i);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v51, v41, v45, v46, v47, v48, rootCopy, contextCopy, v42, v43);
        objc_msgSend_didAddDrawable_(rootCopy, v52, v56, v57, v58, v59, v51, v53, v54, v55);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v41, v45, v46, v47, v48, &v60, v64, 16, v43);
    }

    while (v44);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v73 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  objc_storeWeak(&self->_documentRoot, 0);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v5, 0, v10, v11, v12, v6, v7, v8, v9, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v68, v72, 16, v15);
  if (v25)
  {
    v30 = *v69;
    do
    {
      v31 = 0;
      do
      {
        if (*v69 != v30)
        {
          objc_enumerationMutation(v13);
        }

        v32 = *(*(&v68 + 1) + 8 * v31);
        v33 = objc_msgSend_documentRoot(self, v20, v26, v27, v28, v29, v21, v22, v23, v24);
        objc_msgSend_willRemoveDrawable_(v33, v34, v38, v39, v40, v41, v32, v35, v36, v37);

        objc_msgSend_willBeRemovedFromDocumentRoot_(v32, v42, v46, v47, v48, v49, rootCopy, v43, v44, v45);
        ++v31;
      }

      while (v25 != v31);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v26, v27, v28, v29, &v68, v72, 16, v24);
    }

    while (v25);
  }

  v59 = objc_msgSend_context(rootCopy, v50, v55, v56, v57, v58, v51, v52, v53, v54);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v60, v64, v65, v66, v67, v59, v61, v62, v63);

  objc_storeWeak(&self->_documentRoot, 0);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v36 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v5, 0, v10, v11, v12, v6, v7, v8, v9, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v31, v35, 16, v15);
  if (v24)
  {
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v31 + 1) + 8 * v30++), v20, v25, v26, v27, v28, rootCopy, v21, v22, v23);
      }

      while (v24 != v30);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v31, v35, 16, v23);
    }

    while (v24);
  }
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end