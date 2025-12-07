@interface PFLLayoutProvider
- (PFLLayoutProvider)initWithTimePosition:(unint64_t)position;
- (id)generateOrientedLayoutsForFullExtent:(CGRect)extent layoutConfiguration:(id)configuration layoutRegions:(id)regions segmentationMatteImage:(id)image segmentationClassification:(unint64_t)classification error:(id *)error;
- (void)invalidateResults;
@end

@implementation PFLLayoutProvider

- (PFLLayoutProvider)initWithTimePosition:(unint64_t)position
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PFLLayoutProvider;
  v4 = [(PFLLayoutProvider *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_timePosition = position;
    v4->_resultsAreValid = 0;
    watchLayout = v4->_watchLayout;
    v4->_watchLayout = 0;
  }

  v7 = pfl_layout_log(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    timePosition = v5->_timePosition;
    *buf = 138412546;
    v12 = v5;
    v13 = 2048;
    v14 = timePosition;
    _os_log_impl(&dword_22D2ED000, v7, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): CREATED for time position %ld.", buf, 0x16u);
  }

  return v5;
}

- (void)invalidateResults
{
  self->_resultsAreValid = 0;
  self->_watchLayout = 0;
  MEMORY[0x2821F96F8]();
}

- (id)generateOrientedLayoutsForFullExtent:(CGRect)extent layoutConfiguration:(id)configuration layoutRegions:(id)regions segmentationMatteImage:(id)image segmentationClassification:(unint64_t)classification error:(id *)error
{
  height = extent.size.height;
  width = extent.size.width;
  v184 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  regionsCopy = regions;
  imageCopy = image;
  v16 = pfl_layout_log(imageCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].a) = 138412290;
    *(&buf[0].a + 4) = self;
    _os_log_impl(&dword_22D2ED000, v16, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): generateOrientedLayout CALLED.", buf, 0xCu);
  }

  v166 = height;
  v167 = width;

  v17 = MEMORY[0x277CBF740];
  v18 = imageCopy;
  context = [v17 context];
  [v18 extent];
  v20 = [context createCGImage:v18 fromRect:?];

  faceRegions = [regionsCopy faceRegions];
  v22 = flipYNormalizedRects(faceRegions);

  petRegions = [regionsCopy petRegions];
  v24 = flipYNormalizedRects(petRegions);

  v26 = pfl_layout_log(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = configurationCopy;
    v28 = [v22 count];
    v29 = [v24 count];
    LODWORD(buf[0].a) = 134218496;
    *(&buf[0].a + 4) = v28;
    configurationCopy = v27;
    WORD2(buf[0].b) = 2048;
    *(&buf[0].b + 6) = v29;
    HIWORD(buf[0].c) = 2048;
    *&buf[0].d = v20;
    _os_log_impl(&dword_22D2ED000, v26, OS_LOG_TYPE_DEFAULT, "PFL:   %ld face rects, %ld pet rects, mask == %p", buf, 0x20u);
  }

  [configurationCopy timeRect];
  v34 = flipYNormalizedRect(v30, v31, v32, v33);
  v168 = v35;
  v169 = v34;
  v37 = v36;
  v39 = v38;
  [regionsCopy preferredCropRect];
  flipYNormalizedRect(v40, v41, v42, v43);
  [regionsCopy acceptableCropRect];
  v48 = flipYNormalizedRect(v44, v45, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [configurationCopy screenSize];
  v56 = v55;
  v58 = v57;
  [(PFLLayoutProvider *)self timePosition];
  v159 = v39;
  v160 = v37;
  v151 = v58;
  v59 = v167;
  v60 = PFLCCalculateLayout();
  CGImageRelease(v20);
  [v60 visibleRect];
  IsEmpty = CGRectIsEmpty(v186);
  if (IsEmpty)
  {
    v62 = pfl_layout_log(IsEmpty);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].a) = 0;
      _os_log_impl(&dword_22D2ED000, v62, OS_LOG_TYPE_DEFAULT, "PFL: Using backup", buf, 2u);
    }

    [configurationCopy screenSize];
    v163 = v64;
    v164 = v63;
    v65 = *MEMORY[0x277D3B3B8] * 0.5;
    v165 = [v22 count];
    v155 = v50;
    v156 = v48;
    v153 = v54;
    v154 = v52;
    if (v165)
    {
      v66 = v22;
      v67 = *MEMORY[0x277CBF348];
      v68 = *(MEMORY[0x277CBF348] + 8);
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v69 = [v66 countByEnumeratingWithState:&v174 objects:buf count:16];
      if (v69)
      {
        v70 = v69;
        v152 = v65;
        v157 = v24;
        v161 = configurationCopy;
        v71 = 0;
        v72 = *v175;
        v73 = v68;
        v74 = v67;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v175 != v72)
            {
              objc_enumerationMutation(v66);
            }

            [*(*(&v174 + 1) + 8 * i) rectValue];
            v74 = v74 + v77 + v76 * 0.5;
            v73 = v73 + v79 + v78 * 0.5;
          }

          v71 += v70;
          v70 = [v66 countByEnumeratingWithState:&v174 objects:buf count:16];
        }

        while (v70);
        if (v71)
        {
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v80 = v66;
          v81 = [v80 countByEnumeratingWithState:&v170 objects:&v179 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = v71;
            v84 = v74 / v71;
            v85 = *v171;
            v86 = 1.79769313e308;
            v87 = v73 / v83;
            do
            {
              for (j = 0; j != v82; ++j)
              {
                if (*v171 != v85)
                {
                  objc_enumerationMutation(v80);
                }

                [*(*(&v170 + 1) + 8 * j) rectValue];
                v91 = v90 + v89 * 0.5;
                v94 = (v93 + v92 * 0.5 - v87) * (v93 + v92 * 0.5 - v87);
                if (v94 + (v91 - v84) * (v91 - v84) < v86)
                {
                  v86 = v94 + (v91 - v84) * (v91 - v84);
                  v67 = v91;
                }
              }

              v82 = [v80 countByEnumeratingWithState:&v170 objects:&v179 count:16];
            }

            while (v82);
          }

          configurationCopy = v161;
          v24 = v157;
          v59 = v167;
        }

        else
        {
          configurationCopy = v161;
          v24 = v157;
        }

        v65 = v152;
      }
    }

    else
    {
      v187.origin.x = v48;
      v187.origin.y = v50;
      v187.size.width = v52;
      v187.size.height = v54;
      if (CGRectIsEmpty(v187))
      {
        v67 = 0.5;
      }

      else
      {
        v67 = v48 + v52 * 0.5;
      }
    }

    v95 = reduceRectToAspectRatioWithCushion(0.0, 0.0, v59, v166, v164 / v163, v65, v59 * v67);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    CGAffineTransformMakeScale(buf, 1.0 / v59, 1.0 / v166);
    v188.origin.x = v95;
    v188.origin.y = v97;
    v188.size.width = v99;
    v188.size.height = v101;
    v189 = CGRectApplyAffineTransform(v188, buf);
    x = v189.origin.x;
    y = v189.origin.y;
    v104 = v189.size.width;
    v105 = v189.size.height;
    v107 = pfl_layout_log(v106);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = _rectAsString(x, y, v104, v105);
      LODWORD(buf[0].a) = 138412290;
      *(&buf[0].a + 4) = v108;
      _os_log_impl(&dword_22D2ED000, v107, OS_LOG_TYPE_DEFAULT, "PFL: Backup crop == %@", buf, 0xCu);
    }

    v109 = renormalizeRect(v169, v168, v160, v159, x, y, v104, v105);
    v111 = v110;
    v113 = v112;
    v115 = v114;
    if (v165)
    {
      v116 = v22;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v117 = [v116 countByEnumeratingWithState:&v179 objects:buf count:16];
      if (v117)
      {
        v118 = v117;
        v158 = v24;
        v162 = configurationCopy;
        v119 = 0;
        v120 = *v180;
        do
        {
          for (k = 0; k != v118; ++k)
          {
            if (*v180 != v120)
            {
              objc_enumerationMutation(v116);
            }

            [*(*(&v179 + 1) + 8 * k) rectValue];
            v193.origin.x = v122;
            v193.origin.y = v123;
            v193.size.width = v124;
            v193.size.height = v125;
            v190.origin.x = v109;
            v190.origin.y = v111;
            v190.size.width = v113;
            v190.size.height = v115;
            v119 += CGRectIntersectsRect(v190, v193);
          }

          v118 = [v116 countByEnumeratingWithState:&v179 objects:buf count:16];
        }

        while (v118);
        v126 = v119 * 0.1;
        configurationCopy = v162;
        v24 = v158;
      }

      else
      {
        v126 = 0.0;
      }

      v127 = 0.1 - v126 / v165;
    }

    else
    {
      v191.origin.x = v156;
      v191.origin.y = v155;
      v191.size.width = v154;
      v191.size.height = v153;
      if (CGRectIsEmpty(v191))
      {
        v127 = 0.1;
      }

      else
      {
        v192.origin.x = v109;
        v192.origin.y = v111;
        v192.size.width = v113;
        v192.size.height = v115;
        v194.origin.x = v156;
        v194.origin.y = v155;
        v194.size.width = v154;
        v194.size.height = v153;
        if (CGRectIntersectsRect(v192, v194))
        {
          v127 = 0.0;
        }

        else
        {
          v127 = 0.1;
        }
      }
    }

    v128 = [objc_alloc(MEMORY[0x277D3B3E0]) initWithCropScore:0 layoutScore:v127 foregroundCoverage:0.0 visibleRect:0.0 usesMask:{x, y, v104, v105}];

    v60 = v128;
  }

  [v60 visibleRect];
  v133 = flipYNormalizedRect(v129, v130, v131, v132);
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v140 = objc_alloc(MEMORY[0x277D3B468]);
  [v60 cropScore];
  v142 = v141;
  [v60 layoutScore];
  v144 = [v140 initWithVisibleRect:v133 cropScore:v135 layoutScore:{v137, v139, v142, v143}];
  self->_resultsAreValid = 1;
  watchLayout = self->_watchLayout;
  self->_watchLayout = v60;
  v146 = v60;

  v148 = pfl_layout_log(v147);
  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].a) = 138412290;
    *(&buf[0].a + 4) = self;
    _os_log_impl(&dword_22D2ED000, v148, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): generateOrientedLayout DONE", buf, 0xCu);
  }

  v178 = v144;
  v149 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];

  return v149;
}

@end