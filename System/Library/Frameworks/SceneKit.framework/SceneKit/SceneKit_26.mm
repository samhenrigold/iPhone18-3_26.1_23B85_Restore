void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void *std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

float MaterialMap::getFloatScale(MaterialMap *this)
{
  if (!*(this + 9))
  {
    return 1.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1.0;
  }

  v2 = *(this + 9);

  [v2 floatValue];
  return result;
}

void std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MaterialMap>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MaterialMap>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

NSString *USDKitConverter::makeUniqueBlendShapeName(USDKitConverter *this, NSString *a2, NSString *a3)
{
  v3 = a3;
  v6 = [(NSString *)a3 length];
  if (v6 > [USDKitConverter::getGeomPath(this) length])
  {
    GeomPath = USDKitConverter::getGeomPath(this);
    -[NSString substringToIndex:](v3, "substringToIndex:", [USDKitConverter::getGeomPath(this) length]);
    if (objc_msgSend_isEqualToString_(GeomPath))
    {
      v3 = -[NSString substringFromIndex:](v3, "substringFromIndex:", [USDKitConverter::getGeomPath(this) length]);
    }
  }

  v8 = [[(NSString *)v3 stringByAppendingString:@":"] stringByAppendingString:a2];
  if ([(NSString *)v8 characterAtIndex:0]== 47)
  {
    v8 = [(NSString *)v8 substringFromIndex:1];
  }

  return [(NSString *)v8 stringByReplacingOccurrencesOfString:@"/" withString:@":"];
}

uint64_t USDKitConverter::processAnimation(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::processAnimationGroup(a1, a2, a3);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = [a3 keyTimes];
  result = [v7 count];
  if (!result)
  {
    return result;
  }

  [objc_msgSend(v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1), "doubleValue"}];
  v9 = v8;
  result = [objc_msgSend(v7 objectAtIndexedSubscript:{0), "doubleValue"}];
  v11 = v9 - v10;
  if (v9 - v10 < 0.0001)
  {
    return result;
  }

  [a3 duration];
  v13 = v12;
  v14 = [objc_msgSend(a3 "keyPath")];
  v15 = [v14 count] - 1;
  v16 = [v14 objectAtIndex:v15];
  if ([v14 count] < 2)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = @"X";
  }

  else if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = @"Y";
  }

  else if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = @"Z";
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v16))
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v17 = @"W";
  }

  v15 = [v14 count] - 2;
  v16 = [v14 objectAtIndex:v15];
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (objc_msgSend_isEqualToString_(v16))
  {
    v16 = [objc_msgSend(objc_msgSend(v14 objectAtIndex:{v15 - 1), "stringByAppendingString:", @".", "stringByAppendingString:", v16}];
  }

LABEL_21:
  v18 = v13 / v11;
  if (objc_msgSend_isEqualToString_(v16))
  {
    if ([v7 count])
    {
      v19 = 0;
      do
      {
        [objc_msgSend(v7 objectAtIndexedSubscript:{v19), "doubleValue"}];
        v21 = v20;
        [a3 beginTime];
        v23 = v22;
        v24 = [a3 values];
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v25 = [v24 objectAtIndexedSubscript:v19];
        if (v25)
        {
          objc_msgSend_SCNMatrix4Value(v25);
          v114 = vcvt_hight_f64_f32(v125);
          v116 = vcvt_hight_f64_f32(v124);
          v107 = vcvt_hight_f64_f32(v123);
          v110 = vcvt_hight_f64_f32(v122);
          v26 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak, vcvtq_f64_f32(*v123.f32), vcvtq_f64_f32(*v125.f32), vcvtq_f64_f32(*v124.f32), vcvtq_f64_f32(*v122.f32)];
        }

        else
        {
          v107 = 0u;
          v110 = 0u;
          v114 = 0u;
          v124 = 0u;
          v125 = 0u;
          v116 = 0u;
          v122 = 0u;
          v123 = 0u;
          v26 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak, 0, 0, 0, 0, 0, 0, 0, 0];
        }

        v121[0] = v106;
        v121[1] = v110;
        v121[2] = v103;
        v121[3] = v107;
        v121[4] = v105;
        v121[5] = v116;
        v121[6] = v104;
        v121[7] = v114;
        v27 = (v23 + v21 * v18) / *(a1 + 504) + 0.0;
        v28 = v27;
        if (vabdd_f64(v27, v28) >= 0.001)
        {
          if (1.0 - (v27 - v28) < 0.001)
          {
            v27 = v28 + 1.0;
          }
        }

        else
        {
          v27 = v27;
        }

        [v26 setDouble4x4Value:v121 atTime:v27];
        ++v19;
      }

      while (v19 < [v7 count]);
    }

    return [*(a1 + 88) addObject:@"xformOp:transform"];
  }

  if (objc_msgSend_isEqualToString_(v16))
  {
    if (!v17)
    {
      if ([v7 count])
      {
        v52 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v52), "doubleValue"}];
          v54 = v53;
          [a3 beginTime];
          v56 = v55 + v54 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v111 = v57;
          v118 = v58;
          v59 = [USKHelper node:a2 propertyWithName:@"xformOp:translate" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
          v60 = v56 / *(a1 + 504) + 0.0;
          v61 = v60;
          if (vabdd_f64(v60, v61) >= 0.001)
          {
            if (1.0 - (v60 - v61) < 0.001)
            {
              v60 = v61 + 1.0;
            }
          }

          else
          {
            v60 = v60;
          }

          [v59 setFloat3Value:COERCE_DOUBLE(__PAIR64__(v111 atTime:{v118)), v60}];
          ++v52;
        }

        while (v52 < [v7 count]);
      }

      v40 = *(a1 + 88);
      v41 = @"xformOp:translate";
      goto LABEL_62;
    }

    v29 = [@"xformOp:translate" stringByAppendingString:v17];
    if ([v7 count])
    {
      v30 = 0;
      do
      {
        [objc_msgSend(v7 objectAtIndexedSubscript:{v30), "doubleValue"}];
        v32 = v31;
        [a3 beginTime];
        v34 = v33 + v32 * v18;
        [objc_msgSend(objc_msgSend(a3 "values")];
        v36 = v35;
        v37 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        v38 = v34 / *(a1 + 504) + 0.0;
        v39 = v38;
        if (vabdd_f64(v38, v39) >= 0.001)
        {
          if (1.0 - (v38 - v39) < 0.001)
          {
            v38 = v39 + 1.0;
          }
        }

        else
        {
          v38 = v38;
        }

        LODWORD(v39) = v36;
        [v37 setFloatValue:v39 atTime:v38];
        ++v30;
      }

      while (v30 < [v7 count]);
    }
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v16) & 1) != 0 || objc_msgSend_isEqualToString_(v16))
    {
      if ([v7 count])
      {
        v42 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v42), "doubleValue"}];
          v44 = v43;
          [a3 beginTime];
          v46 = v45 + v44 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v108 = v47;
          v117 = v48;
          v49 = [USKHelper node:a2 propertyWithName:@"xformOp:orient" type:USKDataTypeQuatf_weak role:USKRoleTypeNone_weak];
          v50 = v46 / *(a1 + 504) + 0.0;
          v51 = v50;
          if (vabdd_f64(v50, v51) >= 0.001)
          {
            if (1.0 - (v50 - v51) < 0.001)
            {
              v50 = v51 + 1.0;
            }
          }

          else
          {
            v50 = v50;
          }

          [v49 setQuatfValue:COERCE_DOUBLE(__PAIR64__(v108 atTime:{v117)), v50}];
          ++v42;
        }

        while (v42 < [v7 count]);
      }

      v40 = *(a1 + 88);
      v41 = @"xformOp:orient";
      goto LABEL_62;
    }

    if ((objc_msgSend_isEqualToString_(v16) & 1) != 0 || objc_msgSend_isEqualToString_(v16))
    {
      if (!v17)
      {
        if ([v7 count])
        {
          v73 = 0;
          v109 = vdupq_n_s64(0x4066800000000000uLL);
          v112 = vdupq_n_s64(0x400921FB54442D18uLL);
          do
          {
            [objc_msgSend(v7 objectAtIndexedSubscript:{v73), "doubleValue"}];
            v75 = v74;
            [a3 beginTime];
            v77 = v76 + v75 * v18;
            [objc_msgSend(objc_msgSend(a3 "values")];
            v115 = v79;
            v119 = v78;
            v80 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateXYZ" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
            v81 = v77 / *(a1 + 504) + 0.0;
            v82 = v81;
            if (vabdd_f64(v81, v82) >= 0.001)
            {
              if (1.0 - (v81 - v82) < 0.001)
              {
                v81 = v82 + 1.0;
              }
            }

            else
            {
              v81 = v81;
            }

            [v80 setFloat3Value:COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v115 atTime:{v119)), v112), v109))), v81}];
            ++v73;
          }

          while (v73 < [v7 count]);
        }

        v40 = *(a1 + 88);
        v41 = @"xformOp:rotateXYZ";
        goto LABEL_62;
      }

      v29 = [@"xformOp:rotate" stringByAppendingString:v17];
      if ([v7 count])
      {
        v62 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v62), "doubleValue"}];
          v64 = v63;
          [a3 beginTime];
          v66 = v65 + v64 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v68 = v67;
          v69 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          v70 = v66 / *(a1 + 504) + 0.0;
          v71 = v70;
          if (vabdd_f64(v70, v71) >= 0.001)
          {
            if (1.0 - (v70 - v71) < 0.001)
            {
              v70 = v71 + 1.0;
            }
          }

          else
          {
            v70 = v70;
          }

          v72 = v68 / 3.14159265 * 180.0;
          *&v72 = v72;
          [v69 setFloatValue:v72 atTime:v70];
          ++v62;
        }

        while (v62 < [v7 count]);
      }
    }

    else
    {
      result = objc_msgSend_isEqualToString_(v16);
      if (!result)
      {
        return result;
      }

      if (!v17)
      {
        if ([v7 count])
        {
          v93 = 0;
          do
          {
            [objc_msgSend(v7 objectAtIndexedSubscript:{v93), "doubleValue"}];
            v95 = v94;
            [a3 beginTime];
            v97 = v96 + v95 * v18;
            [objc_msgSend(objc_msgSend(a3 "values")];
            v113 = v98;
            v120 = v99;
            v100 = [USKHelper node:a2 propertyWithName:@"xformOp:scale" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
            v101 = v97 / *(a1 + 504) + 0.0;
            v102 = v101;
            if (vabdd_f64(v101, v102) >= 0.001)
            {
              if (1.0 - (v101 - v102) < 0.001)
              {
                v101 = v102 + 1.0;
              }
            }

            else
            {
              v101 = v101;
            }

            [v100 setFloat3Value:COERCE_DOUBLE(__PAIR64__(v113 atTime:{v120)), v101}];
            ++v93;
          }

          while (v93 < [v7 count]);
        }

        v40 = *(a1 + 88);
        v41 = @"xformOp:scale";
        goto LABEL_62;
      }

      v29 = [@"xformOp:scale" stringByAppendingString:v17];
      if ([v7 count])
      {
        v83 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v83), "doubleValue"}];
          v85 = v84;
          [a3 beginTime];
          v87 = v86 + v85 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v89 = v88;
          v90 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          v91 = v87 / *(a1 + 504) + 0.0;
          v92 = v91;
          if (vabdd_f64(v91, v92) >= 0.001)
          {
            if (1.0 - (v91 - v92) < 0.001)
            {
              v91 = v92 + 1.0;
            }
          }

          else
          {
            v91 = v91;
          }

          LODWORD(v92) = v89;
          [v90 setFloatValue:v92 atTime:v91];
          ++v83;
        }

        while (v83 < [v7 count]);
      }
    }
  }

  v40 = *(a1 + 88);
  v41 = v29;
LABEL_62:

  return [v40 addObject:v41];
}

void *USDKitConverter::processAnimationGroup(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "animations")];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::processAnimation(a1, a2, [objc_msgSend(a3 "animations")]);
      result = [objc_msgSend(a3 "animations")];
    }
  }

  return result;
}

void *USDKitConverter::processBlendShapeAnimations(USDKitConverter *this, SCNNode *a2)
{
  v2 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v4 = *(this + 53);
  if (v4)
  {
    v5 = (this + 424);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 != (this + 424) && v5[4] <= a2 && [(SCNNode *)a2 animationKeys]&& [(NSArray *)[(SCNNode *)v2 animationKeys] count])
    {
      v9 = [(NSArray *)[(SCNNode *)v2 animationKeys] objectAtIndexedSubscript:0];
      AnimationsPath = USDKitConverter::getAnimationsPath(this);
      v13 = [USKHelper scene:*(this + 7) nodeAtPath:v12 type:USKNodeTypeSkeletalAnimation_weak];
      __p = &v43;
      v14 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 416, &v43, &std::piecewise_construct, &__p);
      BlendShape::setSkelAnimation(v14[5], v12, v13);
      v15 = [(NSArray *)[(SCNNode *)v43 animationKeys] count];
      __p = 0;
      v41 = 0;
      v42 = 0;
      memset(v39, 0, sizeof(v39));
      std::vector<std::vector<float>>::resize(v39, v15);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          v17 = [(NSArray *)[(SCNNode *)v43 animationKeys] objectAtIndexedSubscript:i];
          v18 = [(SCNNode *)v43 animationPlayerForKey:v17];
          if (v18)
          {
            USDKitConverter::processBlendShapeAnimation(this, v13, [objc_msgSend(v18 "animation")], &__p, v39);
          }
        }
      }

      v19 = [USKHelper node:v13 propertyWithName:@"blendShapeWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
      memset(&v38, 0, sizeof(v38));
      std::vector<float>::resize(&v38, v15);
      v20 = __p;
      if (v41 != __p)
      {
        v21 = 0;
        do
        {
          v22 = v20[v21];
          if (v15)
          {
            v23 = v39[0];
            begin = v38.__begin_;
            v25 = v15;
            do
            {
              v26 = *v23;
              v23 += 3;
              *begin++ = *(v26 + 4 * v21);
              --v25;
            }

            while (v25);
          }

          v27 = v22 / *(this + 63) + 0.0;
          v28 = v27;
          if (vabdd_f64(v27, v28) >= 0.001)
          {
            if (1.0 - (v27 - v28) < 0.001)
            {
              v27 = v28 + 1.0;
            }
          }

          else
          {
            v27 = v27;
          }

          [v19 setFloatArray:v27 count:? atTime:?];
          ++v21;
          v20 = __p;
        }

        while (v21 < (v41 - __p) >> 3);
      }

      if (v38.__begin_)
      {
        v38.__end_ = v38.__begin_;
        operator delete(v38.__begin_);
      }

      v38.__begin_ = v39;
      std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v38);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v2 = v43;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = [(SCNNode *)v2 childNodes];
  result = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
  v31 = result;
  if (result)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v29);
        }

        USDKitConverter::processBlendShapeAnimations(this, *(*(&v34 + 1) + 8 * v33));
        v33 = v33 + 1;
      }

      while (v31 != v33);
      result = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
      v31 = result;
    }

    while (result);
  }

  return result;
}

void sub_21C129144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::getAnimationsPath(USDKitConverter *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Animations"];
    *(this + 6) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 6);
  }

  return result;
}

