@interface GeometricCutTools
+ (BOOL)derotateContentsOf:(id)of inImage:(vImage_Buffer *)image andOutputTo:(vImage_Buffer *)to withPadding:(CGPoint)padding networkInputSize:(CGSize)size;
+ (BOOL)isPointArrayARectangle:(uint64_t)rectangle;
+ (BOOL)lineThroughPoint:(_OWORD *)point andPoint:(double)andPoint andRectangle:(double)rectangle intersectAtPoint:(double)atPoint andPoint:(double)a7;
+ (id)boxInNormalizedSpace:(id)space toImageSpaceWithSize:(CGSize)size plusPadding:(CGPoint)padding destSize:(CGSize *)destSize networkInputSize:(CGSize)inputSize;
+ (id)cleanTextDetectorOutput:(id)output;
+ (id)findCorrectedBoundingBoxOfTextFeature:(id)feature inImageWithSize:(CGSize)size;
+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withCodeMap:(const int *)map activations:()vector<std:(std:(BOOL)self0 :(CGSize)self1 allocator<std:(unsigned __int16)self2 :vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:garbageSymbol:;
+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withCodeMap:(const int *)map activations:()vector<std:(std:(BOOL)self0 :(CGSize)self1 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:;
+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withNetwork:(void *)network activations:()vector<std:(std:(BOOL)self0 :(unsigned __int16)self1 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:garbageSymbol:;
+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withNetwork:(void *)network activations:()vector<std:(std:(BOOL)self0 :allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:;
+ (id)stringByInjectingSpaces:(id)spaces textFeatures:(id)features improved:(BOOL)improved;
@end

@implementation GeometricCutTools

+ (id)cleanTextDetectorOutput:(id)output
{
  outputCopy = output;
  array = [MEMORY[0x277CBEB18] array];
  obj = outputCopy;
  v32 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v31 = MEMORY[0];
    do
    {
      for (i = 0; i != v32; i = (i + 1))
      {
        if (MEMORY[0] != v31)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(8 * i);
        array2 = [MEMORY[0x277CBEB18] array];
        subFeatures = [v3 subFeatures];
        v5 = [subFeatures countByEnumeratingWithState:? objects:? count:?];
        if (v5)
        {
          v6 = MEMORY[0];
          do
          {
            for (j = 0; j != v5; j = (j + 1))
            {
              if (MEMORY[0] != v6)
              {
                objc_enumerationMutation(subFeatures);
              }

              v8 = *(8 * j);
              subFeatures2 = [v3 subFeatures];
              v10 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
              if (v10)
              {
                v11 = MEMORY[0];
                while (2)
                {
                  for (k = 0; k != v10; k = (k + 1))
                  {
                    if (MEMORY[0] != v11)
                    {
                      objc_enumerationMutation(subFeatures2);
                    }

                    v13 = *(8 * k);
                    if (v13 != v8)
                    {
                      [v13 bounds];
                      v15 = v14;
                      v17 = v16;
                      v19 = v18;
                      v21 = v20;
                      [v8 bounds];
                      v38.origin.x = v22;
                      v38.origin.y = v23;
                      v38.size.width = v24;
                      v38.size.height = v25;
                      v37.origin.x = v15;
                      v37.origin.y = v17;
                      v37.size.width = v19;
                      v37.size.height = v21;
                      if (CGRectContainsRect(v37, v38))
                      {

                        goto LABEL_22;
                      }
                    }
                  }

                  v10 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
                  if (v10)
                  {
                    continue;
                  }

                  break;
                }
              }

              [array2 addObject:?];
LABEL_22:
              ;
            }

            v5 = [subFeatures countByEnumeratingWithState:? objects:? count:?];
          }

          while (v5);
        }

        v26 = objc_alloc_init(MEMORY[0x277D700A8]);
        [v3 bounds];
        [v26 setBounds:?];
        [v3 topRight];
        [v26 setTopRight:?];
        [v3 topLeft];
        [v26 setTopLeft:?];
        [v3 bottomRight];
        [v26 setBottomRight:?];
        [v3 bottomLeft];
        [v26 setBottomLeft:?];
        [v26 setSubFeatures:?];
        [array addObject:?];
      }

      v32 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v32);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:?];

  return v27;
}

+ (id)findCorrectedBoundingBoxOfTextFeature:(id)feature inImageWithSize:(CGSize)size
{
  v150 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  subFeatures = [featureCopy subFeatures];
  v5 = [subFeatures count];

  if (v5 >= 2)
  {
    v109 = objc_alloc_init(MEMORY[0x277D700A8]);
    array = [MEMORY[0x277CBEB18] array];
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    subFeatures2 = [featureCopy subFeatures];
    v8 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = *v147;
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (*v147 != v9)
          {
            objc_enumerationMutation(subFeatures2);
          }

          v11 = *(*(&v146 + 1) + 8 * i);
          v12 = objc_alloc_init(MEMORY[0x277D700A8]);
          [v11 bounds];
          [v11 bounds];
          [v11 bounds];
          [v11 bounds];
          [v12 setBounds:?];
          [array addObject:?];
        }

        v8 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    [v109 setSubFeatures:?];
    subFeatures3 = [v109 subFeatures];
    std::vector<double>::vector[abi:ne200100](&v144, [subFeatures3 count]);

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    subFeatures4 = [v109 subFeatures];
    v15 = [subFeatures4 countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = 0;
      v17 = *v141;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v141 != v17)
          {
            objc_enumerationMutation(subFeatures4);
          }

          [*(*(&v140 + 1) + 8 * v18) bounds];
          v16 = v19 + 1;
          *(v144 + v19) = v20;
          v18 = (v18 + 1);
          ++v19;
        }

        while (v15 != v18);
        v15 = [subFeatures4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }

    std::__sort<std::__less<double,double> &,double *>();
    v21 = *(v144 + (((v145 - v144) >> 1) & 0xFFFFFFFFFFFFFFF8));
    v137 = 0;
    v138 = 0;
    v139 = 0;
    __p = 0;
    v135 = 0;
    v136 = 0;
    v133[0] = 0;
    v133[1] = 0;
    v132 = v133;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    subFeatures5 = [v109 subFeatures];
    v23 = [subFeatures5 countByEnumeratingWithState:? objects:? count:?];
    if (v23)
    {
      v24 = *v129;
      do
      {
        for (j = 0; j != v23; j = (j + 1))
        {
          if (*v129 != v24)
          {
            objc_enumerationMutation(subFeatures5);
          }

          v26 = *(*(&v128 + 1) + 8 * j);
          [v26 bounds];
          if (vabdd_f64(v27, v21) < v21 * 0.1)
          {
            v28 = v26;
            v29 = v28;
            v30 = v133[0];
            if (!v133[0])
            {
LABEL_29:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v31 = v30;
                v32 = v30[4];
                if (v32 <= v28)
                {
                  break;
                }

                v30 = *v31;
                if (!*v31)
                {
                  goto LABEL_29;
                }
              }

              if (v32 >= v28)
              {
                break;
              }

              v30 = v31[1];
              if (!v30)
              {
                goto LABEL_29;
              }
            }

            [v29 bounds];
            v124 = v33;
            v125 = v34;
            v126 = v35;
            v127 = v36;
            std::vector<double>::push_back[abi:ne200100](&v137, &v124);
            [v29 bounds];
            v124 = v37;
            v125 = v38;
            v126 = v39;
            v127 = v40;
            std::vector<double>::push_back[abi:ne200100](&__p, &v125);
          }
        }

        v23 = [subFeatures5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v23);
    }

    v6 = 0;
    if (v138 != v137)
    {
      v41 = (v138 - v137) >> 3;
      if (v41 >= 2)
      {
        v42 = 0.0;
        v43 = v137;
        v44 = __p;
        v45 = (v138 - v137) >> 3;
        v46 = 0.0;
        do
        {
          v47 = *v43++;
          v48 = v47 - *v137;
          v49 = *v44++;
          v42 = v42 + v48 * (v49 - *__p);
          v46 = v46 + v48 * v48;
          --v45;
        }

        while (v45);
        v50 = v42 / v46;
        v114 = *(__p + (((v135 - __p) >> 1) & 0xFFFFFFFFFFFFFFF8));
        v115 = *(v137 + ((4 * v41) & 0xFFFFFFFFFFFFFFF8));
        subFeatures6 = [v109 subFeatures];
        v52 = [subFeatures6 countByEnumeratingWithState:? objects:? count:?];
        v53 = sqrt(v50 * v50 + 1.0);
        v116 = v50 / v53;
        v113 = 1.0 / v53;
        v110 = -(1.0 / v53);
        if (v52)
        {
          v54 = MEMORY[0];
          v111 = INFINITY;
          v112 = -INFINITY;
          v120 = -INFINITY;
          v121 = INFINITY;
          do
          {
            for (k = 0; k != v52; k = (k + 1))
            {
              if (MEMORY[0] != v54)
              {
                objc_enumerationMutation(subFeatures6);
              }

              v56 = *(8 * k);
              [v56 bounds];
              v119 = v57;
              [v56 bounds];
              v118 = v58;
              [v56 bounds];
              v117 = v59;
              [v56 bounds];
              v61 = v60;
              [v56 bounds];
              v63 = v62;
              [v56 bounds];
              v65 = v64;
              [v56 bounds];
              v67 = v66;
              [v56 bounds];
              v69 = v68;
              [v56 bounds];
              v71 = v70;
              [v56 bounds];
              v73 = v72;
              [v56 bounds];
              v75 = v74;
              [v56 bounds];
              v77 = v117 + v61 - v115;
              v78 = v65 + v67 - v115;
              v79 = v69 + v71 - v114;
              v80 = v75 + v76 - v114;
              v81 = v116 * (v118 - v114) + (v119 - v115) * v113;
              v82 = v116 * (v63 - v114) + v77 * v113;
              v83 = v116 * v79 + v78 * v113;
              v84 = v116 * v80 + (v73 - v115) * v113;
              v85 = v121;
              if (v81 < v121)
              {
                v85 = v116 * (v118 - v114) + (v119 - v115) * v113;
              }

              if (v82 < v85)
              {
                v85 = v116 * (v63 - v114) + v77 * v113;
              }

              if (v83 < v85)
              {
                v85 = v116 * v79 + v78 * v113;
              }

              if (v84 >= v85)
              {
                v86 = v85;
              }

              else
              {
                v86 = v116 * v80 + (v73 - v115) * v113;
              }

              if (v81 <= v120)
              {
                v81 = v120;
              }

              if (v82 > v81)
              {
                v81 = v116 * (v63 - v114) + v77 * v113;
              }

              if (v83 > v81)
              {
                v81 = v116 * v79 + v78 * v113;
              }

              if (v84 > v81)
              {
                v81 = v116 * v80 + (v73 - v115) * v113;
              }

              v120 = v81;
              v121 = v86;
              v87 = v133[0];
              if (v133[0])
              {
                v88 = v133;
                do
                {
                  v89 = v87[4];
                  v90 = v89 >= v56;
                  v91 = v89 < v56;
                  if (v90)
                  {
                    v88 = v87;
                  }

                  v87 = v87[v91];
                }

                while (v87);
                if (v88 != v133 && v56 >= v88[4])
                {
                  v92 = (v118 - v114) * v110 + (v119 - v115) * v116;
                  v93 = (v63 - v114) * v110 + v77 * v116;
                  v94 = v79 * v110 + v78 * v116;
                  v95 = v80 * v110 + (v73 - v115) * v116;
                  v96 = v111;
                  if (v92 < v111)
                  {
                    v96 = (v118 - v114) * v110 + (v119 - v115) * v116;
                  }

                  if (v93 < v96)
                  {
                    v96 = v93;
                  }

                  if (v94 < v96)
                  {
                    v96 = v94;
                  }

                  if (v95 >= v96)
                  {
                    v97 = v96;
                  }

                  else
                  {
                    v97 = v80 * v110 + (v73 - v115) * v116;
                  }

                  if (v92 <= v112)
                  {
                    v92 = v112;
                  }

                  if (v93 > v92)
                  {
                    v92 = v93;
                  }

                  if (v94 > v92)
                  {
                    v92 = v94;
                  }

                  if (v95 > v92)
                  {
                    v92 = v80 * v110 + (v73 - v115) * v116;
                  }

                  v111 = v97;
                  v112 = v92;
                }
              }
            }

            v52 = [subFeatures6 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v52);
        }

        else
        {
          v111 = INFINITY;
          v112 = -INFINITY;
          v120 = -INFINITY;
          v121 = INFINITY;
        }

        v98 = v115 + v111 * v116;
        v99 = v114 + v111 * v110;
        v152.x = (v98 + v121 * v113) / size.width;
        v152.y = (v99 + v121 * v116) / size.height;
        v100 = MEMORY[0x277CBEA60];
        v101 = NSStringFromPoint(v152);
        v153.y = (v99 + v120 * v116) / size.height;
        v153.x = (v98 + v120 * v113) / size.width;
        v102 = NSStringFromPoint(v153);
        v103 = v115 + v112 * v116;
        v104 = v114 + v112 * v110;
        v154.x = (v103 + v120 * v113) / size.width;
        v154.y = (v104 + v120 * v116) / size.height;
        v105 = NSStringFromPoint(v154);
        v155.x = (v103 + v121 * v113) / size.width;
        v155.y = (v104 + v121 * v116) / size.height;
        v106 = NSStringFromPoint(v155);
        v6 = [v100 arrayWithObjects:{v102, v105, v106, 0}];
      }
    }

    std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(v133[0]);
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }

    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }

    if (v144)
    {
      v145 = v144;
      operator delete(v144);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPointArrayARectangle:(uint64_t)rectangle
{
  v2 = a2;
  v20 = [v2 count] == 4 && (objc_msgSend(v2, "objectAtIndexedSubscript:"), v3 = objc_opt_self();

  return v20;
}

+ (BOOL)lineThroughPoint:(_OWORD *)point andPoint:(double)andPoint andRectangle:(double)rectangle intersectAtPoint:(double)atPoint andPoint:(double)a7
{
  v24[7] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v17 = 0;
  v18 = 0;
  v19 = v24;
  *v24 = a9;
  *&v24[1] = a8 + a10;
  *&v24[2] = a9;
  *&v24[3] = a8 + a10;
  *&v24[4] = a9 + a11;
  *&v24[5] = a8;
  *&v24[6] = a9 + a11;
  v20 = 1;
  while (1)
  {
    v21 = v17 + 1;
    if ([MEMORY[0x277D70080] checkIntersectionForLineThroughPoint:? andPoint:? andSegmentStartingAt:? andEndingAt:? intersectAt:?])
    {
      break;
    }

LABEL_7:
    v20 = v17 < 3;
    v19 += 2;
    ++v17;
    if (v21 == 4)
    {
      return 0;
    }
  }

  if (!v18)
  {
    if (a2)
    {
      *a2 = v23;
    }

    v18 = 1;
    goto LABEL_7;
  }

  if (point)
  {
    *point = v23;
  }

  return v20;
}

+ (id)boxInNormalizedSpace:(id)space toImageSpaceWithSize:(CGSize)size plusPadding:(CGPoint)padding destSize:(CGSize *)destSize networkInputSize:(CGSize)inputSize
{
  height = inputSize.height;
  spaceCopy = space;
  v11 = [spaceCopy objectAtIndexedSubscript:?];
  v12 = NSPointFromString(v11);

  v13 = [spaceCopy objectAtIndexedSubscript:?];
  v14 = NSPointFromString(v13);

  v15 = [spaceCopy objectAtIndexedSubscript:?];
  v16 = NSPointFromString(v15);

  v17 = [spaceCopy objectAtIndexedSubscript:?];
  v18 = NSPointFromString(v17);

  v19 = 0;
  v20 = size.width * v12.x;
  v21 = size.height * v12.y;
  v22 = size.width * v14.x;
  v23 = size.height * v14.y;
  v24 = sqrt((v21 - v23) * (v21 - v23) + (v20 - v22) * (v20 - v22));
  if (v24 != 0.0)
  {
    v25 = sqrt((v21 - size.height * v18.y) * (v21 - size.height * v18.y) + (v20 - size.width * v18.x) * (v20 - size.width * v18.x));
    if (v25 != 0.0)
    {
      destSize->height = height;
      if (height - padding.y <= 0.0)
      {
        goto LABEL_15;
      }

      v103 = size.height * v18.y;
      v105 = size.width * v18.x;
      v26 = v25 / (height - padding.y);
      v27 = padding.y * v26;
      v28 = INFINITY;
      if (padding.x != INFINITY)
      {
        v28 = padding.x * v26;
        destSize->width = padding.x + v24 / v26;
      }

      v100 = v26;
      v113 = size.width * v16.x;
      aPoint = size.height * v16.y;
      v110 = size.width * v14.x;
      v29 = atan2(v23 - v21, v22 - v20);
      v30 = v27 * -0.5;
      v31 = __sincos_stret(v29);
      v108 = v27 * -0.5 * v31.__sinval;
      v32 = v27 * 0.5;
      v33 = v32 * v31.__cosval;
      v34 = __sincos_stret(v29 + 3.14159265);
      v35 = v30 * v34.__sinval;
      v36 = v32 * v34.__cosval;
      if (v28 == INFINITY)
      {
        v124.x = v20 + v35;
        v124.y = v21 + v36;
        v47 = MEMORY[0x277CBEA60];
        v48 = NSStringFromPoint(v124);
        v125.y = v23 + v32 * v34.__cosval;
        v125.x = v110 + v35;
        v49 = NSStringFromPoint(v125);
        v126.x = v113 + v108;
        v126.y = aPoint + v33;
        v50 = NSStringFromPoint(v126);
        v127.x = v105 + v108;
        v127.y = v103 + v33;
        v51 = NSStringFromPoint(v127);
        v52 = [v47 arrayWithObjects:{v49, v50, v51, 0}];

        v53 = v52;
        objc_opt_self();
        v54 = [v53 objectAtIndex:?];
        v55 = NSPointFromString(v54);

        v56 = [v53 objectAtIndex:?];
        v57 = NSPointFromString(v56);

        v58 = [v53 objectAtIndex:?];
        v59 = NSPointFromString(v58);

        v60 = [v53 objectAtIndex:?];
        v61 = NSPointFromString(v60);

        v62 = objc_opt_self();
        if ([(GeometricCutTools *)v62 lineThroughPoint:&v121 andPoint:v55.x andRectangle:v55.y intersectAtPoint:v57.x andPoint:v57.y, 1.0, 1.0, size.width + -2.0, size.height + -2.0]&& (v63 = objc_opt_self(), [(GeometricCutTools *)v63 lineThroughPoint:&v119 andPoint:v59.x andRectangle:v59.y intersectAtPoint:v61.x andPoint:v61.y, 1.0, 1.0, size.width + -2.0, size.height + -2.0]))
        {
          v64 = *&v122;
          v109 = *&v121;
          v111 = *(&v122 + 1);
          v104 = *&v120;
          v107 = *(&v121 + 1);
          v65 = *(&v119 + 1);
          v101 = *&v119;
          v102 = *(&v120 + 1);
          std::vector<double>::vector[abi:ne200100](__p, 4uLL);
          v66 = sqrt((v57.y - v55.y) * (v57.y - v55.y) + (v57.x - v55.x) * (v57.x - v55.x));
          v67 = (v57.x - v55.x) / v66;
          v68 = (v57.y - v55.y) / v66;
          v69 = sqrt((v61.y - v55.y) * (v61.y - v55.y) + (v61.x - v55.x) * (v61.x - v55.x));
          v70 = v69 * ((v61.x - v55.x) / v69) * 0.5;
          v71 = v69 * ((v61.y - v55.y) / v69) * 0.5;
          v72 = __p[0];
          *__p[0] = v68 * (v111 - (v55.y + v71)) + (v64 - (v55.x + v70)) * v67;
          v72[1] = v68 * (v107 - (v55.y + v71)) + (v109 - (v55.x + v70)) * v67;
          v72[2] = v68 * (v102 - (v55.y + v71)) + (v104 - (v55.x + v70)) * v67;
          v72[3] = v68 * (v65 - (v55.y + v71)) + (v101 - (v55.x + v70)) * v67;
          std::__sort<std::__less<double,double> &,double *>();
          v73 = *(__p[0] + 1);
          v74 = *(__p[0] + 2);
          v75 = v55.y + v71 + v73 * v68;
          aPointb = v55.x + v70 + v73 * v67;
          v128.x = aPointb - v70;
          v128.y = v75 - v71;
          v76 = MEMORY[0x277CBEA60];
          v77 = NSStringFromPoint(v128);
          v78 = v55.x + v70 + v74 * v67;
          v79 = v55.y + v71 + v74 * v68;
          v129.y = v79 - v71;
          v129.x = v78 - v70;
          v80 = NSStringFromPoint(v129);
          v130.x = v70 + v78;
          v130.y = v71 + v79;
          v81 = NSStringFromPoint(v130);
          v131.x = v70 + aPointb;
          v131.y = v71 + v75;
          v82 = NSStringFromPoint(v131);
          v83 = [v76 arrayWithObjects:{v80, v81, v82, 0}];

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v83 = v53;
        }

        v84 = [v83 objectAtIndexedSubscript:?];
        v85 = NSPointFromString(v84);
        x = v85.x;
        y = v85.y;

        v86 = [v83 objectAtIndexedSubscript:?];
        v87 = NSPointFromString(v86);
        v43 = v87.x;
        v44 = v87.y;

        v88 = [v83 objectAtIndexedSubscript:?];
        v89 = NSPointFromString(v88);
        aPointa = v89.y;
        v42 = v89.x;

        v90 = [v83 objectAtIndexedSubscript:?];
        v91 = NSPointFromString(v90);
        v106 = v91.x;
        v41 = v91.y;

        destSize->width = sqrt((v87.y - v85.y) * (v87.y - v85.y) + (v87.x - v85.x) * (v87.x - v85.x)) / v100;
      }

      else
      {
        v37 = v28 * 0.5 * v31.__cosval;
        v38 = v28 * 0.5 * v31.__sinval;
        v39 = v28 * 0.5 * v34.__cosval;
        v40 = v28 * 0.5 * v34.__sinval;
        v106 = v105 + v108 + v39;
        v41 = v103 + v33 + v40;
        v42 = v113 + v37 + v108;
        aPointa = aPoint + v38 + v33;
        v43 = v110 + v37 + v35;
        v44 = v23 + v38 + v36;
        x = v20 + v39 + v35;
        y = v21 + v40 + v36;
      }

      if (x >= 0.0)
      {
        v19 = 0;
        if (x < size.width && y >= 0.0)
        {
          v19 = 0;
          if (y < size.height && v43 >= 0.0)
          {
            v19 = 0;
            if (v43 < size.width && v44 >= 0.0)
            {
              v19 = 0;
              if (v44 < size.height && v42 >= 0.0)
              {
                v19 = 0;
                if (v42 < size.width && aPointa >= 0.0)
                {
                  v19 = 0;
                  if (aPointa < size.height && v106 >= 0.0)
                  {
                    v19 = 0;
                    if (v106 < size.width && v41 >= 0.0 && v41 < size.height)
                    {
                      v94 = MEMORY[0x277CBEA60];
                      v132.x = x;
                      v132.y = y;
                      v95 = NSStringFromPoint(v132);
                      v133.x = v43;
                      v133.y = v44;
                      v96 = NSStringFromPoint(v133);
                      v134.x = v42;
                      v134.y = aPointa;
                      v97 = NSStringFromPoint(v134);
                      v135.x = v106;
                      v135.y = v41;
                      v98 = NSStringFromPoint(v135);
                      v99 = [v94 arrayWithObjects:{v96, v97, v98, 0}];

                      if ([(GeometricCutTools *)self isPointArrayARectangle:v99])
                      {
                        v19 = v99;
                      }

                      else
                      {
                        v19 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
LABEL_15:
        v19 = 0;
      }
    }
  }

  return v19;
}

+ (BOOL)derotateContentsOf:(id)of inImage:(vImage_Buffer *)image andOutputTo:(vImage_Buffer *)to withPadding:(CGPoint)padding networkInputSize:(CGSize)size
{
  width = size.width;
  ofCopy = of;
  v38 = 0uLL;
  v12 = [self boxInNormalizedSpace:? toImageSpaceWithSize:? plusPadding:? destSize:? networkInputSize:?];

  if (v12 && (v13 = 0.0 * 0.125, v14 = (ceilf(v13) * 8.0) + -5.0, v38.f64[0] = v14, width <= v14) && v14 <= (4 * image->width))
  {
    to->data = malloc_type_malloc(0.0 * v14, 0x100004077774924uLL);
    v17 = vcvtq_u64_f64(v38);
    *&to->height = vextq_s8(v17, v17, 8uLL);
    to->rowBytes = v38.f64[0];
    v18 = [v12 objectAtIndexedSubscript:?];
    v19 = NSPointFromString(v18);

    v20 = [v12 objectAtIndexedSubscript:?];
    v21 = NSPointFromString(v20);

    v22 = [v12 objectAtIndexedSubscript:?];
    v23 = NSPointFromString(v22);

    height = to->height;
    if (height)
    {
      v25 = sqrt((v19.y - v23.y) * (v19.y - v23.y) + (v19.x - v23.x) * (v19.x - v23.x));
      v26 = sqrt((v19.y - v21.y) * (v19.y - v21.y) + (v19.x - v21.x) * (v19.x - v21.x));
      v27 = atan2(v21.y - v19.y, v21.x - v19.x);
      v28 = __sincos_stret(v27 + 1.57079633);
      v29 = __sincos_stret(v27);
      v30 = 0;
      v31 = to->width;
      do
      {
        if (v31)
        {
          v32 = 0;
          v33 = v25 * v30 / (height - 1);
          v34 = v19.y + v33 * v28.__sinval;
          v35 = v19.x + v33 * v28.__cosval;
          v36 = to->data + to->rowBytes * v30;
          do
          {
            v37 = v26 * v32 / (v31 - 1);
            v36[v32++] = *(image->data + image->rowBytes * (v34 + v37 * v29.__sinval) + (v35 + v37 * v29.__cosval));
            v31 = to->width;
          }

          while (v31 > v32);
          height = to->height;
        }

        ++v30;
      }

      while (height > v30);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)stringByInjectingSpaces:(id)spaces textFeatures:(id)features improved:(BOOL)improved
{
  v127 = *MEMORY[0x277D85DE8];
  spacesCopy = spaces;
  featuresCopy = features;
  v115 = spacesCopy;
  v116 = [spacesCopy mutableCopy];
  subFeatures = [featuresCopy subFeatures];
  v10 = [subFeatures count];

  if (v10 < 3)
  {
    goto LABEL_137;
  }

  v114 = featuresCopy;
  subFeatures2 = [featuresCopy subFeatures];
  v123[0] = 0;
  std::vector<float>::vector[abi:ne200100](__p, [subFeatures2 count] - 1, v123);

  subFeatures3 = [featuresCopy subFeatures];
  v13 = [subFeatures3 countByEnumeratingWithState:? objects:? count:?];
  if (!v13)
  {

    v117 = 0;
    v14 = 0;
LABEL_17:
    v26 = 0.0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = MEMORY[0];
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v13; i = (i + 1))
    {
      if (MEMORY[0] != v15)
      {
        objc_enumerationMutation(subFeatures3);
      }

      v19 = *(8 * i);
      if (v17 != 0.0)
      {
        [*(8 * i) bounds];
        *&v20 = v20 - v17;
        *&v20 = fabsf(*&v20);
        *(__p[0] + v14++) = LODWORD(v20);
        v16 = v16 + *&v20;
      }

      [v19 bounds];
      v22 = v21;
      [v19 bounds];
      v17 = v22 + v23;
    }

    v13 = [subFeatures3 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v13);

  if (v14 < 1)
  {
    v117 = 0;
    goto LABEL_17;
  }

  v24 = __p[0];
  v25 = v14;
  v26 = 0.0;
  do
  {
    v27 = *v24++;
    v26 = v26 + ((v27 - (v16 / v14)) * (v27 - (v16 / v14)));
    --v25;
  }

  while (v25);
  v117 = 1;
LABEL_18:
  improvedCopy = improved;
  for (j = 0; j != 18; j += 6)
  {
    v29 = &v123[j];
    *(v29 + 2) = 0;
    *&v123[j + 2] = 0;
    *v29 = &v123[j + 2];
  }

  v30 = *(__p[0] + v14 - 1);
  v120 = *__p[0];
  v121 = v30;
  v122 = *(__p[0] + v14 / 2);
  if (v14 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v14;
  }

  v32 = 10;
  do
  {
    v118 = v32;
    for (k = 0; k != 18; k += 6)
    {
      v34 = &v123[k];
      v35 = &v123[k + 2];
      std::__tree<int>::destroy(&v123[k], *v35);
      *v34 = v35;
      *(v34 + 2) = 0;
      *v35 = 0;
    }

    if (v117)
    {
      for (m = 0; m != v31; ++m)
      {
        v37 = 0;
        for (n = 1; n != 3; ++n)
        {
          if (((*(__p[0] + m) - *(&v120 + n)) * (*(__p[0] + m) - *(&v120 + n))) < ((*(__p[0] + m) - v120) * (*(__p[0] + m) - v120)))
          {
            v37 = n;
          }
        }

        v39 = *&v123[6 * v37 + 2];
        if (!v39)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v40 = v39;
            v41 = *(v39 + 28);
            if (m >= v41)
            {
              break;
            }

            v39 = *v40;
            if (!*v40)
            {
              goto LABEL_38;
            }
          }

          if (m <= v41)
          {
            break;
          }

          v39 = v40[1];
          if (!v39)
          {
            goto LABEL_38;
          }
        }
      }
    }

    v42 = 0;
    v43 = 0;
    v44 = __p[0];
    do
    {
      v45 = &v123[6 * v42];
      v48 = *v45;
      v46 = v45 + 2;
      v47 = v48;
      v49 = 0.0;
      if (v48 != v46)
      {
        do
        {
          v50 = *(v47 + 1);
          v51 = v47;
          if (v50)
          {
            do
            {
              v52 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v52 = *(v51 + 2);
              v53 = *v52 == v51;
              v51 = v52;
            }

            while (!v53);
          }

          v49 = v49 + v44[v47[7]];
          v47 = v52;
        }

        while (v52 != v46);
      }

      v54 = v49 / *&v123[6 * v42 + 4];
      if (vabds_f32(v54, *(&v120 + v42)) > 0.00000011921)
      {
        *(&v120 + v42) = v54;
        v43 = 1;
      }

      ++v42;
    }

    while (v42 != 3);
    v32 = v118 - 1;
  }

  while ((v43 & (v118 > 1)) != 0);
  v55 = 0;
  v56 = 0.0;
  v57 = (v14 - 1);
  do
  {
    v58 = &v123[6 * v55];
    v61 = *v58;
    v59 = v58 + 2;
    v60 = v61;
    if (v61 != v59)
    {
      do
      {
        v62 = *(v60 + 1);
        v63 = v60;
        if (v62)
        {
          do
          {
            v64 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v64 = *(v63 + 2);
            v53 = *v64 == v63;
            v63 = v64;
          }

          while (!v53);
        }

        v65 = v44[v60[7]] - *(&v120 + v55);
        v56 = v56 + (v65 * v65);
        v60 = v64;
      }

      while (v64 != v59);
    }

    ++v55;
  }

  while (v55 != 3);
  v66 = v124 && v121 > v120;
  if (v126 && v122 > *(&v120 + v66))
  {
    v66 = 2;
  }

  v67 = v26 - v56;
  if (improvedCopy)
  {
    subFeatures4 = [v114 subFeatures];
    v69 = [subFeatures4 countByEnumeratingWithState:? objects:? count:?];
    if (v69)
    {
      v70 = MEMORY[0];
      v71 = 0.0;
      do
      {
        for (ii = 0; ii != v69; ii = (ii + 1))
        {
          if (MEMORY[0] != v70)
          {
            objc_enumerationMutation(subFeatures4);
          }

          [*(8 * ii) bounds];
          v71 = v73 + v71;
        }

        v69 = [subFeatures4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v69);
    }

    else
    {
      v71 = 0.0;
    }

    subFeatures5 = [v114 subFeatures];
    v84 = [subFeatures5 count];

    v85 = v66;
    v86 = &v123[6 * v66];
    v88 = v86 + 2;
    v87 = *v86;
    v89 = 0.0;
    v90 = 0.0;
    if (*v86 != v86 + 2)
    {
      do
      {
        v91 = v87[1];
        v92 = v87;
        if (v91)
        {
          do
          {
            v93 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v93 = v92[2];
            v53 = *v93 == v92;
            v92 = v93;
          }

          while (!v53);
        }

        v90 = v90 + *(__p[0] + *(v87 + 7));
        v87 = v93;
      }

      while (v93 != v88);
    }

    v94 = 0;
    v95 = 0;
    v96 = *(v86 + 2);
    do
    {
      if (v94 != v85)
      {
        v97 = &v123[6 * v94];
        v100 = *v97;
        v98 = v97 + 2;
        v99 = v100;
        if (v100 != v98)
        {
          do
          {
            v101 = *(v99 + 1);
            v102 = v99;
            if (v101)
            {
              do
              {
                v103 = v101;
                v101 = *v101;
              }

              while (v101);
            }

            else
            {
              do
              {
                v103 = *(v102 + 2);
                v53 = *v103 == v102;
                v102 = v103;
              }

              while (!v53);
            }

            v89 = v89 + *(__p[0] + v99[7]);
            ++v95;
            v99 = v103;
          }

          while (v103 != v98);
        }
      }

      ++v94;
    }

    while (v94 != 3);
    v104 = v90 / v96;
    if (v104 >= ((v89 / v95) + (v89 / v95)) && (v71 / v84) * 0.3 < v104)
    {
      v105 = (v67 / v26) <= 0.5 || v96 >= v14;
      v106 = v117;
      if (v105)
      {
        v106 = 0;
      }

      if (v106 == 1)
      {
        do
        {
          v107 = *v88;
          if (*v88)
          {
            v108 = v88;
            do
            {
              v109 = *(v107 + 28);
              v81 = v57 <= v109;
              v110 = v57 > v109;
              if (v81)
              {
                v108 = v107;
              }

              v107 = *(v107 + 8 * v110);
            }

            while (v107);
            if (v108 != v88 && v57 >= *(v108 + 7))
            {
              [v116 insertString:? atIndex:?];
            }
          }

          v81 = v57-- <= 0;
        }

        while (!v81);
      }
    }
  }

  else
  {
    v74 = &v123[6 * v66];
    v75 = v67 <= 0.0001 || *(v74 + 2) >= v14;
    v76 = v117;
    if (v75)
    {
      v76 = 0;
    }

    if (v76 == 1)
    {
      v77 = v74 + 2;
      do
      {
        v78 = *v77;
        if (*v77)
        {
          v79 = v77;
          do
          {
            v80 = *(v78 + 28);
            v81 = v57 <= v80;
            v82 = v57 > v80;
            if (v81)
            {
              v79 = v78;
            }

            v78 = *(v78 + 8 * v82);
          }

          while (v78);
          if (v79 != v77 && v57 >= *(v79 + 7))
          {
            [v116 insertString:? atIndex:?];
          }
        }

        v81 = v57-- <= 0;
      }

      while (!v81);
    }
  }

  for (jj = 0; jj != -72; jj -= 24)
  {
    std::__tree<int>::destroy(&v125[jj], *&v125[jj + 8]);
  }

  featuresCopy = v114;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_137:

  return v116;
}

+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withNetwork:(void *)network activations:()vector<std:(std:(BOOL)self0 :allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:
{
  ofCopy = of;
  boxCopy = box;
  v16 = *&region->width;
  v20[0] = *&region->data;
  v20[1] = v16;
  memset(v19, 0, sizeof(v19));
  std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v19, a9->var0, a9->var1, 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3));
  v17 = [self geometricRecognitionOf:? inDerotatedRegion:? withPadding:? fromCorrectedBoundingBox:? inImageWithSize:? withCodeMap:? activations:? invert:? networkInputSize:?];
  *&v20[0] = v19;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v20);

  return v17;
}

+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withCodeMap:(const int *)map activations:()vector<std:(std:(BOOL)self0 :(CGSize)self1 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:
{
  stdCopy = std;
  width = a11.width;
  height = size.height;
  v18 = size.width;
  x = padding.x;
  v169[17] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  boxCopy = box;
  v169[0] = map;
  if (width <= region->width)
  {
    v135 = v18;
    v137 = height;
    v131 = [self boxInNormalizedSpace:? toImageSpaceWithSize:? plusPadding:? destSize:? networkInputSize:?];

    if (v131)
    {
      v23 = [v131 objectAtIndexedSubscript:?];
      v24 = NSPointFromString(v23);

      v25 = [v131 objectAtIndexedSubscript:?];
      v26 = NSPointFromString(v25);

      v167 = 0;
      v168 = 0;
      v166 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3);
      v28 = *a9->var0;
      v29 = -1431655765 * ((*(a9->var0 + 1) - v28) >> 3);
      if (v27 < 2)
      {
        std::vector<std::vector<float>>::resize(&v166, v29);
        if (v29 >= 1)
        {
          v40 = 0;
          v41 = v29 & 0x7FFFFFFF;
          do
          {
            v42 = *a9->var0;
            if (v166 != v42)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v166[v40], v42[v40], v42[v40 + 1], (v42[v40 + 1] - v42[v40]) >> 2);
            }

            v40 += 3;
            --v41;
          }

          while (v41);
        }
      }

      else
      {
        v31 = *v28;
        v30 = v28[1];
        std::vector<std::vector<float>>::resize(&v166, v29);
        if (v29 >= 1)
        {
          v32 = 0;
          v150 = (v30 - v31) >> 2;
          v33 = v27;
          v34 = v27 & 0x7FFFFFFF;
          do
          {
            if (v150 >= 1)
            {
              v35 = 0;
              do
              {
                var0 = a9->var0;
                v37 = 0.0;
                v38 = v34;
                do
                {
                  v39 = *var0;
                  var0 += 3;
                  v37 = v37 + *(*(v39 + 24 * v32) + 4 * v35);
                  --v38;
                }

                while (v38);
                *&v160 = v37 / v33;
                std::vector<float>::push_back[abi:ne200100](&v166[3 * v32], &v160);
                ++v35;
              }

              while (v35 != (v150 & 0x7FFFFFFF));
            }

            ++v32;
          }

          while (v32 != (v29 & 0x7FFFFFFF));
        }
      }

      if (stdCopy)
      {
        std::__reverse[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> *>,std::__wrap_iter<std::vector<float> *>>(v166, v167);
      }

      string = [MEMORY[0x277CCAB68] string];
      string2 = [MEMORY[0x277CCAB68] string];
      string3 = [MEMORY[0x277CCAB68] string];
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      obj = [ofCopy subFeatures];
      v44 = [obj countByEnumeratingWithState:? objects:? count:?];
      v143 = array;
      if (v44)
      {
        v45 = sqrt((v26.y - v24.y) * (v26.y - v24.y) + (v26.x - v24.x) * (v26.x - v24.x));
        v133 = (v26.y - v24.y) / v45;
        v134 = (v26.x - v24.x) / v45;
        v46 = *v163;
        do
        {
          for (i = 0; i != v44; i = (i + 1))
          {
            if (*v163 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v162 + 1) + 8 * i);
            [v48 bounds];
            v50 = v49;
            [v48 bounds];
            v52 = v51;
            [v48 bounds];
            v54 = v53;
            [v48 bounds];
            v56 = 0.0;
            if (v45 > width)
            {
              v57 = (v133 * (v137 * (v54 + v55 * 0.5) - v24.y) + (v135 * (v50 + v52 * 0.5) - v24.x) * v134 - width * 0.5) / (v45 - width);
              if (v57 >= 0.0)
              {
                v56 = (v133 * (v137 * (v54 + v55 * 0.5) - v24.y) + (v135 * (v50 + v52 * 0.5) - v24.x) * v134 - width * 0.5) / (v45 - width);
                if (v57 > 1.0)
                {
                  v56 = 1.0;
                }
              }
            }

            v59 = v166;
            v58 = v167;
            [v48 bounds];
            v61 = v60;
            v62 = 1.0;
            if (x != INFINITY)
            {
              [ofCopy bounds];
            }

            v63 = 0xAAAAAAAAAAAAAAABLL * (v58 - v59);
            v64 = (v56 * (v63 - 1));
            v65 = (v61 * v63 / v62);
            if (v65 <= 1)
            {
              v66 = 1;
            }

            else
            {
              v66 = v65;
            }

            v67 = (v166[3 * v64 + 1] - v166[3 * v64]) >> 2;
            v158 = 0;
            std::vector<double>::vector[abi:ne200100](&v160, v67, &v158);
            v68 = (v166[3 * v64 + 1] - v166[3 * v64]) >> 2;
            __p = 0;
            std::vector<double>::vector[abi:ne200100](&v158, v68, &__p);
            v69 = (v166[3 * v64 + 1] - v166[3 * v64]) >> 2;
            v155 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, v69, &v155);
            array = v143;
            fieldDecoding(&v166, v66, v64, v169, 1, &v160, v143, stdCopy);
            fieldDecoding(&v166, v66, v64, v169, 2, &v158, array2, stdCopy);
            fieldDecoding(&v166, v66, v64, v169, 3, &__p, array3, stdCopy);
            if (v160 == v161)
            {
              v71 = v160;
            }

            else
            {
              v70 = (v160 + 8);
              v71 = v160;
              if (v160 + 8 != v161)
              {
                v72 = *v160;
                v71 = v160;
                v73 = (v160 + 8);
                do
                {
                  v74 = *v73++;
                  v75 = v74;
                  if (v72 < v74)
                  {
                    v72 = v75;
                    v71 = v70;
                  }

                  v70 = v73;
                }

                while (v73 != v161);
              }
            }

            if (v158 != v159 && v158 + 8 != v159)
            {
              v77 = *v158;
              v78 = (v158 + 8);
              do
              {
                v79 = *v78++;
                v80 = v79;
                if (v77 < v79)
                {
                  v77 = v80;
                }
              }

              while (v78 != v159);
            }

            if (__p != v157 && __p + 8 != v157)
            {
              v82 = *__p;
              v83 = (__p + 8);
              do
              {
                v84 = *v83++;
                v85 = v84;
                if (v82 < v84)
                {
                  v82 = v85;
                }
              }

              while (v83 != v157);
            }

            LOWORD(v155) = *(map + ((v71 - v160) << 29 >> 30));
            v86 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
            [string appendString:?];

            v87 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
            [string2 appendString:?];

            v88 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
            [string3 appendString:?];

            if (__p)
            {
              v157 = __p;
              operator delete(__p);
            }

            if (v158)
            {
              v159 = v158;
              operator delete(v158);
            }

            if (v160)
            {
              v161 = v160;
              operator delete(v160);
            }
          }

          v44 = [obj countByEnumeratingWithState:? objects:? count:?];
        }

        while (v44);
      }

      std::vector<int>::vector[abi:ne200100](&v160, 0xAAAAAAAAAAAAAAABLL * (v167 - v166));
      v89 = v166;
      if (v167 != v166)
      {
        v90 = 0;
        v91 = 0xAAAAAAAAAAAAAAABLL * (v167 - v166);
        v92 = v160;
        if (v91 <= 1)
        {
          v91 = 1;
        }

        do
        {
          v93 = &v89[3 * v90];
          v94 = *v93;
          v95 = v93[1];
          v96 = v94 + 1;
          v97 = v94 == v95 || v96 == v95;
          v98 = v94;
          if (!v97)
          {
            v99 = *v94;
            v98 = v94;
            v100 = v94 + 1;
            do
            {
              v101 = *v100++;
              v102 = v101;
              if (v99 < v101)
              {
                v99 = v102;
                v98 = v96;
              }

              v96 = v100;
            }

            while (v100 != v95);
          }

          v92[v90++] = *(map + ((v98 - v94) << 30 >> 30));
        }

        while (v90 != v91);
      }

      v103 = [GeometricCutTools stringByInjectingSpaces:"stringByInjectingSpaces:textFeatures:improved:" textFeatures:? improved:?];
      v104 = [GeometricCutTools stringByInjectingSpaces:"stringByInjectingSpaces:textFeatures:improved:" textFeatures:? improved:?];
      v105 = [GeometricCutTools stringByInjectingSpaces:"stringByInjectingSpaces:textFeatures:improved:" textFeatures:? improved:?];
      v106 = v105;
      if (stdCopy)
      {
        v107 = MEMORY[0x277CCAB68];
        [v103 length];
        v108 = [v107 stringWithCapacity:?];
        v109 = MEMORY[0x277CCAB68];
        [v104 length];
        v138 = [v109 stringWithCapacity:?];
        v110 = MEMORY[0x277CCAB68];
        [v106 length];
        v136 = [v110 stringWithCapacity:?];
        [v103 length];
        v154 = v108;
        v111 = v103;
        [v103 enumerateSubstringsInRange:? options:? usingBlock:?];
        [v104 length];
        v153 = v138;
        [v104 enumerateSubstringsInRange:? options:? usingBlock:?];
        [v106 length];
        v152 = v136;
        [v106 enumerateSubstringsInRange:? options:? usingBlock:?];
        v103 = v154;

        v140 = v153;
        v139 = v152;

        reverseObjectEnumerator = [array reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
        obja = [allObjects mutableCopy];

        reverseObjectEnumerator2 = [array2 reverseObjectEnumerator];
        allObjects2 = [reverseObjectEnumerator2 allObjects];
        v144 = [allObjects2 mutableCopy];

        reverseObjectEnumerator3 = [array3 reverseObjectEnumerator];
        allObjects3 = [reverseObjectEnumerator3 allObjects];
        v118 = [allObjects3 mutableCopy];

        array3 = v118;
      }

      else
      {
        obja = array;
        v144 = array2;
        v139 = v105;
        v140 = v104;
      }

      v119 = MEMORY[0x277CBEAC0];
      v120 = MEMORY[0x277CBEA60];
      v149 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
      v121 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v122 = [v120 arrayWithObjects:{obja, v121, 0}];
      v123 = MEMORY[0x277CBEA60];
      v124 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
      v125 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v126 = [v123 arrayWithObjects:{v144, v125, 0}];
      v127 = MEMORY[0x277CBEA60];
      v128 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v129 = [v127 arrayWithObjects:{array3, v128, 0}];
      v22 = [v119 dictionaryWithObjectsAndKeys:{@"CardNumber", v126, @"Cardholder", v129, @"Expiration", 0}];

      if (v160)
      {
        v161 = v160;
        operator delete(v160);
      }

      v160 = &v166;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v160);
    }

    else
    {
      v22 = 0;
    }

    boxCopy = v131;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withNetwork:(void *)network activations:()vector<std:(std:(BOOL)self0 :(unsigned __int16)self1 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:garbageSymbol:
{
  ofCopy = of;
  boxCopy = box;
  v17 = *&region->width;
  v22[0] = *&region->data;
  v22[1] = v17;
  memset(v21, 0, sizeof(v21));
  std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v21, a9->var0, a9->var1, 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3));
  LOWORD(v20) = a11;
  v18 = [self geometricRecognitionOf:v20 inDerotatedRegion:? withPadding:? fromCorrectedBoundingBox:? inImageWithSize:? withCodeMap:? activations:? invert:? networkInputSize:? garbageSymbol:?];
  *&v22[0] = v21;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v22);

  return v18;
}

+ (id)geometricRecognitionOf:(id)of inDerotatedRegion:(vImage_Buffer *)region withPadding:(CGPoint)padding fromCorrectedBoundingBox:(id)box inImageWithSize:(CGSize)size withCodeMap:(const int *)map activations:()vector<std:(std:(BOOL)self0 :(CGSize)self1 allocator<std:(unsigned __int16)self2 :vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:garbageSymbol:
{
  stdCopy = std;
  width = a11.width;
  height = size.height;
  v18 = size.width;
  x = padding.x;
  v138 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  boxCopy = box;
  if (width <= region->width)
  {
    v120 = v18;
    v121 = height;
    v116 = [self boxInNormalizedSpace:? toImageSpaceWithSize:? plusPadding:? destSize:? networkInputSize:?];

    if (v116)
    {
      v23 = [v116 objectAtIndexedSubscript:?];
      v24 = NSPointFromString(v23);

      v25 = [v116 objectAtIndexedSubscript:?];
      v26 = NSPointFromString(v25);

      v136 = 0;
      v137 = 0;
      v135 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3);
      v28 = *a9->var0;
      v29 = -1431655765 * ((*(a9->var0 + 1) - v28) >> 3);
      if (v27 < 2)
      {
        std::vector<std::vector<float>>::resize(&v135, v29);
        if (v29 >= 1)
        {
          v40 = 0;
          v41 = v29 & 0x7FFFFFFF;
          do
          {
            v42 = *a9->var0;
            if (v135 != v42)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v135[v40], v42[v40], v42[v40 + 1], (v42[v40 + 1] - v42[v40]) >> 2);
            }

            v40 += 3;
            --v41;
          }

          while (v41);
        }
      }

      else
      {
        v31 = *v28;
        v30 = v28[1];
        std::vector<std::vector<float>>::resize(&v135, v29);
        if (v29 >= 1)
        {
          v32 = 0;
          v125 = (v30 - v31) >> 2;
          v33 = v27;
          v34 = v27 & 0x7FFFFFFF;
          do
          {
            if (v125 >= 1)
            {
              v35 = 0;
              do
              {
                var0 = a9->var0;
                v37 = 0.0;
                v38 = v34;
                do
                {
                  v39 = *var0;
                  var0 += 3;
                  v37 = v37 + *(*(v39 + 24 * v32) + 4 * v35);
                  --v38;
                }

                while (v38);
                *&__p = v37 / v33;
                std::vector<float>::push_back[abi:ne200100](&v135[3 * v32], &__p);
                ++v35;
              }

              while (v35 != (v125 & 0x7FFFFFFF));
            }

            ++v32;
          }

          while (v32 != (v29 & 0x7FFFFFFF));
        }
      }

      if (stdCopy)
      {
        std::__reverse[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> *>,std::__wrap_iter<std::vector<float> *>>(v135, v136);
      }

      string = [MEMORY[0x277CCAB68] string];
      array = [MEMORY[0x277CBEB18] array];
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      subFeatures = [ofCopy subFeatures];
      v44 = [subFeatures countByEnumeratingWithState:? objects:? count:?];
      if (v44)
      {
        v45 = sqrt((v26.y - v24.y) * (v26.y - v24.y) + (v26.x - v24.x) * (v26.x - v24.x));
        v118 = (v26.y - v24.y) / v45;
        v119 = (v26.x - v24.x) / v45;
        v122 = *v132;
        v46 = subFeatures;
        do
        {
          v124 = v44;
          for (i = 0; i != v124; i = (i + 1))
          {
            if (*v132 != v122)
            {
              objc_enumerationMutation(subFeatures);
            }

            v48 = *(*(&v131 + 1) + 8 * i);
            [v48 bounds];
            v50 = v49;
            [v48 bounds];
            v52 = v51;
            [v48 bounds];
            v54 = v53;
            [v48 bounds];
            v56 = 0.0;
            if (v45 > width)
            {
              v57 = (v118 * (v121 * (v54 + v55 * 0.5) - v24.y) + (v120 * (v50 + v52 * 0.5) - v24.x) * v119 - width * 0.5) / (v45 - width);
              if (v57 >= 0.0)
              {
                v56 = (v118 * (v121 * (v54 + v55 * 0.5) - v24.y) + (v120 * (v50 + v52 * 0.5) - v24.x) * v119 - width * 0.5) / (v45 - width);
                if (v57 > 1.0)
                {
                  v56 = 1.0;
                }
              }
            }

            v59 = v135;
            v58 = v136;
            [v48 bounds];
            v61 = v60;
            v62 = 1.0;
            if (x != INFINITY)
            {
              [ofCopy bounds];
            }

            v63 = 0xAAAAAAAAAAAAAAABLL * (v58 - v59);
            v64 = (v56 * (v63 - 1));
            v65 = (v61 * v63 / v62);
            if (v65 <= 1)
            {
              v66 = 1;
            }

            else
            {
              v66 = v65;
            }

            v67 = 0xAAAAAAAAAAAAAAABLL * (v136 - v135);
            v68 = v67 - 1;
            v69 = v67 - 1;
            if (v68 >= (v64 + (v66 >> 1)))
            {
              v70 = v64 + (v66 >> 1);
            }

            else
            {
              v70 = v69;
            }

            v71 = (v135[3 * v64 + 1] - v135[3 * v64]) >> 2;
            v128 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, v71, &v128);
            string2 = [MEMORY[0x277CCAB68] string];
            v73 = (v64 - (v66 >> 1)) & ~((v64 - (v66 >> 1)) >> 31);
            if (v73 <= v70)
            {
              do
              {
                v74 = &v135[3 * v73];
                v75 = *v74;
                v76 = v74[1] - *v74;
                if (v76)
                {
                  v77 = 0;
                  v78 = v76 >> 2;
                  if (v78 <= 1)
                  {
                    v79 = 1;
                  }

                  else
                  {
                    v79 = v78;
                  }

                  v80 = -1;
                  v81 = -INFINITY;
                  do
                  {
                    if (map[v77] != a12 && *(v75 + 4 * v77) > v81)
                    {
                      v81 = *(v75 + 4 * v77);
                      v80 = v77;
                    }

                    ++v77;
                  }

                  while (v79 != v77);
                  if ((v80 & 0x80000000) == 0)
                  {
                    *(__p + v80) = *(__p + v80) + v81;
                  }
                }

                else
                {
                  v80 = -1;
                }

                LOWORD(v128) = map[v80];
                v82 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
                [string2 appendString:?];

                v83 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                [array addObject:?];

                ++v73;
              }

              while (v73 != v70 + 1);
            }

            if (__p == v130)
            {
              v85 = __p;
            }

            else
            {
              v84 = (__p + 8);
              v85 = __p;
              if (__p + 8 != v130)
              {
                v86 = *__p;
                v85 = __p;
                v87 = (__p + 8);
                do
                {
                  v88 = *v87++;
                  v89 = v88;
                  if (v86 < v88)
                  {
                    v86 = v89;
                    v85 = v84;
                  }

                  v84 = v87;
                }

                while (v87 != v130);
              }
            }

            LOWORD(v128) = *(map + ((v85 - __p) << 29 >> 30));
            subFeatures = v46;
            v90 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
            [string appendString:?];

            if (__p)
            {
              v130 = __p;
              operator delete(__p);
            }
          }

          v44 = [v46 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v44);
      }

      std::vector<int>::vector[abi:ne200100](&__p, 0xAAAAAAAAAAAAAAABLL * (v136 - v135));
      v91 = v135;
      if (v136 != v135)
      {
        v92 = 0;
        v93 = 0xAAAAAAAAAAAAAAABLL * (v136 - v135);
        v94 = __p;
        if (v93 <= 1)
        {
          v93 = 1;
        }

        do
        {
          v95 = &v91[3 * v92];
          v96 = *v95;
          v97 = v95[1];
          v98 = v96 + 1;
          v99 = v96 == v97 || v98 == v97;
          v100 = v96;
          if (!v99)
          {
            v101 = *v96;
            v100 = v96;
            v102 = v96 + 1;
            do
            {
              v103 = *v102++;
              v104 = v103;
              if (v101 < v103)
              {
                v101 = v104;
                v100 = v98;
              }

              v98 = v102;
            }

            while (v102 != v97);
          }

          v94[v92++] = *(map + ((v100 - v96) << 30 >> 30));
        }

        while (v92 != v93);
      }

      string3 = [MEMORY[0x277CCAB68] string];
      v106 = __p;
      if (v130 != __p)
      {
        v107 = 0;
        do
        {
          LOWORD(v128) = v106[v107];
          v108 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
          [string3 appendString:?];

          ++v107;
          v106 = __p;
        }

        while (v107 < (v130 - __p) >> 2);
      }

      v109 = [GeometricCutTools stringByInjectingSpaces:"stringByInjectingSpaces:textFeatures:improved:" textFeatures:? improved:?];
      v110 = v109;
      if (stdCopy)
      {
        v111 = MEMORY[0x277CCAB68];
        [v109 length];
        v112 = [v111 stringWithCapacity:?];
        [v110 length];
        v127 = v112;
        [v110 enumerateSubstringsInRange:? options:? usingBlock:?];
        v113 = v127;
      }

      else
      {
        v113 = v109;
      }

      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:{array, 0}];

      if (__p)
      {
        v130 = __p;
        operator delete(__p);
      }

      __p = &v135;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    }

    else
    {
      v22 = 0;
    }

    boxCopy = v116;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end