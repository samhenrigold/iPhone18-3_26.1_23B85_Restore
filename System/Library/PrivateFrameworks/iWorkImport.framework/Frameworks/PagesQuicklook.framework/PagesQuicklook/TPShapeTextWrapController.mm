@interface TPShapeTextWrapController
- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables;
@end

@implementation TPShapeTextWrapController

- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables
{
  v166 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  targetCopy = target;
  v10 = [TPTextWrapCookie alloc];
  v18 = objc_msgSend_initWithColumn_targetLayout_(v10, v11, v14, v15, v16, v17, columnCopy, targetCopy, v12, v13);
  objc_opt_class();
  v28 = objc_msgSend_parent(targetCopy, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = TSUDynamicCast();

  if (v29)
  {
    v39 = objc_msgSend_pathSource(v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    isRectangular = objc_msgSend_isRectangular(v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);

    if ((isRectangular & 1) == 0)
    {
      v50 = objc_msgSend_interiorWrapSegments(v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      objc_msgSend_setInteriorWrapSegments_(v18, v51, v55, v56, v57, v58, v50, v52, v53, v54);
    }
  }

  v159 = columnCopy;
  objc_msgSend_frameBounds(columnCopy, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  objc_opt_class();
  v76 = objc_msgSend_pageLayout(targetCopy, v67, v72, v73, v74, v75, v68, v69, v70, v71);
  v77 = TSUDynamicCast();

  v85 = objc_msgSend_layoutsCausingWrapOnTextLayoutTarget_ignoreIntersection_(v77, v78, v81, v82, v83, v84, targetCopy, 1, v79, v80);
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, 0, v88, v89, v90, &v161, v165, 16, v87);
  if (v91)
  {
    v101 = v91;
    v102 = *v162;
    do
    {
      for (i = 0; i != v101; ++i)
      {
        if (*v162 != v102)
        {
          objc_enumerationMutation(v85);
        }

        v104 = *(*(&v161 + 1) + 8 * i);
        objc_msgSend_boundsInfluencingExteriorWrap(v104, v92, v97, v98, v99, v100, v93, v94, v95, v96);
        v113 = v109.n128_f64[0];
        v114 = v110.n128_f64[0];
        v115 = v111.n128_f64[0];
        v116 = v112.n128_f64[0];
        if (v18)
        {
          objc_msgSend_targetInverseTransformInRoot(v18, v109, v110, v111, v112, v105, v106, v107, v108);
        }

        else
        {
          memset(&v160, 0, sizeof(v160));
        }

        v168.origin.x = v113;
        v168.origin.y = v114;
        v168.size.width = v115;
        v168.size.height = v116;
        v169 = CGRectApplyAffineTransform(v168, &v160);
        v170.origin.x = v60;
        v170.origin.y = v62;
        v170.size.width = v64;
        v170.size.height = v66;
        if (CGRectIntersectsRect(v169, v170))
        {
          objc_msgSend_addFloatingWrappable_(v18, v92, v97, v98, v99, v100, v104, v94, v95, v96);
        }
      }

      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v92, v97, v98, v99, v100, &v161, v165, 16, v96);
    }

    while (v101);
  }

  v117 = *&p->c;
  *&v160.a = *&p->a;
  *&v160.c = v117;
  *&v160.tx = *&p->tx;
  objc_msgSend_setUpCanvasToWrapSpaceAffineTransformation_(self, v92, *&v160.tx, v117, v99, v100, &v160, v94, v95, v96);
  v127 = objc_msgSend_pathSource(v29, v118, v123, v124, v125, v126, v119, v120, v121, v122);
  if (objc_msgSend_isRectangular(v127, v128, v133, v134, v135, v136, v129, v130, v131, v132))
  {
    v146 = objc_msgSend_floatingWrappables(v18, v137, v142, v143, v144, v145, v138, v139, v140, v141);
    *wrappables = objc_msgSend_count(v146, v147, v152, v153, v154, v155, v148, v149, v150, v151) != 0;
  }

  else
  {
    *wrappables = 1;
  }

  return v18;
}

@end