void *BlendShape::setSkelAnimation(void *result, uint64_t a2, uint64_t a3)
{
  if (!result[2])
  {
    v4 = result;
    v5 = result[1];
    if (v5)
    {
      result = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v5 propertyWithName:@"skel:animationSource" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", a2}];
      v4[2] = a3;
    }
  }

  return result;
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
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

unint64_t USDKitConverter::processBlendShapeAnimation(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::processBlendShapeAnimationGroup(a1, a2, a3, a4, a5);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v11 = [a3 keyTimes];
      result = [v11 count];
      if (result)
      {
        [objc_msgSend(v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1), "doubleValue"}];
        v13 = v12;
        result = [objc_msgSend(v11 objectAtIndexedSubscript:{0), "doubleValue"}];
        v15 = v13 - v14;
        if (v13 - v14 >= 0.0001)
        {
          [a3 duration];
          v17 = v16;
          v18 = [objc_msgSend(a3 "keyPath")];
          v19 = [v18 objectAtIndex:{objc_msgSend(v18, "count") - 1}];
          result = [v19 length];
          if (result >= 9)
          {
            result = objc_msgSend_isEqualToString_([v19 substringToIndex:7]);
            if (result)
            {
              v20 = [objc_msgSend(v19 substringFromIndex:{8), "intValue"}];
              std::vector<double>::resize(a4, [v11 count]);
              std::vector<float>::resize((*a5 + 24 * v20), [v11 count]);
              v21 = [a3 values];
              result = [v11 count];
              if (result)
              {
                v22 = 0;
                v23 = 24 * v20;
                v24 = v17 / v15;
                do
                {
                  [objc_msgSend(v11 objectAtIndexedSubscript:{v22), "doubleValue"}];
                  v26 = v25;
                  [a3 beginTime];
                  *(*a4 + 8 * v22) = v27 + v26 * v24;
                  [objc_msgSend(v21 objectAtIndexedSubscript:{v22), "floatValue"}];
                  *(*(*a5 + v23) + 4 * v22++) = v28;
                  result = [v11 count];
                }

                while (v22 < result);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(a1, v9);
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
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *USDKitConverter::processBlendShapeAnimationGroup(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  result = [objc_msgSend(a3 "animations")];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::processBlendShapeAnimation(a1, a2, [objc_msgSend(a3 "animations")], a4, a5);
      result = [objc_msgSend(a3 "animations")];
    }
  }

  return result;
}

void std::vector<double>::resize(void *result, unint64_t a2)
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
    std::vector<double>::__append(result, a2 - v2);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
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

void USDKitConverter::processMeshSkin(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a5)
  {
    if (!a4)
    {
      return;
    }

    [a2 simdWorldTransform];
    v46 = vcvtq_f64_f32(*v28.f32);
    v47 = vcvt_hight_f64_f32(v28);
    v48 = vcvtq_f64_f32(*v29.f32);
    v49 = vcvt_hight_f64_f32(v29);
    v50 = vcvtq_f64_f32(*v30.f32);
    v51 = vcvt_hight_f64_f32(v30);
    v52 = vcvtq_f64_f32(*v31.f32);
    v53 = vcvt_hight_f64_f32(v31);
    v32 = a4;
    v33 = a2;
    goto LABEL_15;
  }

  v9 = [a2 skinner];
  v10 = [objc_msgSend(objc_msgSend(v9 "boneWeights")];
  v11 = [objc_msgSend(v9 "boneWeights")];
  v12 = [objc_msgSend(objc_msgSend(v9 "boneIndices")];
  v13 = [objc_msgSend(v9 "boneIndices")];
  if (!v10 || !v12)
  {
    v34 = [v9 skeleton];
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = a2;
    }

    if (v9)
    {
      objc_msgSend_baseGeometryBindTransform(v9);
      v36 = vcvt_hight_f64_f32(v49);
      v37 = vcvt_hight_f64_f32(v48);
      v38 = vcvt_hight_f64_f32(v47);
      v39 = vcvt_hight_f64_f32(v46);
      v40 = vcvtq_f64_f32(*v49.f32);
      v41 = vcvtq_f64_f32(*v48.f32);
      v42 = vcvtq_f64_f32(*v47.f32);
      v43 = vcvtq_f64_f32(*v46.f32);
    }

    else
    {
      v43 = 0uLL;
      v39 = 0uLL;
      v42 = 0uLL;
      v38 = 0uLL;
      v41 = 0uLL;
      v37 = 0uLL;
      v40 = 0uLL;
      v36 = 0uLL;
    }

    v46 = v43;
    v47 = v39;
    v48 = v42;
    v49 = v38;
    v50 = v41;
    v51 = v37;
    v52 = v40;
    v53 = v36;
    v32 = a4;
    v33 = v35;
LABEL_15:
    Skeleton::bindRigidDeformation(v32, v33, a3, &v46);
    return;
  }

  v14 = v13;
  v15 = [objc_msgSend(v9 "boneWeights")];
  v45 = [objc_msgSend(v9 "boneWeights")] * v15;
  v44 = [objc_msgSend(v9 "boneWeights")];
  v16 = [objc_msgSend(v9 "boneIndices")];
  v17 = [objc_msgSend(v9 "boneIndices")] * v16;
  v18 = [objc_msgSend(v9 "boneIndices")];
  v19 = [objc_msgSend(v9 "boneIndices")];
  if (v9)
  {
    objc_msgSend_baseGeometryBindTransform(v9);
    v20 = vcvt_hight_f64_f32(v49);
    v21 = vcvt_hight_f64_f32(v48);
    v22 = vcvt_hight_f64_f32(v47);
    v23 = vcvt_hight_f64_f32(v46);
    v24 = vcvtq_f64_f32(*v49.f32);
    v25 = vcvtq_f64_f32(*v48.f32);
    v26 = vcvtq_f64_f32(*v47.f32);
    v27 = vcvtq_f64_f32(*v46.f32);
  }

  else
  {
    v27 = 0uLL;
    v23 = 0uLL;
    v26 = 0uLL;
    v22 = 0uLL;
    v25 = 0uLL;
    v21 = 0uLL;
    v24 = 0uLL;
    v20 = 0uLL;
  }

  v46 = v27;
  v47 = v23;
  v48 = v26;
  v49 = v22;
  v50 = v25;
  v51 = v21;
  v52 = v24;
  v53 = v20;
  Skin::addMeshSkinData(a5, a3, v10 + v11, v45, v44, (v12 + v14), v17, v18, v19, &v46);
}

id USDKitConverter::processSkeletonAnimations(USDKitConverter *this, void ***a2)
{
  result = Skeleton::findNodeWithAnimation(a2);
  if (result)
  {
    v3 = result;
    v4 = [result animationKeys];
    result = [v4 count];
    if (result)
    {
      v112 = v3;
      v5 = 0;
      __asm { FMOV            V0.2D, #1.0 }

      v111 = _Q0;
      __asm { FMOV            V0.4S, #1.0 }

      v122 = _Q0;
      v12 = xmmword_21C27F610;
      LODWORD(v12) = -1;
      v123 = v12;
      v110 = v4;
      while (2)
      {
        v113 = v5;
        v13 = [v4 objectAtIndex:?];
        v14 = [objc_msgSend(v112 animationPlayerForKey:{v13), "animation"}];
        v139 = xmmword_21C2A2890;
        v140 = v111;
        v142[0] = 0;
        v142[1] = 0;
        v141 = v142;
        AnimationData::processSkeletonAnimation(&v139, [v14 caAnimation]);
        v15 = objc_opt_new();
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v16 = *a2;
        v17 = a2[1];
        while (v16 != v17)
        {
          v18 = *v16;
          std::string::basic_string[abi:nn200100]<0>(&v144, [objc_msgSend(*v16 "name")]);
          v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v141, &v144);
          if (v142 == v19)
          {
            if (![v18 identifier])
            {
              goto LABEL_14;
            }

            MEMORY[0x21CF074C0](&v144, [objc_msgSend(v18 "identifier")]);
            v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v141, &v144);
          }

          if (v19 != v142)
          {
            v20 = **a2;
            v21 = &stru_282DCC058;
            do
            {
              v22 = [v18 name];
              if (v18 == v20)
              {
                break;
              }

              v18 = [v18 parentNode];
            }

            while (v18);
            [v15 addObject:v21];
            std::vector<std::string>::push_back[abi:nn200100](&v136, &v144);
          }

LABEL_14:
          if (v145.i8[7] < 0)
          {
            operator delete(v144.i64[0]);
          }

          ++v16;
        }

        v24 = [v15 count];
        if (v24)
        {
          AnimationsPath = USDKitConverter::getAnimationsPath(this);
          v27 = [USKHelper scene:*(this + 7) nodeAtPath:v109 type:USKNodeTypeSkeletalAnimation_weak];
          [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v27 propertyWithName:@"joints" type:USKDataTypeStringArray_weak role:{USKRoleTypeNone_weak), "setStringArray:", v15}];

          v133 = 0;
          v134 = 0;
          v135 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v133, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          __p = 0;
          v131 = 0;
          v132 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          v127 = 0;
          v128 = 0;
          v129 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v127, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          v117 = *(&v139 + 1) - *&v139;
          v28 = ((*(&v139 + 1) - *&v139) / *&v140 + 0.5);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = 0;
            v115 = v28;
            v114 = v28 + 1;
            v120 = v24;
            v116 = v27;
            do
            {
              v30 = *&v139;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v133, 0);
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v127, 0);
              v32 = v136;
              v31 = v137;
              v121 = v137;
              while (v32 != v31)
              {
                v126.i32[2] = 0;
                v126.i64[0] = 0;
                v125 = v122;
                v144.i64[0] = v32;
                v33 = std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v141, v32, &std::piecewise_construct, &v144, &v143);
                v125 = v122;
                v126 = 0u;
                v35 = v33[7];
                v34 = v33[8];
                v124 = xmmword_21C27F610;
                if (v35 != v34)
                {
                  v124 = xmmword_21C27F610;
                  do
                  {
                    v36 = *v35;
                    v37 = [*v35 keyTimes];
                    if ([v37 count])
                    {
                      v38 = [objc_msgSend(v36 "keyPath")];
                      [v36 duration];
                      v40 = v39;
                      [objc_msgSend(v37 objectAtIndexedSubscript:{objc_msgSend(v37, "count") - 1), "doubleValue"}];
                      v42 = v41;
                      [objc_msgSend(v37 objectAtIndexedSubscript:{0), "doubleValue"}];
                      v43 = 0;
                      if (v42 - v44 >= 0.0001 && v40 >= 0.0001)
                      {
                        [v36 beginTime];
                        if ([v37 count] <= v29)
                        {
                          v43 = [v37 count] - 1;
                        }

                        else
                        {
                          [objc_msgSend(v37 objectAtIndexedSubscript:{v29), "doubleValue"}];
                          v43 = v29;
                        }
                      }

                      v45 = [v38 objectAtIndex:1];
                      if (objc_msgSend_isEqualToString_(v45))
                      {
                        if ([objc_msgSend(v36 "keyTimes")])
                        {
                          v46 = [v36 values];
                          v146 = 0u;
                          v147 = 0u;
                          v144 = 0u;
                          v145 = 0u;
                          v47 = [v46 objectAtIndexedSubscript:v43];
                          if (v47)
                          {
                            objc_msgSend_SCNMatrix4Value(v47);
                            v48 = v144;
                            v49 = v145;
                            v50 = v144.i32[3];
                            v52 = v146;
                            v51 = v147;
                            v53 = vuzp1q_s32(v147, vextq_s8(v52, v52, 0xCuLL));
                            v53.i32[0] = v147.i32[1];
                            v54 = vextq_s8(v145, vextq_s8(v145, v146, 4uLL), 8uLL);
                            v54.i32[0] = v146.i32[2];
                            v55 = vext_s8(*v48.f32, *&vextq_s8(v48, v48, 8uLL), 4uLL);
                          }

                          else
                          {
                            v51 = 0uLL;
                            v55 = 0;
                            v50 = 0;
                            v52.i32[0] = 0;
                            v52.i32[3] = 0;
                            v49 = 0uLL;
                            v48.i32[0] = 0;
                            v48.i32[3] = 0;
                            v53 = 0uLL;
                            v54 = 0uLL;
                          }

                          *&v48.i32[1] = v55;
                          v63 = v48;
                          v63.i32[3] = v50;
                          v64 = vextq_s8(v54, vrev64q_s32(v54), 4uLL);
                          v64.i32[0] = v49.i32[0];
                          v65 = vextq_s8(v53, v54, 8uLL);
                          v65.i32[0] = v52.i32[0];
                          v66 = vmulq_f32(v65, v65);
                          v65.i32[3] = v52.i32[3];
                          v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), vnegq_f32(v64)), v65, vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL));
                          v68 = vmulq_f32(v48, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
                          if ((v68.f32[2] + vaddv_f32(*v68.f32)) >= 0.0)
                          {
                            v69 = 1.0;
                          }

                          else
                          {
                            v69 = -1.0;
                          }

                          v70 = vmulq_f32(v63, v63);
                          v71 = vmulq_f32(v64, v64);
                          v72 = vadd_f32(vzip1_s32(*v70.i8, *v71.i8), vzip2_s32(*v70.i8, *v71.i8));
                          v73 = vextq_s8(v71, v71, 8uLL);
                          *v73.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *v73.f32), v72));
                          v73.i32[2] = sqrtf(v66.f32[2] + vaddv_f32(*v66.f32));
                          v74 = vmulq_n_f32(v73, v69);
                          v75 = vmvnq_s8(vorrq_s8(vcltzq_f32(v74), vcgezq_f32(v74)));
                          v75.i32[3] = v75.i32[2];
                          v75.i32[0] = vmaxvq_u32(v75);
                          v76 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v75, v123), 0), v74, 0);
                          v125 = v76;
                          v77 = vceqzq_f32(v76);
                          v77.i32[3] = v77.i32[2];
                          if ((vmaxvq_u32(v77) & 0x80000000) != 0)
                          {
                            v124 = *(MEMORY[0x277D860B8] + 48);
                            v125 = 0uLL;
                          }

                          else
                          {
                            v78 = vextq_s8(v54, v49, 4uLL);
                            v78.i32[0] = v49.i32[0];
                            v52.i32[1] = v53.i32[3];
                            v52.i32[2] = v54.i32[0];
                            v79 = vdivq_f32(v48, vdupq_lane_s32(*v76.f32, 0));
                            v80 = vdivq_f32(v78, vdupq_lane_s32(*v76.f32, 1));
                            v81 = vdivq_f32(v52, vdupq_laneq_s32(v76, 2));
                            v82 = v81.f32[2] + (*v79.i32 + v80.f32[1]);
                            if (v82 > 0.0)
                            {
                              *v81.f32 = vsub_f32(*&vzip2q_s32(v80, vuzp1q_s32(v80, v81)), *&vtrn2q_s32(v81, vzip2q_s32(v81, v79)));
                              v81.f32[2] = *&v79.i32[1] - v80.f32[0];
                              v83 = v82 + 1.0;
                              v81.f32[3] = v82 + 1.0;
                              goto LABEL_65;
                            }

                            if (*v79.i32 > v80.f32[1] && *v79.i32 > v81.f32[2])
                            {
                              v83 = ((*v79.i32 + 1.0) - v80.f32[1]) - v81.f32[2];
                              *&v88 = v80.f32[0] + *&v79.i32[1];
                              v89 = v81.f32[0] + *&v79.i32[2];
                              v90 = v80.f32[2] - v81.f32[1];
                              v81.i64[0] = __PAIR64__(v88, LODWORD(v83));
                              v81.f32[2] = v89;
                              goto LABEL_64;
                            }

                            if (v80.f32[1] <= v81.f32[2])
                            {
                              *v81.f32 = vadd_f32(*v81.f32, *&vzip2q_s32(v79, v80));
                              v83 = ((v81.f32[2] + 1.0) - *v79.i32) - v80.f32[1];
                              v81.f32[2] = v83;
                              v90 = *&v79.i32[1] - v80.f32[0];
LABEL_64:
                              v81.f32[3] = v90;
                            }

                            else
                            {
                              v85 = v80;
                              v85.f32[1] = (v80.f32[1] + 1.0) - *v79.i32;
                              v85.i32[3] = v81.i32[0];
                              v86 = vzip2q_s32(vzip1q_s32(v79, v81), vtrn1q_s32(v81, v79));
                              v80 = vaddq_f32(v80, v86);
                              v87 = vsubq_f32(v85, v86);
                              v81 = vtrn2q_s32(vrev64q_s32(v80), v87);
                              v83 = *&v87.i32[1];
                            }

LABEL_65:
                            v80.i32[0] = 0;
                            v96 = vmulq_n_f32(v81, 0.5 / sqrtf(v83));
                            v97 = vmvnq_s8(vceqq_f32(v96, v96));
                            v97.i32[0] = vmaxvq_u32(v97);
                            v124 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v80, v97), 0), *(MEMORY[0x277D860B8] + 48), v96);
                          }

                          v58 = vextq_s8(vextq_s8(v51, v51, 4uLL), v53, 0xCuLL);
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        if ((objc_msgSend_isEqualToString_(v45) & 1) == 0 && !objc_msgSend_isEqualToString_(v45))
                        {
                          if ((objc_msgSend_isEqualToString_(v45) & 1) != 0 || objc_msgSend_isEqualToString_(v45))
                          {
                            if ([objc_msgSend(v36 "keyTimes")])
                            {
                              [objc_msgSend(objc_msgSend(v36 "values")];
                              v60.i32[1] = v59;
                              v60.i64[1] = __PAIR64__(v62, v61);
                              v124 = v60;
                            }
                          }

                          else if (objc_msgSend_isEqualToString_(v45) && [objc_msgSend(v36 "keyTimes")])
                          {
                            v91 = [v36 values];
                            if (v43 >= [v91 count])
                            {
                              v92 = 0;
                            }

                            else
                            {
                              v92 = v43;
                            }

                            [objc_msgSend(v91 objectAtIndexedSubscript:{v92), "SCNVector3Value"}];
                            v94.i32[1] = v93;
                            v94.i32[2] = v95;
                            v125 = v94;
                          }

                          goto LABEL_68;
                        }

                        if ([objc_msgSend(v36 "keyTimes")])
                        {
                          [objc_msgSend(objc_msgSend(v36 "values")];
                          v58.i32[1] = v56;
                          v58.i32[2] = v57;
LABEL_67:
                          v126 = v58;
                        }
                      }
                    }

LABEL_68:
                    ++v35;
                  }

                  while (v35 != v34);
                }

                _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v133, &v126);
                v24 = v120;
                v98 = v131;
                if (v131 >= v132)
                {
                  v100 = (v131 - __p) >> 4;
                  if ((v100 + 1) >> 60)
                  {
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v101 = (v132 - __p) >> 3;
                  if (v101 <= v100 + 1)
                  {
                    v101 = v100 + 1;
                  }

                  if (v132 - __p >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v102 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v102 = v101;
                  }

                  if (v102)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v102);
                  }

                  *(16 * v100) = v124;
                  v99 = 16 * v100 + 16;
                  v103 = (16 * v100 - (v131 - __p));
                  memcpy(v103, __p, v131 - __p);
                  v104 = __p;
                  __p = v103;
                  v131 = v99;
                  v132 = 0;
                  if (v104)
                  {
                    operator delete(v104);
                  }
                }

                else
                {
                  *v131 = v124;
                  v99 = (v98 + 16);
                }

                v131 = v99;
                _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v127, &v125);
                v32 += 3;
                v31 = v121;
              }

              v105 = (v117 * v29 / v115 + v30) / *(this + 63) + 0.0;
              v106 = v105;
              if (vabdd_f64(v105, v106) >= 0.001)
              {
                v107 = v116;
                if (1.0 - (v105 - v106) < 0.001)
                {
                  v105 = v106 + 1.0;
                }
              }

              else
              {
                v105 = v105;
                v107 = v116;
              }

              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"translations" type:USKDataTypeFloat3Array_weak role:{USKRoleTypeNone_weak), "setFloat3Array:count:atTime:", v105}];
              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"rotations" type:USKDataTypeQuatfArray_weak role:{USKRoleTypeNone_weak), "setQuatfArray:count:atTime:", v105}];
              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"scales" type:USKDataTypeFloat3Array_weak role:{USKRoleTypeNone_weak), "setFloat3Array:count:atTime:", v105}];
              ++v29;
            }

            while (v29 != v114);
          }

          if (v127)
          {
            v128 = v127;
            operator delete(v127);
          }

          if (__p)
          {
            v131 = __p;
            operator delete(__p);
          }

          if (v133)
          {
            v134 = v133;
            operator delete(v133);
          }
        }

        else
        {
        }

        v144.i64[0] = &v136;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v144);
        std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(&v141, v142[0]);
        if (!v24)
        {
          v4 = v110;
          v108 = [v110 count];
          v5 = v113 + 1;
          if (v113 + 1 >= v108)
          {
            return 0;
          }

          continue;
        }

        return v109;
      }
    }
  }

  return result;
}

void sub_21C12A7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char *a45, char *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a45 = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a45);
  std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(&a55, a56);
  _Unwind_Resume(a1);
}

void *Skeleton::setSkeletalAnimation(void *result, uint64_t a2)
{
  if (!result[15])
  {
    v2 = result;
    v3 = result[13];
    if (v3)
    {
      result = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v3 propertyWithName:@"skel:animationSource" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", a2}];
      v2[15] = a2;
    }
  }

  return result;
}

void *Skeleton::bindRigidDeformation(void *result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = *result;
  v7 = result[1] - *result;
  if (v7)
  {
    v17 = v4;
    v18 = v5;
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
      v16 = 1065353216;
      v13 = [USKHelper node:a3 propertyWithName:@"primvars:skel:jointWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
      [v13 setFloatArray:&v16 count:1];
      [v13 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", 1)}];
      [v13 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"constant"}];
      v15 = v11;
      v14 = [USKHelper node:a3 propertyWithName:@"primvars:skel:jointIndices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
      [v14 setIntArray:&v15 count:1];
      [v14 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", 1)}];
      [v14 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"constant"}];
      return Skeleton::bindToUskMesh(v10, a3, a4);
    }
  }

  return result;
}

void Skin::addMeshSkinData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, std::vector<int>::size_type a7, uint64_t a8, int a9, _OWORD *a10)
{
  v18 = [USKHelper node:a2 propertyWithName:@"primvars:skel:jointWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
  [v18 setFloatArray:a3 count:a4];
  [v18 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", a5)}];
  [v18 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
  memset(&v25, 0, sizeof(v25));
  std::vector<unsigned int>::reserve(&v25, a7);
  if (a9 == 2)
  {
    if (a7)
    {
      v19 = a7;
      do
      {
        v20 = *a6++;
        v26 = v20;
        v27 = &v26;
        v24 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1 + 64, &v26, &std::piecewise_construct, &v27)[5];
        std::vector<int>::push_back[abi:nn200100](&v25.__begin_, &v24);
        --v19;
      }

      while (v19);
    }
  }

  else if (a7)
  {
    v21 = a7;
    do
    {
      v22 = *a6;
      a6 += 2;
      v26 = v22;
      v27 = &v26;
      v24 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1 + 64, &v26, &std::piecewise_construct, &v27)[5];
      std::vector<int>::push_back[abi:nn200100](&v25.__begin_, &v24);
      --v21;
    }

    while (v21);
  }

  v23 = [USKHelper node:a2 propertyWithName:@"primvars:skel:jointIndices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
  [v23 setIntArray:v25.__begin_ count:a7];
  [v23 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", a8)}];
  [v23 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
  Skeleton::bindToUskMesh(*(a1 + 56), a2, a10);
  if (v25.__begin_)
  {
    v25.__end_ = v25.__begin_;
    operator delete(v25.__begin_);
  }
}

void sub_21C12AD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Skeleton::bindToUskMesh(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = [USKHelper node:a2 propertyWithName:@"primvars:skel:geomBindTransform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak];
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  [v6 setDouble4x4Value:v12];
  return [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:skeleton" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", *(a1 + 112)}];
}

void AnimationData::processSkeletonAnimation(uint64_t **this, CAAnimationGroup *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    AnimationData::processSkeletonAnimationGroup(this, a2);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = a2;
      v4 = [(CAAnimationGroup *)a2 keyTimes];
      if ([v4 count])
      {
        v5 = [(CAAnimationGroup *)a2 keyPath];
        if ([v5 length])
        {
          v6 = [v5 componentsSeparatedByString:@"."];
          if ([v6 count] == 2)
          {
            v7 = [v6 objectAtIndex:0];
            if ([v7 characterAtIndex:0] == 47)
            {
              std::string::basic_string[abi:nn200100]<0>(v33, [objc_msgSend(v7 substringFromIndex:{1), "UTF8String"}]);
              v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((this + 4), v33);
              if (this + 5 == v8)
              {
                __p = 0;
                v31 = 0;
                v32 = 0;
                std::vector<UITouch *>::push_back[abi:nn200100](&__p, &v35);
                v37 = v33;
                v9 = (std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 4, v33, &std::piecewise_construct, &v37, &v36) + 7);
                if (v9 != &__p)
                {
                  std::vector<CAKeyframeAnimation *>::__assign_with_size[abi:nn200100]<CAKeyframeAnimation **,CAKeyframeAnimation **>(v9, __p, v31, (v31 - __p) >> 3);
                }

                if (__p)
                {
                  v31 = __p;
                  operator delete(__p);
                }
              }

              else
              {
                std::vector<UITouch *>::push_back[abi:nn200100](v8 + 56, &v35);
              }

              if ([v4 count] >= 2)
              {
                [objc_msgSend(v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1), "doubleValue"}];
                v11 = v10;
                [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                v13 = v11 - v12;
                if (v13 >= 0.0001)
                {
                  [v35 duration];
                  *(this + 3) = v14 / v13;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                  v16 = v15;
                  v17 = *(this + 3);
                  [v35 beginTime];
                  v19 = v18;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1), "doubleValue"}];
                  v21 = v20;
                  v22 = *(this + 3);
                  [v35 beginTime];
                  v23 = v19 + v16 * v17;
                  v25 = v24 + v21 * v22;
                  if (*this > v23)
                  {
                    *this = v23;
                  }

                  if (*(this + 1) < v25)
                  {
                    *(this + 1) = v25;
                  }

                  [objc_msgSend(v4 objectAtIndexedSubscript:{1), "doubleValue"}];
                  v27 = v26;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                  v29 = (v27 - v28) * *(this + 3);
                  if (v29 > 0.0001 && *(this + 2) > 0.0001)
                  {
                    *(this + 2) = v29;
                  }
                }
              }

              if (v34 < 0)
              {
                operator delete(v33[0]);
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C12B140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSUInteger AnimationData::processSkeletonAnimationGroup(AnimationData *this, CAAnimationGroup *a2)
{
  result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      AnimationData::processSkeletonAnimation(this, [(NSArray *)[(CAAnimationGroup *)a2 animations] objectAtIndex:i]);
      result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
    }
  }

  return result;
}

void **std::vector<CAKeyframeAnimation *>::__assign_with_size[abi:nn200100]<CAKeyframeAnimation **,CAKeyframeAnimation **>(void **result, char *__src, char *a3, unint64_t a4)
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

      std::vector<CAKeyframeAnimation *>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
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

void std::vector<CAKeyframeAnimation *>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>(uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void USDKitConverter::~USDKitConverter(USDKitConverter *this)
{
  ShapeBlending::~ShapeBlending((this + 440));
  std::__tree<char>::destroy(this + 416, *(this + 53));
  Skinning::~Skinning(this + 43);
  std::__tree<char>::destroy(this + 320, *(this + 41));
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  std::__tree<char>::destroy(this + 272, *(this + 35));
  std::__tree<char>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 216, *(this + 28));
  std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(this + 192, *(this + 25));
  std::__tree<char>::destroy(this + 168, *(this + 22));
  std::__tree<std::string>::destroy(this + 144, *(this + 19));
  std::__tree<char>::destroy(this + 120, *(this + 16));
  std::__tree<char>::destroy(this + 96, *(this + 13));
  std::__tree<std::string>::destroy(this + 64, *(this + 9));
}

uint64_t C3DMorphGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DMorphGetTypeID_onceToken != -1)
  {
    C3DMorphGetTypeID_cold_1();
  }

  return C3DMorphGetTypeID_typeID;
}

double __C3DMorphGetTypeID_block_invoke()
{
  C3DMorphGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740AB8 = kC3DC3DMorphContextClassSerializable;
  unk_281740AC8 = *&off_282DC7070;
  qword_281740AB0 = _C3DMorphSearchByID;
  result = *&kC3DC3DMorphContextClassSceneLink;
  unk_281740A88 = kC3DC3DMorphContextClassSceneLink;
  qword_281740A70 = _C3DMorphCopyInstanceVariables;
  unk_281740A98 = *algn_282DC7090;
  qword_281740AA8 = qword_282DC70A0;
  qword_281740AE0 = _C3DMorphGenericSourceDidChange;
  return result;
}

uint64_t C3DMorphCreate(uint64_t a1, uint64_t a2)
{
  if (C3DMorphGetTypeID_onceToken != -1)
  {
    C3DMorphGetTypeID_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DMorphGetTypeID_typeID, 192);
  *(result + 192) = 1;
  *(result + 184) = 0x13C23D70ALL;
  return result;
}

uint64_t C3DMorphSetCalculationMode(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    *(result + 64) = a2;
    ++*(result + 188);
    result = *(result + 200);
    if (result)
    {
      return C3DMorpherResetIncrementalCount(result);
    }
  }

  return result;
}

__n128 C3DMorpherGetExtraTargetInfo@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 88);
  *(a2 + 8) = *(a1 + 96);
  *(a2 + 24) = *(a1 + 112);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 40) = *(a1 + 128);
  *(a2 + 48) = *(a1 + 136);
  *(a2 + 56) = *(a1 + 144);
  result = *(a1 + 152);
  *(a2 + 64) = result;
  return result;
}

