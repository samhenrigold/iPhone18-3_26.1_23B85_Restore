void *sub_1AF34305C(void *result, const char *a2, uint64_t a3)
{
  if (!result[2])
  {
    v4 = result;
    v5 = result[1];
    if (v5)
    {
      v7 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v5, @"skel:animationSource", qword_1EB658DA8, qword_1EB658E40);
      result = objc_msgSend_setObjectPath_(v7, v8, a2);
      v4[2] = a3;
    }
  }

  return result;
}

void sub_1AF3430D4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AF3433C0(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

unint64_t sub_1AF34317C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF34361C(a1, a2, a3, a4, a5);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v13 = objc_msgSend_keyTimes(a3, v11, v12);
      result = objc_msgSend_count(v13, v14, v15);
      if (result)
      {
        v18 = objc_msgSend_count(v13, v16, v17);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v13, v19, v18 - 1);
        objc_msgSend_doubleValue(v20, v21, v22);
        v24 = v23;
        v26 = objc_msgSend_objectAtIndexedSubscript_(v13, v25, 0);
        result = objc_msgSend_doubleValue(v26, v27, v28);
        v32 = v24 - v31;
        if (v24 - v31 >= 0.0001)
        {
          objc_msgSend_duration(a3, v29, v30);
          v34 = v33;
          v37 = objc_msgSend_keyPath(a3, v35, v36);
          v39 = objc_msgSend_componentsSeparatedByString_(v37, v38, @".");
          v42 = objc_msgSend_count(v39, v40, v41);
          v44 = objc_msgSend_objectAtIndex_(v39, v43, v42 - 1);
          result = objc_msgSend_length(v44, v45, v46);
          if (result >= 9)
          {
            v48 = objc_msgSend_substringToIndex_(v44, v47, 7);
            result = objc_msgSend_isEqualToString_(v48, v49, @"weights");
            if (result)
            {
              v51 = objc_msgSend_substringFromIndex_(v44, v50, 8);
              v54 = objc_msgSend_intValue(v51, v52, v53);
              v57 = objc_msgSend_count(v13, v55, v56);
              sub_1AF3436B0(a4, v57);
              v58 = (*a5 + 24 * v54);
              v61 = objc_msgSend_count(v13, v59, v60);
              sub_1AF121C28(v58, v61);
              v64 = objc_msgSend_values(a3, v62, v63);
              result = objc_msgSend_count(v13, v65, v66);
              if (result)
              {
                v68 = 0;
                v69 = 24 * v54;
                v70 = v34 / v32;
                do
                {
                  v71 = objc_msgSend_objectAtIndexedSubscript_(v13, v67, v68);
                  objc_msgSend_doubleValue(v71, v72, v73);
                  v75 = v74;
                  objc_msgSend_beginTime(a3, v76, v77);
                  *(*a4 + 8 * v68) = v78 + v75 * v70;
                  v80 = objc_msgSend_objectAtIndexedSubscript_(v64, v79, v68);
                  objc_msgSend_floatValue(v80, v81, v82);
                  *(*(*a5 + v69) + 4 * v68++) = v83;
                  result = objc_msgSend_count(v13, v84, v85);
                }

                while (v68 < result);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1AF3433C0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AF10A1D0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1AF34352C(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AF343584(v18);
  }
}

void sub_1AF34352C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF343584(uint64_t a1)
{
  sub_1AF3435BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF3435BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_1AF34361C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5)
{
  v10 = objc_msgSend_animations(a3, a2, a3);
  result = objc_msgSend_count(v10, v11, v12);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v17 = objc_msgSend_animations(a3, v14, v15);
      v19 = objc_msgSend_objectAtIndex_(v17, v18, i);
      sub_1AF34317C(a1, a2, v19, a4, a5);
      v22 = objc_msgSend_animations(a3, v20, v21);
      result = objc_msgSend_count(v22, v23, v24);
    }
  }

  return result;
}

void sub_1AF3436B0(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1AF3436E0(result, a2 - v2);
  }
}

void sub_1AF3436E0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1AF1233A0(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1AF343810(uint64_t a1, void *a2, const char *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v9 = objc_msgSend_skinner(a2, a2, a3);
    v12 = objc_msgSend_boneWeights(v9, v10, v11);
    v15 = objc_msgSend_data(v12, v13, v14);
    v18 = objc_msgSend_bytes(v15, v16, v17);
    v21 = objc_msgSend_boneWeights(v9, v19, v20);
    v24 = objc_msgSend_dataOffset(v21, v22, v23);
    v27 = objc_msgSend_boneIndices(v9, v25, v26);
    v30 = objc_msgSend_data(v27, v28, v29);
    v33 = objc_msgSend_bytes(v30, v31, v32);
    v36 = objc_msgSend_boneIndices(v9, v34, v35);
    v39 = objc_msgSend_dataOffset(v36, v37, v38);
    if (v18 && v33)
    {
      v42 = v39;
      v43 = objc_msgSend_boneWeights(v9, v40, v41);
      v46 = objc_msgSend_vectorCount(v43, v44, v45);
      v49 = objc_msgSend_boneWeights(v9, v47, v48);
      v103 = objc_msgSend_componentsPerVector(v49, v50, v51) * v46;
      v54 = objc_msgSend_boneWeights(v9, v52, v53);
      v102 = objc_msgSend_componentsPerVector(v54, v55, v56);
      v59 = objc_msgSend_boneIndices(v9, v57, v58);
      v62 = objc_msgSend_vectorCount(v59, v60, v61);
      v65 = objc_msgSend_boneIndices(v9, v63, v64);
      v68 = objc_msgSend_componentsPerVector(v65, v66, v67) * v62;
      v71 = objc_msgSend_boneIndices(v9, v69, v70);
      v74 = objc_msgSend_componentsPerVector(v71, v72, v73);
      v77 = objc_msgSend_boneIndices(v9, v75, v76);
      v80 = v24;
      v81 = objc_msgSend_bytesPerComponent(v77, v78, v79);
      objc_msgSend_baseGeometryBindTransform(v9, v82, v83);
      v104 = vcvtq_f64_f32(*v84.f32);
      v105 = vcvt_hight_f64_f32(v84);
      v106 = vcvtq_f64_f32(*v85.f32);
      v107 = vcvt_hight_f64_f32(v85);
      v108 = vcvtq_f64_f32(*v86.f32);
      v109 = vcvt_hight_f64_f32(v86);
      v110 = vcvtq_f64_f32(*v87.f32);
      v111 = vcvt_hight_f64_f32(v87);
      sub_1AF3445E4(a5, a3, v18 + v80, v103, v102, (v33 + v42), v68, v74, v81, &v104);
      return;
    }

    v94 = objc_msgSend_skeleton(v9, v40, v41);
    if (v94)
    {
      v97 = v94;
    }

    else
    {
      v97 = a2;
    }

    objc_msgSend_baseGeometryBindTransform(v9, v95, v96);
    v104 = vcvtq_f64_f32(*v98.f32);
    v105 = vcvt_hight_f64_f32(v98);
    v106 = vcvtq_f64_f32(*v99.f32);
    v107 = vcvt_hight_f64_f32(v99);
    v108 = vcvtq_f64_f32(*v100.f32);
    v109 = vcvt_hight_f64_f32(v100);
    v110 = vcvtq_f64_f32(*v101.f32);
    v111 = vcvt_hight_f64_f32(v101);
    v92 = a4;
    v93 = v97;
  }

  else
  {
    if (!a4)
    {
      return;
    }

    objc_msgSend_worldTransform(a2, a2, a3);
    v104 = vcvtq_f64_f32(*v88.f32);
    v105 = vcvt_hight_f64_f32(v88);
    v106 = vcvtq_f64_f32(*v89.f32);
    v107 = vcvt_hight_f64_f32(v89);
    v108 = vcvtq_f64_f32(*v90.f32);
    v109 = vcvt_hight_f64_f32(v90);
    v110 = vcvtq_f64_f32(*v91.f32);
    v111 = vcvt_hight_f64_f32(v91);
    v92 = a4;
    v93 = a2;
  }

  sub_1AF344414(v92, v93, a3, &v104);
}

char *sub_1AF343A48(uint64_t a1, void ***a2, uint64_t a3)
{
  result = sub_1AF33A418(a2, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = objc_msgSend_animationKeys(result, v4, v5);
  result = objc_msgSend_count(v7, v8, v9);
  if (!result)
  {
    return result;
  }

  v184 = v6;
  v11 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v183 = _Q0;
  __asm { FMOV            V0.4S, #1.0 }

  v192 = _Q0;
  v182 = v7;
  while (2)
  {
    v185 = v11;
    v18 = objc_msgSend_objectAtIndex_(v7, v10, v11);
    v20 = objc_msgSend_animationPlayerForKey_(v184, v19, v18);
    v23 = objc_msgSend_animation(v20, v21, v22);
    v206 = xmmword_1AFE47B50;
    v207 = v183;
    v209[0] = 0;
    v209[1] = 0;
    v208 = v209;
    v26 = objc_msgSend_caAnimation(v23, v24, v25);
    sub_1AF344934(&v206, v26);
    v29 = objc_opt_new();
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v30 = *a2;
    v31 = a2[1];
    while (v30 != v31)
    {
      v32 = *v30;
      v33 = objc_msgSend_name(*v30, v27, v28);
      v36 = objc_msgSend_UTF8String(v33, v34, v35);
      sub_1AF13D250(&__p, v36);
      v37 = sub_1AF33C394(&v208, &__p);
      if (v209 == v37)
      {
        if (!objc_msgSend_identifier(v32, v27, v28))
        {
          goto LABEL_14;
        }

        v38 = objc_msgSend_identifier(v32, v27, v28);
        v41 = objc_msgSend_UTF8String(v38, v39, v40);
        sub_1AF2737B0(&__p, v41);
        v37 = sub_1AF33C394(&v208, &__p);
      }

      if (v37 != v209)
      {
        v42 = **a2;
        v43 = &stru_1F2575650;
        do
        {
          v44 = objc_msgSend_name(v32, v27, v28);
          v46 = sub_1AF338AE8(v44, v45);
          v43 = objc_msgSend_stringByAppendingPathComponent_(v46, v47, v43);
          if (v32 == v42)
          {
            break;
          }

          v32 = objc_msgSend_parentNode(v32, v27, v48);
        }

        while (v32);
        objc_msgSend_addObject_(v29, v27, v43);
        sub_1AF341604(&v203, &__p);
      }

LABEL_14:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v30;
    }

    v50 = objc_msgSend_count(v29, v27, v28);
    if (v50)
    {
      v51 = sub_1AF342FF0(a1, v49);
      v53 = sub_1AF338AE8(v18, v52);
      v55 = objc_msgSend_stringByAppendingPathComponent_(v51, v54, v53);
      v181 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v56, v55);
      v57 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v181, *(a1 + 56), v181, qword_1EB658E10);
      v59 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v58, v57, @"joints", qword_1EB658DC8, qword_1EB658E40);
      objc_msgSend_setStringArray_(v59, v60, v29);

      memset(&__p, 0, sizeof(__p));
      sub_1AF179938(&__p, 0xAAAAAAAAAAAAAAABLL * (v204 - v203));
      v199 = 0;
      v200 = 0;
      v201 = 0;
      sub_1AF179938(&v199, 0xAAAAAAAAAAAAAAABLL * (v204 - v203));
      v196 = 0;
      v197 = 0;
      v198 = 0;
      sub_1AF179938(&v196, 0xAAAAAAAAAAAAAAABLL * (v204 - v203));
      v61 = *(&v206 + 1) - *&v206;
      v62 = ((*(&v206 + 1) - *&v206) / *&v207 + 0.5);
      if ((v62 & 0x80000000) == 0)
      {
        v63 = 0;
        v64 = v62;
        v186 = v62 + 1;
        v187 = v57;
        v190 = v50;
        do
        {
          v65 = *&v206;
          sub_1AF1086DC(&__p, 0);
          sub_1AF1086DC(&v199, 0);
          sub_1AF1086DC(&v196, 0);
          v68 = v203;
          v67 = v204;
          v191 = v204;
          while (v68 != v67)
          {
            v195.n128_u32[2] = 0;
            v195.n128_u64[0] = 0;
            v193 = v192;
            v211 = v68;
            v69 = sub_1AF344E54(&v208, v68, &unk_1AFE22A40, &v211, &v210);
            v194 = xmmword_1AFE201A0;
            v195 = 0u;
            v193 = v192;
            v73 = v69[7];
            v72 = v69[8];
            while (v73 != v72)
            {
              v74 = *v73;
              v75 = objc_msgSend_keyTimes(*v73, v70, v71);
              if (objc_msgSend_count(v75, v76, v77))
              {
                v78 = objc_msgSend_keyPath(v74, v70, v71);
                v80 = objc_msgSend_componentsSeparatedByString_(v78, v79, @".");
                objc_msgSend_duration(v74, v81, v82);
                v84 = v83;
                v87 = objc_msgSend_count(v75, v85, v86);
                v89 = objc_msgSend_objectAtIndexedSubscript_(v75, v88, v87 - 1);
                objc_msgSend_doubleValue(v89, v90, v91);
                v93 = v92;
                v95 = objc_msgSend_objectAtIndexedSubscript_(v75, v94, 0);
                objc_msgSend_doubleValue(v95, v96, v97);
                v100 = 0;
                if (v93 - v101 >= 0.0001 && v84 >= 0.0001)
                {
                  objc_msgSend_beginTime(v74, v98, v99);
                  if (objc_msgSend_count(v75, v102, v103) <= v63)
                  {
                    v100 = objc_msgSend_count(v75, v104, v105) - 1;
                  }

                  else
                  {
                    v106 = objc_msgSend_objectAtIndexedSubscript_(v75, v104, v63);
                    objc_msgSend_doubleValue(v106, v107, v108);
                    v100 = v63;
                  }
                }

                v109 = objc_msgSend_objectAtIndex_(v80, v98, 1);
                if (objc_msgSend_isEqualToString_(v109, v110, @"transform"))
                {
                  v113 = objc_msgSend_keyTimes(v74, v111, v112);
                  if (objc_msgSend_count(v113, v114, v115))
                  {
                    v116 = objc_msgSend_values(v74, v70, v71);
                    v118 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, v100);
                    objc_msgSend_VFXMatrix4Value(v118, v119, v120);
                    sub_1AF3041C0(&v194, &v195, &v193, v121, v122, v123, v124);
                  }
                }

                else if ((objc_msgSend_isEqualToString_(v109, v111, @"position") & 1) != 0 || objc_msgSend_isEqualToString_(v109, v125, @"translation"))
                {
                  v127 = objc_msgSend_keyTimes(v74, v125, v126);
                  if (objc_msgSend_count(v127, v128, v129))
                  {
                    v130 = objc_msgSend_values(v74, v70, v71);
                    v132 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, v100);
                    objc_msgSend_VFXFloat3Value(v132, v133, v134);
                    v195 = v135;
                  }
                }

                else if ((objc_msgSend_isEqualToString_(v109, v125, @"orientation") & 1) != 0 || objc_msgSend_isEqualToString_(v109, v136, @"quaternion"))
                {
                  v138 = objc_msgSend_keyTimes(v74, v136, v137);
                  if (objc_msgSend_count(v138, v139, v140))
                  {
                    v141 = objc_msgSend_values(v74, v70, v71);
                    v143 = objc_msgSend_objectAtIndexedSubscript_(v141, v142, v100);
                    objc_msgSend_VFXFloat4Value(v143, v144, v145);
                    v194 = v146;
                  }
                }

                else if (objc_msgSend_isEqualToString_(v109, v136, @"scale"))
                {
                  v147 = objc_msgSend_keyTimes(v74, v70, v71);
                  if (objc_msgSend_count(v147, v148, v149))
                  {
                    v150 = objc_msgSend_values(v74, v70, v71);
                    if (v100 >= objc_msgSend_count(v150, v151, v152))
                    {
                      v154 = objc_msgSend_objectAtIndexedSubscript_(v150, v153, 0);
                    }

                    else
                    {
                      v154 = objc_msgSend_objectAtIndexedSubscript_(v150, v153, v100);
                    }

                    objc_msgSend_VFXFloat3Value(v154, v155, v156);
                    v193 = v157;
                  }
                }
              }

              ++v73;
            }

            sub_1AF1083F4(&__p, &v195);
            v50 = v190;
            v158 = v200;
            if (v200 >= v201)
            {
              v160 = (v200 - v199) >> 4;
              v161 = v160 + 1;
              if ((v160 + 1) >> 60)
              {
                sub_1AF10A1D0();
              }

              v162 = v201 - v199;
              if ((v201 - v199) >> 3 > v161)
              {
                v161 = v162 >> 3;
              }

              if (v162 >= 0x7FFFFFFFFFFFFFF0)
              {
                v163 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v163 = v161;
              }

              if (v163)
              {
                sub_1AF10A1E0(&v199, v163);
              }

              v164 = (16 * v160);
              *v164 = v194;
              i64 = 16 * v160 + 16;
              v165 = (16 * v160 - (v200 - v199));
              memcpy(v164 - (v200 - v199), v199, v200 - v199);
              v166 = v199;
              v199 = v165;
              v200 = i64;
              v201 = 0;
              if (v166)
              {
                operator delete(v166);
              }
            }

            else
            {
              *v200 = v194;
              i64 = v158[1].i64;
            }

            v200 = i64;
            sub_1AF1083F4(&v196, &v193);
            v68 += 3;
            v67 = v191;
          }

          v167 = (v61 * v63 / v64 + v65) / *(a1 + 504) + 0.0;
          v168 = v167;
          if (vabdd_f64(v167, v168) >= 0.001)
          {
            v169 = v187;
            if (1.0 - (v167 - v168) < 0.001)
            {
              v167 = v168 + 1.0;
            }

            v170 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v66, v187, @"translations", qword_1EB658D90, qword_1EB658E40);
          }

          else
          {
            v167 = v167;
            v169 = v187;
            v170 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v66, v187, @"translations", qword_1EB658D90, qword_1EB658E40);
          }

          objc_msgSend_setFloat3Array_count_atTime_(v170, v171, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4, v167);
          v173 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v172, v169, @"rotations", qword_1EB658DC0, qword_1EB658E40);
          objc_msgSend_setQuatfArray_count_atTime_(v173, v174, v199, (v200 - v199) >> 4, v167);
          v176 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v175, v169, @"scales", qword_1EB658D90, qword_1EB658E40);
          objc_msgSend_setFloat3Array_count_atTime_(v176, v177, v196, (v197 - v196) >> 4, v167);
          ++v63;
        }

        while (v63 != v186);
      }

      if (v196)
      {
        v197 = v196;
        operator delete(v196);
      }

      if (v199)
      {
        v200 = v199;
        operator delete(v199);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }

    __p.__r_.__value_.__r.__words[0] = &v203;
    sub_1AF338DF4(&__p);
    sub_1AF345044(&v208, v209[0]);
    if (!v50)
    {
      v7 = v182;
      v180 = objc_msgSend_count(v182, v178, v179);
      v11 = v185 + 1;
      if (v185 + 1 >= v180)
      {
        return 0;
      }

      continue;
    }

    return v181;
  }
}

void sub_1AF3442E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  a41 = (v46 - 248);
  sub_1AF338DF4(&a41);
  sub_1AF345044(v46 - 192, *(v46 - 184));
  _Unwind_Resume(a1);
}

void *sub_1AF3443A8(void *result, const char *a2)
{
  if (!result[15])
  {
    v2 = result;
    v3 = result[13];
    if (v3)
    {
      v5 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v3, @"skel:animationSource", qword_1EB658DA8, qword_1EB658E40);
      result = objc_msgSend_setObjectPath_(v5, v6, a2);
      v2[15] = a2;
    }
  }

  return result;
}

void *sub_1AF344414(void *result, const char *a2, const char *a3, _OWORD *a4)
{
  v6 = *result;
  v7 = result[1] - *result;
  if (v7)
  {
    v36 = v4;
    v37 = v5;
    v10 = result;
    v11 = 0;
    v12 = v7 >> 3;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    while (*(v6 + 8 * v11) != a2)
    {
      if (v12 == ++v11)
      {
        return result;
      }
    }

    if (v11 != -1)
    {
      v35 = 1065353216;
      v13 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, a3, @"primvars:skel:jointWeights", qword_1EB658D98, qword_1EB658E40);
      objc_msgSend_setFloatArray_count_(v13, v14, &v35, 1);
      v16 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v15, 1);
      objc_msgSend_setMetadataWithKey_value_(v13, v17, @"elementSize", v16);
      v19 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v18, @"constant");
      v21 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v20, v19);
      objc_msgSend_setMetadataWithKey_value_(v13, v22, @"interpolation", v21);
      v34 = v11;
      v24 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v23, a3, @"primvars:skel:jointIndices", qword_1EB658DA0, qword_1EB658E40);
      objc_msgSend_setIntArray_count_(v24, v25, &v34, 1);
      v27 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v26, 1);
      objc_msgSend_setMetadataWithKey_value_(v24, v28, @"elementSize", v27);
      v30 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v29, @"constant");
      v32 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v31, v30);
      objc_msgSend_setMetadataWithKey_value_(v24, v33, @"interpolation", v32);
      return sub_1AF34487C(v10, a3, a4);
    }
  }

  return result;
}

void sub_1AF3445E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, unint64_t a7, uint64_t a8, int a9, _OWORD *a10)
{
  v18 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, a2, @"primvars:skel:jointWeights", qword_1EB658D98, qword_1EB658E40);
  objc_msgSend_setFloatArray_count_(v18, v19, a3, a4);
  v21 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v20, a5);
  objc_msgSend_setMetadataWithKey_value_(v18, v22, @"elementSize", v21);
  v24 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v23, @"vertex");
  v26 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v25, v24);
  objc_msgSend_setMetadataWithKey_value_(v18, v27, @"interpolation", v26);
  __p = 0;
  v45 = 0;
  v46 = 0;
  sub_1AF17A60C(&__p, a7);
  if (a9 == 2)
  {
    if (a7)
    {
      v29 = a7;
      do
      {
        v30 = *a6++;
        v47 = v30;
        v48 = &v47;
        v43 = sub_1AF33ADD0(a1 + 64, &v47, &unk_1AFE22A40, &v48)[5];
        sub_1AF121C58(&__p, &v43);
        --v29;
      }

      while (v29);
    }
  }

  else if (a7)
  {
    v31 = a7;
    do
    {
      v32 = *a6;
      a6 += 2;
      v47 = v32;
      v48 = &v47;
      v43 = sub_1AF33ADD0(a1 + 64, &v47, &unk_1AFE22A40, &v48)[5];
      sub_1AF121C58(&__p, &v43);
      --v31;
    }

    while (v31);
  }

  v33 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v28, a2, @"primvars:skel:jointIndices", qword_1EB658DA0, qword_1EB658E40);
  objc_msgSend_setIntArray_count_(v33, v34, __p, a7);
  v36 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v35, a8);
  objc_msgSend_setMetadataWithKey_value_(v33, v37, @"elementSize", v36);
  v39 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v38, @"vertex");
  v41 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v40, v39);
  objc_msgSend_setMetadataWithKey_value_(v33, v42, @"interpolation", v41);
  sub_1AF34487C(*(a1 + 56), a2, a10);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }
}

void sub_1AF344858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF34487C(uint64_t a1, const char *a2, _OWORD *a3)
{
  v6 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, a2, @"primvars:skel:geomBindTransform", qword_1EB658D58, qword_1EB658E40);
  v7 = a3[5];
  v16[4] = a3[4];
  v16[5] = v7;
  v8 = a3[7];
  v16[6] = a3[6];
  v16[7] = v8;
  v9 = a3[1];
  v16[0] = *a3;
  v16[1] = v9;
  v10 = a3[3];
  v16[2] = a3[2];
  v16[3] = v10;
  objc_msgSend_setDouble4x4Value_(v6, v11, v16);
  v13 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v12, a2, @"skel:skeleton", qword_1EB658DA8, qword_1EB658E40);
  return objc_msgSend_setObjectPath_(v13, v14, *(a1 + 112));
}

void sub_1AF344934(double *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    sub_1AF344C78(a1, a2, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v92 = a2;
      v7 = objc_msgSend_keyTimes(a2, v5, v6);
      if (objc_msgSend_count(v7, v8, v9))
      {
        v12 = objc_msgSend_keyPath(a2, v10, v11);
        if (objc_msgSend_length(v12, v13, v14))
        {
          v16 = objc_msgSend_componentsSeparatedByString_(v12, v15, @".");
          if (objc_msgSend_count(v16, v17, v18) == 2)
          {
            v20 = objc_msgSend_objectAtIndex_(v16, v19, 0);
            if (objc_msgSend_characterAtIndex_(v20, v21, 0) == 47)
            {
              v23 = objc_msgSend_substringFromIndex_(v20, v22, 1);
              v26 = objc_msgSend_UTF8String(v23, v24, v25);
              sub_1AF13D250(v90, v26);
              v27 = sub_1AF33C394((a1 + 4), v90);
              if (a1 + 5 == v27)
              {
                __p = 0;
                v88 = 0;
                v89 = 0;
                sub_1AF33A510(&__p, &v92);
                v94 = v90;
                v30 = (sub_1AF344E54(a1 + 4, v90, &unk_1AFE22A40, &v94, &v93) + 7);
                if (v30 != &__p)
                {
                  sub_1AF344CEC(v30, __p, v88, (v88 - __p) >> 3);
                }

                if (__p)
                {
                  v88 = __p;
                  operator delete(__p);
                }
              }

              else
              {
                sub_1AF33A510((v27 + 7), &v92);
              }

              if (objc_msgSend_count(v7, v28, v29) >= 2)
              {
                v33 = objc_msgSend_count(v7, v31, v32);
                v35 = objc_msgSend_objectAtIndexedSubscript_(v7, v34, v33 - 1);
                objc_msgSend_doubleValue(v35, v36, v37);
                v39 = v38;
                v41 = objc_msgSend_objectAtIndexedSubscript_(v7, v40, 0);
                objc_msgSend_doubleValue(v41, v42, v43);
                v47 = v39 - v46;
                if (v47 >= 0.0001)
                {
                  objc_msgSend_duration(v92, v44, v45);
                  a1[3] = v48 / v47;
                  v50 = objc_msgSend_objectAtIndexedSubscript_(v7, v49, 0);
                  objc_msgSend_doubleValue(v50, v51, v52);
                  v54 = v53;
                  v55 = a1[3];
                  objc_msgSend_beginTime(v92, v56, v57);
                  v59 = v58;
                  v62 = objc_msgSend_count(v7, v60, v61);
                  v64 = objc_msgSend_objectAtIndexedSubscript_(v7, v63, v62 - 1);
                  objc_msgSend_doubleValue(v64, v65, v66);
                  v68 = v67;
                  v69 = a1[3];
                  objc_msgSend_beginTime(v92, v70, v71);
                  v73 = v59 + v54 * v55;
                  v75 = v74 + v68 * v69;
                  if (*a1 > v73)
                  {
                    *a1 = v73;
                  }

                  if (a1[1] < v75)
                  {
                    a1[1] = v75;
                  }

                  v76 = objc_msgSend_objectAtIndexedSubscript_(v7, v72, 1);
                  objc_msgSend_doubleValue(v76, v77, v78);
                  v80 = v79;
                  v82 = objc_msgSend_objectAtIndexedSubscript_(v7, v81, 0);
                  objc_msgSend_doubleValue(v82, v83, v84);
                  v86 = (v80 - v85) * a1[3];
                  if (v86 > 0.0001 && a1[2] > 0.0001)
                  {
                    a1[2] = v86;
                  }
                }
              }

              if (v91 < 0)
              {
                operator delete(v90[0]);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1AF344C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF344C78(double *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_animations(a2, a2, a3);
  result = objc_msgSend_count(v5, v6, v7);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v12 = objc_msgSend_animations(a2, v9, v10);
      v14 = objc_msgSend_objectAtIndex_(v12, v13, i);
      sub_1AF344934(a1, v14);
      v17 = objc_msgSend_animations(a2, v15, v16);
      result = objc_msgSend_count(v17, v18, v19);
    }
  }

  return result;
}

void **sub_1AF344CEC(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1AF344E18(v6, v10);
    }

    sub_1AF10A1D0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1AF344E18(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1AF33A5E4(a1, a2);
  }

  sub_1AF10A1D0();
}

void *sub_1AF344E54(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_1AF33C494(a1, &v7, a2);
  if (!v5)
  {
    sub_1AF344EFC();
  }

  return v5;
}

char **sub_1AF344FA0(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1AF344FEC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AF344FEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1AF345044(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF345044(a1, *a2);
    sub_1AF345044(a1, a2[1]);
    sub_1AF344FEC((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1AF3450A0(uint64_t a1)
{
  sub_1AF338BA4(a1 + 440);
  sub_1AF112128(a1 + 416, *(a1 + 424));
  sub_1AF338C1C((a1 + 344));
  sub_1AF112128(a1 + 320, *(a1 + 328));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  sub_1AF112128(a1 + 272, *(a1 + 280));
  sub_1AF112128(a1 + 248, *(a1 + 256));
  sub_1AF338D50(a1 + 216, *(a1 + 224));
  sub_1AF338E98(a1 + 192, *(a1 + 200));
  sub_1AF112128(a1 + 168, *(a1 + 176));
  sub_1AF338EFC(a1 + 144, *(a1 + 152));
  sub_1AF112128(a1 + 120, *(a1 + 128));
  sub_1AF112128(a1 + 96, *(a1 + 104));
  sub_1AF338EFC(a1 + 64, *(a1 + 72));
  return a1;
}

void sub_1AF345368(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  (*(a3 + 16))(a3, a1, 0, 0);
  sub_1AF3453F4(a1, v6, a2, a3);
}

void *sub_1AF3453F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    result = objc_msgSend_containsObject_(a2, a2, result);
    if ((result & 1) == 0)
    {
      objc_msgSend_addObject_(a2, v8, v7);
      result = objc_msgSend_conformsToProtocol_(v7, v9, &unk_1F25D7248);
      if (result)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1AF34EE98;
        v11[3] = &unk_1E7A7F518;
        v11[4] = a2;
        v11[5] = a4;
        v11[6] = a3;
        return objc_msgSend_enumerateReferencesForOperation_usingBlock_(v7, v10, a3, v11);
      }
    }
  }

  return result;
}

void *sub_1AF3458AC(uint64_t a1, void *key, int a3, uint64_t a4)
{
  v4 = key;
  if (a4)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 32), key);
      if (Value)
      {
        v7 = Value;
        (*(a4 + 16))(a4, Value);
        return v7;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF345A34(void *a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v9 = objc_msgSend_entityObject(a1, v7, v8);
    objc_msgSend_entityObject(a2, v10, v11);

    return MEMORY[0x1EEE66B58](v9, sel_fillRemapTable_copy_, a3);
  }

  return result;
}

void sub_1AF345AC0(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_asset(a2, v5, v6) != *(a1 + 32))
  {
    v9 = objc_msgSend_asset(a2, v7, v8);
    v12 = objc_msgSend_authoringGraph(v9, v10, v11);
    if (v12)
    {
      v14 = *(a1 + 40);

      sub_1AF3C4B38(v12, v14);
    }

    else
    {
      v15 = sub_1AF0D5194(0, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF9310();
      }
    }
  }
}

void sub_1AF34624C(void *a1, void *a2, __CFDictionary *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(VFXAssetNode);
  objc_msgSend_copyTo_withContext_(a1, v7, v6, a3);
  v8 = sub_1AFDF4FDC(a3);
  CFDictionaryAddValue(v8, a1, v6);
  v11 = objc_msgSend_asset(a1, v9, v10);
  v14 = objc_msgSend_asset(v6, v12, v13);
  CFDictionaryAddValue(v8, v11, v14);
  objc_msgSend_addChildNode_(a2, v15, v6);
  objc_msgSend_asset(a1, v16, v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_asset(a1, v18, v19);
    v23 = objc_msgSend_coreEntityHandle(v20, v21, v22);
    v26 = objc_msgSend_asset(v6, v24, v25);
    v29 = objc_msgSend_coreEntityHandle(v26, v27, v28);
    CFDictionaryAddValue(v8, v23, v29);
  }

  v30 = objc_msgSend_childNodes(a1, v18, v19);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v37, v41, 16);
  if (v32)
  {
    v33 = v32;
    v34 = *v38;
    do
    {
      v35 = 0;
      do
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v30);
        }

        sub_1AF34624C(*(*(&v37 + 1) + 8 * v35++), v6, a3);
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v36, &v37, v41, 16);
    }

    while (v33);
  }
}

