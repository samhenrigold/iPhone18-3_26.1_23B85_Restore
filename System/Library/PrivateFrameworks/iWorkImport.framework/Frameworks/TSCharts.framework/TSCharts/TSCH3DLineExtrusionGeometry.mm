@interface TSCH3DLineExtrusionGeometry
+ (id)lineFromXValues:(const void *)values yValues:(const void *)yValues;
- (TSCH3DLineExtrusionGeometry)init;
- (id).cxx_construct;
- (id)selectionKnobPositions;
- (tmat3x3<float>)p_rotationMatrixForCrossSectionIndex:(SEL)index;
- (tmat4x4<float>)matrixAtXPosition:(SEL)position returningXRangeInfo:(float)info;
- (void)generateArrays;
- (void)setSpine:(const void *)spine;
@end

@implementation TSCH3DLineExtrusionGeometry

+ (id)lineFromXValues:(const void *)values yValues:(const void *)yValues
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  sub_2761F3E14(&__p, *values, *(values + 1), (*(values + 1) - *values) >> 2);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_2761F3E14(&v38, *yValues, *(yValues + 1), (*(yValues + 1) - *yValues) >> 2);
  v5 = v38;
  if (v39 == v38)
  {
    v7 = -1.0;
    v8 = 0.0;
    if (v38)
    {
LABEL_7:
      v39 = v5;
      operator delete(v5);
    }
  }

  else
  {
    v6 = 0;
    v7 = -1.0;
    do
    {
      v8 = *(__p + v6);
      v47 = __PAIR64__(*&v5[4 * v6], LODWORD(v8));
      v48 = 0;
      sub_2761C14E8(&v44, &v47);
      if (v7 < 0.0)
      {
        v7 = v8;
      }

      ++v6;
      v5 = v38;
    }

    while (v6 < (v39 - v38) >> 2);
    if (v38)
    {
      goto LABEL_7;
    }
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v9 = objc_alloc_init(TSCH3DLineExtrusionGeometry);
  v47 = 0x3F80000000000000;
  objc_msgSend_setYlimits_(v9, v10, 0.0078125, v11, v12, &v47);
  v47 = __PAIR64__(LODWORD(v8), LODWORD(v7));
  objc_msgSend_setXlimits_(v9, v13, v14, v15, v16, &v47);
  objc_msgSend_setSpine_(v9, v17, v18, v19, v20, &v44);
  v21 = sub_276156154();
  LODWORD(v22) = 1.0;
  LODWORD(v47) = 1065353216;
  *&v23 = 1.0 / v21;
  HIDWORD(v47) = LODWORD(v23);
  v48 = 1065353216;
  objc_msgSend_setSpineDirectionBias_(v9, v24, v23, v22, v25, &v47);
  v47 = 0x3F80000040000000;
  v48 = 1065353216;
  objc_msgSend_setNormalBias_(v9, v26, 0.00781250186, v27, v28, &v47);
  LODWORD(v29) = 2.0;
  objc_msgSend_setCrossSectionCreaseAngle_(v9, v30, v29, v31, v32);
  LODWORD(v33) = 2.0;
  objc_msgSend_setSpineCreaseAngle_(v9, v34, v33, v35, v36);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v9;
}