void C3DMorphSetTargetsWithExtraTargetInfo(uint64_t a1, CFTypeRef cf, size_t __n, const void **a4)
{
  v5 = __n;
  v7 = *(a1 + 88);
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 72) = v10;
  }

  ++*(a1 + 188);
  *(a1 + 193) = v5;
  v11 = *a4;
  v12 = *(a4 + 1);
  *(a1 + 88) = *a4;
  if (v12)
  {
    v13 = *(a1 + 92);
    *(a1 + 92) = v12;
    v14 = (4 * v11);
    if (v11 != v7)
    {
      v15 = *(a1 + 96);
      if (v11)
      {
        v16 = malloc_type_realloc(v15, (4 * v11), 0xE20B048BuLL);
      }

      else
      {
        free(v15);
        v16 = 0;
      }

      *(a1 + 96) = v16;
    }

    if (*a4)
    {
      memcpy(*(a1 + 96), a4[1], v14);
    }

    v17 = *(a4 + 1);
    v18 = (4 * v17);
    if (v17 != v13)
    {
      v19 = *(a1 + 104);
      if (v17)
      {
        v20 = malloc_type_realloc(v19, (4 * v17), 0x63411EF3uLL);
      }

      else
      {
        free(v19);
        v20 = 0;
      }

      *(a1 + 104) = v20;
      v13 = *(a4 + 1);
    }

    if (v13)
    {
      memcpy(*(a1 + 104), a4[2], v18);
    }
  }

  else
  {
    *(a1 + 92) = 0;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
    free(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v21 = *(a1 + 112);
  v22 = *(a4 + 6);
  *(a1 + 112) = v22;
  if (v22)
  {
    v23 = (4 * v22);
    if (v22 == v21 || (*(a1 + 120) = malloc_type_realloc(*(a1 + 120), (4 * v22), 0x34ED3448uLL), *(a4 + 6)))
    {
      memcpy(*(a1 + 120), a4[4], v23);
    }

    v24 = *(a1 + 128);
    v25 = *(a4 + 10);
    *(a1 + 128) = v25;
    v26 = (4 * v25);
    if (v25 != v24)
    {
      v27 = *(a1 + 136);
      if (v25)
      {
        v28 = malloc_type_realloc(v27, (4 * v25), 0xFBB77C87uLL);
      }

      else
      {
        free(v27);
        v28 = 0;
      }

      *(a1 + 136) = v28;
      v24 = *(a4 + 10);
    }

    if (v24)
    {
      memcpy(*(a1 + 136), a4[6], v26);
    }

    v29 = *(a4 + 14);
    if (v29)
    {
      v30 = *(a1 + 144);
      *(a1 + 144) = v29;
      v31 = *(a4 + 6);
      v32 = (4 * v31);
      if (v31 != v21)
      {
        v33 = *(a1 + 152);
        if (v31)
        {
          v34 = malloc_type_realloc(v33, (4 * v31), 0x43A85EADuLL);
        }

        else
        {
          free(v33);
          v34 = 0;
        }

        *(a1 + 152) = v34;
      }

      if (*a4)
      {
        memcpy(*(a1 + 152), a4[8], v32);
      }

      v35 = *(a4 + 14);
      v36 = (4 * v35);
      if (v35 != v30)
      {
        v37 = *(a1 + 160);
        if (*(a4 + 1))
        {
          v38 = malloc_type_realloc(v37, v36, 0xFF05193EuLL);
        }

        else
        {
          free(v37);
          v38 = 0;
        }

        *(a1 + 160) = v38;
        v30 = *(a4 + 14);
      }

      if (v30)
      {
        memcpy(*(a1 + 160), a4[9], v36);
      }
    }

    else
    {
      *(a1 + 144) = 0;
      free(*(a1 + 152));
      *(a1 + 152) = 0;
      free(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    if (!v12)
    {
      free(*(a1 + 168));
      *(a1 + 168) = 0;
    }
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    *(a1 + 80) = 0;
    _setupWeights(a1, v39);
    C3DGenericSourceSetListener(v39, 0);
    CFRelease(v39);
  }

  v40 = *(a1 + 176);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 176) = 0;
  }
}

void _setupWeights(uint64_t a1, void *Accessor)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 4 * v2);
    CFDataSetLength(Mutable, 4 * v2);
    if (Accessor)
    {
      Accessor = C3DGenericSourceGetAccessor(Accessor, v6);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    for (i = 0; i != v2; ++i)
    {
      v9 = 0;
      if (Accessor && C3DSourceAccessorGetCount(Accessor) > i)
      {
        v9 = *C3DSourceAccessorGetValuePtrAtIndex(Accessor, i);
      }

      *&MutableBytePtr[4 * i] = v9;
    }

    v10 = C3DSourceAccessorCreate(1, 1, v2, 0, 0);
    v11 = C3DGenericSourceCreateMutable(v10, 0);
    C3DGenericSourceSetData(v11, Mutable);
    C3DSourceAccessorSetSource(v10, v11);
    CFRelease(v10);
    CFRelease(Mutable);
    C3DMorphSetWeightsSource(a1, v11, v12);

    CFRelease(v11);
  }
}

void C3DMorphSetTargets(uint64_t a1, CFArrayRef theArray, size_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = Count;
  C3DMorphSetTargetsWithExtraTargetInfo(a1, theArray, a3, &v7);
}

float C3DMorphSetWeightsSource(uint64_t a1, CFTypeRef a2, float result)
{
  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    return result;
  }

  if (!v4)
  {
    if (!a2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  C3DGenericSourceSetListener(v4, 0);
  v6 = *(a1 + 80);
  if (v6 != a2)
  {
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    if (!a2)
    {
      v6 = 0;
LABEL_11:
      *(a1 + 80) = v6;
      goto LABEL_12;
    }

LABEL_10:
    v6 = CFRetain(a2);
    goto LABEL_11;
  }

LABEL_12:
  C3DGenericSourceSetListener(v6, a1);

  return __morphWeightsHaveChanged(a1, v7, v8);
}

float __morphWeightsHaveChanged(uint64_t a1, uint64_t a2, float result)
{
  v44 = *MEMORY[0x277D85DE8];
  ++*(a1 + 188);
  if (*(a1 + 168))
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      if (*(a1 + 72))
      {
        _setupWeights(a1, 0);
        v4 = *(a1 + 80);
      }

      else
      {
        v4 = 0;
      }
    }

    Content = C3DGenericSourceGetContent(v4, a2);
    v7 = v6;
    if (*(a1 + 88) == v6)
    {
      v8 = Content;
      v9 = *(a1 + 112);
      v10 = *(a1 + 92) + v9 + v6 + *(a1 + 144);
      v35 = 0;
      *buf = 0;
      if (v6)
      {
        v11 = 0;
        v12 = 4 * v6;
        do
        {
          if (*(a1 + 92))
          {
            v13 = *(*(a1 + 96) + v11);
          }

          else
          {
            v13 = 0;
          }

          __evaluateRuntimeWeightsForInBetween(*(a1 + 168), buf, &v35, v13, *(a1 + 104), v10, *&v8[v11]);
          v11 += 4;
        }

        while (v12 != v11);
        v9 = *(a1 + 112);
      }

      v34 = 0;
      if (v9)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(*(a1 + 120) + 4 * v14);
          if (v16)
          {
            v17 = 3.4028e38;
            v18 = *(*(a1 + 120) + 4 * v14);
            v19 = v15;
            do
            {
              v20 = *(*(a1 + 136) + 4 * v19++);
              v17 = fminf(v17, *&v8[4 * v20]);
              --v18;
            }

            while (v18);
            v15 += v16;
          }

          else
          {
            v17 = 3.4028e38;
          }

          if (*(a1 + 144))
          {
            v21 = *(*(a1 + 152) + 4 * v14);
          }

          else
          {
            v21 = 0;
          }

          __evaluateRuntimeWeightsForInBetween(*(a1 + 168), buf, &v34, v21, *(a1 + 160), v10, v17);
          ++v14;
        }

        while (v14 < *(a1 + 112));
      }

      if (*buf != v10)
      {
        v22 = scn_default_log(Content, v6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          __morphWeightsHaveChanged_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
        }
      }
    }

    else
    {
      v30 = scn_default_log(Content, v6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 88);
        v32 = *(a1 + 92);
        v33 = *(a1 + 112);
        *buf = 67109888;
        v37 = v7;
        v38 = 1024;
        v39 = v31;
        v40 = 1024;
        v41 = v32;
        v42 = 1024;
        v43 = v33;
        _os_log_error_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_ERROR, "Error: Morpher has %d targets weights, but has %d main targets (note: there are %d in-betweens and %d correctives)", buf, 0x1Au);
      }
    }
  }

  return result;
}

uint64_t C3DMorphGetWeightsSource(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    if (*(a1 + 72))
    {
      _setupWeights(a1, 0);
      return *(a1 + 80);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void C3DMorphUpdateCPUMeshIncrementally(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  if (!v6)
  {
    return;
  }

  v95[0] = a2;
  v10 = a1;
  Accessor = C3DGenericSourceGetAccessor(v6, a2);
  Count = C3DSourceAccessorGetCount(Accessor);
  v13 = *(v10 + 184);
  ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
  v95[1] = v95;
  MEMORY[0x28223BE20](ValuePtrAtIndex);
  v104 = (v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v103 = &v95[-4 * Count - 8];
  MEMORY[0x28223BE20](v17);
  v102 = &v95[-4 * Count - 8];
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a3, 0, 0, 1);
  v96 = a3;
  v98 = C3DMeshGetSourceWithSemanticAtIndex(a3, 1, 0, 1);
  MEMORY[0x28223BE20](v98);
  v99 = &v95[-8 * Count - 16];
  v116[0] = 0;
  v97 = SourceWithSemanticAtIndex;
  v20 = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v19);
  v105 = 0;
  v116[1] = v20;
  v22 = 1.0;
  v23 = 1.0;
  if (a5)
  {
    *v104 = -1082130432;
    C3DMeshSourceGetContent(v97, v21, &v110);
    v24 = v111;
    v25 = v103;
    *v103 = v110;
    v25[1] = v24;
    if (v98)
    {
      C3DMeshSourceGetContent(v98, v21, &v110);
      v26 = v111;
      v27 = v102;
      *v102 = v110;
      v27[1] = v26;
    }

    else
    {
      v28 = v102;
      *v102 = 0u;
      v28[1] = 0u;
    }

    v29 = v10;
    if (*(v10 + 193) == 1)
    {
      v30 = v99;
      *v99 = v116;
      v30[1] = 8;
      v30[2] = 1;
      v30[3] = 0;
      *(v30 + 8) = 67239936;
      *(v30 + 44) = 0;
      *(v30 + 36) = 0;
      *(v30 + 13) = 0;
      v30[7] = 1;
    }

    if (Count < 1)
    {
      v31 = 0;
      v23 = 0.0;
      v105 = 1;
      goto LABEL_18;
    }

    bzero(a4, 4 * Count);
    v23 = 0.0;
    v105 = 1;
  }

  v31 = Count > 0;
  v29 = v10;
  if (!*(v10 + 64) && Count >= 1)
  {
    v32 = ValuePtrAtIndex;
    v33 = a4;
    v34 = Count;
    do
    {
      v35 = *v32;
      v32 += 4;
      v36 = v35;
      v37 = *v33++;
      v38 = vabds_f32(v36, v37);
      v39 = v22 - v36;
      v40 = v23 - v37;
      if (v38 > v13)
      {
        v23 = v40;
        v22 = v39;
      }

      --v34;
    }

    while (v34);
  }

LABEL_18:
  if (vabds_f32(v22, v23) <= 0.00000011921)
  {
    v50 = 1;
    v53 = 1;
    if (!v31)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  v41 = v29;
  v42 = v22 - v23;
  v43 = v95[0];
  v44 = C3DMeshGetSourceWithSemanticAtIndex(v95[0], 0, 0, 1);
  v45 = C3DMeshGetSourceWithSemanticAtIndex(v43, 1, 0, 1);
  v46 = v105;
  *&v104[v105] = v42;
  v47 = &v103[2 * v46];
  C3DMeshSourceGetContent(v44, v48, &v110);
  v49 = v111;
  *v47 = v110;
  v47[1] = v49;
  v50 = v47[1].u8[7] == 1;
  v51 = &v102[2 * v46];
  if (v45)
  {
    C3DMeshSourceGetContent(v45, v21, &v110);
    v52 = v111;
    *v51 = v110;
    v51[1] = v52;
  }

  else
  {
    *v51 = 0u;
    v51[1] = 0u;
  }

  v53 = v51[1].u8[7] == 1;
  v29 = v41;
  if (*(v41 + 193) == 1)
  {
    v54 = &v99[8 * v105];
    *v54 = v116;
    v54[1] = 8;
    v54[2] = 1;
    v54[3] = 0;
    *(v54 + 8) = 67239936;
    *(v54 + 44) = 0;
    *(v54 + 36) = 0;
    *(v54 + 13) = 0;
    v54[7] = 1;
  }

  ++v105;
  if (v31)
  {
LABEL_27:
    v55 = 0;
    v101 = ValuePtrAtIndex;
    v100 = Count;
    do
    {
      v56 = *&ValuePtrAtIndex[4 * v55];
      v57 = *(a4 + v55);
      if (vabds_f32(v56, v57) > v13)
      {
        v58 = v50;
        v59 = v53;
        v60 = a4;
        v61 = v56 - v57;
        v62 = v29;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v29 + 72), v55);
        Mesh = C3DGeometryGetMesh(ValueAtIndex, v64);
        v66 = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 1);
        v67 = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 1, 0, 1);
        v68 = v105;
        *&v104[v105] = v61;
        v69 = &v103[2 * v68];
        C3DMeshSourceGetContent(v66, v70, &v110);
        v71 = v111;
        *v69 = v110;
        v69[1] = v71;
        v72 = v69[1].u8[7] == 1;
        v73 = &v102[2 * v68];
        if (v67)
        {
          C3DMeshSourceGetContent(v67, v21, &v110);
          v74 = v111;
          *v73 = v110;
          v73[1] = v74;
        }

        else
        {
          *v73 = 0u;
          v73[1] = 0u;
        }

        v75 = v59;
        v76 = v73[1].u8[7] == 1;
        v29 = v62;
        if (*(v62 + 193) == 1)
        {
          v77 = v62;
          ElementsCount = C3DMeshGetElementsCount(Mesh, v21);
          v79 = &v99[8 * v105];
          if (ElementsCount < 1)
          {
            *v79 = v116;
            v79[1] = 8;
            v79[2] = 1;
            v79[3] = 0;
            *(v79 + 8) = 67239936;
            *(v79 + 44) = 0;
            *(v79 + 36) = 0;
            *(v79 + 13) = 0;
            v79[7] = 1;
          }

          else
          {
            ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 1);
            if (!ElementAtIndex)
            {
              v82 = scn_default_log(0, v80);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
              {
                C3DMorphUpdateCPUMeshIncrementally_cold_1(v114, &v115, v82);
              }
            }

            C3DMeshElementGetContent(ElementAtIndex, 0, &v110);
            v83 = v111;
            *v79 = v110;
            *(v79 + 1) = v83;
            v84 = v113;
            *(v79 + 2) = v112;
            *(v79 + 3) = v84;
          }

          v29 = v77;
        }

        v50 = v58 & v72;
        v53 = v75 & v76;
        ++v105;
        a4 = v60;
        Count = v100;
        ValuePtrAtIndex = v101;
      }

      ++v55;
    }

    while (Count != v55);
  }

LABEL_42:
  v85 = v29;
  if (*(v29 + 193))
  {
    v110 = 0u;
    v111 = 0u;
    C3DMeshSourceGetContent(v97, v21, &v110);
    v108 = v110;
    v109 = v111;
    if (((v111.u8[7] == 1) & v50) == 1)
    {
      __blendsparse_dst_float_src_float(&v108, v103, v104, v99, v105, *v110.i64, *v111.i64, v86);
    }

    else
    {
      __blendsparse_dst_float3_src_generic(&v108, v103, v104, v99, v105, v110);
    }

    v89 = v85;
    if (*(v85 + 192) != 1)
    {
      goto LABEL_62;
    }

    if (!v98)
    {
      goto LABEL_62;
    }

    MorphableSourceMask = C3DMeshGetMorphableSourceMask(v95[0], v87);
    v89 = v85;
    if ((MorphableSourceMask & 2) == 0)
    {
      goto LABEL_62;
    }

    v108 = 0u;
    v109 = 0u;
    C3DMeshSourceGetContent(v98, v87, &v108);
    v106 = v108;
    v107 = v109;
    if (((v109.u8[7] == 1) & v53) == 1)
    {
      __blendsparse_dst_float_src_float(&v106, v102, v104, v99, v105, *v108.i64, *v109.i64, v91);
    }

    else
    {
      __blendsparse_dst_float3_src_generic(&v106, v102, v104, v99, v105, v108);
    }
  }

  else
  {
    v110 = 0u;
    v111 = 0u;
    C3DMeshSourceGetContent(v97, v21, &v110);
    v108 = v110;
    v109 = v111;
    if (v50)
    {
      __blend_dst_float_src_float(&v108, v103, v104, v105, *v110.i64);
    }

    else
    {
      __blend_dst_float3_src_generic(&v108, v103, v104, v105, *v110.i64, v111, v88);
    }

    v89 = v85;
    if (*(v85 + 192) != 1)
    {
      goto LABEL_62;
    }

    if (!v98)
    {
      goto LABEL_62;
    }

    v92 = C3DMeshGetMorphableSourceMask(v95[0], v87);
    v89 = v85;
    if ((v92 & 2) == 0)
    {
      goto LABEL_62;
    }

    v108 = 0u;
    v109 = 0u;
    C3DMeshSourceGetContent(v98, v87, &v108);
    v106 = v108;
    v107 = v109;
    if (v53)
    {
      __blend_dst_float_src_float(&v106, v102, v104, v105, *v108.i64);
    }

    else
    {
      __blend_dst_float3_src_generic(&v106, v102, v104, v105, *v108.i64, v109, v93);
    }
  }

  v89 = v85;
LABEL_62:
  v94 = v96;
  if ((*(v89 + 192) & 1) == 0)
  {
    C3DMeshUnifyNormals(v96, v96, 0, 0);
  }

  C3DMeshResetBoundingVolumes(v94, v87);
}

void __blendsparse_dst_float_src_float(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, __n128 i)
{
  v77 = *MEMORY[0x277D85DE8];
  if (*(result + 23) != 1)
  {
    v11 = scn_default_log(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (*(result + 22) == 4 * *(result + 24))
  {
    if (a5 >= 1)
    {
      v19 = 0;
      do
      {
        v20 = (a2 + 32 * v19);
        v21 = *v20;
        v22 = *(v20 + 22);
        i.n128_u32[0] = *(a3 + 4 * v19);
        v23 = (a4 + (v19 << 6));
        v24 = *(v23 + 4);
        v25 = *(v23 + 20);
        v26 = *(v23 + 36);
        v74 = *v23;
        v75 = v25;
        v76[0] = v26;
        *(v76 + 12) = v23[3];
        if (v24)
        {
          v27 = 0;
          v28 = 0;
          v67 = vdupq_lane_s32(i.n128_u64[0], 0);
          v68 = i;
          do
          {
            v73 = 0;
            v69 = v74;
            v70 = v24;
            v71 = v75;
            v72[0] = v76[0];
            *(v72 + 12) = *(v76 + 12);
            C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v69, v27, &v73 + 1, &v73);
            v29 = v73 - HIDWORD(v73);
            v30 = *(result + 24);
            v31 = (v73 - HIDWORD(v73)) * v30;
            v32 = (*result + HIDWORD(v73) * *(result + 22));
            v33 = (v21 + v28 * v22);
            v34 = (-HIDWORD(v73) & 3) * v30;
            v35 = v31 - v34;
            if (v31 <= v34)
            {
              v40 = 0;
              i = v68;
            }

            else
            {
              v36 = v34;
              for (i = v68; v36; --v36)
              {
                v37 = *v33++;
                v32->f32[0] = v32->f32[0] + (v37 * v68.n128_f32[0]);
                v32 = (v32 + 4);
              }

              if (v35 >= 4)
              {
                v38 = v35 >> 2;
                do
                {
                  v39 = *v33;
                  v33 += 4;
                  *v32 = vmlaq_f32(*v32, v67, v39);
                  ++v32;
                  --v38;
                }

                while (v38);
              }

              v40 = (v35 & 0xFFFFFFFC) + v34;
            }

            for (j = v31 - v40; j; --j)
            {
              v42 = *v33++;
              v32->f32[0] = v32->f32[0] + (v42 * i.n128_f32[0]);
              v32 = (v32 + 4);
            }

            v28 += v29;
            ++v27;
          }

          while (v27 != v24);
        }

        ++v19;
      }

      while (v19 != a5);
    }
  }

  else if (a5 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = (a2 + 32 * v43);
      v45 = *v44;
      v46 = *(v44 + 22);
      v47 = *(a3 + 4 * v43);
      v48 = (a4 + (v43 << 6));
      v49 = *(v48 + 4);
      v50 = *(v48 + 20);
      v51 = *(v48 + 36);
      v74 = *v48;
      v75 = v50;
      v76[0] = v51;
      *(v76 + 12) = v48[3];
      if (v49)
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v73 = 0;
          v69 = v74;
          v70 = v49;
          v71 = v75;
          v72[0] = v76[0];
          *(v72 + 12) = *(v76 + 12);
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v69, v52, &v73 + 1, &v73);
          v55 = v73;
          v54 = HIDWORD(v73);
          if (HIDWORD(v73) < v73)
          {
            v56 = *result;
            v57 = *(result + 22);
            v58 = *(result + 24);
            v59 = HIDWORD(v73) * v57;
            v60 = (v45 + v46 * v53);
            do
            {
              if (v58)
              {
                v61 = (v56 + v59);
                v62 = v60;
                v63 = v58;
                do
                {
                  v64 = *v62++;
                  *v61 = *v61 + (v64 * v47);
                  ++v61;
                  --v63;
                }

                while (v63);
              }

              ++v53;
              ++v54;
              v59 += v57;
              v60 = (v60 + v46);
            }

            while (v55 != v54);
          }

          ++v52;
        }

        while (v52 != v49);
      }

      ++v43;
    }

    while (v43 != a5);
  }
}

void __blendsparse_dst_float3_src_generic(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + 32 * v7);
      v27 = v7;
      v28 = *v8;
      v9 = *(v8 + 20);
      v10 = *(v8 + 22);
      a6.i32[0] = *(a3 + 4 * v7);
      v11 = (a4 + (v7 << 6));
      v35 = *v11;
      v12 = *(v11 + 4);
      v13 = *(v11 + 36);
      v36 = *(v11 + 20);
      v37[0] = v13;
      *(v37 + 12) = v11[3];
      if (v12)
      {
        v14 = 0;
        v15 = 0;
        v29 = vdupq_lane_s32(*a6.f32, 0);
        do
        {
          v34 = 0;
          v30 = v35;
          v31 = v12;
          v32 = v36;
          v33[0] = v37[0];
          *(v33 + 12) = *(v37 + 12);
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v30, v14, &v34 + 1, &v34);
          v18 = v34;
          v19 = HIDWORD(v34);
          if (HIDWORD(v34) < v34)
          {
            v20 = (v28 + v10 * v15);
            do
            {
              ++v15;
              *a6.i64 = C3DConvertFloatingTypeToFloat4(v9, v20, a6, v16.f32[0], v17);
              v21 = *result + v19 * *(result + 22);
              v22.i64[0] = *v21;
              v22.i64[1] = *(v21 + 8);
              v17 = v29.f32[0];
              v16 = vmlaq_f32(v22, v29, a6);
              *v21 = v16.i64[0];
              *(v21 + 8) = v16.i32[2];
              ++v19;
              v20 = (v20 + v10);
            }

            while (v18 != v19);
          }

          ++v14;
        }

        while (v14 != v12);
      }

      v7 = v27 + 1;
    }

    while (v27 + 1 != a5);
  }
}

