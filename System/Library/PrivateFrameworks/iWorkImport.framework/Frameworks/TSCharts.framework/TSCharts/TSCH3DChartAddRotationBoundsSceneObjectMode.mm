@interface TSCH3DChartAddRotationBoundsSceneObjectMode
- (double)p_radiusFromBounds:(void *)bounds pivot:(void *)pivot;
- (void)getBounds:(id)bounds;
- (void)p_submitGeometryForChartBounds:(void *)bounds pivot:(void *)pivot thicknessIndex:(unint64_t)index pipeline:(id)pipeline;
@end

@implementation TSCH3DChartAddRotationBoundsSceneObjectMode

- (double)p_radiusFromBounds:(void *)bounds pivot:(void *)pivot
{
  v7 = *pivot;
  v8 = *(pivot + 1);
  v9 = *(pivot + 2);
  v10 = 0.0;
  if ((sub_276155178(bounds) & 1) == 0)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = -1;
    do
    {
      sub_276154EAC(bounds, ++v14, &__p);
      v15 = *&__p;
      v16 = *(&__p + 1);
      v17 = v38;
      v18 = v38 - v13;
      v19 = (*(&__p + 1) - v12) * (*(&__p + 1) - v12) + (*&__p - v11) * (*&__p - v11);
      v20 = v19 + v18 * v18;
      if (v10 <= v20)
      {
        v10 = v19 + v18 * v18;
      }

      if (byte_280A46430 == 1)
      {
        v21 = objc_opt_class();
        v22 = NSStringFromSelector(a2);
        v23 = MEMORY[0x277CCACA8];
        sub_276152FD4(&__p, "dvec3(%f, %f, %f)", v15, v16, v17);
        if (v39 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, &__p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, __p);
        }
        v28 = ;
        if (v39 < 0)
        {
          operator delete(__p);
        }

        v29 = MEMORY[0x277CCACA8];
        sub_276152FD4(&__p, "vec3(%f, %f, %f)", *pivot, *(pivot + 1), *(pivot + 2));
        if (v39 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, &__p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, __p);
        }
        v34 = ;
        if (v39 < 0)
        {
          operator delete(__p);
        }

        NSLog(&cfstr_PDistanceFPoin.isa, v21, self, v22, sqrt(v20), v28, v34);
      }
    }

    while (v14 <= 6);
  }

  return sqrt(v10);
}

- (void)p_submitGeometryForChartBounds:(void *)bounds pivot:(void *)pivot thicknessIndex:(unint64_t)index pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  objc_msgSend_p_radiusFromBounds_pivot_(self, v11, v12, v13, v14, bounds, pivot);
  v47 = xmmword_2764D6270;
  v16 = bounds + 4 * index;
  v17 = v16[3];
  v46[0] = *v16;
  v46[1] = v17;
  v18 = 1;
  if (!index)
  {
    v18 = 2;
  }

  if (v18 == index)
  {
    v18 = index + 1;
  }

  v19 = *(pivot + (index == 0));
  v20 = *(pivot + v18);
  v45[0] = v19;
  v45[1] = v20;
  v21 = sub_27635C7DC(&v47, 8uLL, 0, v46, index, v45, v15, v19, v20);
  v26 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v22, v23, v24, v25, v21);
  v31 = objc_msgSend_processor(pipelineCopy, v27, v28, v29, v30);
  objc_msgSend_geometry_(v31, v32, v33, v34, v35, v26);
  v40 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v36, v37, v38, v39, 5);
  objc_msgSend_submit_(v31, v41, v42, v43, v44, v40);
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v10 = objc_msgSend_scene(boundsCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_elementsSceneFromScene_(self, v11, v12, v13, v14, v10);

  v94 = xmmword_2764D5F00;
  v95 = xmmword_2764D60B0;
  v96 = xmmword_2764D60C0;
  v97 = xmmword_2764D5F00;
  v98 = 0x80000000800000;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  if (objc_msgSend_hasObjectBoundsForScene_pipeline_returningObjectBounds_(self, v16, 2.84809454e-306, -1.40444743e306, v17, v15, boundsCopy, &v94))
  {
    v22 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v18, v19, v20, v21, v15);
    v92 = v94;
    v26 = *&v95;
    v93 = v95;
    v77 = v22;
    if (v22)
    {
      objc_msgSend_stageXYCenter(v22, *&v95, v24, v25);
    }

    else
    {
      v91 = 0.0;
      v90 = 0;
    }

    if (byte_280A46430 == 1)
    {
      v27 = objc_opt_class();
      v76 = NSStringFromSelector(a2);
      v28 = MEMORY[0x277CCACA8];
      sub_276166580(&v92, __p);
      if ((SBYTE7(v87) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p[0]);
      }
      v33 = ;
      if (SBYTE7(v87) < 0)
      {
        operator delete(__p[0]);
      }

      v34 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *&v90, *(&v90 + 1), v91);
      if ((SBYTE7(v87) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p[0]);
      }
      v39 = ;
      if (SBYTE7(v87) < 0)
      {
        operator delete(__p[0]);
      }

      if (v77)
      {
        objc_msgSend_stageTransform(v77, v40, v41, v42);
      }

      else
      {
        v88 = 0u;
        v89 = 0u;
        *__p = 0u;
        v87 = 0u;
      }

      v75 = sub_2761B4E18(__p);
      if (v77)
      {
        objc_msgSend_stageScale(v77, v43, v44, v45);
        v46 = *&v84;
        v47 = *(&v84 + 1);
        v48 = v85;
      }

      else
      {
        v85 = 0.0;
        v84 = 0;
        v48 = 0.0;
        v47 = 0.0;
        v46 = 0.0;
      }

      v49 = MEMORY[0x277CCACA8];
      sub_276152FD4(v78, "vec3(%f, %f, %f)", v46, v47, v48);
      if ((SBYTE7(v79) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v78);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v78[0]);
      }
      v54 = ;
      if (SBYTE7(v79) < 0)
      {
        operator delete(v78[0]);
      }

      if (v77)
      {
        objc_msgSend_stageXYCenter(v77, v55, v56, v57);
        v58 = *&v82;
        v59 = *(&v82 + 1);
        v60 = v83;
      }

      else
      {
        v83 = 0.0;
        v82 = 0;
        v60 = 0.0;
        v59 = 0.0;
        v58 = 0.0;
      }

      v61 = MEMORY[0x277CCACA8];
      sub_276152FD4(v78, "vec3(%f, %f, %f)", v58, v59, v60);
      if ((SBYTE7(v79) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v61, v62, v63, v64, v65, v78);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v61, v62, v63, v64, v65, v78[0]);
      }
      v66 = ;
      if (SBYTE7(v79) < 0)
      {
        operator delete(v78[0]);
      }

      if (v77)
      {
        objc_msgSend_unitTransform(v77, v67, v68, v69);
      }

      else
      {
        v80 = 0u;
        v81 = 0u;
        *v78 = 0u;
        v79 = 0u;
      }

      v70 = sub_2761B4E18(v78);
      NSLog(&cfstr_PChartBoxPivot.isa, v27, self, v76, v33, v39, v75, v54, v66, v70);
    }

    objc_msgSend_p_submitGeometryForChartBounds_pivot_thicknessIndex_pipeline_(self, v23, v26, v24, v25, &v92, &v90, 1, boundsCopy);
    if (self->_rotationType == 1)
    {
      objc_msgSend_p_submitGeometryForChartBounds_pivot_thicknessIndex_pipeline_(self, v71, v72, v73, v74, &v92, &v90, 0, boundsCopy);
    }
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

@end