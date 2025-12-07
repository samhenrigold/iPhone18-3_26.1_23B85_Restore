@interface NFMSEIParser
+ (unsigned)parseResponseAPDU:(id)u;
@end

@implementation NFMSEIParser

+ (unsigned)parseResponseAPDU:(id)u
{
  v199 = *MEMORY[0x277D85DE8];
  uCopy = u;
  if (objc_msgSend_length(uCopy, v6, v7) >= 2)
  {
    v11 = objc_msgSend_length(uCopy, v8, v9);
    v13 = objc_msgSend_subdataWithRange_(uCopy, v12, 0, v11 - 2);
    v14 = uCopy;
    v17 = objc_msgSend_bytes(v14, v15, v16);
    v20 = *(v17 + objc_msgSend_length(uCopy, v18, v19) - 2);
    if ((*(v17 + objc_msgSend_length(uCopy, v21, v22) - 1) | (v20 << 8)) != 0x9000)
    {
      goto LABEL_70;
    }

    v23 = v13;
    v26 = objc_msgSend_bytes(v23, v24, v25);
    if (!objc_msgSend_length(v13, v27, v28))
    {
      v10 = 0;
      goto LABEL_101;
    }

    selfCopy = self;
    v180 = uCopy;
    v31 = 0;
    v32 = 0;
    v181 = v26 + 1;
    v178 = v26 - 1;
LABEL_6:
    if (objc_msgSend_length(v13, v29, v30) - v31 <= 1)
    {
      v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific >= 5)
      {
        goto LABEL_145;
      }

      v95 = off_27DA9DE50[specific];
      if (v95)
      {
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v99 = 45;
        if (isMetaClass)
        {
          v99 = 43;
        }

        v95(5, "%c[%{public}s %{public}s]:%i Minimum length requirement not met", v99, ClassName, Name, 50);
        v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      uCopy = v180;
      v100 = dispatch_get_specific(v93);
      v92 = NFSharedLogGetLogger(v100);
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      v101 = object_getClass(selfCopy);
      if (class_isMetaClass(v101))
      {
        v102 = 43;
      }

      else
      {
        v102 = 45;
      }

      v103 = object_getClassName(selfCopy);
      v104 = sel_getName(a2);
      *buf = 67109890;
      v188 = v102;
      v189 = 2082;
      v190 = v103;
      v191 = 2082;
      v192 = v104;
      v193 = 1024;
      v194 = 50;
      v105 = "%c[%{public}s %{public}s]:%i Minimum length requirement not met";
    }

    else
    {
      v35 = v26;
      v36 = v26 + v31;
      v37 = *(v26 + v31);
      v38 = *(v181 + v32);
      v39 = v32 + 2;
      if (objc_msgSend_length(v13, v33, v34) - v39 >= v38)
      {
        if (v37 > 17)
        {
          if (v37 <= 201)
          {
            if (v37 != 18)
            {
              if (v37 == 21)
              {
                if (v38 > 1)
                {
                  if ((*(v178 + v38 + v39) | (*(v35 + v32 + v38) << 8)) != 0x9000)
                  {
                    goto LABEL_72;
                  }

                  uCopy = v180;
                  if (*(v35 + v39) == 230)
                  {
                    v42 = *(v36 + 3);
                    v43 = v42 + v32 + 4;
                    if (objc_msgSend_length(v13, v40, v41) > v43)
                    {
                      v175 = v43;
                      v176 = a2;
                      v177 = v13;
                      v44 = objc_alloc(MEMORY[0x277CBEA90]);
                      v46 = objc_msgSend_initWithBytes_length_(v44, v45, v35 + v39, v42 + 2);
                      v48 = objc_msgSend_simpleTLVsWithData_(NFTLV, v47, v46);

                      v184 = 0u;
                      v185 = 0u;
                      v182 = 0u;
                      v183 = 0u;
                      v49 = v48;
                      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v182, v186, 16);
                      if (!v51)
                      {
                        goto LABEL_25;
                      }

                      v54 = v51;
                      v55 = *v183;
LABEL_18:
                      v56 = 0;
                      while (1)
                      {
                        if (*v183 != v55)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v57 = *(*(&v182 + 1) + 8 * v56);
                        v58 = objc_msgSend_value(v57, v52, v53);
                        v59 = v58;
                        v62 = objc_msgSend_bytes(v59, v60, v61);

                        v65 = objc_msgSend_value(v57, v63, v64);
                        v68 = objc_msgSend_length(v65, v66, v67);

                        if (!v62)
                        {
                          v10 = 34;
                          goto LABEL_76;
                        }

                        if (__rev16(*(v62 + v68 - 2)) != 36864)
                        {
                          break;
                        }

                        if (v54 == ++v56)
                        {
                          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v182, v186, 16);
                          if (!v54)
                          {
LABEL_25:

                            v69 = __rev16(*(v35 + v175));
                            v70 = v69 == 36864;
                            v26 = v35;
                            a2 = v176;
                            v13 = v177;
                            if (!v70)
                            {
                              goto LABEL_72;
                            }

LABEL_68:
                            v31 = v38 + v39;
                            v32 = v31;
                            if (objc_msgSend_length(v13, v40, v41) <= v31)
                            {
                              v10 = 0;
                              goto LABEL_73;
                            }

                            goto LABEL_6;
                          }

                          goto LABEL_18;
                        }
                      }

                      v10 = 16;
LABEL_76:
                      v92 = v49;

                      v13 = v177;
                      uCopy = v180;
LABEL_100:

                      goto LABEL_101;
                    }
                  }

LABEL_70:
                  v10 = 16;
                  goto LABEL_101;
                }

                v144 = kNFLOG_DISPATCH_SPECIFIC_KEY;
                v145 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                if (v145 < 5)
                {
                  v146 = off_27DA9DE50[v145];
                  if (v146)
                  {
                    v147 = object_getClass(selfCopy);
                    v148 = class_isMetaClass(v147);
                    v149 = object_getClassName(selfCopy);
                    v173 = sel_getName(a2);
                    v150 = 45;
                    if (v148)
                    {
                      v150 = 43;
                    }

                    v146(5, "%c[%{public}s %{public}s]:%i [Tag 0x%X] Unexpected data length: 0x%X", v150, v149, v173, 125, 21, v38);
                    v144 = kNFLOG_DISPATCH_SPECIFIC_KEY;
                  }

                  uCopy = v180;
                  v151 = dispatch_get_specific(v144);
                  v92 = NFSharedLogGetLogger(v151);
                  if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_99;
                  }

                  v152 = object_getClass(selfCopy);
                  if (class_isMetaClass(v152))
                  {
                    v153 = 43;
                  }

                  else
                  {
                    v153 = 45;
                  }

                  v154 = object_getClassName(selfCopy);
                  v155 = sel_getName(a2);
                  *buf = 67110402;
                  v188 = v153;
                  v189 = 2082;
                  v190 = v154;
                  v191 = 2082;
                  v192 = v155;
                  v193 = 1024;
                  v194 = 125;
                  v195 = 1024;
                  v196 = 21;
                  v197 = 1024;
                  v198 = v38;
                  v105 = "%c[%{public}s %{public}s]:%i [Tag 0x%X] Unexpected data length: 0x%X";
                  goto LABEL_133;
                }

                goto LABEL_145;
              }

LABEL_43:
              v74 = kNFLOG_DISPATCH_SPECIFIC_KEY;
              v75 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              if (v75 < 5)
              {
                v76 = off_27DA9DE50[v75];
                if (v76)
                {
                  v77 = object_getClass(selfCopy);
                  v78 = class_isMetaClass(v77);
                  v79 = object_getClassName(selfCopy);
                  v80 = sel_getName(a2);
                  v81 = 45;
                  if (v78)
                  {
                    v81 = 43;
                  }

                  v76(5, "%c[%{public}s %{public}s]:%i Unrecognized tag: 0x%X", v81, v79, v80, 169, *(v35 + v39));
                  v74 = kNFLOG_DISPATCH_SPECIFIC_KEY;
                }

                v82 = dispatch_get_specific(v74);
                v83 = NFSharedLogGetLogger(v82);
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = object_getClass(selfCopy);
                  if (class_isMetaClass(v84))
                  {
                    v85 = 43;
                  }

                  else
                  {
                    v85 = 45;
                  }

                  v86 = object_getClassName(selfCopy);
                  v87 = sel_getName(a2);
                  v88 = *(v35 + v39);
                  *buf = 67110146;
                  v188 = v85;
                  v189 = 2082;
                  v190 = v86;
                  v191 = 2082;
                  v192 = v87;
                  v193 = 1024;
                  v194 = 169;
                  v195 = 1024;
                  v196 = v88;
                  _os_log_impl(&dword_22EEC4000, v83, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unrecognized tag: 0x%X", buf, 0x28u);
                }

                v26 = v35;
                goto LABEL_68;
              }

              goto LABEL_145;
            }

            if ((v38 & 1) == 0)
            {
              v26 = v35;
              if (v39 < v38)
              {
                v89 = v181 + v39;
                v90 = v32 + 2;
                do
                {
                  if (__rev16(*(v89 - 1)) != 36864)
                  {
                    goto LABEL_72;
                  }

                  v89 += 2;
                  v90 += 2;
                }

                while (v90 < v38);
              }

              goto LABEL_68;
            }

            v133 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v134 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v134 >= 5)
            {
              goto LABEL_145;
            }

            v135 = off_27DA9DE50[v134];
            if (v135)
            {
              v136 = object_getClass(selfCopy);
              v137 = class_isMetaClass(v136);
              v167 = object_getClassName(selfCopy);
              v172 = sel_getName(a2);
              v138 = 45;
              if (v137)
              {
                v138 = 43;
              }

              v135(5, "%c[%{public}s %{public}s]:%i [Tag 0x12] Unexpected data length: 0x%X", v138, v167, v172, 97, v38);
              v133 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            uCopy = v180;
            v139 = dispatch_get_specific(v133);
            v92 = NFSharedLogGetLogger(v139);
            if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_99;
            }

            v140 = object_getClass(selfCopy);
            if (class_isMetaClass(v140))
            {
              v141 = 43;
            }

            else
            {
              v141 = 45;
            }

            v142 = object_getClassName(selfCopy);
            v143 = sel_getName(a2);
            *buf = 67110146;
            v188 = v141;
            v189 = 2082;
            v190 = v142;
            v191 = 2082;
            v192 = v143;
            v193 = 1024;
            v194 = 97;
            v195 = 1024;
            v196 = v38;
            v105 = "%c[%{public}s %{public}s]:%i [Tag 0x12] Unexpected data length: 0x%X";
LABEL_144:
            v118 = v92;
            v119 = 40;
            goto LABEL_98;
          }

          if (v37 != 202 && v37 != 205)
          {
            goto LABEL_43;
          }

          v26 = v35;
          if (v38 != 2)
          {
            goto LABEL_68;
          }

          v73 = *(v35 + v39);
LABEL_67:
          if ((*(v36 + 3) | (v73 << 8)) == 0x6985)
          {
            goto LABEL_72;
          }

          goto LABEL_68;
        }

        if (v37)
        {
          if (v37 != 16)
          {
            if (v37 != 17)
            {
              goto LABEL_43;
            }

            if ((v38 & 1) == 0)
            {
              v26 = v35;
              if (v39 < v38)
              {
                v71 = v181 + v39;
                v72 = v32 + 2;
                do
                {
                  if (__rev16(*(v71 - 1)) != 36864)
                  {
                    goto LABEL_72;
                  }

                  v71 += 2;
                  v72 += 2;
                }

                while (v72 < v38);
              }

              goto LABEL_68;
            }

            v156 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v157 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v157 >= 5)
            {
              goto LABEL_145;
            }

            v158 = off_27DA9DE50[v157];
            if (v158)
            {
              v159 = object_getClass(selfCopy);
              v160 = class_isMetaClass(v159);
              v168 = object_getClassName(selfCopy);
              v174 = sel_getName(a2);
              v161 = 45;
              if (v160)
              {
                v161 = 43;
              }

              v158(5, "%c[%{public}s %{public}s]:%i [Tag 0x11] Unexpected data length: 0x%X", v161, v168, v174, 85, v38);
              v156 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            uCopy = v180;
            v162 = dispatch_get_specific(v156);
            v92 = NFSharedLogGetLogger(v162);
            if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_99;
            }

            v163 = object_getClass(selfCopy);
            if (class_isMetaClass(v163))
            {
              v164 = 43;
            }

            else
            {
              v164 = 45;
            }

            v165 = object_getClassName(selfCopy);
            v166 = sel_getName(a2);
            *buf = 67110146;
            v188 = v164;
            v189 = 2082;
            v190 = v165;
            v191 = 2082;
            v192 = v166;
            v193 = 1024;
            v194 = 85;
            v195 = 1024;
            v196 = v38;
            v105 = "%c[%{public}s %{public}s]:%i [Tag 0x11] Unexpected data length: 0x%X";
            goto LABEL_144;
          }

          if (v38 == 2)
          {
            v26 = v35;
            v73 = *(v35 + v39);
            goto LABEL_67;
          }

          if (v38)
          {
            v26 = v35;
            v91 = *(v35 + v39);
            if (!*(v35 + v39) || v91 == 144 || v91 == 175)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          if (v38 <= 1)
          {
            v121 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v122 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v122 < 5)
            {
              v123 = off_27DA9DE50[v122];
              if (v123)
              {
                v124 = object_getClass(selfCopy);
                v125 = class_isMetaClass(v124);
                v126 = object_getClassName(selfCopy);
                v171 = sel_getName(a2);
                v127 = 45;
                if (v125)
                {
                  v127 = 43;
                }

                v123(5, "%c[%{public}s %{public}s]:%i [Tag 0x%X] Unexpected data length: 0x%X", v127, v126, v171, 64, 0, v38);
                v121 = kNFLOG_DISPATCH_SPECIFIC_KEY;
              }

              uCopy = v180;
              v128 = dispatch_get_specific(v121);
              v92 = NFSharedLogGetLogger(v128);
              if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_99;
              }

              v129 = object_getClass(selfCopy);
              if (class_isMetaClass(v129))
              {
                v130 = 43;
              }

              else
              {
                v130 = 45;
              }

              v131 = object_getClassName(selfCopy);
              v132 = sel_getName(a2);
              *buf = 67110402;
              v188 = v130;
              v189 = 2082;
              v190 = v131;
              v191 = 2082;
              v192 = v132;
              v193 = 1024;
              v194 = 64;
              v195 = 1024;
              v196 = 0;
              v197 = 1024;
              v198 = v38;
              v105 = "%c[%{public}s %{public}s]:%i [Tag 0x%X] Unexpected data length: 0x%X";
LABEL_133:
              v118 = v92;
              v119 = 46;
              goto LABEL_98;
            }