void __blend_dst_float_src_float(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(result + 23) != 1)
  {
    v9 = scn_default_log(result, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(result + 16);
  v18 = *(result + 22);
  v19 = *(result + 24);
  if (v18 == 4 * v19)
  {
    if (a4 >= 1)
    {
      v20 = 0;
      v21 = ((3 * v17) >> 2) & 0xFFFFFFFFFFFFFFFLL;
      v22 = (3 * v17) >> 2;
      do
      {
        v23 = a2 + 32 * v20;
        v24 = *v23;
        v25 = *(v23 + 22);
        LODWORD(a5) = *(a3 + 4 * v20);
        if (v25 == 4 * *(v23 + 24))
        {
          v26 = *result;
          if (v17 >= 2)
          {
            v27 = vdupq_lane_s32(*&a5, 0);
            v28 = *v23;
            v29 = ((3 * v17) >> 2) & 0xFFFFFFFFFFFFFFFLL;
            do
            {
              v30 = *v28++;
              *v26 = vmlaq_f32(*v26, v27, v30);
              ++v26;
              --v29;
            }

            while (v29);
            v26 = *result;
          }

          if (3 * v17 > 4 * v21)
          {
            f32 = v26[v22].f32;
            v32 = v24[v22].f32;
            v33 = 3 * v17 - 4 * v21;
            do
            {
              v34 = *v32++;
              *f32 = *f32 + (v34 * *&a5);
              ++f32;
              --v33;
            }

            while (v33);
          }
        }

        else if (v17)
        {
          v35 = 0;
          v36 = *result;
          v37 = *(result + 22);
          v38 = *(result + 24);
          do
          {
            v39 = v24;
            v40 = v36;
            v41 = v38;
            if (v38)
            {
              do
              {
                v42 = *v39++;
                *v40 = *v40 + (v42 * *&a5);
                ++v40;
                --v41;
              }

              while (v41);
            }

            ++v35;
            v36 = (v36 + v37);
            v24 = (v24 + v25);
          }

          while (v35 != v17);
        }

        ++v20;
      }

      while (v20 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v43 = 0;
    do
    {
      if (v17)
      {
        v44 = 0;
        v45 = a2 + 32 * v43;
        v46 = *v45;
        v47 = *(a3 + 4 * v43);
        v48 = *(v45 + 22);
        v49 = *result;
        do
        {
          v50 = v46;
          v51 = v49;
          v52 = v19;
          if (v19)
          {
            do
            {
              v53 = *v50++;
              *v51 = *v51 + (v53 * v47);
              ++v51;
              --v52;
            }

            while (v52);
          }

          ++v44;
          v49 = (v49 + v18);
          v46 = (v46 + v48);
        }

        while (v44 != v17);
      }

      ++v43;
    }

    while (v43 != a4);
  }
}

void __blend_dst_float3_src_generic(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float32x4_t a6, float a7)
{
  if (*(result + 23) != 1)
  {
    v11 = scn_default_log(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a4 >= 1)
  {
    v19 = 0;
    v20 = *(result + 16);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = a2 + 32 * v19;
        v23 = *v22;
        v24 = (a3 + 4 * v19);
        v25 = *(v22 + 22);
        v26 = *(v22 + 20);
        v27 = vld1q_dup_f32(v24);
        v30 = v27;
        do
        {
          *v27.i64 = C3DConvertFloatingTypeToFloat4(v26, v23, v27, a6.f32[0], a7);
          v28 = *result + v21 * *(result + 22);
          v29.i64[0] = *v28;
          v29.i64[1] = *(v28 + 8);
          a7 = v30.f32[0];
          a6 = vmlaq_f32(v29, v30, v27);
          *v28 = a6.i64[0];
          *(v28 + 8) = a6.i32[2];
          ++v21;
          v23 = (v23 + v25);
        }

        while (v20 != v21);
      }

      ++v19;
    }

    while (v19 != a4);
  }
}

__CFArray *C3DMorphCopyMainTargets(uint64_t a1)
{
  if (*(a1 + 92))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x277CBF128]);
    if (*(a1 + 88))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v3 += *(*(a1 + 96) + 4 * v4);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3 - 1);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        ++v4;
      }

      while (v4 < *(a1 + 88));
    }

    return Mutable;
  }

  if (*(a1 + 112))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x277CBF128]);
    if (*(a1 + 88))
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(*(a1 + 72), v6);
        CFArrayAppendValue(Mutable, v7);
        ++v6;
      }

      while (v6 < *(a1 + 88));
    }

    return Mutable;
  }

  v8 = *(a1 + 72);
  if (!v8)
  {
    return 0;
  }

  return CFRetain(v8);
}

uint64_t C3DMorphGetWeightCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 80);
  if (!v10)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v10 = *(a1 + 80)) == 0))
    {
      v11 = scn_default_log(v10, a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
      }

      v10 = 0;
    }
  }

  result = C3DGenericSourceGetAccessor(v10, a2);
  if (result)
  {
    return C3DSourceAccessorGetCount(result);
  }

  return result;
}

float C3DMorphGetWeightAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 80);
  if (!v11)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v11 = *(a1 + 80)) == 0))
    {
      v12 = scn_default_log(v11, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v12, a2, v13, v14, v15, v16, v17, v18);
      }

      v11 = 0;
    }
  }

  Accessor = C3DGenericSourceGetAccessor(v11, a2);
  v20 = 0.0;
  if (C3DSourceAccessorGetCount(Accessor) > a2)
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, a2);
    if (ValuePtrAtIndex)
    {
      return *ValuePtrAtIndex;
    }
  }

  return v20;
}

void C3DMorphSetWeightAtIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 80);
  if (!v13)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v13 = *(a1 + 80)) == 0) && (!*(a1 + 72) || (_setupWeights(a1, 0), (v13 = *(a1 + 80)) == 0)))
    {
      v14 = scn_default_log(v13, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v14, a2, v15, v16, v17, v18, v19, v20);
      }

      v13 = 0;
    }
  }

  Accessor = C3DGenericSourceGetAccessor(v13, a2);
  if (C3DSourceAccessorGetCount(Accessor) > a2)
  {
    MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, a2);
    if (MutableValuePtrAtIndex)
    {
      v24 = *MutableValuePtrAtIndex;
      if (*MutableValuePtrAtIndex != a3)
      {
        *MutableValuePtrAtIndex = a3;
        __morphWeightsHaveChanged(a1, v23, v24);
      }
    }
  }
}

uint64_t C3DMorphCreateCopy(_BOOL8 WeightCount_cold_1, uint64_t a2)
{
  v2 = WeightCount_cold_1;
  if (!WeightCount_cold_1)
  {
    v3 = scn_default_log(0, a2);
    WeightCount_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (WeightCount_cold_1)
    {
      C3DMorphGetWeightCount_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v11 = C3DMorphCreate(WeightCount_cold_1, a2);
  *(v11 + 64) = *(v2 + 64);
  *(v11 + 184) = *(v2 + 184);
  *(v11 + 192) = *(v2 + 192);
  v12 = *(v2 + 80);
  if (v12)
  {
    DeepCopy = C3DGenericSourceCreateDeepCopy(v12, v10);
    C3DMorphSetWeightsSource(v11, DeepCopy, v14);
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
    }
  }

  v15 = *(v2 + 72);
  if (v15)
  {
    *(v11 + 72) = CFArrayCreateMutableCopy(0, 0, v15);
  }

  v16 = *(v2 + 88);
  *(v11 + 88) = v16;
  *(v11 + 112) = *(v2 + 112);
  *(v11 + 128) = *(v2 + 128);
  *(v11 + 144) = *(v2 + 144);
  if (*(v2 + 96))
  {
    v17 = 4 * v16;
    v18 = malloc_type_malloc(v17, 0xB9A3FB46uLL);
    *(v11 + 96) = v18;
    memcpy(v18, *(v2 + 96), v17);
  }

  if (*(v2 + 104))
  {
    v19 = 4 * *(v2 + 92);
    v20 = malloc_type_malloc(v19, 0x84A5E6B0uLL);
    *(v11 + 104) = v20;
    memcpy(v20, *(v2 + 104), v19);
  }

  if (*(v2 + 120))
  {
    v21 = 4 * *(v2 + 112);
    v22 = malloc_type_malloc(v21, 0x733211C5uLL);
    *(v11 + 120) = v22;
    memcpy(v22, *(v2 + 120), v21);
  }

  if (*(v2 + 136))
  {
    v23 = 4 * *(v2 + 128);
    v24 = malloc_type_malloc(v23, 0xB7DDFAEBuLL);
    *(v11 + 136) = v24;
    memcpy(v24, *(v2 + 136), v23);
  }

  if (*(v2 + 152))
  {
    v25 = 4 * *(v2 + 112);
    v26 = malloc_type_malloc(v25, 0x6BD0CE34uLL);
    *(v11 + 152) = v26;
    memcpy(v26, *(v2 + 152), v25);
  }

  if (*(v2 + 160))
  {
    v27 = 4 * *(v2 + 144);
    v28 = malloc_type_malloc(v27, 0xCD358E9uLL);
    *(v11 + 160) = v28;
    memcpy(v28, *(v2 + 160), v27);
  }

  if (*(v2 + 168))
  {
    v29 = 4 * (*(v2 + 112) + *(v2 + 92) + *(v2 + 144) + *(v2 + 88));
    v30 = malloc_type_malloc(v29, 0x496BEFABuLL);
    *(v11 + 168) = v30;
    memcpy(v30, *(v2 + 168), v29);
  }

  C3DEntityCopyTo(v2, v11);
  return v11;
}

void C3DMorphCreateTargetNormalsIfNeeded(uint64_t a1, __C3DGeometry *a2)
{
  if (*(a1 + 192))
  {
    if (!C3DGeometryUsesDeformerBasedDynamicMesh(a2))
    {
      Mesh = C3DGeometryGetMesh(a2, v4);
      if (Mesh)
      {
        v7 = Mesh;
        EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a2, v6);
        if (C3DMeshHasSourcesWithSemantic(v7, 1, EffectiveDataKindForRendering, 0))
        {
          v9 = *(a1 + 72);
          if (v9)
          {
            Count = CFArrayGetCount(v9);
            v11 = Count - 1;
            if (Count >= 1)
            {
              v12 = Count;
              v13 = 0;
              for (i = 0; i != v12; ++i)
              {
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
                  if (!ValueAtIndex)
                  {
                    break;
                  }

                  v17 = C3DGeometryGetMesh(ValueAtIndex, v16);
                  if (!v17)
                  {
                    break;
                  }

                  v18 = v17;
                  if (C3DMeshGetNormalSource(v17, 1))
                  {
                    break;
                  }

                  v13 = 1;
                  C3DMeshUnifyNormals(v18, v7, 1, 1);
                  if (v11 == i++)
                  {
                    goto LABEL_17;
                  }
                }
              }

              if ((v13 & 1) == 0)
              {
                return;
              }

LABEL_17:

              C3DMeshUnifyNormals(v7, v7, 1, 1);
            }
          }
        }
      }
    }
  }
}

uint64_t C3DMorphConvertToSparse(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(a1 + 193) == a3)
  {
    return 0;
  }

  v6 = a1;
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a2))
  {
    return 0;
  }

  *(v6 + 193) = a3;
  if (a3)
  {
    C3DMorphConvertToCalculationMode(v6, a2, 1, a4);
  }

  Mesh = C3DGeometryGetMesh(a2, v7);
  Count = CFArrayGetCount(*(v6 + 72));
  if (Count >= 1)
  {
    v9 = 0;
    allocator = *MEMORY[0x277CBECE8];
    v50 = v6;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 72), v9);
      v12 = C3DGeometryGetMesh(ValueAtIndex, v11);
      PositionSource = 0;
      v67 = 0;
      PositionSource = C3DMeshGetPositionSource(v12, 0);
      NormalSource = C3DMeshGetNormalSource(v12, 0);
      v67 = NormalSource;
      if (PositionSource)
      {
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v12, 0, 0);
        NormalSource = v67;
      }

      else
      {
        ChannelForSourceWithSemanticAtIndex = -1;
      }

      v64 = ChannelForSourceWithSemanticAtIndex;
      if (NormalSource)
      {
        v16 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v12, 1, 0);
        v17 = v67 == 0;
        v65 = v16;
        if (v67)
        {
          v18 = 2;
LABEL_16:
          if (v16 != ChannelForSourceWithSemanticAtIndex)
          {
            v19 = scn_default_log(v16, v14);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              C3DMorphConvertToSparse_cold_1(v62, &v63, v19);
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
        v16 = -1;
        v65 = -1;
        v17 = 1;
      }

      v18 = 1;
      if (!v17)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (a3)
      {
        values = C3DMeshElementCreateIntervalList(&PositionSource, v18, 1);
        if (values)
        {
          v21 = CFArrayCreate(allocator, &values, 1, MEMORY[0x277CBF128]);
          C3DMeshSetMeshElements(v12, v21);
          CFRelease(v21);
          CFRelease(values);
          for (i = 0; i != v18; ++i)
          {
            PackedCopy = C3DMeshSourceCreatePackedCopy(*(&PositionSource + i), values, *(&v64 + i));
            if (PackedCopy)
            {
              v25 = PackedCopy;
              if (a4)
              {
                (*(a4 + 16))(a4, ValueAtIndex, *(&PositionSource + i), PackedCopy);
              }

              C3DMeshSetSourceWithInputSet(v12, v25, 0, 255);
              CFRelease(v25);
            }

            else
            {
              v26 = scn_default_log(0, v24);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v59 = i;
                v60 = 1024;
                v61 = v9;
                _os_log_error_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_ERROR, "Error: Failed to create packed source %d for sparse morph target %d", buf, 0xEu);
              }
            }
          }
        }

        else
        {
          v40 = scn_default_log(0, v20);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v59 = v9;
            _os_log_error_impl(&dword_21BEF7000, v40, OS_LOG_TYPE_ERROR, "Error: Could not create intervals for sparse morph target %d (this morph target is useless)", buf, 8u);
          }

          C3DMeshSetMeshElements(v12, 0);
          p_PositionSource = &PositionSource;
          do
          {
            v42 = *p_PositionSource++;
            C3DMeshRemoveSource(v12, v42);
            --v18;
          }

          while (v18);
        }

        v38 = v9;
      }

      else
      {
        ElementsCount = C3DMeshGetElementsCount(v12, v14);
        if (ElementsCount != 1)
        {
          v29 = scn_default_log(ElementsCount, v28);
          ElementsCount = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
          if (ElementsCount)
          {
            C3DMorphConvertToSparse_cold_2(v56, &v57, v29);
          }
        }

        if (*(v6 + 64) != 1)
        {
          v30 = scn_default_log(ElementsCount, v28);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            C3DMorphConvertToSparse_cold_3(v54, &v55, v30);
          }
        }

        ElementAtIndex = C3DMeshGetElementAtIndex(v12, 0, 0);
        v32 = C3DMeshGetPositionSource(Mesh, 0);
        v38 = v9;
        if (v32)
        {
          v39 = C3DMeshSourceGetCount(v32, v33);
        }

        else
        {
          v39 = 0;
        }

        v43 = &v64;
        v44 = &PositionSource;
        do
        {
          v45 = *v43++;
          UnpackedCopy = C3DMeshSourceCreateUnpackedCopy(*v44, ElementAtIndex, v39, v45, v34, v35, v36, v37);
          if (UnpackedCopy)
          {
            v47 = UnpackedCopy;
            if (a4)
            {
              (*(a4 + 16))(a4, ValueAtIndex, *v44, UnpackedCopy);
            }

            C3DMeshSetSourceWithInputSet(v12, v47, 0, 255);
            CFRelease(v47);
          }

          ++v44;
          --v18;
        }

        while (v18);
      }

      v9 = v38 + 1;
      v6 = v50;
    }

    while (v38 + 1 != Count);
  }

  return 1;
}

uint64_t C3DMorphConvertToCalculationMode(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) == a3 || C3DGeometryUsesDeformerBasedDynamicMesh(a2))
  {
    return 0;
  }

  *(a1 + 64) = a3;
  Mesh = C3DGeometryGetMesh(a2, v7);
  PositionSource = C3DMeshGetPositionSource(Mesh, 0);
  NormalSource = C3DMeshGetNormalSource(Mesh, 0);
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v14 = C3DGeometryGetMesh(ValueAtIndex, v13);
      v15 = C3DMeshGetPositionSource(v14, 0);
      v22 = C3DMeshGetNormalSource(v14, 0);
      if (v22)
      {
        v23 = NormalSource == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = !v23;
      if (a3 == 1)
      {
        DeltaSource = C3DMeshSourceCreateDeltaSource(PositionSource, v15);
        if (v24)
        {
          AbsoluteSource = C3DMeshSourceCreateDeltaSource(NormalSource, v22);
          goto LABEL_17;
        }
      }

      else
      {
        DeltaSource = C3DMeshSourceCreateAbsoluteSource(PositionSource, v15, v16, v17, v18, v19, v20, v21);
        if (v24)
        {
          AbsoluteSource = C3DMeshSourceCreateAbsoluteSource(NormalSource, v22, v27, v28, v29, v30, v31, v32);
LABEL_17:
          v33 = AbsoluteSource;
          if (DeltaSource)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }
      }

      v33 = 0;
      if (DeltaSource)
      {
LABEL_20:
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v15, DeltaSource);
        }

        C3DMeshSetSourceWithInputSet(v14, DeltaSource, 0, 255);
        CFRelease(DeltaSource);
      }

LABEL_23:
      if (v33)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v22, v33);
        }

        C3DMeshSetSourceWithInputSet(v14, v33, 0, 255);
        CFRelease(v33);
      }
    }
  }

  return 1;
}

uint64_t C3DMorphIsUsingSparseTargets(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 193);
}

const UInt8 *C3DMorphGetRuntimeWeights(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 168);
  if (result || (v5 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144)) != 0 && (*(a1 + 168) = malloc_type_malloc(4 * (*(a1 + 88) + v5), 0x100004052888210uLL), __morphWeightsHaveChanged(a1, v6, v7), (result = *(a1 + 168)) != 0))
  {
    *a2 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88);
  }

  else
  {
    v8 = *(a1 + 80);
    if (!v8)
    {
      if (*(a1 + 72))
      {
        _setupWeights(a1, 0);
        v8 = *(a1 + 80);
      }

      else
      {
        v8 = 0;
      }
    }

    Accessor = C3DGenericSourceGetAccessor(v8, a2);
    *a2 = C3DSourceAccessorGetCount(Accessor);

    return C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
  }

  return result;
}

uint64_t C3DMorphGetIndexOfTargetWithName(uint64_t a1, void *key)
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 176);
  if (!v4)
  {
    v5 = C3DMorphCopyMainTargets(a1);
    if (!v5)
    {
      return -1;
    }

    v6 = v5;
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        Name = C3DGeometryGetName(ValueAtIndex, v13);
        if (!Name)
        {
          v16 = scn_default_log(0, v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            C3DMorphGetIndexOfTargetWithName_cold_1(v19, v20, v16);
          }
        }

        CFDictionaryAddValue(Mutable, Name, i);
      }
    }

    *(a1 + 176) = CFDictionaryCreateCopy(v7, Mutable);
    CFRelease(Mutable);
    CFRelease(v6);
    v4 = *(a1 + 176);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v4, key, &value))
  {
    return value;
  }

  else
  {
    return -1;
  }
}

uint64_t C3DMorphGetClearCPUDataAfterUpload(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 194);
}

void C3DMorphSetClearCPUDataAfterUpload(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 194) = v2;
}

float C3DMorphGetWeightIncrementalThreshold(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 184);
}

void C3DMorphSetWeightIncrementalThreshold(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 184) = a3;
}

id _C3DMorphCFFinalize(uint64_t a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationMorphWillDie", a1, 0, 1u);
  v4 = *(a1 + 80);
  if (v4)
  {
    C3DGenericSourceSetListener(v4, a1);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 176) = 0;
  }

  free(*(a1 + 168));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 120));
  free(*(a1 + 136));
  free(*(a1 + 152));
  free(*(a1 + 160));

  return C3DEntityCFFinalize(a1, v8);
}

__CFString *_C3DMorphCFCopyDebugDescription(uint64_t a1)
{
  v2 = C3DMorphCopyMainTargets(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1, v6);
  CFStringAppendFormat(Mutable, 0, @"<C3DMorph %p %@\n", a1, Name);
  CFStringAppendFormat(Mutable, 0, @"  calc:%d morphNrm:%d targets:%ld\n", *(a1 + 64), *(a1 + 192), Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      WeightAtIndex = C3DMorphGetWeightAtIndex(a1, i);
      CFStringAppendFormat(Mutable, 0, @"[%ld] weight:%f %@\n", i, WeightAtIndex, ValueAtIndex);
    }
  }

  CFStringAppend(Mutable, @">");
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

BOOL _C3DMorphInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v7 = C3DEntityInitWithPropertyList(a1, a2);
  if ((v7 & 1) == 0)
  {
    v22 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_1();
    }

    return 0;
  }

  if (!a1)
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  Value = CFDictionaryGetValue(a2, @"morphingType");
  if (!Value)
  {
    v24 = scn_default_log(0, v18);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_4();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      v21 = 0;
      goto LABEL_20;
    }

    return 0;
  }

  valuePtr = 0;
  v19 = CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
  v21 = v19 != 0;
  if (!v19)
  {
    v26 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_3();
      if (!a4)
      {
        return v21;
      }
    }

    else if (!a4)
    {
      return v21;
    }

    if (*a4)
    {
      return v21;
    }

    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
LABEL_20:
    *a4 = MalformedDocumentError;
    return v21;
  }

  *(a1 + 64) = valuePtr;
  return v21;
}

__CFDictionary *_C3DMorphCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = C3DEntityCopyPropertyList(a1, a2, a3);
  v7 = v5;
  if (!a1)
  {
    v8 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 80));
  v16 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v7, @"weightsID", v16);
  CFRelease(v16);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (CFArrayGetCount(*(a1 + 72)) >= 1)
  {
    v18 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v18);
      Mesh = C3DGeometryGetMesh(ValueAtIndex, v20);
      valuePtr = C3DLibraryGetEntryID(a2, Mesh);
      v22 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      CFArrayAppendValue(Mutable, v22);
      CFRelease(v22);
      ++v18;
    }

    while (v18 < CFArrayGetCount(*(a1 + 72)));
  }

  CFDictionarySetValue(v7, @"targetIDs", Mutable);
  CFRelease(Mutable);
  LOWORD(valuePtr) = *(a1 + 64);
  v23 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  CFDictionarySetValue(v7, @"morphingType", v23);
  CFRelease(v23);
  OwnData = C3DGenericSourceGetOwnData(*(a1 + 80), v24);
  CFDictionarySetValue(v7, @"weightsData", OwnData);
  return v7;
}

uint64_t _C3DMorphFinalizeDeserialization(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  *(a1 + 72) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = CFDictionaryGetValue(a3, @"targetIDs");
  if (!result)
  {
    return result;
  }

  v17 = result;
  if (CFArrayGetCount(result) < 1)
  {
LABEL_10:
    v30 = *(a1 + 72);
    if (v30)
    {
      LODWORD(v30) = CFArrayGetCount(v30);
    }

    *(a1 + 88) = v30;
    result = CFDictionaryGetValue(a3, @"weightsID");
    if (!result)
    {
      return result;
    }

    valuePtr = 0;
    Value = CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    if (Value)
    {
      v33 = valuePtr;
      TypeID = C3DGenericSourceGetTypeID(Value, v32);
      RemappedID = C3DLibraryGetRemappedID(a2, v33, TypeID);
      if (RemappedID)
      {
        v37 = RemappedID;
        v38 = C3DGenericSourceGetTypeID(RemappedID, v36);
        Entry = C3DLibraryGetEntry(a2, v38, v37);
        v40 = CFDictionaryGetValue(a3, @"weightsData");
        C3DGenericSourceSetData(Entry, v40);
        C3DMorphSetWeightsSource(a1, Entry, v41);
        return 1;
      }

      v43 = scn_default_log(0, v36);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        _C3DMorphFinalizeDeserialization_cold_2();
        if (a4)
        {
LABEL_21:
          if (!*a4)
          {
            *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
          }
        }
      }

      else
      {
LABEL_20:
        if (a4)
        {
          goto LABEL_21;
        }
      }
    }

    return 0;
  }

  v18 = 0;
  while (1)
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v18);
    result = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
    if (!result)
    {
      return result;
    }

    v21 = valuePtr;
    v22 = C3DMeshGetTypeID(result, v20);
    v23 = C3DLibraryGetRemappedID(a2, v21, v22);
    if (!v23)
    {
      v42 = scn_default_log(0, v24);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      _C3DMorphFinalizeDeserialization_cold_3();
      if (a4)
      {
        goto LABEL_21;
      }

      return 0;
    }

    v25 = v23;
    v26 = C3DMeshGetTypeID(v23, v24);
    v27 = C3DLibraryGetEntry(a2, v26, v25);
    v29 = C3DGeometryCreate(v27, v28);
    C3DGeometrySetMesh(v29, v27);
    CFArrayAppendValue(*(a1 + 72), v29);
    CFRelease(v29);
    if (++v18 >= CFArrayGetCount(v17))
    {
      goto LABEL_10;
    }
  }
}