void *sub_1AF346410(uint64_t a1, void *key, int a3, uint64_t a4)
{
  v4 = key;
  if (a4)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 32), key);
      if (Value)
      {
        v7 = Value;
        (*(a4 + 16))(a4, Value);
        return v7;
      }
    }
  }

  return v4;
}

void *sub_1AF346594(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_behaviorGraph(a2, a2, a3);
  result = objc_msgSend_coreEntityHandle(v4, v5, v6);
  if (result)
  {
    v9 = result;
    v10 = *(a1 + 32);

    return objc_msgSend_addObject_(v10, v8, v9);
  }

  return result;
}

uint64_t sub_1AF3465E8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = objc_msgSend_asset(a2, v6, v7);
  if (isKindOfClass)
  {
    result = objc_msgSend_coreEntityHandle(v8, v9, v10);
    if (result)
    {
      v13 = result;
      v14 = *(a1 + 32);

      return objc_msgSend_addObject_(v14, v12, v13);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v17 = objc_msgSend_asset(a2, v15, v16);
      v20 = objc_msgSend_node(v17, v18, v19);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1AF346708;
      v22[3] = &unk_1E7A79810;
      v22[4] = *(a1 + 32);
      return objc_msgSend_enumerateHierarchyUsingBlock_(v20, v21, v22);
    }
  }

  return result;
}

void *sub_1AF346708(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_behaviorGraph(a2, a2, a3);
  result = objc_msgSend_coreEntityHandle(v4, v5, v6);
  if (result)
  {
    v9 = result;
    v10 = *(a1 + 32);

    return objc_msgSend_addObject_(v10, v8, v9);
  }

  return result;
}

void *sub_1AF3472F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1C38D4(v3, v4);
}

uint64_t sub_1AF3479AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_clock(*(a1 + 32), a2, a3);

  return objc_msgSend_setTime_(v3, v4, v5, 0.0);
}

uint64_t sub_1AF3479DC(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend__updatePresentationFromModel(a2, a2, a3);
  sub_1AF345368(a2, 0, &unk_1F24EC3A8);
  v6 = objc_msgSend_physicsBody(a2, v4, v5);
  objc_msgSend_clearAllForces(v6, v7, v8);

  return objc_msgSend_resetTransform(v6, v9, v10);
}

void *sub_1AF347A3C(uint64_t a1, void *a2)
{
  if (objc_msgSend_conformsToProtocol_(a2, a2, &unk_1F25F48F0))
  {
    objc_msgSend__updatePresentationFromModel(a2, v3, v4);
  }

  return a2;
}

uint64_t sub_1AF347A7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1CF878(*(a1 + 32), a2);

  return objc_msgSend_restart(v2, v3, v4);
}

double sub_1AF347F98(uint64_t a1, uint64_t a2)
{
  sub_1AF1D03E0(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 136));
  sub_1AF1D0344(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 140));
  sub_1AF1D02A8(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 144));
  sub_1AF1D0584(*(*(a1 + 32) + 8), *(*(a1 + 32) + 160));
  sub_1AF1D0648(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 164));
  sub_1AF1D06E4(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 168));
  sub_1AF1D0780(*(*(a1 + 32) + 8), *(*(a1 + 32) + 172));
  sub_1AF1D0844(*(*(a1 + 32) + 8), *(*(a1 + 32) + 176));
  sub_1AF1D08E0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF1D09A4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 192));
  sub_1AF1D0A40(*(*(a1 + 32) + 8), *(*(a1 + 32) + 200));
  sub_1AF1D0ADC(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 208));
  v10.n128_u64[0] = sub_1AF371798(*(*(a1 + 32) + 152), 0);
  v10.n128_u64[1] = v8;
  *&result = sub_1AF1D0434(*(*(a1 + 32) + 8), &v10).n128_u64[0];
  return result;
}

uint64_t sub_1AF348620(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF3489C4(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 304));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 312), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(a1 + 40));
    v7 = (*(a1 + 40) + 304);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF348E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF348FC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 312);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF3493E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF349528(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF3495F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF3496A0(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF3497D8(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF349914(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3499BC;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

void sub_1AF349D7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);

  sub_1AF1CF614(v3, v4);
}

void sub_1AF34A1E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_worldRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF27D958(v4, v5, v6);
}

double sub_1AF34AAB4(uint64_t a1)
{
  v4.n128_u64[0] = sub_1AF371798(*(a1 + 32), 0);
  v4.n128_u64[1] = v2;
  *&result = sub_1AF1D0434(*(*(a1 + 40) + 8), &v4).n128_u64[0];
  return result;
}

const void *sub_1AF34B754(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_stateManager(a2, a2, a3);
  result = objc_msgSend_activeState(v5, v6, v7);
  if (result)
  {
    CFDictionarySetValue(*(a1 + 32), a2, result);
    v11 = objc_msgSend_stateManager(a2, v9, v10);
    objc_msgSend_setTransitionsEnabled_(v11, v12, 0);
    v15 = objc_msgSend_stateManager(a2, v13, v14);

    return objc_msgSend_setActiveState_(v15, v16, 0);
  }

  return result;
}

uint64_t sub_1AF34B7D0(void *a1, const char *a2)
{
  objc_msgSend_setState_(a1, a2, a2);
  v5 = objc_msgSend_stateManager(a1, v3, v4);

  return objc_msgSend_setTransitionsEnabled_(v5, v6, 1);
}

uint64_t sub_1AF34BB84(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 32) && (v6 = objc_msgSend_pathExtension(*(a1 + 40), a2, a3), v9 = objc_msgSend_lowercaseString(v6, v7, v8), !objc_msgSend_isEqualToString_(*(a1 + 32), v10, v9)))
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
    error = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v16, v17, 99, 1, *(a1 + 40), 1, a2);
    if (error && ((v21 = error, PathComponent = objc_msgSend_lastPathComponent(*(a1 + 40), v19, v20), *(a1 + 32)) ? (v24 = objc_msgSend_stringByAppendingPathExtension_(PathComponent, v23, *(a1 + 32))) : (v24 = objc_msgSend_stringByAppendingPathExtension_(PathComponent, v23, @"vfx")), v26 = objc_msgSend_URLByAppendingPathComponent_(v21, v25, v24), (*(a3 + 16))(a3, v26, a2)))
    {
      v29 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v27, v28);

      return MEMORY[0x1EEE66B58](v29, sel_moveItemAtURL_toURL_error_, v26);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a3 + 16);

    return v14(a3, v13, a2);
  }
}

uint64_t sub_1AF34BCD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6974B48];
  v5 = objc_msgSend_world(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_assetWithVFXWorld_(v4, v6, v5);

  return MEMORY[0x1EEE66B58](v7, sel_exportAssetToURL_error_, a2);
}

uint64_t sub_1AF34D6C8(uint64_t a1, uint64_t a2, void *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6);
    v11 = objc_msgSend_UUIDString(v7, v8, v9);

    return objc_msgSend_setIdentifier_(a3, v10, v11);
  }

  return result;
}

void *sub_1AF34D730(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_particleEmitter(a2, a2, a3))
  {
    v7 = objc_msgSend_particleEmitter(a2, v5, v6);
    v10 = objc_msgSend_coreEntityHandle(v7, v8, v9);
    objc_msgSend_resolveTag_remap_(v10, v11, *(a1 + 32), *(a1 + 40));
    v14 = objc_msgSend_particleEmitter(a2, v12, v13);
    objc_msgSend_coreHandleWasResolved(v14, v15, v16);
  }

  if (objc_msgSend_particleCollider(a2, v5, v6))
  {
    v19 = objc_msgSend_particleCollider(a2, v17, v18);
    v22 = objc_msgSend_coreEntityHandle(v19, v20, v21);
    objc_msgSend_resolveTag_remap_(v22, v23, *(a1 + 32), *(a1 + 40));
  }

  if (objc_msgSend_behaviorGraph(a2, v17, v18))
  {
    v26 = objc_msgSend_behaviorGraph(a2, v24, v25);
    objc_msgSend_resolveTag_remap_(v26, v27, *(a1 + 32), *(a1 + 40));
    isHidden = objc_msgSend_isHidden(a2, v28, v29);
    objc_msgSend_setHidden_(a2, v31, isHidden ^ 1u);
    v34 = objc_msgSend_isHidden(a2, v32, v33);
    objc_msgSend_setHidden_(a2, v35, v34 ^ 1u);
  }

  result = objc_msgSend_model(a2, v24, v25);
  if (result)
  {
    v39 = objc_msgSend_model(a2, v37, v38);
    v42 = objc_msgSend_behaviorGraph(v39, v40, v41);
    v45 = objc_msgSend_coreEntityHandle(v42, v43, v44);
    objc_msgSend_resolveTag_remap_(v45, v46, *(a1 + 32), *(a1 + 40));
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v49 = objc_msgSend_model(a2, v47, v48, 0);
    v52 = objc_msgSend_materials(v49, v50, v51);
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v64, v68, 16);
    if (result)
    {
      v56 = result;
      v57 = *v65;
      do
      {
        v58 = 0;
        do
        {
          if (*v65 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = objc_msgSend_behaviorGraph(*(*(&v64 + 1) + 8 * v58), v54, v55);
          v62 = objc_msgSend_coreEntityHandle(v59, v60, v61);
          objc_msgSend_resolveTag_remap_(v62, v63, *(a1 + 32), *(a1 + 40));
          v58 = v58 + 1;
        }

        while (v56 != v58);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v64, v68, 16);
        v56 = result;
      }

      while (result);
    }
  }

  return result;
}

void *sub_1AF34D8E4(void *a1, void *a2, uint64_t a3)
{
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = objc_msgSend_asset(a2, v6, v7);
  if (isKindOfClass)
  {
    objc_msgSend_resolveTag_remap_(v8, v9, a1[4], a1[5]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_asset(a2, v10, v11);
      v15 = objc_msgSend_node(v12, v13, v14);
      objc_msgSend_enumerateHierarchyUsingBlock_(v15, v16, a1[6]);
    }
  }

  v17 = objc_msgSend_asset(a2, v10, v11);
  result = objc_msgSend_conformsToProtocol_(v17, v18, &unk_1F25F52F8);
  if (result)
  {
    v22 = objc_msgSend_asset(a2, v20, v21);
    v25 = objc_msgSend_behaviorGraph(v22, v23, v24);
    v28 = objc_msgSend_coreEntityHandle(v25, v26, v27);
    v30 = a1[4];
    v31 = a1[5];

    return objc_msgSend_resolveTag_remap_(v28, v29, v30, v31);
  }

  return result;
}

void *sub_1AF34DDE8(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_identifier(a2, a2, a3))
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_identifier(a2, v5, v6);
    objc_msgSend_setValue_forKey_(v7, v9, a2, v8);
  }

  result = objc_msgSend_model(a2, v5, v6);
  if (result)
  {
    v13 = objc_msgSend_model(a2, v11, v12);
    if (objc_msgSend_identifier(v13, v14, v15))
    {
      v18 = *(a1 + 32);
      v19 = objc_msgSend_model(a2, v16, v17);
      v22 = objc_msgSend_model(a2, v20, v21);
      v25 = objc_msgSend_identifier(v22, v23, v24);
      objc_msgSend_setValue_forKey_(v18, v26, v19, v25);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = objc_msgSend_model(a2, v16, v17, 0);
    v30 = objc_msgSend_materials(v27, v28, v29);
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v45, 16);
    if (result)
    {
      v34 = result;
      v35 = *v42;
      do
      {
        v36 = 0;
        do
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v41 + 1) + 8 * v36);
          if (objc_msgSend_identifier(v37, v32, v33))
          {
            v38 = *(a1 + 32);
            v39 = objc_msgSend_identifier(v37, v32, v33);
            objc_msgSend_setValue_forKey_(v38, v40, v37, v39);
          }

          v36 = v36 + 1;
        }

        while (v34 != v36);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v41, v45, 16);
        v34 = result;
      }

      while (result);
    }
  }

  return result;
}

void *sub_1AF34DF78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_identifier(a2, a2, a3);
  objc_msgSend_setValue_forKey_(v5, v7, a2, v6);
  v10 = objc_msgSend_asset(a2, v8, v9);
  result = objc_msgSend_identifier(v10, v11, v12);
  if (result)
  {
    v16 = objc_msgSend_asset(a2, v14, v15);
    result = objc_msgSend_conformsToProtocol_(v16, v17, &unk_1F25F52F8);
    if (result)
    {
      v20 = *(a1 + 32);
      v21 = objc_msgSend_asset(a2, v18, v19);
      v24 = objc_msgSend_asset(a2, v22, v23);
      v28 = objc_msgSend_identifier(v24, v25, v26);

      return objc_msgSend_setValue_forKey_(v20, v27, v21, v28);
    }
  }

  return result;
}

void sub_1AF34E668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF34E6A4(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_name(a2, a2, a3))
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_name(a2, v5, v6);
    objc_msgSend_setValue_forKey_(v7, v9, a2, v8);
  }

  v10 = *(a1 + 40);

  return objc_msgSend_addObject_(v10, v5, a2);
}

uint64_t sub_1AF34E710(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, a2);
  }

  return a2;
}

uint64_t sub_1AF34E798(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = objc_msgSend_asset(a2, v6, v7);
    v11 = objc_msgSend_node(v8, v9, v10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF34E854;
    v13[3] = &unk_1E7A7F478;
    v14 = *(a1 + 32);
    return objc_msgSend_enumerateHierarchyUsingBlock_(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1AF34E854(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_name(a2, a2, a3))
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_name(a2, v5, v6);
    objc_msgSend_setValue_forKey_(v7, v9, a2, v8);
  }

  v10 = *(a1 + 40);

  return objc_msgSend_addObject_(v10, v5, a2);
}

void *sub_1AF34E8C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_containsObject_(*(a1 + 32), a2, a2))
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    if (a4)
    {
      v7 = sub_1AF2BED30(a2, *(a1 + 40));
      (*(a4 + 16))(a4, v7);
    }

    else
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  return a2;
}

void *sub_1AF34E954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_containsObject_(*(a1 + 32), a2, a2))
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    if (a4)
    {
      v9 = *(a1 + 40);
      v10 = objc_msgSend_name(a2, v7, v8);
      v12 = objc_msgSend_valueForKey_(v9, v11, v10);
      (*(a4 + 16))(a4, v12);
      if (!v12)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
      }
    }
  }

  return a2;
}

const char *sub_1AF34E9F8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_containsObject_(*(a1 + 32), a2, a2);
  if (v3)
  {
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA1A4();
    }
  }

  return a2;
}

void *sub_1AF34EA50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_containsObject_(*(a1 + 32), a2, a2))
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    if (a4)
    {
      v9 = *(a1 + 40);
      v10 = objc_msgSend_name(a2, v7, v8);
      v12 = objc_msgSend_valueForKey_(v9, v11, v10);
      (*(a4 + 16))(a4, v12);
      if (!v12)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
      }
    }
  }

  return a2;
}

uint64_t sub_1AF34ECA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_presentationScene(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend_setPeerPid_(v4, v5, v6);
}

uint64_t sub_1AF34EDA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_presentationScene(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend_setPeerTaskIdentity_(v4, v5, v6);
}

uint64_t sub_1AF34EE6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_presentationScene(*(a1 + 32), a2, a3);

  return objc_msgSend_updateMemoryOwnership(v3, v4, v5);
}

void *sub_1AF34EE98(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v4 = a1[5];
  v3 = a1[6];
  v5 = a1[4];

  return sub_1AF3453F4(v2, v5, v3, v4);
}

uint64_t sub_1AF34F4C4(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = objc_msgSend_asset(a2, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, @"serializationContext");

    return objc_msgSend_finishLoadingWithSerializationContext_(v8, v10, v11);
  }

  return result;
}

uint64_t sub_1AF350138(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACC8 != -1)
  {
    sub_1AFDFA3F4();
  }

  return qword_1ED73ACC0;
}

double sub_1AF350170()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ACC0 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"fieldType", 64, 2, 0);
  sub_1AF1DD02C(@"strength", 76, 1, 0);
  sub_1AF1DD02C(@"dampening", 80, 1, 0);
  sub_1AF1DD02C(@"noiseAmount", 84, 1, 0);
  sub_1AF1DD02C(@"noiseSeed", 88, 2, 0);
  sub_1AF1DD02C(@"falloffExponent", 128, 1, 0);
  sub_1AF1DD02C(@"halfExtent", 144, 8, 0);
  sub_1AF1DD02C(@"offset", 160, 8, 0);
  sub_1AF1DD02C(@"smoothness", 176, 1, 0);
  sub_1AF1DD02C(@"speed", 180, 1, 0);
  sub_1AF1DD018();
  qword_1ED72F1E0 = sub_1AF350EB8;
  result = *&xmmword_1F24EC408;
  xmmword_1ED72F1D0 = xmmword_1F24EC408;
  qword_1ED72F220 = sub_1AF351DC8;
  return result;
}

__n128 sub_1AF3502DC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACC8 != -1)
  {
    sub_1AFDFA3F4();
  }

  v2 = sub_1AF0D160C(qword_1ED73ACC0, 0xC0uLL);
  *(v2 + 64) = 0;
  *(v2 + 72) = 257;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 76) = _D0;
  *(v2 + 84) = 0;
  *(v2 + 88) = xmmword_1AFE47B70;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 128) = 1065353216;
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 144) = result;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0x3F80000000000000;
  return result;
}

void sub_1AF350360(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 64) != v2)
  {
    *(result + 64) = v2;
    sub_1AF3503CC(result, a2);
  }
}

void sub_1AF3503CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    v11 = sub_1AF1C3FAC(v10, a2);
    if (v11)
    {
      sub_1AF1CF7E0(v11, *(a1 + 192));
    }
  }
}

uint64_t sub_1AF350428(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void sub_1AF350470(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 76) != a3)
  {
    *(a1 + 76) = a3;
    sub_1AF3503CC(a1, a2);
  }
}

float sub_1AF3504D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 76);
}

void sub_1AF350520(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 128) != a3)
  {
    *(a1 + 128) = a3;
    sub_1AF3503CC(a1, a2);
  }
}

float sub_1AF350588(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

void sub_1AF3505D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 72) != v2)
  {
    *(a1 + 72) = v2;
    sub_1AF3503CC(a1, a2);
  }
}

uint64_t sub_1AF350638(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

void sub_1AF350680(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 73) != v2)
  {
    *(a1 + 73) = v2;
    sub_1AF3503CC(a1, a2);
    v12 = *(a1 + 192);
    if (v12)
    {
      v13 = sub_1AF1C3FAC(v12, v11);
      if (v13)
      {
        v15 = sub_1AF1D00B0(v13, v14);
        sub_1AF133EE8(v15, *(a1 + 192));
      }
    }
  }
}

uint64_t sub_1AF350704(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 73);
}

void sub_1AF35074C(float32x4_t *a1, uint64_t a2, float32x4_t a3)
{
  if (!a1)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDFA408(v4, a2, v6, v7, v8, v9, v10, v11);
      a3 = v13;
    }
  }

  v12 = vceqq_f32(a1[9], a3);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) == 0)
  {
    a1[9] = a3;
    sub_1AF3503CC(a1, a2);
  }
}

__n128 sub_1AF3507C8(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[9];
}

void sub_1AF350810(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 112) != v2)
  {
    *(a1 + 112) = v2;
    sub_1AF3503CC(a1, a2);
  }
}

uint64_t sub_1AF35087C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

void sub_1AF3508C4(float32x4_t *a1, uint64_t a2, float32x4_t a3)
{
  if (!a1)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDFA408(v4, a2, v6, v7, v8, v9, v10, v11);
      a3 = v13;
    }
  }

  v12 = vceqq_f32(a1[10], a3);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) == 0)
  {
    a1[10] = a3;
    sub_1AF3503CC(a1, a2);
  }
}

__n128 sub_1AF350940(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[10];
}

void sub_1AF350988(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 96) != a2)
  {
    *(a1 + 96) = a2;
    sub_1AF3503CC(a1, a2);
  }
}

uint64_t sub_1AF3509F0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void sub_1AF350A38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 120) != v2)
  {
    *(a1 + 120) = v2;
    sub_1AF3503CC(a1, a2);
  }
}

uint64_t sub_1AF350AA4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

void sub_1AF350AEC(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 176) != a3)
  {
    *(a1 + 176) = a3;
    sub_1AF3503CC(a1, a2);
  }
}

float sub_1AF350B54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 176);
}

void sub_1AF350B9C(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 180) != a3)
  {
    *(a1 + 180) = a3;
    sub_1AF3503CC(a1, a2);
  }
}

float sub_1AF350C04(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 180);
}

void sub_1AF350C4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 104) != v2)
  {
    *(a1 + 104) = v2;
    sub_1AF3503CC(a1, a2);
  }
}

uint64_t sub_1AF350CB8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF350D00(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 64;
}

void sub_1AF350D48(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  if (!result && (v4 = sub_1AF0D5194(0, a2), result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  if (*(v3 + 192))
  {
    v11 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA480(v11);
    }
  }

LABEL_7:
  *(v3 + 192) = a2;
}

__n128 sub_1AF350DCC(_OWORD *a1, __int128 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA408(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  a1[6] = a2[2];
  a1[7] = v13;
  a1[4] = v11;
  a1[5] = v12;
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[7];
  a1[10] = a2[6];
  a1[11] = v16;
  a1[8] = v14;
  a1[9] = v15;
  sub_1AF3503CC(a1, a2);
  return result;
}

CFStringRef sub_1AF350E50(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF350428(a1, v4);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | type:%d>", v3, a1, v5);
}

__CFArray *sub_1AF350EB8(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 2;
  v77 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v4, @"name", @"fieldType");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 3;
  v77 = a1 + 72;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v8, @"name", @"active");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 3;
  v77 = a1 + 73;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v12, @"name", @"local");
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  v16 = MEMORY[0x1E695E9E8];
  v17 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 76;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v17, @"name", @"strength");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, v3, v16);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 80;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v21, @"name", @"dampening");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, v3, v16);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 84;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v25, @"name", @"noiseAmount");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, v3, v16);
  v78 = 0;
  valuePtr = 2;
  v77 = a1 + 88;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v32 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v29, @"name", @"noiseSeed");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = v16;
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v16);
  v78 = 0;
  valuePtr = 45;
  v77 = a1 + 96;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v34, @"name", @"categoryBitMask");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = MEMORY[0x1E695E9D8];
  v39 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v33);
  v78 = 0;
  valuePtr = 2;
  v77 = a1 + 104;
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v42 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v39, @"name", @"shape");
  CFDictionarySetValue(v39, @"type", v40);
  CFDictionarySetValue(v39, @"address", v42);
  CFDictionarySetValue(v39, @"semantic", v41);
  CFArrayAppendValue(Mutable, v39);
  CFRelease(v41);
  CFRelease(v39);
  CFRelease(v42);
  CFRelease(v40);
  v43 = v38;
  v44 = MEMORY[0x1E695E9E8];
  v45 = CFDictionaryCreateMutable(0, 4, v43, MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 2;
  v77 = a1 + 112;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v45, @"name", @"scope");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = MEMORY[0x1E695E9D8];
  v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v44);
  v78 = 0;
  valuePtr = 2;
  v77 = a1 + 120;
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v52 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v53 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v50, @"name", @"cullMode");
  CFDictionarySetValue(v50, @"type", v51);
  CFDictionarySetValue(v50, @"address", v53);
  CFDictionarySetValue(v50, @"semantic", v52);
  CFArrayAppendValue(Mutable, v50);
  CFRelease(v52);
  CFRelease(v50);
  CFRelease(v53);
  CFRelease(v51);
  v54 = CFDictionaryCreateMutable(0, 4, v49, MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 128;
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v56 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v57 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v54, @"name", @"falloffExponent");
  CFDictionarySetValue(v54, @"type", v55);
  CFDictionarySetValue(v54, @"address", v57);
  CFDictionarySetValue(v54, @"semantic", v56);
  CFArrayAppendValue(Mutable, v54);
  CFRelease(v56);
  CFRelease(v54);
  CFRelease(v57);
  CFRelease(v55);
  v58 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 8;
  v77 = a1 + 144;
  v59 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v61 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v58, @"name", @"halfExtent");
  CFDictionarySetValue(v58, @"type", v59);
  CFDictionarySetValue(v58, @"address", v61);
  CFDictionarySetValue(v58, @"semantic", v60);
  CFArrayAppendValue(Mutable, v58);
  CFRelease(v60);
  CFRelease(v58);
  CFRelease(v61);
  CFRelease(v59);
  v62 = MEMORY[0x1E695E9D8];
  v63 = MEMORY[0x1E695E9E8];
  v64 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 8;
  v77 = a1 + 160;
  v65 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v66 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v67 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v64, @"name", @"offset");
  CFDictionarySetValue(v64, @"type", v65);
  CFDictionarySetValue(v64, @"address", v67);
  CFDictionarySetValue(v64, @"semantic", v66);
  CFArrayAppendValue(Mutable, v64);
  CFRelease(v66);
  CFRelease(v64);
  CFRelease(v67);
  CFRelease(v65);
  v68 = CFDictionaryCreateMutable(0, 4, v62, v63);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 176;
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v70 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v71 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v68, @"name", @"smoothness");
  CFDictionarySetValue(v68, @"type", v69);
  CFDictionarySetValue(v68, @"address", v71);
  CFDictionarySetValue(v68, @"semantic", v70);
  CFArrayAppendValue(Mutable, v68);
  CFRelease(v70);
  CFRelease(v68);
  CFRelease(v71);
  CFRelease(v69);
  v72 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v78 = 0;
  valuePtr = 1;
  v77 = a1 + 180;
  v73 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v74 = CFNumberCreate(0, kCFNumberSInt32Type, &v78);
  v75 = CFNumberCreate(0, kCFNumberLongType, &v77);
  CFDictionarySetValue(v72, @"name", @"speed");
  CFDictionarySetValue(v72, @"type", v73);
  CFDictionarySetValue(v72, @"address", v75);
  CFDictionarySetValue(v72, @"semantic", v74);
  CFArrayAppendValue(Mutable, v72);
  CFRelease(v74);
  CFRelease(v72);
  CFRelease(v75);
  CFRelease(v73);
  return Mutable;
}

