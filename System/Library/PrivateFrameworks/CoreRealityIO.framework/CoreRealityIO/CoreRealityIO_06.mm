atomic_uint **RIOImportSessionRunSampleScene(atomic_uint **result, realityio::ImportSession *a2)
{
  if (result)
  {
    return realityio::updateStageOnRepeat((result + 2), a2);
  }

  return result;
}

atomic_uint **realityio::updateStageOnRepeat(realityio *this, realityio::ImportSession *a2)
{
  result = MEMORY[0x28223BE20](this, a2);
  v243 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v78 = *(*(result[2] + 1) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v78);
    std::string::basic_string[abi:ne200100]<0>(&v43, "/Cone");
    LODWORD(v212.__r_.__value_.__l.__data_) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v212.__r_.__value_.__l.__size_, "Cone");
    v213 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(&v214, "Cylinder");
    v215 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v216, "Capsule");
    v217 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v218, "Cube");
    v219 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v220, "Preliminary_Text");
    v221 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(&v222, "Sphere");
    v223 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v224, "Cone");
    v225 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v226, "Cylinder");
    v227 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v228, "Capsule");
    v229 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v230, "Cube");
    v231[0] = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v232, "Preliminary_Text");
    v233[0] = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v234, "Sphere");
    v235 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v236, "Cone");
    std::map<float,std::string>::map[abi:ne200100](v72, &v212, 13);
    v73 = xmmword_247757950;
    v74 = xmmword_247757960;
    v75 = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(v237, &v43, v72);
    std::string::basic_string[abi:ne200100]<0>(v41, "/Sphere");
    LODWORD(v186) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v187, "Sphere");
    v188 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v189, "Cone");
    v190 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v191, "Cylinder");
    v192 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v193, "Capsule");
    v194 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v195, "Cube");
    v196 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(v197, "Preliminary_Text");
    v198 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v199, "Sphere");
    v200 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v201, "Cone");
    v202 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v203, "Cylinder");
    v204 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v205, "Capsule");
    v206 = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v207, "Cube");
    v208 = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v209, "Preliminary_Text");
    v210 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v211, "Sphere");
    std::map<float,std::string>::map[abi:ne200100](&v67, &v186, 13);
    v69 = xmmword_247757980;
    v70 = xmmword_247757990;
    v71 = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(&v238, v41, &v67);
    std::string::basic_string[abi:ne200100]<0>(v65, "/Text");
    LODWORD(v157) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v158, "Preliminary_Text");
    LODWORD(v159) = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v160, "Sphere");
    v161 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v162, "Cone");
    v163 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v164, "Cylinder");
    v165 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v166, "Capsule");
    v167 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(v168, "Cube");
    v169 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v170, "Preliminary_Text");
    v171 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v172, "Sphere");
    v173 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v174, "Cone");
    v175 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v176, "Cylinder");
    v177 = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v178, "Capsule");
    v179 = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v180, "Cube");
    v181 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v182, "Preliminary_Text");
    std::map<float,std::string>::map[abi:ne200100](v183, &v157, 13);
    v184 = xmmword_2477579A0;
    __asm { FMOV            V0.2D, #1.0 }

    v185[0] = _Q0;
    v185[1] = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(v239, v65, v183);
    std::string::basic_string[abi:ne200100]<0>(v63, "/Cube");
    LODWORD(v131) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v132, "Cube");
    v133 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v134, "Preliminary_Text");
    v135 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v136, "Sphere");
    v137 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v138, "Cone");
    v139 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v140, "Cylinder");
    v141 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(v142, "Capsule");
    v143 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v144, "Cube");
    v145 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v146, "Preliminary_Text");
    v147 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v148, "Sphere");
    v149 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v150, "Cone");
    v151 = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v152, "Cylinder");
    v153 = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v154, "Capsule");
    v155 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v156, "Cube");
    std::map<float,std::string>::map[abi:ne200100](v59, &v131, 13);
    v60 = xmmword_2477579B0;
    v61 = xmmword_2477579C0;
    v62 = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(v240, v63, v59);
    std::string::basic_string[abi:ne200100]<0>(&v58, "/Capsule");
    v105[0] = 0.0;
    std::string::basic_string[abi:ne200100]<0>(&v106, "Capsule");
    v107 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v108, "Cube");
    v109 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v110, "Preliminary_Text");
    v111 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v112, "Sphere");
    v113 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v114, "Cone");
    v115 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(v116, "Cylinder");
    v117 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v118, "Capsule");
    v119 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v120, "Cube");
    v121 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v122, "Preliminary_Text");
    v123 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v124, "Sphere");
    v125 = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v126, "Cone");
    v127 = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v128, "Cylinder");
    v129 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v130, "Capsule");
    std::map<float,std::string>::map[abi:ne200100](v54, v105, 13);
    v55 = xmmword_2477579D0;
    v56 = xmmword_2477579E0;
    v57 = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(v241, &v58, v54);
    std::string::basic_string[abi:ne200100]<0>(__p, "/Cylinder");
    v79[0] = 0.0;
    std::string::basic_string[abi:ne200100]<0>(&v80, "Cylinder");
    v81 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v82, "Capsule");
    v83 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v84, "Cube");
    v85 = 1069547520;
    std::string::basic_string[abi:ne200100]<0>(v86, "Preliminary_Text");
    v87 = 0x40000000;
    std::string::basic_string[abi:ne200100]<0>(v88, "Sphere");
    v89 = 1075838976;
    std::string::basic_string[abi:ne200100]<0>(v90, "Cone");
    v91 = 1077936128;
    std::string::basic_string[abi:ne200100]<0>(v92, "Cylinder");
    v93 = 1080033280;
    std::string::basic_string[abi:ne200100]<0>(v94, "Capsule");
    v95 = 1082130432;
    std::string::basic_string[abi:ne200100]<0>(v96, "Cube");
    v97 = 1083179008;
    std::string::basic_string[abi:ne200100]<0>(v98, "Preliminary_Text");
    v99 = 1084227584;
    std::string::basic_string[abi:ne200100]<0>(v100, "Sphere");
    v101 = 1085276160;
    std::string::basic_string[abi:ne200100]<0>(v102, "Cone");
    v103 = 1086324736;
    std::string::basic_string[abi:ne200100]<0>(v104, "Cylinder");
    std::map<float,std::string>::map[abi:ne200100](v48, v79, 13);
    v49 = xmmword_2477579F0;
    v50 = xmmword_247757A00;
    v51 = xmmword_247757970;
    std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(v242, __p, v48);
    v8 = 0;
    v9 = 0;
    v77[1] = 0;
    v77[0] = 0;
    v76 = v77;
    for (i = v77; ; i = v76)
    {
      v11 = &v237[v9 / 0x10];
      v12 = v77;
      if (i == v77)
      {
        goto LABEL_9;
      }

      v13 = v8;
      v14 = v77;
      if (v8)
      {
        do
        {
          v12 = v13;
          v13 = v13[1];
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v14[2];
          _ZF = *v12 == v14;
          v14 = v12;
        }

        while (_ZF);
      }

      if (std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](v12 + 4, &v237[v9 / 0x10]))
      {
LABEL_9:
        if (v8)
        {
          v15 = v12;
        }

        else
        {
          v15 = &v76;
        }

        if (!v15[1])
        {
LABEL_37:
          operator new();
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_37;
        }

        v16 = *(v11 + 23);
        if (v16 >= 0)
        {
          v17 = *(v11 + 23);
        }

        else
        {
          v17 = *(v11 + 1);
        }

        if (v16 >= 0)
        {
          v18 = &v237[v9 / 0x10];
        }

        else
        {
          v18 = *v11;
        }

        while (1)
        {
          while (1)
          {
            v19 = v8;
            v22 = v8[4];
            v21 = v8 + 4;
            v20 = v22;
            v23 = *(v21 + 23);
            if (v23 >= 0)
            {
              v24 = *(v21 + 23);
            }

            else
            {
              v24 = v21[1];
            }

            if (v23 >= 0)
            {
              v25 = v21;
            }

            else
            {
              v25 = v20;
            }

            if (v24 >= v17)
            {
              v26 = v17;
            }

            else
            {
              v26 = v24;
            }

            v27 = memcmp(v18, v25, v26);
            v28 = v17 < v24;
            if (v27)
            {
              v28 = v27 < 0;
            }

            if (!v28)
            {
              break;
            }

            v8 = *v19;
            if (!*v19)
            {
              goto LABEL_37;
            }
          }

          if (!std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](v21, &v237[v9 / 0x10]))
          {
            break;
          }

          v8 = v19[1];
          if (!v8)
          {
            goto LABEL_37;
          }
        }
      }

      v9 += 96;
      if (v9 == 576)
      {
        while (1)
        {
          std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*&v233[v9 / 4]);
          if (SHIBYTE(v232[v9 / 8 + 1]) < 0)
          {
            operator delete(*&v231[v9 / 4]);
          }

          v9 -= 96;
          if (!v9)
          {
            std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(v48[1]);
            v29 = 104;
            while (1)
            {
              if (SHIBYTE(v79[v29 - 1]) < 0)
              {
                operator delete(v77[v29 / 2]);
              }

              v29 -= 8;
              if (!(v29 * 4))
              {
                if (v53 < 0)
                {
                  operator delete(__p[0]);
                }

                std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(v54[1]);
                v30 = 104;
                while (1)
                {
                  if (SHIBYTE(v105[v30 - 1]) < 0)
                  {
                    operator delete(v104[v30 / 2]);
                  }

                  v30 -= 8;
                  if (!(v30 * 4))
                  {
                    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v58.__r_.__value_.__l.__data_);
                    }

                    std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(v59[1]);
                    v31 = 52;
                    while (1)
                    {
                      if (*(&v131 + v31 * 8 - 1) < 0)
                      {
                        operator delete(v130[v31]);
                      }

                      v31 -= 4;
                      if (!(v31 * 8))
                      {
                        if (v64 < 0)
                        {
                          operator delete(v63[0]);
                        }

                        std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(v183[1]);
                        v32 = 52;
                        while (1)
                        {
                          if (*(&v157 + v32 * 8 - 1) < 0)
                          {
                            operator delete(v156[v32]);
                          }

                          v32 -= 4;
                          if (!(v32 * 8))
                          {
                            if (v66 < 0)
                            {
                              operator delete(v65[0]);
                            }

                            std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*(&v67 + 1));
                            v33 = 26;
                            while (1)
                            {
                              if (*(&v186 + v33 * 16 - 1) < 0)
                              {
                                operator delete(*(&v185[v33] + 1));
                              }

                              v33 -= 2;
                              if (!(v33 * 16))
                              {
                                if (v42 < 0)
                                {
                                  operator delete(v41[0]);
                                }

                                std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(v72[1]);
                                v34 = 52;
                                while (1)
                                {
                                  if (v212.__r_.__value_.__s.__data_[v34 * 8 - 1] < 0)
                                  {
                                    operator delete(v211[v34]);
                                  }

                                  v34 -= 4;
                                  if (!(v34 * 8))
                                  {
                                    if (v44 < 0)
                                    {
                                      operator delete(v43);
                                    }

                                    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v78);
                                    v36 = v35;
                                    MEMORY[0x24C1A5DE0](&v212, "metersPerUnit");
                                    *(&v237[0] + 1) = &unk_285946DC3;
                                    *&v237[0] = 0x3FF0000000000000;
                                    pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v36, &v212, v237);
                                    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v237);
                                    if ((v212.__r_.__value_.__s.__data_[0] & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v212.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v78);
                                    v38 = v37;
                                    MEMORY[0x24C1A5DE0](&v212, "upAxis");
                                    MEMORY[0x24C1A5DE0](&v186, "Y");
                                    *(&v237[0] + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
                                    *&v237[0] = v186;
                                    if ((v186 & 7) != 0)
                                    {
                                      v39 = v186 & 0xFFFFFFFFFFFFFFF8;
                                      if ((atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                                      {
                                        *&v237[0] = v39;
                                      }
                                    }

                                    pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v38, &v212, v237);
                                    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v237);
                                    if ((v186 & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    if ((v212.__r_.__value_.__s.__data_[0] & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v212.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    v47 = v78;
                                    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v47);
                                    std::string::basic_string[abi:ne200100]<0>(v72, "/someQuad");
                                    MEMORY[0x24C1A5D70](&v45, v72);
                                    v67 = xmmword_247757A10;
                                    v68 = 0xC049000000000000;
                                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v59, &v45);
                                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v59 + 1, &v46);
                                    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(v237, &v47);
                                    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
                                    v40 = *(&v237[0] + 1);
                                    if (*(&v237[0] + 1))
                                    {
                                      if (atomic_fetch_add_explicit((*(&v237[0] + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
                                      {
                                        (*(*v40 + 8))(v40);
                                      }
                                    }

                                    v237[0] = xmmword_247757A4C;
                                    v237[1] = *algn_247757A5C;
                                    v237[2] = xmmword_247757A6C;
                                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(&v212, v237, 4);
                                    v158 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
                                    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&v157, &v212);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v8 = v77[0];
    }
  }

  return result;
}

void sub_2474EBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if ((STACK[0x8D0] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x8D0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0xE00]);
  if ((STACK[0x730] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x730] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&STACK[0xAC0]);
  MEMORY[0x24C1A4DB0](&STACK[0x3F0]);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a65);
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&STACK[0x200]);
  std::__tree<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>>>::destroy(STACK[0x3D8]);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&STACK[0x3E8]);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionDumpDiagnostics(uint64_t a1, char *a2)
{
  v2 = a1;
  if (a1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v2 = (*(**(v2 + 32) + 80))(*(v2 + 32), __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_2474EC938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOImportSessionDumpDependencies(uint64_t a1, char *a2)
{
  v2 = a1;
  if (a1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v2 = (*(**(v2 + 32) + 88))(*(v2 + 32), __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_2474EC9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOImportSessionSetLoadAudio(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 290) = a2;
  }

  return result;
}

uint64_t RIOImportSessionGetLoadAudio(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 290);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

_BYTE *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<BOOL,BOOL,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<BOOL>>::_GetProxiedAsVtValue@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_285946C7B;
  *a2 = *result;
  return result;
}

uint64_t std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<std::string>::VtArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::assign<std::string const*>(a1, a2, a2 + 24 * a3);
  return a1;
}

uint64_t ___ZN9realityioL19updateStageOnRepeatEPNS_13ImportSessionE_block_invoke(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 32));
  result = MEMORY[0x24C1A6210]();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(**(v3 + 16) + 24);

    return v4();
  }

  return result;
}

_DWORD *__copy_helper_block_ea8_32c64_ZTSN32pxrInternal__aapl__pxrReserved__8TfRefPtrINS_8UsdStageEEE48c48_ZTSN32pxrInternal__aapl__pxrReserved__7SdfPathE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v3 = a1 + 32;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v3 + 16), (a2 + 48));

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v3 + 20), (a2 + 52));
}

atomic_uint **__destroy_helper_block_ea8_32c64_ZTSN32pxrInternal__aapl__pxrReserved__8TfRefPtrINS_8UsdStageEEE48c48_ZTSN32pxrInternal__aapl__pxrReserved__7SdfPathE(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 48);

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr((a1 + 32));
}

uint64_t ___ZN9realityioL19updateStageOnRepeatEPNS_13ImportSessionE_block_invoke_37(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (v2 != v3)
  {
    v4 = v2 + 16;
    do
    {
      v5 = v4 - 16;
      v11 = *(v4 - 16);
      v6 = *(v4 - 8);
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, (v4 + 4));
      v7 = *(v4 + 8);
      v15 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = *(v4 + 16);
      v10 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11))
      {
        pxrInternal__aapl__pxrReserved__::UsdPrim::SetTypeName(&v11, &v10);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
      result = v12;
      if (v12)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
      }

      v4 += 40;
    }

    while (v5 + 40 != v3);
  }

  v9 = *(v1 + 56);
  if (v9)
  {
    return (*(**(v9 + 16) + 24))(*(v9 + 16), 0);
  }

  return result;
}