CFIndex _C3DMorphFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DLibraryAddEntry(a2, ValueAtIndex);
      v9 = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DFillLibraryForSerialization(v9, a2, a3);
      result = CFArrayGetCount(*(a1 + 72));
    }
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    C3DLibraryAddEntry(a2, v10);
    v11 = *(a1 + 80);

    return C3DFillLibraryForSerialization(v11, a2, a3);
  }

  return result;
}

uint64_t _C3DMorphSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    if (*(a1 + 72))
    {
      _setupWeights(a1, 0);
      v6 = *(a1 + 80);
    }

    else
    {
      v6 = 0;
    }
  }

  return C3DSearchByID(v6, a2);
}

__CFArray *_C3DMorphCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        Name = C3DGeometryGetName(ValueAtIndex, v8);
        if (Name)
        {
          v10 = Name;
          CFRetain(Name);
        }

        else
        {
          v10 = CFStringCreateWithFormat(0, 0, @"<unnamed %d>", i);
        }

        v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v17 = 1;
        valuePtr = 5;
        v16 = ValueAtIndex;
        v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
        v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
        CFDictionarySetValue(v11, @"name", v10);
        CFDictionarySetValue(v11, @"type", v12);
        CFDictionarySetValue(v11, @"address", v14);
        CFDictionarySetValue(v11, @"semantic", v13);
        CFArrayAppendValue(Mutable, v11);
        CFRelease(v13);
        CFRelease(v11);
        CFRelease(v14);
        CFRelease(v12);
        CFRelease(v10);
      }
    }
  }

  return Mutable;
}

void _C3DMorphEnumerateSubEntities(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 80) || *(a1 + 72) && (_setupWeights(a1, 0), *(a1 + 80)))
    {
      v4 = *(a2 + 16);

      v4(a2);
    }
  }
}

void __evaluateRuntimeWeightsForInBetween(uint64_t result, _DWORD *a2, unsigned int *a3, unsigned int a4, uint64_t a5, unsigned int a6, float a7)
{
  v7 = *a2;
  v8 = *a3;
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a6 - v7;
    if (a6 < v7)
    {
      v12 = 0;
    }

    v13 = result + 4 * v7;
    while (1)
    {
      if (v12 == v10)
      {
        v18 = scn_default_log(result, a2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __evaluateRuntimeWeightsForInBetween_cold_1(v7 + v10, a6, v18);
        }

        return;
      }

      v14 = v10 - a4;
      if (v11)
      {
        *(v13 + 4 * v10) = 0;
      }

      else if (a7 >= 1.0)
      {
        if (v14 != -1)
        {
          goto LABEL_16;
        }

        *(v13 + 4 * v10) = a7;
      }

      else
      {
        if (v14 == -1)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = *(a5 + 4 * v8);
        }

        if (v15 < a7)
        {
LABEL_16:
          v11 = 0;
          *(v13 + 4 * v10) = 0;
          goto LABEL_17;
        }

        if (v10)
        {
          v16 = *(a5 + 4 * (v8 - 1));
          v17 = (a7 - v16) / (v15 - v16);
          *(result + 4 * (v7 - 1 + v10)) = 1.0 - v17;
        }

        else
        {
          v17 = a7 / v15;
        }

        *(v13 + 4 * v10) = v17;
      }

      v11 = 1;
LABEL_17:
      if (v14 != -1)
      {
        ++v8;
      }

      if (++v10 == a4)
      {
        v19 = v7 + v10;
        goto LABEL_28;
      }
    }
  }

  v19 = v7 + 1;
  *(result + 4 * v7) = a7;
LABEL_28:
  *a2 = v19;
  *a3 = v8;
}

void C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 35);
  v8 = a1[6];
  v9 = a1[7];
  v10 = v8 + v9 * 2 * a2;
  v11 = v9 * ((2 * (a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
  if (v11 + v8 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 + v8;
  }

  if (a1[1] < (v7 + v7 * v12))
  {
    v13 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[1];
      v20 = *(a1 + 35);
      v21 = 136315650;
      v22 = "C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex";
      v23 = 1024;
      v24 = v12;
      v25 = 2048;
      v26 = v19 / v20;
      _os_log_error_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v21, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    return;
  }

  switch(v7)
  {
    case 4:
      v17 = *a1;
      *a3 = *(*a1 + 4 * v10);
      v15 = *(v17 + 4 * v8 + 4 * v11);
      goto LABEL_14;
    case 2:
      v16 = *a1;
      *a3 = *(*a1 + 2 * v10);
      v15 = *(v16 + 2 * v8 + 2 * v11);
      goto LABEL_14;
    case 1:
      v14 = *a1;
      *a3 = *(*a1 + v10);
      v15 = *(v14 + v8 + v11);
LABEL_14:
      *a4 = v15;
      return;
  }

  *a3 = 0;
  *a4 = 0;
  v18 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1();
  }
}

C3D::ConvertCubePass *C3D::ConvertCubePass::ConvertCubePass(C3D::ConvertCubePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  v6 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v6 = &unk_282DC70B8;
  *(v6 + 120) = *&a4->var0;
  snprintf(v6 + 256, 0x40uLL, "ConvertCubePass-%sTo%s", off_278300258[a4->var0], off_278300258[a4->var1]);
  if (!*(this + 241))
  {
    RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v7);
    v9 = ([(SCNMTLRenderContext *)RenderContext features]& 0x20) != 0;
    *(this + 117) = v9;
    *(this + 118) = v9;
    *(this + 19) = 6;
  }

  return this;
}

void C3D::ConvertCubePass::setup(C3D::ConvertCubePass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

void C3D::ConvertCubePass::compile(C3D::ConvertCubePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  v4 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v4) frameworkLibrary];
  v5 = C3D::Pass::descriptor(this);
  v6 = *(C3D::PassDescriptor::outputAtIndex(v5, 0) + 28);
  v7 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))));
  v8 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47));
  *(this + 31) = v8;
  if (!v8)
  {
    operator new();
  }
}

uint64_t C3D::ConvertCubePass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 248) + 16 :a2) detail:"state" :?NSRetainFct];
  if (*(v4 + 3376) != v5)
  {
    *(v4 + 3376) = v5;
    [*(v4 + 3392) setRenderPipelineState:v5];
  }

  v6 = C3D::Pass::inputTextureAtIndex(a1, 0);
  IsArray = SCNMTLTextureTypeIsArray([v6 textureType]);
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType([v6 textureType]);
  if (*(a2 + 18) || IsArray)
  {
    if (*(a1 + 240))
    {
      v9 = 1;
    }

    else
    {
      v9 = 6;
    }

    v6 = [v6 newTextureViewWithPixelFormat:objc_msgSend(v6 textureType:"pixelFormat") levels:ArrayElementType slices:*(a2 + 18), 1, 0, v9];
  }

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v6, 0);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), v10);
  if (([(SCNMTLRenderContext *)RenderContext features]& 0x400) != 0)
  {
    if (*(a1 + 117) == 1 || (v16 = *(a2 + 16), !*(a2 + 16)))
    {

      return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4, v12);
    }

    else
    {

      return SCNMTLRenderCommandEncoder::drawPrimitives(v4, MTLPrimitiveTypeTriangle, 0, 3, 1, v16);
    }
  }

  else
  {
    SCNMTLRenderCommandEncoder::setVertexBytes(v4, (a2 + 16), 2uLL, 0);
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v4, v13);
    SCNMTLRenderCommandEncoder::applyChangedStates(v4);
    v14 = *(v4 + 3392);

    return [v14 drawPrimitives:3 vertexStart:0 vertexCount:3];
  }
}

void C3D::ConvertCubePass::Resource::~Resource(C3D::ConvertCubePass::Resource *this)
{
  *this = &unk_282DC7128;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7128;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

const __CFArray *__allocateLastWeightsIfNeeded(uint64_t a1)
{
  result = C3DGeometryGetOverrideMaterial(*(a1 + 72));
  if (result)
  {
    result = CFArrayGetCount(result);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != *(a1 + 104))
  {
    free(*(a1 + 96));
    if (v3)
    {
      result = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
    }

    else
    {
      result = 0;
    }

    *(a1 + 96) = result;
    *(a1 + 104) = v3;
    *(a1 + 88) = 0;
  }

  return result;
}

uint64_t C3DMorpherGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DMorpherGetTypeID_onceToken != -1)
  {
    C3DMorpherGetTypeID_cold_1();
  }

  return C3DMorpherGetTypeID_typeID;
}

double __C3DMorpherGetTypeID_block_invoke()
{
  C3DMorpherGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_2817409D0 = kC3DC3DMorpherContextClassSerializable;
  unk_2817409E0 = *&off_282DC7168;
  result = *&kC3DC3DMorpherContextClassSceneLink;
  *&algn_281740990[16] = kC3DC3DMorpherContextClassSceneLink;
  *&algn_281740990[32] = unk_282DC7188;
  qword_2817409C0 = qword_282DC7198;
  unk_2817409C8 = _C3DMorpherSearchByID;
  qword_281740988 = _C3DMorpherCopyInstanceVariables;
  return result;
}

uint64_t C3DMorpherCreateWith(const void *a1, uint64_t a2)
{
  if (C3DMorpherGetTypeID_onceToken != -1)
  {
    C3DMorpherGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMorpherGetTypeID_typeID, 96);
  C3DMorpherSetMorph(Instance, a1);
  return Instance;
}

void C3DMorpherSetMorph(uint64_t a1, const void *a2)
{
  v4 = C3DGetSceneRef(a1, a2);
  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      C3DRemoveSceneRef(v5, v4);
    }
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __C3DMorphSetMorpher(v6, 0);
  v7 = *(a1 + 72);
  if (v7 == a2)
  {
    goto LABEL_13;
  }

  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  if (a2)
  {
LABEL_11:
    v8 = CFRetain(a2);
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:
  *(a1 + 72) = v8;
LABEL_13:
  free(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  if (a2)
  {
    __C3DMorphSetMorpher(a2, a1);
    __allocateLastWeightsIfNeeded(a1);
  }

  if (v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {

      C3DAddSceneRef(v9, v4);
    }
  }
}

uint64_t C3DMorpherCreateCopy(uint64_t a1, uint64_t a2)
{
  Copy = C3DMorphCreateCopy(*(a1 + 72), a2);
  v5 = C3DMorpherCreateWith(Copy, v4);
  CFRelease(Copy);
  C3DEntityCopyTo(a1, v5);
  return v5;
}

uint64_t C3DMorpherBeginIncrementalPass(_BOOL8 a1, uint64_t a2, void *a3, const UInt8 **a4, _DWORD *a5, float *a6)
{
  v10 = a2;
  v11 = a1;
  if (!a1)
  {
    v12 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DMorpherBeginIncrementalPass_cold_1(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v11 + 72);
  if (!v19)
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = *(v11 + 108);
  State = __C3DMorphGetState(v19);
  if (v28 != v10 || v28 == 0)
  {
    v31 = 2;
LABEL_16:
    *(v11 + 88) = State;
    __allocateLastWeightsIfNeeded(v11);
    *a3 = *(v11 + 96);
    v33 = 0;
    *a4 = C3DMorphGetRuntimeWeights(v19, &v33);
    *a5 = v33;
    *a6 = C3DMorphGetIncrementalThreshold(v19);
    return v31;
  }

  if (*(v11 + 88) != State)
  {
    v31 = 1;
    goto LABEL_16;
  }

  return 0;
}

uint64_t C3DMorpherEndIncrementalPass(uint64_t a1)
{
  v7 = 0;
  RuntimeWeights = C3DMorphGetRuntimeWeights(*(a1 + 72), &v7);
  IncrementalThreshold = C3DMorphGetIncrementalThreshold(*(a1 + 72));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 96);
    do
    {
      if (vabds_f32(*RuntimeWeights, *v5) > IncrementalThreshold)
      {
        *v5 = *RuntimeWeights;
      }

      ++RuntimeWeights;
      ++v5;
      --v4;
    }

    while (v4);
  }

  result = (*(a1 + 108) + 1);
  *(a1 + 108) = result;
  return result;
}

void _C3DMorpherPrepareMorphedMesh(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(*(a1 + 64), a2);
  PositionSource = C3DMeshGetPositionSource(a3, EffectiveDataKindForRendering);
  NormalSource = C3DMeshGetNormalSource(a3, EffectiveDataKindForRendering);
  if (!a4)
  {
    v13 = NormalSource;
    if (C3DMeshSourceGetMTLBuffer())
    {
      C3DMeshCopySources(a2, a3);
      PositionSource = C3DMeshGetPositionSource(a3, 1);
      v13 = C3DMeshGetNormalSource(a3, 1);
    }

    if (C3DMeshSourceIsMutable(PositionSource) && C3DMeshSourceGetValueType(PositionSource) == 9)
    {
      v14 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 1;
      v15 = C3DMeshGetPositionSource(a2, 1);
      CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(v15, 9, 1, v16, v17, v18, v19, v20);
      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a3, CopyWithBaseType, 0);
      CFRelease(CopyWithBaseType);
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (!C3DMeshSourceIsMutable(v13) || C3DMeshSourceGetValueType(v13) != 9)
    {
      v22 = C3DMeshGetNormalSource(a2, 1);
      v28 = C3DMeshSourceCreateCopyWithBaseType(v22, 9, 1, v23, v24, v25, v26, v27);
      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a3, v28, 0);
      CFRelease(v28);
      goto LABEL_16;
    }

LABEL_13:
    if (!v14)
    {
      return;
    }

LABEL_16:
    *(a1 + 108) = 0;
    return;
  }

  v12 = scn_default_log(NormalSource, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _C3DMorpherPrepareMorphedMesh_cold_1(v12);
  }
}

void C3DMorpherUpdateIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 72) && !C3DEngineContextIsClusteredShadingEnabled(a3))
  {
    State = __C3DMorphGetState(*(a1 + 72));
    if (*(a1 + 88) != State)
    {
      *(a1 + 88) = State;
      Mesh = C3DGeometryGetMesh(*(a1 + 64), v15);
      MorphedMeshLegacy = C3DMorpherGetMorphedMeshLegacy(a1, v17);
      _C3DMorpherPrepareMorphedMesh(a1, Mesh, MorphedMeshLegacy, 0);
      __allocateLastWeightsIfNeeded(a1);
      C3DMorphUpdateCPUMeshIncrementally(*(a1 + 72), Mesh, MorphedMeshLegacy, *(a1 + 96), *(a1 + 108) == 0);
      C3DMorpherEndIncrementalPass(a1);
      C3DMeshDidMutate(MorphedMeshLegacy, v19);
      C3DNodeBoundingBoxDidUpdate(a2, v20);
    }
  }
}

uint64_t C3DMorpherGetMorphedMeshLegacy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 80);
  if (!result)
  {
    result = *(a1 + 64);
    if (result)
    {
      Mesh = C3DGeometryGetMesh(result, a2);
      if (Mesh)
      {
        result = C3DMeshCreateCopy(Mesh, v12);
        *(a1 + 80) = result;
      }

      else
      {
        return *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t C3DMorpherGetBaseGeometry(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DMorpherSetBaseGeometry(uint64_t a1, __C3DGeometry *a2)
{
  v2 = *(a1 + 64);
  if (v2 != a2)
  {
    v5 = C3DGetSceneRef(a1, a2);
    v6 = v5;
    if (v2)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      C3DRemoveSceneRef(v2, v5);
    }

    v8 = *(a1 + 64);
    if (v8 != a2)
    {
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 64) = 0;
      }

      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(a1 + 64) = v9;
    }

    *(a1 + 88) = 0;
    if (a2 && v6)
    {
      C3DAddSceneRef(a2, v6);
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      v11 = *(a1 + 72);

      C3DMorphCreateTargetNormalsIfNeeded(v11, a2);
    }
  }
}

id _C3DMorpherCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    __C3DMorphSetMorpher(v2, 0);
    CFRelease(*(a1 + 72));
  }

  free(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1, v3);
}

__CFString *_C3DMorpherCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DMorpher %p baseGeom:%p morphedMesh:%p state:%d\n", a1, *(a1 + 64), *(a1 + 80), *(a1 + 88));
  CFStringAppendFormat(Mutable, 0, @"  morph:%@\n", *(a1 + 72));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFDictionary *_C3DMorpherCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 72));
  v15 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v14, @"morphID", v15);
  CFRelease(v15);
  return v14;
}

uint64_t _C3DMorpherFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"morphID");
  TypeID = C3DMorphGetTypeID(Value, v17);
  if (Value)
  {
    v20 = TypeID;
    valuePtr = 0;
    v21 = CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (v21)
    {
      RemappedID = C3DLibraryGetRemappedID(a2, valuePtr, v20);
      Entry = C3DLibraryGetEntry(a2, v20, RemappedID);
      if (Entry)
      {
        C3DMorpherSetMorph(a1, Entry);
        return 1;
      }
    }

    else
    {
      v34 = scn_default_log(v21, v22);
      Entry = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      if (Entry)
      {
        _C3DMorpherFinalizeDeserialization_cold_2(v34, v25, v35, v36, v37, v38, v39, v40);
      }
    }
  }

  else
  {
    v27 = scn_default_log(TypeID, v19);
    Entry = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (Entry)
    {
      _C3DMorpherFinalizeDeserialization_cold_3(v27, v25, v28, v29, v30, v31, v32, v33);
    }
  }

  v41 = scn_default_log(Entry, v25);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    _C3DMorpherFinalizeDeserialization_cold_4(v41, v42, v43, v44, v45, v46, v47, v48);
    if (!a4)
    {
      return 0;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void *_C3DMorpherFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DLibraryAddEntry(a2, *(a1 + 72));
  C3DLibraryAddEntry(a2, *(a1 + 64));
  C3DFillLibraryForSerialization(*(a1 + 72), a2, a3);
  return C3DFillLibraryForSerialization(*(a1 + 64), a2, a3);
}

uint64_t _C3DMorpherSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return C3DSearchByID(v6, a2);
}

uint64_t _C3DMorpherEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 72))
  {
    result = (*(a2 + 16))(a2);
  }

  if (*(v3 + 64))
  {
    v4 = *(a2 + 16);

    return v4(a2);
  }

  return result;
}

__CFArray *_C3DMorpherCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = 2;
  valuePtr = 5;
  v8 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v8);
  CFDictionarySetValue(v3, @"name", @"morph");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  return Mutable;
}

void _C3DFXContextCFFinalize(uint64_t a1, uint64_t a2, int64x2_t a3)
{
  C3DFXContextRemoveAllPassInstances(a1, a2, a3);
  __releaseBuiltinTechniques(a1);
  v5 = *(a1 + 240);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 240) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = C3DGetScene(*(a1 + 24), v4);
    C3DRemoveSceneRef(v6, v7);
    v8 = *(a1 + 24);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 24) = 0;
    }
  }

  v9 = *(a1 + 280);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 280) = 0;
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 296) = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  v13 = *(a1 + 208);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 208) = 0;
  }

  free(*(a1 + 200));
  if (*(a1 + 96) >= 1)
  {
    v14 = 0;
    do
    {
      CFRelease(*(*(a1 + 80) + 8 * v14++));
    }

    while (v14 < *(a1 + 96));
  }

  v15 = *(a1 + 80);
  if (v15)
  {

    free(v15);
  }
}

CFStringRef _C3DFXContextCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXContext>");
}

CFStringRef _C3DFXContextCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXContext>");
}

BOOL C3DFXContextSetPostProcessTechnique(_BOOL8 a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextSetPostProcessTechnique_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextGetStats_cold_1(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(v5 + 121) &= ~0x10u;
  v20 = *(v5 + 24);
  if (!v20)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_13:
    v23 = CFRetain(a2);
    goto LABEL_14;
  }

  v21 = C3DGetScene(*(v5 + 24), a2);
  C3DRemoveSceneRef(v20, v21);
  v22 = *(v5 + 24);
  if (v22 == a2)
  {
    goto LABEL_15;
  }

  if (v22)
  {
    CFRelease(v22);
    *(v5 + 24) = 0;
  }

  if (a2)
  {
    goto LABEL_13;
  }

  v23 = 0;
LABEL_14:
  *(v5 + 24) = v23;
LABEL_15:
  if (a2)
  {
    Scene = C3DEngineContextGetScene(a3, a2);
    if (Scene)
    {
      C3DAddSceneRef(a2, Scene);
    }

    *(v5 + 121) = *(v5 + 121) & 0xEF | (2 * a2[88]) & 0x10;
  }

LABEL_19:
  FXContext = C3DEngineContextGetFXContext(a3, a2);
  if (FXContext)
  {
    *(FXContext + 121) &= ~1u;
  }

  result = C3DFXContextTechniquesDidChange(v5, a3);
  *(v5 + 121) |= 2u;
  return result;
}

uint64_t C3DFXInvalidatePasses(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetFXContext(a1, a2);
  if (result)
  {
    *(result + 121) &= ~1u;
  }

  return result;
}

BOOL C3DFXContextTechniquesDidChange(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  ++*(a1 + 116);
  result = C3DEngineContextHasFeatures(a2, 4);
  if (!result)
  {
    v13 = *(a1 + 72);
    if (v13 && C3DFXTechniqueConsumesMainDepth(v13) || C3DWasLinkedBeforeMajorOSYear2017() && (v14 = *(a1 + 48)) != 0 && C3DFXTechniqueConsumesMainDepth(v14))
    {
      result = 1;
    }

    else
    {
      v15 = *(a1 + 96);
      if (v15 < 1)
      {
        result = 0;
      }

      else
      {
        for (i = 0; i < v15; ++i)
        {
          result = C3DFXTechniqueConsumesMainDepth(*(*(a1 + 80) + 8 * i));
          if (result)
          {
            break;
          }
        }
      }
    }

    v17 = *(a1 + 248);
    if (v17)
    {
      *(v17 + 176) = result;
    }
  }

  return result;
}

BOOL C3DFXContextIsMainPass(_BOOL8 Scene_cold_1, uint64_t a2)
{
  v3 = Scene_cold_1;
  if (!Scene_cold_1 && (v4 = scn_default_log(0, a2), Scene_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      return *(v3 + 248) == a2;
    }
  }

  else if (a2)
  {
    return *(v3 + 248) == a2;
  }

  v11 = scn_default_log(Scene_cold_1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXContextIsMainPass_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return *(v3 + 248) == a2;
}

void C3DFXContextSceneWillChange(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = C3DGetScene(*(result + 24), a2);

    C3DRemoveSceneRef(v2, v3);
  }
}

void C3DFXContextSceneDidChange(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    Scene = C3DEngineContextGetScene(a2, a2);
    if (Scene)
    {
      v4 = Scene;
      v5 = *(result + 24);

      C3DAddSceneRef(v5, v4);
    }
  }
}

void C3DFXContextBumpTimestamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 272);
  C3DFramebufferRegistryBumpTimestamp(*(a1 + 240), a2);
}

uint64_t C3DFXContextGetCurrentPassInstance(void *a1, uint64_t a2)
{
  if (a1[22] >= a1[27])
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextGetCurrentPassInstance_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1[25] + 8 * a1[22]);
}