void sub_1AF351D84(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  sub_1AF3503CC(a1, v5);
}

uint64_t sub_1AF351DC8(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1AF353558(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

uint64_t sub_1AF35390C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF35396C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF353C74(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 176));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 184), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 176);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF3540E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF354284(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 184);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v9);
    }
  }
}

void sub_1AF3546A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF3547E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF3548B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF354960(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF354A98(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF354BD4(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF354C7C;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

uint64_t sub_1AF354E90(uint64_t a1)
{
  *&v4 = sub_1AF350DCC(*(*(a1 + 32) + 8), (*(a1 + 32) + 48)).n128_u64[0];
  v5 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v5, v2, v3, v4);
}

uint64_t sub_1AF355360(_OWORD *a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v7 = objc_msgSend__handle(a2, a2, a3);
  v8 = *a1;
  v14.i64[0] = *a1;
  v14.i64[1] = DWORD2(v8);
  if (a3)
  {
    v9 = objc_msgSend__handle(a3, v5, v6);
    v10 = a1[1];
    *&v13 = *(a1 + 2);
    *(&v13 + 1) = DWORD2(v10);
    v11 = sub_1AFDA7294(432, 16);
    sub_1AFD9BB58(v11, v7, v9, &v14, &v13);
  }

  else
  {
    v11 = sub_1AFDA7294(432, 16);
    sub_1AFD9BC84(v11, v7, &v14);
  }

  return v11;
}

__n128 sub_1AF355704(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__ballSocketConstraint(*(a1 + 48), a2, a3);
  if (v4)
  {
    result = *(a1 + 32);
    result.n128_u32[3] = 0;
    v4[23] = result;
  }

  return result;
}

__n128 sub_1AF3557E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__ballSocketConstraint(*(a1 + 48), a2, a3);
  if (v4)
  {
    result = *(a1 + 32);
    result.n128_u32[3] = 0;
    v4[24] = result;
  }

  return result;
}

uint64_t sub_1AF355B5C(uint64_t result, uint64_t a2, float a3)
{
  *result = &unk_1F24EC428;
  *(result + 64) = a3;
  *(result + 72) = a2;
  return result;
}

float32x4_t sub_1AF355B8C(float32x4_t *a1, float32x4_t *a2)
{
  v4 = sub_1AF1B9B04(a1[4].i64[1], a2);
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v13 = *(v4 + 48);
  v10.i32[3] = 0;
  v10.i32[0] = HIDWORD(*v4);
  v11.i32[0] = *(v4 + 8);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v8 = vmulq_f32(*v4, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v9.i32[0] = *v4;
  v9.i32[1] = v5.i32[0];
  v9.i64[1] = v6.u32[0];
  v10.i32[1] = HIDWORD(*(v4 + 16));
  v10.i32[2] = HIDWORD(*(v4 + 32));
  v11.i32[1] = *(v4 + 24);
  v11.i64[1] = *(v4 + 40);
  v12 = vmulq_f32(*v4, *v4);
  v13.i32[3] = 0;
  v14 = -1.0;
  if ((v8.f32[2] + vaddv_f32(*v8.f32)) >= 0.0)
  {
    v14 = 1.0;
  }

  _Q5 = vmulq_f32(v5, v5);
  v16 = vadd_f32(vzip1_s32(*v12.i8, *_Q5.i8), vzip2_s32(*v12.i8, *_Q5.i8));
  v17 = vextq_s8(v12, v12, 8uLL);
  *v17.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v17.f32, *&vextq_s8(_Q5, _Q5, 8uLL)), v16));
  v18 = vmulq_f32(v6, v6);
  v17.i32[2] = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
  v19 = vmulq_n_f32(v17, v14);
  a1[1] = v19;
  __asm { FMOV            V5.2S, #1.0 }

  *v19.f32 = vdiv_f32(*_Q5.i8, *v19.f32);
  v19.f32[2] = 1.0 / v19.f32[2];
  v19.i32[3] = 0;
  v24 = vmulq_f32(v11, v19);
  v25 = vmulq_f32(v10, v19);
  v26 = vmulq_f32(v9, v19);
  v27 = a1[3];
  v28 = vmulq_f32(v27, v24);
  v27.i32[3] = 0;
  v29 = vmulq_f32(v27, v26);
  v30 = vmulq_f32(v27, v25);
  v28.i32[3] = 0;
  *v30.f32 = vadd_f32(vpadd_f32(*v29.i8, *v30.f32), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
  *&v30.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v31 = vaddq_f32(v13, v30);
  v30.i32[0] = a1[4].i32[0];
  *a2 = v26;
  a2[1] = v25;
  result = vmulq_n_f32(v31, v30.f32[0]);
  a2[2] = v24;
  a2[3] = result;
  return result;
}

uint64_t sub_1AF355CF8(float32x4_t *a1, float32x4_t *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a1[3];
  v6 = vmulq_f32(v4, v5);
  v5.i32[3] = 0;
  v7 = vmulq_f32(*a2, v5);
  v8 = vmulq_f32(v3, v5);
  v6.i32[3] = 0;
  *v8.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.f32), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
  *&v8.u32[2] = vpadd_f32(vpadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)), 0);
  v9 = vtrn1q_s32(*a2, v3);
  v10.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
  v9.i64[1] = v4.u32[0];
  *v11.f32 = vzip2_s32(*a2->f32, *v3.f32);
  *&v11.u32[2] = vzip2_s32(*v4.f32, 0);
  v10.i64[1] = vextq_s8(v4, v4, 8uLL).u32[0];
  v12 = vsubq_f32(vmulq_n_f32(a2[3], 1.0 / a1[4].f32[0]), v8);
  v12.i32[3] = 1.0;
  v13 = a1[1];
  v26 = vmulq_lane_f32(v11, *v13.f32, 1);
  v27 = vmulq_n_f32(v9, v13.f32[0]);
  v30 = v27;
  v31 = v26;
  v28 = vmulq_laneq_f32(v10, v13, 2);
  v29 = v12;
  v32 = v28;
  v33 = v12;
  v14 = sub_1AF1B9A6C(a1[4].i64[1], a2);
  if (v14)
  {
    v22 = v14;
    if (sub_1AF1B9A6C(v14, v15))
    {
      v36 = *sub_1AF1B9B04(v22, v23);
      v37 = __invert_f4(v36);
      v24 = 0;
      v34[0] = v27;
      v34[1] = v26;
      v34[2] = v28;
      v34[3] = v29;
      do
      {
        v35[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], COERCE_FLOAT(v34[v24])), v37.columns[1], *&v34[v24], 1), v37.columns[2], v34[v24], 2), v37.columns[3], v34[v24], 3);
        ++v24;
      }

      while (v24 != 4);
      v30 = v35[0];
      v31 = v35[1];
      v32 = v35[2];
      v33 = v35[3];
    }
  }

  return sub_1AF1BA204(a1[4].i64[1], &v30, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AF356184(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 232) & 0xFFFFFFFC;
  if (a2 == 2)
  {
    v4 = v3 | 2;
    result = sub_1AFD73C3C(result, 4);
  }

  else if (a2)
  {
    v4 = *(result + 232) & 0xFFFFFFFC;
  }

  else
  {
    v4 = v3 | 1;
  }

  v5 = *(v2 + 208);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 == 21)
    {
      v7 = v4 | 8;
    }

    else
    {
      v7 = v4;
    }

    if (v6 == 22)
    {
      v4 |= 8u;
    }

    else
    {
      v4 = v7;
    }
  }

  *(v2 + 232) = v4;
  return result;
}

uint64_t sub_1AF3561F8(uint64_t result)
{
  if (*(result + 288) > 0.0)
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    result = *(result + 208);
    v6 = 0;
    if (result)
    {
      result = (*(*result + 24))(result, &v5, &v6);
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 284) = v4;
  }

  return result;
}

uint64_t sub_1AF356278(uint64_t a1, int8x16_t *a2, __n128 a3)
{
  v3 = a1;
  if (a1)
  {
    if (*a2->i32 != 0.0 || *&a2->i32[1] != 0.0 || *&a2->i32[2] != 0.0)
    {
      v6 = sub_1AF3563D4(a1, a2);
      v7.i64[0] = 0x8000000080000000;
      v7.i64[1] = 0x8000000080000000;
      v9 = veorq_s8(*a2, v7);
      sub_1AF35A1DC(v10, v6);
      v10[3] = v9;
      if (*(v3 + 8) == 31 && *(v3 + 16) == 2880154539)
      {
        sub_1AFD853D8(v3, 0, v10, 1);
        return v3;
      }

      v5 = sub_1AFDA7294(128, 16);
      sub_1AFD850E0(v5, 1);
      *(v5 + 16) = 2880154539;
      sub_1AFD8518C(v5, v10, v3, 0);
      return v5;
    }

    if (*(a1 + 8) == 31 && *(a1 + 16) == 2880154539)
    {
      v5 = *(*(a1 + 40) + 64);
      (*(*a1 + 8))(a1);
      return v5;
    }
  }

  return v3;
}

__int128 *sub_1AF3563D4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1EB6369E0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDFA4C4();
  }

  return &xmmword_1EB6369D0;
}

void sub_1AF35640C(float32x4_t *a1, uint64_t a2, __int128 *a3, __n128 *a4, float a5)
{
  v10 = *a4;
  v8 = sub_1AF356278(a2, &v10, v10);
  (*(a1->i64[0] + 24))(a1, v8);
  sub_1AF3561F8(a1);
  v9.n128_f32[0] = a5;
  sub_1AF3564D0(a1, v8, a3, v9);
  if (v8)
  {
    if ((v8[2] - 21) <= 1)
    {
      a1[14].i32[2] |= 8u;
    }
  }
}

void sub_1AF3564D0(float32x4_t *a1, _DWORD *a2, __int128 *a3, __n128 a4)
{
  v4 = a4.n128_f32[0];
  v11 = 0uLL;
  if (a3)
  {
    v6 = *a3;
    HIDWORD(v6) = 0;
    v11 = v6;
  }

  else if (a2 && (a1[14].i8[8] & 1) == 0)
  {
    v7 = a2[2];
    v8 = v7 > 0x1C;
    v9 = (1 << v7) & 0x10608000;
    if (v8 || v9 == 0)
    {
      (*(*a2 + 64))(a2, &v11, a4);
    }
  }

  sub_1AFDA66E8(a1, &v11, v4);
  sub_1AFDA6774(a1);
}

uint64_t sub_1AF35667C(uint64_t a1)
{
  result = *(*(a1 + 32) + 240);
  if (result)
  {
    sub_1AFD73C54(result, 1);
    sub_1AF356184(*(*(a1 + 32) + 240), *(a1 + 40));
    v3 = *(a1 + 32);
    if (*(v3 + 232))
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    sub_1AFD73C3C(*(v3 + 240), v4);
    v5 = *(*(a1 + 32) + 240);

    return sub_1AFD73C5C(v5, 0);
  }

  return result;
}

void sub_1AF3567E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF356800(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  if (v4)
  {
    if (*(v3 + 172) == 1)
    {
      v5 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v5 = 0;
    }

    a2.n128_u32[0] = *(a1 + 48);
    sub_1AF3564D0(v4, *(v4 + 208), v5, a2);
  }
}

void sub_1AF356920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF356938(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  if (v4)
  {
    if (*(v3 + 172) == 1)
    {
      v5 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v5 = 0;
    }

    a2.n128_u32[0] = *(v3 + 16);
    sub_1AF3564D0(v4, *(v4 + 208), v5, a2);
  }
}

void sub_1AF356A18(uint64_t result)
{
  v1 = *(*(result + 64) + 240);
  if (v1)
  {
    v3 = *(v1 + 536);
    if (v3)
    {
      v3[3] = *(result + 32);
      v4 = *(*(result + 64) + 240);
      *(v4 + 536) = v3;
      (*(*v3 + 16))(v3, v4 + 16);
      v5 = *(*(result + 64) + 240);
      v6 = v5[13].i64[0];
      v7 = *(result + 72);
      if (*(result + 76))
      {
        v8 = (result + 48);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(result + 32);
      v10.n128_u64[0] = *(result + 32);
      v10.n128_u64[1] = DWORD2(v9);
      sub_1AF35640C(v5, v6, v8, &v10, v7);
    }
  }
}

void sub_1AF356BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF356BD0(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  if (v4)
  {
    if (*(v3 + 172) == 1)
    {
      v5 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v5 = 0;
    }

    a2.n128_u32[0] = *(v3 + 16);
    sub_1AF3564D0(v4, *(v4 + 208), v5, a2);
  }
}

float sub_1AF356CA4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 532) = result;
  }

  return result;
}

uint64_t sub_1AF356D00(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a1);
  v5 = objc_msgSend_physicsBody(v2, v3, v4);

  return MEMORY[0x1EEE66B58](v5, sel_isResting, v6);
}

BOOL sub_1AF356D38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a1);
  v5 = objc_msgSend_physicsBody(v2, v3, v4);
  return objc_msgSend_type(v5, v6, v7) == 1;
}

uint64_t sub_1AF356DFC(uint64_t a1)
{
  result = *(*(a1 + 32) + 240);
  if (result)
  {
    sub_1AFD73C5C(result, 0);
    v3 = *(*(a1 + 32) + 240);
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    return sub_1AFD73C3C(v3, v4);
  }

  return result;
}

float sub_1AF356EE8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 252) = result;
  }

  return result;
}

float sub_1AF356F8C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 256) = result;
  }

  return result;
}

float sub_1AF357030(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 260) = result;
  }

  return result;
}

float32x2_t sub_1AF3570D4(uint64_t result, float32x2_t a2)
{
  if (*(*(result + 32) + 240))
  {
    a2.i32[0] = *(result + 40);
    return sub_1AFDA66C8(*(*(result + 32) + 240), a2, a2.f32[0]);
  }

  return a2;
}

float32x2_t sub_1AF357180(uint64_t result, float32x2_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 240))
  {
    a2.i32[0] = *(v2 + 64);
    return sub_1AFDA66C8(*(v2 + 240), a2, *(result + 40));
  }

  return a2;
}

double sub_1AF357230(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 524) = result;
  }

  return result;
}

double sub_1AF3572DC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 524) = result;
  }

  return result;
}

void sub_1AF3575D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (*(v4 + 240))
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = objc_msgSend__shapeHandle_(v5, a2, *(*(*(a1 + 80) + 8) + 24));
      objc_msgSend__setBtShape_(*(a1 + 64), v7, v6);
      v4 = *(a1 + 64);
    }

    v8 = *(v4 + 248);
    if (v8)
    {
      v9 = *(v4 + 240);
      v10 = objc_msgSend_btShape(v8, a2, a3);
      v11 = *(a1 + 88);
      if (*(a1 + 92))
      {
        v12 = (a1 + 32);
      }

      else
      {
        v12 = 0;
      }

      v15 = *(a1 + 48);
      sub_1AF35640C(v9, v10, v12, &v15, v11);
    }

    else
    {
      v13 = sub_1AF0D5194(0, a2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFA518();
      }
    }
  }

  v14 = *(*(*(a1 + 80) + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

__n128 sub_1AF3576BC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1AF3577A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    (*(*a1 + 184))(a1);
    (*(*a1 + 176))(a1, a2, a4, a3, a5);

    sub_1AFD73C5C(a2, 0);
  }

  else
  {
    v10 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AF0CE000, v10, OS_LOG_TYPE_DEFAULT, "Warning: cannot change collision bit masks without physics world", v11, 2u);
    }
  }
}

void sub_1AF357974(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 240);
  if (v3)
  {
    v4 = *(v3 + 200);
    if (v4)
    {
      if (*(v4 + 8) != *(a1 + 48))
      {
        v6 = objc_msgSend__handle(*(a1 + 40), a2, a3);
        v7 = *(*(a1 + 32) + 240);
        v9 = *(a1 + 48);
        v8 = *(a1 + 56);
        v10 = *(a1 + 64);

        sub_1AF3577A8(v6, v7, v8, v9, v10);
      }
    }
  }
}

void sub_1AF357AB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 240);
  if (v3)
  {
    v4 = *(v3 + 200);
    if (v4)
    {
      if (*(v4 + 16) != *(a1 + 48))
      {
        v6 = objc_msgSend__handle(*(a1 + 40), a2, a3);
        v7 = *(*(a1 + 32) + 240);
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        v10 = *(a1 + 64);

        sub_1AF3577A8(v6, v7, v8, v9, v10);
      }
    }
  }
}

void sub_1AF357BE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 240);
  if (v3)
  {
    v4 = *(v3 + 200);
    if (v4)
    {
      if (*(v4 + 24) != *(a1 + 48))
      {
        v6 = objc_msgSend__handle(*(a1 + 40), a2, a3);
        v7 = *(*(a1 + 32) + 240);
        v8 = *(a1 + 56);
        v9 = *(a1 + 64);
        v10 = *(a1 + 48);

        sub_1AF3577A8(v6, v7, v8, v9, v10);
      }
    }
  }
}

uint64_t sub_1AF357CE4(uint64_t result)
{
  v1 = *(*(result + 32) + 240);
  if (v1)
  {
    *(v1 + 288) = *(result + 40);
    return sub_1AF3561F8(*(*(result + 32) + 240));
  }

  return result;
}

__n128 sub_1AF357D94(__n128 *a1)
{
  v2 = *(a1[3].n128_u64[0] + 240);
  if (v2)
  {
    sub_1AFD73C5C(v2, 0);
    result = a1[2];
    result.n128_u32[3] = 0;
    *(*(a1[3].n128_u64[0] + 240) + 352) = result;
  }

  return result;
}

double sub_1AF357EDC(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 240);
  if (v3)
  {
    v5 = *(result + 48);
    *(v3 + 576) = v5 ^ 1;
    if (v5 == 1)
    {
      objc_msgSend_gravity(*(result + 40), a2, a3);
      v13 = v6;
      objc_msgSend_scale(*(result + 40), v7, v8);
      v9 = *(*(result + 32) + 240);
      v11 = vmulq_n_f32(v13, 1.0 / v10);
      v11.i32[3] = 0;
      v14 = v11;
    }

    else
    {
      v9 = *(*(result + 32) + 240);
      v14 = 0uLL;
    }

    *&v12 = sub_1AFDA68D8(v9, &v14).n128_u64[0];
  }

  return v12;
}

float32x4_t sub_1AF358004(float32x4_t *a1)
{
  v1 = *(a1[3].i64[0] + 240);
  if (v1)
  {
    result = vmulq_laneq_f32(a1[2], a1[2], 3);
    result.i32[3] = 0;
    v1[23] = result;
  }

  return result;
}

float32x4_t sub_1AF35811C(__n128 *a1)
{
  v1 = *(a1[3].n128_u64[0] + 240);
  if (v1)
  {
    result = a1[2];
    v2 = vmulq_n_f32(result, v1[24].f32[0]);
    result.i32[3] = 0;
    v1[25] = result;
    v2.i32[3] = 0;
    v1[40] = v2;
  }

  return result;
}

__n128 sub_1AF3581D4(__n128 *a1)
{
  v1 = *(a1[3].n128_u64[0] + 240);
  if (v1)
  {
    result = a1[2];
    result.n128_u32[3] = 0;
    v1[39] = result;
  }

  return result;
}

float32x4_t sub_1AF358280(float32x4_t *a1, uint64_t a2)
{
  v3 = *(a1[3].i64[0] + 240);
  if (v3)
  {
    sub_1AFD73C5C(v3, 0);
    v4 = *(a1[3].i64[0] + 240);
    v5 = a1[2];
    v5.i32[3] = 0;
    v6 = vmulq_f32(v4[25], v5);
    if (a1[3].i8[8] == 1)
    {
      v7 = vmulq_n_f32(v6, v4[24].f32[0]);
      v7.i32[3] = 0;
      result = vaddq_f32(v4[22], v7);
      v4[22] = result;
    }

    else
    {
      result = vaddq_f32(v4[29], v6);
      v4[29] = result;
    }
  }

  else
  {
    v9 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA590();
    }
  }

  return result;
}

float32x4_t sub_1AF3583A8(float32x4_t *a1, uint64_t a2)
{
  v3 = *(a1[4].i64[0] + 240);
  if (v3)
  {
    sub_1AFD73C5C(v3, 0);
    v4 = *(a1[4].i64[0] + 240);
    v5 = a1[2];
    v6 = a1[3];
    if (a1[4].i8[8] == 1)
    {
      v15.i64[0] = a1[2].i64[0];
      v15.i64[1] = v5.u32[2];
      v14.i64[0] = v6.i64[0];
      v14.i64[1] = v6.u32[2];
      result.i64[0] = sub_1AF3584A8(v4, &v15, &v14).u64[0];
    }

    else
    {
      v5.i32[3] = 0;
      *v9.f32 = vext_s8(*v6.f32, *&vextq_s8(v6, v6, 8uLL), 4uLL);
      v9.i64[1] = a1[3].i64[0];
      v10 = vmulq_f32(v5, v4[25]);
      v11 = vsubq_f32(vmulq_f32(v6, vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL)), vmulq_f32(v10, v9));
      v12 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
      v12.i32[3] = 0;
      result = vaddq_f32(v4[29], v10);
      v13 = vaddq_f32(v4[30], vmulq_f32(v4[39], v12));
      v4[29] = result;
      v4[30] = v13;
    }
  }

  else
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA590();
    }
  }

  return result;
}

float32x4_t sub_1AF3584A8(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  result.i32[0] = a1[24].i32[0];
  if (result.f32[0] != 0.0)
  {
    v4 = a1[25];
    v5 = vmulq_n_f32(vmulq_f32(*a2, v4), result.f32[0]);
    v5.i32[3] = 0;
    v6 = a1[21];
    a1[22] = vaddq_f32(a1[22], v5);
    v7 = vmulq_f32(v4, *a2);
    v8 = vsubq_f32(vmulq_f32(*a3, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)), vmulq_f32(v7, vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL)));
    v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
    v10 = v9;
    v10.i32[3] = 0;
    v11 = vmulq_f32(v6, v9);
    v12 = vmulq_f32(a1[19], v10);
    v13 = vmulq_f32(a1[20], v10);
    v11.i32[3] = 0;
    *v13.f32 = vadd_f32(vpadd_f32(*v12.i8, *v13.f32), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
    *&v13.u32[2] = vpadd_f32(vpadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)), 0);
    result = vaddq_f32(a1[23], vmulq_f32(a1[39], v13));
    a1[23] = result;
  }

  return result;
}

float32x4_t sub_1AF3585E8(float32x4_t *a1, uint64_t a2)
{
  v3 = *(a1[3].i64[0] + 240);
  if (v3)
  {
    sub_1AFD73C5C(v3, 0);
    v4 = vmulq_laneq_f32(a1[2], a1[2], 3);
    v4.i32[3] = 0;
    v5 = *(a1[3].i64[0] + 240);
    if (a1[3].i8[8] == 1)
    {
      v6 = vmulq_f32(v5[19], v4);
      v7 = vmulq_f32(v5[20], v4);
      v8 = vmulq_f32(v5[21], v4);
      v8.i32[3] = 0;
      *v6.f32 = vadd_f32(vpadd_f32(*v6.f32, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
      *&v6.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
      result = vaddq_f32(v5[23], vmulq_f32(v6, v5[39]));
      v5[23] = result;
    }

    else
    {
      result = vaddq_f32(v5[30], vmulq_f32(v5[39], v4));
      v5[30] = result;
    }
  }

  else
  {
    v10 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA590();
    }
  }

  return result;
}

void sub_1AF358758(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 240);
  if (v2)
  {
    *(v2 + 464) = 0u;
    *(v2 + 480) = 0u;
    *(*(*(result + 32) + 240) + 352) = 0u;
    *(*(*(result + 32) + 240) + 368) = 0u;
  }

  else
  {
    v3 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA5CC();
    }
  }
}

uint64_t sub_1AF358848(uint64_t a1)
{
  result = *(*(a1 + 32) + 240);
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      return sub_1AFD73C3C(result, 3);
    }

    else
    {
      return sub_1AFD73C5C(result, 0);
    }
  }

  return result;
}

uint64_t sub_1AF3593B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  sub_1AF1BBD7C(v4, 0);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v5, sel_removePhysicsBody_handle_, v6);
}

uint64_t sub_1AF3595B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_world(*(a1 + 64), a2, a3);
  v7 = objc_msgSend_physicsWorld(v4, v5, v6);
  sub_1AF1BBD7C(*(a1 + 80), *(a1 + 72));
  v9 = *(a1 + 88);
  if (v9 && !*(v9 + 208))
  {
    v10 = objc_msgSend__shapeHandle_(*(*(a1 + 72) + 48), v8, *(a1 + 80));
    objc_msgSend__setBtShape_(*(a1 + 72), v11, v10);
    v14 = objc_msgSend_btShape(v10, v12, v13);
    v15 = *(a1 + 88);
    v16 = *(a1 + 120);
    if (*(a1 + 124))
    {
      v17 = (a1 + 32);
    }

    else
    {
      v17 = 0;
    }

    v41 = *(a1 + 48);
    sub_1AF35640C(v15, v14, v17, &v41, v16);
    v18 = *(*(a1 + 72) + 48);
    objc_msgSend_worldTransform(*(a1 + 64), v19, v20);
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
    v27 = vmulq_f32(v23, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
    v28 = (v27.f32[2] + vaddv_f32(*v27.f32)) < 0.0;
    v29 = 1.0;
    if (v28)
    {
      v29 = -1.0;
    }

    v30 = vmulq_f32(v23, v23);
    v31 = vmulq_f32(v24, v24);
    v32 = vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8));
    v33 = vextq_s8(v30, v30, 8uLL);
    *v33.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v33.f32, *&vextq_s8(v31, v31, 8uLL)), v32));
    v34 = vmulq_f32(v25, v25);
    v33.i32[2] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
    objc_msgSend__setNodeScale_(v18, v21, v22, *vmulq_n_f32(v33, v29).i64);
  }

  v35 = *(a1 + 72);
  v36 = *(a1 + 80);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);

  return objc_msgSend_addPhysicsBody_nodeRef_colGroup_colMask_colTest_(v7, v8, v35, v36, v37, v38, v39);
}