void sub_2474ECE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::SetTypeName(pxrInternal__aapl__pxrReserved__::UsdPrim *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(this, (v3 + 464), a2, &v4);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
}

void __copy_helper_block_ea8_32c108_ZTSNSt3__16vectorINS_4pairIN32pxrInternal__aapl__pxrReserved__7UsdPrimENS2_7TfTokenEEENS_9allocatorIS5_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>*,std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>*>(v2, *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
}

uint64_t ___ZN9realityioL19updateStageOnRepeatEPNS_13ImportSessionE_block_invoke_39(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (v2 != v3)
  {
    v4 = v2 + 16;
    do
    {
      v5 = v4 - 16;
      v9 = *(v4 - 16);
      v6 = *(v4 - 8);
      v10 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, v4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (v4 + 4));
      v7 = *(v4 + 8);
      v13 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9))
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3d>();
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
      result = v10;
      if (v10)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
      }

      v4 += 56;
    }

    while (v5 + 56 != v3);
  }

  v8 = *(v1 + 56);
  if (v8)
  {
    return (*(**(v8 + 16) + 24))(*(v8 + 16), 0);
  }

  return result;
}

void sub_2474ED104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c114_ZTSNSt3__16vectorINS_4pairIN32pxrInternal__aapl__pxrReserved__12UsdAttributeENS2_7GfVec3dEEENS_9allocatorIS5_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>*,std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>*>(v2, *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
}

atomic_uint **___ZN9realityioL19updateStageOnRepeatEPNS_13ImportSessionE_block_invoke_41(uint64_t a1, realityio::ImportSession *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return realityio::updateStageOnRepeat(result, a2);
  }

  return result;
}

uint64_t **std::map<float,std::string>::map[abi:ne200100](uint64_t **a1, float *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::__emplace_hint_unique_key_args<float,std::pair<float const,std::string> const&>(a1, v4, a2, *a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::__emplace_hint_unique_key_args<float,std::pair<float const,std::string> const&>(uint64_t **result, uint64_t *a2, uint64_t a3, float a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 8), v5 > a4))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
    }

    else
    {
      if (v6)
      {
        v7 = *a2;
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        v12 = a2;
        do
        {
          v8 = v12[2];
          v13 = *v8 == v12;
          v12 = v8;
        }

        while (v13);
      }

      if (*(v8 + 8) >= a4)
      {
        v15 = *v4;
        if (!*v4)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v16 = v15;
            v17 = *(v15 + 32);
            if (v17 <= a4)
            {
              break;
            }

            v15 = *v15;
            if (!*v16)
            {
              goto LABEL_38;
            }
          }

          if (v17 >= a4)
          {
            return result;
          }

          v15 = *(v15 + 8);
          if (!v15)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v6)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = a2;
    }

    if (!*v14)
    {
      goto LABEL_38;
    }
  }

  else if (v5 < a4)
  {
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
        v11 = v10;
      }

      while (v9);
    }

    else
    {
      v11 = a2;
      do
      {
        v18 = v11;
        v11 = v11[2];
      }

      while (*v11 != v18);
    }

    if (v11 == v4 || *(v11 + 8) > a4 || (v19 = *v4) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = *(v19 + 32);
        if (v21 <= a4)
        {
          break;
        }

        v19 = *v19;
        if (!*v20)
        {
          goto LABEL_38;
        }
      }

      if (v21 >= a4)
      {
        break;
      }

      v19 = *(v19 + 8);
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

std::string *std::pair<std::string const,realityio::LiveSessionPrimDescriptor>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::map<float,std::string>::map[abi:ne200100](&this[1], a3);
  v6 = *(a3 + 24);
  v7 = *(a3 + 56);
  *&this[2].__r_.__value_.__r.__words[2] = *(a3 + 40);
  *&this[3].__r_.__value_.__r.__words[1] = v7;
  *&this[2].__r_.__value_.__l.__data_ = v6;
  return this;
}

void sub_2474ED504(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::LiveSessionPrimDescriptor>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::LiveSessionPrimDescriptor>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::LiveSessionPrimDescriptor>,0>((a1 + 4));

    operator delete(a1);
  }
}

double pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<double,double,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<double>>::_CopyInit(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<double,double,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<double>>::_Move(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<double,double,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<double>>::_Hash(double *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * *&v1);
}

double pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<double,double,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<double>>::_GetProxiedAsVtValue@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  a2[1] = &unk_285946DC3;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>>::_Destroy(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>>::_GetProxiedAsVtValue@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

uint64_t **std::map<float,std::string>::map[abi:ne200100](uint64_t **a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<float,std::string>,std::__map_value_compare<float,std::__value_type<float,std::string>,std::less<float>,true>,std::allocator<std::__value_type<float,std::string>>>::__emplace_hint_unique_key_args<float,std::pair<float const,std::string> const&>(a1, v3, (v5 + 8), v5[8]);
      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(atomic_ullong *a1)
{
  result = MEMORY[0x24C1A5850]();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      MEMORY[0x24C1A91B0]();
    }

    return atomic_load(a1);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::assign<std::string const*>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  _ZN32pxrInternal__aapl__pxrReserved__7VtArrayINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE6resizeIZNS8_6assignIPKS7_EENS1_9enable_ifIXntsr3std11is_integralIT_EE5valueEvE4typeESE_SE_E7_CopierEEvmOSE_(a1, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3), v6);
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 24 * *a1;
      do
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v4 += 24;
        v5 -= 24;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void _ZN32pxrInternal__aapl__pxrReserved__7VtArrayINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE6resizeIZNS8_6assignIPKS7_EENS1_9enable_ifIXntsr3std11is_integralIT_EE5valueEvE4typeESE_SE_E7_CopierEEvmOSE_(unint64_t *a1, unint64_t a2, __int128 ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    Copy = a1[4];
    if (Copy)
    {
      if (!a1[3])
      {
        v8 = atomic_load(&Copy[-1].__r_.__value_.__l.__size_);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v12 = &Copy[a2];
            v13 = 24 * v3 - 24 * a2;
            do
            {
              if (SHIBYTE(v12->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v12->__r_.__value_.__l.__data_);
              }

              ++v12;
              v13 -= 24;
            }

            while (v13);
            goto LABEL_25;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(a1, v9, a2, *a1);
          }

LABEL_19:
          v10 = &Copy[v3];
          goto LABEL_20;
        }

        Copy = a1[4];
      }

      if (v3 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a1;
      }

      Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(a1, Copy, a2, v11);
      if (v3 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(a1, a2);
      v10 = Copy;
LABEL_20:
      _ZZN32pxrInternal__aapl__pxrReserved__7VtArrayINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE6assignIPKS7_EENS1_9enable_ifIXntsr3std11is_integralIT_EE5valueEvE4typeESD_SD_ENK7_CopierclEPS7_SH_(a3, v10);
LABEL_25:
      if (Copy != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(a1);
        a1[4] = Copy;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(a1);
}

void _ZZN32pxrInternal__aapl__pxrReserved__7VtArrayINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE6assignIPKS7_EENS1_9enable_ifIXntsr3std11is_integralIT_EE5valueEvE4typeESD_SD_ENK7_CopierclEPS7_SH_(__int128 ***a1, std::string *this)
{
  v2 = **a1;
  v3 = *a1[1];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v2, *(v2 + 1));
      }

      else
      {
        v6 = *v2;
        this->__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v2 = (v2 + 24);
      ++this;
      v4 -= 24;
    }

    while (v2 != v3);
  }
}

void sub_2474EDDC4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

std::string *pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(a1, a3);
  v7 = New;
  if (a4)
  {
    v8 = 0;
    v9 = -24 * a4;
    v10 = New;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
      }

      else
      {
        v11 = *a2;
        v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v10->__r_.__value_.__l.__data_ = v11;
      }

      a2 = (a2 + 24);
      ++v10;
      v8 -= 24;
    }

    while (v9 != v8);
  }

  return v7;
}