LABEL_145:
            __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
          }

          v26 = v35;
          if ((*(v36 + 3) | (*(v35 + v39) << 8)) == 0x9000)
          {
            goto LABEL_68;
          }
        }

LABEL_72:
        v10 = 16;
LABEL_73:
        uCopy = v180;
LABEL_101:

        goto LABEL_102;
      }

      v106 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v107 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v107 >= 5)
      {
        goto LABEL_145;
      }

      v108 = off_27DA9DE50[v107];
      if (v108)
      {
        v109 = object_getClass(selfCopy);
        v110 = class_isMetaClass(v109);
        v111 = object_getClassName(selfCopy);
        v170 = sel_getName(a2);
        v112 = 45;
        if (v110)
        {
          v112 = 43;
        }

        v108(5, "%c[%{public}s %{public}s]:%i Incorrect length field", v112, v111, v170, 58);
        v106 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      uCopy = v180;
      v113 = dispatch_get_specific(v106);
      v92 = NFSharedLogGetLogger(v113);
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      v114 = object_getClass(selfCopy);
      if (class_isMetaClass(v114))
      {
        v115 = 43;
      }

      else
      {
        v115 = 45;
      }

      v116 = object_getClassName(selfCopy);
      v117 = sel_getName(a2);
      *buf = 67109890;
      v188 = v115;
      v189 = 2082;
      v190 = v116;
      v191 = 2082;
      v192 = v117;
      v193 = 1024;
      v194 = 58;
      v105 = "%c[%{public}s %{public}s]:%i Incorrect length field";
    }

    v118 = v92;
    v119 = 34;
LABEL_98:
    _os_log_impl(&dword_22EEC4000, v118, OS_LOG_TYPE_DEFAULT, v105, buf, v119);
LABEL_99:
    v10 = 13;
    goto LABEL_100;
  }

  v10 = 13;
LABEL_102:

  return v10;
}

@end