float sub_1AF35A1DC(uint64_t a1, float32x4_t *a2)
{
  v2 = vmulq_f32(*a2, *a2);
  v2.i64[0] = vpaddq_f32(v2, v2).u64[0];
  v2.f32[0] = 2.0 / vpadd_f32(*v2.f32, *v2.f32).f32[0];
  v3 = v2.f32[0] * COERCE_FLOAT(*a2);
  v4 = vmuls_lane_f32(v2.f32[0], *a2->f32, 1);
  v2.f32[0] = vmuls_lane_f32(v2.f32[0], *a2, 2);
  v5 = vmuls_lane_f32(v3, *a2, 3);
  v6 = vmuls_lane_f32(v4, *a2, 3);
  v7 = vmuls_lane_f32(v2.f32[0], *a2, 3);
  v8 = v3 * COERCE_FLOAT(*a2);
  v9 = v4 * COERCE_FLOAT(*a2);
  v10 = v2.f32[0] * COERCE_FLOAT(*a2);
  v11 = vmuls_lane_f32(v4, *a2->f32, 1);
  v12 = vmuls_lane_f32(v2.f32[0], *a2->f32, 1);
  v13 = vmuls_lane_f32(v2.f32[0], *a2, 2);
  *a1 = 1.0 - (v11 + v13);
  *(a1 + 4) = v9 - v7;
  *(a1 + 8) = v10 + v6;
  *(a1 + 12) = 0;
  *(a1 + 16) = v9 + v7;
  *(a1 + 20) = 1.0 - (v8 + v13);
  *(a1 + 24) = v12 - v5;
  *(a1 + 28) = 0;
  *(a1 + 32) = v10 - v6;
  *(a1 + 36) = v12 + v5;
  result = 1.0 - (v8 + v11);
  *(a1 + 40) = result;
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_1AF35A280(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v7 = objc_msgSend__handle(a2, a2, a3);
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  *&v30 = vzip1_s32(*a1, *v9.i8);
  *(&v30 + 1) = v10;
  v31 = vzip2_s32(*v8.i8, *v9.i8);
  v32 = DWORD1(v10);
  v33 = 0;
  v34 = vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL));
  v35 = DWORD2(v10);
  v36 = 0;
  v37 = v11;
  v38 = DWORD2(v11);
  v39 = 0;
  if (a3)
  {
    v12 = objc_msgSend__handle(a3, v5, v6);
    v13 = *(a1 + 64);
    v14 = *(a1 + 80);
    v15 = *(a1 + 96);
    v16 = *(a1 + 112);
    *&v20 = vzip1_s32(*v13.i8, *v14.i8);
    *(&v20 + 1) = v15;
    v21 = vzip2_s32(*v13.i8, *v14.i8);
    v22 = DWORD1(v15);
    v23 = 0;
    v24 = vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL));
    v25 = DWORD2(v15);
    v26 = 0;
    v27 = v16;
    v28 = DWORD2(v16);
    v29 = 0;
    v17 = sub_1AFDA7294(704, 16);
    sub_1AFD968BC(v17, v7, v12, &v30, &v20);
    v18 = *(a1 + 136);
    *(v17 + 512) = *(a1 + 128);
    *(v17 + 520) = v18;
    *(v17 + 496) = 0x3E99999A3F000000;
    *(v17 + 504) = 1065353216;
    *(v17 + 592) = 1;
  }

  else
  {
    v17 = sub_1AFDA7294(704, 16);
    sub_1AFD96964(v17, v7, &v30);
  }

  return v17;
}

void *sub_1AF35A81C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__twistHandle(*(a1 + 96), a2, a3);
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v25 = vzip1_s32(*v5.i8, *v6.i8);
    v26 = v7;
    v27 = 0;
    v28 = vzip2_s32(*v5.i8, *v6.i8);
    v29 = DWORD1(v7);
    v30 = 0;
    v31 = vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL));
    v32 = DWORD2(v7);
    v33 = 0;
    v34 = v8;
    v35 = DWORD2(v8);
    v36 = 0;
    v9 = *(*(a1 + 96) + 112);
    v10 = *(*(a1 + 96) + 128);
    v11 = *(*(a1 + 96) + 144);
    v12 = *(*(a1 + 96) + 160);
    v13 = vzip1_s32(*v9.i8, *v10.i8);
    v14 = v11;
    v15 = 0;
    v16 = vzip2_s32(*v9.i8, *v10.i8);
    v17 = DWORD1(v11);
    v18 = 0;
    v19 = vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL));
    v20 = DWORD2(v11);
    v21 = 0;
    v23 = DWORD2(v12);
    v22 = v12;
    v24 = 0;
    return (*(*result + 88))(result, &v25, &v13);
  }

  return result;
}

void *sub_1AF35AA04(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__twistHandle(*(a1 + 96), a2, a3);
  if (result)
  {
    v5 = *(*(a1 + 96) + 48);
    v6 = *(*(a1 + 96) + 64);
    v7 = *(*(a1 + 96) + 80);
    v8 = *(*(a1 + 96) + 96);
    v25 = vzip1_s32(*v5.i8, *v6.i8);
    v26 = v7;
    v27 = 0;
    v28 = vzip2_s32(*v5.i8, *v6.i8);
    v29 = DWORD1(v7);
    v30 = 0;
    v31 = vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL));
    v32 = DWORD2(v7);
    v33 = 0;
    v34 = v8;
    v35 = DWORD2(v8);
    v36 = 0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
    v13 = vzip1_s32(*v9.i8, *v10.i8);
    v14 = v11;
    v15 = 0;
    v16 = vzip2_s32(*v9.i8, *v10.i8);
    v17 = DWORD1(v11);
    v18 = 0;
    v19 = vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL));
    v20 = DWORD2(v11);
    v21 = 0;
    v23 = DWORD2(v12);
    v22 = v12;
    v24 = 0;
    return (*(*result + 88))(result, &v25, &v13);
  }

  return result;
}

double sub_1AF35ABDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__twistHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 32) + 48;
    *(v4 + 512) = *(a1 + 40);
    *(v4 + 516) = *(v6 + 132);
    result = 0.000000381469873;
    *(v4 + 496) = 0x3E99999A3F000000;
    *(v4 + 504) = 1065353216;
  }

  return result;
}

double sub_1AF35ACF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__twistHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 184);
    *(v4 + 512) = *(*(a1 + 32) + 176);
    *(v4 + 516) = v6;
    *(v4 + 520) = v7;
    result = 0.000000381469873;
    *(v4 + 496) = 0x3E99999A3F000000;
    *(v4 + 504) = 1065353216;
  }

  return result;
}

double sub_1AF35AE08(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__twistHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 40);
    *(v4 + 512) = *(*(a1 + 32) + 176);
    *(v4 + 520) = v6;
    result = 0.000000381469873;
    *(v4 + 496) = 0x3E99999A3F000000;
    *(v4 + 504) = 1065353216;
  }

  return result;
}

float sub_1AF35B96C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__hingeHandle(*(a1 + 48), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7.i64[0] = *(a1 + 32);
    v7.i64[1] = DWORD2(v6);
    return sub_1AF35B9C0(v4, &v7);
  }

  return result;
}

float sub_1AF35B9C0(uint64_t a1, float32x4_t *a2)
{
  v2 = a2->f32[2];
  v3 = a2->f32[1];
  if (fabsf(v2) <= 0.70711)
  {
    v12 = (v3 * v3) + (a2->f32[0] * a2->f32[0]);
    v13 = 1.0 / sqrtf(v12);
    v9.i64[1] = 0;
    v9.f32[0] = -(v3 * v13);
    v9.f32[1] = a2->f32[0] * v13;
    v8 = -(v2 * v9.f32[1]);
    v10 = v2 * v9.f32[0];
    v11 = v12 * v13;
  }

  else
  {
    v4 = (v2 * v2) + (v3 * v3);
    v5 = 1.0 / sqrtf(v4);
    v6 = -(v2 * v5);
    *&v7 = v3 * v5;
    v8 = v4 * v5;
    v9.i32[0] = 0;
    v9.f32[1] = v6;
    v9.i64[1] = v7;
    v10 = -(a2->f32[0] * *&v7);
    v11 = a2->f32[0] * v6;
  }

  v14 = *(a1 + 704);
  *(a1 + 656) = v9.i32[0];
  *(a1 + 660) = v8;
  *(a1 + 664) = a2->i32[0];
  HIDWORD(v15) = v9.i32[1];
  LODWORD(v15) = 0;
  *(a1 + 668) = v15;
  *(a1 + 676) = v10;
  *(a1 + 680) = a2->i32[1];
  *(a1 + 684) = 0;
  *(a1 + 688) = v9.i32[2];
  *(a1 + 692) = v11;
  *(a1 + 696) = a2->i32[2];
  *(a1 + 700) = 0;
  v16 = *(a1 + 40);
  v17 = *a2;
  v18 = v16[1];
  v19 = v16[2];
  v20 = vmulq_f32(v18, *a2);
  v21 = vmulq_f32(*a2, v19);
  v22 = v16[3];
  v23 = vmulq_f32(*a2, v22);
  v23.i32[3] = 0;
  v24 = vadd_f32(vpadd_f32(*v20.i8, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  v25 = vpadd_f32(vpadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)), 0);
  *v26.f32 = vext_s8(v24, v25, 4uLL);
  *&v26.u32[2] = v24;
  *v27.f32 = v24;
  *&v27.u32[2] = v25;
  v28 = vmulq_f32(*a2, v27);
  v29 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0];
  if (v29 >= -1.0)
  {
    v39 = vsubq_f32(vmulq_f32(v17, v26), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v27));
    v39.i32[3] = sqrtf((v29 + 1.0) + (v29 + 1.0));
    v40.i32[1] = 1056964608;
    v40.i64[1] = 0x3F0000003F000000;
    *v40.i32 = 1.0 / v39.f32[3];
    v41 = vzip1q_s32(v40, v40);
    v41.f32[2] = 1.0 / v39.f32[3];
    v42 = vmulq_f32(v39, v41);
    v38 = vzip2q_s32(vzip1q_s32(v42, vextq_s8(v42, v42, 0xCuLL)), v42);
  }

  else
  {
    LODWORD(v30) = HIDWORD(a2->i64[0]);
    v31 = fabsf(v17.f32[2]);
    v32 = 1.0 / sqrtf((v30 * v30) + (v17.f32[0] * v17.f32[0]));
    v33 = -(v17.f32[1] * v32);
    v34 = v17.f32[0] * v32;
    v35 = v33;
    v17.f32[0] = 1.0 / sqrtf((v17.f32[2] * v17.f32[2]) + (v30 * v30));
    v36 = v17.f32[1] * v17.f32[0];
    if (v31 <= 0.70711)
    {
      v37 = v34;
    }

    else
    {
      v35 = 0.0;
      v37 = -(v17.f32[2] * v17.f32[0]);
    }

    if (v31 <= 0.70711)
    {
      v36 = 0.0;
    }

    v38.i64[0] = __PAIR64__(LODWORD(v37), LODWORD(v35));
    v38.i64[1] = LODWORD(v36);
  }

  v43 = vextq_s8(v38, v38, 8uLL).u64[0];
  v44 = vext_s8(v43, *v38.i8, 4uLL);
  *v45.f32 = vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *v9.f32);
  *v46.f32 = vzip1_s32(v43, *v38.i8);
  *v47.f32 = vext_s8(*v38.i8, v43, 4uLL);
  v48.i64[0] = vextq_s8(v9, v9, 4uLL).u64[0];
  *v49.f32 = vdup_laneq_s32(v38, 3);
  v46.i64[1] = v47.i64[0];
  *&v48.u32[2] = vrev64_s32(*v45.f32);
  v49.i64[1] = v38.i64[0];
  *&v9.u32[2] = vdup_lane_s32(*v9.f32, 1);
  v45.i64[1] = v45.i64[0];
  *&v47.u32[2] = v44;
  v50 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v9, v49), vmulq_f32(v45, v47)), xmmword_1AFE47BE0), vmulq_f32(v48, v46));
  v51 = veorq_s8(v38, xmmword_1AFE47BF0);
  v45.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
  *v46.f32 = vzip1_s32(*v45.f32, *v51.f32);
  *v48.f32 = vext_s8(*v45.f32, *v51.f32, 4uLL);
  v52.i64[0] = vextq_s8(v50, v50, 4uLL).u64[0];
  *v45.f32 = vext_s8(*v51.f32, *v45.f32, 4uLL);
  *_Q25.f32 = vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *v50.f32);
  _Q25.i64[1] = v52.i64[0];
  *&v45.u32[2] = vrev64_s32(*v46.f32);
  v54 = vmulq_laneq_f32(v51, v50, 3);
  v55 = vtrn2q_s32(v51, v51);
  v52.i64[1] = _Q25.i64[0];
  v46.i64[1] = v48.i64[0];
  v56 = vaddq_f32(vsubq_f32(v54, vmulq_f32(v45, _Q25)), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v55, v55, 8uLL), vdupq_lane_s64(v50.i64[0], 0)), vmulq_f32(v46, v52)), xmmword_1AFE47BE0));
  v55.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
  v56.i32[3] = 0;
  v57 = *(a1 + 48);
  v58 = *(v57 + 16);
  v59 = *(v57 + 32);
  v60 = *(v57 + 48);
  v61 = vtrn1q_s32(v58, v59);
  *v54.f32 = vzip2_s32(*v60.i8, 0);
  _Q25.i32[0] = vextq_s8(v60, v60, 8uLL).u32[0];
  v62.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
  v61.i64[1] = v60.u32[0];
  v60.i64[0] = 0x8000000080000000;
  v60.i64[1] = 0x8000000080000000;
  v63 = veorq_s8(*(v57 + 64), v60);
  _Q21 = vmulq_f32(v61, v63);
  *v58.f32 = vzip2_s32(*v58.f32, *v59.i8);
  v58.i64[1] = v54.i64[0];
  _Q19 = vmulq_f32(v58, v63);
  *_Q19.f32 = vadd_f32(vpadd_f32(*_Q21.i8, *_Q19.f32), vzip1_s32(*&vextq_s8(_Q21, _Q21, 8uLL), *&vextq_s8(_Q19, _Q19, 8uLL)));
  v62.i64[1] = _Q25.u32[0];
  _Q20 = vmulq_f32(v62, v63);
  _Q20.i32[3] = 0;
  v67 = vmulq_f32(v14, v18);
  v68 = vmulq_f32(v14, v19);
  v69 = vmulq_f32(v14, v22);
  v69.i32[3] = 0;
  *v67.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL)), vpadd_f32(*v67.f32, *v68.i8));
  *&v67.u32[2] = vpadd_f32(vpadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)), 0);
  v70 = vaddq_f32(v67, v16[4]);
  v71 = vmulq_f32(v61, v70);
  _Q4 = vmulq_f32(v58, v70);
  v73 = vmulq_f32(v62, v70);
  v73.i32[3] = 0;
  *v71.f32 = vadd_f32(vpadd_f32(*v71.f32, *_Q4.i8), vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(_Q4, _Q4, 8uLL)));
  *&v71.u32[2] = vpadd_f32(vpadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL)), 0);
  *&_Q19.u32[2] = vpadd_f32(vpadd_f32(*_Q20.i8, *&vextq_s8(_Q20, _Q20, 8uLL)), 0);
  _Q0 = vsubq_f32(vmulq_f32(v27, vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL)), vmulq_f32(v26, v56));
  *(a1 + 768) = vaddq_f32(_Q19, v71);
  *v71.f32 = vext_s8(*v56.f32, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL);
  v56.i32[1] = _Q0.i32[1];
  *(a1 + 720) = v56.i64[0];
  *(a1 + 728) = v24.i32[0];
  *(a1 + 732) = 0;
  *(a1 + 736) = v71.i64[0];
  *(a1 + 744) = v24.i32[1];
  *(a1 + 748) = 0;
  *(a1 + 752) = vzip1_s32(*v55.i8, *_Q0.i8);
  *(a1 + 760) = v25.i32[0];
  *(a1 + 764) = 0;
  _S1 = *(v57 + 52);
  _Q0.i32[0] = *(v57 + 56);
  v76 = *(v57 + 36);
  _Q4.i32[0] = *(v57 + 40);
  _Q19.i32[0] = *(v57 + 48);
  _Q20.i32[0] = *(v57 + 32);
  _Q5 = *(v57 + 16);
  v79 = *(a1 + 720);
  v78 = *(a1 + 736);
  v80 = *(a1 + 752);
  v80.i32[3] = 0;
  v58.f32[0] = (v76 * *_Q0.i32) - (*_Q4.i32 * _S1);
  v54.i32[3] = 0;
  v54.f32[0] = v58.f32[0];
  v54.f32[1] = (*_Q4.i32 * _Q19.f32[0]) - (*_Q20.i32 * *_Q0.i32);
  v54.f32[2] = (*_Q20.i32 * _S1) - (v76 * _Q19.f32[0]);
  v81 = vmulq_f32(_Q5, v54);
  *v81.i32 = 1.0 / vadd_f32(*&vextq_s8(v81, v81, 8uLL), vpadd_f32(*v81.i8, *v81.i8)).f32[0];
  v78.i32[3] = 0;
  __asm { FMLA            S25, S19, V5.S[1] }

  v79.i32[3] = 0;
  v86 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, ((*_Q20.i32 * _S1) - (v76 * _Q19.f32[0])) * *v81.i32), v78, _Q25.f32[0] * *v81.i32), v80, ((_Q5.f32[0] * v76) - (COERCE_FLOAT(HIDWORD(*(v57 + 16))) * *_Q20.i32)) * *v81.i32);
  __asm { FMLA            S21, S20, V5.S[2] }

  v87 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, ((*_Q4.i32 * _Q19.f32[0]) - (*_Q20.i32 * *_Q0.i32)) * *v81.i32), v78, ((_Q5.f32[0] * *_Q0.i32) - (COERCE_FLOAT(*(v57 + 24)) * _Q19.f32[0])) * *v81.i32), v80, *_Q21.i32 * *v81.i32);
  __asm
  {
    FMLA            S7, S4, V5.S[1]
    FMLA            S0, S1, V5.S[2]
  }

  result = *_Q0.i32 * *v81.i32;
  *(a1 + 720) = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, v58.f32[0] * *v81.i32), v78, result), v80, _S7 * *v81.i32);
  *(a1 + 736) = v87;
  *(a1 + 752) = v86;
  return result;
}

float sub_1AF35BF70(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__hingeHandle(*(a1 + 48), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7.i64[0] = *(a1 + 32);
    v7.i64[1] = DWORD2(v6);
    return sub_1AF35B9C0(v4, &v7);
  }

  return result;
}

_OWORD *sub_1AF35C068(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__hingeHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result[42];
    v11[0] = result[41];
    v11[1] = v5;
    v6 = result[43];
    v7 = result[46];
    v10[0] = result[45];
    v10[1] = v7;
    v8 = result[48];
    v10[2] = result[47];
    v10[3] = v8;
    v9 = *(a1 + 32);
    HIDWORD(v9) = 0;
    v11[2] = v6;
    v11[3] = v9;
    return sub_1AFD9B7F8(result, v11, v10);
  }

  return result;
}

_OWORD *sub_1AF35C17C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__hingeHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result[42];
    v10[0] = result[41];
    v10[1] = v5;
    v6 = result[44];
    v10[2] = result[43];
    v10[3] = v6;
    v7 = result[46];
    v9[0] = result[45];
    v9[1] = v7;
    v8 = *(a1 + 32);
    HIDWORD(v8) = 0;
    v9[2] = result[47];
    v9[3] = v8;
    return sub_1AFD9B7F8(result, v10, v9);
  }

  return result;
}

uint64_t sub_1AF35CE98(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (v2 == 21)
  {
    v7 = *(result + 80);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v2 != 22)
  {
    if (v2 == 31)
    {
      v3 = *(result + 28);
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = 96 * v3;
        do
        {
          v6 = v1[5] + v4;
          if (*(v6 + 88))
          {
            sub_1AF35CE98(*(v6 + 64));
          }

          v4 += 96;
        }

        while (v5 != v4);
      }
    }

    goto LABEL_14;
  }

  v7 = *(*(result + 48) + 80);
  if (v7)
  {
LABEL_13:
    (*(*v7 + 8))(v7);
  }

LABEL_14:
  v8 = *(*v1 + 8);

  return v8(v1);
}

VFXBtShapeWrapper *sub_1AF35D594(void *a1, uint64_t a2)
{
  v4 = [VFXBtShapeWrapper alloc];
  v5 = sub_1AF35EE40(a1, a2);
  v7 = objc_msgSend_initWithShape_(v4, v6, v5);

  return v7;
}

VFXBtShapeWrapper *sub_1AF35D5F8(void *a1, uint64_t a2, int a3)
{
  if (!a3 || (v23 = 0, v24 = &v23, v25 = 0x2020000000, v26 = 0, v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = sub_1AF35ECC4, v22[3] = &unk_1E7A7D960, v22[4] = &v23, sub_1AF1B94AC(a1, v22), v5 = *(v24 + 6), _Block_object_dispose(&v23, 8), v5 < 2))
  {
    v11 = [VFXBtShapeWrapper alloc];
    v12 = sub_1AF35EA90(a1, a2);
    v10 = objc_msgSend_initWithShape_(v11, v13, v12);
    return v10;
  }

  v6 = sub_1AFDA7294(128, 16);
  sub_1AFD850E0(v6, 1);
  v27 = *sub_1AF1B9B04(a1, v7);
  v28 = __invert_f4(v27);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF35ED1C;
  v18[3] = &unk_1E7A7F868;
  v19 = v28;
  v20 = a2;
  v21 = v6;
  sub_1AF1B94AC(a1, v18);
  if (v6[7])
  {
    sub_1AFD85B6C(v6);
    v8 = [VFXBtShapeWrapper alloc];
    v10 = objc_msgSend_initWithShape_(v8, v9, v6);
    return v10;
  }

  v15 = (*(*v6 + 8))(v6);
  v17 = sub_1AF0D5194(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFA96C();
  }

  return 0;
}

VFXBtShapeWrapper *sub_1AF35D808(void *a1, uint64_t a2)
{
  v4 = sub_1AFDA7294(128, 16);
  sub_1AFD850E0(v4, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF35E99C;
  v12[3] = &unk_1E7A7F848;
  v12[4] = a2;
  v12[5] = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v5, v12);
  if (v4[7])
  {
    sub_1AFD85B6C(v4);
    v6 = [VFXBtShapeWrapper alloc];
    return objc_msgSend_initWithShape_(v6, v7, v4);
  }

  else
  {
    v9 = (*(*v4 + 8))(v4);
    v11 = sub_1AF0D5194(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA96C();
    }

    return 0;
  }
}

BOOL sub_1AF35DFF0(uint64_t a1, const UInt8 **a2, _DWORD *a3, int *a4, int *a5)
{
  v10 = sub_1AF1A7034(a1, a2);
  if (v10)
  {
    v12 = sub_1AF0D5194(v10, v11);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *v23 = 0;
    _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_INFO, "Info: Non triangle list element type not yet supported in physics shape generation", v23, 2u);
    return 0;
  }

  v24 = 0;
  v14 = sub_1AF1A73C0(a1, &v24);
  if (v14)
  {
    v16 = v14;
    v17 = sub_1AF1A70CC(a1, v15);
    BytePtr = CFDataGetBytePtr(v16);
    *a2 = BytePtr;
    v20 = v24;
    *a3 = 3 * v24;
    *a4 = v17 / 3;
    switch(v20)
    {
      case 1:
        v21 = 5;
        goto LABEL_11;
      case 4:
        v21 = 2;
        goto LABEL_11;
      case 2:
        v21 = 3;
LABEL_11:
        *a5 = v21;
        return 1;
    }

    v22 = sub_1AF0D5194(BytePtr, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA9A0(v22);
    }
  }

  return 0;
}

uint64_t sub_1AF35E134(uint64_t a1)
{
  v2 = sub_1AFDA7294(112, 16);
  *(v2 + 16) = xmmword_1AFE208C0;
  *v2 = &unk_1F25723D0;
  v3 = 1;
  *(v2 + 56) = 1;
  *(v2 + 48) = 0;
  *(v2 + 36) = 0;
  *(v2 + 40) = 0;
  *(v2 + 72) = 0;
  v4 = sub_1AF1A4604(a1, 0, 0, 1);
  v6 = sub_1AF1AF080(v4, v5);
  v7 = sub_1AF121B74(v6);
  v9 = sub_1AF1AE6EC(v4, v8);
  v11 = sub_1AF1AE6E8(v4, v10);
  BytePtr = CFDataGetBytePtr(v11);
  if (sub_1AF1CAED8(v6) != 6)
  {
    sub_1AF1CAED8(v6);
    v3 = 0;
  }

  v14 = sub_1AF1A3CCC(a1, v13);
  if (v14 >= 1)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      v17 = sub_1AF1A3D1C(a1, i, 1);
      v23 = BytePtr;
      v24 = v7;
      v25 = 2;
      v26 = v3;
      v22[1] = v9;
      v19 = 0;
      if (sub_1AF35DFF0(v17, &v21, v22, &v20, &v19))
      {
        sub_1AF35E2A4(v2, &v20, v19);
      }
    }
  }

  return v2;
}

__n128 sub_1AF35E2A4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 36);
  if (v6 == *(a1 + 40))
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = sub_1AFDA7294(48 * v7, 16);
        v6 = *(a1 + 36);
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        v10 = 48 * v6;
        do
        {
          v11 = (v8 + v9);
          v12 = (*(a1 + 48) + v9);
          v13 = *v12;
          v14 = v12[2];
          v11[1] = v12[1];
          v11[2] = v14;
          *v11 = v13;
          v9 += 48;
        }

        while (v10 != v9);
      }

      v15 = *(a1 + 48);
      if (v15 && *(a1 + 56) == 1)
      {
        sub_1AFDA72A0(v15);
      }

      *(a1 + 56) = 1;
      *(a1 + 48) = v8;
      *(a1 + 40) = v7;
      v6 = *(a1 + 36);
    }
  }

  v16 = *(a1 + 48) + 48 * v6;
  result = *a2;
  v18 = *(a2 + 32);
  *(v16 + 16) = *(a2 + 16);
  *(v16 + 32) = v18;
  *v16 = result;
  LODWORD(v16) = *(a1 + 36);
  *(a1 + 36) = v16 + 1;
  *(*(a1 + 48) + 48 * v16 + 36) = a3;
  return result;
}

uint64_t sub_1AF35E3BC(const void *a1)
{
  v2 = CFGetTypeID(a1);
  v4 = sub_1AF1A2D3C(v2, v3);
  if (v2 == v4)
  {

    return sub_1AF35E134(a1);
  }

  else
  {
    if (v2 != sub_1AF1B846C(v4, v5))
    {
      return 0;
    }

    v7 = sub_1AFDA7294(96, 16);
    sub_1AF35FC20(v7, a1);
    return v7;
  }
}