void sub_2474EDE9C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::clear(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 8 * *a1;
      do
      {
        if ((*v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = (v4 & 0xFFFFFFFFFFFFFFF8) + (((v4 & 0xFFFFFFFFFFFFFFF8) + v1 + ((v4 & 0xFFFFFFFFFFFFFFF8) + v1) * ((v4 & 0xFFFFFFFFFFFFFFF8) + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a2, v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    v11 = v10 ^ v8;
    result = v11 < 8;
    v12 = v11 > 7 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206D28](a2, v3);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>,0>(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 2));
  result = a1[1];
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>::~pair(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 2));
  v4 = a1[1];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  result = *(a1 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return a1;
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>*,std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 5;
        std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<pxrInternal__aapl__pxrReserved__::TfToken>::IsEqual(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

LABEL_10:
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    return (**(a1 + 8) ^ *v3) < 8uLL;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  if (result)
  {
    v2 = *(v3 + 1);
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v6, a1);
  a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_2474EE9F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>*,std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>>>::destroy(*a1);
    std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::GfVec3d>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>>>::destroy(*a1);
    std::__tree<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::__map_value_compare<double,std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::TfToken>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_DecrementIfValid(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(&v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a2, v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = LODWORD(v4);
  if (*(a1 + 8))
  {
    v5 = ((*a1 + LODWORD(v4) + (*a1 + LODWORD(v4)) * (*a1 + LODWORD(v4))) >> 1) + LODWORD(v4);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&>(a1, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&>(uint64_t result, float *a2, float *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = LODWORD(v3);
  if (*(result + 8))
  {
    v4 = ((*result + LODWORD(v3) + (*result + LODWORD(v3)) * (*result + LODWORD(v3))) >> 1) + LODWORD(v3);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = LODWORD(v5) + ((v4 + LODWORD(v5) + (v4 + LODWORD(v5)) * (v4 + LODWORD(v5))) >> 1);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(size_t) [T = int]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_DecrementIfValid(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(a2, v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<int>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 4 * *a1) == 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

float pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<float,float,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<float>>::_CopyInit(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<float,float,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<float>>::_Move(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<float,float,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<float>>::_Hash(float *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * LODWORD(v1));
}

float pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<float,float,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<float>>::_GetProxiedAsVtValue@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2859471F3;
  result = *a1;
  *a2 = *a1;
  return result;
}

void realityio::TransformAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void ***a3@<X3>, const pxrInternal__aapl__pxrReserved__::VtValue **a4@<X4>, uint64_t *a5@<X8>)
{
  v124 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v123, a1);
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v102, 1.0);
  v92 = a5;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v101, 1.0);
  v8 = *a3;
  if (a3[1] == *a3)
  {
    v93 = 0;
LABEL_52:
    memset(v100, 0, sizeof(v100));
    memset(v99, 0, sizeof(v99));
    memset(v98, 0, sizeof(v98));
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v105);
    v36 = v106;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v105);
    v38 = (v106 + 8 * v105[0]);
    if (v36 == v38)
    {
      v40 = -1000000.0;
      v39 = 1000000.0;
    }

    else
    {
      v39 = 1000000.0;
      v40 = -1000000.0;
      do
      {
        if ((*v36 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (*v36 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
        }

        v42 = MEMORY[0x24C1A5DE0](&__p, "!invert!xformOp:");
        if ((__p & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v43 = (__p & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v43 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v42);
        }

        if (*(v43 + 23) >= 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = *v43;
        }

        v45 = *(EmptyString + 23);
        if (v45 >= 0)
        {
          v46 = *(EmptyString + 23);
        }

        else
        {
          v46 = *(EmptyString + 8);
        }

        v47 = strlen(v44);
        if (v46 >= v47)
        {
          v49 = v47;
          if (v45 >= 0)
          {
            v50 = EmptyString;
          }

          else
          {
            v50 = *EmptyString;
          }

          v48 = strncmp(v50, v44, v49) == 0;
        }

        else
        {
          v48 = 0;
        }

        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v48)
        {
          *(&__p + 1) = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v100, &__p);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
          *(&__p + 1) = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v99, &__p);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
          *(&__p + 1) = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v98, &__p);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v112, v103, v36);
          std::string::basic_string[abi:ne200100]<0>(&__p, "/__timeSamples");
          MEMORY[0x24C1A5D70](&v116, &__p);
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(&v108, &v112, &v116);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v116);
          if (SBYTE7(v121) < 0)
          {
            operator delete(__p);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
          v51 = *a4;
          v52 = a4[1] - *a4;
          if (v52)
          {
            v53 = v52 >> 4;
            v54 = *a3;
            if (v53 <= 1)
            {
              v53 = 1;
            }

            while (1)
            {
              v55 = *v54++;
              if (v55 == v108)
              {
                break;
              }

              v51 = (v51 + 16);
              if (!--v53)
              {
                goto LABEL_83;
              }
            }

            pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&__p, v51);
          }

          else
          {
LABEL_83:
            *(&__p + 1) = 0;
          }

          *(&v116 + 1) = 0;
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v97, v103, v36);
          v56 = *a4;
          v57 = a4[1] - *a4;
          if (v57)
          {
            v58 = v57 >> 4;
            v59 = *a3;
            if (v58 <= 1)
            {
              v58 = 1;
            }

            while (1)
            {
              v60 = *v59++;
              if (v60 == v97)
              {
                break;
              }

              v56 = (v56 + 16);
              if (!--v58)
              {
                goto LABEL_90;
              }
            }

            pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v112, v56);
          }

          else
          {
LABEL_90:
            *(&v112 + 1) = 0;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<TimeSampledDataT>(&__p))
          {
            if ((BYTE8(__p) & 4) != 0)
            {
              v61 = (*((*(&__p + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&__p);
            }

            else
            {
              v61 = __p;
            }

            pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v116, (v61 + 24));
            if (v39 >= *v61)
            {
              v39 = *v61;
            }

            if (*(v61 + 8) >= v40)
            {
              v40 = *(v61 + 8);
            }
          }

          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v100, &__p);
          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v99, &v116);
          std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](v98, &v112);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v112);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v116);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v37 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
        }

        v36 = (v36 + 8);
      }

      while (v36 != v38);
    }

    *&__p = 0;
    *&v116 = 0;
    *&v108 = 0;
    v97 = 0;
    realityio::getAnimInputControlsFromInputs(a3, a4, &__p, &v116, &v108, &v97);
    if (v40 >= v39)
    {
      v62 = ((v40 - v39) * *&__p + 1.0 + 0.5);
    }

    else
    {
      v62 = 0;
    }

    if (v40 >= v39)
    {
      v63 = v39;
    }

    else
    {
      v40 = 0.0;
      v63 = 0.0;
    }

    std::vector<RESRT>::vector[abi:ne200100](&v97, v62);
    v94 = v62;
    if (v62)
    {
      v64 = 0;
      v65 = (v40 - v63) / (v62 + -1.0);
      v66 = v63;
      do
      {
        v96[0] = 0;
        v96[1] = 0;
        v95 = v96;
        if (v105[0])
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          do
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v105);
            v71 = (v106 + v67);
            if ((*(v106 + v67) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v72 = (*(v106 + v67) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v72 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
            }

            v73 = MEMORY[0x24C1A5DE0](&__p, "!invert!xformOp:");
            if ((__p & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v74 = (__p & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v74 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v73);
            }

            if (*(v74 + 23) >= 0)
            {
              v75 = v74;
            }

            else
            {
              v75 = *v74;
            }

            v76 = *(v72 + 23);
            if (v76 >= 0)
            {
              v77 = *(v72 + 23);
            }

            else
            {
              v77 = *(v72 + 8);
            }

            v78 = strlen(v75);
            if (v77 >= v78)
            {
              v80 = v78;
              if (v76 >= 0)
              {
                v81 = v72;
              }

              else
              {
                v81 = *v72;
              }

              v79 = strncmp(v81, v75, v80) == 0;
            }

            else
            {
              v79 = 0;
            }

            if ((__p & 7) != 0)
            {
              atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (!v79)
            {
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v116, (v100[0] + v68));
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v112, (v99[0] + v68));
              if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<TimeSampledDataT>(&v116))
              {
                if ((BYTE8(v116) & 4) != 0)
                {
                  v82 = (*((*(&v116 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v116);
                }

                else
                {
                  v82 = v116;
                }

                realityio::getSampledValueAtTime(v82, &v108, v66);
                *&__p = v71;
                v83 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&v95, v71, &std::piecewise_construct, &__p, &v107);
                v84 = v83;
                v85 = v83 + 5;
                if (v83 + 5 != &v108)
                {
                  if (*(&v108 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&__p, v85);
                    v86 = *(&v108 + 1);
                    v87 = ~BYTE8(v108);
                    v84[6] = *(&v108 + 1);
                    if ((v87 & 3) != 0)
                    {
                      (*((v86 & 0xFFFFFFFFFFFFFFF8) + 40))(&v108, v85);
                    }

                    else
                    {
                      *v85 = v108;
                    }

                    *(&v108 + 1) = 0;
                    if (*(&__p + 1))
                    {
                      (*(*(&__p + 1) + 32))(&__p);
                    }
                  }

                  else
                  {
                    v90 = v83[6];
                    if (v90 && (v83[6] & 3) != 3)
                    {
                      (*((v90 & 0xFFFFFFFFFFFFFFF8) + 32))(v83 + 5);
                    }

                    v84[6] = 0;
                  }
                }

                p_p = &v108;
              }

              else
              {
                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&__p, (v98[0] + v68));
                *&v108 = v71;
                v88 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&v95, v71, &std::piecewise_construct, &v108, &v107);
                pxrInternal__aapl__pxrReserved__::VtValue::operator=(v88 + 5, &__p);
                p_p = &__p;
              }

              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(p_p);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v112);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v116);
            }

            ++v69;
            v68 += 16;
            v67 += 8;
          }

          while (v105[0] > v69);
        }

        v107 = 0;
        if (getLocalTransformation(&__p, &v107, v105, &v95))
        {
          MEMORY[0x24C1A4BE0](&v116, &__p);
          if (v93)
          {
            v108 = v116;
            v109 = v117;
            v110 = v118;
            v111 = v119;
            pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
            v112 = v108;
            v113 = v109;
            v114 = v110;
            v115 = v111;
            pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
            v116 = v112;
            v117 = v113;
            v118 = v114;
            v119 = v115;
          }

          REDecomposeMatrix();
        }

        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v95, v96[0]);
        ++v64;
        v66 = v65 + v66;
      }

      while (v64 != v94);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v103);
    RETimelineDefinitionCreateSampledSRTAnimation();
    RETimelineDefinitionSetInterpolationEnabled();
    RETimelineDefinitionSetTargetPath();
    RETimelineDefinitionSetFrameInterval();
    RETimelineDefinitionSetStartTime();
    RETimelineDefinitionSetEndTime();
    RETimelineDefinitionSetSRTValues();
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    v122 = 0;
    __p = 0u;
    v121 = 0u;
    *&v116 = RETimelineDefinitionCreateTimelineAsset();
    if (v116)
    {
      RERetain();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::emplace_back<realityio::WrappedRERef<REAsset *>>(&__p, &v116);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v116);
    RERelease();
    RERelease();
    v92[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(v92, &__p);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v93 = 0;
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v116, (*a4 + v10));
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + v9));
    v13 = MEMORY[0x24C1A5DE0](&__p, "xformOpOrder");
    v14 = *NameToken;
    v15 = __p;
    if ((__p & 7) != 0)
    {
      atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v15 ^ v14) <= 7)
    {
      break;
    }

    v18 = realityio::TargetPaths::upAxisPath(v13);
    if (*(v8 + 8 * v11) == *v18)
    {
      v19 = atomic_load(MEMORY[0x277D86550]);
      if (!v19)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      v20 = *(v19 + 1352);
      *&v108 = v20;
      if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v108 = v108 & 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v112, (*a4 + v10));
      v21 = *(&v112 + 1);
      if (*(&v112 + 1))
      {
        if (*((*(&v112 + 1) & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
        {
          if ((BYTE8(v112) & 4) == 0)
          {
            goto LABEL_19;
          }

LABEL_35:
          v22 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(&v112);
          goto LABEL_20;
        }

        {
          v21 = *(&v112 + 1);
          if ((BYTE8(v112) & 4) != 0)
          {
            goto LABEL_35;
          }

LABEL_19:
          v22 = &v112;
LABEL_20:
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v108, v22);
        }
      }

      v26 = atomic_load(MEMORY[0x277D86550]);
      if (!v26)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      if ((*(v26 + 1360) ^ v108) <= 7)
      {
        *&v121 = 0;
        __p = 0x3FF0000000000000uLL;
        *(&v121 + 1) = 0xC056800000000000;
        v27 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate();
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[3];
        v102[2] = v27[2];
        v102[3] = v30;
        v102[0] = v28;
        v102[1] = v29;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v112);
      if ((v108 & 7) != 0)
      {
        atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_46;
    }

    if (*(v8 + 8 * v11) == *realityio::TargetPaths::metersPerUnitPath(v18))
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&__p, (*a4 + v10));
      v23 = *(&__p + 1);
      v24.n128_u32[0] = 1008981770;
      if (*(&__p + 1))
      {
        if (*((*(&__p + 1) & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
        {
          if ((BYTE8(__p) & 4) == 0)
          {
            goto LABEL_25;
          }

LABEL_44:
          v25 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(&__p, v24);
          goto LABEL_26;
        }

        v24.n128_u32[0] = 1008981770;
        if ((BYTE8(__p) & 4) != 0)
        {
          IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&__p, MEMORY[0x277D827A8]);
          v24.n128_u32[0] = 1008981770;
          if (IsImpl)
          {
            v23 = *(&__p + 1);
            if ((BYTE8(__p) & 4) != 0)
            {
              goto LABEL_44;
            }

LABEL_25:
            v25 = &__p;
LABEL_26:
            v24.n128_f32[0] = *v25;
          }
        }
      }

      LODWORD(v112) = v24.n128_u32[0];
      DWORD1(v112) = v24.n128_u32[0];
      DWORD2(v112) = v24.n128_u32[0];
      v32 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale();
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[3];
      v101[2] = v32[2];
      v101[3] = v35;
      v101[1] = v34;
      v101[0] = v33;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
LABEL_46:
      v93 = 1;
    }

LABEL_47:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v116);
    ++v11;
    v8 = *a3;
    v10 += 16;
    v9 += 8;
    if (v11 >= a3[1] - *a3)
    {
      goto LABEL_52;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, (v8 + v9));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v103, &__p);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v104, &__p + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&__p, &v116);
  v16 = *(&__p + 1);
  if (!*(&__p + 1))
  {
LABEL_31:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
    goto LABEL_47;
  }

  if (*((*(&__p + 1) & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
  {
    if ((BYTE8(__p) & 4) == 0)
    {
LABEL_9:
      v17 = __p;
LABEL_10:
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator=(v105, v17);
      goto LABEL_31;
    }
  }

  else
  {
    {
      goto LABEL_31;
    }

    v16 = *(&__p + 1);
    if ((BYTE8(__p) & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(&__p);
  goto LABEL_10;
}

void sub_2474F0398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a65);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a46);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a47);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v65 - 168));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator=(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v8);
  }

  return a1;
}

void *realityio::TargetPaths::upAxisPath(realityio::TargetPaths *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/__stage.layerData.mapper[/upAxis]");
    MEMORY[0x24C1A5D70](&realityio::TargetPaths::upAxisPath(void)::kUpAxisPath, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return &realityio::TargetPaths::upAxisPath(void)::kUpAxisPath;
}

void sub_2474F07A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *realityio::TargetPaths::metersPerUnitPath(realityio::TargetPaths *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/__stage.layerData.mapper[/metersPerUnit]");
    MEMORY[0x24C1A5D70](&realityio::TargetPaths::metersPerUnitPath(void)::kMetersPerUnitPath, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return &realityio::TargetPaths::metersPerUnitPath(void)::kMetersPerUnitPath;
}

void sub_2474F0860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::push_back[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::VtValue>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue,0>(a1[1], a2);
    result = v3 + 16;
    a1[1] = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<TimeSampledDataT>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("16TimeSampledDataT" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void sub_2474F0A54(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue,0>((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = a1[1];
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::VtValue*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::VtValue>::~__split_buffer(&v14);
  return v13;
}

void sub_2474F0B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::VtValue>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue,0>(void *result, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result[1] = 0;
  if (a2[1])
  {
    v3 = result;
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v6, result);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    v3[1] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, v3);
    }

    else
    {
      *v3 = *a2;
    }

    a2[1] = 0;
    if (v7)
    {
      return (*(v7 + 32))(v6);
    }
  }

  return result;
}

void sub_2474F0C5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::VtValue*>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue,0>(a4, v8);
      v8 = (v8 + 16);
      a4 += 2;
      v7 -= 16;
    }

    while (v8 != a3);
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
      v6 = (v6 + 16);
    }

    while (v6 != a3);
  }
}

void sub_2474F0D38(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 16);
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
      v4 = (v5 - 16);
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::VtValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v4 - 16));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a2 + 5));
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *a3 == 0;
    v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[4];
        if (v6)
        {
          if (v10)
          {
            break;
          }
        }

        if (v10)
        {
          v41 = v7;
        }

        else
        {
          v41 = 0;
        }

        if (!v41)
        {
          goto LABEL_26;
        }

LABEL_54:
        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_61;
        }
      }

      if (v6 != v10)
      {
        v11 = v10 & 0xFFFFFFFFFFFFFFF8;
        v12 = *(v8 + 8);
        v13 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v12 < v13)
        {
          goto LABEL_54;
        }

        if (v12 == v13)
        {
          v16 = *(v11 + 16);
          v14 = v11 + 16;
          v15 = v16;
          v17 = *(v14 + 23);
          v18 = *(v8 + 39);
          if (v18 >= 0)
          {
            v19 = *(v8 + 39);
          }

          else
          {
            v19 = *(v8 + 24);
          }

          if (v18 >= 0)
          {
            v20 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v20 = *(v8 + 16);
          }

          if (v17 >= 0)
          {
            v21 = *(v14 + 23);
          }

          else
          {
            v21 = *(v14 + 8);
          }

          if (v17 >= 0)
          {
            v22 = v14;
          }

          else
          {
            v22 = v15;
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          v25 = v19 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (v25)
          {
            goto LABEL_54;
          }
        }
      }

LABEL_26:
      if (v6 && v10)
      {
        if (v10 == v6)
        {
          goto LABEL_61;
        }

        v26 = v10 & 0xFFFFFFFFFFFFFFF8;
        v27 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
        v28 = *(v8 + 8);
        if (v27 >= v28)
        {
          if (v27 != v28)
          {
            goto LABEL_61;
          }

          v29 = *(v8 + 39);
          v32 = *(v26 + 16);
          v30 = v26 + 16;
          v31 = v32;
          v33 = *(v30 + 23);
          v34 = v33 >= 0 ? *(v30 + 23) : *(v30 + 8);
          v35 = (v33 >= 0 ? v30 : v31);
          v36 = v29 >= 0 ? *(v8 + 39) : *(v8 + 24);
          v37 = v29 >= 0 ? ((v6 & 0xFFFFFFFFFFFFFFF8) + 16) : *(v8 + 16);
          v38 = v36 >= v34 ? v34 : v36;
          v39 = memcmp(v35, v37, v38);
          v40 = v34 < v36;
          if (v39)
          {
            v40 = v39 < 0;
          }

          if (!v40)
          {
            goto LABEL_61;
          }
        }
      }

      else if (!v6 || v10)
      {
        goto LABEL_61;
      }

      v5 = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_61;
      }
    }
  }

  v9 = (a1 + 8);