- (TSCH3DLineExtrusionGeometry)init
{
  v11.receiver = self;
  v11.super_class = TSCH3DLineExtrusionGeometry;
  v2 = [(TSCH3DExtrusionGeometry *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 180) = 1065353216;
    sub_2761F3E90(__p, 0x11uLL);
    v6 = 0;
    *&v7 = 1.25 / ((10.0 + 20.0) * 0.5);
    do
    {
      v8 = COERCE_DOUBLE(vmul_n_f32(qword_2764D6660[v6], *&v7));
      *(__p[0] + v6 * 8) = v8;
      ++v6;
    }

    while (v6 != 17);
    objc_msgSend_setCrossSection_(v3, v4, v7, v8, v5, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v3;
}

- (void)setSpine:(const void *)spine
{
  v5 = *(&self->super._spineDirectionBias + 3);
  var0 = self->_ylimits.var0.var0;
  if (v5 <= var0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_2761F2844(v9, v5, var0);
    sub_2761F2A18(v9, spine, &v10);
    v8.receiver = self;
    v8.super_class = TSCH3DLineExtrusionGeometry;
    [(TSCH3DExtrusionGeometry *)&v8 setSpine:&v10];
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSCH3DLineExtrusionGeometry;
    [(TSCH3DExtrusionGeometry *)&v7 setSpine:spine];
  }
}

- (void)generateArrays
{
  v17.receiver = self;
  v17.super_class = TSCH3DLineExtrusionGeometry;
  [(TSCH3DExtrusionGeometry *)&v17 generateArrays];
  v3 = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0();
  LODWORD(v4) = 1.25;
  v5 = (v3 / 1.3814) / (1.25 / ((10.0 + 20.0) * 0.5));
  v7 = 1065353216;
  v9 = 0;
  v8 = 0;
  v11 = 0;
  v10 = 1065353216;
  v12 = v5 * 0.0;
  v13 = v5 * 0.0;
  v14 = v5;
  v15 = v5 * 0.0;
  v16 = xmmword_2764D5F20;
  objc_msgSend_transformArrays_(self, v6, 0.0, COERCE_DOUBLE(COERCE_UNSIGNED_INT(v5 * 0.0)), v4, &v7);
}

- (tmat3x3<float>)p_rotationMatrixForCrossSectionIndex:(SEL)index
{
  v11 = objc_msgSend_spine(self, index, v4, v5, v6);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - *v11) >> 2);
  if (v15 <= 1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCH3DLineExtrusionGeometry p_rotationMatrixForCrossSectionIndex:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLineExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 195, 0, "Spine should always have at least two points");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - *v11) >> 2);
  }

  if (v15 <= a4)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCH3DLineExtrusionGeometry p_rotationMatrixForCrossSectionIndex:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLineExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 196, 0, "index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  if (!a4)
  {
    v49 = **v11;
    v48 = vsub_f32(*(*v11 + 12), v49);
    v49.i32[0] = *(*v11 + 20);
    v50 = *(*v11 + 8);
LABEL_9:
    v49.f32[0] = v49.f32[0] - v50;
    v51 = vmul_f32(v48, v48);
    v51.f32[0] = (v51.f32[1] + (v48.f32[0] * v48.f32[0])) + (v49.f32[0] * v49.f32[0]);
    if (v51.f32[0] > 0.00000011921)
    {
      v51.f32[0] = 1.0 / sqrtf(v51.f32[0]);
      v52 = vmul_n_f32(v48, v51.f32[0]);
      v53 = v49.f32[0] * v51.f32[0];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v46 = *v11 + 12 * a4;
  if (0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - *v11) >> 2) - 1 == a4)
  {
    v47 = *(v11 + 8);
    v49 = *(v47 - 24);
    v48 = vsub_f32(*v46, v49);
    v49.i32[0] = *(v46 + 8);
    v50 = *(v47 - 16);
    goto LABEL_9;
  }

  v54 = vsub_f32(*v46, *(v46 - 12));
  v55 = *(v46 + 8);
  v56 = v55 - *(v46 - 4);
  v57 = (COERCE_FLOAT(vmul_f32(v54, v54).i32[1]) + (v54.f32[0] * v54.f32[0])) + (v56 * v56);
  v58 = 0;
  v48 = 0;
  v59 = 0.0;
  v60 = 0;
  if (v57 > 0.00000011921)
  {
    v61 = 1.0 / sqrtf(v57);
    v60 = vmul_n_f32(v54, v61);
    v59 = v56 * v61;
  }

  v62 = vsub_f32(*(v46 + 12), *v46);
  v63 = *(v46 + 20) - v55;
  v64 = (COERCE_FLOAT(vmul_f32(v62, v62).i32[1]) + (v62.f32[0] * v62.f32[0])) + (v63 * v63);
  if (v64 > 0.00000011921)
  {
    v65 = 1.0 / sqrtf(v64);
    v58 = vmul_n_f32(v62, v65);
    v48.f32[0] = v63 * v65;
  }

  v49 = vadd_f32(v60, v58);
  v48.f32[0] = v59 + v48.f32[0];
  v51 = vmul_f32(v49, v49);
  v51.f32[0] = (v51.f32[1] + (v49.f32[0] * v49.f32[0])) + (v48.f32[0] * v48.f32[0]);
  if (v51.f32[0] > 0.00000011921)
  {
    v51.f32[0] = 1.0 / sqrtf(v51.f32[0]);
    v52 = vmul_n_f32(v49, v51.f32[0]);
    v53 = v48.f32[0] * v51.f32[0];
    goto LABEL_18;
  }