uint64_t sub_1AF35E454(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = sub_1AF35E3BC(a1);
  if (!v2)
  {
    return v2;
  }

  v34 = a1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = v5;
    v8 = v4;
    if (i >= (*(*v2 + 56))(v2))
    {
      break;
    }

    v39 = 0;
    *v40 = 0;
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v9 = (*(*v2 + 32))(v2, v40, &v39 + 4, &v39, &v38, &v37, &v36 + 4, &v36, &v35, i);
    v4 += HIDWORD(v39);
    if ((v39 & 0x8000000000000000) == 0 && HIDWORD(v39) && v3 < v4)
    {
      if (v4)
      {
        v9 = sub_1AFDA7294(16 * v4, 16);
        v5 = v9;
      }

      else
      {
        v5 = 0;
      }

      if (v8 >= 1)
      {
        v11 = v8;
        v12 = v5;
        v13 = v7;
        do
        {
          v14 = *v13++;
          *v12++ = v14;
          --v11;
        }

        while (v11);
LABEL_16:
        sub_1AFDA72A0(v7);
        v3 = v4;
        goto LABEL_17;
      }

      if (v7)
      {
        goto LABEL_16;
      }

      v3 = v4;
    }

LABEL_17:
    if (v39)
    {
      if ((byte_1EB658E71 & 1) == 0)
      {
        byte_1EB658E71 = 1;
        v15 = sub_1AF0D5194(v9, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v42 = v39;
          _os_log_error_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_ERROR, "Error: vertex format not supported for physics shape creation (%d)", buf, 8u);
        }
      }
    }

    else
    {
      v16 = HIDWORD(v39);
      if (SHIDWORD(v39) >= 1)
      {
        v17 = v38;
        v18 = &v5[v8];
        v19 = (*v40 + 8);
        do
        {
          *&v20 = *(v19 - 1);
          DWORD2(v20) = *v19;
          v19 = (v19 + v17);
          *(&v20 + 1) = DWORD2(v20);
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }
  }

  v21 = sub_1AFDA7294(128, 16);
  sub_1AFD88B1C(v21, v2, 1);
  v22 = sub_1AFDA7294(80, 16);
  v23 = sub_1AFD8CD24(v22, v21);
  (*(*v21 + 96))(v21, v23);
  sub_1AFD8CE3C(v22);
  (*(*v21 + 8))(v21);
  (*(*v2 + 8))(v2);
  v24 = *(v22 + 16);
  v25 = sub_1AFD8D2C8(v22);
  v26 = *(v22 + 48);
  v27 = sub_1AFD8D2B0(v22);
  if (v25 && v24)
  {
    v29 = v27;
    v2 = sub_1AFDA7294(192, 16);
    sub_1AFD8665C(v2, v24, v25, 16, v26, v29);
  }

  else
  {
    v30 = sub_1AF0D5194(v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = sub_1AF16CDEC(v34);
      *v40 = 138412290;
      *&v40[4] = v31;
      _os_log_impl(&dword_1AF0CE000, v30, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create convex hull for entity %@", v40, 0xCu);
    }

    v2 = 0;
  }

  v32 = sub_1AFD8CE38(v22);
  sub_1AFDA72A0(v32);
  if (v7)
  {
    sub_1AFDA72A0(v7);
  }

  return v2;
}

void sub_1AF35E824(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1AFDA72A0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF35E898(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1AF35E8E4(const void *a1)
{
  v1 = sub_1AF35E3BC(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1AFDA7294(112, 16);
    sub_1AFD83A04(v3, v2, 1, 1);
    operator new();
  }

  return 0;
}

void sub_1AF35E970(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1B271C6B0](v3, v1);
  _Unwind_Resume(a1);
}

double sub_1AF35E99C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend__shapeHandle_(a2, a2, 0);
  if (v5)
  {
    v8 = v5;
    v9 = objc_msgSend_objectAtIndex_(*(a1 + 32), v6, a3);
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_msgSend_VFXMatrix4Value(v10, v11, v12);
      *&v15 = __PAIR64__(v14, v13);
      *&v18 = __PAIR64__(v17, v16);
      DWORD1(v20) = v19;
      *(&v20 + 1) = v21;
      *(&v15 + 1) = v22;
      *(&v18 + 1) = v23;
      HIDWORD(v24) = 0;
      v25 = v20;
      v26 = v15;
      v27 = v18;
      v28 = v24;
    }

    else
    {
      v25 = xmmword_1AFE20150;
      v26 = xmmword_1AFE20160;
      v27 = xmmword_1AFE20180;
      v28 = 0uLL;
    }

    *&result = sub_1AFD8518C(*(a1 + 40), &v25, v8, 0).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AF35EA90(void *cf, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 3:
      return 0;
    case 2:

      return sub_1AF35E8E4(cf);
    case 1:
      v10.i32[2] = 0;
      v10.i64[0] = 0;
      v9.i32[2] = 0;
      v9.i64[0] = 0;
      v3 = CFGetTypeID(cf);
      if (v3 == sub_1AF1A2D3C(v3, v4))
      {
        sub_1AF1A3234(cf, &v10, &v9);
      }

      else
      {
        sub_1AF1C3958(cf, 1, &v10, &v9);
      }

      v13 = v10.i32[2];
      v14 = v10.i64[0];
      v15 = vtrn1q_s32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v10);
      v7 = v9;
      v7.i32[0] = v10.i32[0];
      v7.i32[3] = v9.i32[0];
      v16 = v7;
      v8 = vextq_s8(v10, vrev64q_s32(v10), 4uLL);
      v8.i32[2] = v9.i32[0];
      v18 = v9.i32[2];
      v17 = v8;
      v12 = v10.i64[0];
      v19 = v9.i64[0];
      v20 = v10.i32[2];
      v21 = v9.i64[0];
      v22 = v9.i32[2];
      v11[6] = xmmword_1AFE47C90;
      v11[7] = unk_1AFE47CA0;
      v11[8] = xmmword_1AFE47CB0;
      v11[2] = xmmword_1AFE47C50;
      v11[3] = unk_1AFE47C60;
      v11[4] = xmmword_1AFE47C70;
      v11[5] = unk_1AFE47C80;
      v11[0] = xmmword_1AFE47C30;
      v11[1] = unk_1AFE47C40;
      v6 = sub_1AFDA7294(192, 16);
      sub_1AFD8665C(v6, &v12, 8, 12, v11, 12);
      return v6;
    default:

      return sub_1AF35E454(cf);
  }
}

uint64_t sub_1AF35ECC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B75A0(a2, a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v3)
  {
    ++v5;
  }

  *(v4 + 24) = v5;
  return 2 * (*(*(*(a1 + 32) + 8) + 24) > 1);
}

uint64_t sub_1AF35ED1C(float32x4_t *a1, uint64_t a2)
{
  v4 = sub_1AF1B75A0(a2, a2);
  if (v4)
  {
    v5 = sub_1AF35EE40(v4, a1[6].i64[0]);
    if (v5)
    {
      v7 = v5;
      v18 = a1[2];
      v19 = a1[3];
      v16 = a1[5];
      v17 = a1[4];
      v8 = sub_1AF1B9B04(a2, v6);
      v9 = 0;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      v20[0] = *v8;
      v20[1] = v10;
      v20[2] = v11;
      v20[3] = v12;
      do
      {
        *(&v21 + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v20[v9])), v19, *&v20[v9], 1), v17, v20[v9], 2), v16, v20[v9], 3);
        ++v9;
      }

      while (v9 != 4);
      v13 = v21;
      v14 = v22;
      *v21.i8 = vzip1_s32(*v21.i8, *v22.i8);
      v21.i64[1] = v23.u32[0];
      *v22.i8 = vzip2_s32(*v13.i8, *v22.i8);
      v22.i64[1] = v23.u32[1];
      v23 = vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL));
      v24 = v24;
      HIDWORD(v25) = 0;
      sub_1AFD8518C(a1[6].i64[1], &v21, v7, 1);
    }
  }

  return 0;
}

float32x4_t *sub_1AF35EE40(void *a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  v6 = v4;
  if (a2 != 1)
  {
    v4 = sub_1AF1BE9BC(v4, v5);
    if (v6 == v4)
    {
      memset(__s1, 0, sizeof(__s1));
      sub_1AF1BE95C(a1, v5, __s1);
      if (!memcmp(__s1, &xmmword_1F24E80B0, 0x30uLL))
      {
        v16 = sub_1AF1BECB4(a1, 0);
        v77 = LODWORD(v16);
        v17 = sub_1AF1BECB4(a1, 1);
        v73 = LODWORD(v17);
        v18 = sub_1AF1BECB4(a1, 2);
        v19 = *&v18;
        v9 = sub_1AFDA7294(80, 16);
        *v82.f32 = vmul_f32(__PAIR64__(v73, v77), 0x3F0000003F000000);
        v82.f32[2] = v19 * 0.5;
        v82.i32[3] = 0;
        sub_1AFD82F04(v9, &v82);
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E80E0, 0x30uLL))
      {
        v20 = sub_1AF1BECB4(a1, 0);
        v21 = *&v20;
        v22 = sub_1AF1BECB4(a1, 1);
        v23 = LODWORD(v22);
        v24 = sub_1AF1BECB4(a1, 2);
        v82.i32[0] = 0;
        v82.i32[1] = v23;
        v82.i64[1] = 0;
        v83 = v21 * -0.5;
        v84 = 0;
        v85 = *&v24 * -0.5;
        v86 = 0;
        v87 = v21 * -0.5;
        v88 = 0;
        v89 = *&v24 * 0.5;
        v90 = 0;
        v91 = v21 * 0.5;
        v92 = 0;
        v93 = *&v24 * -0.5;
        v94 = 0;
        v95 = v21 * 0.5;
        v96 = 0;
        v97 = *&v24 * 0.5;
        v98 = 0;
        v9 = sub_1AFDA7294(192, 16);
        sub_1AFD8665C(v9, &v82, 5, 16, 0, 0);
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E8140, 0x30uLL))
      {
        goto LABEL_26;
      }

      if (!memcmp(__s1, &xmmword_1F24E8170, 0x30uLL))
      {
        v31 = sub_1AF1BECB4(a1, 5);
        if (*&v31 != 0.0 && (byte_1EB658E72 & 1) == 0)
        {
          byte_1EB658E72 = 1;
          v32 = sub_1AF0D5194(v29, v30);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDFAA24();
          }
        }

        v33 = sub_1AF1BECB4(a1, 4);
        v34 = *&v33;
        v35 = sub_1AF1BECB4(a1, 1);
        v36 = *&v35;
        v9 = sub_1AFDA7294(96, 16);
        sub_1AFD85FA4(v9, v34, v36);
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E81A0, 0x30uLL))
      {
LABEL_26:
        v25 = sub_1AF1BECB4(a1, 4);
        v26 = LODWORD(v25);
        v27 = sub_1AF1BECB4(a1, 1);
        v28 = *&v27;
        v9 = sub_1AFDA7294(80, 16);
        v82.i32[0] = v26;
        v82.f32[1] = v28 * 0.5;
        v82.i64[1] = v26;
        sub_1AFD890E8(v9, &v82);
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E81D0, 0x30uLL))
      {
        v37 = sub_1AF1BECB4(a1, 4);
        v38 = *&v37;
        v39 = sub_1AF1BECB4(a1, 1);
        v40 = *&v39;
        v9 = sub_1AFDA7294(80, 16);
        sub_1AFD84200(v9, v38, v40 + (v38 * -2.0));
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E8200, 0x30uLL))
      {
        v41 = sub_1AF1BECB4(a1, 4);
        v68 = *&v41;
        v42 = sub_1AF1BECB4(a1, 7);
        v43 = 0;
        v67 = vdupq_lane_s32(*&v42, 0);
        v44 = xmmword_1AFE202E0;
        v45 = &v82;
        v66 = vdupq_n_s64(0x400921FB54442D18uLL);
        v46 = 0uLL;
        do
        {
          v70 = v46;
          v74 = v44;
          v47.i64[0] = 0x3E0000003E000000;
          v47.i64[1] = 0x3E0000003E000000;
          v48 = vmulq_f32(vcvtq_f32_u32(v44), v47);
          v49 = vcvtq_f64_f32(*v48.f32);
          v50 = vmulq_f64(vcvt_hight_f64_f32(v48), v66);
          v51 = vmulq_f64(v49, v66);
          v71 = vcvt_f32_f64(vaddq_f64(v50, v50));
          *&v50.f64[0] = vcvt_f32_f64(vaddq_f64(v51, v51));
          v69 = *v50.f64;
          v52 = __sincosf_stret(*(v50.f64 + 1));
          v54 = __sincosf_stret(v69);
          v53.i64[0] = __PAIR64__(LODWORD(v52.__sinval), LODWORD(v54.__sinval));
          v78 = v53;
          v55 = __sincosf_stret(v71.f32[0]);
          v56 = v78;
          v56.i32[2] = LODWORD(v55.__sinval);
          v79 = v56;
          v57 = __sincosf_stret(v71.f32[1]);
          v46 = v70;
          v58 = v79;
          v58.i32[3] = LODWORD(v57.__sinval);
          v59.i64[0] = __PAIR64__(LODWORD(v52.__cosval), LODWORD(v54.__cosval));
          v59.i64[1] = __PAIR64__(LODWORD(v57.__cosval), LODWORD(v55.__cosval));
          v60 = vmulq_n_f32(v58, v68);
          v61 = vmulq_n_f32(v59, v68);
          v62 = v70;
          vst4q_f32(v45->f32, *(&v46 - 1));
          v45 += 4;
          *&v81[v43] = v67;
          v63.i64[0] = 0x400000004;
          v63.i64[1] = 0x400000004;
          v44 = vaddq_s32(v74, v63);
          v43 += 16;
        }

        while (v43 != 32);
        v9 = sub_1AFDA7294(192, 16);
        sub_1AFD89B20(v9, &v82, v81, 8);
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E8110, 0x30uLL))
      {
        v64 = sub_1AF1BECB4(a1, 4);
        v65 = LODWORD(v64);
        v9 = sub_1AFDA7294(80, 16);
        sub_1AFD86E64(v9);
        v9->i64[0] = &unk_1F2572270;
        v9->i32[2] = 8;
        v9[3].i32[0] = v65;
        v9[4].i32[0] = v65;
        return v9;
      }

      if (!memcmp(__s1, &xmmword_1F24E8080, 0x30uLL))
      {
        v7 = sub_1AF1BECB4(a1, 0);
        v75 = LODWORD(v7);
        v8 = sub_1AF1BECB4(a1, 1);
        v72 = LODWORD(v8);
        v9 = sub_1AFDA7294(224, 16);
        v82 = vmul_f32(__PAIR64__(v72, v75), 0x3F0000003F000000);
        sub_1AF360910(v9, &v82);
        return v9;
      }

      return 0;
    }
  }

  if (v6 == sub_1AF16EA90(v4, v5))
  {
    v11 = sub_1AF1C3FAC(a1, v10);
    if (v11)
    {
      v13 = sub_1AF1CFC48(v11, v12);
    }

    else
    {
      v13 = xmmword_1AFE20160;
    }

    v76 = v13;
    v9 = sub_1AFDA7294(112, 16);
    v82.i64[0] = v76.n128_u64[0];
    v82.i64[1] = v76.n128_u32[2];
    sub_1AFD8D5C0(v9, &v82, 0.0);
    return v9;
  }

  v14 = sub_1AF1B2C1C(a1, v10);
  if (!v14)
  {
    return 0;
  }

  return sub_1AF35EA90(v14, a2);
}

void sub_1AF35F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF35F6A8(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  v7 = objc_msgSend_stringWithFormat_(v3, a2, @"transform%d", v6);
  objc_msgSend_VFXMatrix4Value(a2, v8, v9);

  return sub_1AF371B50(v4, v7, v10, v11, v12, v13);
}

uint64_t sub_1AF35FC20(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = xmmword_1AFE208C0;
  *a1 = &unk_1F24EC4E8;
  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 88) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = 0;
  v8 = *sub_1AF1B9B04(a2, a2);
  v9 = __invert_f4(v8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF35FD2C;
  v5[3] = &unk_1E7A7F888;
  v7 = a1;
  v6 = v9;
  sub_1AF1B94AC(a2, v5);
  return a1;
}

void sub_1AF35FD08(_Unwind_Exception *a1)
{
  sub_1AF35E898(v1 + 64);
  sub_1AF35E898(v1 + 32);
  nullsub_106();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF35FD2C(float32x4_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a1[6].i64[0];
  v5 = sub_1AF1B75A0(a2, a2);
  if (v5)
  {
    v7 = sub_1AF1B2C1C(v5, v6);
    if (v7)
    {
      v9 = v7;
      v57 = a1[2];
      v59 = a1[3];
      v53 = a1[5];
      v55 = a1[4];
      v10 = sub_1AF1B9B04(a2, v8);
      v11 = 0;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v61[0] = *v10;
      v61[1] = v12;
      v61[2] = v13;
      v61[3] = v14;
      do
      {
        *&buf[v11 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(v61[v11])), v59, *&v61[v11], 1), v55, v61[v11], 2), v53, v61[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      v58 = v63;
      v60 = *buf;
      v54 = v65;
      v56 = v64;
      v15 = sub_1AF1A4604(v9, 0, 0, 1);
      if (v15)
      {
        v17 = v15;
        v18 = sub_1AF1AF080(v15, v16);
        v19 = sub_1AF121B74(v18);
        v21 = sub_1AF1AE6EC(v17, v20);
        v23 = sub_1AF1AE6E8(v17, v22);
        BytePtr = CFDataGetBytePtr(v23);
        v25 = *(v4 + 68);
        v26 = v25 + v21;
        if (v21 >= 1 && *(v4 + 72) < v26)
        {
          if (v26)
          {
            v27 = sub_1AFDA7294(16 * v26, 16);
          }

          else
          {
            v27 = 0;
          }

          if (*(v4 + 68) >= 1)
          {
            v28 = 0;
            v29 = 16 * *(v4 + 68);
            do
            {
              *(v27 + v28) = *(*(v4 + 80) + v28);
              v28 += 16;
            }

            while (v29 != v28);
          }

          v30 = *(v4 + 80);
          if (v30 && *(v4 + 88) == 1)
          {
            sub_1AFDA72A0(v30);
          }

          *(v4 + 88) = 1;
          *(v4 + 80) = v27;
          *(v4 + 72) = v26;
        }

        *(v4 + 68) = v26;
        v31 = sub_1AF1CAED8(v18);
        v34 = v31;
        if (v31 == 6 || v31 == 1)
        {
          if (v21 >= 1)
          {
            v35 = v25;
            v36 = v21;
            do
            {
              if (v31 == 1)
              {
                v33.i64[0] = *BytePtr;
                v33.i32[2] = *(BytePtr + 2);
              }

              else
              {
                v33 = *BytePtr;
                *v33.f32 = vcvt_f32_f64(*BytePtr);
                v37 = *(BytePtr + 2);
                v33.f32[2] = v37;
              }

              v38 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v54, v56, v33, 2), v58, *v33.f32, 1), v60, v33.f32[0]);
              v38.i32[3] = 0;
              *(*(v4 + 80) + 16 * v35++) = v38;
              BytePtr += v19;
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          v39 = sub_1AF0D5194(v31, v32);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v34;
            _os_log_impl(&dword_1AF0CE000, v39, OS_LOG_TYPE_DEFAULT, "Warning: Physics shape construction does not support meshes with positions value type different from double or float. (%d)", buf, 8u);
          }
        }

        v40 = sub_1AF1A3CCC(v9, v32);
        if (v40 >= 1)
        {
          for (i = 0; i != v40; i = (i + 1))
          {
            CFRetain(v9);
            v42 = *(v4 + 36);
            if (v42 == *(v4 + 40))
            {
              v43 = v42 ? 2 * v42 : 1;
              if (v42 < v43)
              {
                if (v43)
                {
                  v44 = sub_1AFDA7294(32 * v43, 16);
                  v42 = *(v4 + 36);
                }

                else
                {
                  v44 = 0;
                }

                if (v42 >= 1)
                {
                  v45 = 0;
                  v46 = 32 * v42;
                  do
                  {
                    v47 = (v44 + v45);
                    v48 = (*(v4 + 48) + v45);
                    v49 = v48[1];
                    *v47 = *v48;
                    v47[1] = v49;
                    v45 += 32;
                  }

                  while (v46 != v45);
                }

                v50 = *(v4 + 48);
                if (v50 && *(v4 + 56) == 1)
                {
                  sub_1AFDA72A0(v50);
                }

                *(v4 + 56) = 1;
                *(v4 + 48) = v44;
                *(v4 + 40) = v43;
                v42 = *(v4 + 36);
              }
            }

            v51 = *(v4 + 48) + 32 * v42;
            *v51 = v9;
            *(v51 + 8) = i;
            *(v51 + 16) = v25;
            *(v51 + 20) = v21;
            ++*(v4 + 36);
          }
        }
      }
    }
  }

  return 0;
}

void sub_1AF3600DC(uint64_t a1)
{
  sub_1AF360214(a1);

  sub_1AFDA72A0(v1);
}

void sub_1AF360104(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFAA58();
  }
}

const void *sub_1AF360140(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, const UInt8 **a6, _DWORD *a7, int *a8, int *a9, int a10)
{
  v13 = *(a1 + 48) + 32 * a10;
  *a3 = *(v13 + 20);
  *a2 = *(a1 + 80) + 16 * *(v13 + 16);
  *a4 = 0;
  *a5 = 16;
  result = sub_1AF1A3D1C(*v13, *(v13 + 8), 1);
  if (result)
  {

    return sub_1AF35DFF0(result, a6, a7, a8, a9);
  }

  return result;
}

void sub_1AF360214(uint64_t a1)
{
  *a1 = &unk_1F24EC4E8;
  v2 = *(a1 + 36);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(a1 + 48) + v3);
      if (v5)
      {
        CFRelease(v5);
        v2 = *(a1 + 36);
      }

      v3 += 32;
    }
  }

  v6 = *(a1 + 80);
  if (v6 && *(a1 + 88) == 1)
  {
    sub_1AFDA72A0(v6);
  }

  *(a1 + 88) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  v7 = *(a1 + 48);
  if (v7 && *(a1 + 56) == 1)
  {
    sub_1AFDA72A0(v7);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;

  nullsub_106();
}

void sub_1AF3602F0(_Unwind_Exception *a1)
{
  sub_1AF35E898(v1 + 64);
  sub_1AF35E898(v1 + 32);
  nullsub_106();
  _Unwind_Resume(a1);
}

double sub_1AF360314(uint64_t a1)
{
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *a1 = &unk_1F24EC570;
  *(a1 + 136) = xmmword_1AFE47C10;
  result = 5.15555163e-67;
  *(a1 + 152) = 0x322BCC7640C90FDBLL;
  return result;
}

void sub_1AF3603B0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 && *(a1 + 128) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  v3 = *(a1 + 88);
  if (v3 && *(a1 + 96) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 24);
  if (v5 && *(a1 + 32) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;

  JUMPOUT(0x1B271C6B0);
}

const char *sub_1AF360490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = *(a1 + 136);
  *(a2 + 48) = *(a1 + 156);
  v6 = *(a1 + 12);
  *(a2 + 56) = v6;
  if (v6)
  {
    v7 = (*(*a3 + 56))(a3, *(a1 + 24));
    *a2 = v7;
    if (v7)
    {
      v8 = *(a2 + 56);
      v9 = (*(*a3 + 32))(a3, 4, v8);
      v10 = *(a1 + 24);
      if (v8 >= 1)
      {
        v11 = *(v9 + 8);
        v12 = *(a1 + 24);
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          --v8;
        }

        while (v8);
      }

      (*(*a3 + 40))(a3, v9, "int", 1497453121, v10);
    }
  }

  else
  {
    *a2 = 0;
  }

  v14 = *(a1 + 44);
  *(a2 + 52) = v14;
  if (v14)
  {
    v15 = (*(*a3 + 56))(a3, *(a1 + 56));
    *(a2 + 8) = v15;
    if (v15)
    {
      v16 = *(a2 + 52);
      v17 = (*(*a3 + 32))(a3, 4, v16);
      v18 = *(a1 + 56);
      if (v16 >= 1)
      {
        v19 = *(v17 + 8);
        v20 = *(a1 + 56);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v16;
        }

        while (v16);
      }

      (*(*a3 + 40))(a3, v17, "int", 1497453121, v18);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  v22 = *(a1 + 76);
  *(a2 + 60) = v22;
  if (v22)
  {
    v23 = (*(*a3 + 56))(a3, *(a1 + 88));
    *(a2 + 16) = v23;
    if (v23)
    {
      v24 = *(a2 + 60);
      v25 = (*(*a3 + 32))(a3, 16, v24);
      v26 = *(a1 + 88);
      if (v24 >= 1)
      {
        v27 = *(v25 + 8);
        v28 = *(a1 + 88);
        do
        {
          *(v27 + 4) = *(v28 + 1);
          *(v27 + 12) = v28[3];
          v29 = *v28;
          v28 += 4;
          *v27 = v29;
          v27 += 16;
          --v24;
        }

        while (v24);
      }

      (*(*a3 + 40))(a3, v25, "btTriangleInfoData", 1497453121, v26);
    }
  }

  else
  {
    *(a2 + 16) = 0;
  }

  v30 = *(a1 + 108);
  *(a2 + 64) = v30;
  if (v30)
  {
    v31 = (*(*a3 + 56))(a3, *(a1 + 120));
    *(a2 + 24) = v31;
    if (v31)
    {
      v32 = *(a2 + 60);
      v33 = (*(*a3 + 32))(a3, 4, v32);
      v34 = *(a1 + 120);
      if (v32 >= 1)
      {
        v35 = *(v33 + 8);
        v36 = *(a1 + 120);
        do
        {
          v37 = *v36++;
          *v35++ = v37;
          --v32;
        }

        while (v32);
      }

      (*(*a3 + 40))(a3, v33, "int", 1497453121, v34);
    }
  }

  else
  {
    *(a2 + 24) = 0;
  }

  return "btTriangleInfoMapData";
}

uint64_t sub_1AF360858(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 120) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 120) = 1;
  *(a1 + 112) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 80);
  if (v3 && *(a1 + 88) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 88) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

float32x4_t *sub_1AF360910(float32x4_t *a1, float32x2_t *a2)
{
  sub_1AFD8A774(a1);
  *v4 = &unk_1F2571338;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = vneg_f32(*a2);
  *(v4 + 104) = 0;
  v5 = -a2->f32[1];
  *(v4 + 112) = a2->i32[0];
  *(v4 + 116) = v5;
  *(v4 + 120) = 0;
  *(v4 + 128) = *a2;
  *(v4 + 136) = 0;
  *(v4 + 144) = -a2->f32[0];
  *(v4 + 148) = a2->i32[1];
  *(v4 + 152) = xmmword_1AFE21260;
  *(v4 + 168) = 0;
  *(v4 + 176) = 1065353216;
  *(v4 + 188) = 0;
  *(v4 + 180) = 0;
  *(v4 + 196) = xmmword_1AFE47C20;
  *(v4 + 212) = 0;
  *(v4 + 220) = 0;
  if (a2->f32[0] <= a2->f32[1])
  {
    v6 = a2->f32[0];
  }

  else
  {
    v6 = a2->f32[1];
  }

  v7 = off_1F2571398(v4);
  v8.n128_f32[0] = v6 * 0.1;
  if ((v6 * 0.1) < v7)
  {
    (*(a1->i64[0] + 88))(a1, v8.n128_f32[0]);
  }

  a1->i32[2] = 17;
  *v9.i64 = (*(a1->i64[0] + 96))(a1, v8);
  v16 = v9;
  v10 = (*(a1->i64[0] + 96))(a1);
  v15 = LODWORD(v10);
  v11 = (*(a1->i64[0] + 96))(a1);
  v12 = v16;
  v12.i32[1] = v15;
  v12.f32[2] = v11;
  v13 = vsubq_f32(vmulq_f32(*a2->f32, a1[2]), v12);
  v13.i32[3] = 0;
  a1[3] = v13;
  return a1;
}

float32x4_t *sub_1AF360DCC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    LODWORD(v7) = HIDWORD(*(a1 + 32));
    v8 = COERCE_FLOAT(*(a1 + 40));
    v9 = (v7 * v7) + (*&v6 * *&v6);
    v10 = 1.0 / sqrtf(v9);
    v11 = -(v7 * v10);
    v12 = *&v6 * v10;
    v13 = -(v8 * (*&v6 * v10));
    v14 = v8 * v11;
    v15 = v9 * v10;
    v16 = 0.0;
    v17 = (v8 * v8) + (v7 * v7);
    v18 = 1.0 / sqrtf(v17);
    v19 = -(v8 * v18);
    v20 = v7 * v18;
    v21 = v17 * v18;
    if (fabsf(v8) <= 0.70711)
    {
      v21 = v13;
    }

    else
    {
      v12 = v19;
      v11 = 0.0;
      v16 = v20;
      v15 = *&v6 * v19;
      v14 = -(*&v6 * v20);
    }

    v22.i64[0] = __PAIR64__(LODWORD(v11), v6);
    v22.i64[1] = LODWORD(v21);
    v23.i32[0] = HIDWORD(*(a1 + 32));
    v23.f32[1] = v12;
    v23.i64[1] = LODWORD(v14);
    v24.i32[0] = *(a1 + 40);
    v24.f32[1] = v16;
    v24.i64[1] = LODWORD(v15);
    result[5] = v22;
    result[6] = v23;
    result[7] = v24;
    v25.n128_f64[0] = sub_1AFDA01F0(result, (result[2].i64[1] + 16), (result[3].i64[0] + 16));
    v26 = *(v5->i64[0] + 16);

    return v26(v5, v25);
  }

  return result;
}