LABEL_61:
  *a2 = v9;
  return v5;
}

uint64_t RIOPxrSdfReferenceGetTypeID()
{
  if (RIOPxrSdfReferenceGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfReferenceGetTypeID::onceToken, &__block_literal_global_0);
  }

  return RIOPxrSdfReferenceGetTypeID::typeID;
}

void __RIOPxrSdfReferenceGetTypeID_block_invoke()
{
  if (!RIOPxrSdfReferenceGetTypeID::typeID)
  {
    RIOPxrSdfReferenceGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfReferenceIsLessThan(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return MEMORY[0x282206FD8](a1 + 16, a2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfReferenceIsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::SdfReference::operator==();
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfReferenceCreateFromCStringWithAssetPathAndPrimPath(char *__s, uint64_t a2)
{
  if (__s && a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, __s);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v10, 0.0, 1.0);
    v11 = 0;
    MEMORY[0x24C1A4E70](__p, v12, a2 + 16, v10, &v11);
    v3 = RIOPxrSdfReferenceCreate<pxrInternal__aapl__pxrReserved__::SdfReference>(__p);
    v4 = v17;
    v17 = 0;
    if (v4)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v4, *(v4 + 8));
      MEMORY[0x24C1A91B0](v4, 0x1020C4062D53EE8);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v11;
    v11 = 0;
    if (v5)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v5, *(v5 + 8));
      MEMORY[0x24C1A91B0](v5, 0x1020C4062D53EE8);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v10, 0.0, 1.0);
    v9 = 0;
    MEMORY[0x24C1A4E70](__p, v12, &v11, v10, &v9);
    v3 = RIOPxrSdfReferenceCreate<pxrInternal__aapl__pxrReserved__::SdfReference>(__p);
    v6 = v17;
    v17 = 0;
    if (v6)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v6, *(v6 + 8));
      MEMORY[0x24C1A91B0](v6, 0x1020C4062D53EE8);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v9;
    v9 = 0;
    if (v7)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v7, *(v7 + 8));
      MEMORY[0x24C1A91B0](v7, 0x1020C4062D53EE8);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v3;
}

void sub_2474F1438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::SdfReference::~SdfReference(&a19);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfReferenceCreate<pxrInternal__aapl__pxrReserved__::SdfReference>(__int128 *a1)
{
  if (RIOPxrSdfReferenceGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfReferenceGetTypeID::onceToken, &__block_literal_global_0);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    v4 = *a1;
    *(Instance + 32) = *(a1 + 2);
    *(Instance + 16) = v4;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 40), a1 + 6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v3 + 44), a1 + 7);
    *(v3 + 48) = a1[2];
    v5 = *(a1 + 6);
    *(a1 + 6) = 0;
    *(v3 + 64) = v5;
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::SdfReference::~SdfReference(pxrInternal__aapl__pxrReserved__::SdfReference *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

CFStringRef RIOPxrSdfReferenceCopyAssetPathString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v1 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v1 = *v1;
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

void RIOPxrSdfReferenceSetAssetPath(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    pxrInternal__aapl__pxrReserved__::SdfReference::SetAssetPath(a1 + 16);
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2474F165C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfReference::SetAssetPath(uint64_t a1)
{
  MEMORY[0x24C1A4E40](&v2);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, v2.__r_.__value_.__l.__data_, v2.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v5;
  *(&v5.__r_.__value_.__s + 23) = 0;
  v5.__r_.__value_.__s.__data_[0] = 0;
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }
}

uint64_t RIOPxrSdfReferenceCopyPrimPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 40));
  }

  return result;
}

uint64_t RIOPxrSdfReferenceSetPrimPath(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(result + 40, (a2 + 16));

    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v3 + 44, (a2 + 20));
  }

  return result;
}

void _RIOPxrSdfReferenceCFFinalize(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  if (*(a1 + 39) < 0)
  {
    v3 = a1[2];

    operator delete(v3);
  }
}

unint64_t _RIOPxrSdfReferenceCFHash(char *a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v2, a1 + 16, a1 + 10, (a1 + 48), (a1 + 64));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, const char *a2, unsigned int *a3, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a4, pxrInternal__aapl__pxrReserved__ *a5)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2);
  v10 = *a3;
  v9 = a3[1];
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9 + ((v10 + v9 + (v10 + v9) * (v10 + v9)) >> 1);

  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(a1, a4, a5);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *this, pxrInternal__aapl__pxrReserved__ *a3)
{
  Hash = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(this);
  if (*(a1 + 8))
  {
    Hash += (*a1 + Hash + (*a1 + Hash) * (*a1 + Hash)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = Hash;
  result = pxrInternal__aapl__pxrReserved__::hash_value(a3, v6);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::hash_value(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty(this))
  {
    return 0;
  }

  v4 = *this;
  v5 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendRange<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(&v5, *v4, (v4 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v5);
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendRange<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = this;
    do
    {
      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v12 = v4[4];
      v11 = (v4 + 4);
      v10 = v12;
      if (v11[23] >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v5, v13);
      this = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v11 + 24));
      if (*(v5 + 8))
      {
        this = (this + ((this + *v5 + (this + *v5) * (this + *v5)) >> 1));
      }

      else
      {
        *(v5 + 8) = 1;
      }

      *v5 = this;
      v4 = v8;
    }

    while (v8 != a3);
  }

  return this;
}

void realityio::TextComponentBuilder::TextComponentBuilder(realityio::TextComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "TextComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kTextComponentBuilderIdentifier);
  realityio::generateTextPrimDirtyStageSubscription(&v4);
  v8[0] = &unk_2859473E8;
  v8[3] = v8;
  v7[0] = &unk_2859474F8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2474F1CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::TextComponentBuilder::run(realityio::TextComponentBuilder *this, std::__shared_weak_count **a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v3 = realityio::TextEntityBuilder::kOutputName(this);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v3, v44);
  if (v44[0] == 1)
  {
    v43 = v45;
    if (v45)
    {
      v5 = realityio::TextMeshAssetBuilder::kOutputName(v4);
      v51 = 0;
      v52 = 0;
      v6 = a2[3];
      if (v6)
      {
        v52 = std::__shared_weak_count::lock(v6);
        if (v52)
        {
          v51 = a2[2];
        }
      }

      MEMORY[0x24C1A5E00](&v53, v5);
      v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], &v51);
      if (v7 == v8)
      {
        std::operator+<char>();
        v9 = std::string::append(&v48, ") at prim path (");
        v10 = *&v9->__r_.__value_.__l.__data_;
        v49.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v49.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
        v12 = *(String + 23);
        if (v12 >= 0)
        {
          v13 = String;
        }

        else
        {
          v13 = *String;
        }

        if (v12 >= 0)
        {
          v14 = *(String + 23);
        }

        else
        {
          v14 = *(String + 8);
        }

        v15 = std::string::append(&v49, v13, v14);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        v17 = std::string::append(&v50, ")");
      }

      else
      {
        v19 = 1;
        v20 = v7;
        do
        {
          v20 = *v20;
          --v19;
        }

        while (v20 != v8);
        if (!v19)
        {
          v31 = v7[5];
          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((v7[7] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = ((v7[7] & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
          }

          realityio::Outputs::getValue<realityio::WrappedRERef<REAsset *>>(buf, v33, EmptyString);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (buf[0])
          {
            v35 = *&buf[8];
            *&buf[8] = 0;
            v40[0] = 1;
            *&v41 = v35;
            *&v54 = 0;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v54);
          }

          else
          {
            v54 = *&buf[8];
            if ((buf[47] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v55, *&buf[24], *&buf[32]);
            }

            else
            {
              v55 = *&buf[24];
            }

            v40[0] = 0;
            v41 = v54;
            v42 = v55;
          }

          realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(buf);
          goto LABEL_48;
        }

        std::operator+<char>();
        v21 = std::string::append(&v48, ") at prim path (");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v49.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
        v24 = *(v23 + 23);
        if (v24 >= 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(v23 + 23);
        }

        else
        {
          v26 = *(v23 + 8);
        }

        v27 = std::string::append(&v49, v25, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v17 = std::string::append(&v50, ") because more than one connected builder produced the same output type");
      }

      v29 = *&v17->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__r.__words[2];
      v54 = v29;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(buf, 204, &realityio::FoundationErrorCategory(void)::instance, &v54);
      v41 = *buf;
      *&v42.__r_.__value_.__l.__data_ = *&buf[16];
      *(&v42.__r_.__value_.__r.__words[1] + 7) = *&buf[31];
      v30 = buf[39];
      memset(&buf[16], 0, 24);
      v40[0] = 0;
      *(&v42.__r_.__value_.__s + 23) = v30;
      if (v55.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

LABEL_48:
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v52;
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (v40[0] == 1)
      {
        v51 = v41;
        if (v41)
        {
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&(*a2)->__shared_owners_);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf, v37, (a2 + 4));
          operator new();
        }
      }

      v38 = *(realityio::logObjects(v36) + 24);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_247485000, v38, OS_LOG_TYPE_ERROR, "Stopping operation to set text, mesh, and transform components because text mesh does not exist", buf, 2u);
      }

      realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(v40);
      return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v44);
    }
  }

  v18 = *(realityio::logObjects(v4) + 24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_247485000, v18, OS_LOG_TYPE_ERROR, "Stopping operation to set text, mesh, and transform components because text entity no longer exists", buf, 2u);
  }

  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v44);
}

void sub_2474F224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(&a23);
  v37 = *(v35 - 88);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(v35 - 96);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a16);
  _Unwind_Resume(a1);
}

void realityio::TextComponentBuilder::~TextComponentBuilder(realityio::TextComponentBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void sub_2474F274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TextComponentBuilder::TextComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TextComponentBuilder::TextComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285947458;
  std::allocator<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor>::construct[abi:ne200100]<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285947458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor>::construct[abi:ne200100]<realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2474F2A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2859474A8;
  return a1;
}

void sub_2474F2B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::~MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor(realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3 + 48, a2);
  if (a3 + 56 != result && *(*(a3 + 24) + 104 * *(result + 40) + 24) == *a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v44, a1, a2);
    realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(&v44, a4);
    if ((BYTE8(v46) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v46 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
    if (v45)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45);
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3 + 48, a2);
    if (a3 + 56 == result)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a3 + 24) + 104 * *(result + 40);
    }

    v9 = *(v8 + 56);
    v29 = v8;
    v30 = (v8 + 64);
    if (v9 != (v8 + 64))
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v53, a1, (v9 + 28));
        v10 = realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(&v53, a4);
        UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(v10);
        v13 = *UsdPrimAllPrimsPredicate;
        v12 = *(UsdPrimAllPrimsPredicate + 8);
        v14 = *(UsdPrimAllPrimsPredicate + 16);
        if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v13 & 0x2000) != 0 || (v12 & 0x2000) == 0))
        {
          v13 |= 0x2000uLL;
          v12 &= ~0x2000uLL;
        }

        v40 = v13;
        v41 = v12;
        *&v42 = v14;
        pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v53, &v40, &v44);
        v40 = v44;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41, &v45);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41 + 1, &v45 + 1);
        v42 = v46;
        v43 = v47;
        v36 = v48;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37, &v49);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37 + 1, &v50);
        v38 = v51;
        v39 = v52;
        while (v40 != v36 || v41 != v37 || !pxrInternal__aapl__pxrReserved__::operator==(&v42, &v38))
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v32, &v40);
          IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v32);
          if (IsValid)
          {
            pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(IsValid);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
            if ((IsA & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()))
            {
              realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(&v32, a4);
            }
          }

          if ((v35 & 7) != 0)
          {
            atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
          if (v33)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
          }

          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v40);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
        if ((v56 & 7) != 0)
        {
          atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        result = v54;
        if (v54)
        {
          result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v54);
        }

        v17 = v9[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v9[2];
            v19 = *v18 == v9;
            v9 = v18;
          }

          while (!v19);
        }

        v9 = v18;
      }

      while (v18 != v30);
    }

    v20 = *(v29 + 80);
    if (v20 != (v29 + 88))
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v53, a1, (v20 + 28));
        v21 = realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(&v53, a4);
        v22 = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(v21);
        v24 = *v22;
        v23 = *(v22 + 8);
        v25 = *(v22 + 16);
        if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v24 & 0x2000) != 0 || (v23 & 0x2000) == 0))
        {
          v24 |= 0x2000uLL;
          v23 &= ~0x2000uLL;
        }

        v40 = v24;
        v41 = v23;
        *&v42 = v25;
        pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v53, &v40, &v44);
        v40 = v44;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41, &v45);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41 + 1, &v45 + 1);
        v42 = v46;
        v43 = v47;
        v36 = v48;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37, &v49);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37 + 1, &v50);
        v38 = v51;
        v39 = v52;
        while (v40 != v36 || v41 != v37 || !pxrInternal__aapl__pxrReserved__::operator==(&v42, &v38))
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v32, &v40);
          v26 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v32);
          if (v26)
          {
            pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(v26);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
            {
              realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(&v32, a4);
            }
          }

          if ((v35 & 7) != 0)
          {
            atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
          if (v33)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
          }

          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v40);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
        if ((v56 & 7) != 0)
        {
          atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        result = v54;
        if (v54)
        {
          result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v54);
        }

        v27 = v20[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v20[2];
            v19 = *v28 == v20;
            v20 = v28;
          }

          while (!v19);
        }

        v20 = v28;
      }

      while (v28 != (v29 + 88));
    }
  }

  return result;
}