LABEL_17:
  v52 = 0;
  v53 = 0.0;
LABEL_18:
  result = objc_msgSend_spineDirectionBias(self, *&v48, *&v49, *&v51);
  v67 = vmul_f32(v52, v81);
  v68 = v53 * v82;
  v69 = (COERCE_FLOAT(vmul_f32(v67, v67).i32[1]) + (v67.f32[0] * v67.f32[0])) + (v68 * v68);
  v70 = 0;
  v71 = 0.0;
  v72 = 0.0;
  if (v69 > 0.00000011921)
  {
    v73 = 1.0 / sqrtf(v69);
    v70 = vmul_n_f32(v67, v73);
    v72 = v68 * v73;
  }

  v74 = v70.f32[1] + (v72 * -0.0);
  v75 = -(v70.f32[0] - (v72 * 0.0));
  v76 = vmuls_lane_f32(-0.0, v70, 1) + (v70.f32[0] * 0.0);
  v77 = ((v75 * v75) + (v74 * v74)) + (v76 * v76);
  v78 = 0.0;
  v79 = 0.0;
  if (v77 > 0.00000011921)
  {
    v80 = 1.0 / sqrtf(v77);
    v71 = v74 * v80;
    v78 = v75 * v80;
    v79 = v76 * v80;
  }

  retstr->value[0].var0.var0 = v71;
  retstr->value[0].var1.var0 = v78;
  retstr->value[0].var2.var0 = v79;
  *&retstr->value[1].var0.var0 = v70;
  retstr->value[1].var2.var0 = v72;
  *&retstr->value[2].var0.var0 = 0;
  retstr->value[2].var2.var0 = 1.0;
  return result;
}