float32x4_t *sub_1AF360FB4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    LODWORD(v7) = HIDWORD(*(a1 + 32));
    v8 = COERCE_FLOAT(*(a1 + 40));
    v9 = (v7 * v7) + (*&v6 * *&v6);
    v10 = 1.0 / sqrtf(v9);
    v11 = -(v7 * v10);
    v12 = *&v6 * v10;
    v13 = -(v8 * (*&v6 * v10));
    v14 = v8 * v11;
    v15 = v9 * v10;
    v16 = 0.0;
    v17 = (v8 * v8) + (v7 * v7);
    v18 = 1.0 / sqrtf(v17);
    v19 = -(v8 * v18);
    v20 = v7 * v18;
    v21 = v17 * v18;
    if (fabsf(v8) <= 0.70711)
    {
      v21 = v13;
    }

    else
    {
      v12 = v19;
      v11 = 0.0;
      v16 = v20;
      v15 = *&v6 * v19;
      v14 = -(*&v6 * v20);
    }

    v22.i64[0] = __PAIR64__(LODWORD(v11), v6);
    v22.i64[1] = LODWORD(v21);
    v23.i32[0] = HIDWORD(*(a1 + 32));
    v23.f32[1] = v12;
    v23.i64[1] = LODWORD(v14);
    v24.i32[0] = *(a1 + 40);
    v24.f32[1] = v16;
    v24.i64[1] = LODWORD(v15);
    result[9] = v22;
    result[10] = v23;
    result[11] = v24;
    v25.n128_f64[0] = sub_1AFDA01F0(result, (result[2].i64[1] + 16), (result[3].i64[0] + 16));
    v26 = *(v5->i64[0] + 16);

    return v26(v5, v25);
  }

  return result;
}

float32x4_t *sub_1AF36119C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    v6.i32[3] = 0;
    result[8] = v6;
    v7.n128_f64[0] = sub_1AFDA01F0(result, (result[2].i64[1] + 16), (result[3].i64[0] + 16));
    v8 = *(v5->i64[0] + 16);

    return v8(v5, v7);
  }

  return result;
}

float32x4_t *sub_1AF3612D4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 48), a2, a3);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);
    v6.i32[3] = 0;
    result[12] = v6;
    v7.n128_f64[0] = sub_1AFDA01F0(result, (result[2].i64[1] + 16), (result[3].i64[0] + 16));
    v8 = *(v5->i64[0] + 16);

    return v8(v5, v7);
  }

  return result;
}

float sub_1AF361410(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    result = *(a1 + 40);
    *(v4 + 212) = result;
  }

  return result;
}

float sub_1AF3614F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    result = *(a1 + 40);
    *(v4 + 216) = result;
  }

  return result;
}

void sub_1AF3615D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = fmodf(*(a1 + 40), 6.2832);
    if (v6 >= -3.1416)
    {
      if (v6 > 3.1416)
      {
        v6 = v6 + -6.2832;
      }
    }

    else
    {
      v6 = v6 + 6.2832;
    }

    *(v5 + 220) = v6;
  }
}

void sub_1AF36170C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = fmodf(*(a1 + 40), 6.2832);
    if (v6 >= -3.1416)
    {
      if (v6 > 3.1416)
      {
        v6 = v6 + -6.2832;
      }
    }

    else
    {
      v6 = v6 + 6.2832;
    }

    *(v5 + 224) = v6;
  }
}

float *sub_1AF361840(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (result)
  {
    v5 = *(a1 + 40);
    *(result + 1216) = v5 != 0.0;
    result[305] = v5;
  }

  return result;
}

float sub_1AF361930(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    result = *(a1 + 40);
    *(v4 + 1224) = result;
  }

  return result;
}

float *sub_1AF361A14(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (result)
  {
    v5 = *(a1 + 40);
    *(result + 1232) = v5 != 0.0;
    result[309] = v5;
  }

  return result;
}

float sub_1AF361B04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sliderHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    result = *(a1 + 40);
    *(v4 + 1240) = result;
  }

  return result;
}

void sub_1AF362524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a11)
  {
    if (a12 == 1)
    {
      sub_1AFDA72A0(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF3627D0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 0x2000);
  *(a1 + 10520) = a2;
  *(a1 + 10528) = objc_opt_respondsToSelector() & 1;
  v3[2337] = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  v3[2338] = result & 1;
  *(a1 + 10504) = 0;
  if (v3[2336] & 1) != 0 || (v3[2337] & 1) != 0 || (result)
  {
    if (v3[2337])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (result)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 10504) = v5 | v6;
  }

  return result;
}

void *sub_1AF362EE8(uint64_t a1)
{
  result = *(*(a1 + 48) + 8);
  if (result)
  {
    v3 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    v8 = 0;
    (*(*result + 144))(result, &v6);
    return objc_msgSend_wakeUpAllBodies(*(a1 + 48), v4, v5);
  }

  return result;
}

float sub_1AF363078(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 228) = result;
  }

  return result;
}

uint64_t sub_1AF3631F4(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1)
  {
    return sub_1AF3627D0(*(v1 + 40), *(result + 40));
  }

  return result;
}

VFXHitTestResult *sub_1AF3636D4(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (!a1 || *(a1 + 264) != 2)
  {
    return 0;
  }

  v3 = sub_1AF286E6C(*(*(a1 + 536) + 72), *a2, *a3);
  v4 = [VFXHitTestResult alloc];
  v6 = objc_msgSend_initWithResult_(v4, v5, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

VFXPhysicsContact *sub_1AF363F94(uint64_t a1, uint64_t a2, double *a3, double *a4, float a5, float a6)
{
  v6 = 0;
  if (a1 && (*(a1 + 264) & 2) != 0)
  {
    v13 = objc_opt_new();
    if ((*(a1 + 264) & 2) != 0 && (v14 = *(a1 + 536)) != 0 && (v6 = v13, (v15 = sub_1AF16CDEC(*(v14 + 72))) != 0))
    {
      v19 = v15;
      if (a2 && (*(a2 + 264) & 2) != 0 && (v20 = *(a2 + 536)) != 0)
      {
        v21 = sub_1AF16CDEC(*(v20 + 72));
      }

      else
      {
        v21 = 0;
      }

      *&v17 = -a5;
      *&v18 = a6;
      objc_msgSend__fillNodeA_nodeB_contactPoint_contactNormal_distance_hitFraction_(v6, v16, v19, v21, *a3, *a4, v17, v18);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1AF3640E4(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    (*(*result + 16))(result);
    v3 = *(**(*(a1 + 32) + 8) + 24);

    return v3();
  }

  return result;
}

uint64_t sub_1AF3643E4(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a2)
  {
    v12 = result;
    v13 = *(result + 228);
    v14 = *(a2 + 536);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = sub_1AFDA7294(80, 16);
    sub_1AF355B5C(v15, a3, v13);
    sub_1AF355B84(v15, a7);
    *(a2 + 536) = v15;
    if (v15)
    {
      (*(v15->n128_u64[0] + 16))(v15, a2 + 16);
    }

    result = sub_1AF1C3FAC(a3, v16);
    if (result)
    {
      result = sub_1AF1BA900(a3, v17);
      if ((result & 1) == 0)
      {
        v19 = sub_1AF1B7348(a3, v18);
        if (v19)
        {
          v21 = sub_1AF0D5194(v19, v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDFAB48(v21, v22, v23, v24, v25, v26, v27, v28);
          }
        }

        return (*(*v12 + 176))(v12, a2, a4, a5, a6);
      }
    }
  }

  return result;
}

void sub_1AF364630(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 10540);
  if (v4 <= 0)
  {
    v15 = 0uLL;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v5 = 0;
  v6 = 16 * v4;
  do
  {
    v7 = *(a1 + 10552) + v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    switch(v9)
    {
      case 2:
        objc_msgSend_physicsWorld_didEndContact_(*(a1 + 10520), a2, *(a1 + 10512), v8);
        break;
      case 1:
        if (objc_msgSend__shouldPostUpdate(v8, a2, a3))
        {
          objc_msgSend_physicsWorld_didUpdateContact_(*(a1 + 10520), v10, *(a1 + 10512), v8);
        }

        break;
      case 0:
        objc_msgSend_physicsWorld_didBeginContact_(*(a1 + 10520), a2, *(a1 + 10512), v8);
        break;
    }

    v5 += 16;
  }

  while (v6 != v5);
  LODWORD(v4) = *(a1 + 10540);
  v15 = 0uLL;
  if (v4 <= 0 && (v4 & 0x80000000) != 0)
  {
LABEL_15:
    if ((*(a1 + 10544) & 0x80000000) != 0)
    {
      v11 = *(a1 + 10552);
      if (v11 && *(a1 + 10560) == 1)
      {
        sub_1AFDA72A0(v11);
      }

      *(a1 + 10560) = 1;
      *(a1 + 10552) = 0;
      *(a1 + 10544) = 0;
    }

    v12 = 16 * v4;
    v13 = v4 + 1;
    do
    {
      *(*(a1 + 10552) + v12) = v15;
      v12 += 16;
    }

    while (v13++);
  }

LABEL_22:
  *(a1 + 10540) = 0;
}

id *sub_1AF364F94(id *a1, id *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  result = sub_1AF16CDEC(a1);
  if (result)
  {
    v4 = result;
    result = sub_1AF16CDEC(a2);
    if (result)
    {
      result = objc_msgSend_physicsBody(result, v5, v6);
      if (result)
      {
        v9 = result;
        v10 = objc_msgSend_physicsWorld(v4, v7, v8);
        v13 = objc_msgSend_categoryBitMask(v9, v11, v12);
        v16 = objc_msgSend_collisionBitMask(v9, v14, v15);
        v19 = objc_msgSend_contactTestBitMask(v9, v17, v18);
        objc_msgSend_addPhysicsBody_nodeRef_colGroup_colMask_colTest_(v10, v20, v9, a2, v13, v16, v19);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v23 = objc_msgSend_physicsJoints(v10, v21, v22, 0);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v37, v41, 16);
        if (result)
        {
          v27 = result;
          v28 = *v38;
          do
          {
            v29 = 0;
            do
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v23);
              }

              v30 = *(*(&v37 + 1) + 8 * v29);
              if (objc_msgSend_bodyA(v30, v25, v26) == v9 || objc_msgSend_bodyB(v30, v25, v26) == v9)
              {
                v31 = objc_msgSend_bodyA(v30, v25, v26);
                if (objc_msgSend_isActive(v31, v32, v33))
                {
                  v34 = objc_msgSend_bodyB(v30, v25, v26);
                  if (objc_msgSend_isActive(v34, v35, v36))
                  {
                    objc_msgSend_activatePhysicsJoint_(v10, v25, v30);
                  }
                }
              }

              v29 = (v29 + 1);
            }

            while (v27 != v29);
            result = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v37, v41, 16);
            v27 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

id *sub_1AF36513C(id *a1, id *a2)
{
  result = sub_1AF16CDEC(a1);
  if (result)
  {
    v4 = result;
    result = sub_1AF16CDEC(a2);
    if (result)
    {
      result = objc_msgSend_physicsBody(result, v5, v6);
      if (result)
      {
        v9 = result;
        objc_msgSend__handle(result, v7, v8);
        v12 = objc_msgSend_physicsWorld(v4, v10, v11);

        return MEMORY[0x1EEE66B58](v12, sel_removePhysicsBody_handle_, v9);
      }
    }
  }

  return result;
}

uint64_t sub_1AF3651C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFD7322C(a1, a2);
  *v5 = &unk_1F24EC5C0;
  *(v5 + 10496) = &unk_1F24EC670;
  *(v5 + 10512) = a3;
  *(v5 + 10560) = 1;
  *(v5 + 10552) = 0;
  *(v5 + 10540) = 0;
  sub_1AF3627D0(v5, 0);
  return a1;
}

void sub_1AF365250(_Unwind_Exception *a1)
{
  sub_1AF35E898(v1 + 10536);
  sub_1AFD73504(v1);
  _Unwind_Resume(a1);
}

void sub_1AF365274(uint64_t a1)
{
  sub_1AF3657D8(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF3652AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AFD735B8(a1, a2, a3);
  if (*(a1 + 10504))
  {
    *(result + 824) = a1 + 10496;
  }

  return result;
}

uint64_t sub_1AF3652F8(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_1AF365320(VFXPhysicsContact *result, uint64_t a2, int a3)
{
  p_nodeA = &result[93]._nodeA;
  if ((result[119]._contactNormal[8] & 1) != 0 || (result[119]._contactNormal[9] & 1) != 0 || result[119]._contactNormal[10] == 1)
  {
    v6 = a3;
    *(a2 + 16 + 192 * a3 + 112) = objc_alloc_init(VFXPhysicsContact);
    if (p_nodeA[292])
    {
      v8 = *(a2 + 784);
      if (v8)
      {
        v8 = v8[25];
      }

      v9 = *(a2 + 792);
      if (v9)
      {
        if (v8)
        {
          v10 = *(v9 + 200);
          if (v10)
          {
            if ((*(v10 + 8) & v8[3]) != 0 || (*(v10 + 24) & v8[1]) != 0)
            {
              v11 = objc_msgSend__contactWithManifold_index_(VFXPhysicsContact, v7, a2, v6);
              distance = result[119]._distance;
              if (LODWORD(distance) == LODWORD(result[119]._fraction))
              {
                LODWORD(v13) = distance == 0.0 ? 1 : 2 * LODWORD(distance);
                if (SLODWORD(distance) < SLODWORD(v13))
                {
                  if (v13 == 0.0)
                  {
                    v14 = 0;
                  }

                  else
                  {
                    v14 = sub_1AFDA7294(16 * SLODWORD(v13), 16);
                    distance = result[119]._distance;
                  }

                  if (SLODWORD(distance) >= 1)
                  {
                    v15 = 0;
                    v16 = 16 * LODWORD(distance);
                    do
                    {
                      *(v14 + v15) = *(result[119]._updateCount + v15);
                      v15 += 16;
                    }

                    while (v16 != v15);
                  }

                  updateCount = result[119]._updateCount;
                  if (updateCount)
                  {
                    if (*(p_nodeA + 2368) == 1)
                    {
                      sub_1AFDA72A0(updateCount);
                    }
                  }

                  *(p_nodeA + 2368) = 1;
                  result[119]._updateCount = v14;
                  result[119]._fraction = v13;
                  distance = result[119]._distance;
                }
              }

              v18 = result[119]._updateCount + 16 * SLODWORD(distance);
              *v18 = v11;
              *(v18 + 8) = 0;
              ++LODWORD(result[119]._distance);
            }
          }
        }
      }
    }
  }
}

void sub_1AF3654A8(uint64_t result, uint64_t a2, int a3)
{
  v6 = result + 0x2000;
  if ((*(result + 10529) & 1) == 0)
  {
    v7 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFABC0(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 784);
  v15 = *(a2 + 792);
  if (v14)
  {
    v14 = v14[25];
  }

  if (v15)
  {
    if (v14)
    {
      v16 = *(v15 + 200);
      if (v16)
      {
        if ((*(v16 + 8) & v14[3]) != 0 || (*(v16 + 24) & v14[1]) != 0)
        {
          v19 = objc_msgSend__contactWithManifold_index_(VFXPhysicsContact, a2, a2, a3);
          v20 = *(result + 10540);
          if (v20 == *(result + 10544))
          {
            v21 = v20 ? 2 * v20 : 1;
            if (v20 < v21)
            {
              if (v21)
              {
                v22 = sub_1AFDA7294(16 * v21, 16);
                v20 = *(result + 10540);
              }

              else
              {
                v22 = 0;
              }

              if (v20 >= 1)
              {
                v23 = 0;
                v24 = 16 * v20;
                do
                {
                  *(v22 + v23) = *(*(result + 10552) + v23);
                  v23 += 16;
                }

                while (v24 != v23);
              }

              v25 = *(result + 10552);
              if (v25)
              {
                if (*(v6 + 2368) == 1)
                {
                  sub_1AFDA72A0(v25);
                }
              }

              *(v6 + 2368) = 1;
              *(result + 10552) = v22;
              *(result + 10544) = v21;
              v20 = *(result + 10540);
            }
          }

          v26 = *(result + 10552) + 16 * v20;
          *v26 = v19;
          *(v26 + 8) = 1;
          ++*(result + 10540);
          objc_msgSend__prepareUpdate(v19, v17, v18);
        }
      }
    }
  }
}

void sub_1AF365628(uint64_t result, uint64_t a2, int a3)
{
  v6 = result + 0x2000;
  if ((*(result + 10530) & 1) == 0)
  {
    v7 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFAC38(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(v6 + 2338) == 1)
  {
    v14 = *(a2 + 784);
    if (v14)
    {
      v14 = v14[25];
    }

    v15 = *(a2 + 792);
    if (v15)
    {
      if (v14)
      {
        v16 = *(v15 + 200);
        if (v16)
        {
          if ((*(v16 + 8) & v14[3]) != 0 || (*(v16 + 24) & v14[1]) != 0)
          {
            v17 = objc_msgSend__contactWithManifold_index_(VFXPhysicsContact, a2, a2, a3);
            v18 = *(result + 10540);
            if (v18 == *(result + 10544))
            {
              v19 = v18 ? 2 * v18 : 1;
              if (v18 < v19)
              {
                if (v19)
                {
                  v20 = sub_1AFDA7294(16 * v19, 16);
                  v18 = *(result + 10540);
                }

                else
                {
                  v20 = 0;
                }

                if (v18 >= 1)
                {
                  v21 = 0;
                  v22 = 16 * v18;
                  do
                  {
                    *(v20 + v21) = *(*(result + 10552) + v21);
                    v21 += 16;
                  }

                  while (v22 != v21);
                }

                v23 = *(result + 10552);
                if (v23)
                {
                  if (*(v6 + 2368) == 1)
                  {
                    sub_1AFDA72A0(v23);
                  }
                }

                *(v6 + 2368) = 1;
                *(result + 10552) = v20;
                *(result + 10544) = v19;
                v18 = *(result + 10540);
              }
            }

            v24 = *(result + 10552) + 16 * v18;
            *v24 = v17;
            *(v24 + 8) = 2;
            ++*(result + 10540);
          }
        }
      }
    }
  }
}

void sub_1AF3657D8(uint64_t a1)
{
  *a1 = &unk_1F24EC5C0;
  *(a1 + 10496) = &unk_1F24EC670;
  if (*(a1 + 10520))
  {
    v2 = *(a1 + 20);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 32) + 8 * i);
        if (v4)
        {
          if (*(v4 + 800) >= 1)
          {
            v5 = 0;
            v6 = v4 + 16;
            do
            {
              sub_1AFD93208(v4, v6);
              ++v5;
              v6 += 192;
            }

            while (v5 < *(v4 + 800));
            v2 = *(a1 + 20);
          }

          *(v4 + 800) = 0;
        }
      }
    }
  }

  v7 = *(a1 + 10552);
  if (v7 && *(a1 + 10560) == 1)
  {
    sub_1AFDA72A0(v7);
  }

  *(a1 + 10560) = 1;
  *(a1 + 10552) = 0;
  *(a1 + 10540) = 0;

  sub_1AFD73504(a1);
}

void sub_1AF3658FC(_Unwind_Exception *a1)
{
  sub_1AF35E898(v1 + 10536);
  sub_1AFD73504(v1);
  _Unwind_Resume(a1);
}

void sub_1AF365934(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 12);
    v7 = vmulq_n_f32(*a2, v6);
    v8 = vmulq_n_f32(*a3, v6);
    v9 = *a4;
    v10 = *(a4 + 2);
    v11 = 1065353216;
    sub_1AF0FE080(v5, 0, &v9, 0, v7, v8);
  }
}

void sub_1AF36599C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 12);
    v8 = vmulq_n_f32(*a2, v7);
    v9 = vmulq_n_f32(*a3, v7);
    v13 = *a4;
    v14 = *(a4 + 2);
    v15 = 1065353216;
    v10 = *a5;
    v11 = *(a5 + 2);
    v12 = 1065353216;
    sub_1AF0FED1C(v6, 0, &v13, &v10, 0, v8, v9);
  }
}

void sub_1AF365A1C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    *&v19 = *a3;
    DWORD2(v19) = *(a3 + 8);
    v6 = *a2;
    v7 = *(a2 + 16);
    v9 = *(a2 + 32);
    v8 = *(a2 + 48);
    v10 = vtrn1q_s32(*a2, v7);
    v11.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v10.i64[1] = v9.u32[0];
    HIDWORD(v19) = 1065353216;
    *v7.i8 = vzip2_s32(*v6.i8, *v7.i8);
    v7.u64[1] = vzip2_s32(*v9.i8, 0);
    v11.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
    v12 = v8;
    v12.i32[3] = 1.0;
    v17[0] = v10;
    v17[1] = v7;
    v17[2] = v11;
    v18 = v12;
    v13 = *(a1 + 12);
    if (v13 != 1.0)
    {
      v14 = vmulq_n_f32(v8, v13);
      v14.i32[3] = 1.0;
      v18 = v14;
    }

    v15 = a4 * 1.02 * v13;
    v16.n128_u64[0] = 0;
    v16.n128_u32[2] = 0;
    v16.n128_f32[3] = v15;
    sub_1AF0FE168(v5, v17, &v19, v16);
  }
}

uint64_t sub_1AF365AF0(uint64_t a1, __int128 *a2)
{
  v4[0] = xmmword_1AFE20150;
  v4[1] = xmmword_1AFE20160;
  v2 = *a2;
  v4[2] = xmmword_1AFE20180;
  v4[3] = v2;
  return (*(*a1 + 32))(a1, v4);
}

uint64_t sub_1AF365B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 16))(a1, a2, a3, a5);
  (*(*a1 + 16))(a1, a3, a4, a5);
  v10 = *(*a1 + 16);

  return v10(a1, a4, a2, a5);
}

void sub_1AF365C5C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 12);
    v9 = vmulq_n_f32(*a2, v8);
    v10 = vmlaq_n_f32(v9, vmulq_n_f32(*a3, a4), v8);
    v11 = *a6;
    v12 = *(a6 + 2);
    v13 = 1065353216;
    sub_1AF0FE080(v7, 0, &v11, 0, v9, v10);
  }
}

void sub_1AF365CD0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = a2;
    _os_log_impl(&dword_1AF0CE000, v3, OS_LOG_TYPE_DEFAULT, "Warning: PhysicsWarn: %s", &v4, 0xCu);
  }
}

uint64_t sub_1AF365D80(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4)
{
  v6 = 0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(vsubq_f32(*a3, *a2), v7);
  v9 = vmulq_f32(vaddq_f32(*a3, *a2), v7);
  v9.i32[3] = 0;
  v21 = xmmword_1AFE208C0;
  v10 = v8.f32[2];
  v17 = v9;
  v18 = v8.i64[0];
  while (1)
  {
    v11 = 0;
    v12 = v21;
    v13 = *(&v21 + 2);
    do
    {
      *v14.f32 = vmul_f32(*v8.f32, v12);
      *(&v21 + v11) = -*(&v21 + v11);
      v14.f32[2] = v10 * v13;
      v12 = v21;
      *v15.f32 = vmul_f32(*v8.f32, *&v21);
      v13 = *(&v21 + 2);
      v15.f32[2] = v10 * *(&v21 + 2);
      v14.i32[3] = 0;
      v15.i32[3] = 0;
      v19 = vaddq_f32(v15, v9);
      v20 = vaddq_f32(v14, v9);
      result = (*(*a1 + 16))(a1, &v20, &v19, a4);
      v9 = v17;
      v8.i64[0] = v18;
      v11 += 4;
    }

    while (v11 != 12);
    v21 = xmmword_1AFE47D00;
    if (v6 == 3)
    {
      break;
    }

    *(&v21 + v6) = -*(&v21 + v6);
    ++v6;
  }

  return result;
}