uint64_t realityio::MaterialsBoundToMeshesForPrimGeneratingEntityOnlyInputDescriptor::appendToHashSetHelper(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v25 = 0;
  v23 = MEMORY[0x277D867B8] + 16;
  v18 = 4;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v22 = 0;
  if (v24 && (*(v24 + 57) & 8) == 0 && (*(v23 + 32))(&v23))
  {
    v4 = atomic_load(MEMORY[0x277D86568]);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v27, &v23, v4, &v18);
    MEMORY[0x24C1A5510](&v27);
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v15, "material:binding");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v27, a1, &v15);
    v18 = v27;
    if (v19)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
    }

    v19 = *(&v27 + 1);
    *(&v27 + 1) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v20, &v28);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v21, &v28 + 1);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v22 = v29;
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
    if (*(&v27 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v27 + 1));
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18) & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v27) = *a1;
      v5 = *(a1 + 8);
      *(&v27 + 1) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v28, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v28 + 1, (a1 + 20));
      v6 = *(a1 + 24);
      v29 = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v29 &= 0xFFFFFFFFFFFFFFF8;
      }

      memset(v13, 0, sizeof(v13));
      std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim const*,pxrInternal__aapl__pxrReserved__::UsdPrim const*>(v13, &v27, v30, 1uLL);
      if (!atomic_load(MEMORY[0x277D86568]))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterials();
      v26 = v13;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v26);
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
      if (*(&v27 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v27 + 1));
      }

      v8 = v15;
      if (v15 != v16)
      {
        v18 = *v15;
        v9 = *(v15 + 8);
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
        }

        v19 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v20, (v8 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v21, (v8 + 20));
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v22, (v8 + 24));
      }

      *&v27 = v14;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v27);
      *&v27 = &v15;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v27);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18))
  {
    v27 = 0uLL;
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v10 = *(&v27 + 1);
    for (i = v27; i != v10; i += 2)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, i);
    }

    v15 = &v27;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  return MEMORY[0x24C1A5AA0](&v23);
}

void sub_2474F35F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va);
  MEMORY[0x24C1A5AA0](va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(pxrInternal__aapl__pxrReserved__::UsdRelationship *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t *std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim const*,pxrInternal__aapl__pxrReserved__::UsdPrim const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474F37B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim const*,pxrInternal__aapl__pxrReserved__::UsdPrim const*,pxrInternal__aapl__pxrReserved__::UsdPrim*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 16;
    do
    {
      v7 = v6 - 16;
      *v4 = *(v6 - 16);
      v8 = *(v6 - 8);
      *(v4 + 8) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 16), v6);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 20), (v6 + 4));
      v9 = *(v6 + 8);
      *(v4 + 24) = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 24) &= 0xFFFFFFFFFFFFFFF8;
      }

      v4 = v14 + 32;
      v14 += 32;
      v6 += 32;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::UsdPrim*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t std::__function::__func<realityio::TextComponentBuilder::TextComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TextComponentBuilder::TextComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285947578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  realityio::textInformationFromPrim(&v14, *(a1 + 8));
  REStatic3DTextComponentGetComponentType();
  v18[0] = &unk_2859475E8;
  v18[1] = &v14;
  v18[3] = v18;
  v3 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v18, v3);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v18);
  REMeshComponentGetComponentType();
  v4 = *(a1 + 24);
  v17[0] = &unk_285947668;
  v17[1] = v4;
  v17[3] = v17;
  v5 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v17, v5);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v17);
  RETransformComponentGetComponentType();
  v16[0] = &unk_2859476E8;
  v16[1] = &v14;
  v16[3] = v16;
  v6 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v16, v6);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v16);
  v13 = realityio::Inputs::assetManager(**(a1 + 32));
  v7 = **(a1 + 32);
  v8 = realityio::MaterialAssetBuilder::kMaterialDataName(v13);
  realityio::Inputs::getAccumulatedValues<realityio::MaterialAssetDataT *>(v7, v8, &v10);
  memset(__p, 0, sizeof(__p));
  if (v10)
  {
    std::vector<realityio::MaterialAssetDataT *>::__init_with_size[abi:ne200100]<realityio::MaterialAssetDataT **,realityio::MaterialAssetDataT **>(__p, v11, v12, (v12 - v11) >> 3);
  }

  REMeshComponentGetComponentType();
  v15 = 0;
  operator new();
}

void sub_2474F3F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&a13);
  realityio::TextPrimInformation::~TextPrimInformation(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::getAccumulatedValues<realityio::MaterialAssetDataT *>(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v41 = 0;
  v42 = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    v42 = std::__shared_weak_count::lock(v7);
    if (v42)
    {
      v41 = *(v5 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v43, a2);
  v8 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v5 + 8), &v41);
  v9 = v8;
  v11 = v10;
  if (v8 == v10)
  {
    std::operator+<char>();
    v12 = std::string::append(&v38, ") at prim path (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v5 + 32));
    v15 = *(String + 23);
    if (v15 >= 0)
    {
      v16 = String;
    }

    else
    {
      v16 = *String;
    }

    if (v15 >= 0)
    {
      v17 = *(String + 23);
    }

    else
    {
      v17 = *(String + 8);
    }

    v18 = std::string::append(&v39, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v40, ")");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[0] = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v46, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v46;
    v22 = v47.__r_.__value_.__r.__words[0];
    *(a3 + 24) = *&v46[16];
    *(a3 + 32) = v22;
    *(a3 + 39) = *(v47.__r_.__value_.__r.__words + 7);
    LOBYTE(v22) = v47.__r_.__value_.__s.__data_[15];
    *&v47.__r_.__value_.__l.__data_ = 0uLL;
    *&v46[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v22;
    if (v45.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v38.__r_.__value_.__r.__words[0];
LABEL_53:
      operator delete(v23);
    }
  }

  else
  {
    v37 = a3;
    memset(&v40, 0, sizeof(v40));
    do
    {
      v24 = *(v9 + 5);
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      realityio::Outputs::getRawValue<realityio::MaterialAssetDataT *>(v26, EmptyString, v46);
      v28 = v46[0];
      if (v46[0])
      {
        v29 = *&v46[8];
      }

      else
      {
        *__p = *&v46[8];
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
          v29 = __p[0];
          v5 = v45.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
          if ((v46[0] & 1) == 0 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v45 = v47;
          v29 = __p[0];
          v5 = v47.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v28)
      {
        size = v40.__r_.__value_.__l.__size_;
        if (v40.__r_.__value_.__l.__size_ >= v40.__r_.__value_.__r.__words[2])
        {
          v32 = (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 3;
          if ((v32 + 1) >> 61)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v33 = (v40.__r_.__value_.__r.__words[2] - v40.__r_.__value_.__r.__words[0]) >> 2;
          if (v33 <= v32 + 1)
          {
            v33 = v32 + 1;
          }

          if (v40.__r_.__value_.__r.__words[2] - v40.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(&v40, v34);
          }

          v35 = (8 * v32);
          *v35 = v29;
          v31 = 8 * v32 + 8;
          v36 = v35 - (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]);
          memcpy(v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]);
          v8 = v40.__r_.__value_.__r.__words[0];
          v40.__r_.__value_.__r.__words[0] = v36;
          *&v40.__r_.__value_.__r.__words[1] = v31;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v40.__r_.__value_.__l.__size_ = v29;
          v31 = size + 8;
        }

        v40.__r_.__value_.__l.__size_ = v31;
      }

      else if (v3 < 0)
      {
        operator delete(v5);
      }

      v9 = *v9;
    }

    while (v9 != v11);
    memset(v46, 0, sizeof(v46));
    std::vector<realityio::MaterialAssetDataT *>::__init_with_size[abi:ne200100]<realityio::MaterialAssetDataT **,realityio::MaterialAssetDataT **>(v46, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_, (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 3);
    *v37 = 1;
    *(v37 + 8) = *v46;
    *(v37 + 24) = *&v46[16];
    v23 = v40.__r_.__value_.__r.__words[0];
    if (v40.__r_.__value_.__r.__words[0])
    {
      v40.__r_.__value_.__l.__size_ = v40.__r_.__value_.__r.__words[0];
      goto LABEL_53;
    }
  }

  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }
}

void sub_2474F43C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859475E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  REStatic3DTextComponentSetText();
  REStatic3DTextComponentSetFont();
  REStatic3DTextComponentSetFontSize();
  REStatic3DTextComponentSetExtrusionDepth();
  REStatic3DTextComponentSetTextFrameSize();
  REStatic3DTextComponentSetTextAlignment();
  REStatic3DTextComponentSetLineBreakMode();
  v4 = *(*(a1 + 8) + 106);

  return MEMORY[0x282154DC0](v3, v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20TextComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285947668;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20TextComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E1_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859476E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E1_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(&v28, 1.0);
  REDecomposeMatrix();
  v3 = *(a1 + 8);
  v4 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  if ((*(v4 + 80) ^ v3[11]) >= 8)
  {
    v5 = atomic_load(&realityio::tokens::TextBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
    }

    if ((*(v5 + 120) ^ v3[11]) > 7)
    {
      v6 = atomic_load(&realityio::tokens::TextBuilderTokens);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
      }

      if ((*(v6 + 16) ^ v3[11]) > 7)
      {
        v16 = atomic_load(&realityio::tokens::TextBuilderTokens);
        if (!v16)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
        }

        if ((*(v16 + 9) ^ v3[11]) >= 8)
        {
          v17 = *(realityio::logObjects(v16) + 24);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v3[11] & 0xFFFFFFFFFFFFFFF8;
            if (v18)
            {
              v19 = (v18 + 16);
              if (*(v18 + 39) < 0)
              {
                v19 = *v19;
              }
            }

            else
            {
              v19 = "";
            }

            *buf = 136315138;
            v30 = v19;
            _os_log_impl(&dword_247485000, v17, OS_LOG_TYPE_DEFAULT, "Unknown text horizontal alignment value %s defaulting to left", buf, 0xCu);
          }
        }
      }
    }
  }

  v7 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  if ((*(v7 + 128) ^ v3[10]) > 7)
  {
    __asm { FMOV            V0.2D, #-0.5 }
  }

  else
  {
    v8 = atomic_load(&realityio::tokens::TextBuilderTokens);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
    }

    if ((*(v8 + 136) ^ v3[12]) > 7)
    {
      v14 = atomic_load(&realityio::tokens::TextBuilderTokens);
      if (!v14)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
      }

      if ((*(v14 + 96) ^ v3[12]) > 7)
      {
        v20 = atomic_load(&realityio::tokens::TextBuilderTokens);
        if (!v20)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
        }

        if ((*(v20 + 8) ^ v3[12]) > 7)
        {
          v21 = atomic_load(&realityio::tokens::TextBuilderTokens);
          if (!v21)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
          }

          if ((*(v21 + 88) ^ v3[12]) > 7)
          {
            v22 = atomic_load(&realityio::tokens::TextBuilderTokens);
            if (!v22)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
            }

            if ((*v22 ^ v3[12]) > 7)
            {
              v23 = *(realityio::logObjects(v22) + 24);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v3[12] & 0xFFFFFFFFFFFFFFF8;
                if (v24)
                {
                  v25 = (v24 + 16);
                  if (*(v24 + 39) < 0)
                  {
                    v25 = *v25;
                  }
                }

                else
                {
                  v25 = "";
                }

                v26 = v3[10] & 0xFFFFFFFFFFFFFFF8;
                if (v26)
                {
                  v27 = (v26 + 16);
                  if (*(v26 + 39) < 0)
                  {
                    v27 = *v27;
                  }
                }

                else
                {
                  v27 = "";
                }

                *buf = 136315394;
                v30 = v25;
                v31 = 2080;
                v32 = v27;
                _os_log_impl(&dword_247485000, v23, OS_LOG_TYPE_DEFAULT, "Unknown text vertical alignment value %s for wrap mode %s; defaulting to bottom", buf, 0x16u);
              }
            }
          }
        }
      }
    }
  }

  return RETransformComponentSetLocalSRT();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E1_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20TextComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E1_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::vector<realityio::MaterialAssetDataT *>::__init_with_size[abi:ne200100]<realityio::MaterialAssetDataT **,realityio::MaterialAssetDataT **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<REComponentClass *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474F4D88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E2_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285947768;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *_ZNSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E2_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(void **a1, void *a2)
{
  REMeshComponentSetMesh();
  v3 = *a1[2];
  if (v3 == a1[2][1] || !*v3)
  {
    v7 = *(*(*(*a1[3] + 40) + 16) + 248);
    if (v7)
    {
      RERetain();
    }

    else
    {
      AssetHandle = REAssetManagerCreateAssetHandle();
      v6 = AssetHandle;
      if (AssetHandle)
      {
        v6 = v7;
        v7 = AssetHandle;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
      if (!v7)
      {
        return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v7);
      }
    }

    REMeshComponentAddMaterial();
    REMeshComponentRemoveAllMaterials();
    REMeshComponentAddMaterial();
    return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v7);
  }

  REMeshComponentRemoveAllMaterials();

  return REMeshComponentAddMaterial();
}