uint64_t C3DFXContextGetFirstPassInstanceWithName(uint64_t a1, CFTypeRef cf1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 216);
  if (v3 < 1)
  {
LABEL_5:
    v5 = scn_default_log(a1, cf1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = cf1;
      _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: C3DFXContextGetFirstPassInstanceWithGroupID: failed to find pass instance with name (%@)", &v7, 0xCu);
    }

    return 0;
  }

  else
  {
    v4 = *(a1 + 200);
    while (1)
    {
      a1 = CFEqual(cf1, *(**v4 + 16));
      if (a1)
      {
        return *v4;
      }

      v4 += 8;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t C3DFXContextGetMirrorNode(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(C3DFXContextGetCurrentPassInstance(a1, a2) + 5104);
}

void C3DFXContextCleanup(void *a1, uint64_t a2)
{
  a1[31] = 0;
  v3 = a1[30];
  if (v3)
  {
    C3DFramebufferRegistryCleanup(v3, a2);
  }

  v4 = a1[33];
  if (v4)
  {
    CFRelease(v4);
    a1[33] = 0;
  }
}

void C3DFXContextSetup(void *a1, uint64_t a2)
{
  context[2] = *MEMORY[0x277D85DE8];
  PointOfView = C3DEngineContextGetPointOfView(a2, a2);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v5);
  }

  else
  {
    Camera = 0;
  }

  FXContext = C3DEngineContextGetFXContext(a2, v5);
  if (FXContext)
  {
    v9 = FXContext;
    __releaseBuiltinTechniques(a1);
    C3DEngineContextSetJitteringStep(a2, 0);
    *(v9 + 248) = 0;
    Scene = C3DEngineContextGetScene(a2, v10);
    if (Scene)
    {
      v13 = Scene;
      if (Camera)
      {
        WantsHDR = C3DCameraGetWantsHDR(Camera, v12);
        v16 = C3DCameraGetMotionBlurIntensity(Camera, v15) > 0.0;
        RenderContext = C3DEngineContextGetRenderContext(a2, v17);
        if (WantsHDR)
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        RenderContext = C3DEngineContextGetRenderContext(a2, v12);
        v16 = 0;
        WantsHDR = 0;
        v19 = 0;
      }

      *(v9 + 112) = *(v9 + 112) & 0xFD | v19;
      Default = *(v9 + 16);
      if (!Default)
      {
        if (RenderContext)
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        Default = C3DFXTechniqueCreateDefault(WantsHDR & 1, v22);
        *(v9 + 16) = Default;
      }

      *(v9 + 248) = C3DFXTechniqueGetPassAtIndex(Default, 0);
      RootNode = C3DSceneGetRootNode(v13, v23);
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __C3DFXContextSetup_block_invoke;
      v47[3] = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
      v47[4] = Mutable;
      C3DNodeApplyHierarchySkippingHiddenNodes(RootNode, v47);
      v26 = *(v9 + 96);
      if (v26)
      {
        if (v26 >= 1)
        {
          v27 = 0;
          do
          {
            CFRelease(*(*(v9 + 80) + 8 * v27++));
          }

          while (v27 < *(v9 + 96));
        }

        free(*(v9 + 80));
        *(v9 + 80) = 0;
      }

      Count = CFArrayGetCount(Mutable);
      *(v9 + 96) = Count;
      if (Count)
      {
        *(v9 + 80) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
        if (*(v9 + 96) >= 1)
        {
          v29 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v29);
            *(*(v9 + 80) + 8 * v29++) = CFRetain(ValueAtIndex);
          }

          while (v29 < *(v9 + 96));
        }
      }

      CFRelease(Mutable);
      if (Camera && C3DWasLinkedBeforeMajorOSYear2017())
      {
        Technique = C3DCameraGetTechnique(Camera, v31);
        if (Technique)
        {
          DepthOfField = Technique;
          CFRetain(Technique);
        }

        else if (C3DCameraHasDepthOfField(Camera, v33))
        {
          DepthOfField = C3DFXTechniqueCreateDepthOfField();
        }

        else
        {
          DepthOfField = 0;
        }

        v35 = *(v9 + 48);
        if (v35 != DepthOfField)
        {
          if (v35)
          {
            CFRelease(v35);
            *(v9 + 48) = 0;
          }

          if (DepthOfField)
          {
            v36 = CFRetain(DepthOfField);
          }

          else
          {
            v36 = 0;
          }

          *(v9 + 48) = v36;
        }

        if (DepthOfField)
        {
          CFRelease(DepthOfField);
        }
      }

      v37 = C3DEngineContextGetScene(a2, v31);
      C3DSceneClearRegisteredCIFilterTechniques(v37, v38);
      RegisteredNodeFilters = C3DSceneGetRegisteredNodeFilters(v13, v39);
      if (RegisteredNodeFilters)
      {
        v41 = RegisteredNodeFilters;
        v42 = CFSetGetCount(RegisteredNodeFilters);
        v43 = CFDictionaryCreateMutable(0, v42, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        context[0] = v43;
        context[1] = a2;
        CFSetApplyFunction(v41, _addCIFilterSubPasses, context);
        CFRelease(v43);
      }

      C3DEngineContextSetJitteringEnabled(a2, 0);
      if (C3DEngineContextGetAuthoringEnvironment(a2, 0))
      {
        Authoring = C3DFXTechniqueCreateAuthoring();
        v45 = *(v9 + 88);
        if (v45 != Authoring)
        {
          if (v45)
          {
            CFRelease(v45);
            *(v9 + 88) = 0;
          }

          if (Authoring)
          {
            v46 = CFRetain(Authoring);
          }

          else
          {
            v46 = 0;
          }

          *(v9 + 88) = v46;
        }

        if (Authoring)
        {
          CFRelease(Authoring);
        }
      }

      C3DFXContextTechniquesDidChange(v9, a2);
    }
  }

  else
  {
    v20 = scn_default_log(0, v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      C3DFXContextSetup_cold_1();
    }
  }
}

void __releaseBuiltinTechniques(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  if (C3DWasLinkedBeforeMajorOSYear2017())
  {
    v4 = a1[6];
    if (v4)
    {
      CFRelease(v4);
      a1[6] = 0;
    }
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
    a1[11] = 0;
  }
}

uint64_t __C3DFXContextSetup_block_invoke(uint64_t a1, uint64_t a2)
{
  Light = C3DNodeGetLight(a2, a2);
  if (Light)
  {
    v6 = Light;
    Technique = C3DLightGetTechnique(Light, v5);
    if (Technique)
    {
      CFArrayAppendValue(*(a1 + 32), Technique);
    }

    else if (C3DLightGetCastsShadow(v6, v8) && C3DLightGetUsesDeferredShadows(v6, v9))
    {
      Type = C3DLightGetType(v6, v10);
      if ((Type & 0xFFFFFFFD) == 1)
      {
        SpotShadow = C3DFXTechniqueCreateSpotShadow(a2, v12);
        CFArrayAppendValue(*(a1 + 32), SpotShadow);
        CFRelease(SpotShadow);
      }

      else
      {
        v14 = scn_default_log(Type, v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __C3DFXContextSetup_block_invoke_cold_1();
        }
      }
    }
  }

  return 0;
}

uint64_t C3DFXContextGetFramebufferRegistry(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

uint64_t C3DFXContextGetOutputColorTexture(uint64_t a1, __n128 *a2)
{
  CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(a1, a2, 1, 0);
  if (!CurrentResolvedFramebuffer)
  {
    return 0;
  }

  v5 = CurrentResolvedFramebuffer;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2, v4);
  C3DRendererContextRestoreFramebuffer(RendererContextGL, v7);
  RenderTarget = C3DFramebufferGetRenderTarget(v5, 0);
  if (!RenderTarget)
  {
    return 0;
  }

  return C3DRenderTargetGetTexture(RenderTarget, v9);
}

uint64_t _C3DFXContextGetCurrentResolvedFramebuffer(uint64_t a1, __n128 *a2, int a3, int a4)
{
  FramebufferForPass = *(a1 + 152);
  if (!FramebufferForPass || (!a4 ? (v9 = 0) : (v9 = 2), ((v9 | a3) & ~(*(a1 + 168) | (2 * *(a1 + 169)))) != 0))
  {
    v10 = *(a1 + 144);
    v11 = *(a1 + 160);
    if (!v11 && (v12 = scn_default_log(a1, a2), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
    {
      C3DFXContextIsMainPass_cold_2(v12, a2, v13, v14, v15, v16, v17, v18);
      if (v10)
      {
LABEL_9:
        RendererContextGL = C3DEngineContextGetRendererContextGL(a2, a2);
        if (C3DFramebufferGetSampleCount(v10, v20) < 2)
        {
          FramebufferForPass = v10;
LABEL_22:
          *(a1 + 152) = FramebufferForPass;
LABEL_23:
          if (!a3)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (C3DFramebufferRegistryGetEnableRecycling())
        {
          PassIdentifierForPass = 0;
        }

        else
        {
          v23 = *(a1 + 288);
          *(a1 + 288) = v23 + 1;
          PassIdentifierForPass = _createPassIdentifierForPass(v11, RendererContextGL, 1, v23);
          CFArrayAppendValue(*(a1 + 280), PassIdentifierForPass);
          CFRelease(PassIdentifierForPass);
        }

        FramebufferForPass = *(a1 + 152);
        if (!FramebufferForPass)
        {
          FramebufferForPass = C3DFXContextGetFramebufferForPass(a1, v11, a2, 1u, PassIdentifierForPass);
        }

        v24 = C3DEngineContextGetRendererContextGL(a2, v21);
        C3DRendererContextSetEnableWriteToDepth(v24, 1);
        if (a3)
        {
          v25 = *(a1 + 168) == 0;
          if (!a4)
          {
LABEL_18:
            v26 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          v25 = 0;
          if (!a4)
          {
            goto LABEL_18;
          }
        }

        v26 = *(a1 + 169) == 0;
LABEL_21:
        C3DRendererContextResolveFramebuffer(RendererContextGL, FramebufferForPass, v10, v25, v26, 0);
        if (!FramebufferForPass)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }

    FramebufferForPass = 0;
    if (!a3)
    {
LABEL_25:
      if (a4)
      {
        *(a1 + 169) = 1;
      }

      return FramebufferForPass;
    }

LABEL_24:
    *(a1 + 168) = 1;
    goto LABEL_25;
  }

  return FramebufferForPass;
}

uint64_t C3DFXContextGetOutputDepthTexture(uint64_t a1, __n128 *a2)
{
  CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(a1, a2, 0, 1);
  if (!CurrentResolvedFramebuffer)
  {
    return 0;
  }

  v5 = CurrentResolvedFramebuffer;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2, v4);
  C3DRendererContextRestoreFramebuffer(RendererContextGL, v7);
  RenderTarget = C3DFramebufferGetRenderTarget(v5, 4);
  if (!RenderTarget)
  {
    return 0;
  }

  return C3DRenderTargetGetTexture(RenderTarget, v9);
}

uint64_t C3DFXContextGetOutputFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 144);
}

void _C3DFXViewportDidChange(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  FXContext = C3DEngineContextGetFXContext(a1, a2);
  C3DFramebufferRegistryViewportDidResize(FXContext[30], a1);
  v11 = FXContext[2];
  if (v11)
  {
    _reshape(v11, a1);
  }

  v12 = FXContext[5];
  if (v12)
  {
    _reshape(v12, a1);
  }

  v13 = FXContext[3];
  if (v13)
  {
    _reshape(v13, a1);
  }

  v14 = FXContext[7];
  if (v14)
  {
    _reshape(v14, a1);
  }

  v15 = FXContext[11];
  if (v15)
  {
    _reshape(v15, a1);
  }

  v16 = FXContext[6];
  if (v16)
  {
    _reshape(v16, a1);
  }

  v17 = FXContext[4];
  if (v17)
  {
    _reshape(v17, a1);
  }

  v18 = FXContext[9];
  if (v18)
  {
    _reshape(v18, a1);
  }

  if (FXContext[12] >= 1)
  {
    v19 = 0;
    do
    {
      _reshape(*(FXContext[10] + 8 * v19++), a1);
    }

    while (v19 < FXContext[12]);
  }
}

void _reshape(uint64_t a1, __n128 *a2)
{
  PassCount = C3DFXTechniqueGetPassCount(a1, a2);
  C3DEngineContextGetViewport(a2);
  if (PassCount >= 1)
  {
    for (i = 0; i != PassCount; ++i)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(a1, i);
      if ((*(PassAtIndex + 187) & 8) != 0)
      {
        v8[0] = PassAtIndex;
        v8[1] = a1;
        v8[2] = 0;
        v8[3] = a2;
        v8[4] = 0;
        v8[5] = 0;
        v7 = *(PassAtIndex + 280);
        v8[6] = 0xBFF0000000000000;
        v8[7] = v7;
        memset(&v8[8], 0, 24);
        C3DFXPassReshape(v8);
      }
    }
  }
}

void C3DFXContextResolveNodeReferences(void *a1, uint64_t a2)
{
  RootNode = C3DSceneGetRootNode(a2, a2);
  v4 = RootNode;
  v5 = a1[61];
  if (v5)
  {
    NodeWithName = C3DNodeGetNodeWithName(RootNode, v5);
    C3DFXPassSetRootNode(a1, NodeWithName);
    v7 = a1[61];
    if (v7)
    {
      CFRelease(v7);
      a1[61] = 0;
    }
  }

  v8 = a1[62];
  if (v8)
  {
    v9 = C3DNodeGetNodeWithName(v4, v8);
    C3DFXPassSetMirrorNode(a1, v9);
    v10 = a1[62];
    if (v10)
    {
      CFRelease(v10);
      a1[62] = 0;
    }
  }

  v11 = a1[63];
  if (v11)
  {
    v12 = C3DNodeGetNodeWithName(v4, v11);
    C3DFXPassSetPointOfView(a1, v12);
    v13 = a1[63];
    if (v13)
    {
      CFRelease(v13);
      a1[63] = 0;
    }
  }
}

void C3DEngineContextRenderSubTechnique(_BOOL8 Stats_cold_1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = Stats_cold_1;
  *&v45[5] = *MEMORY[0x277D85DE8];
  if (!Stats_cold_1 && (v8 = scn_default_log(0, a2), Stats_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetStats_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(Stats_cold_1, a2);
  Stats_cold_1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (Stats_cold_1)
  {
    C3DEngineContextRenderSubTechnique_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a2)
  {
    v22 = scn_default_log(Stats_cold_1, a2);
    Stats_cold_1 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
    if (Stats_cold_1)
    {
      C3DFXTechniqueAppendPass_cold_1(v22, a2, v23, v24, v25, v26, v27, v28);
    }
  }

  if ((*(a2 + 88) & 2) != 0)
  {
    v29 = scn_default_log(Stats_cold_1, a2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderSubTechnique_cold_4(v29, a2, v30, v31, v32, v33, v34, v35);
    }
  }

  *(a2 + 88) |= 2u;
  PassCount = C3DFXTechniqueGetPassCount(a2, a2);
  if (PassCount >= 1)
  {
    v37 = PassCount;
    for (i = 0; i != v37; ++i)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(a2, i);
      IsTopLevel = C3DFXPassIsTopLevel(PassAtIndex, v40);
      if ((IsTopLevel & 1) == 0)
      {
        if (*(PassAtIndex + 24) == 3)
        {
          v43 = scn_default_log(IsTopLevel, v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            C3DEngineContextRenderSubTechnique_cold_5(v44, v45, v43);
          }
        }

        __C3DEngineContextRenderPassInstance(v7, a3, PassAtIndex, a4, 0, 0, 0);
      }
    }
  }

  *(a2 + 88) &= ~2u;
}

void __C3DEngineContextRenderPassInstance(uint64_t Stats_cold_1, uint64_t *a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v13 = Stats_cold_1;
  if (!Stats_cold_1 && (v14 = scn_default_log(0, a2), Stats_cold_1 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT), Stats_cold_1))
  {
    C3DEngineContextGetStats_cold_1(v14, a2, v15, v16, v17, v18, v19, v20);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v21 = scn_default_log(Stats_cold_1, a2);
  Stats_cold_1 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
  if (Stats_cold_1)
  {
    C3DEngineContextRenderSubTechnique_cold_2(v21, a2, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  if (a3 || (v28 = scn_default_log(Stats_cold_1, a2), Stats_cold_1 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT), !Stats_cold_1))
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  C3DFXContextIsMainPass_cold_2(v28, a2, v29, v30, v31, v32, v33, v34);
  if (v8)
  {
LABEL_9:
    Stats_cold_1 = C3DAnimationNodeGetPlayer(a3);
    a4 = Stats_cold_1;
  }

LABEL_10:
  if (a4)
  {
    Stats_cold_1 = C3DRendererElementGetNode(a4);
    v35 = Stats_cold_1;
  }

  else
  {
    v35 = 0;
  }

  v36 = *(a3 + 232);
  if (v36)
  {
    Stats_cold_1 = v36(a3, v35);
    if (!Stats_cold_1)
    {
      return;
    }
  }

  v149 = a5;
  v157 = v35;
  v37 = *(a3 + 40);
  if (!v37)
  {
    v38 = scn_default_log(Stats_cold_1, a2);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v38, a2, v39, v40, v41, v42, v43, v44);
    }
  }

  v158 = v37;
  v155 = a7;
  v156 = a2;
  FXContext = C3DEngineContextGetFXContext(v13, a2);
  SceneTime = C3DEngineContextGetSceneTime(v13);
  if (v8)
  {
    *(FXContext + 160) = a3;
  }

  DrawInstruction = C3DFXPassGetDrawInstruction(a3, v46);
  Program = C3DFXPassGetProgram(a3, v49);
  RendererContextGL = C3DEngineContextGetRendererContextGL(v13, v51);
  RendererElementState = C3DEngineContextGetRendererElementState(v13);
  ResourceManager = C3DEngineContextGetResourceManager(v13, v54);
  CString = SCNStringGetCString(*(a3 + 16));
  if (CString)
  {
    v57 = CString;
  }

  else
  {
    v57 = "NoName";
  }

  C3DRendererContextPushGroupMarker(RendererContextGL, v57);
  C3DRendererElementStateSetActiveTextureUnit(RendererElementState, 0);
  if (Program)
  {
    _ZF = 0;
  }

  else
  {
    _ZF = DrawInstruction == 2;
  }

  v60 = !_ZF;
  v151 = DrawInstruction;
  v152 = *(a3 + 184);
  v154 = v60;
  if (_ZF)
  {
    C3DRendererElementStateBindProgramRendererElement(RendererElementState, a4, v13, a3);
    Program = C3DRendererElementStateGetCurrentProgram(RendererElementState);
  }

  v61 = RendererElementState;
  v159 = RendererElementState;
  v62 = v158;
  if (Program)
  {
    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, Program, RendererContextGL, 0);
    if (ProgramResident)
    {
      v65 = ProgramResident;
      C3DRendererContextBindProgramObject(RendererContextGL, ProgramResident);
    }

    else
    {
      v66 = scn_default_log(0, v64);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        __C3DEngineContextRenderPassInstance_cold_5();
      }

      v65 = 0;
      v61 = v159;
    }
  }

  else
  {
    v65 = 0;
  }

  v67 = *(a3 + 184);
  if ((v67 & 0x8000000) == 0)
  {
    *(a3 + 184) = v67 | 0x8000000;
    C3DEngineContextGetFXContext(v13, v58);
    if (v65)
    {
      UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v65, @"u_inverseResolution");
      if (UniformLocationOfSymbolNamed != -1)
      {
        v69 = UniformLocationOfSymbolNamed;
        v70 = C3DFXPassAddInputWithName(a3, @"u_inverseResolution");
        UniformIndex = C3DFXGLSLProgramObjectGetUniformIndex(v65, v69);
        C3DFXPassInputSetUniformIndex(v70, UniformIndex);
        C3DFXPassInputSetSemantic(v70, 18);
      }

      v72 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v65, @"u_time");
      if (v72 != -1)
      {
        v73 = v72;
        v74 = C3DFXPassAddInputWithName(a3, @"u_time");
        v75 = C3DFXGLSLProgramObjectGetUniformIndex(v65, v73);
        C3DFXPassInputSetUniformIndex(v74, v75);
        C3DFXPassInputSetSemantic(v74, 19);
      }
    }

    v160.n128_u64[0] = a3;
    v160.n128_u64[1] = v158;
    v161 = v157;
    v162 = v13;
    v163 = 0;
    v164 = v65;
    v76 = *(a3 + 280);
    v165 = 0xBFF0000000000000;
    v166 = v76;
    v168 = 0;
    v167 = 0;
    v169 = 0;
    C3DFXPassSetup(&v160);
    C3DEngineContextGetViewport(v13);
    C3DFXPassReshape(&v160);
    v61 = v159;
  }

  if (C3DFramebufferRegistryGetEnableRecycling())
  {
    PassIdentifierForPass = 0;
  }

  else
  {
    v79 = *(FXContext + 288);
    *(FXContext + 288) = v79 + 1;
    PassIdentifierForPass = _createPassIdentifierForPass(a3, RendererContextGL, 0, v79);
    CFArrayAppendValue(*(FXContext + 280), PassIdentifierForPass);
    CFRelease(PassIdentifierForPass);
  }

  v153 = v8;
  if ((*(a3 + 185) & 0x10) == 0)
  {
    v80 = 0;
    if (!v8)
    {
      goto LABEL_83;
    }

LABEL_78:
    *(FXContext + 144) = v80;
    goto LABEL_83;
  }

  v81 = C3DFXPassRequireFBO(a3, v8, v149);
  v83 = C3DEngineContextGetRendererContextGL(v13, v82);
  v85 = v83;
  if (v81)
  {
    FramebufferForPass = C3DFXContextGetFramebufferForPass(FXContext, a3, v13, 0, PassIdentifierForPass);
    if (FramebufferForPass)
    {
      v80 = FramebufferForPass;
      C3DRendererContextBindFramebuffer(v85, FramebufferForPass);
      Size = C3DFramebufferGetSize(v80, v87);
      goto LABEL_58;
    }
  }

  else
  {
    BoundFramebuffer = C3DRendererContextGetBoundFramebuffer(v83, v84);
    if (BoundFramebuffer)
    {
      C3DFramebufferRegistryTrackFBO(*(FXContext + 240), BoundFramebuffer, PassIdentifierForPass);
    }
  }

  Viewport = C3DEngineContextGetViewport(v13);
  v80 = 0;
  __asm { FMOV            V1.2S, #1.0 }

  Size = COERCE_DOUBLE(vmaxnm_f32(*&vextq_s8(Viewport, Viewport, 8uLL), _D1));
LABEL_58:
  v150 = Size;
  if (*&Size == 0.0 || *(&Size + 1) == 0.0)
  {
    v97 = scn_default_log(v88, v89);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      __C3DEngineContextRenderPassInstance_cold_6();
    }
  }

  v160 = C3DEngineContextGetViewport(v13);
  if (C3DFXPassGetHasCustomViewport(a3, v98))
  {
    v160 = C3DFXPassGetViewport(a3, v99);
  }

  C3DFXPassGetSubViewport(a3, &v160);
  C3DRendererContextSetViewport(v160);
  ClearsOnDraw = C3DEngineContextSetDrawableSize(v13, v150);
  v61 = v159;
  if ((v81 & 1) != 0 || (ClearsOnDraw = C3DEngineContextGetClearsOnDraw(v13, v77), ClearsOnDraw))
  {
    v101 = *(a3 + 184);
    v102 = (v101 << 7) & 0x100 | ((v101 & 1) << 14);
    if ((v101 & 4) != 0 || (v101 & 0xA) == 0xA)
    {
      v102 |= 0x400u;
    }

    else if (!v102)
    {
      goto LABEL_76;
    }

    MainClearColor = C3DEngineContextGetMainClearColor(v13);
    if ((C3DWasLinkedBeforeMajorOSYear2016(MainClearColor, v104) & 1) == 0)
    {
      Scene = C3DEngineContextGetScene(v13, v105);
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
      if (BackgroundEffectSlot)
      {
        ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(BackgroundEffectSlot, v108);
        if (ColorIfApplicable)
        {
          MainClearColor = *ColorIfApplicable;
        }
      }
    }

    *&v170 = C3DFXPassGetClearColor(a3, MainClearColor);
    *(&v170 + 1) = v110;
    v111 = C3DEngineContextGetRendererContextGL(v13, v110);
    C3DRendererContextClear(v111, v102, &v170);
    v61 = v159;
  }