uint64_t sub_1AF365EC8(uint64_t a1, float32x4_t *a2, float a3)
{
  v5 = a2[3];
  v6 = vmulq_f32(LODWORD(a3), *a2);
  v7 = vmulq_f32(LODWORD(a3), a2[1]);
  v8 = vmulq_f32(LODWORD(a3), a2[2]);
  v8.i32[3] = 0;
  *v9.f32 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  *&v9.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  v21 = vaddq_f32(v5, v9);
  v22 = v5;
  v20 = xmmword_1AFE47D10;
  (*(*a1 + 16))(a1, &v22, &v21, &v20);
  LODWORD(v10) = 0;
  *(&v10 + 1) = a3;
  v11 = vmulq_f32(v10, *a2);
  v12 = vmulq_f32(v10, a2[1]);
  v13 = vmulq_f32(v10, a2[2]);
  v13.i32[3] = 0;
  *v11.f32 = vadd_f32(vpadd_f32(*v11.f32, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  v20 = xmmword_1AFE47D20;
  v21 = vaddq_f32(v11, v22);
  (*(*a1 + 16))(a1, &v22, &v21, &v20);
  v14.i64[0] = 0;
  v14.i64[1] = LODWORD(a3);
  v15 = vmulq_f32(v14, *a2);
  v16 = vmulq_f32(v14, a2[1]);
  v17 = vmulq_f32(v14, a2[2]);
  v17.i32[3] = 0;
  *v15.f32 = vadd_f32(vpadd_f32(*v15.f32, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v15.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v20 = xmmword_1AFE47D30;
  v21 = vaddq_f32(v15, v22);
  return (*(*a1 + 16))(a1, &v22, &v21, &v20);
}

void sub_1AF3660B0(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, int a6, float a7, float a8, float a9, float a10, float a11)
{
  v17 = *a4;
  v18 = vsubq_f32(vmulq_f32(*a3, vextq_s8(vextq_s8(v17, v17, 0xCuLL), *a4, 8uLL)), vmulq_f32(*a4, vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  v34 = v19;
  v20 = a10 - a9;
  if (((a10 - a9) / (a11 * 0.017453)) <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = ((a10 - a9) / (a11 * 0.017453));
  }

  v32 = vmulq_n_f32(v17, a7);
  v22 = __sincosf_stret(a9);
  v23 = vmulq_n_f32(v32, v22.__cosval);
  v23.i32[3] = 0;
  v35 = vmulq_n_f32(v34, a8);
  v24 = vmulq_n_f32(v35, v22.__sinval);
  v24.i32[3] = 0;
  v40 = vaddq_f32(vaddq_f32(*a2, v23), v24);
  if (a6)
  {
    (*(*a1 + 16))(a1, a2, &v40, a5);
  }

  v25 = a7;
  if (v21 >= 1)
  {
    v26 = v35;
    v26.i32[3] = 0;
    v36 = v26;
    v27 = v21;
    v28 = 1;
    do
    {
      v38 = vmulq_n_f32(*a4, v25);
      v29 = __sincosf_stret(((v20 * v28) / v27) + a9);
      v30 = vmulq_n_f32(v38, v29.__cosval);
      v30.i32[3] = 0;
      v31 = vmulq_n_f32(v36, v29.__sinval);
      v31.i32[3] = 0;
      v39 = vaddq_f32(vaddq_f32(*a2, v30), v31);
      (*(*a1 + 16))(a1, &v40, &v39, a5);
      v25 = a7;
      v40 = v39;
      ++v28;
      --v21;
    }

    while (v21);
  }

  if (a6)
  {
    (*(*a1 + 16))(a1, a2, &v40, a5);
  }
}

void sub_1AF3662D4(uint64_t a1, float32x4_t *a2, float32x4_t *a3, int8x16_t *a4, uint64_t a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  v69 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  v15 = vmulq_n_f32(*a3, a6);
  v16 = vsubq_f32(*a2, v15);
  v15.i32[3] = 0;
  v17 = vaddq_f32(*a2, v15);
  v16.i32[3] = 0;
  v65 = v16;
  v66 = v17;
  v18 = a11 * 0.017453;
  v19 = vsubq_f32(vmulq_f32(v14, vextq_s8(vextq_s8(*a4, *a4, 0xCuLL), *a4, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), *a4));
  v62 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v55 = a7 <= -1.5708;
  if (a7 > -1.5708)
  {
    v20 = a7;
  }

  else
  {
    v20 = v18 + -1.5708;
  }

  v56 = a8 >= 1.5708;
  if (a8 < 1.5708)
  {
    v21 = a8;
  }

  else
  {
    v21 = 1.5708 - v18;
  }

  if (v20 > v21)
  {
    v55 = 1;
    v56 = 1;
    v21 = 1.5708 - v18;
    v20 = v18 + -1.5708;
  }

  v22 = 0;
  v23 = v62;
  v23.i32[3] = 0;
  v63 = v23;
  v24 = v21 - v20;
  if ((v24 / v18) <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v24 / v18);
  }

  v26 = a9 <= a10;
  v27 = a9 > a10;
  v28 = 3.1416;
  if (a9 <= a10)
  {
    v28 = a10;
  }

  v29 = a10 - a9;
  if (v26)
  {
    v30 = a9;
  }

  else
  {
    v30 = v18 + -3.1416;
  }

  if (v29 >= 6.2832)
  {
    v27 = 1;
  }

  v59 = v27;
  v31 = ((v28 - v30) / v18);
  if (v31 <= 1)
  {
    v31 = 1;
  }

  v32 = v24 / v25;
  v33 = (v28 - v30) / v31;
  v34 = 16 * v31;
  v35 = &v67;
  v36 = &v68;
  v53 = v25;
  while (2)
  {
    v58 = v36;
    v37 = __sincosf_stret(v20 + (v22 * v32));
    v38 = 0;
    v39 = 0;
    v40 = v37.__cosval * a6;
    v41 = v22 == 0;
    v42 = v22 == v25;
    v43 = v22 == v25 && v55;
    if (v42)
    {
      v41 = 1;
    }

    v57 = v41;
    do
    {
      v44 = __sincosf_stret(v30 + (v38 * v33));
      v45 = vmulq_n_f32(*a4, v40 * v44.__cosval);
      v45.i32[3] = 0;
      v46 = vmulq_n_f32(v63, v40 * v44.__sinval);
      v46.i32[3] = 0;
      v47 = vaddq_f32(vaddq_f32(*a2, v45), v46);
      v48 = vmulq_n_f32(*a3, v37.__sinval * a6);
      v48.i32[3] = 0;
      *&v35[v39] = vaddq_f32(v47, v48);
      if (v22)
      {
        v49 = &v58[v39];
      }

      else
      {
        if (!v56)
        {
          goto LABEL_34;
        }

        v49 = &v65;
      }

      (*(*a1 + 16))(a1, v49, &v35[v39], a5);
LABEL_34:
      if (v39)
      {
        (*(*a1 + 16))(a1, &v35[v39 - 16], &v35[v39], a5);
        if (!v43)
        {
          goto LABEL_37;
        }

LABEL_36:
        (*(*a1 + 16))(a1, &v66, &v35[v39], a5);
        goto LABEL_37;
      }

      v64 = *v35;
      if (v43)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v59)
      {
        if (v34 != v39)
        {
          goto LABEL_47;
        }

        v50 = &v64;
LABEL_46:
        (*(*a1 + 16))(a1, v50, &v35[v39], a5);
        goto LABEL_47;
      }

      if (v39)
      {
        v51 = v34 == v39;
      }

      else
      {
        v51 = 1;
      }

      v52 = v57;
      if (!v51)
      {
        v52 = 0;
      }

      v50 = a2;
      if (v52)
      {
        goto LABEL_46;
      }

LABEL_47:
      v39 += 16;
      ++v38;
    }

    while (v34 + 16 != v39);
    v36 = v35;
    v35 = v58;
    v25 = v53;
    v42 = v22++ == v53;
    if (!v42)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1AF3666AC(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v8 = a2[1];
  v29 = *a2;
  LODWORD(v30) = v8;
  HIDWORD(v30) = a2[2];
  v31 = 0;
  *v27 = *a3;
  *&v27[4] = __PAIR64__(HIDWORD(v30), v8);
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27);
  v9 = a2[2];
  LODWORD(v30) = a2[1];
  HIDWORD(v30) = v9;
  v31 = 0;
  v10 = *a3;
  v29 = *a3;
  *v27 = v10;
  *&v27[8] = v9;
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v11 = a3[1];
  v29 = *a3;
  LODWORD(v30) = v11;
  HIDWORD(v30) = a2[2];
  v31 = 0;
  *v27 = *a2;
  *&v27[4] = __PAIR64__(HIDWORD(v30), v11);
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v12 = a2[2];
  LODWORD(v30) = a3[1];
  HIDWORD(v30) = v12;
  v31 = 0;
  v13 = *a2;
  v29 = *a2;
  *v27 = v13;
  *&v27[8] = v12;
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v29 = *a2;
  v30 = *(a2 + 1);
  v31 = 0;
  *v27 = v29;
  *&v27[4] = v30;
  *&v27[8] = a3[2];
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v29 = *a3;
  v30 = *(a2 + 1);
  v31 = 0;
  *v27 = v29;
  *&v27[4] = v30;
  *&v27[8] = a3[2];
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v14 = *a3;
  v15 = a2[2];
  v31 = 0;
  *v27 = v14;
  v16 = *(a3 + 1);
  v29 = v14;
  v30 = __PAIR64__(v15, v16);
  *&v27[4] = v16;
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v17 = *a2;
  v18 = a2[2];
  v31 = 0;
  *v27 = v17;
  v19 = *(a3 + 1);
  v29 = v17;
  v30 = __PAIR64__(v18, v19);
  *&v27[4] = v19;
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v20 = a2[1];
  v29 = *a2;
  LODWORD(v30) = v20;
  HIDWORD(v30) = a3[2];
  v31 = 0;
  *v27 = *a3;
  *&v27[4] = __PAIR64__(HIDWORD(v30), v20);
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v21 = a3[2];
  LODWORD(v30) = a2[1];
  HIDWORD(v30) = v21;
  v31 = 0;
  v22 = *a3;
  v29 = *a3;
  *v27 = v22;
  *&v27[8] = v21;
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v23 = a3[1];
  v29 = *a3;
  LODWORD(v30) = v23;
  HIDWORD(v30) = a3[2];
  v31 = 0;
  *v27 = *a2;
  *&v27[4] = __PAIR64__(HIDWORD(v30), v23);
  v28 = 0;
  (*(*a1 + 16))(a1, &v29, v27, a4);
  v24 = a3[2];
  LODWORD(v30) = a3[1];
  HIDWORD(v30) = v24;
  v31 = 0;
  v25 = *a2;
  v29 = *a2;
  *v27 = v25;
  *&v27[8] = v24;
  v28 = 0;
  return (*(*a1 + 16))(a1, &v29, v27, a4);
}

uint64_t sub_1AF366AF8(uint64_t a1, float32x4_t *a2, _DWORD *a3, float32x4_t *a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2->u32[2];
  v12 = *a2;
  v12.i32[2] = v11;
  v13 = a4[2];
  v14 = a4[3];
  v15 = vmulq_f32(v12, v13);
  v12.i32[3] = 0;
  v16 = *a4;
  v17 = a4[1];
  v18 = vmulq_f32(v12, *a4);
  v19 = vmulq_f32(v12, v17);
  v15.i32[3] = 0;
  v20 = &a2->i32[1];
  *v19.f32 = vadd_f32(vpadd_f32(*v18.i8, *v19.f32), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v19.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v162 = vaddq_f32(v19, v14);
  v19.i32[0] = *a3;
  v21 = a3 + 1;
  v19.i32[1] = v10.i32[1];
  v22 = &a2->i64[1];
  v19.i64[1] = v11;
  v23 = vmulq_f32(v16, v19);
  v24 = vmulq_f32(v17, v19);
  v25 = vmulq_f32(v13, v19);
  v25.i32[3] = 0;
  *v23.f32 = vadd_f32(vpadd_f32(*v23.f32, *v24.i8), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)));
  *&v23.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
  v161 = vaddq_f32(v14, v23);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v26 = a2->i32[2];
  v27 = *a3;
  v27.i32[3] = 0;
  v28 = v27;
  v28.i32[1] = *v20;
  v28.i32[2] = v26;
  v29 = *a4;
  v30 = a4[1];
  v31 = vmulq_f32(*a4, v28);
  v32 = vmulq_f32(v28, v30);
  v33 = a4[2];
  v34 = a4[3];
  v35 = vmulq_f32(v28, v33);
  v35.i32[3] = 0;
  *v31.f32 = vadd_f32(vpadd_f32(*v31.f32, *v32.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
  *&v31.u32[2] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
  v27.i32[1] = HIDWORD(*a3);
  v162 = vaddq_f32(v31, v34);
  v27.i32[2] = v26;
  v36 = vmulq_f32(v29, v27);
  v37 = vmulq_f32(v30, v27);
  v38 = vmulq_f32(v33, v27);
  v38.i32[3] = 0;
  *v36.f32 = vadd_f32(vpadd_f32(*v36.f32, *v37.i8), vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)));
  *&v36.u32[2] = vpadd_f32(vpadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), 0);
  v161 = vaddq_f32(v34, v36);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v39 = *a3;
  v40 = a2->i32[2];
  v41.i32[0] = a2->i32[0];
  v41.i32[1] = HIDWORD(*a3);
  v39.i32[2] = v40;
  v42 = v39;
  v42.i32[3] = 0;
  v43 = a4[2];
  v44 = a4[3];
  v45 = vmulq_f32(v39, v43);
  v46 = *a4;
  v47 = a4[1];
  v48 = vmulq_f32(v42, *a4);
  v49 = vmulq_f32(v42, v47);
  v45.i32[3] = 0;
  *v49.f32 = vadd_f32(vpadd_f32(*v48.i8, *v49.f32), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
  *&v49.u32[2] = vpadd_f32(vpadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)), 0);
  v162 = vaddq_f32(v49, v44);
  v41.i32[2] = v40;
  v50 = vmulq_f32(v46, v41);
  v51 = vmulq_f32(v47, v41);
  v52 = vmulq_f32(v43, v41);
  v52.i32[3] = 0;
  *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.i8), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
  *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v161 = vaddq_f32(v44, v50);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v53 = *a2;
  v53.i32[3] = 0;
  v54 = v53;
  v54.i32[1] = *v21;
  v54.i32[2] = a2->i64[1];
  v55 = a4[1];
  v56 = vmulq_f32(*a4, v54);
  v57 = vmulq_f32(v54, v55);
  v58 = a4[2];
  v59 = a4[3];
  v60 = vmulq_f32(v54, v58);
  v60.i32[3] = 0;
  *v56.f32 = vadd_f32(vpadd_f32(*v56.f32, *v57.i8), vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)));
  *&v56.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
  v53.i32[0] = *a2;
  v61 = vmulq_f32(*a4, v53);
  v62 = vmulq_f32(v55, v53);
  v63 = vmulq_f32(v58, v53);
  v63.i32[3] = 0;
  *v61.f32 = vadd_f32(vpadd_f32(*v61.f32, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)));
  *&v61.u32[2] = vpadd_f32(vpadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)), 0);
  v161 = vaddq_f32(v59, v61);
  v162 = vaddq_f32(v56, v59);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v64 = *a2;
  v64.i32[3] = 0;
  v65 = v64;
  v65.i32[2] = a2->i64[1];
  v66 = a4[1];
  v67 = vmulq_f32(*a4, v65);
  v68 = vmulq_f32(v65, v66);
  v69 = a4[2];
  v70 = a4[3];
  v71 = vmulq_f32(v65, v69);
  v71.i32[3] = 0;
  *v67.f32 = vadd_f32(vpadd_f32(*v67.f32, *v68.i8), vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL)));
  *&v67.u32[2] = vpadd_f32(vpadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)), 0);
  v64.i32[2] = a3[2];
  v72 = vmulq_f32(*a4, v64);
  v73 = vmulq_f32(v66, v64);
  v74 = vmulq_f32(v69, v64);
  v74.i32[3] = 0;
  *v72.f32 = vadd_f32(vpadd_f32(*v72.f32, *v73.i8), vzip1_s32(*&vextq_s8(v72, v72, 8uLL), *&vextq_s8(v73, v73, 8uLL)));
  *&v72.u32[2] = vpadd_f32(vpadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)), 0);
  v161 = vaddq_f32(v70, v72);
  v162 = vaddq_f32(v67, v70);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v75 = *a3;
  v75.i32[1] = *v20;
  v75.i32[3] = 0;
  v76 = v75;
  v76.i32[2] = *v22;
  v77 = a4[1];
  v78 = vmulq_f32(*a4, v76);
  v79 = vmulq_f32(v76, v77);
  v80 = a4[2];
  v81 = a4[3];
  v82 = vmulq_f32(v76, v80);
  v82.i32[3] = 0;
  *v78.f32 = vadd_f32(vpadd_f32(*v78.f32, *v79.i8), vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)));
  *&v78.u32[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
  v75.i32[2] = *(a3 + 1);
  v83 = vmulq_f32(*a4, v75);
  v84 = vmulq_f32(v77, v75);
  v85 = vmulq_f32(v80, v75);
  v85.i32[3] = 0;
  *v83.f32 = vadd_f32(vpadd_f32(*v83.f32, *v84.i8), vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v84, v84, 8uLL)));
  *&v83.u32[2] = vpadd_f32(vpadd_f32(*v85.i8, *&vextq_s8(v85, v85, 8uLL)), 0);
  v161 = vaddq_f32(v81, v83);
  v162 = vaddq_f32(v78, v81);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v86 = *a3;
  v86.i32[3] = 0;
  v87 = v86;
  v87.i32[2] = *v22;
  v88 = a4[1];
  v89 = vmulq_f32(*a4, v87);
  v90 = vmulq_f32(v87, v88);
  v91 = a4[2];
  v92 = a4[3];
  v93 = vmulq_f32(v87, v91);
  v93.i32[3] = 0;
  *v89.f32 = vadd_f32(vpadd_f32(*v89.f32, *v90.i8), vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v90, v90, 8uLL)));
  *&v89.u32[2] = vpadd_f32(vpadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)), 0);
  v86.i32[2] = *(a3 + 1);
  v94 = vmulq_f32(*a4, v86);
  v95 = vmulq_f32(v88, v86);
  v96 = vmulq_f32(v91, v86);
  v96.i32[3] = 0;
  *v94.f32 = vadd_f32(vpadd_f32(*v94.f32, *v95.i8), vzip1_s32(*&vextq_s8(v94, v94, 8uLL), *&vextq_s8(v95, v95, 8uLL)));
  *&v94.u32[2] = vpadd_f32(vpadd_f32(*v96.i8, *&vextq_s8(v96, v96, 8uLL)), 0);
  v161 = vaddq_f32(v92, v94);
  v162 = vaddq_f32(v89, v92);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v97 = *a2;
  v97.i32[1] = *v21;
  v97.i32[3] = 0;
  v98 = v97;
  v98.i32[2] = a2->i64[1];
  v99 = a4[1];
  v100 = vmulq_f32(*a4, v98);
  v101 = vmulq_f32(v98, v99);
  v102 = a4[2];
  v103 = a4[3];
  v104 = vmulq_f32(v98, v102);
  v104.i32[3] = 0;
  *v100.f32 = vadd_f32(vpadd_f32(*v100.f32, *v101.i8), vzip1_s32(*&vextq_s8(v100, v100, 8uLL), *&vextq_s8(v101, v101, 8uLL)));
  *&v100.u32[2] = vpadd_f32(vpadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL)), 0);
  v97.i32[2] = a3[2];
  v105 = vmulq_f32(*a4, v97);
  v106 = vmulq_f32(v99, v97);
  v107 = vmulq_f32(v102, v97);
  v107.i32[3] = 0;
  *v105.f32 = vadd_f32(vpadd_f32(*v105.f32, *v106.i8), vzip1_s32(*&vextq_s8(v105, v105, 8uLL), *&vextq_s8(v106, v106, 8uLL)));
  *&v105.u32[2] = vpadd_f32(vpadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)), 0);
  v161 = vaddq_f32(v103, v105);
  v162 = vaddq_f32(v100, v103);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v108 = *a2;
  v109 = a3[2];
  v110.i32[0] = *a3;
  v110.i32[1] = HIDWORD(a2->i64[0]);
  v108.i32[2] = v109;
  v111 = v108;
  v111.i32[3] = 0;
  v112 = a4[2];
  v113 = a4[3];
  v114 = vmulq_f32(v108, v112);
  v115 = *a4;
  v116 = a4[1];
  v117 = vmulq_f32(v111, *a4);
  v118 = vmulq_f32(v111, v116);
  v114.i32[3] = 0;
  *v118.f32 = vadd_f32(vpadd_f32(*v117.i8, *v118.f32), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
  *&v118.u32[2] = vpadd_f32(vpadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL)), 0);
  v162 = vaddq_f32(v118, v113);
  v110.i32[2] = v109;
  v119 = vmulq_f32(v115, v110);
  v120 = vmulq_f32(v116, v110);
  v121 = vmulq_f32(v112, v110);
  v121.i32[3] = 0;
  *v119.f32 = vadd_f32(vpadd_f32(*v119.f32, *v120.i8), vzip1_s32(*&vextq_s8(v119, v119, 8uLL), *&vextq_s8(v120, v120, 8uLL)));
  *&v119.u32[2] = vpadd_f32(vpadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL)), 0);
  v161 = vaddq_f32(v113, v119);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v122 = *a3;
  v122.i32[3] = 0;
  v123 = v122;
  v123.i32[1] = *v20;
  v123.i32[2] = *(a3 + 1);
  v124 = a4[1];
  v125 = vmulq_f32(*a4, v123);
  v126 = vmulq_f32(v123, v124);
  v127 = a4[2];
  v128 = a4[3];
  v129 = vmulq_f32(v123, v127);
  v129.i32[3] = 0;
  *v125.f32 = vadd_f32(vpadd_f32(*v125.f32, *v126.i8), vzip1_s32(*&vextq_s8(v125, v125, 8uLL), *&vextq_s8(v126, v126, 8uLL)));
  *&v125.u32[2] = vpadd_f32(vpadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)), 0);
  v122.i32[0] = *a3;
  v130 = vmulq_f32(*a4, v122);
  v131 = vmulq_f32(v124, v122);
  v132 = vmulq_f32(v127, v122);
  v132.i32[3] = 0;
  *v130.f32 = vadd_f32(vpadd_f32(*v130.f32, *v131.i8), vzip1_s32(*&vextq_s8(v130, v130, 8uLL), *&vextq_s8(v131, v131, 8uLL)));
  *&v130.u32[2] = vpadd_f32(vpadd_f32(*v132.i8, *&vextq_s8(v132, v132, 8uLL)), 0);
  v161 = vaddq_f32(v128, v130);
  v162 = vaddq_f32(v125, v128);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v133 = *a3;
  v134 = a3[2];
  v135.i32[0] = a2->i32[0];
  v135.i32[1] = HIDWORD(*a3);
  v133.i32[2] = v134;
  v136 = v133;
  v136.i32[3] = 0;
  v137 = a4[2];
  v138 = a4[3];
  v139 = vmulq_f32(v133, v137);
  v140 = *a4;
  v141 = a4[1];
  v142 = vmulq_f32(v136, *a4);
  v143 = vmulq_f32(v136, v141);
  v139.i32[3] = 0;
  *v143.f32 = vadd_f32(vpadd_f32(*v142.i8, *v143.f32), vzip1_s32(*&vextq_s8(v142, v142, 8uLL), *&vextq_s8(v143, v143, 8uLL)));
  *&v143.u32[2] = vpadd_f32(vpadd_f32(*v139.i8, *&vextq_s8(v139, v139, 8uLL)), 0);
  v162 = vaddq_f32(v143, v138);
  v135.i32[2] = v134;
  v144 = vmulq_f32(v140, v135);
  v145 = vmulq_f32(v141, v135);
  v146 = vmulq_f32(v137, v135);
  v146.i32[3] = 0;
  *v144.f32 = vadd_f32(vpadd_f32(*v144.f32, *v145.i8), vzip1_s32(*&vextq_s8(v144, v144, 8uLL), *&vextq_s8(v145, v145, 8uLL)));
  *&v144.u32[2] = vpadd_f32(vpadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL)), 0);
  v161 = vaddq_f32(v138, v144);
  (*(*a1 + 16))(a1, &v162, &v161, a5);
  v147 = a3[2];
  v148 = *a2;
  v148.i32[3] = 0;
  v149 = v148;
  v149.i32[1] = *v21;
  v149.i32[2] = v147;
  v150 = *a4;
  v151 = a4[1];
  v152 = vmulq_f32(*a4, v149);
  v153 = vmulq_f32(v149, v151);
  v154 = a4[2];
  v155 = a4[3];
  v156 = vmulq_f32(v149, v154);
  v156.i32[3] = 0;
  *v152.f32 = vadd_f32(vpadd_f32(*v152.f32, *v153.i8), vzip1_s32(*&vextq_s8(v152, v152, 8uLL), *&vextq_s8(v153, v153, 8uLL)));
  *&v152.u32[2] = vpadd_f32(vpadd_f32(*v156.i8, *&vextq_s8(v156, v156, 8uLL)), 0);
  v148.i32[1] = HIDWORD(a2->i64[0]);
  v162 = vaddq_f32(v152, v155);
  v148.i32[2] = v147;
  v157 = vmulq_f32(v150, v148);
  v158 = vmulq_f32(v151, v148);
  v159 = vmulq_f32(v154, v148);
  v159.i32[3] = 0;
  *v157.f32 = vadd_f32(vpadd_f32(*v157.f32, *v158.i8), vzip1_s32(*&vextq_s8(v157, v157, 8uLL), *&vextq_s8(v158, v158, 8uLL)));
  *&v157.u32[2] = vpadd_f32(vpadd_f32(*v159.i8, *&vextq_s8(v159, v159, 8uLL)), 0);
  v161 = vaddq_f32(v155, v157);
  return (*(*a1 + 16))(a1, &v162, &v161, a5);
}

uint64_t sub_1AF36752C(uint64_t a1, int a2, float32x4_t *a3, uint64_t a4, float32_t a5, float32_t a6)
{
  v68 = 0uLL;
  v68.f32[a2] = -a6;
  v67 = 0uLL;
  v67.f32[a2] = a6;
  v11 = a3[1];
  v63 = *a3;
  v64 = v11;
  v12 = vmulq_f32(v63, v68);
  v13 = vmulq_f32(v11, v68);
  v14 = vmulq_f32(a3[2], v68);
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vaddq_f32(a3[3], v12);
  v65 = a3[2];
  v66 = v15;
  (*(*a1 + 32))(a1, &v63, a4, a5);
  v16 = a3[1];
  v63 = *a3;
  v64 = v16;
  v17 = vmulq_f32(v63, v67);
  v18 = vmulq_f32(v16, v67);
  v19 = vmulq_f32(a3[2], v67);
  v19.i32[3] = 0;
  *v17.f32 = vadd_f32(vpadd_f32(*v17.f32, *v18.i8), vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
  *&v17.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v20 = vaddq_f32(a3[3], v17);
  v65 = a3[2];
  v66 = v20;
  (*(*a1 + 32))(a1, &v63, a4, a5);
  v21 = (a2 + 1) % 3;
  v68.f32[v21] = a5;
  v67.f32[v21] = a5;
  v22 = *a3;
  v23 = a3[1];
  v24 = vmulq_f32(*a3, v68);
  v25 = vmulq_f32(v68, v23);
  v26 = a3[2];
  v27 = a3[3];
  v28 = vmulq_f32(v68, v26);
  v28.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v63 = vaddq_f32(v27, v24);
  v29 = vmulq_f32(v22, v67);
  v30 = vmulq_f32(v23, v67);
  v31 = vmulq_f32(v26, v67);
  v31.i32[3] = 0;
  *v29.f32 = vadd_f32(vpadd_f32(*v29.f32, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
  *&v29.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  v61 = v27;
  v62 = vaddq_f32(v27, v29);
  (*(*a1 + 16))(a1, &v63, &v62, a4);
  v68.f32[v21] = -a5;
  v67.f32[v21] = -a5;
  v32 = *a3;
  v33 = a3[1];
  v34 = vmulq_f32(*a3, v68);
  v35 = vmulq_f32(v68, v33);
  v36 = a3[2];
  v37 = vmulq_f32(v68, v36);
  v37.i32[3] = 0;
  *v34.f32 = vadd_f32(vpadd_f32(*v34.f32, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  *&v34.u32[2] = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
  v63 = vaddq_f32(v61, v34);
  v38 = vmulq_f32(v32, v67);
  v39 = vmulq_f32(v33, v67);
  v40 = vmulq_f32(v36, v67);
  v40.i32[3] = 0;
  *v38.f32 = vadd_f32(vpadd_f32(*v38.f32, *v39.i8), vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)));
  *&v38.u32[2] = vpadd_f32(vpadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)), 0);
  v62 = vaddq_f32(v61, v38);
  (*(*a1 + 16))(a1, &v63, &v62, a4);
  v68.i32[v21] = 0;
  v67.i32[v21] = 0;
  v41 = (a2 + 2) % 3;
  v68.f32[v41] = a5;
  v67.f32[v41] = a5;
  v42 = *a3;
  v43 = a3[1];
  v44 = vmulq_f32(*a3, v68);
  v45 = vmulq_f32(v68, v43);
  v46 = a3[2];
  v47 = vmulq_f32(v68, v46);
  v47.i32[3] = 0;
  *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
  v63 = vaddq_f32(v61, v44);
  v48 = vmulq_f32(v42, v67);
  v49 = vmulq_f32(v43, v67);
  v50 = vmulq_f32(v46, v67);
  v50.i32[3] = 0;
  *v48.f32 = vadd_f32(vpadd_f32(*v48.f32, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
  *&v48.u32[2] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
  v62 = vaddq_f32(v61, v48);
  (*(*a1 + 16))(a1, &v63, &v62, a4);
  v68.f32[v41] = -a5;
  v67.f32[v41] = -a5;
  v51 = *a3;
  v52 = a3[1];
  v53 = vmulq_f32(*a3, v68);
  v54 = vmulq_f32(v68, v52);
  v55 = a3[2];
  v56 = vmulq_f32(v68, v55);
  v56.i32[3] = 0;
  *v53.f32 = vadd_f32(vpadd_f32(*v53.f32, *v54.i8), vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)));
  *&v53.u32[2] = vpadd_f32(vpadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)), 0);
  v63 = vaddq_f32(v61, v53);
  v57 = vmulq_f32(v51, v67);
  v58 = vmulq_f32(v52, v67);
  v59 = vmulq_f32(v55, v67);
  v59.i32[3] = 0;
  *v57.f32 = vadd_f32(vpadd_f32(*v57.f32, *v58.i8), vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
  *&v57.u32[2] = vpadd_f32(vpadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)), 0);
  v62 = vaddq_f32(v61, v57);
  return (*(*a1 + 16))(a1, &v63, &v62, a4);
}