void sub_2474F4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20TextComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E2_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20TextComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E2_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::tokens::ConeMeshBuilderTokens_StaticTokenType::~ConeMeshBuilderTokens_StaticTokenType(realityio::tokens::ConeMeshBuilderTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::ConeMeshBuilderTokens_StaticTokenType *realityio::tokens::ConeMeshBuilderTokens_StaticTokenType::ConeMeshBuilderTokens_StaticTokenType(realityio::tokens::ConeMeshBuilderTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Cone", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "axis", 0);
  MEMORY[0x24C1A5DF0](this + 16, "height", 0);
  MEMORY[0x24C1A5DF0](this + 24, "radius", 0);
  MEMORY[0x24C1A5DF0](this + 32, "material:binding", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2474F5244(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_2474F569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v30, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v31 - 176) = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
  MEMORY[0x24C1A91B0](v29, v28);
  _Unwind_Resume(a1);
}

void realityio::FoundationErrorCategoryImpl::~FoundationErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::FoundationErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 203)
  {
    if (a1 <= 206)
    {
      if (a1 == 204)
      {
        v2 = "Unable to get the inputs value";
      }

      else if (a1 == 205)
      {
        v2 = "Unable to get the outputs descriptor";
      }

      else
      {
        v2 = "Unable to get the ouput descriptor";
      }

      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    switch(a1)
    {
      case 207:
        v2 = "Unable to get the output value";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 208:
        v2 = "Unable to find mapper for entry";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 209:
        v2 = "Texture import error";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

LABEL_24:
    v2 = "Unknown CoreRealityIO Foundation error";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 <= 200)
  {
    if (a1 == 100)
    {
      v2 = "Unexpected error";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    if (a1 == 200)
    {
      v2 = "Unable to get value of USD property";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    goto LABEL_24;
  }

  if (a1 == 201)
  {
    v2 = "Unable to get the entry for the builder";
  }

  else if (a1 == 202)
  {
    v2 = "Unable to get the inputs descriptor";
  }

  else
  {
    v2 = "Unable to get the inputs descriptor for name";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void markPrimAsEntityProducing(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, _BOOL4 a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v36 = &unk_285946C7B;
  v35[0] = a2;
  v6 = atomic_load(&realityio::tokens::EntityBuilderTokens);
  if (a2)
  {
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EntityBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::AddAppliedSchema(a1, (v6 + 24));
  }

  else
  {
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EntityBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::RemoveAppliedSchema(a1, (v6 + 24));
  }

  MEMORY[0x24C1A5DE0](&v25, "customData");
  v7 = atomic_load(&realityio::tokens::EntityBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EntityBuilderTokens);
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(a1, &v25, (v7 + 48), v35);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a3)
  {
    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v8);
    v11 = *UsdPrimDefaultPredicate;
    v10 = *(UsdPrimDefaultPredicate + 8);
    v12 = *(UsdPrimDefaultPredicate + 16);
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v11 & 0x2000) != 0 || (v10 & 0x2000) == 0))
    {
      v11 |= 0x2000uLL;
      v10 &= ~0x2000uLL;
    }

    v21 = v11;
    v22 = v10;
    *&v23 = v12;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a1, &v21, &v25);
    v21 = v25;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22, &v26);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22 + 1, &v27);
    v23 = v28;
    v24 = v29;
    v17 = v30;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v31);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v32);
    v19 = v33;
    v20 = v34;
    while (v21 != v17 || v22 != v18 || !pxrInternal__aapl__pxrReserved__::operator==(&v23, &v19))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v13, &v21);
      markPrimAsEntityProducing(&v13, a2, 1);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v35);
}

void sub_2474F5DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdStageGetEntityTaggingEditMode(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    v7 = 0;
    return v7 & 1;
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v13, v3);
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v13);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v15, v4);
  v5 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = atomic_load(&realityio::tokens::EntityBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EntityBuilderTokens);
  }

  if ((*(v6 + 5) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v9 = ValueAtPath;
  if (ValueAtPath)
  {
    v10 = *(ValueAtPath + 1);
    if (v10)
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))
      {
LABEL_16:
        if ((v10 & 4) != 0)
        {
          v9 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v9);
        }

        v7 = *v9;
        goto LABEL_20;
      }

      if ((v10 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(ValueAtPath, MEMORY[0x277D82798]))
      {
        v10 = *(v9 + 8);
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_20:
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v11, *(v11 + 8));
    MEMORY[0x24C1A91B0](v11, 0x1020C4062D53EE8);
  }

  return v7 & 1;
}

void sub_2474F5FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageSetEntityTaggingEditMode(realityio::UsdLayerMutexTracker *a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = realityio::UsdLayerMutexTracker::instance(a1);
  v6 = *(a1 + 2);
  v5 = (a1 + 16);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
    v9 = EditTarget[1];
    v23 = *EditTarget;
    v24 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v23);
  v11 = v24;
  if (v24 && atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  std::recursive_mutex::lock(v10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v23, v12);
  v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v23);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v22, v13);
  v14 = v24;
  if (v24 && atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  v24 = &unk_285946C7B;
  LOBYTE(v23) = a2;
  v15 = atomic_load(&realityio::tokens::EntityBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EntityBuilderTokens);
  }

  if ((*(v15 + 5) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v20, v16);
  v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v20);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v17, &v22);
  v18 = v21;
  if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v18 + 8))(v18);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v23);
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v19, *(v19 + 8));
    MEMORY[0x24C1A91B0](v19, 0x1020C4062D53EE8);
  }

  std::recursive_mutex::unlock(v10);
}

uint64_t RIOPxrUsdPrimIsEntityConvertible(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return realityio::isEntityConvertible(v2, a2);
}

uint64_t RIOPxrUsdPrimEvaluateEntityInEditMode(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return realityio::calculateIsEntityProviding(v2, a2);
}

uint64_t RIOPxrUsdPrimEvaluateEntityOnExport(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return realityio::calculateIsEntityProvidingAtExportTime(v2, a2);
}

uint64_t RIOPxrUsdPrimGetTaggedAsEntity(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return realityio::getPrimEntityProvidingSetting(v2, a2);
}

void RIOPxrUsdPrimSetTaggedAsEntity(realityio::UsdLayerMutexTracker *a1, _BOOL4 a2)
{
  v4 = (a1 + 24);
  if (a1)
  {
    v5 = (a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = realityio::UsdLayerMutexTracker::instance(a1);
  if (a1 && (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v15, v4);
    v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v15);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
    v9 = EditTarget[1];
    v13 = *EditTarget;
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }

    v10 = v16;
    if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v11 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v6, &v13);
  v12 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  std::recursive_mutex::lock(v11);
  markPrimAsEntityProducing(v5, a2, 0);
  std::recursive_mutex::unlock(v11);
}

void sub_2474F6500(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

char *RIOPxrUsdUtilsEntityProducingPrimsCopyPaths(char *a1)
{
  Mutable = a1;
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__dst);
    pxrInternal__aapl__pxrReserved__::usd_initialize();
    pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__dst);
    v2 = strlen(Mutable);
    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v3 = v2;
    if (v2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v20) = v2;
    if (v2)
    {
      memcpy(__dst, Mutable, v2);
    }

    *(__dst + v3) = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v21)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v21);
      pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(__dst, v4);
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v14, __dst);
      while (1)
      {
        v10 = __dst[1];
        v11 = __dst;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        LODWORD(v13) = 0;
        WORD2(v13) = 0;
        if (v14[1] == v11 && v14[0] == v10)
        {
          v5 = 1;
          if (v15 == v12 && !v16 && !v17)
          {
            v5 = v18;
          }
        }

        else
        {
          v5 = 1;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v22 = v14[0];
        if (v14[0])
        {
          atomic_fetch_add_explicit((v14[0] + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v10, &v22, &v15);
        if (v22)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
        }

        IsEntityProviding = realityio::calculateIsEntityProviding(&v10, v6);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
        }

        if (IsEntityProviding)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(v14, &v10);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v9, &v10);
          v22 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v9);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
          if ((v13 & 7) != 0)
          {
            atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
          if (v11)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
          }

          CFArrayAppendValue(Mutable, v22);
          realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v22);
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v14);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
    }

    else
    {
      Mutable = 0;
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v21);
  }

  return Mutable;
}

void sub_2474F6880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::~UsdPrimRange(&__p);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr((v23 - 80));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(_DWORD *a1)
{
  if (RIOPxrSdfPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), a1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v3 + 20), a1 + 1);
  }

  return v3;
}

void realityio::TexcoordID::getNormalizedName(realityio::TexcoordID *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *a2 = *(this + 16);
  }
}

void realityio::anonymous namespace::ProcessMtlxActionInputs(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, id *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::mtlx::MtlxActionPayload>(v5))
      {
        goto LABEL_26;
      }

      if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::mtlx::MtlxActionPayload>(v5) & 1) == 0)
      {
        break;
      }

      v6 = *(v5 + 1);
      if ((v6 & 4) != 0)
      {
        v14 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
        goto LABEL_30;
      }

      v7 = *v5;
LABEL_7:
      realityio::mtlx::MtlxActionPayload::MtlxActionPayload(&v15, v7);
      if (v17)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = v16;
        if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v9 &= 0xFFFFFFFFFFFFFFF8;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFF8;
        if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v11 = (v10 + 16);
          if (*(v10 + 39) < 0)
          {
            v11 = *v11;
          }
        }

        else
        {
          v11 = "";
        }

        v12 = [v8 stringWithUTF8String:v11];
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_release);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to import from %@", v12];
        if (a3[4])
        {
          realityio::mtlx::MtlxActionPayload::addChildError(a3, v17);
        }

        else
        {
          realityio::mtlx::MtlxActionPayload::setError(a3, v13, 4u, v17);
        }
      }

      if (!a3[4])
      {
        if (!realityio::mtlx::MtlxActionPayload::collectInputsAndOutputs(a3, &v15) || !realityio::mtlx::MtlxActionPayload::collectNodes(a3, &v15))
        {
          realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(&v15);
          return;
        }

        realityio::mtlx::MtlxActionPayload::collectTextureInfo(a3, &v15);
      }

      realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(&v15);
LABEL_26:
      v5 = (v5 + 16);
      if (v5 == a2)
      {
        return;
      }
    }

    v14 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
LABEL_30:
    v7 = v14;
    goto LABEL_7;
  }
}

void sub_2474F6C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(va);
  _Unwind_Resume(a1);
}

void realityio::generateMtlxInputsDescriptorPaths(realityio *this@<X0>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  realityio::mtlx::USDDataSource::USDDataSource(v5, this);
  v3 = v5;
  v4 = 0;
  v6[0] = &unk_285947A98;
  v6[1] = v5;
  v6[2] = a2;
  v6[3] = v6;
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::__value_func[abi:ne200100](v9, v6);
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::__value_func[abi:ne200100](v7, v9);
  v8 = 0;
  operator new();
}

