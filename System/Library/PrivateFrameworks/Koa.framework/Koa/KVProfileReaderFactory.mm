@interface KVProfileReaderFactory
- (id)profileReaderForData:(id)data error:(id *)error;
@end

@implementation KVProfileReaderFactory

- (id)profileReaderForData:(id)data error:(id *)error
{
  v136[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(dataCopy, v6, v7, v8, v9, v10))
  {
    v11 = dataCopy;
    v17 = *(objc_msgSend_bytes(v11, v12, v13, v14, v15, v16) + 4);
    v18 = dataCopy;
    if (v17 == 844517451)
    {
      v24 = objc_msgSend_bytes(dataCopy, v19, v20, v21, v22, v23);
    }

    else
    {
      v24 = (objc_msgSend_bytes(dataCopy, v19, v20, v21, v22, v23) + 4);
    }

    v34 = *v24;
    v35 = dataCopy;
    v130 = objc_msgSend_bytes(v35, v36, v37, v38, v39, v40);
    v131 = objc_msgSend_length(dataCopy, v41, v42, v43, v44, v45);
    v132 = xmmword_2559D02B0;
    v133 = 0;
    v134 = 1;
    if (v131 >= 0x7FFFFFFF)
    {
      __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
    }

    v46 = (v24 + v34);
    if (sub_2559A7668(&v130, (v24 + v34)) && sub_2559A7720((v24 + v34), &v130, 4u))
    {
      if ((v47 = *v46, v48 = v46 - v47, v49 = *(v46 - v47), v49 < 5) || !*(v48 + 2) || ((v50 = (v46 + *(v48 + 2) + *(v46 + *(v48 + 2))), v51 = v50 - v130, ((v50 - v130) & 3) == 0) || (v134 & 1) == 0) && v131 >= 5 && v131 - 4 >= v51 && (v52 = *v50, v52 <= 0x7FFFFFFE) && ((v53 = v52 + 4, v55 = v131 >= v53, v54 = v131 - v53, v54 != 0 && v55) ? (v55 = v54 >= v51) : (v55 = 0), v55))
      {
        if (sub_2559A7720((v24 + v34), &v130, 6u))
        {
          if (v49 < 7)
          {
            goto LABEL_80;
          }

          if (!*(v48 + 3))
          {
            v58 = -v47;
            goto LABEL_32;
          }

          if (sub_2559A77F8(&v130, (v46 + *(v48 + 3) + *(v46 + *(v48 + 3))), 4uLL, 0))
          {
            v47 = *v46;
            if (*(v46 - v47) >= 7u)
            {
              v58 = -v47;
LABEL_32:
              v59 = *(v46 + v58 + 6);
              if (v59)
              {
                v60 = *(v46 + v59);
                v61 = (v46 + v59 + v60);
                if (*v61)
                {
                  v62 = 0;
                  v126 = v61 + 1;
                  v128 = v24 + v34 + v59 + v60 + 8;
                  v129 = v24 + v34 + v60 + v59 + 8;
                  v124 = (v46 + v59 + v60);
                  while (1)
                  {
                    v127 = v62;
                    v63 = &v126[v62];
                    v64 = *v63;
                    v65 = (v63 + v64);
                    if (!sub_2559A7668(&v130, (v63 + v64)) || !sub_2559A7720(v65, &v130, 4u))
                    {
                      goto LABEL_76;
                    }

                    v66 = *v65;
                    v67 = v65 - v66;
                    v68 = *(v65 - v66);
                    if (v68 >= 5)
                    {
                      if (*(v67 + 2))
                      {
                        v69 = (v65 + *(v67 + 2) + *(v65 + *(v67 + 2)));
                        v70 = v69 - v130;
                        if ((v69 - v130) & 3) != 0 && (v134)
                        {
                          goto LABEL_76;
                        }

                        if (v131 < 5)
                        {
                          goto LABEL_76;
                        }

                        if (v131 - 4 < v70)
                        {
                          goto LABEL_76;
                        }

                        v71 = *v69;
                        if (v71 > 0x7FFFFFFE)
                        {
                          goto LABEL_76;
                        }

                        v72 = v71 + 4;
                        v55 = v131 >= v72;
                        v73 = v131 - v72;
                        if (v73 == 0 || !v55 || v73 < v70)
                        {
                          goto LABEL_76;
                        }
                      }
                    }

                    if (!sub_2559A7720(v65, &v130, 6u))
                    {
                      goto LABEL_76;
                    }

                    if (v68 >= 7)
                    {
                      if (*(v67 + 3))
                      {
                        if (!sub_2559A77F8(&v130, (v65 + *(v67 + 3) + *(v65 + *(v67 + 3))), 4uLL, 0))
                        {
                          goto LABEL_76;
                        }

                        v75 = *v65;
                        if (*(v65 - v75) < 7u)
                        {
                          goto LABEL_74;
                        }

                        v76 = -v75;
                      }

                      else
                      {
                        v76 = -v66;
                      }

                      v77 = *(v65 + v76 + 6);
                      if (v77)
                      {
                        v78 = *(v65 + v77);
                        v125 = v65 + v77;
                        if (*(v65 + v77 + v78))
                        {
                          v79 = 0;
                          v80 = v129 + v77 + v64;
                          v81 = v128 + v64 + v77;
                          do
                          {
                            v82 = *(v80 + v78);
                            if (!sub_2559A7668(&v130, (v80 + v78 + v82)) || !sub_2559A7720((v80 + v78 + v82), &v130, 4u))
                            {
                              goto LABEL_76;
                            }

                            v83 = v82 - *(v80 + v78 + v82);
                            if (*(v80 + v78 + v83) >= 5u)
                            {
                              v84 = *(v80 + v78 + v83 + 4);
                              if (v84)
                              {
                                v85 = v82 + v84 + *(v80 + v78 + v82 + v84);
                                v86 = v78 + v81 + v85 - v130;
                                if (v86 & 3) != 0 && (v134)
                                {
                                  goto LABEL_76;
                                }

                                if (v131 < 5)
                                {
                                  goto LABEL_76;
                                }

                                if (v131 - 4 < v86)
                                {
                                  goto LABEL_76;
                                }

                                v87 = *(v80 + v78 + v85);
                                if (v87 > 0x7FFFFFFE)
                                {
                                  goto LABEL_76;
                                }

                                v88 = v87 + 4;
                                v55 = v131 >= v88;
                                v89 = v131 - v88;
                                if (v89 == 0 || !v55 || v89 < v86)
                                {
                                  goto LABEL_76;
                                }
                              }
                            }

                            LODWORD(v132) = v132 - 1;
                            ++v79;
                            v80 += 4;
                            v81 += 4;
                          }

                          while (v79 < *&v125[v78]);
                        }
                      }
                    }

LABEL_74:
                    LODWORD(v132) = v132 - 1;
                    v62 = v127 + 1;
                    v128 += 4;
                    v129 += 4;
                    if (v127 + 1 >= *v124)
                    {
                      LODWORD(v47) = *v46;
                      break;
                    }
                  }
                }
              }
            }

LABEL_80:
            LODWORD(v132) = v132 - 1;
            v96 = (v46 + *(v46 - v47 + 4));
            v97 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v56, v96 + *v96 + 4, *(v96 + *v96), 0, v57);
            v98 = [KVProfileInfo alloc];
            v102 = objc_msgSend_initWithBuffer_error_(v98, v99, v97, error, v100, v101);
            v108 = v102;
            if (v102)
            {
              if (objc_msgSend_datasetCount(v102, v103, v104, v105, v106, v107) && ((v109 = (v46 - *v46), *v109 < 7u) || !v109[3]))
              {
                v114 = dataCopy;
                v120 = *objc_msgSend_bytes(v114, v115, v116, v117, v118, v119);
                v121 = [KVStreamProfileReader alloc];
                v113 = objc_msgSend_initWithData_profileInfo_offset_(v121, v122, dataCopy, v108, (v120 + 4), v123);
              }

              else
              {
                v110 = [KVEmbeddedProfileReader alloc];
                v113 = objc_msgSend_initWithData_profile_profileInfo_(v110, v111, dataCopy, v46, v108, v112);
              }

              v33 = v113;
            }

            else
            {
              v33 = 0;
            }

            goto LABEL_77;
          }
        }
      }
    }

LABEL_76:
    v91 = [KVJSONProfileReader alloc];
    v33 = objc_msgSend_initWithData_error_(v91, v92, dataCopy, error, v93, v94);
    goto LABEL_77;
  }

  v25 = MEMORY[0x277CCA9B8];
  v135 = *MEMORY[0x277CCA450];
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"Unexpected profile data: %@", v8, v9, v10, dataCopy);
  v136[0] = v26;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v136, &v135, 1, v28);
  v32 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v30, @"com.apple.koa.profile", 2, v29, v31);
  if (error && v32)
  {
    v32 = v32;
    *error = v32;
  }

  v33 = 0;
LABEL_77:

  return v33;
}

@end