uint64_t sub_1AF367A10(uint64_t a1, int a2, float32x4_t *a3, uint64_t a4, float32_t a5, float32_t a6)
{
  v73 = 0uLL;
  v73.f32[a2] = a6;
  v11 = (a2 + 1) % 3;
  v72 = 0uLL;
  v72.f32[v11] = a5;
  v12 = vaddq_f32(v73, v72);
  v60 = v72;
  v13 = a3[1];
  v14 = vmulq_f32(*a3, v12);
  v15 = vmulq_f32(v12, v13);
  v16 = a3[2];
  v17 = a3[3];
  v18 = vmulq_f32(v12, v16);
  v18.i32[3] = 0;
  *v14.f32 = vadd_f32(vpadd_f32(*v14.f32, *v15.i8), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)));
  *&v14.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v62 = v73;
  v64 = vnegq_f32(v73);
  v66 = v17;
  v19 = vsubq_f32(v72, v73);
  v20 = vmulq_f32(*a3, v19);
  v21 = vmulq_f32(v13, v19);
  v22 = vmulq_f32(v16, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  v70 = vaddq_f32(v17, v20);
  v71 = vaddq_f32(v17, v14);
  (*(*a1 + 16))(a1, &v71, &v70);
  v23 = vsubq_f32(v62, v60);
  v25 = a3[1];
  v24 = a3[2];
  v26 = vmulq_f32(v24, v23);
  v23.i32[3] = 0;
  v27 = vmulq_f32(*a3, v23);
  v28 = vmulq_f32(v25, v23);
  v26.i32[3] = 0;
  *v28.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.f32), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
  *&v28.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v29 = vaddq_f32(v66, v28);
  v30 = vsubq_f32(v64, v60);
  v31 = vmulq_f32(v24, v30);
  v30.i32[3] = 0;
  v32 = vmulq_f32(*a3, v30);
  v33 = vmulq_f32(v25, v30);
  v31.i32[3] = 0;
  *v33.f32 = vadd_f32(vpadd_f32(*v32.i8, *v33.f32), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
  *&v33.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  v70 = vaddq_f32(v66, v33);
  v71 = v29;
  (*(*a1 + 16))(a1, &v71, &v70, a4);
  v71 = 0uLL;
  v71.i32[a2] = 1065353216;
  v70 = 0uLL;
  v70.i32[v11] = 1065353216;
  v65 = v73;
  v34 = *a3;
  v35 = a3[1];
  v36 = vmulq_f32(*a3, v73);
  v37 = vmulq_f32(v73, v35);
  v38 = a3[2];
  v39 = vmulq_f32(v73, v38);
  v39.i32[3] = 0;
  *v36.f32 = vadd_f32(vpadd_f32(*v36.f32, *v37.i8), vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)));
  *&v36.u32[2] = vpadd_f32(vpadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), 0);
  v40 = vsubq_f32(v66, v36);
  v40.i32[3] = 0;
  v69 = v40;
  v63 = v71;
  v41 = vmulq_f32(v34, v71);
  v42 = vmulq_f32(v35, v71);
  v43 = vmulq_f32(v38, v71);
  v43.i32[3] = 0;
  *v41.i8 = vadd_f32(vpadd_f32(*v41.i8, *v42.i8), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
  v41.u64[1] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
  v61 = v70;
  v44 = vmulq_f32(v34, v70);
  v45 = vmulq_f32(v35, v70);
  v46 = vmulq_f32(v38, v70);
  v46.i32[3] = 0;
  *v44.i8 = vadd_f32(vpadd_f32(*v44.i8, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  v44.u64[1] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
  v67 = v44;
  v68 = v41;
  (*(*a1 + 120))(a1, &v69, &v68, &v67, a4, 0, a5, a5, 0.0, 6.2832, 10.0);
  v47 = *a3;
  v48 = a3[1];
  v49 = vmulq_f32(v65, *a3);
  v50 = vmulq_f32(v65, v48);
  v51 = a3[2];
  v52 = vmulq_f32(v65, v51);
  v52.i32[3] = 0;
  *v49.f32 = vadd_f32(vpadd_f32(*v49.f32, *v50.i8), vzip1_s32(*&vextq_s8(v49, v49, 8uLL), *&vextq_s8(v50, v50, 8uLL)));
  *&v49.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v69 = vaddq_f32(v66, v49);
  v53 = vmulq_f32(v63, v47);
  v54 = vmulq_f32(v63, v48);
  v55 = vmulq_f32(v63, v51);
  v55.i32[3] = 0;
  *v53.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.i8));
  v53.u64[1] = vpadd_f32(vpadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)), 0);
  v56 = vmulq_f32(v61, v47);
  v57 = vmulq_f32(v61, v48);
  v58 = vmulq_f32(v61, v51);
  v58.i32[3] = 0;
  *v56.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)), vpadd_f32(*v56.i8, *v57.i8));
  v56.u64[1] = vpadd_f32(vpadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)), 0);
  v67 = v56;
  v68 = v53;
  return (*(*a1 + 120))(a1, &v69, &v68, &v67, a4, 0, a5, a5, 0.0, 6.2832, 10.0);
}

uint64_t sub_1AF367E9C(uint64_t a1, int a2, float32x4_t *a3, uint64_t a4, float32_t a5, float a6)
{
  v81 = 0uLL;
  v81.f32[a2] = a6 * 0.5;
  v11 = (a2 + 1) % 3;
  v80 = 0uLL;
  v80.f32[v11] = a5;
  v79 = 0uLL;
  v79.f32[(a2 + 2) % 3] = a5;
  v12 = *a3;
  v13 = a3[1];
  v14 = vmulq_f32(*a3, v81);
  v15 = vmulq_f32(v81, v13);
  v16 = a3[2];
  v17 = a3[3];
  v18 = vmulq_f32(v81, v16);
  v18.i32[3] = 0;
  *v14.f32 = vadd_f32(vpadd_f32(*v14.f32, *v15.i8), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)));
  *&v14.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v78 = vaddq_f32(v17, v14);
  v71 = vnegq_f32(v81);
  v73 = v17;
  v67 = v81;
  v69 = v80;
  v19 = vsubq_f32(v80, v81);
  v20 = vmulq_f32(v12, v19);
  v21 = vmulq_f32(v13, v19);
  v22 = vmulq_f32(v16, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  v77 = vaddq_f32(v17, v20);
  (*(*a1 + 16))(a1, &v78, &v77);
  v23 = a3[1];
  v24 = vmulq_f32(*a3, v67);
  v25 = vmulq_f32(v67, v23);
  v26 = a3[2];
  v27 = vmulq_f32(v67, v26);
  v27.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v28 = vaddq_f32(v73, v24);
  v29 = vsubq_f32(v71, v69);
  v30 = vmulq_f32(v26, v29);
  v29.i32[3] = 0;
  v31 = vmulq_f32(*a3, v29);
  v32 = vmulq_f32(v23, v29);
  v30.i32[3] = 0;
  *v31.f32 = vadd_f32(vpadd_f32(*v31.f32, *v32.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
  *&v31.u32[2] = vpadd_f32(vpadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), 0);
  v77 = vaddq_f32(v73, v31);
  v78 = v28;
  (*(*a1 + 16))(a1, &v78, &v77, a4);
  v33 = *a3;
  v34 = a3[1];
  v35 = vmulq_f32(*a3, v81);
  v36 = vmulq_f32(v81, v34);
  v37 = a3[2];
  v38 = vmulq_f32(v81, v37);
  v38.i32[3] = 0;
  *v35.f32 = vadd_f32(vpadd_f32(*v35.f32, *v36.i8), vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
  *&v35.u32[2] = vpadd_f32(vpadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), 0);
  v78 = vaddq_f32(v73, v35);
  v72 = vnegq_f32(v81);
  v68 = v81;
  v70 = v79;
  v39 = vsubq_f32(v79, v81);
  v40 = vmulq_f32(v33, v39);
  v41 = vmulq_f32(v34, v39);
  v42 = vmulq_f32(v37, v39);
  v42.i32[3] = 0;
  *v40.f32 = vadd_f32(vpadd_f32(*v40.f32, *v41.i8), vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
  *&v40.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
  v77 = vaddq_f32(v73, v40);
  (*(*a1 + 16))(a1, &v78, &v77, a4);
  v43 = a3[1];
  v44 = vmulq_f32(*a3, v68);
  v45 = vmulq_f32(v68, v43);
  v46 = a3[2];
  v47 = vmulq_f32(v68, v46);
  v47.i32[3] = 0;
  *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
  v48 = vaddq_f32(v73, v44);
  v49 = vsubq_f32(v72, v70);
  v50 = vmulq_f32(v46, v49);
  v49.i32[3] = 0;
  v51 = vmulq_f32(*a3, v49);
  v52 = vmulq_f32(v43, v49);
  v50.i32[3] = 0;
  *v51.f32 = vadd_f32(vpadd_f32(*v51.f32, *v52.i8), vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)));
  *&v51.u32[2] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
  v77 = vaddq_f32(v73, v51);
  v78 = v48;
  (*(*a1 + 16))(a1, &v78, &v77, a4);
  v78 = 0uLL;
  v78.i32[a2] = 1065353216;
  v77 = 0uLL;
  v77.i32[v11] = 1065353216;
  v53 = *a3;
  v54 = a3[1];
  v55 = vmulq_f32(*a3, v81);
  v56 = vmulq_f32(v81, v54);
  v57 = a3[2];
  v58 = vmulq_f32(v81, v57);
  v58.i32[3] = 0;
  *v55.f32 = vadd_f32(vpadd_f32(*v55.f32, *v56.i8), vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v56, v56, 8uLL)));
  *&v55.u32[2] = vpadd_f32(vpadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)), 0);
  v59 = vsubq_f32(v73, v55);
  v59.i32[3] = 0;
  v76 = v59;
  v60 = vmulq_f32(v53, v78);
  v61 = vmulq_f32(v54, v78);
  v62 = vmulq_f32(v57, v78);
  v62.i32[3] = 0;
  *v60.i8 = vadd_f32(vpadd_f32(*v60.i8, *v61.i8), vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)));
  v60.u64[1] = vpadd_f32(vpadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)), 0);
  v63 = vmulq_f32(v53, v77);
  v64 = vmulq_f32(v54, v77);
  v65 = vmulq_f32(v57, v77);
  v65.i32[3] = 0;
  *v63.i8 = vadd_f32(vpadd_f32(*v63.i8, *v64.i8), vzip1_s32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v64, v64, 8uLL)));
  v63.u64[1] = vpadd_f32(vpadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL)), 0);
  v74 = v63;
  v75 = v60;
  return (*(*a1 + 120))(a1, &v76, &v75, &v74, a4, 0, a5, a5, 0.0, 6.2832, 10.0);
}

uint64_t sub_1AF3683C4(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float a5, float32x4_t a6)
{
  v9 = *a2;
  LODWORD(v10) = a2->i64[1];
  LODWORD(v11) = HIDWORD(a2->i64[0]);
  if (fabsf(v10) <= 0.70711)
  {
    v16 = (v11 * v11) + (v9.f32[0] * v9.f32[0]);
    v17 = 1.0 / sqrtf(v16);
    v18 = vextq_s8(v9, v9, 8uLL);
    *v18.i8 = vzip1_s32(*v9.f32, *v18.i8);
    v19 = v18;
    *&v19.i32[1] = -v11;
    *v19.i8 = vmul_n_f32(*v19.i8, v17);
    v15 = vrev64q_s32(v19).u64[0];
    *v18.i32 = -v10;
    *a6.f32 = vmul_f32(*v19.i8, *v18.i8);
    a6.f32[2] = v16 * v17;
  }

  else
  {
    v12 = (v10 * v10) + (v11 * v11);
    v13 = 1.0 / sqrtf(v12);
    *&v14 = v11 * v13;
    v15.i32[0] = 0;
    v15.f32[1] = -(v10 * v13);
    v15.i64[1] = v14;
    a6.f32[0] = v12 * v13;
    a6.f32[1] = -(v9.f32[0] * *&v14);
    a6.f32[2] = v9.f32[0] * v15.f32[1];
  }

  v20 = vmulq_n_f32(v9, a5);
  v20.i32[3] = 0;
  v21 = vdupq_n_s32(0x42C80000u);
  v22 = vmulq_f32(v15, v21);
  v22.i32[3] = 0;
  v23 = vaddq_f32(v20, v22);
  v24 = vsubq_f32(v20, v22);
  v25 = a3[2];
  v26 = a3[3];
  v27 = vmulq_f32(v25, v24);
  v24.i32[3] = 0;
  v28 = vmulq_f32(a6, v21);
  v28.i32[3] = 0;
  v29 = vaddq_f32(v20, v28);
  v30 = vsubq_f32(v20, v28);
  v50 = v30;
  v30.i32[3] = 0;
  v48 = v29;
  v49 = v30;
  v31 = a3[1];
  v32 = vmulq_f32(*a3, v23);
  v33 = vmulq_f32(v31, v23);
  v34 = vmulq_f32(v25, v23);
  v34.i32[3] = 0;
  *v32.f32 = vadd_f32(vpadd_f32(*v32.f32, *v33.i8), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
  *&v32.u32[2] = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
  v35 = vmulq_f32(*a3, v24);
  v36 = vmulq_f32(v31, v24);
  v27.i32[3] = 0;
  *v35.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vpadd_f32(*v35.f32, *v36.i8));
  *&v35.u32[2] = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v51 = vaddq_f32(v26, v35);
  v52 = vaddq_f32(v32, v26);
  (*(*a1 + 16))(a1, &v52, &v51, a4);
  v37 = *a3;
  v38 = a3[1];
  v39 = vmulq_f32(v48, *a3);
  v40 = vmulq_f32(v48, v38);
  v41 = a3[2];
  v42 = a3[3];
  v43 = vmulq_f32(v48, v41);
  v43.i32[3] = 0;
  *v39.f32 = vadd_f32(vpadd_f32(*v39.f32, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
  *&v39.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
  v52 = vaddq_f32(v39, v42);
  v44 = vmulq_f32(v37, v49);
  v45 = vmulq_f32(v38, v49);
  v46 = vmulq_f32(v41, v50);
  v46.i32[3] = 0;
  *v44.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vpadd_f32(*v44.f32, *v45.i8));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
  v51 = vaddq_f32(v42, v44);
  return (*(*a1 + 16))(a1, &v52, &v51, a4);
}

double sub_1AF368664(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  *(a1 + 8) = 1065353216;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1AFE47B90;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F24EC768;
  *(a1 + 64) = *a2;
  *(a1 + 80) = *a3;
  *(a1 + 168) = 1;
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 148) = 0;
  *(a1 + 200) = 1;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0;
  *(a1 + 232) = 1;
  *(a1 + 224) = 0;
  *(a1 + 212) = 0;
  *(a1 + 264) = 1;
  *(a1 + 256) = 0;
  *(a1 + 244) = 0;
  *(a1 + 24) = -1;
  *(a1 + 40) = 0;
  return result;
}

void sub_1AF3686F8(uint64_t a1)
{
  *a1 = &unk_1F24EC768;
  v2 = *(a1 + 256);
  if (v2 && *(a1 + 264) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 264) = 1;
  *(a1 + 256) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  v3 = *(a1 + 224);
  if (v3 && *(a1 + 232) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 232) = 1;
  *(a1 + 224) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  v4 = *(a1 + 192);
  if (v4 && *(a1 + 200) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 200) = 1;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  v5 = *(a1 + 160);
  if (v5 && *(a1 + 168) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 168) = 1;
  *(a1 + 160) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;

  JUMPOUT(0x1B271C6B0);
}

BOOL sub_1AF3687EC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a1[4] & v2) != 0 && (*(a2 + 16) & a1[3]) != 0;
  return (a1[5] & v2) != 0 || v3;
}

float32_t sub_1AF368824(float32x4_t *a1, uint64_t a2, int a3)
{
  v5 = *a2;
  a1[1].i64[0] = *a2;
  v6 = *(a2 + 16);
  if (!a3)
  {
    v7 = vmulq_f32(v5[1], v6);
    v8 = vmulq_f32(v6, v5[2]);
    v9 = vmulq_f32(v6, v5[3]);
    v9.i32[3] = 0;
    *v6.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
    *&v6.u32[2] = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
  }

  a1[7] = v6;
  a1[8] = vaddq_f32(a1[4], vmulq_n_f32(vsubq_f32(a1[5], a1[4]), *(a2 + 32)));
  v10 = a1[6].i32[0];
  if (v10 == 1)
  {
    return 0.0;
  }

  if (!v10)
  {
    result = *(a2 + 32);
    a1->f32[2] = result;
    return result;
  }

  v12 = a1[9].i32[1];
  if (v12 == a1[9].i32[2])
  {
    v13 = v12 ? 2 * v12 : 1;
    if (v12 < v13)
    {
      if (v13)
      {
        v14 = sub_1AFDA7294(8 * v13, 16);
        v12 = a1[9].i32[1];
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= 1)
      {
        v15 = 0;
        do
        {
          *(v14 + v15) = *(a1[10].i64[0] + v15);
          v15 += 8;
        }

        while (8 * v12 != v15);
      }

      v16 = a1[10].i64[0];
      if (v16 && a1[10].i8[8] == 1)
      {
        sub_1AFDA72A0(v16);
        v12 = a1[9].i32[1];
      }

      a1[10].i8[8] = 1;
      a1[10].i64[0] = v14;
      a1[9].i32[2] = v13;
    }
  }

  *(a1[10].i64[0] + 8 * v12) = *a2;
  a1[9].i32[1] = v12 + 1;
  v17 = a1[13].i32[1];
  if (v17 == a1[13].i32[2])
  {
    v18 = v17 ? 2 * v17 : 1;
    if (v17 < v18)
    {
      if (v18)
      {
        v19 = sub_1AFDA7294(16 * v18, 16);
        v17 = a1[13].i32[1];
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= 1)
      {
        v20 = 0;
        v21 = 16 * v17;
        do
        {
          *(v19 + v20) = *(a1[14].i64[0] + v20);
          v20 += 16;
        }

        while (v21 != v20);
      }

      v22 = a1[14].i64[0];
      if (v22 && a1[14].i8[8] == 1)
      {
        sub_1AFDA72A0(v22);
      }

      a1[14].i8[8] = 1;
      a1[14].i64[0] = v19;
      a1[13].i32[2] = v18;
      v17 = a1[13].i32[1];
    }
  }

  *(a1[14].i64[0] + 16 * v17) = a1[8];
  ++a1[13].i32[1];
  v23 = a1[11].i32[1];
  if (v23 == a1[11].i32[2])
  {
    v24 = v23 ? 2 * v23 : 1;
    if (v23 < v24)
    {
      if (v24)
      {
        v25 = sub_1AFDA7294(16 * v24, 16);
        v23 = a1[11].i32[1];
      }

      else
      {
        v25 = 0;
      }

      if (v23 >= 1)
      {
        v26 = 0;
        v27 = 16 * v23;
        do
        {
          *(v25 + v26) = *(a1[12].i64[0] + v26);
          v26 += 16;
        }

        while (v27 != v26);
      }

      v28 = a1[12].i64[0];
      if (v28 && a1[12].i8[8] == 1)
      {
        sub_1AFDA72A0(v28);
      }

      a1[12].i8[8] = 1;
      a1[12].i64[0] = v25;
      a1[11].i32[2] = v24;
      v23 = a1[11].i32[1];
    }
  }

  *(a1[12].i64[0] + 16 * v23) = a1[7];
  ++a1[11].i32[1];
  v29 = a1[15].i32[1];
  if (v29 == a1[15].i32[2])
  {
    v30 = v29 ? 2 * v29 : 1;
    if (v29 < v30)
    {
      if (v30)
      {
        v31 = sub_1AFDA7294(4 * v30, 16);
        v29 = a1[15].i32[1];
      }

      else
      {
        v31 = 0;
      }

      v32 = a1[16].i64[0];
      if (v29 < 1)
      {
        if (!v32)
        {
LABEL_68:
          a1[16].i8[8] = 1;
          a1[16].i64[0] = v31;
          a1[15].i32[2] = v30;
          goto LABEL_69;
        }
      }

      else
      {
        v33 = v29;
        v34 = v31;
        v35 = a1[16].i64[0];
        do
        {
          v36 = *v35++;
          *v34++ = v36;
          --v33;
        }

        while (v33);
      }

      if (a1[16].i8[8] == 1)
      {
        sub_1AFDA72A0(v32);
        v29 = a1[15].i32[1];
      }

      a1[16].i64[0] = 0;
      goto LABEL_68;
    }
  }

LABEL_69:
  *(a1[16].i64[0] + 4 * v29) = *(a2 + 32);
  a1[15].i32[1] = v29 + 1;
  return 0.999;
}

uint64_t sub_1AF368B9C(uint64_t a1)
{
  *a1 = &unk_1F24EC768;
  v2 = *(a1 + 256);
  if (v2 && *(a1 + 264) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 264) = 1;
  *(a1 + 256) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  v3 = *(a1 + 224);
  if (v3 && *(a1 + 232) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 232) = 1;
  *(a1 + 224) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  v4 = *(a1 + 192);
  if (v4 && *(a1 + 200) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 200) = 1;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  v5 = *(a1 + 160);
  if (v5 && *(a1 + 168) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 168) = 1;
  *(a1 + 160) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  return a1;
}

float sub_1AF368CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1AF363F94(*(a3 + 16), *(a6 + 16), (a2 + 32), (a2 + 64), *(a2 + 80), 0.0);
  if (v7)
  {
    v9 = v7;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, 0);
      *(a1 + 48) = v10;
    }

    objc_msgSend_addObject_(v10, v8, v9);
  }

  return 0.999;
}

BOOL sub_1AF368D38(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a1[3] & v2) != 0 && (*(a2 + 16) & a1[2]) != 0;
  return (a1[4] & v2) != 0 || v3;
}

float sub_1AF368D70(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  *(a1 + 88) = *a2;
  v6 = *(a2 + 16);
  if (!a3)
  {
    v7 = vmulq_f32(v5[1], v6);
    v8 = vmulq_f32(v6, v5[2]);
    v9 = vmulq_f32(v6, v5[3]);
    v9.i32[3] = 0;
    *v6.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
    *&v6.u32[2] = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
  }

  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 8) = v10;
  v11 = *(a1 + 80);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0.0;
    }

    else
    {
      if (!*(a1 + 128))
      {
        *(a1 + 128) = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 0);
        v10 = *(a1 + 8);
      }

      v12 = sub_1AF363F94(*a2, 0, (a1 + 112), (a1 + 96), 0.0, v10);
      v10 = 0.999;
      if (v12)
      {
        objc_msgSend_addObject_(*(a1 + 128), v13, v12);
      }
    }
  }

  return v10;
}

uint64_t sub_1AF368EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*(*a3 + 264) == 4)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(*a2 + 264) == 4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (*(*v5 + 56))(v5, a3, a2);
  }

  if (v6)
  {
    (*(*v6 + 56))(v6, a2, a3);
  }

  return 0;
}

uint64_t sub_1AF368F54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a2;
  if (*(*a3 + 264) == 4)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = *(*a2 + 264) == 4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    (*(*v7 + 64))(v7, a3, a4, a2);
  }

  if (v8)
  {
    (*(*v8 + 64))(v8, a2, a4, a3);
  }

  return 0;
}

uint64_t sub_1AF369018(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 4);
  if (v3 < 1)
  {
    *(a1 + 4) = v3;
  }

  else
  {
    v5 = sub_1AFDA7294(8 * v3, 16);
    v6 = v5;
    v7 = *(a1 + 4);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        *(v5 + v8) = *(*(a1 + 16) + v8);
        v8 += 8;
      }

      while (v9 != v8);
    }

    v10 = *(a1 + 16);
    if (v10 && *(a1 + 24) == 1)
    {
      sub_1AFDA72A0(v10);
    }

    v11 = 0;
    *(a1 + 24) = 1;
    *(a1 + 16) = v6;
    *(a1 + 8) = v3;
    do
    {
      *(*(a1 + 16) + 8 * v11++) = 0;
    }

    while (v3 != v11);
    v12 = 0;
    v13 = *(a1 + 16);
    *(a1 + 4) = v3;
    do
    {
      *(v13 + 8 * v12) = *(*(a2 + 16) + 8 * v12);
      ++v12;
    }

    while (v3 != v12);
  }

  return a1;
}

uint64_t sub_1AF369114(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_requiresSecureCoding(a1, a2, a3))
  {

    return MEMORY[0x1EEE66B58](a1, sel_decodeArrayOfObjectsOfClass_forKey_, a3);
  }

  else
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v9, v8, a3, 0);

    return objc_msgSend_decodeObjectOfClasses_forKey_(a1, v10, v11, a4);
  }
}

uint64_t sub_1AF3691C4(void *a1, const char *a2, void *a3, uint64_t a4)
{
  if (objc_msgSend_requiresSecureCoding(a1, a2, a3))
  {

    return MEMORY[0x1EEE66B58](a1, sel_decodeArrayOfObjectsOfClasses_forKey_, a3);
  }

  else
  {
    v7 = objc_opt_class();
    v10 = objc_msgSend_setByAddingObject_(a3, v8, v7);

    return objc_msgSend_decodeObjectOfClasses_forKey_(a1, v9, v10, a4);
  }
}

uint64_t sub_1AF36925C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = a3;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v15, 2);
  v11 = objc_msgSend_setWithArray_(v7, v10, v9);
  v13 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v12, v11, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF36932C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = objc_opt_class();
  v9 = objc_msgSend_setByAddingObject_(a3, v8, v7);
  v11 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v10, v9, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3693A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_requiresSecureCoding(a1, a2, a3))
  {

    return MEMORY[0x1EEE66B58](a1, sel_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_, a3);
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v9, v11, v10, a3, a4, 0);

    return objc_msgSend_decodeObjectOfClasses_forKey_(a1, v12, v13, a5);
  }
}

uint64_t sub_1AF36946C(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_requiresSecureCoding(a1, a2, a3))
  {

    return MEMORY[0x1EEE66B58](a1, sel_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_, a3);
  }

  else
  {
    v10 = objc_msgSend_setByAddingObjectsFromSet_(a3, v9, a4);
    v11 = objc_opt_class();
    v14 = objc_msgSend_setByAddingObject_(v10, v12, v11);

    return objc_msgSend_decodeObjectOfClasses_forKey_(a1, v13, v14, a5);
  }
}

uint64_t sub_1AF36951C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = a3;
  v17[2] = a4;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v17, 3);
  v13 = objc_msgSend_setWithArray_(v9, v12, v11);
  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v14, v13, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3695F8(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_setByAddingObjectsFromSet_(a3, a2, a4);
  v8 = objc_opt_class();
  v10 = objc_msgSend_setByAddingObject_(v7, v9, v8);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v11, v10, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

void sub_1AF36967C(NSMapTable *a1, uint64_t a2, uint64_t a3)
{
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, a1);
  value = 0;
  key = 0;
  do
  {
    if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      break;
    }

    v4 = 0;
    (*(a3 + 16))(a3, key, value, &v4);
  }

  while (v4 != 1);
  NSEndMapTableEnumeration(&enumerator);
}

id sub_1AF3696FC(void *a1, const char *a2, uint64_t a3, compression_stream_operation a4)
{
  v5 = a3;
  if (!objc_msgSend_length(a1, a2, a3))
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  if (a4)
  {
    if (a4 != COMPRESSION_STREAM_DECODE)
    {
      return 0;
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (compression_stream_init(&v21, a4, v5) == COMPRESSION_STATUS_ERROR)
  {
    return 0;
  }

  v21.src_ptr = objc_msgSend_bytes(a1, v8, v9, *&v21.dst_ptr, *&v21.src_ptr, v21.state);
  v21.src_size = objc_msgSend_length(a1, v10, v11);
  v12 = malloc_type_malloc(0x1000uLL, 0xF73493BEuLL);
  v21.dst_ptr = v12;
  v21.dst_size = 4096;
  v13 = objc_opt_new();
  while (1)
  {
    v14 = compression_stream_process(&v21, v7);
    if (v14)
    {
      break;
    }

    if (!v21.dst_size)
    {
      objc_msgSend_appendBytes_length_(v13, v15, v12, 4096);
      v21.dst_ptr = v12;
      v21.dst_size = 4096;
    }
  }

  if (v14 == COMPRESSION_STATUS_ERROR)
  {
    free(v12);
    return 0;
  }

  if (v14 == COMPRESSION_STATUS_END && v21.dst_ptr > v12)
  {
    objc_msgSend_appendBytes_length_(v13, v15, v12, &v21.dst_ptr[-v12]);
  }

  compression_stream_destroy(&v21);
  free(v12);
  v18 = objc_msgSend_length(v13, v16, v17);
  objc_msgSend_setLength_(v13, v19, v18);
  return v13;
}

id sub_1AF369860(void *a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3);
  switch(a3)
  {
    case 4:
      v34 = objc_msgSend_bytes(a1, v5, v6);
      v37 = objc_msgSend_bytes(v7, v35, v36);
      v38 = *v34;
      *v37 = *v34;
      v41 = objc_msgSend_length(a1, v39, v40);
      if (v41 >= 8)
      {
        v42 = (v41 >> 2) - 1;
        v43 = v37 + 1;
        v44 = v34 + 1;
        do
        {
          *v43++ = v38 - *v44;
          v46 = *v44++;
          v45 = v46;
          if (v46 > v38)
          {
            v38 = v45;
          }

          --v42;
        }

        while (v42);
      }

      break;
    case 2:
      v21 = objc_msgSend_bytes(a1, v5, v6);
      v24 = objc_msgSend_bytes(v7, v22, v23);
      v25 = *v21;
      *v24 = *v21;
      v28 = objc_msgSend_length(a1, v26, v27);
      if (v28 >= 4)
      {
        v29 = (v28 >> 1) - 1;
        v30 = v24 + 1;
        v31 = v21 + 1;
        do
        {
          *v30++ = v25 - *v31;
          v33 = *v31++;
          v32 = v33;
          if (v33 > v25)
          {
            v25 = v32;
          }

          --v29;
        }

        while (v29);
      }

      break;
    case 1:
      v8 = objc_msgSend_bytes(a1, v5, v6);
      v11 = objc_msgSend_bytes(v7, v9, v10);
      v12 = *v8;
      *v11 = *v8;
      v15 = objc_msgSend_length(a1, v13, v14);
      if (v15 >= 2)
      {
        v16 = v15 - 1;
        v17 = v11 + 1;
        v18 = v8 + 1;
        do
        {
          *v17++ = v12 - *v18;
          v20 = *v18++;
          v19 = v20;
          if (v20 > v12)
          {
            v12 = v19;
          }

          --v16;
        }

        while (v16);
      }

      break;
  }

  return v7;
}