void sub_2474F6E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::USDDataSource::~USDDataSource(realityio::mtlx::USDDataSource *this)
{
  *this = &unk_285942D88;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(this + 32, *(this + 5));
  v2 = (this + 8);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t realityio::_hasCyclesHelper(char *a1, void *a2)
{
  v39 = *(*(a2[1] + (((a2[5] + a2[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 40) + *(a2 + 32) - 1));
  realityio::mtlx::NeoShadeConnectable::GetInputs(&v39, &v37);
  v4 = v37;
  if (v37 == v38)
  {
    LOBYTE(v5) = 0;
LABEL_24:
    (*(*v39 + 16))(&v34);
    v31 = &v34;
    *(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath&&>,std::tuple<>>(a1, &v34, &v31) + 36) = 2;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    v21 = a2[1];
    v20 = a2[2];
    v22 = v20 - v21;
    v23 = v20 == v21;
    v25 = a2[4];
    v24 = a2[5];
    a2[5] = v24 - 1;
    v26 = 32 * v22 - 1;
    if (v23)
    {
      v26 = 0;
    }

    if ((v26 - (v24 + v25) - 511) <= 0xFFFFFFFFFFFFFDFFLL)
    {
      operator delete(*(v20 - 8));
      a2[2] -= 8;
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *v4;
      v35 = *(v4 + 8);
      v34 = v6;
      v7 = *(v4 + 16);
      v36 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v36 &= 0xFFFFFFFFFFFFFFF8;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      if (!(*(*v34 + 10))(v34, v35, &v36, 1, &v31) || v31 == v32)
      {
        goto LABEL_17;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v30, v31);
      v40 = &v30;
      v8 = *(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a1, &v30, &v40) + 36);
      if (v8 != 1)
      {
        v40 = &v30;
        if (!*(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a1, &v30, &v40) + 36))
        {
          v9 = v5;
          v10 = v39;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v28, &v30);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v29, &v30 + 1);
          v11 = realityio::mtlx::NeoDataSource::primFromPath(v10, &v28);
          v13 = v12;
          v14 = a2[2];
          v15 = a2[1];
          v16 = 32 * (v14 - v15) - 1;
          if (v14 == v15)
          {
            v16 = 0;
          }

          v17 = a2[5] + a2[4];
          if (v16 == v17)
          {
            std::deque<realityio::mtlx::NeoShadeConnectable>::__add_back_capacity(a2);
            v15 = a2[1];
            v17 = a2[5] + a2[4];
          }

          v18 = *(v15 + ((v17 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v17;
          *v18 = v11;
          *(v18 + 8) = v13;
          ++a2[5];
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
          v40 = &v30;
          *(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a1, &v30, &v40) + 36) = 1;
          v5 = v9 | realityio::_hasCyclesHelper(a1, a2);
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
      if (v8 == 1)
      {
        v19 = 0;
      }

      else
      {
LABEL_17:
        v19 = 1;
      }

      v41 = &v31;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v41);
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      v4 += 24;
      if (v4 == v38)
      {
        goto LABEL_24;
      }
    }

    LOBYTE(v5) = 1;
  }

  v34 = &v37;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&v34);
  return v5 & 1;
}

void sub_2474F7298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, char a18)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  a15 = &a18;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void realityio::buildMaterialXAsset(realityio *a1@<X0>, uint64_t (***a2)(void)@<X1>, void *a3@<X8>)
{
  v163 = *MEMORY[0x277D85DE8];
  v3 = *(realityio::logObjects(a1) + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v3, OS_LOG_TYPE_INFO, "#####\n##### buildMaterialXAsset called", buf, 2u);
  }

  if (!(**a1)(a1))
  {
    v103 = realityio::internal::assertHandler(1u, "engine", "buildMaterialXAsset", 1149, 0, v4, v5, v6, v104, v105);
    if (v103 == 1)
    {
      raise(5);
    }

    else if (v103 == 2)
    {
      abort();
    }
  }

  location = 0;
  memset(v146, 0, sizeof(v146));
  v144 = 2;
  v145 = 256;
  v142 = (**a2)();
  v143 = v7;
  realityio::mtlx::NeoShadeNodeGraph::GetOutputs(&v142, &v123);
  v8 = *(&v123 + 1);
  if (v123 != *(&v123 + 1))
  {
    v9 = (v123 + 16);
    do
    {
      __p = 0uLL;
      *&v155 = 0;
      if ((*(**(v9 - 2) + 80))(*(v9 - 2), *(v9 - 2), v9, 0, &__p) && *(&__p + 1) != __p)
      {
        v10 = *v9;
        if ((*v9 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        realityio::mtlx::NeoShadeOutput::GetValueProducingAttributes((v9 - 2), v158);
        if (v159 != *v158)
        {
          v11 = v142;
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v151, *v158);
          v12 = realityio::mtlx::NeoDataSource::primFromPath(v11, &v151);
          v14 = v13;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v151);
          *&v161[8] = 0;
          *&v161[16] = 0;
          *v161 = &v161[8];
          v132 = 0u;
          v133 = 0u;
          *buf = 0u;
          std::deque<realityio::mtlx::NeoShadeConnectable>::__add_back_capacity(buf);
          v15 = *(*&buf[8] + (((v133 + *(&v133 + 1)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v133 + BYTE8(v133));
          *v15 = v12;
          *(v15 + 8) = v14;
          ++*(&v133 + 1);
          (*(*v12 + 16))(&v120, v12, v14);
          __str.__r_.__value_.__r.__words[0] = &v120;
          *(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath&&>,std::tuple<>>(v161, &v120, &__str) + 36) = 1;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v120);
          LOBYTE(v12) = realityio::_hasCyclesHelper(v161, buf);
          std::deque<realityio::mtlx::NeoShadeConnectable>::~deque[abi:ne200100](buf);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::destroy(*&v161[8]);
          if (v12)
          {
            *buf = v158;
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](buf);
            if ((v10 & 7) != 0)
            {
              atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *buf = &__p;
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](buf);
            *buf = &v123;
            std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);
            *a3 = 0;
            a3[1] = 0;
            goto LABEL_148;
          }
        }

        *buf = v158;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](buf);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      *buf = &__p;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](buf);
      v16 = v9 + 1;
      v9 += 3;
    }

    while (v16 != v8);
  }

  *buf = &v123;
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);
  std::string::basic_string[abi:ne200100]<0>(buf, "texcoord");
  std::string::basic_string[abi:ne200100]<0>(&v132 + 1, "");
  std::string::basic_string[abi:ne200100]<0>(v134, "texcoord1");
  std::string::basic_string[abi:ne200100]<0>(v135, "");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v136, "uv2");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v137, "uv3");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v138, "uv4");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v139, "uv5");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v140, "uv6");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(v141, "uv7");
  v129 = 0;
  v130 = 0;
  *&v123 = &v123 + 8;
  *(&v123 + 1) = 0;
  v125 = 0uLL;
  *&v124 = 0;
  *(&v124 + 1) = &v125;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  (*(*v142 + 16))(v161);
  (*(*v142 + 16))(&__p);
  realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::addNode(&v123, v161, &__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v161);
  *v161 = &unk_2859478F8;
  *&v161[8] = &v123;
  *&v161[24] = v161;
  realityio::foreachConnected(&v142, v161);
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100](v161);
  *v161 = 0;
  std::vector<int>::vector[abi:ne200100](&__p, v129, v161);
  v17 = *(&v127 + 1);
  v18 = v128;
  if (*(&v127 + 1) != v128)
  {
    v19 = 0;
    do
    {
      v20 = *v17;
      if (*v17 != v17 + 1)
      {
        v21 = __p;
        do
        {
          v22 = v20[4];
          if (v22 != v19)
          {
            ++*(v21 + 4 * v22);
          }

          v23 = v20[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v20[2];
              v25 = *v24 == v20;
              v20 = v24;
            }

            while (!v25);
          }

          v20 = v24;
        }

        while (v24 != v17 + 1);
      }

      v17 += 3;
      ++v19;
    }

    while (v17 != v18);
  }

  obj = 0u;
  memset(v161, 0, sizeof(v161));
  *v158 = 0;
  v26 = *(&__p + 1);
  v27 = __p;
  if (*(&__p + 1) != __p)
  {
    v28 = 0;
    do
    {
      if (!*(v27 + 4 * v28))
      {
        std::deque<unsigned long>::push_back(v161, v158);
        v28 = *v158;
        v26 = *(&__p + 1);
        v27 = __p;
      }

      v28 = (v28 + 1);
      *v158 = v28;
    }

    while (v28 < (v26 - v27) >> 2);
  }

  realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage();
  for (i = *(&obj + 1); *(&obj + 1); i = *(&obj + 1))
  {
    v30 = *(*(*&v161[8] + ((obj >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (obj & 0x1FF));
    *(&obj + 1) = i - 1;
    *&obj = obj + 1;
    if (obj >= 0x400)
    {
      operator delete(**&v161[8]);
      *&v161[8] += 8;
      *&obj = obj - 512;
    }

    v31 = v125;
    if (!v125)
    {
      goto LABEL_45;
    }

    v32 = &v125;
    do
    {
      v33 = *(v31 + 32);
      v34 = v33 >= v30;
      v35 = v33 < v30;
      if (v34)
      {
        v32 = v31;
      }

      v31 = *(v31 + 8 * v35);
    }

    while (v31);
    if (v32 != &v125 && *(v32 + 4) <= v30)
    {
      if (*(v32 + 5) != &unk_27EE52D50)
      {
        operator new();
      }
    }

    else
    {
LABEL_45:
      realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage();
    }

    v36 = (*(&v127 + 1) + 24 * v30);
    v39 = *v36;
    v37 = v36 + 1;
    v38 = v39;
    if (v39 != v37)
    {
      do
      {
        v40 = v38[4];
        v41 = *(__p + 4 * v40) - 1;
        *(__p + 4 * v40) = v41;
        if (!v41)
        {
          std::deque<unsigned long>::push_back(v161, v38 + 4);
        }

        v42 = v38[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v38[2];
            v25 = *v43 == v38;
            v38 = v43;
          }

          while (!v25);
        }

        v38 = v43;
      }

      while (v43 != v37);
    }
  }

  std::deque<unsigned long>::~deque[abi:ne200100](v161);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v120 = 0u;
  v121 = 0u;
  v122 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>>>::~__hash_table(&v120);
  realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(&v123);
  v118 = 0;
  v110 = [MEMORY[0x277D546C0] materialSourceFromGraph:location configuration:0 error:&v118];
  v117 = v118;
  v109 = [objc_alloc(MEMORY[0x277D546B8]) initWithScalarFunctionConstants:0 vectorFunctionConstants:0];
  v44 = [MEMORY[0x277D546C0] materialFromSource:v110 functionConstantValues:? error:?];
  v45 = v117;

  v149 = v44;
  if (v45)
  {
    v47 = *(realityio::logObjects(v46) + 48);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [location name];
      v49 = [(realityio *)v45 localizedDescription];
      *v161 = 138412546;
      *&v161[4] = v48;
      *&v161[12] = 2112;
      *&v161[14] = v49;
      _os_log_impl(&dword_247485000, v47, OS_LOG_TYPE_DEFAULT, "Error attempting to validate '%@': %@", v161, 0x16u);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    lpsrc = [v110 uniforms];
    v50 = MEMORY[0x277CBEB38];
    v51 = [v110 textures];
    v111 = [v50 dictionaryWithDictionary:v51];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v52 = lpsrc;
    v53 = [v52 countByEnumeratingWithState:&v113 objects:v153 count:16];
    if (v53)
    {
      v54 = *v114;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v114 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v113 + 1) + 8 * j);
          if ([v56 type] == 13)
          {
            v57 = MEMORY[0x277CCACA8];
            (*(*v142 + 16))(v161);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v161);
            v59 = [v56 name];
            v60 = [v57 stringWithFormat:@"%s.inputs:%@", Text, v59];

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v161);
            v61 = [v56 name];
            [v111 setObject:v60 forKey:v61];
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v113 objects:v153 count:16];
      }

      while (v53);
    }

    v62 = v111;
    __p = 0u;
    v155 = 0u;
    LODWORD(v156) = 1065353216;
    v159 = 0;
    *v158 = 0;
    __s = 0;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v63 = v62;
    v64 = [v63 countByEnumeratingWithState:&v123 objects:v161 count:16];
    if (v64)
    {
      v65 = *v124;
      do
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v124 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v67 = *(*(&v123 + 1) + 8 * k);
          v68 = [v63 objectForKeyedSubscript:v67];
          v69 = v68;
          std::string::basic_string[abi:ne200100]<0>(&__str, [v68 UTF8String]);
          MEMORY[0x24C1A5D70](&v151, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v70 = v142;
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v150, &v151);
          v71 = realityio::mtlx::NeoDataSource::primFromPath(v70, &v150);
          v73 = v72;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v150);
          if ((*(*v71 + 176))(v71, v73))
          {
            NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v151);
            __str.__r_.__value_.__r.__words[0] = v71;
            LODWORD(__str.__r_.__value_.__r.__words[1]) = v73;
            v75 = *NameToken;
            __str.__r_.__value_.__r.__words[2] = v75;
            if ((v75 & 7) != 0)
            {
              v76 = (v75 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed) & 1) == 0)
              {
                __str.__r_.__value_.__r.__words[2] = v76;
              }
            }

            if ((*(*__str.__r_.__value_.__l.__data_ + 184))(__str.__r_.__value_.__r.__words[0], LODWORD(__str.__r_.__value_.__r.__words[1]), &__str.__r_.__value_.__r.__words[2]))
            {
              v120 = 0uLL;
              LOBYTE(v121) = 0;
              LOBYTE(v121) = (*(*__str.__r_.__value_.__l.__data_ + 32))(__str.__r_.__value_.__r.__words[0], LODWORD(__str.__r_.__value_.__r.__words[1]), &__str.__r_.__value_.__r.__words[2]);
              objc_storeStrong(&v120, v67);
              v77 = bswap64(0x9E3779B97F4A7C55 * (HIDWORD(v151.__r_.__value_.__r.__words[0]) + ((HIDWORD(v151.__r_.__value_.__r.__words[0]) + LODWORD(v151.__r_.__value_.__l.__data_) + (HIDWORD(v151.__r_.__value_.__r.__words[0]) + LODWORD(v151.__r_.__value_.__l.__data_)) * (HIDWORD(v151.__r_.__value_.__r.__words[0]) + LODWORD(v151.__r_.__value_.__l.__data_))) >> 1)));
              if (!*(&__p + 1))
              {
                goto LABEL_105;
              }

              v78 = vcnt_s8(*(&__p + 8));
              v78.i16[0] = vaddlv_u8(v78);
              if (v78.u32[0] > 1uLL)
              {
                v79 = v77;
                if (v77 >= *(&__p + 1))
                {
                  v79 = v77 % *(&__p + 1);
                }
              }

              else
              {
                v79 = v77 & (*(&__p + 1) - 1);
              }

              v80 = *(__p + 8 * v79);
              if (!v80 || (v81 = *v80) == 0)
              {
LABEL_105:
                operator new();
              }

              while (1)
              {
                v82 = v81[1];
                if (v82 == v77)
                {
                  if (v81[2] == v151.__r_.__value_.__r.__words[0])
                  {
                    objc_storeStrong(v81 + 3, v120);
                    realityio::WrappedRERef<REAsset *>::operator=(v81 + 4, &v120 + 1);
                    *(v81 + 40) = v121;
                    v83 = v159;
                    if (v159 >= __s)
                    {
                      v84 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v158, &v151);
                    }

                    else
                    {
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v159, &v151);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v83 + 1, v151.__r_.__value_.__r.__words + 1);
                      v84 = v83 + 8;
                    }

                    v159 = v84;
                    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v120 + 1);

                    break;
                  }
                }

                else
                {
                  if (v78.u32[0] > 1uLL)
                  {
                    if (v82 >= *(&__p + 1))
                    {
                      v82 %= *(&__p + 1);
                    }
                  }

                  else
                  {
                    v82 &= *(&__p + 1) - 1;
                  }

                  if (v82 != v79)
                  {
                    goto LABEL_105;
                  }
                }

                v81 = *v81;
                if (!v81)
                {
                  goto LABEL_105;
                }
              }
            }

            if ((__str.__r_.__value_.__s.__data_[16] & 7) != 0)
            {
              atomic_fetch_add_explicit((__str.__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v151);
        }

        v64 = [v63 countByEnumeratingWithState:&v123 objects:v161 count:16];
      }

      while (v64);
    }

    if (*(&v155 + 1))
    {
      (*(*a1 + 40))(&__str);
      v85 = v159;
      v86 = *v158;
      if (v159 != *v158)
      {
        v87 = 0;
        do
        {
          if (*(&__p + 1))
          {
            v88 = (v86 + 8 * v87);
            v89 = bswap64(0x9E3779B97F4A7C55 * (v88[1] + ((v88[1] + *v88 + (v88[1] + *v88) * (v88[1] + *v88)) >> 1)));
            v90 = vcnt_s8(*(&__p + 8));
            v90.i16[0] = vaddlv_u8(v90);
            if (v90.u32[0] > 1uLL)
            {
              v91 = v89;
              if (v89 >= *(&__p + 1))
              {
                v91 = v89 % *(&__p + 1);
              }
            }

            else
            {
              v91 = v89 & (*(&__p + 1) - 1);
            }

            v92 = *(__p + 8 * v91);
            if (v92)
            {
              v93 = *v92;
              if (v93)
              {
                v94 = *v88;
                do
                {
                  v95 = v93[1];
                  if (v95 == v89)
                  {
                    if (v93[2] == v94)
                    {
                      realityio::WrappedRERef<REAsset *>::operator=(v93 + 4, (__str.__r_.__value_.__r.__words[0] + 8 * v87));
                      v85 = v159;
                      v86 = *v158;
                      break;
                    }
                  }

                  else
                  {
                    if (v90.u32[0] > 1uLL)
                    {
                      if (v95 >= *(&__p + 1))
                      {
                        v95 %= *(&__p + 1);
                      }
                    }

                    else
                    {
                      v95 &= *(&__p + 1) - 1;
                    }

                    if (v95 != v91)
                    {
                      break;
                    }
                  }

                  v93 = *v93;
                }

                while (v93);
              }
            }
          }

          ++v87;
        }

        while (v87 < (v85 - v86) >> 3);
      }

      *&v120 = &__str;
      std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v120);
    }

    __str.__r_.__value_.__r.__words[0] = v158;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&__str);

    v112 = 0;
    v96 = [MEMORY[0x277D546C0] archiveSource:v110 error:&v112];
    v97 = v112;
    v45 = v97;
    *&v123 = v96;
    if (!v97)
    {
      *a3 = 0;
      a3[1] = 0;
      v152 = 0;
      operator new();
    }

    v98 = *(realityio::logObjects(v97) + 48);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = [location name];
      v100 = [(realityio *)v45 localizedDescription];
      *v161 = 138412546;
      *&v161[4] = v99;
      *&v161[12] = 2112;
      *&v161[14] = v100;
      _os_log_impl(&dword_247485000, v98, OS_LOG_TYPE_DEFAULT, "Error attempting to archive '%@': %@", v161, 0x16u);
    }

    *a3 = 0;
    a3[1] = 0;

    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>>>::~__hash_table(&__p);
  }

  v101 = 384;
  do
  {
    v102 = &buf[v101];
    if (buf[v101 - 1] < 0)
    {
      operator delete(*(v102 - 3));
    }

    if (*(v102 - 25) < 0)
    {
      operator delete(*(v102 - 6));
    }

    v101 -= 48;
  }

  while (v101);