LABEL_76:
  v8 = v153;
  if (v153)
  {
    v62 = v158;
    goto LABEL_78;
  }

  v62 = v158;
  if (v80)
  {
    v112 = scn_default_log(ClearsOnDraw, v77);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
    {
      __C3DEngineContextRenderPassInstance_cold_7(v112, v77, v113, v114, v115, v116, v117, v118);
    }

    v61 = v159;
  }

LABEL_83:
  v160.n128_u64[0] = a3;
  v160.n128_u64[1] = v62;
  v161 = v157;
  v162 = v13;
  v163 = v156 + 10;
  v164 = v65;
  v165 = *&SceneTime;
  v166 = *(a3 + 280);
  v167 = a4;
  v168 = v155;
  v169 = 0;
  C3DFXPassWillExecute(&v160, v77);
  if (v65)
  {
    C3DGLSLProfileBindPassInputs(v13, v65, a3, v62, (v152 & 0x8000000) == 0);
  }

  v120 = v154;
  if (!v154)
  {
    v123 = 0;
    goto LABEL_94;
  }

  BlendStates = C3DFXPassGetBlendStates(a3, v119);
  C3DRendererContextSetBlendStates(RendererContextGL, BlendStates);
  v123 = BlendStates != 0;
  if (BlendStates)
  {
    C3DRendererContextPushBlendStatesOverride(RendererContextGL);
  }

  RasterizerStates = C3DFXPassGetRasterizerStates(a3, v122);
  C3DRendererContextSetRasterizerStates(RendererContextGL, RasterizerStates);
  if (v151 > 2)
  {
    switch(v151)
    {
      case 3:
        goto LABEL_92;
      case 4:
        if (v65)
        {
          C3DEngineContextDrawFullScreenQuad(v13, v126);
          v8 = v153;
        }

        else
        {
          v8 = v153;
          if ((__C3DEngineContextRenderPassInstance_done & 1) == 0)
          {
            __C3DEngineContextRenderPassInstance_done = 1;
            v148 = scn_default_log(v125, v126);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              __C3DEngineContextRenderPassInstance_cold_8();
            }
          }
        }

        C3DRendererContextUnbindTextureUnits(RendererContextGL);
        if (!v65)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 6:
LABEL_92:
        C3DEngineContextGetSystemTime(v13);
        _drawScene(v13, v156);
        goto LABEL_105;
    }

    goto LABEL_103;
  }

  if (v151 == 1)
  {
    C3DFXPassExecute(&v160);
    goto LABEL_105;
  }

  if (v151 == 2)
  {
    v120 = v154;
    v61 = v159;
    v8 = v153;
LABEL_94:
    C3DRendererElementStateDrawRendererElement(v61, a4, v13, a3, v120);
    if (!v65)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_103:
  v128 = scn_default_log(v125, v126);
  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
  {
    __C3DEngineContextRenderPassInstance_cold_9();
  }

LABEL_105:
  v8 = v153;
  if (v65)
  {
LABEL_106:
    C3DRendererContextUnbindProgramObject(RendererContextGL);
  }

LABEL_107:
  if (v123)
  {
    C3DRendererContextPopBlendStatesOverride(RendererContextGL);
  }

  if ((*(a3 + 186) & 2) != 0)
  {
    RenderCallbacks = C3DEngineContextGetRenderCallbacks(v13, v127);
    v131 = *(RenderCallbacks + 16);
    if (v131)
    {
      if (RendererContextGL)
      {
        v132 = RenderCallbacks;
        C3DRendererContextResetToDefaultStates(RendererContextGL);
        v131 = *(v132 + 16);
      }

      v131(v13);
    }

    UserInfo = C3DEngineContextGetUserInfo(v13, v130);
    if (UserInfo)
    {
      if ([UserInfo showsStatistics])
      {
        AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(v13, 0);
        if (AuthoringEnvironment)
        {
          C3DAuthoringEnvironmentDrawStats(AuthoringEnvironment, v127);
        }
      }
    }
  }

  if (v8)
  {
    CurrentResolvedFramebuffer = v80;
    if ((*(a3 + 184) & 0x10) != 0)
    {
      CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(FXContext, v13, 1, 1);
    }

    if (v80)
    {
      v136 = C3DEngineContextGetRendererContextGL(v13, v127);
      C3DRendererContextUnbindFramebuffer(v136, v137);
      C3DFramebufferRegistryReleaseFramebuffer(*(FXContext + 240), v80);
      if (CurrentResolvedFramebuffer != v80)
      {
        C3DFramebufferRegistryReleaseFramebuffer(*(FXContext + 240), CurrentResolvedFramebuffer);
      }
    }

    if (CurrentResolvedFramebuffer)
    {
      v138 = *(a3 + 184);
      if ((v138 & 0x800000) != 0)
      {
        RenderTarget = C3DFramebufferGetRenderTarget(CurrentResolvedFramebuffer, 0);
        C3DFXContextSetCurrentColor(FXContext, RenderTarget);
        v138 = *(a3 + 184);
      }

      if ((v138 & 0x1000000) != 0)
      {
        v140 = C3DFramebufferGetRenderTarget(CurrentResolvedFramebuffer, 4);
        C3DFXContextSetCurrentDepth(FXContext, v140);
      }
    }

    *(FXContext + 168) = 0;
    *(FXContext + 144) = 0;
    *(FXContext + 152) = 0;
  }

  C3DFXPassDidExecute(&v160);
  C3DRendererContextPopGroupMarker();
  v141 = *(a3 + 520);
  if (v141 >= 1)
  {
    for (i = 0; i < v141; ++i)
    {
      v143 = *(*(a3 + 512) + 8 * i);
      if (*(v143 + 16) == 1 && (*(v143 + 80) & 3) == 0)
      {
        C3DFramebufferRegistryReleaseTextureWithName(*(FXContext + 240), *(v143 + 56));
        v141 = *(a3 + 520);
      }
    }
  }

  v144 = *(a3 + 440);
  if (v144)
  {
    v145 = 0;
    v146 = 8;
    do
    {
      v147 = *(*(a3 + 432) + v146);
      if (v147)
      {
        C3DFramebufferRegistryReleaseTextureWithName(*(FXContext + 240), v147);
        v144 = *(a3 + 440);
      }

      ++v145;
      v146 += 64;
    }

    while (v145 < v144);
  }
}

uint64_t __appendTechnique(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = a3;
  *(&v100[1] + 4) = *MEMORY[0x277D85DE8];
  PassCount = C3DFXTechniqueGetPassCount(a3, a2);
  result = C3DEngineContextGetRenderContext(a1, v12);
  v85 = result == 0;
  v14 = *(v8 + 88) | 2;
  *(v8 + 88) = v14;
  if (PassCount >= 1)
  {
    v15 = result;
    v16 = 0;
    v83 = a4;
    v84 = v8;
    v87 = a6;
    v88 = a1;
    v81 = result;
    v82 = PassCount;
    while (1)
    {
      result = C3DFXTechniqueGetPassAtIndex(v8, v16);
      v18 = result;
      if (a6 && *(result + 28) != a6)
      {
        goto LABEL_85;
      }

      if ((*(result + 187) & 8) == 0)
      {
        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v89[0] = result;
        v89[1] = v8;
        if (a4)
        {
          Node = C3DRendererElementGetNode(a4);
        }

        else
        {
          Node = 0;
        }

        *&v90 = Node;
        *(&v90 + 1) = a1;
        v91 = 0uLL;
        v20 = v18[35];
        *&v92 = 0xBFF0000000000000;
        *(&v92 + 1) = v20;
        v93 = 0uLL;
        LOWORD(v94) = 0;
        C3DFXPassInitialize(v89, v85);
        Scene = C3DEngineContextGetScene(a1, v21);
        C3DFXContextResolveNodeReferences(v18, Scene);
      }

      result = C3DFXPassIsTopLevel(v18, v17);
      if (!result)
      {
        goto LABEL_85;
      }

      v23 = a4 ? C3DRendererElementGetNode(a4) : 0;
      v24 = v18[29];
      if (v24)
      {
        result = v24(v18, v23);
        if (!result)
        {
          goto LABEL_85;
        }
      }

      v25 = C3DAllocatorNew(*(a2 + 208), v23);
      bzero(v25, 0x1410uLL);
      *(v25 + 1) = 0;
      *(v25 + 2) = a5;
      *v25 = v18;
      MirrorNode = C3DFXPassGetMirrorNode(v18, v26);
      *(v25 + 638) = MirrorNode;
      *(v25 + 320) = 0u;
      if (a5 && !MirrorNode)
      {
        *(v25 + 638) = *(a5 + 5104);
      }

      *(v25 + 2) = 0uLL;
      v28 = (v25 + 32);
      *(v25 + 3) = 0uLL;
      *(v25 + 4) = 0uLL;
      v25[24] = 1;
      v25[26] = 0;
      if (C3DFXPassIsViewDependant(v18))
      {
        PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a1);
        v25[27] = PreferredRenderMode;
        if (PreferredRenderMode)
        {
          LOBYTE(PreferredRenderMode) = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1);
        }

        v25[28] = PreferredRenderMode;
        EyeCount = C3DEngineContextGetEyeCount(a1);
      }

      else
      {
        *(v25 + 27) = 0;
        EyeCount = 1;
      }

      v25[24] = EyeCount;
      if (v15)
      {
        if (*(a2 + 248) == v18 && [-[SCNMTLRenderContext textureTarget](v15) textureType] == 5)
        {
          v25[26] = 1;
          v25[24] = 6;
          if (([(SCNMTLRenderContext *)v15 features]& 0x20) != 0)
          {
            v25[27] = 1;
            v25[28] = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1);
          }
        }

        v32 = [-[SCNMTLRenderContext textureTarget](v15) textureType];
        if (SCNMTLTextureTypeIsArray(v32))
        {
          v25[24] = [-[SCNMTLRenderContext textureTarget](v15) arrayLength];
        }

        if (C3DFXPassGetDrawOnlyShadowCaster(v18, v33))
        {
          PointOfView = C3DFXPassGetPointOfView(v18, v29);
          if (PointOfView && (Light = C3DNodeGetLight(PointOfView, v29)) != 0 && (v36 = Light, C3DLightSupportsShadowCascades(Light, v29)))
          {
            ShadowCascadeCount = C3DLightGetShadowCascadeCount(v36, v29);
            if (ShadowCascadeCount < 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
            LOBYTE(ShadowCascadeCount) = 1;
          }

          v25[24] = ShadowCascadeCount;
        }
      }

LABEL_39:
      v38 = *v25;
      v39 = *(*v25 + 24);
      if (v39 == 6 || v39 == 3)
      {
        v41 = C3DEngineContextGetScene(v88, v29);
        EnginePipeline = C3DSceneGetEnginePipeline(v41, v42);
        RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v44);
        ElementCount = C3DRendererElementStoreGetElementCount(RendererElementStore, v46);
        C3DCullingContextInitialize(v25 + 5, v88, v25, ElementCount);
        if (*(v38 + 24) == 6)
        {
          v49 = *(v38 + 464);
          if (v49)
          {
            Count = CFArrayGetCount(v49);
            if (Count >= 1)
            {
              v51 = Count;
              for (i = 0; i != v51; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v38 + 464), i);
                if ((ValueAtIndex[221] & 0x10) == 0)
                {
                  C3DCullingContextPushRenderableElementsToVisible(v25 + 5, *(a2 + 120), ValueAtIndex);
                }
              }
            }
          }
        }

        else
        {
          C3DCullingContextCull((v25 + 80));
        }

        if (C3DFXPassRequiresLighting(v38, v48))
        {
          LightingSystem = C3DSceneGetLightingSystem(v41, v29);
          if (C3DFXPassGetUpdatesMainFrameBuffer(v38, v55) && !C3DFXPassGetMirrorNode(v38, v29))
          {
            v80 = vcvt_f32_f64(*(v25 + 4824));
            if (!C3DEngineContextGetPointOfCulling(v88, v29) && (*(a2 + 121) & 0x20) != 0)
            {
              v56 = v80;
              if ((*(a2 + 272) - *(a2 + 312)) <= 2)
              {
                v79 = vneg_f32(vrev64_s32(*(a2 + 304)));
                v56.i32[1] = v79.i32[1];
                v56 = vbsl_s8(vcgt_f32(v79, v80), __PAIR64__(v80.u32[1], v79.u32[0]), v56);
              }
            }

            else
            {
              v56 = v80;
            }

            C3DLightingSystemSetMainRenderingFrustums(LightingSystem, v25 + 6, *v56.i32, *&v56.i32[1], v25[4708], v25 + 42, v25 + 174);
            C3DLightingSystemAppendForwardShadowingTechniques(LightingSystem, a2, v88);
          }
        }

        if (v25[24])
        {
          v57 = 0;
          v58 = (v25 + 5000);
          do
          {
            v59 = *v58;
            v58 += 4;
            C3DArraySetCount(v28[v57++], v59);
          }

          while (v57 < v25[24]);
        }
      }

      v60 = *v28;
      if (*v28 && v25[5088] == 1 && (*(a2 + 121) & 4) == 0)
      {
        v62 = C3DEngineContextGetScene(v88, v29);
        if (!v62)
        {
          v63 = scn_default_log(0, v61);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_1(v99, v100, v63);
          }
        }

        v65 = C3DSceneGetEnginePipeline(v62, v61);
        if (!v65)
        {
          v66 = scn_default_log(0, v64);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_2(v97, &v98, v66);
          }
        }

        v68 = C3DEnginePipelineGetRendererElementStore(v65, v64);
        if (!v68)
        {
          v65 = scn_default_log(0, v67);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_3(v95, &v96, v65);
          }
        }

        ValuesPtr = C3DArrayGetValuesPtr(v60, v67);
        v71 = C3DArrayGetCount(v60, v70);
        if (v71 >= 1)
        {
          v72 = v71;
          do
          {
            v73 = *ValuesPtr++;
            v65 = v65 & 0xFFFFFFFF00000000 | v73;
            Element = C3DRendererElementStoreGetElement(v68, v65);
            v76 = *(Element + 40);
            if (v76)
            {
              v77 = Element;
              if (v76 != C3DFXTechniqueGetNullTechnique(Element, v75) && (C3DFXTechniqueIsBeingRendered(v76, v78) & 1) == 0)
              {
                __appendTechnique(v88, a2, v76, v77, v25, v87);
              }
            }

            --v72;
          }

          while (v72);
        }
      }

      *(v25 + 1) = C3DFXContextAddPassInstance(a2, v25);
      if (C3DFXContextIsMainPass(a2, v18))
      {
        *(a2 + 184) = *(v25 + 1);
      }

      a4 = v83;
      result = C3DAnimationNodeSetPlayer(v18, v83);
      v8 = v84;
      a6 = v87;
      a1 = v88;
      v15 = v81;
      PassCount = v82;
LABEL_85:
      if (++v16 == PassCount)
      {
        v14 = *(v8 + 88);
        break;
      }
    }
  }

  *(v8 + 88) = v14 & 0xFD;
  return result;
}

void C3DEngineContextRenderMainTechnique(__n128 *a1, uint64_t a2)
{
  *&v73[5] = *MEMORY[0x277D85DE8];
  FXContext = C3DEngineContextGetFXContext(a1, a2);
  Stats = C3DEngineContextGetStats(a1, v4);
  RenderContext = C3DEngineContextGetRenderContext(a1, v6);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1, v8);
  v11 = RendererContextGL;
  if (!(RenderContext | RendererContextGL))
  {
    v12 = scn_default_log(RendererContextGL, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderMainTechnique_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  *(FXContext + 288) = 0;
  CFArrayRemoveAllValues(*(FXContext + 280));
  if (C3DEngineContextIsJitteringEnabled(a1))
  {
    JitteringStep = C3DEngineContextGetJitteringStep(a1);
    if (JitteringStep)
    {
      v21 = JitteringStep;
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 0);
      v22 = *(*(*(FXContext + 40) + 80) + 8);
      if (v21)
      {
        C3DFXPassSetEnabled(v22, 0);
        v25 = 1;
LABEL_16:
        C3DFXPassSetEnabled(*(*(*(FXContext + 40) + 80) + 16), v25);
        UpdatesMainFrameBuffer = C3DFXPassGetUpdatesMainFrameBuffer(*(*(*(FXContext + 40) + 80) + 24), v26);
        C3DFXPassSetEnabled(*(*(*(FXContext + 40) + 80) + 24), UpdatesMainFrameBuffer);
        if (!v11)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v23 = 1;
    }

    else
    {
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 1);
      v22 = *(*(*(FXContext + 40) + 80) + 8);
      v23 = 0;
    }

    C3DFXPassSetEnabled(v22, v23);
    v25 = 0;
    goto LABEL_16;
  }

  if (*(FXContext + 40))
  {
    v24 = 4;
    do
    {
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 0);
      --v24;
    }

    while (v24);
  }

  if (!v11)
  {
LABEL_20:
    v67 = (FXContext + 121);
    if (*(FXContext + 121))
    {
      goto LABEL_22;
    }

LABEL_21:
    C3DFXContextSetup(FXContext, a1);
    v38 = 0;
    *(FXContext + 121) |= 1u;
    goto LABEL_23;
  }

LABEL_17:
  Viewport = C3DEngineContextGetViewport(a1);
  Viewport.n128_u64[0] = vextq_s8(Viewport, Viewport, 8uLL).u64[0];
  __asm { FMOV            V1.2S, #1.0 }

  v35 = vbsl_s8(vcgt_f32(_D1, Viewport.n128_u64[0]), _D1, Viewport.n128_u64[0]);
  v36 = vmvn_s8(vceq_f32(*(FXContext + 104), v35));
  if (((v36.i32[0] | v36.i32[1]) & 1) == 0)
  {
    goto LABEL_20;
  }

  v37 = *(FXContext + 121);
  *(FXContext + 104) = v35;
  v67 = (FXContext + 121);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

  _C3DFXViewportDidChange(a1, v28);
LABEL_22:
  v38 = 1;
LABEL_23:
  v39 = CACurrentMediaTime();
  C3DFXContextBumpTimestamp(FXContext, v40);
  if (v11)
  {
    C3DRendererContextBumpTimeStamp(v11);
  }

  C3DFXContextPreparePassesInstances(a1, FXContext);
  v68 = Stats;
  *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v39;
  v41 = *(FXContext + 216);
  if (v41)
  {
    v65 = v38;
    v66 = v11;
    v69 = v41 - 1;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = *(**(*(FXContext + 200) + 8 * v69) + 40);
      while (1)
      {
        IsEnabled = C3DFXPassIsEnabled(**(*(FXContext + 200) + 8 * v42));
        if (IsEnabled)
        {
          break;
        }

LABEL_40:
        if (++v42 == v41)
        {
          goto LABEL_44;
        }
      }

      v46 = **(*(FXContext + 200) + 8 * v42);
      v47 = *(v46 + 40);
      *(v46 + 184) = *(v46 + 184) & 0xFFFDFFFF | ((v42 == v69) << 17);
      v48 = *(*(FXContext + 200) + 8 * v42);
      if (!a1 && (v49 = scn_default_log(IsEnabled, v45), IsEnabled = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT), IsEnabled))
      {
        C3DEngineContextRenderMainTechnique_cold_2(v72, v73, v49);
        if (!v48)
        {
LABEL_32:
          v50 = scn_default_log(IsEnabled, v45);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            C3DEngineContextRenderMainTechnique_cold_3(v70, &v71, v50);
          }
        }
      }

      else if (!v48)
      {
        goto LABEL_32;
      }

      *(C3DEngineContextGetFXContext(a1, v45) + 176) = *(v48 + 8);
      if (*(v48 + 27))
      {
        Pass = C3DFXPassInstanceGetPass(v48, v51);
        __C3DEngineContextRenderPassInstance(a1, v48, Pass, 0, v47 == v43, 1, 0);
      }

      else if (*(v48 + 24))
      {
        v53 = 0;
        do
        {
          v54 = C3DFXPassInstanceGetPass(v48, v51);
          __C3DEngineContextRenderPassInstance(a1, v48, v54, 0, v47 == v43, 1, v53++);
        }

        while (v53 < *(v48 + 24));
      }

      *(v46 + 184) &= ~0x20000u;
      goto LABEL_40;
    }

LABEL_44:
    *v55.i64 = CACurrentMediaTime();
    v56 = *v55.i64;
    C3DFXContextRemoveAllPassInstances(FXContext, v57, v55);
    if (v66)
    {
      FramebufferRegistry = C3DFXContextGetFramebufferRegistry(FXContext, v58);
      C3DFramebufferRegistryFinalizeFrame(FramebufferRegistry, v60);
    }

    *(v68 + 152) = *(v68 + 152) + CACurrentMediaTime() - v56;
    v63 = v65;
    if ((*v67 & 2) != 0)
    {
      v63 = 0;
    }

    if ((v63 & 1) == 0)
    {
      *v67 &= ~2u;
      SharedInstance = C3DNotificationCenterGetSharedInstance(v61, v62);
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextPassesDidUpdate", a1, 0, 1u);
    }

    if (v66)
    {
      C3DFramebufferRegistryPurge(*(FXContext + 240), a1);
    }

    C3DFXContextSetCurrentColor(FXContext, 0);
    C3DFXContextSetCurrentDepth(FXContext, 0);
  }
}

uint64_t C3DFXContextPreparePassesInstances(__n128 *a1, uint64_t a2)
{
  *(a2 + 184) = 0;
  v4 = *(a2 + 32);
  if (v4)
  {
    __appendTechnique(a1, a2, v4, 0, 0, 0);
  }

  v5 = *(a2 + 121);
  if ((v5 & 4) == 0)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      __appendTechnique(a1, a2, v6, 0, 0, 1u);
      v5 = *(a2 + 121);
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (v5 & 0x14) == 16;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    __appendTechnique(a1, a2, v7, 0, 0, 0);
    v5 = *(a2 + 121);
  }

  if ((v5 & 4) == 0)
  {
    v9 = *(a2 + 24);
    if (v9)
    {
      __appendTechnique(a1, a2, v9, 0, 0, 2u);
      v5 = *(a2 + 121);
    }

    if ((v5 & 0x10) == 0 && *(a2 + 96) >= 1)
    {
      v10 = 0;
      do
      {
        __appendTechnique(a1, a2, *(*(a2 + 80) + 8 * v10++), 0, 0, 0);
      }

      while (v10 < *(a2 + 96));
    }

    v11 = *(a2 + 24);
    if (v11)
    {
      __appendTechnique(a1, a2, v11, 0, 0, 3u);
    }

    v12 = *(a2 + 72);
    if (v12)
    {
      __appendTechnique(a1, a2, v12, 0, 0, 0);
    }

    v13 = *(a2 + 48);
    if (v13)
    {
      __appendTechnique(a1, a2, v13, 0, 0, 0);
    }

    v14 = *(a2 + 24);
    if (v14)
    {
      __appendTechnique(a1, a2, v14, 0, 0, 4u);
    }
  }

  result = C3DEngineContextIsJitteringEnabled(a1);
  if (result)
  {
    v16 = *(a2 + 40);

    return __appendTechnique(a1, a2, v16, 0, 0, 0);
  }

  return result;
}

void C3DFXContextRemoveAllPassInstances(void *a1, uint64_t a2, int64x2_t a3)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[27] >= 1)
  {
    v12 = 0;
    do
    {
      for (i = 32; i != 80; i += 8)
      {
        v14 = *(*(a1[25] + 8 * v12) + i);
        if (v14)
        {
          C3DFXContextReleaseCullingData(a1, v14);
          *(*(a1[25] + 8 * v12) + i) = 0;
        }
      }

      C3DAllocatorDelete(a1[26], *(a1[25] + 8 * v12++), a3);
    }

    while (v12 < a1[27]);
  }

  a1[27] = 0;
}

