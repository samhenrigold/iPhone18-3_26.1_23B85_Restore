@interface TPTextPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPTextPageGenerator

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  v165 = *MEMORY[0x277D85DE8];
  hintCopy = hint;
  stateCopy = state;
  v16 = objc_msgSend_section(stateCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v26 = objc_msgSend_documentRoot(v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  v36 = objc_msgSend_settings(v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  hasBody = objc_msgSend_hasBody(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);

  if (!hasBody)
  {
    goto LABEL_19;
  }

  v56 = objc_msgSend_pageIndex(stateCopy, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v57 = 1;
  if (objc_msgSend_hasPageHintOfKind_beforePageIndex_(hintCopy, v58, v61, v62, v63, v64, 1, v56, v59, v60))
  {
    v74 = objc_msgSend_bodyCharIndex(stateCopy, v65, v70, v71, v72, v73, v66, v67, v68, v69);
    v84 = objc_msgSend_sectionCharRange(stateCopy, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    if (v74 < &v85[v84])
    {
LABEL_17:
      v57 = 1;
      goto LABEL_20;
    }

    if (objc_msgSend_onLastSection(stateCopy, v85, v90, v91, v92, v93, v86, v87, v88, v89))
    {
      if (!objc_msgSend_bodyLayoutState(stateCopy, v94, v99, v100, v101, v102, v95, v96, v97, v98))
      {
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v111 = objc_msgSend_pageHints(hintCopy, v103, 0, v108, v109, v110, v104, v105, v106, v107, 0);
        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, v114, v115, v116, v117, &v160, v164, 16, v113);
        if (v118)
        {
          v128 = v118;
          v129 = *v161;
LABEL_8:
          v130 = 0;
          while (1)
          {
            if (*v161 != v129)
            {
              objc_enumerationMutation(v111);
            }

            v131 = *(*(&v160 + 1) + 8 * v130);
            if (objc_msgSend_pageKind(v131, v119, v124, v125, v126, v127, v120, v121, v122, v123) == 5)
            {
              break;
            }

            if (objc_msgSend_pageKind(v131, v132, v137, v138, v139, v140, v133, v134, v135, v136) == 1 && objc_msgSend_lineCount(v131, v119, v124, v125, v126, v127, v120, v121, v122, v123))
            {

              v150 = objc_msgSend_pageIndex(stateCopy, v141, v146, v147, v148, v149, v142, v143, v144, v145);
              if ((objc_msgSend_hasEndOfTextLayoutBeforePageIndex_(hintCopy, v151, v155, v156, v157, v158, v150, v152, v153, v154) & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_19;
            }

            if (v128 == ++v130)
            {
              v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v119, v124, v125, v126, v127, &v160, v164, 16, v123);
              if (v128)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      goto LABEL_17;
    }

LABEL_19:
    v57 = 0;
  }

LABEL_20:

  return v57;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v15 = objc_msgSend_pageIndex(state, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v32 = objc_msgSend_pageHintForPageIndex_(hintCopy, v16, v20, v21, v22, v23, v15, v17, v18, v19);

  objc_msgSend_setPageKind_(v32, v24, v28, v29, v30, v31, 1, v25, v26, v27);
}

@end