LABEL_148:
  *buf = v146;
  std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2474F9EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a11 + 1);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a11);

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>>>::~__hash_table(&STACK[0x4B0]);
  std::array<std::pair<std::string,std::string>,8ul>::~array(&STACK[0x200]);

  STACK[0x200] = &STACK[0x3A0];
  std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);

  _Unwind_Resume(a1);
}

void realityio::anonymous namespace::logErrors(realityio::_anonymous_namespace_ *this, NSError *a2)
{
  v2 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v3 = this;
  v4 = [(realityio::_anonymous_namespace_ *)v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"NSMultipleUnderlyingErrorsKey"];
  v6 = [&stru_28595E8A0 stringByPaddingToLength:v2 withString:@" " startingAtIndex:0];
  v7 = v6;
  if (v5)
  {
    v8 = *(realityio::logObjects(v6) + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = [(realityio::_anonymous_namespace_ *)v3 localizedDescription];
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "%@%@ possibly due to the following:", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v9 = *(realityio::logObjects(v6) + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [(realityio::_anonymous_namespace_ *)v3 localizedDescription];
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_247485000, v9, OS_LOG_TYPE_ERROR, "%@%@", buf, 0x16u);
    }
  }
}

uint64_t *realityio::buildMaterialXAsset@<X0>(uint64_t *__return_ptr a1@<X8>, realityio *this@<X0>)
{
  v13[0] = &unk_285947978;
  v13[1] = this;
  v3 = (this + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*this + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v9, v4, v3);
  realityio::mtlx::USDDataSource::USDDataSource(&v6, &v9);
  realityio::buildMaterialXAsset(v13, &v6, a1);
  v6 = &unk_285942D88;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(v8, v8[1]);
  v14 = &v7;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v14);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  result = v10;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  return result;
}

void sub_2474FA8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  realityio::mtlx::USDDataSource::~USDDataSource(&a9);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::mtlx::MtlxActionPayload>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio4mtlx17MtlxActionPayloadE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void sub_2474FAAF0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(v4);

  v7 = *(v1 + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v1);
  MEMORY[0x24C1A91B0]();
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 64));
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = (a1 + 16);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 64));
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = (a1 + 16);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

realityio::mtlx::MtlxActionPayload *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::mtlx::MtlxActionPayload>(realityio::mtlx::MtlxActionPayload *result)
{
  if (result)
  {
    realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::mtlx::MtlxActionPayload::MtlxActionPayload(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>>>::unordered_map(a1 + 40, a2 + 40);
  std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::unordered_map(a1 + 80, a2 + 80);
  std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>>>::unordered_map(a1 + 120, a2 + 120);
  std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::unordered_map(a1 + 160, a2 + 160);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  v6 = *(a2 + 216);
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 216) = v6;
  *(a1 + 240) = 0;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 224), *(a2 + 224), (a2 + 232));
  std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>>>::unordered_map(a1 + 248, a2 + 248);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_2474FAF18(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v2, *(v1 + 232));

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(v1 + 160);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(v1 + 120);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(v1 + 80);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(v1 + 40);

  v4 = *(v1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord> const&>(a1, i + 4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord> const&>(void *a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord> const&>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2474FB284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>::~pair(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::InputRecord>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  realityio::mtlx::MtlxActionPayload::Connectable::Connectable(a1 + 8, a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t realityio::mtlx::MtlxActionPayload::Connectable::Connectable(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = *(a2 + 48);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a1 + 56), (a2 + 56));
  return a1;
}

{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = 0;
  if (*(a2 + 64))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v8, a1 + 56);
    v5 = *(a2 + 64);
    v6 = ~*(a2 + 64);
    *(a1 + 64) = v5;
    if ((v6 & 3) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 56, a1 + 56);
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a2 + 64) = 0;
    if (v9)
    {
      (*(v9 + 32))(v8);
    }
  }

  return a1;
}

void sub_2474FB498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(v3 + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v3);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474FB558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord> const&>(a1, i + 4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord> const&>(void *a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord> const&>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2474FB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>::~pair(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::MtlxActionPayload::OutputRecord>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  realityio::mtlx::MtlxActionPayload::Connectable::Connectable(a1 + 8, a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t **std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID> const&>(void *a1, void *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if ((result[2] ^ *a2) >= 8)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2474FBCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2474FBD40(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>::pair[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::TexcoordID::TexcoordID((a1 + 1), (a2 + 1));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>,void,0>(*a1, (__p + 16));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *(a2 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::TexcoordID>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(realityio::mtlx::MtlxActionPayload *this)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::TexcoordID>>>::~__hash_table(this + 248);
  std::__tree<std::string>::destroy(this + 224, *(this + 29));

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::OutputRecord>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::MtlxActionPayload::InputRecord>>>::~__hash_table(this + 40);

  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void pxrInternal__aapl__pxrReserved__::UsdObject::~UsdObject(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

void realityio::MaterialActionResult::~MaterialActionResult(id *this)
{
  v2 = this + 3;
  std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t realityio::foreachConnected(void *a1, uint64_t a2)
{
  v7 = a2;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  v10 = 0;
  (*(**a1 + 16))(&v5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v8, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v8);
}

uint64_t std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t realityio::anonymous namespace::ForeachConnectedWorker::traverse(uint64_t a1, uint64_t *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  realityio::mtlx::NeoDataSource::gatherSources(*a2, a2, &v14);
  v4 = v15;
  if (v15)
  {
    while (1)
    {
      if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((a1 + 8), v4 + 4))
      {
        if ((*(a1 + 48) & 1) == 0)
        {
          (*(**a2 + 16))(&v12);
          std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>((a1 + 8), &v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        }

        v5 = *a2;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, v4 + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, v4 + 5);
        v12 = realityio::mtlx::NeoDataSource::primFromPath(v5, &v10);
        v13 = v6;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
        v7 = *(*a1 + 24);
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        {
          break;
        }
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(&v14);
  return v8;
}

void sub_2474FC390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__function::__func<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0,std::allocator<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::~__func(void *a1)
{
  *a1 = &unk_285947868;
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0,std::allocator<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::~__func(void *a1)
{
  *a1 = &unk_285947868;
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x24C1A91B0);
}

void std::__function::__func<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0,std::allocator<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0,std::allocator<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0,std::allocator<realityio::foreachConnected(realityio::mtlx::NeoShadeMaterial const&,realityio::anonymous namespace::ForeachConnectedOptions,std::function<BOOL ()(realityio::mtlx::NeoPrim const&)>)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(void *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, "");
  return a1;
}

void sub_2474FC790(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::addNode(void *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  v7 = a1 + 1;
  if (a1 + 1 != v6)
  {
    return *(v6 + 64);
  }

  v8 = a1[12];
  a1[12] = v8 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v23, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24, a3 + 1);
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v8;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, &v21);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, &v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v23);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v24);
  v20 = v25;
  v9 = a1[1];
  if (!v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v15, v9 + 4))
      {
        break;
      }

      v9 = *v10;
      v7 = v10;
      if (!*v10)
      {
        goto LABEL_9;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v10 + 4, &v15))
    {
      break;
    }

    v7 = v10 + 1;
    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (!*v7)
  {
LABEL_9:
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  v11 = a1[4];
  if (!v11)
  {
LABEL_16:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = v11[4];
      if (v13 <= v8)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_16;
      }
    }

    if (v13 >= v8)
    {
      break;
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  std::vector<std::set<unsigned long>>::resize(a1 + 9, a1[12]);
  std::vector<std::set<unsigned long>>::resize(a1 + 6, a1[12]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
  return v8;
}

void sub_2474FCAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::~NodeStorage(va);
  _Unwind_Resume(a1);
}

void std::vector<std::set<unsigned long>>::resize(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::set<unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        std::__tree<unsigned int>::destroy(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

unint64_t *std::vector<std::set<unsigned long>>::__append(unint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 24 * a2;
      v11 = 24 * a2;
      v12 = (v5 + 8);
      do
      {
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v12 += 3;
        v11 -= 24;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>>(result, v9);
    }

    v13 = 24 * v6;
    v20 = 0;
    v21 = 24 * v6;
    *(&v22 + 1) = 0;
    v14 = 24 * a2;
    v15 = (24 * v6 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    *&v22 = v13 + 24 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::set<unsigned long>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_2474FCD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::set<unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    do
    {
      std::__tree<unsigned int>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::set<unsigned long>>,std::set<unsigned long>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<unsigned int>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::set<unsigned long>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::set<unsigned long>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::set<unsigned long>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<unsigned int>::destroy(i - 24, *(i - 16));
  }
}

uint64_t realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::~NodeStorage(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__function::__func<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0,std::allocator<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859478F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0,std::allocator<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  (*(**a2 + 16))(&v18);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6, &v18);
  if (v6 + 8 == v7)
  {
    v8 = &realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
  }

  else
  {
    v8 = (v7 + 64);
  }

  v9 = *v8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if (v9 == -1)
  {
    v10 = *(a1 + 8);
    (*(**a2 + 16))(&v18);
    (*(**a2 + 16))(&v17);
    v9 = realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::addNode(v10, &v18, &v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  }

  v11 = *(a1 + 8);
  (*(**a3 + 16))(&v18);
  v12 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v11, &v18);
  if (v11 + 8 == v12)
  {
    v13 = &realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
  }

  else
  {
    v13 = (v12 + 64);
  }

  v14 = *v13;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if (v14 != -1)
  {
    v15 = *(a1 + 8);
    v17 = v9;
    v18 = v14;
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(*(v15 + 48) + 24 * v14, &v17, &v17);
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(*(v15 + 72) + 24 * v17, &v18, &v18);
  }

  return 1;
}

void sub_2474FD254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0,std::allocator<realityio::anonymous namespace::createDependencyGraph(realityio::mtlx::NeoShadeMaterial const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&,realityio::mtlx::NeoPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(__p + 4);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((__p + 16));
  }

  operator delete(__p);
}

uint64_t std::array<std::pair<std::string,std::string>,8ul>::~array(uint64_t a1)
{
  v2 = 384;
  do
  {
    v3 = a1 + v2;
    if (*(a1 + v2 - 1) < 0)
    {
      operator delete(*(v3 - 24));
    }

    if (*(v3 - 25) < 0)
    {
      operator delete(*(v3 - 48));
    }

    v2 -= 48;
  }

  while (v2);
  return a1;
}

uint64_t realityio::ContextFromSession::queueForDeferredAssetLoad(uint64_t a1, uint64_t *a2)
{
  result = *(*(*(*(a1 + 8) + 40) + 16) + 40);
  if (result)
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad(result, a2);
  }

  return result;
}

void realityio::ContextFromSession::resolveImageAssets(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v4 = a2[1];
  v48 = 0;
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if (!((v6 >> 3) >> 61))
    {
      v58 = a3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a3, v6 >> 3);
    }

    std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
  }

  v7 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v48);
  v8 = realityio::TextureBuilder::kOutputName(v7);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v59.__r_.__value_.__r.__words[2] = *(v8 + 16);
    *&v59.__r_.__value_.__l.__data_ = v9;
  }

  v31 = a2;
  realityio::Inputs::getAccumulatedValues<realityio::TextureBuilder::TextureDataT const*>(*(a1 + 8), &v59, &v55);
  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  if (v55 == 1)
  {
    v10 = v56;
    v33 = v57;
    if (v56 != v57)
    {
      do
      {
        v34 = v10;
        v11 = *v10;
        v12 = *(v11 + 16);
        v13 = (v11 + 24);
        if (v12 != (v11 + 24))
        {
          do
          {
            MEMORY[0x24C1A5D70](v52, v12 + 4);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((**(a1 + 8) + 8));
            pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v48, v14, v52);
            pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(&v48, &v36);
            MEMORY[0x24C1A5100](v40, &v36);
            realityio::TextureBuilder::findSourceInput(v40, &v44);
            if ((v43 & 7) != 0)
            {
              atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
            if (v41)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41);
            }

            if ((v39 & 7) != 0)
            {
              atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
            if (v37)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
            }

            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v44))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v36, &v44);
              v15 = v54[0];
              if (!v54[0])
              {
                goto LABEL_28;
              }

              v16 = v54;
              while (1)
              {
                while (1)
                {
                  v17 = v15;
                  if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v36, v15 + 4))
                  {
                    break;
                  }

                  v15 = *v17;
                  v16 = v17;
                  if (!*v17)
                  {
                    goto LABEL_28;
                  }
                }

                if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v17 + 4, &v36))
                {
                  break;
                }

                v16 = (v17 + 1);
                v15 = v17[1];
                if (!v15)
                {
                  goto LABEL_28;
                }
              }

              if (!*v16)
              {
LABEL_28:
                operator new();
              }

              realityio::WrappedRERef<REAsset *>::operator=(*v16 + 5, v12 + 7);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
            }

            if ((v47 & 7) != 0)
            {
              atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
            if (v45)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45);
            }

            if ((v51 & 7) != 0)
            {
              atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
            if (v49)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v52);
            v18 = v12[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v12[2];
                v20 = *v19 == v12;
                v12 = v19;
              }

              while (!v20);
            }

            v12 = v19;
          }

          while (v19 != v13);
        }

        v10 = v34 + 1;
      }

      while (v34 + 1 != v33);
    }
  }

  v21 = *a2;
  if (a2[1] != *a2)
  {
    v22 = 0;
    do
    {
      v23 = v54[0];
      if (v54[0])
      {
        v24 = (v21 + 8 * v22);
        v25 = v54;
        do
        {
          v26 = v25;
          v27 = v23 + 4;
          v28 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v23 + 4, v24);
          if (v28)
          {
            v29 = 1;
          }

          else
          {
            v29 = 0;
          }

          if (!v28)
          {
            v25 = v23;
          }

          v23 = v23[v29];
        }

        while (v23);
        if (v25 != v54)
        {
          v30 = v28 ? v26 + 4 : v27;
          if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v24, v30) & 1) == 0)
          {
            realityio::WrappedRERef<REAsset *>::operator=((*a3 + 8 * v22), v25 + 5);
          }
        }
      }

      ++v22;
      v21 = *v31;
    }

    while (v22 < (v31[1] - *v31) >> 3);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>>>::destroy(v54[0]);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v55);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}