void C3DFXContextSetCurrentColor(uint64_t result, uint64_t a2)
{
  v4 = *(result + 128);
  if (v4)
  {
    if (*(v4 + 48))
    {
      C3DFramebufferRegistryReleaseRenderTarget(*(result + 240), v4);
    }

    else
    {
      if (!*(v4 + 76))
      {
        v5 = scn_default_log(result, v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          C3DFXContextSetCurrentColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      --*(*(result + 128) + 76);
    }
  }

  *(result + 128) = a2;
  if (a2)
  {
    ++*(a2 + 76);
  }
}

void C3DFXContextSetCurrentDepth(uint64_t result, uint64_t a2)
{
  v4 = *(result + 136);
  if (v4)
  {
    if (*(v4 + 48))
    {
      C3DFramebufferRegistryReleaseRenderTarget(*(result + 240), v4);
    }

    else
    {
      if (!*(v4 + 76))
      {
        v5 = scn_default_log(result, v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          C3DFXContextSetCurrentDepth_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      --*(*(result + 136) + 76);
    }
  }

  *(result + 136) = a2;
  if (a2)
  {
    ++*(a2 + 76);
  }
}

void C3DFXContextReleaseCullingData(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = *(a1 + 296);
    if (v3)
    {
      CFArrayAppendValue(v3, cf);
    }

    CFRelease(cf);
  }
}

uint64_t C3DFXContextAddPassInstance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 216);
  if (result == *(a1 + 232))
  {
    if (2 * result <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2 * result;
    }

    v14 = malloc_type_realloc(*(a1 + 200), 8 * v13, 0x2004093837F09uLL);
    *(a1 + 200) = v14;
    *(a1 + 232) = v13;
    result = *(a1 + 216);
  }

  else
  {
    v14 = *(a1 + 200);
  }

  v14[result] = a2;
  *(a1 + 216) = result + 1;
  return result;
}

_DWORD *C3DFXContextCreateCullingData(uint64_t a1, unsigned int a2)
{
  Count = CFArrayGetCount(*(a1 + 296));
  v5 = Count - 1;
  if (Count < 1)
  {

    return C3DArrayCreate(4, a2);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), v5);
    CFRetain(ValueAtIndex);
    C3DArraySetCount(ValueAtIndex, a2);
    C3DArraySetCount(ValueAtIndex, 0);
    CFArrayRemoveValueAtIndex(*(a1 + 296), v5);
    return ValueAtIndex;
  }
}

void C3DFXContextSetEnableSampleDistributedRange(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 121);
  if (((((v4 & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 121) = v4 & 0xDF | v5;
    Scene = C3DEngineContextGetScene(a2, a2);
    SharedInstance = C3DNotificationCenterGetSharedInstance(Scene, v7);

    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
  }
}

id C3DFXContextCopyPassDescription(void *a1, __n128 *a2)
{
  C3DFXContextPreparePassesInstances(a2, a1);
  v33 = a1;
  v3 = a1[27];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  v31 = v4;
  [v4 setValue:v5 forKey:@"passes"];

  v32 = v3;
  if (v3 >= 1)
  {
    v8 = 0;
    do
    {
      v34 = v8;
      v9 = **(v33[25] + 8 * v8);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setValue:C3DFXPassGetName(v9 forKey:{v11), @"name"}];
      [v10 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", C3DFXPassGetDrawInstruction(v9, v12)), @"type"}];
      [v10 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", C3DFXPassIsEnabled(v9)), @"enabled"}];
      v13 = *(v9 + 520);
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
      v35 = v10;
      [v10 setValue:v14 forKey:@"inputs"];

      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v16 = *(*(v9 + 512) + 8 * i);
          if (*(v16 + 56))
          {
            v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v18 = v17;
            v19 = *(v16 + 56);
            if (v19)
            {
              [v17 setValue:v19 forKey:@"name"];
            }

            [v18 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *(v16 + 16)), @"type"}];
            v20 = v18;
            if (v20)
            {
              [v14 addObject:v20];
            }
          }
        }
      }

      v21 = *(v9 + 440);
      v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
      [v35 setValue:v22 forKey:@"outputs"];

      if (v21)
      {
        v23 = 0;
        v24 = v21 << 6;
        do
        {
          v25 = *(v9 + 432);
          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v27 = v25 + v23;
          [v26 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *(v27 + 16)), @"type"}];
          v28 = *(v27 + 8);
          if (!v28)
          {
            if (*(v27 + 16))
            {
              v28 = @"COLOR";
            }

            else
            {
              v28 = @"DEPTH";
            }
          }

          [v26 setValue:v28 forKey:@"name"];
          v29 = v26;
          if (v29)
          {
            [v22 addObject:v29];
          }

          v23 += 64;
        }

        while (v24 != v23);
      }

      [v5 addObject:v35];
      v8 = v34 + 1;
    }

    while (v34 + 1 != v32);
  }

  C3DFXContextRemoveAllPassInstances(v33, v6, v7);
  return v31;
}

void *_addCIFilterSubTechniquesForNode(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  Value = CFDictionaryGetValue(a3, a1);
  if (!Value)
  {
    Scene = C3DEngineContextGetScene(a2, v6);
    Parent = C3DNodeGetParent(a1, v9);
    if (Parent)
    {
      v11 = Parent;
      do
      {
        v13 = CFDictionaryGetValue(a3, v11);
        if (!v13)
        {
          if (C3DNodeGetFilters(v11, v12))
          {
            v13 = _addCIFilterSubTechniquesForNode(v11, a2, a3);
          }

          else
          {
            v13 = 0;
          }
        }

        v14 = C3DNodeGetParent(v11, v12);
        if (!v14)
        {
          break;
        }

        v11 = v14;
      }

      while (!v13);
      Value = C3DFXTechniqueCreateCIFilter(a1, a2);
      if (v13)
      {
        C3DFXTechniqueAddSubTechnique(v13, Value);
      }
    }

    else
    {
      Value = C3DFXTechniqueCreateCIFilter(a1, a2);
    }

    C3DSceneRegisterCIFilterTechniqueForNode(Scene, a1, Value);
    EnginePipeline = C3DSceneGetEnginePipeline(Scene, v15);
    RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v17);
    RendererElementSpan = C3DNodeGetRendererElementSpan(a1, v19);
    ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(RendererElementStore, RendererElementSpan, (HIDWORD(RendererElementSpan) - 1));
    v22 = *(ElementInSpanAtIndex + 40);
    if (v22 != Value)
    {
      if (v22)
      {
        CFRelease(v22);
        *(ElementInSpanAtIndex + 40) = 0;
      }

      if (Value)
      {
        v23 = CFRetain(Value);
      }

      else
      {
        v23 = 0;
      }

      *(ElementInSpanAtIndex + 40) = v23;
    }

    CFRelease(Value);
    CFDictionarySetValue(a3, a1, Value);
  }

  return Value;
}

__CFString *_createPassIdentifierForPass(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(0, 0);
  SampleCount = *(a1 + 176);
  if (!*(a1 + 176))
  {
    SampleCount = C3DRendererContextGetSampleCount(a2);
  }

  CFStringAppendFormat(Mutable, 0, @"%d - %@", a4, *(a1 + 16));
  if (a3)
  {
    CFStringAppend(Mutable, @" (resolve)");
  }

  else if (SampleCount >= 2)
  {
    CFStringAppendFormat(Mutable, 0, @" (%dx)", SampleCount);
  }

  return Mutable;
}

uint64_t C3DFXContextGetFramebufferForPass(_BOOL8 Scene_cold_1, uint64_t a2, __n128 *a3, unsigned int a4, void *a5)
{
  v9 = Scene_cold_1;
  if (!Scene_cold_1 && (v10 = scn_default_log(0, a2), Scene_cold_1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(Scene_cold_1, a2);
  Scene_cold_1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (Scene_cold_1)
  {
    C3DFXContextIsMainPass_cold_2(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a3)
  {
    v24 = scn_default_log(Scene_cold_1, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  FramebufferDescription = C3DFXPassGetFramebufferDescription(a2);
  v34 = *(FramebufferDescription + 48);
  v33 = *(FramebufferDescription + 64);
  v35 = *(FramebufferDescription + 32);
  v52 = *(FramebufferDescription + 80);
  v36 = *(FramebufferDescription + 16);
  v50[0] = *FramebufferDescription;
  v50[1] = v36;
  v50[3] = v34;
  v51 = v33;
  v50[2] = v35;
  if ((v52 & 8) != 0)
  {
    *&v50[0] = vrndp_f32(vcvt_f32_f64(vmulq_f64(*(a2 + 376), vcvt_hight_f64_f32(C3DEngineContextGetViewport(a3)))));
  }

  v37 = *(a2 + 24);
  SampleCount = 1;
  if (v37 <= 6 && ((1 << v37) & 0x4C) != 0 && (a4 & 1) == 0)
  {
    SampleCount = *(a2 + 176);
    if (!*(a2 + 176))
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(a3, SampleCount);
      SampleCount = C3DRendererContextGetSampleCount(RendererContextGL);
    }

    if (SampleCount >= 2)
    {
      BYTE11(v50[0]) &= ~1u;
      BYTE11(v51) &= ~1u;
    }
  }

  C3DFramebufferDescriptionSetSampleCount(v50, SampleCount);
  v40 = v52;
  if ((v52 & 0x10) == 0 && (*(a2 + 186) & 2) != 0)
  {
    v40 = v52 | 0x10;
    LOBYTE(v52) = v52 | 0x10;
    BYTE8(v51) = 44;
  }

  if (a4)
  {
    v40 &= ~0x10u;
    LOBYTE(v52) = v40;
  }

  if ((v40 & 0x10) != 0)
  {
    BYTE8(v51) = 44;
  }

  if (a4)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(a2 + 440);
  }

  if ((v40 & 0x10) != 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = a4;
  }

  C3DFramebufferRegistryPrepareFramebufferWithDescription(*(v9 + 240), v50, *(a2 + 432), v41, v42, a5, a3);
  if (*(a2 + 440))
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(a2 + 432);
      v47 = *(v46 + v44 + 8);
      if (v47)
      {
        v43 = *(v46 + v44 + 16);
        if (a4)
        {
          if (v43 != 5)
          {
            C3DFramebufferRegistryReplaceTextureWithNameByTexture(*(v9 + 240), v43, v47);
          }
        }

        else
        {
          v48 = *(v46 + v44 + 20);
          if (v48)
          {
            C3DFramebufferRegistryRetainTextureWithName(*(v9 + 240), v43, v47, v48);
          }
        }
      }

      ++v45;
      v44 += 64;
    }

    while (v45 < *(a2 + 440));
  }

  return C3DFramebufferRegistryFinalizeAndGetFramebuffer(*(v9 + 240), v43);
}

uint64_t _drawScene(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderSubTechnique_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Pass = C3DFXPassInstanceGetPass(a2, a2);
  FXContext = C3DEngineContextGetFXContext(a1, v12);
  RootNode = C3DFXPassGetRootNode(Pass, v14);
  Scene = C3DEngineContextGetScene(a1, v16);
  if (!RootNode)
  {
    v19 = Scene;
    if (!Scene)
    {
      v20 = scn_default_log(0, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v20, v18, v21, v22, v23, v24, v25, v26);
      }
    }

    RootNode = C3DSceneGetRootNode(v19, v18);
  }

  RenderCallbacks = C3DEngineContextGetRenderCallbacks(a1, v18);
  if (C3DFXContextIsMainPass(FXContext, Pass) && RenderCallbacks && *RenderCallbacks)
  {
    (*RenderCallbacks)(a1);
  }

  C3DEngineContextRenderNodeTree(a1, a2, RootNode);
  RendererElementState = C3DEngineContextGetRendererElementState(a1);
  if (C3DEngineContextGetRendererContextGL(a1, v29))
  {
    C3DRendererElementStateBeginProcessing(RendererElementState, 0, a1);
  }

  result = C3DFXContextIsMainPass(FXContext, Pass);
  if (result && RenderCallbacks)
  {
    v31 = *(RenderCallbacks + 8);
    if (v31)
    {
      return v31(a1);
    }
  }

  return result;
}

void C3D::CustomPass::CustomPass(C3D::CustomPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DFXPass *a4)
{
  C3D::Pass::Pass(this, a2, a3);
  *v5 = &unk_282DC71D0;
  *(v5 + 112) = a4;
  *(v5 + 120) = 0;
  *(v5 + 32) = 1;
}

const char *C3D::CustomPass::name(C3D::CustomPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 14);
  if (v5)
  {
    return C3D::CachedFXPassName(this + 15, v5, *(*(this + 3) + 16), a4);
  }

  v6 = scn_default_log(this, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    C3D::CustomPass::name(v6);
  }

  v5 = *(this + 14);
  if (v5)
  {
    return C3D::CachedFXPassName(this + 15, v5, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "CustomPass";
  }
}

void C3D::CustomPass::execute(uint64_t result, uint64_t a2)
{
  v3 = *(result + 112);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = scn_default_log(result, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    C3D::CustomPass::execute(v4);
  }

  v3 = *(result + 112);
  if (v3)
  {
LABEL_5:
    v5 = *(v3 + 248);
    if (v5)
    {
      v8[0] = v3;
      v8[1] = 0;
      v6 = *(result + 16);
      v8[2] = 0;
      v8[3] = v6;
      v8[4] = 0;
      v8[5] = 0;
      v7 = *(v3 + 280);
      v8[6] = 0xBFF0000000000000;
      v8[7] = v7;
      memset(&v8[8], 0, 24);
      v5(v8, a2);
    }
  }
}

uint64_t __HandleProfileWillDieNotification(int a1, void *a2, CFTypeRef cf1, uint64_t a4)
{
  v6 = CFEqual(cf1, @"kC3DNotificationProfileWillDie");
  if (!v6)
  {
    v8 = scn_default_log(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __HandleProfileWillDieNotification_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return [a2 releaseProgramForResource:a4];
}

BOOL CheckDefineUsageInModifiers(uint64_t *a1, uint64_t a2, const void *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 1;
    v7 = a2;
    v8 = 1;
    do
    {
      Defines = C3DShaderModifierGetDefines(*a1, a2);
      if (Defines && CFDictionaryGetCountOfKey(Defines, a3))
      {
        break;
      }

      v8 = v6++ < a2;
      ++a1;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void __AppendModifierDefines(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    do
    {
      Defines = C3DShaderModifierGetDefines(*v4, a2);
      if (Defines)
      {
        CFDictionaryApplyFunction(Defines, __appendDictionary, a1);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }
}

uint64_t __GetModifierFlag(uint64_t *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v2 = a2;
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 |= C3DShaderModifierGetFlags(v5, a2);
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t __GetDefineForPropertyAndSuffix(int a1, int a2)
{
  if (__GetDefineForPropertyAndSuffix_predicate != -1)
  {
    __GetDefineForPropertyAndSuffix_cold_1();
  }

  return *(&__GetDefineForPropertyAndSuffix_strings + 8 * a1 + a2);
}

uint64_t C3DFXGLSLProgramGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  return C3DFXGLSLProgramGetTypeID_typeID;
}

uint64_t __C3DFXGLSLProgramGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXGLSLProgramGetTypeID_typeID = result;
  qword_281741808 = _C3DFXGLSLProgramCopyInstanceVariables;
  return result;
}

uint64_t C3DFXGLSLProgramCreate(uint64_t a1, uint64_t a2)
{
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXGLSLProgramGetTypeID_typeID, 104);
  v3 = Instance;
  if (Instance)
  {
    C3DFXProgramInitialize(Instance);
    *(v3 + 64) = 1;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
  }

  return v3;
}

uint64_t C3DFXGLSLProgramGetDefaultProgram(uint64_t a1, uint64_t a2)
{
  if (C3DFXGLSLProgramGetDefaultProgram_onceToken != -1)
  {
    C3DFXGLSLProgramGetDefaultProgram_cold_1();
  }

  return C3DFXGLSLProgramGetDefaultProgram_defaultProgram;
}

void __C3DFXGLSLProgramGetDefaultProgram_block_invoke()
{
  ProgramWithName = _C3DFXGLSLProgramCreateProgramWithName(@"C3D-DefaultProgram", 0);
  C3DFXGLSLProgramGetDefaultProgram_defaultProgram = ProgramWithName;

  C3DFXGLSLProgramSetUniformIndex(ProgramWithName, @"u_modelViewProjectionTransform", 7);
}

void C3DFXGLSLProgramSetUniformIndex(_BOOL8 cf, const void *a2, char *a3)
{
  v5 = cf;
  if (!cf && (v6 = scn_default_log(0, a2), cf = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(cf, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetUniformIndex_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = CFGetTypeID(v5);
  v23 = v21;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v23 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v24 = scn_default_log(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v24, v22, v25, v26, v27, v28, v29, v30);
    }
  }

  *(v5 + 112) = a3 + 1;
  __AllocUniformsNamesToIndexesIfNeeded(v5, v22);
  CFDictionarySetValue(*(v5 + 104), a2, a3);
}

uint64_t C3DFXGLSLProgramCreateWithSources(const void *a1, const void *a2)
{
  v4 = C3DFXGLSLProgramCreate(a1, a2);
  v5 = C3DFXShaderCreate(0);
  C3DFXShaderSetSource(v5, a1);
  *(v4 + 80) = v5;
  v6 = C3DFXShaderCreate(1);
  C3DFXShaderSetSource(v6, a2);
  *(v4 + 88) = v6;
  return v4;
}

uint64_t _C3DFXGLSLProgramCreateProgramWithName(void *a1, int a2)
{
  LODWORD(v2) = a2;
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a1 stringByAppendingString:@".vsh"];
  v5 = [a1 stringByAppendingString:@".fsh"];
  v6 = C3DGetTextResourceWithNameAllowingHotReload(v4);
  v7 = C3DGetTextResourceWithNameAllowingHotReload(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    v6 = C3DStringNamed(v4);
    v7 = C3DStringNamed(v5);
  }

  v9 = v7;
  v10 = 0;
  if (v6 && v7)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringHasPrefix(MutableCopy, @"#extension"))
    {
      v12 = CFRetain(v6);
    }

    else
    {
      values = @"precision highp float;\n";
      v19 = v6;
      v13 = CFArrayCreate(0, &values, 2, 0);
      v12 = CFStringCreateByCombiningStrings(0, v13, &stru_282DCC058);
      CFRelease(v13);
    }

    CFRelease(MutableCopy);
    v14 = CFStringCreateMutableCopy(0, 0, v9);
    CFStringTrimWhitespace(v14);
    if (CFStringHasPrefix(v14, @"#extension"))
    {
      v15 = CFRetain(v9);
    }

    else
    {
      values = @"precision highp float;\n";
      v19 = v9;
      v16 = CFArrayCreate(0, &values, 2, 0);
      v15 = CFStringCreateByCombiningStrings(0, v16, &stru_282DCC058);
      CFRelease(v16);
    }

    CFRelease(v14);
    v10 = C3DFXGLSLProgramCreateWithSources(v12, v15);
    C3DFXProgramSetClientProgram(v10, v2);
    CFRelease(v12);
    CFRelease(v15);
  }

  return v10;
}

uint64_t C3DFXGLSLProgramGetShader(CFTypeRef cf, uint64_t a2)
{
  v2 = a2;
  if (!cf)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  v14 = v12;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v14 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v15 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return *(cf + v2 + 10);
}

CFTypeRef C3DFXGLSLProgramSetShader(_BOOL8 cf, CFTypeRef a2)
{
  v3 = cf;
  if (!cf && (v4 = scn_default_log(0, a2), cf = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(cf, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXShaderGetStage_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = CFGetTypeID(v3);
  v21 = v19;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v21 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v22 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v22, v20, v23, v24, v25, v26, v27, v28);
    }
  }

  Stage = C3DFXShaderGetStage(a2, v20);
  v30 = v3 + 80;
  result = *&v30[8 * Stage];
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *&v30[8 * Stage] = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *&v30[8 * Stage] = result;
  }

  return result;
}

uint64_t C3DFXGLSLProgramGetShaders(void *a1)
{
  v2 = CFGetTypeID(a1);
  v4 = v2;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  if (v4 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v5 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return a1[10];
}

uint64_t C3DFXGLSLProgramGetShaderSources(void *a1)
{
  v2 = CFGetTypeID(a1);
  v4 = v2;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  if (v4 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v5 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = C3DFXGLSLProgramGetShaders(a1);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void C3DFXGLSLProgramSetAttributeIndex(_BOOL8 cf, const void *a2, int a3)
{
  v5 = cf;
  if (!cf && (v6 = scn_default_log(0, a2), cf = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(cf, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetAttributeIndex_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = CFGetTypeID(v5);
  v23 = v21;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v23 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v24 = scn_default_log(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v24, v22, v25, v26, v27, v28, v29, v30);
    }
  }

  __AllocAttributesNamesToIndexesIfNeeded(v5, v22);
  CFDictionarySetValue(v5[12], a2, a3);
}

void __AllocAttributesNamesToIndexesIfNeeded(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v13 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (!*(cf + 12))
  {
    *(cf + 12) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  }
}

uint64_t C3DFXGLSLProgramGetAttributeIndex(_BOOL8 cf, const void *a2)
{
  v3 = cf;
  if (!cf && (v4 = scn_default_log(0, a2), cf = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(cf, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetAttributeIndex_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = CFGetTypeID(v3);
  v21 = v19;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v21 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v22 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v22, v20, v23, v24, v25, v26, v27, v28);
    }
  }

  __AllocAttributesNamesToIndexesIfNeeded(v3, v20);
  return CFDictionaryGetValue(v3[12], a2);
}

CFTypeRef _C3DFXGLSLProgramSetUniformDictionary(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  v14 = v12;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v14 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v15 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  result = *(cf + 13);
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *(cf + 13) = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(cf + 13) = result;
  }

  return result;
}

CFTypeRef _C3DFXGLSLProgramSetAttributesDictionary(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  v14 = v12;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v14 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v15 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  result = *(cf + 12);
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *(cf + 12) = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(cf + 12) = result;
  }

  return result;
}

uint64_t C3DFXGLSLProgramGetNextUniformIndex(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v13 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 14);
}

void __AllocUniformsNamesToIndexesIfNeeded(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v13 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (!*(cf + 13))
  {
    *(cf + 13) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  }
}

uint64_t C3DFXGLSLProgramGetUniformIndex(_BOOL8 cf, const void *a2)
{
  v3 = cf;
  if (!cf && (v4 = scn_default_log(0, a2), cf = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(cf, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetUniformIndex_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = CFGetTypeID(v3);
  v21 = v19;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v21 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v22 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v22, v20, v23, v24, v25, v26, v27, v28);
    }
  }

  __AllocUniformsNamesToIndexesIfNeeded(v3, v20);
  if (CFDictionaryContainsKey(v3[13], a2))
  {
    return CFDictionaryGetValue(v3[13], a2);
  }

  else
  {
    return -1;
  }
}

CFArrayRef C3DFXGLSLProgramCopyAttributesNames(CFDictionaryRef *cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v13 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = cf[12];
  if (!v22)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v22);
  v24 = C3DMalloc(8 * Count);
  CFDictionaryGetKeysAndValues(cf[12], v24, 0);
  v25 = CFArrayCreate(*MEMORY[0x277CBECE8], v24, Count, MEMORY[0x277CBF128]);
  if (v24)
  {
    free(v24);
  }

  return v25;
}