- (tmat4x4<float>)matrixAtXPosition:(SEL)position returningXRangeInfo:(float)info
{
  result = objc_msgSend_spine(self, position, *&info, v5, v6);
  v13 = 0;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((*&result->value[0].var2.var0 - *&result->value[0].var0.var0) >> 2) - 1;
  v15 = v14 & ~(v14 >> 63);
  v16 = (*&result->value[0].var0.var0 + 12);
  while (1)
  {
    v17 = v13;
    if (v15 == v13)
    {
      break;
    }

    ++v13;
    v18 = *v16;
    v16 += 3;
    if (v18 >= info)
    {
      v15 = v17;
      break;
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  retstr->value[0].var0.var0 = 1.0;
  *&retstr->value[0].var3.var0 = 0;
  *&retstr->value[0].var1.var0 = 0;
  retstr->value[1].var1.var0 = 1.0;
  *&retstr->value[1].var2.var0 = 0;
  *&retstr->value[2].var0.var0 = 0;
  retstr->value[2].var2.var0 = 1.0;
  *&retstr->value[3].var1.var0 = 0;
  *&retstr->value[2].var3.var0 = 0;
  retstr->value[3].var3.var0 = 1.0;
  if (v17 < v14)
  {
    v19 = *&result->value[0].var0.var0 + 12 * v15;
    v20 = v15 + 1;
    v80 = *(v19 + 12);
    v21 = v80 - *v19;
    v22 = 0.0;
    if (v21 > 0.0)
    {
      v22 = (info - *v19) / v21;
    }

    v84 = v22;
    v83 = *v19;
    v23 = *(v19 + 16);
    v81 = *(v19 + 4);
    v24 = vsub_f32(*&v23, *&v81);
    objc_msgSend_p_rotationMatrixForCrossSectionIndex_(self, v23, v81, v12);
    result = objc_msgSend_p_rotationMatrixForCrossSectionIndex_(self, v25, v26, v27);
    v28 = (v94 - v98) - v102;
    v29 = (v94 + v98) + v102;
    v30 = v28 > v29;
    if (v28 > v29)
    {
      v29 = (v94 - v98) - v102;
    }

    if (((v98 - v94) - v102) > v29)
    {
      v29 = (v98 - v94) - v102;
      v30 = 2;
    }

    if (((v102 - v94) - v98) > v29)
    {
      v29 = (v102 - v94) - v98;
      v30 = 3;
    }

    v31 = sqrtf(v29 + 1.0) * 0.5;
    v32 = 0.25 / v31;
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        v36 = v31;
        v31 = v32 * (v95 - v97);
        v33 = v32 * (v100 + v96);
        v34 = v32 * (v99 + v101);
LABEL_24:
        v37 = v83;
        v38 = v84;
        v39 = vmul_n_f32(v24, v84);
        v40 = (v85 - v89) - v93;
        v41 = (v85 + v89) + v93;
        v42 = v40 > v41;
        if (v40 > v41)
        {
          v41 = (v85 - v89) - v93;
        }

        if (((v89 - v85) - v93) > v41)
        {
          v41 = (v89 - v85) - v93;
          v42 = 2;
        }

        if (((v93 - v85) - v89) > v41)
        {
          v41 = (v93 - v85) - v89;
          v42 = 3;
        }

        v43 = sqrtf(v41 + 1.0) * 0.5;
        v44 = 0.25 / v43;
        if (v42 > 1)
        {
          if (v42 != 2)
          {
            v48 = v43;
            v43 = v44 * (v86 - v88);
            v45 = v44 * (v91 + v87);
            v46 = v44 * (v90 + v92);
            goto LABEL_38;
          }

          v46 = v43;
          v43 = v44 * (v91 - v87);
          v45 = v44 * (v86 + v88);
          v47 = v90 + v92;
        }

        else if (v42)
        {
          v45 = v43;
          v43 = v44 * (v90 - v92);
          v46 = v44 * (v86 + v88);
          v47 = v91 + v87;
        }

        else
        {
          v45 = v44 * (v90 - v92);
          v46 = v44 * (v91 - v87);
          v47 = v86 - v88;
        }

        v48 = v44 * v47;
LABEL_38:
        v49 = v83 + (v21 * v84);
        v50 = vadd_f32(*&v81, v39);
        if (v84 > 0.0)
        {
          if (v84 >= 1.0)
          {
            v34 = v46;
            v33 = v45;
            v36 = v48;
            v31 = v43;
          }

          else
          {
            v51 = (((v34 * v46) + (v33 * v45)) + (v36 * v48)) + (v31 * v43);
            v52 = -v51;
            if (v51 >= 0.0)
            {
              v52 = (((v34 * v46) + (v33 * v45)) + (v36 * v48)) + (v31 * v43);
            }

            if ((1.0 - v52) >= 0.0000001)
            {
              v79 = v83 + (v21 * v84);
              v78 = v50;
              v76 = v46;
              v77 = v45;
              v74 = (((v34 * v46) + (v33 * v45)) + (v36 * v48)) + (v31 * v43);
              v75 = v48;
              v54 = acosf(v52);
              v82 = sinf(v54);
              v55 = sinf((1.0 - v84) * v54);
              v56 = v84 * v54;
              v53 = v55 / v82;
              v57 = sinf(v56);
              v51 = v74;
              v48 = v75;
              v46 = v76;
              v45 = v77;
              v50 = v78;
              v49 = v79;
              v37 = v83;
              v38 = v57 / v82;
            }

            else
            {
              v53 = 1.0 - v84;
            }

            v58 = -v38;
            if (v51 >= 0.0)
            {
              v58 = v38;
            }

            v59 = v43 * v58;
            v60 = v45 * v58;
            v61 = v46 * v58;
            v62 = v48 * v58;
            v63 = (v33 * v53) + v60;
            v64 = (v34 * v53) + v61;
            v65 = (v36 * v53) + v62;
            v66 = (v31 * v53) + v59;
            v67 = sqrtf((((v64 * v64) + (v63 * v63)) + (v65 * v65)) + (v66 * v66));
            if (v67 <= 0.0)
            {
              v31 = 1.0;
              v34 = 0.0;
              v33 = 0.0;
              v36 = 0.0;
            }

            else
            {
              v68 = 1.0 / v67;
              v31 = v66 * v68;
              v33 = v63 * v68;
              v34 = v64 * v68;
              v36 = v65 * v68;
            }
          }
        }

        v69 = ((v33 * -2.0) * v33) + 1.0;
        retstr->value[0].var0.var0 = (((v34 * -2.0) * v34) + 1.0) + ((v36 * -2.0) * v36);
        retstr->value[0].var1.var0 = (v36 * (v31 + v31)) + ((v33 + v33) * v34);
        retstr->value[0].var2.var0 = (v34 * (v31 * -2.0)) + ((v33 + v33) * v36);
        retstr->value[0].var3.var0 = 0.0;
        retstr->value[1].var0.var0 = (v36 * (v31 * -2.0)) + ((v33 + v33) * v34);
        retstr->value[1].var1.var0 = v69 + ((v36 * -2.0) * v36);
        retstr->value[1].var2.var0 = (v33 * (v31 + v31)) + ((v34 + v34) * v36);
        retstr->value[1].var3.var0 = 0.0;
        retstr->value[2].var0.var0 = (v34 * (v31 + v31)) + ((v33 + v33) * v36);
        retstr->value[2].var1.var0 = (v33 * (v31 * -2.0)) + ((v34 + v34) * v36);
        retstr->value[2].var2.var0 = v69 + ((v34 * -2.0) * v34);
        retstr->value[2].var3.var0 = 0.0;
        retstr->value[3].var0.var0 = v49;
        *&retstr->value[3].var1.var0 = v50;
        retstr->value[3].var3.var0 = 1.0;
        if (a5)
        {
          v70 = -v94;
          if (v94 >= 0.0)
          {
            v70 = v94;
          }

          v71 = 1.25 / ((10.0 + 20.0) * 0.5);
          v72 = v37 + (((v70 * 0.5) * -0.2) * v71);
          v73 = -v85;
          if (v85 >= 0.0)
          {
            v73 = v85;
          }

          *a5 = v72;
          *(a5 + 1) = v80 + (((v73 * 0.5) * 0.2) * v71);
          *(a5 + 8) = v20 == v14;
        }

        return result;
      }

      v34 = v31;
      v31 = v32 * (v100 - v96);
      v33 = v32 * (v95 + v97);
      v35 = v99 + v101;
    }

    else if (v30)
    {
      v33 = v31;
      v31 = v32 * (v99 - v101);
      v34 = v32 * (v95 + v97);
      v35 = v100 + v96;
    }

    else
    {
      v33 = v32 * (v99 - v101);
      v34 = v32 * (v100 - v96);
      v35 = v95 - v97;
    }

    v36 = v32 * v35;
    goto LABEL_24;
  }

  return result;
}

- (id)selectionKnobPositions
{
  p_spine = &self->super._spine;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, v2, v3, v4, 0xAAAAAAAAAAAAAAABLL * ((self->super._spine.__end_ - self->super._spine.__begin_) >> 2));
  begin = p_spine->__begin_;
  if (p_spine->__end_ != p_spine->__begin_)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v6, v8, v9, v10, &begin[v12]);
      objc_msgSend_addObject_(v7, v15, v16, v17, v18, v14);

      ++v13;
      begin = p_spine->__begin_;
      v12 += 12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((p_spine->__end_ - p_spine->__begin_) >> 2));
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 180) = 0;
  *(self + 188) = 0;
  return self;
}

@end