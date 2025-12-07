void *sub_2399CDE90(void *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = objc_msgSend_matrices(a4, a2, a3);
  v13 = v10 - objc_msgSend_batchStart(a1, v11, v12);
  v16 = objc_msgSend_matrices(a5, v14, v15);
  v19 = v16 - objc_msgSend_batchStart(a1, v17, v18);
  v22 = objc_msgSend_matrices(a6, v20, v21);
  v25 = objc_msgSend_batchStart(a1, v23, v24);
  if (v13 >= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = v13;
  }

  if (v28 >= v22 - v25)
  {
    v29 = v22 - v25;
  }

  else
  {
    v29 = v28;
  }

  v30 = objc_msgSend_batchSize(a1, v26, v27);
  if (v29 >= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v29;
  }

  v93 = v33;
  v34 = objc_msgSend_M(a1, v31, v32);
  v37 = objc_msgSend_N(a1, v35, v36);
  v40 = objc_msgSend_K(a1, v38, v39);
  v43 = objc_msgSend_batchStart(a1, v41, v42);
  v92 = a4;
  objc_msgSend_dataType(a4, v44, v45);
  v46 = MPSGetDataTypeName();
  objc_msgSend_dataType(a5, v47, v48);
  v49 = MPSGetDataTypeName();
  objc_msgSend_dataType(a6, v50, v51);
  v52 = MPSGetDataTypeName();
  result = sub_2399CE0D8(a1, v53, v54, v55, v56, v57, v58, v59, v34, v37, v40, v93, v43, v46, v49, v52);
  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v94 = a1[13];
    result = objc_msgSend_batchSize(a1, v61, v62);
    if (result)
    {
      v65 = objc_msgSend_matrices(a4, v63, v64);
      v68 = v65 - objc_msgSend_batchStart(a1, v66, v67);
      v71 = objc_msgSend_matrices(a5, v69, v70);
      v74 = v71 - objc_msgSend_batchStart(a1, v72, v73);
      v77 = objc_msgSend_matrices(a6, v75, v76);
      v80 = objc_msgSend_batchStart(a1, v78, v79);
      if (v68 >= v74)
      {
        v83 = v74;
      }

      else
      {
        v83 = v68;
      }

      if (v83 >= v77 - v80)
      {
        v84 = v77 - v80;
      }

      else
      {
        v84 = v83;
      }

      v85 = objc_msgSend_batchSize(a1, v81, v82);
      if (v84 >= v85)
      {
        v88 = v85;
      }

      else
      {
        v88 = v84;
      }

      v89 = objc_msgSend_batchStart(a1, v86, v87);

      return v94(a1, a2, a3, v92, a5, a6, v89, v88);
    }
  }

  return result;
}

uint64_t sub_2399CE0D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], "Internal Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size=%lu, Batch Start Index: %lu, A Datatype: %s, B Datatype: %s C Datatype: %s\n", va);
    }
  }

  return result;
}

id sub_2399CE398(id *a1, char *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v151[3] = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_matrices(a4, a2, a3);
  v15 = objc_msgSend_matrixBytes(a4, v13, v14);
  v134 = objc_msgSend_matrices(a5, v16, v17);
  v18 = a5;
  v21 = objc_msgSend_matrixBytes(a5, v19, v20);
  v24 = objc_msgSend_matrices(a6, v22, v23);
  v25 = a6;
  v28 = objc_msgSend_matrixBytes(a6, v26, v27);
  if ((objc_msgSend_dataType(a4, v29, v30) & 0x10000000) != 0 && (objc_msgSend_dataType(v18, v31, v32) & 0x10000000) != 0)
  {
    v36 = objc_msgSend_dataType(v25, v33, v34);
    if ((v15 * v12) >= 0x10 && (v21 * v134) >= 0x10 && (v28 * v24) >= 0x10 && (v36 & 0x10000000) != 0)
    {
      v39 = a1;
      result = objc_msgSend_M(a1, v37, v38);
      if (!result)
      {
        return result;
      }

      result = objc_msgSend_N(a1, v40, v41);
      if (!result)
      {
        return result;
      }

      if (objc_msgSend_transA(a1, v42, v43))
      {
        v46 = a3;
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v44, v45);
          v138 = v149;
        }

        else
        {
          v138 = 0;
        }
      }

      else
      {
        v46 = a3;
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v44, v45);
          v138 = v148;
        }

        else
        {
          v138 = 0;
          v148 = 0;
          v149 = 0;
          v150 = 0;
        }
      }

      if (objc_msgSend_transA(a1, v44, v45))
      {
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v47, v48);
          v136 = v148;
          if (objc_msgSend_transB(a1, v49, v50))
          {
LABEL_29:
            if (a1)
            {
              objc_msgSend_rightMatrixOrigin(a1, v51, v52);
              v141 = v149;
              if (!objc_msgSend_transB(a1, v59, v60))
              {
                goto LABEL_31;
              }

              goto LABEL_34;
            }

LABEL_33:
            v141 = 0;
            if (!objc_msgSend_transB(a1, v51, v52))
            {
LABEL_31:
              if (a1)
              {
                objc_msgSend_rightMatrixOrigin(a1, v57, v58);
                v61 = v149;
LABEL_37:
                v62 = objc_msgSend_K(a1, v57, v58);
                v67 = objc_msgSend_M(a1, v63, v64);
                if (v39)
                {
                  objc_msgSend_leftMatrixOrigin(v39, v65, v66);
                  v68 = v150;
                  v71 = objc_msgSend_matrices(a4, v69, v70);
                  objc_msgSend_leftMatrixOrigin(v39, v72, v73);
                  v76 = v147;
                }

                else
                {
                  v149 = 0;
                  v150 = 0;
                  v71 = objc_msgSend_matrices(a4, v65, v66);
                  v76 = 0;
                  v68 = 0;
                  v146 = 0;
                  v147 = 0;
                }

                v77 = v71 - v76;
                v78 = objc_msgSend_transA(v39, v74, v75);
                v139 = sub_2399D4128(a4, v136, v62, v138, v67, v68, v77, v46, v78);
                v81 = objc_msgSend_N(v39, v79, v80);
                v86 = objc_msgSend_K(v39, v82, v83);
                if (v39)
                {
                  objc_msgSend_rightMatrixOrigin(v39, v84, v85);
                  v87 = v150;
                  v90 = objc_msgSend_matrices(v18, v88, v89);
                  objc_msgSend_rightMatrixOrigin(v39, v91, v92);
                  v95 = v147;
                }

                else
                {
                  v149 = 0;
                  v90 = objc_msgSend_matrices(v18, v84, v85);
                  v95 = 0;
                  v87 = 0;
                  v146 = 0;
                }

                v96 = v90 - v95;
                v97 = objc_msgSend_transB(v39, v93, v94);
                v142 = sub_2399D4128(v18, v61, v81, v141, v86, v87, v96, v46, v97);
                if (v39)
                {
                  objc_msgSend_resultMatrixOrigin(v39, v98, v99);
                  v100 = v149;
                  v103 = objc_msgSend_N(v39, v101, v102);
                  objc_msgSend_resultMatrixOrigin(v39, v104, v105);
                  v106 = v146;
                  v109 = objc_msgSend_M(v39, v107, v108);
                  objc_msgSend_resultMatrixOrigin(v39, v110, v111);
                  v112 = v145;
                  v115 = objc_msgSend_matrices(v25, v113, v114);
                  objc_msgSend_resultMatrixOrigin(v39, v116, v117);
                  v118 = v144;
                }

                else
                {
                  v103 = objc_msgSend_N(0, v98, v99);
                  v109 = objc_msgSend_M(0, v119, v120);
                  v115 = objc_msgSend_matrices(v25, v121, v122);
                  v118 = 0;
                  v112 = 0;
                  v100 = 0;
                  v106 = 0;
                }

                v123 = sub_2399D4128(v25, v100, v103, v106, v109, v112, v115 - v118, v46, 0);
                v151[0] = v139;
                v151[1] = v142;
                v151[2] = v123;
                v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v124, v151, 3);
                objc_msgSend_beta(v39, v126, v127);
                objc_msgSend_setBeta_(v39[14], v128, v129);
                objc_msgSend_alpha(v39, v130, v131);
                objc_msgSend_setAlpha_(v39[14], v132, v133);
                return [v39[14] getUid("encodeToCommandEncoder:a2 commandBuffer:v46 sourceArrays:v125 resultState:0 destinationArray:v123 kernelDAGObject:0")];
              }

              goto LABEL_36;
            }

LABEL_34:
            if (a1)
            {
              objc_msgSend_rightMatrixOrigin(a1, v57, v58);
              v61 = v148;
              goto LABEL_37;
            }

LABEL_36:
            v61 = 0;
            goto LABEL_37;
          }

LABEL_25:
          if (a1)
          {
            objc_msgSend_rightMatrixOrigin(a1, v51, v52);
            v141 = v148;
            if (!objc_msgSend_transB(a1, v55, v56))
            {
              goto LABEL_31;
            }

            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else if (a1)
      {
        objc_msgSend_leftMatrixOrigin(a1, v47, v48);
        v136 = v149;
        if (objc_msgSend_transB(a1, v53, v54))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      v136 = 0;
      if (objc_msgSend_transB(a1, v47, v48))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  return sub_2399CE960(a1, a2, a3, a4, v18, v25, a7, a8);
}

void *sub_2399CE960(char *a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, unint64_t a8)
{
  v12 = a1;
  if (objc_msgSend_M(a1, a2, a3) >= 8 && objc_msgSend_N(v12, v13, v14) >= 8)
  {
    v85 = objc_msgSend_K(v12, v13, v14);
    if (a8 != 1 || v85 > 7)
    {
      goto LABEL_4;
    }

LABEL_18:

    return sub_2399D1A44(v12, a2, a3, a4, a5, a6, a7, 1uLL);
  }

  if (a8 == 1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v877 = a8;
  v878 = a2;
  v881 = a5;
  v882 = a4;
  if (objc_msgSend_dataType(a4, v13, v14) == 268435488)
  {
    if (a8 >= 2 && objc_msgSend_dataType(a5, v15, v16) == 268435488)
    {
      v17 = *&v12[*MEMORY[0x277CD7370]];
      result = objc_msgSend_M(v12, v15, v16);
      if (!result)
      {
        return result;
      }

      result = objc_msgSend_N(v12, v19, v20);
      if (!result)
      {
        return result;
      }

      objc_msgSend_leftMatrixOrigin(v12, v21, v22);
      v828 = v895;
      v812 = objc_msgSend_dataType(v882, v23, v24);
      objc_msgSend_leftMatrixOrigin(v12, v25, v26);
      v861 = v891.i64[0];
      v855 = objc_msgSend_rowBytes(v882, v27, v28);
      objc_msgSend_rightMatrixOrigin(v12, v29, v30);
      v823 = v895;
      v806 = objc_msgSend_dataType(a5, v31, v32);
      objc_msgSend_rightMatrixOrigin(v12, v33, v34);
      v850 = v891.i64[0];
      v844 = objc_msgSend_rowBytes(a5, v35, v36);
      objc_msgSend_resultMatrixOrigin(v12, v37, v38);
      v818 = v895;
      v41 = a5;
      v42 = objc_msgSend_dataType(a6, v39, v40);
      objc_msgSend_resultMatrixOrigin(v12, v43, v44);
      v839 = v891.i64[0];
      v834 = objc_msgSend_rowBytes(a6, v45, v46);
      v47 = *MEMORY[0x277CD73A8];
      v866 = *&v41[v47];
      v871 = *&v882[v47];
      v876 = *&a6[v47];
      objc_msgSend_transA(v12, v48, v49);
      objc_msgSend_transB(v12, v50, v51);
      objc_msgSend_dataType(v41, v52, v53);
      objc_msgSend_dataType(v41, v54, v55);
      objc_msgSend_dataType(v41, v56, v57);
      objc_msgSend_dataType(v41, v58, v59);
      objc_msgSend_dataType(v882, v60, v61);
      objc_msgSend_dataType(v882, v62, v63);
      objc_msgSend_dataType(v882, v64, v65);
      objc_msgSend_dataType(v882, v66, v67);
      objc_msgSend_dataType(a6, v68, v69);
      objc_msgSend_dataType(a6, v70, v71);
      if (objc_msgSend_M(v12, v72, v73) > 0x20 || objc_msgSend_N(v12, v74, v75) <= 0x1FF)
      {
        if (objc_msgSend_N(v12, v74, v75) > 0x20 || objc_msgSend_M(v12, v74, v75) < 0x200)
        {
LABEL_246:
          if (qword_280D74AC8 != -1)
          {
            dispatch_once(&qword_280D74AC8, &unk_284C9E178);
          }

          objc_msgSend_alpha(v12, v74, v75);
          if (v675 == 1.0)
          {
            objc_msgSend_beta(v12, v673, v674);
          }

          v817 = v812 >> 3;
          v811 = v806 >> 3;
          v805 = v42 >> 3;
          if (objc_msgSend_M(v12, v673, v674) > 0x7FFE)
          {
            v678 = v17;
          }

          else
          {
            v678 = v17;
            if (objc_msgSend_N(v12, v676, v677) <= 0x7FFE)
            {
              objc_msgSend_K(v12, v676, v677);
            }
          }

          if (!(objc_msgSend_M(v12, v676, v677) % word_27DF856EA) && !(objc_msgSend_N(v12, v679, v680) % word_27DF856E8))
          {
            objc_msgSend_K(v12, v681, v682);
          }

          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v685 = objc_msgSend_N(v12, v683, v684, 0, 0, 0, 0, 0);
          v893 = v685;
          v688 = objc_msgSend_M(v12, v686, v687);
          v894 = v688;
          LODWORD(v895) = objc_msgSend_K(v12, v689, v690);
          HIDWORD(v895) = a8;
          v896 = objc_msgSend_rowBytes(v881, v691, v692);
          v897 = objc_msgSend_rowBytes(v882, v693, v694);
          v898 = objc_msgSend_rowBytes(a6, v695, v696);
          v899 = objc_msgSend_rowBytes(a6, v697, v698);
          v900 = objc_msgSend_matrixBytes(v881, v699, v700);
          v901 = objc_msgSend_matrixBytes(v882, v701, v702);
          v902 = objc_msgSend_matrixBytes(a6, v703, v704);
          v903 = objc_msgSend_matrixBytes(a6, v705, v706);
          objc_msgSend_alpha(v12, v707, v708);
          *&v709 = v709;
          v904 = LODWORD(v709);
          objc_msgSend_beta(v12, v710, v711);
          *&v712 = v712;
          v905 = LODWORD(v712);
          v906 = 0u;
          memset(v907, 0, sizeof(v907));
          v713 = *(v678 + 32);
          v891 = 0u;
          v892 = 0u;
          (*(*v713 + 24))(&v891);
          v716 = (((HIWORD(dword_27DF856EC) - 128) >> 7) | ((HIWORD(dword_27DF856EC) - 128) << 9));
          if (v716 > 2)
          {
            v718 = v818;
            v717 = v823;
            v720 = v811;
            v719 = v817;
            v721 = v805;
            if (v716 == 3)
            {
              v891 = xmmword_2399EC740;
              v723 = 32;
              v722 = 16;
              goto LABEL_267;
            }

            if (v716 == 7)
            {
              v722 = 32;
              v891 = vdupq_n_s64(0x20uLL);
              v723 = 32;
              goto LABEL_267;
            }
          }

          else
          {
            v718 = v818;
            v717 = v823;
            v720 = v811;
            v719 = v817;
            v721 = v805;
            if (!(((HIWORD(dword_27DF856EC) - 128) >> 7) | ((HIWORD(dword_27DF856EC) - 128) << 9)))
            {
              v891 = xmmword_2399EC750;
              v723 = 16;
              v722 = 8;
              goto LABEL_267;
            }

            if (v716 == 1)
            {
              v722 = 16;
              v891 = vdupq_n_s64(0x10uLL);
              v723 = 16;
LABEL_267:
              v724 = v828 * v719;
              v725 = v717 * v720;
              v726 = v718 * v721;
              *&v892 = word_27DF856E8 / v723;
              *(&v892 + 1) = word_27DF856EA / v722;
              v727 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v714, v715);
              v730 = v727 / v723;
              if (v722 < v727 / v723)
              {
                v730 = v722;
              }

              if (v723 * v722 <= v727)
              {
                v731 = 1;
              }

              else
              {
                v722 = v730;
                v731 = v730 * v723 <= v727;
              }

              v833 = v731;
              v732 = v892 * v723;
              v733 = v892 * v723 + v685 - 1;
              v734 = *(&v892 + 1) * v722;
              v735 = *(&v892 + 1) * v722 + v688 - 1;
              if (objc_msgSend_dataType(v881, v728, v729) == 268435472)
              {
                v738 = 1;
              }

              else
              {
                v739 = objc_msgSend_dataType(v881, v736, v737);
                v738 = 1;
                if (v739 != 536870928)
                {
                  v738 = 2;
                }
              }

              v740 = v724 + v855 * v861;
              v741 = v725 + v844 * v850;
              v742 = v726 + v834 * v839;
              v860 = (v723 << v738) * dword_27DF856EC * v892;
              v743 = v735 / v734;
              if (objc_msgSend_dataType(v882, v736, v737) == 268435472)
              {
                v746 = 1;
              }

              else
              {
                v747 = objc_msgSend_dataType(v882, v744, v745);
                v746 = 1;
                if (v747 != 536870928)
                {
                  v746 = 2;
                }
              }

              v748 = (v722 << v746) * dword_27DF856EC * *(&v892 + 1);
              objc_msgSend_setComputePipelineState_(v878, v744, PipelineStateForMPSKey);
              v751 = objc_msgSend_data(v881, v749, v750);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v752, v751, v741 + v866, 0);
              v755 = objc_msgSend_data(v882, v753, v754);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v756, v755, v740 + v871, 1);
              v759 = objc_msgSend_data(a6, v757, v758);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v760, v759, v742 + v876, 2);
              objc_msgSend_setBytes_length_atIndex_(v878, v761, &v893, 100, 3);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v762, v860, 0);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v763, v748, 1);
              v888 = v733 / v732;
              v889 = v743;
              v890 = v877;
              v885 = v723;
              v886 = v722;
              v887 = v833;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v878, v764, &v888, &v885);
              return MPSLibrary::ReleaseComputeState();
            }
          }

          v722 = v891.u64[1];
          v723 = v891.i64[0];
          goto LABEL_267;
        }

        v76 = 128;
        v77 = 32;
      }

      else
      {
        v76 = 32;
        v77 = 128;
      }

      word_27DF856E8 = v77;
      word_27DF856EA = v76;
      dword_27DF856EC = 16777232;
      goto LABEL_246;
    }

    result = objc_msgSend_dataType(a5, v15, v16);
    if (result == 268435472)
    {
      if (!a8)
      {
        return result;
      }

      v228 = 0;
      v229 = MEMORY[0x277CD7370];
      v230 = 1;
      v765 = v12;
      while (1)
      {
        v253 = *&v12[*v229];
        result = objc_msgSend_M(v12, v226, v227);
        if (result)
        {
          result = objc_msgSend_N(v12, v226, v227);
          if (result)
          {
            break;
          }
        }

LABEL_75:
        v228 = v230++;
        if (v228 >= a8)
        {
          return result;
        }
      }

      v868 = v230;
      objc_msgSend_leftMatrixOrigin(v12, v226, v227);
      v857 = v895;
      v852 = objc_msgSend_dataType(v882, v254, v255);
      objc_msgSend_leftMatrixOrigin(v12, v256, v257);
      v847 = v891.i64[0];
      v836 = objc_msgSend_rowBytes(v882, v258, v259);
      v830 = objc_msgSend_matrixBytes(v882, v260, v261);
      objc_msgSend_rightMatrixOrigin(v12, v262, v263);
      v825 = v895;
      v814 = objc_msgSend_dataType(a5, v264, v265);
      objc_msgSend_rightMatrixOrigin(v12, v266, v267);
      v808 = v891.i64[0];
      v802 = objc_msgSend_rowBytes(a5, v268, v269);
      v798 = objc_msgSend_matrixBytes(a5, v270, v271);
      objc_msgSend_resultMatrixOrigin(v12, v272, v273);
      v794 = v895;
      v790 = objc_msgSend_dataType(a6, v274, v275);
      objc_msgSend_resultMatrixOrigin(v12, v276, v277);
      v786 = v891.i64[0];
      v782 = objc_msgSend_rowBytes(a6, v278, v279);
      v778 = objc_msgSend_matrixBytes(a6, v280, v281);
      v282 = *MEMORY[0x277CD73A8];
      v841 = *&v882[v282];
      v820 = *&a5[v282];
      v863 = *&a6[v282];
      objc_msgSend_transA(v12, v283, v284);
      objc_msgSend_transB(v12, v285, v286);
      objc_msgSend_dataType(a5, v287, v288);
      objc_msgSend_dataType(a5, v289, v290);
      objc_msgSend_dataType(a5, v291, v292);
      objc_msgSend_dataType(a5, v293, v294);
      objc_msgSend_dataType(v882, v295, v296);
      objc_msgSend_dataType(v882, v297, v298);
      objc_msgSend_dataType(v882, v299, v300);
      objc_msgSend_dataType(v882, v301, v302);
      objc_msgSend_dataType(a6, v303, v304);
      objc_msgSend_dataType(a6, v305, v306);
      if (objc_msgSend_M(v12, v307, v308) > 0x20 || objc_msgSend_N(v12, v309, v310) <= 0x1FF)
      {
        v313 = v253;
        if (objc_msgSend_N(v12, v309, v310) > 0x20 || objc_msgSend_M(v12, v309, v310) < 0x200)
        {
LABEL_85:
          if (qword_280D74AD0 != -1)
          {
            dispatch_once(&qword_280D74AD0, &unk_284CAA6D8);
          }

          objc_msgSend_alpha(v12, v309, v310);
          if (v316 == 1.0)
          {
            objc_msgSend_beta(v12, v314, v315);
          }

          if (objc_msgSend_M(v12, v314, v315) <= 0x7FFE && objc_msgSend_N(v12, v317, v318) <= 0x7FFE)
          {
            objc_msgSend_K(v12, v317, v318);
          }

          if (!(objc_msgSend_M(v12, v317, v318) % word_27DF856F2) && !(objc_msgSend_N(v12, v319, v320) % word_27DF856F0))
          {
            objc_msgSend_K(v12, v321, v322);
          }

          MPSLibrary::CreateUberShaderKey();
          v873 = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v325 = objc_msgSend_N(v12, v323, v324, 0, 0, 0, 0, 0);
          v893 = v325;
          v774 = objc_msgSend_M(v12, v326, v327);
          v894 = v774;
          LODWORD(v895) = objc_msgSend_K(v12, v328, v329);
          HIDWORD(v895) = 1;
          v896 = objc_msgSend_rowBytes(v881, v330, v331);
          v897 = objc_msgSend_rowBytes(v882, v332, v333);
          v898 = objc_msgSend_rowBytes(a6, v334, v335);
          v899 = objc_msgSend_rowBytes(a6, v336, v337);
          v900 = objc_msgSend_matrixBytes(v881, v338, v339);
          v901 = objc_msgSend_matrixBytes(v882, v340, v341);
          v902 = objc_msgSend_matrixBytes(a6, v342, v343);
          v903 = objc_msgSend_matrixBytes(a6, v344, v345);
          objc_msgSend_alpha(v12, v346, v347);
          *&v348 = v348;
          v904 = LODWORD(v348);
          objc_msgSend_beta(v12, v349, v350);
          *&v351 = v351;
          v905 = LODWORD(v351);
          v906 = 0u;
          memset(v907, 0, sizeof(v907));
          v352 = *(v313 + 32);
          v891 = 0u;
          v892 = 0u;
          (*(*v352 + 24))(&v891);
          v355 = (((HIWORD(dword_27DF856F4) - 128) >> 7) | ((HIWORD(dword_27DF856F4) - 128) << 9));
          if (v355 <= 2)
          {
            if (!(((HIWORD(dword_27DF856F4) - 128) >> 7) | ((HIWORD(dword_27DF856F4) - 128) << 9)))
            {
              v891 = xmmword_2399EC750;
              v356 = 8;
              v357 = 16;
              goto LABEL_106;
            }

            if (v355 == 1)
            {
              v891 = vdupq_n_s64(0x10uLL);
              v356 = 16;
              v357 = 16;
LABEL_106:
              *&v892 = word_27DF856F0 / v357;
              *(&v892 + 1) = word_27DF856F2 / v356;
              v358 = objc_msgSend_maxTotalThreadsPerThreadgroup(v873, v353, v354);
              v361 = v357 * v356;
              v362 = v358 / v357;
              if (v356 < v358 / v357)
              {
                v362 = v356;
              }

              if (v361 > v358)
              {
                v363 = v362;
              }

              else
              {
                v363 = v356;
              }

              v364 = v361 <= v358 || v362 * v357 <= v358;
              v365 = v892;
              v770 = v364;
              if (objc_msgSend_dataType(v881, v359, v360) == 268435472)
              {
                v368 = 1;
              }

              else if (objc_msgSend_dataType(v881, v366, v367) == 536870928)
              {
                v368 = 1;
              }

              else
              {
                v368 = 2;
              }

              v369 = dword_27DF856F4;
              v370 = v892;
              if (objc_msgSend_dataType(v882, v366, v367) == 268435472)
              {
                v231 = 1;
              }

              else
              {
                v373 = objc_msgSend_dataType(v882, v371, v372);
                v231 = 1;
                if (v373 != 536870928)
                {
                  v231 = 2;
                }
              }

              v232 = v228 + a7;
              v233 = v857 * (v852 >> 3) + v836 * v847 + v830 * (v228 + a7);
              v234 = v825 * (v814 >> 3) + v802 * v808 + v798 * v232;
              v846 = v794 * (v790 >> 3) + v782 * v786 + v778 * v232;
              v235 = (v357 << v368) * v369 * v370;
              v236 = (v363 << v231) * dword_27DF856F4 * *(&v892 + 1);
              objc_msgSend_setComputePipelineState_(v878, v371, v873);
              a5 = v881;
              v239 = objc_msgSend_data(v881, v237, v238);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v240, v239, v234 + v820, 0);
              v243 = objc_msgSend_data(v882, v241, v242);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v244, v243, v233 + v841, 1);
              v247 = objc_msgSend_data(a6, v245, v246);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v248, v247, v846 + v863, 2);
              objc_msgSend_setBytes_length_atIndex_(v878, v249, &v893, 100, 3);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v250, v235, 0);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v251, v236, 1);
              v888 = (v365 * v357 + v325 - 1) / (v365 * v357);
              v889 = (*(&v365 + 1) * v363 + v774 - 1) / (*(&v365 + 1) * v363);
              v890 = 1;
              v885 = v357;
              v886 = v363;
              v887 = v770;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v878, v252, &v888, &v885);
              result = MPSLibrary::ReleaseComputeState();
              a8 = v877;
              v229 = MEMORY[0x277CD7370];
              v230 = v868;
              v12 = v765;
              goto LABEL_75;
            }

LABEL_102:
            v356 = v891.u64[1];
            v357 = v891.i64[0];
            goto LABEL_106;
          }

          if (v355 == 3)
          {
            v891 = xmmword_2399EC740;
            v356 = 16;
          }

          else
          {
            if (v355 != 7)
            {
              goto LABEL_102;
            }

            v891 = vdupq_n_s64(0x20uLL);
            v356 = 32;
          }

          v357 = 32;
          goto LABEL_106;
        }

        v311 = 128;
        v312 = 32;
      }

      else
      {
        v311 = 32;
        v312 = 128;
        v313 = v253;
      }

      word_27DF856F0 = v312;
      word_27DF856F2 = v311;
      dword_27DF856F4 = 16777232;
      goto LABEL_85;
    }

    if (!a8)
    {
      return result;
    }

    v380 = 0;
    v381 = MEMORY[0x277CD7370];
    v382 = 1;
    while (1)
    {
      v402 = *&v12[*v381];
      result = objc_msgSend_M(v12, v226, v227);
      if (result)
      {
        result = objc_msgSend_N(v12, v226, v227);
        if (result)
        {
          break;
        }
      }

LABEL_133:
      v380 = v382++;
      if (v380 >= a8)
      {
        return result;
      }
    }

    v771 = v380;
    v869 = v382;
    objc_msgSend_leftMatrixOrigin(v12, v226, v227);
    v858 = v895;
    v853 = objc_msgSend_dataType(v882, v403, v404);
    objc_msgSend_leftMatrixOrigin(v12, v405, v406);
    v848 = v891.i64[0];
    v837 = objc_msgSend_rowBytes(v882, v407, v408);
    v831 = objc_msgSend_matrixBytes(v882, v409, v410);
    objc_msgSend_rightMatrixOrigin(v12, v411, v412);
    v826 = v895;
    v815 = objc_msgSend_dataType(a5, v413, v414);
    objc_msgSend_rightMatrixOrigin(v12, v415, v416);
    v809 = v891.i64[0];
    v803 = objc_msgSend_rowBytes(a5, v417, v418);
    v799 = objc_msgSend_matrixBytes(a5, v419, v420);
    objc_msgSend_resultMatrixOrigin(v12, v421, v422);
    v795 = v895;
    v791 = objc_msgSend_dataType(a6, v423, v424);
    objc_msgSend_resultMatrixOrigin(v12, v425, v426);
    v787 = v891.i64[0];
    v783 = objc_msgSend_rowBytes(a6, v427, v428);
    v779 = objc_msgSend_matrixBytes(a6, v429, v430);
    v431 = *MEMORY[0x277CD73A8];
    v842 = *&v882[v431];
    v821 = *&a5[v431];
    v864 = *&a6[v431];
    objc_msgSend_transA(v12, v432, v433);
    objc_msgSend_transB(v12, v434, v435);
    objc_msgSend_dataType(a5, v436, v437);
    objc_msgSend_dataType(a5, v438, v439);
    objc_msgSend_dataType(a5, v440, v441);
    objc_msgSend_dataType(a5, v442, v443);
    objc_msgSend_dataType(v882, v444, v445);
    objc_msgSend_dataType(v882, v446, v447);
    objc_msgSend_dataType(v882, v448, v449);
    objc_msgSend_dataType(v882, v450, v451);
    objc_msgSend_dataType(a6, v452, v453);
    objc_msgSend_dataType(a6, v454, v455);
    if (objc_msgSend_M(v12, v456, v457) > 0x20 || objc_msgSend_N(v12, v458, v459) <= 0x1FF)
    {
      v462 = v402;
      if (objc_msgSend_N(v12, v458, v459) > 0x20 || objc_msgSend_M(v12, v458, v459) < 0x200)
      {
LABEL_143:
        if (qword_280D74AD8 != -1)
        {
          dispatch_once(&qword_280D74AD8, &unk_284CAA6F8);
        }

        objc_msgSend_alpha(v12, v458, v459);
        if (v465 == 1.0)
        {
          objc_msgSend_beta(v12, v463, v464);
        }

        if (objc_msgSend_M(v12, v463, v464) <= 0x7FFE && objc_msgSend_N(v12, v466, v467) <= 0x7FFE)
        {
          objc_msgSend_K(v12, v466, v467);
        }

        if (!(objc_msgSend_M(v12, v466, v467) % word_27DF856FA) && !(objc_msgSend_N(v12, v468, v469) % word_27DF856F8))
        {
          objc_msgSend_K(v12, v470, v471);
        }

        MPSLibrary::CreateUberShaderKey();
        v874 = MPSLibrary::GetPipelineStateForMPSKey();
        MPSLibrary::ReleaseMPSKey();
        v474 = objc_msgSend_N(v12, v472, v473, 0, 0, 0, 0, 0);
        v893 = v474;
        v775 = objc_msgSend_M(v12, v475, v476);
        v894 = v775;
        LODWORD(v895) = objc_msgSend_K(v12, v477, v478);
        HIDWORD(v895) = 1;
        v896 = objc_msgSend_rowBytes(v881, v479, v480);
        v897 = objc_msgSend_rowBytes(v882, v481, v482);
        v898 = objc_msgSend_rowBytes(a6, v483, v484);
        v899 = objc_msgSend_rowBytes(a6, v485, v486);
        v900 = objc_msgSend_matrixBytes(v881, v487, v488);
        v901 = objc_msgSend_matrixBytes(v882, v489, v490);
        v902 = objc_msgSend_matrixBytes(a6, v491, v492);
        v903 = objc_msgSend_matrixBytes(a6, v493, v494);
        objc_msgSend_alpha(v12, v495, v496);
        *&v497 = v497;
        v904 = LODWORD(v497);
        objc_msgSend_beta(v12, v498, v499);
        *&v500 = v500;
        v905 = LODWORD(v500);
        v906 = 0u;
        memset(v907, 0, sizeof(v907));
        v501 = *(v462 + 32);
        v891 = 0u;
        v892 = 0u;
        (*(*v501 + 24))(&v891);
        v504 = (((HIWORD(dword_27DF856FC) - 128) >> 7) | ((HIWORD(dword_27DF856FC) - 128) << 9));
        if (v504 <= 2)
        {
          if (!(((HIWORD(dword_27DF856FC) - 128) >> 7) | ((HIWORD(dword_27DF856FC) - 128) << 9)))
          {
            v891 = xmmword_2399EC750;
            v505 = 8;
            v506 = 16;
            goto LABEL_164;
          }

          if (v504 == 1)
          {
            v891 = vdupq_n_s64(0x10uLL);
            v505 = 16;
            v506 = 16;
LABEL_164:
            *&v892 = word_27DF856F8 / v506;
            *(&v892 + 1) = word_27DF856FA / v505;
            v507 = objc_msgSend_maxTotalThreadsPerThreadgroup(v874, v502, v503);
            v510 = v506 * v505;
            v511 = v507 / v506;
            if (v505 < v507 / v506)
            {
              v511 = v505;
            }

            if (v510 > v507)
            {
              v512 = v511;
            }

            else
            {
              v512 = v505;
            }

            v513 = v510 <= v507 || v511 * v506 <= v507;
            v514 = v892;
            v767 = v513;
            if (objc_msgSend_dataType(v881, v508, v509) == 268435472)
            {
              v517 = 1;
            }

            else if (objc_msgSend_dataType(v881, v515, v516) == 536870928)
            {
              v517 = 1;
            }

            else
            {
              v517 = 2;
            }

            v518 = dword_27DF856FC;
            v519 = v892;
            if (objc_msgSend_dataType(v882, v515, v516) == 268435472)
            {
              v383 = 1;
            }

            else
            {
              v522 = objc_msgSend_dataType(v882, v520, v521);
              v383 = 1;
              if (v522 != 536870928)
              {
                v383 = 2;
              }
            }

            v384 = (v506 << v517) * v518 * v519;
            v385 = (v512 << v383) * dword_27DF856FC * *(&v892 + 1);
            objc_msgSend_setComputePipelineState_(v878, v520, v874);
            a5 = v881;
            v388 = objc_msgSend_data(v881, v386, v387);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v389, v388, v826 * (v815 >> 3) + v803 * v809 + v799 * (v771 + a7) + v821, 0);
            v392 = objc_msgSend_data(v882, v390, v391);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v393, v392, v858 * (v853 >> 3) + v837 * v848 + v831 * (v771 + a7) + v842, 1);
            v396 = objc_msgSend_data(a6, v394, v395);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v397, v396, v795 * (v791 >> 3) + v783 * v787 + v779 * (v771 + a7) + v864, 2);
            objc_msgSend_setBytes_length_atIndex_(v878, v398, &v893, 100, 3);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v399, v384, 0);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v400, v385, 1);
            v888 = (v514 * v506 + v474 - 1) / (v514 * v506);
            v889 = (*(&v514 + 1) * v512 + v775 - 1) / (*(&v514 + 1) * v512);
            v890 = 1;
            v885 = v506;
            v886 = v512;
            v887 = v767;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v878, v401, &v888, &v885);
            result = MPSLibrary::ReleaseComputeState();
            a8 = v877;
            v381 = MEMORY[0x277CD7370];
            v382 = v869;
            goto LABEL_133;
          }

LABEL_160:
          v505 = v891.u64[1];
          v506 = v891.i64[0];
          goto LABEL_164;
        }

        if (v504 == 3)
        {
          v891 = xmmword_2399EC740;
          v505 = 16;
        }

        else
        {
          if (v504 != 7)
          {
            goto LABEL_160;
          }

          v891 = vdupq_n_s64(0x20uLL);
          v505 = 32;
        }

        v506 = 32;
        goto LABEL_164;
      }

      v460 = 128;
      v461 = 32;
    }

    else
    {
      v460 = 32;
      v461 = 128;
      v462 = v402;
    }

    word_27DF856F8 = v461;
    word_27DF856FA = v460;
    dword_27DF856FC = 16777232;
    goto LABEL_143;
  }

  if (objc_msgSend_dataType(a4, v15, v16) == 268435472)
  {
    result = objc_msgSend_dataType(a6, v78, v79);
    if (result == 268435472)
    {
      if (!a8)
      {
        return result;
      }

      v82 = 0;
      v83 = MEMORY[0x277CD7370];
      v84 = 1;
      while (1)
      {
        v107 = *&v12[*v83];
        result = objc_msgSend_M(v12, v80, v81);
        if (result)
        {
          result = objc_msgSend_N(v12, v80, v81);
          if (result)
          {
            break;
          }
        }

LABEL_24:
        v82 = v84++;
        if (v82 >= a8)
        {
          return result;
        }
      }

      v872 = v84;
      objc_msgSend_leftMatrixOrigin(v12, v80, v81);
      v862 = v895;
      v856 = objc_msgSend_dataType(v882, v108, v109);
      objc_msgSend_leftMatrixOrigin(v12, v110, v111);
      v851 = v891.i64[0];
      v840 = objc_msgSend_rowBytes(v882, v112, v113);
      v835 = objc_msgSend_matrixBytes(v882, v114, v115);
      objc_msgSend_rightMatrixOrigin(v12, v116, v117);
      v829 = v895;
      v819 = objc_msgSend_dataType(a5, v118, v119);
      objc_msgSend_rightMatrixOrigin(v12, v120, v121);
      v813 = v891.i64[0];
      v807 = objc_msgSend_rowBytes(a5, v122, v123);
      v801 = objc_msgSend_matrixBytes(a5, v124, v125);
      objc_msgSend_resultMatrixOrigin(v12, v126, v127);
      v797 = v895;
      v793 = objc_msgSend_dataType(a6, v128, v129);
      objc_msgSend_resultMatrixOrigin(v12, v130, v131);
      v789 = v891.i64[0];
      v785 = objc_msgSend_rowBytes(a6, v132, v133);
      v781 = objc_msgSend_matrixBytes(a6, v134, v135);
      v136 = *MEMORY[0x277CD73A8];
      v845 = *&v882[v136];
      v824 = *&a5[v136];
      v867 = *&a6[v136];
      objc_msgSend_transA(v12, v137, v138);
      objc_msgSend_transB(v12, v139, v140);
      objc_msgSend_dataType(a5, v141, v142);
      objc_msgSend_dataType(a5, v143, v144);
      objc_msgSend_dataType(a5, v145, v146);
      objc_msgSend_dataType(a5, v147, v148);
      objc_msgSend_dataType(v882, v149, v150);
      objc_msgSend_dataType(v882, v151, v152);
      objc_msgSend_dataType(v882, v153, v154);
      objc_msgSend_dataType(v882, v155, v156);
      objc_msgSend_dataType(a6, v157, v158);
      objc_msgSend_dataType(a6, v159, v160);
      if (objc_msgSend_M(v12, v161, v162) > 0x20 || objc_msgSend_N(v12, v163, v164) <= 0x1FF)
      {
        v167 = v107;
        if (objc_msgSend_N(v12, v163, v164) > 0x20 || objc_msgSend_M(v12, v163, v164) < 0x200)
        {
LABEL_34:
          if (qword_280D74AE0 != -1)
          {
            dispatch_once(&qword_280D74AE0, &unk_284CAA718);
          }

          objc_msgSend_alpha(v12, v163, v164);
          if (v170 == 1.0)
          {
            objc_msgSend_beta(v12, v168, v169);
          }

          if (objc_msgSend_M(v12, v168, v169) <= 0x7FFE && objc_msgSend_N(v12, v171, v172) <= 0x7FFE)
          {
            objc_msgSend_K(v12, v171, v172);
          }

          if (!(objc_msgSend_M(v12, v171, v172) % word_27DF85702) && !(objc_msgSend_N(v12, v173, v174) % word_27DF85700))
          {
            objc_msgSend_K(v12, v175, v176);
          }

          MPSLibrary::CreateUberShaderKey();
          v177 = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v777 = objc_msgSend_N(v12, v178, v179, 0, 0, 0, 0, 0);
          v893 = v777;
          v773 = objc_msgSend_M(v12, v180, v181);
          v894 = v773;
          LODWORD(v895) = objc_msgSend_K(v12, v182, v183);
          HIDWORD(v895) = 1;
          v896 = objc_msgSend_rowBytes(v881, v184, v185);
          v897 = objc_msgSend_rowBytes(v882, v186, v187);
          v898 = objc_msgSend_rowBytes(a6, v188, v189);
          v899 = objc_msgSend_rowBytes(a6, v190, v191);
          v900 = objc_msgSend_matrixBytes(v881, v192, v193);
          v901 = objc_msgSend_matrixBytes(v882, v194, v195);
          v902 = objc_msgSend_matrixBytes(a6, v196, v197);
          v903 = objc_msgSend_matrixBytes(a6, v198, v199);
          objc_msgSend_alpha(v12, v200, v201);
          *&v202 = v202;
          v904 = LODWORD(v202);
          objc_msgSend_beta(v12, v203, v204);
          *&v205 = v205;
          v905 = LODWORD(v205);
          v906 = 0u;
          memset(v907, 0, sizeof(v907));
          v206 = *(v167 + 32);
          v891 = 0u;
          v892 = 0u;
          (*(*v206 + 24))(&v891);
          v209 = (((HIWORD(dword_27DF85704) - 128) >> 7) | ((HIWORD(dword_27DF85704) - 128) << 9));
          v769 = v82;
          if (v209 <= 2)
          {
            if (!(((HIWORD(dword_27DF85704) - 128) >> 7) | ((HIWORD(dword_27DF85704) - 128) << 9)))
            {
              v891 = xmmword_2399EC750;
              v210 = 8;
              v211 = 16;
              goto LABEL_55;
            }

            if (v209 == 1)
            {
              v891 = vdupq_n_s64(0x10uLL);
              v210 = 16;
              v211 = 16;
LABEL_55:
              *&v892 = word_27DF85700 / v211;
              *(&v892 + 1) = word_27DF85702 / v210;
              v212 = objc_msgSend_maxTotalThreadsPerThreadgroup(v177, v207, v208);
              v215 = v211 * v210;
              v216 = v212 / v211;
              if (v210 < v212 / v211)
              {
                v216 = v210;
              }

              if (v215 > v212)
              {
                v217 = v216;
              }

              else
              {
                v217 = v210;
              }

              v218 = v215 <= v212 || v216 * v211 <= v212;
              v219 = v892;
              v766 = v218;
              if (objc_msgSend_dataType(v881, v213, v214) == 268435472)
              {
                v222 = 1;
              }

              else if (objc_msgSend_dataType(v881, v220, v221) == 536870928)
              {
                v222 = 1;
              }

              else
              {
                v222 = 2;
              }

              v223 = dword_27DF85704;
              v224 = v892;
              if (objc_msgSend_dataType(v882, v220, v221) == 268435472)
              {
                v88 = 1;
              }

              else
              {
                v86 = objc_msgSend_dataType(v882, v87, v225);
                v88 = 1;
                if (v86 != 536870928)
                {
                  v88 = 2;
                }
              }

              v89 = (v211 << v222) * v223 * v224;
              v90 = (v217 << v88) * dword_27DF85704 * *(&v892 + 1);
              objc_msgSend_setComputePipelineState_(v878, v87, v177);
              a5 = v881;
              v93 = objc_msgSend_data(v881, v91, v92);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v94, v93, v829 * (v819 >> 3) + v807 * v813 + v801 * (v769 + a7) + v824, 0);
              v97 = objc_msgSend_data(v882, v95, v96);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v98, v97, v862 * (v856 >> 3) + v840 * v851 + v835 * (v769 + a7) + v845, 1);
              v101 = objc_msgSend_data(a6, v99, v100);
              objc_msgSend_setBuffer_offset_atIndex_(v878, v102, v101, v797 * (v793 >> 3) + v785 * v789 + v781 * (v769 + a7) + v867, 2);
              objc_msgSend_setBytes_length_atIndex_(v878, v103, &v893, 100, 3);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v104, v89, 0);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v105, v90, 1);
              v888 = (v219 * v211 + v777 - 1) / (v219 * v211);
              v889 = (*(&v219 + 1) * v217 + v773 - 1) / (*(&v219 + 1) * v217);
              v890 = 1;
              v885 = v211;
              v886 = v217;
              v887 = v766;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v878, v106, &v888, &v885);
              result = MPSLibrary::ReleaseComputeState();
              a8 = v877;
              v83 = MEMORY[0x277CD7370];
              v84 = v872;
              goto LABEL_24;
            }

LABEL_51:
            v210 = v891.u64[1];
            v211 = v891.i64[0];
            goto LABEL_55;
          }

          if (v209 == 3)
          {
            v891 = xmmword_2399EC740;
            v210 = 16;
          }

          else
          {
            if (v209 != 7)
            {
              goto LABEL_51;
            }

            v891 = vdupq_n_s64(0x20uLL);
            v210 = 32;
          }

          v211 = 32;
          goto LABEL_55;
        }

        v165 = 128;
        v166 = 32;
      }

      else
      {
        v165 = 32;
        v166 = 128;
        v167 = v107;
      }

      word_27DF85700 = v166;
      word_27DF85702 = v165;
      dword_27DF85704 = 16777232;
      goto LABEL_34;
    }

    result = objc_msgSend_dataType(a6, v80, v81);
    if (!a8 || result != 268435488)
    {
      return result;
    }

    v525 = 0;
    v526 = MEMORY[0x277CD7370];
    v527 = 1;
    while (1)
    {
      v549 = *&v12[*v526];
      result = objc_msgSend_M(v12, v523, v524);
      if (result)
      {
        result = objc_msgSend_N(v12, v523, v524);
        if (result)
        {
          break;
        }
      }

LABEL_187:
      v525 = v527++;
      if (v525 >= a8)
      {
        return result;
      }
    }

    v870 = v527;
    objc_msgSend_leftMatrixOrigin(v12, v523, v524);
    v859 = v895;
    v854 = objc_msgSend_dataType(v882, v550, v551);
    objc_msgSend_leftMatrixOrigin(v12, v552, v553);
    v849 = v891.i64[0];
    v838 = objc_msgSend_rowBytes(v882, v554, v555);
    v832 = objc_msgSend_matrixBytes(v882, v556, v557);
    objc_msgSend_rightMatrixOrigin(v12, v558, v559);
    v827 = v895;
    v816 = objc_msgSend_dataType(a5, v560, v561);
    objc_msgSend_rightMatrixOrigin(v12, v562, v563);
    v810 = v891.i64[0];
    v804 = objc_msgSend_rowBytes(a5, v564, v565);
    v800 = objc_msgSend_matrixBytes(a5, v566, v567);
    objc_msgSend_resultMatrixOrigin(v12, v568, v569);
    v796 = v895;
    v792 = objc_msgSend_dataType(a6, v570, v571);
    objc_msgSend_resultMatrixOrigin(v12, v572, v573);
    v788 = v891.i64[0];
    v784 = objc_msgSend_rowBytes(a6, v574, v575);
    v780 = objc_msgSend_matrixBytes(a6, v576, v577);
    v578 = *MEMORY[0x277CD73A8];
    v843 = *&v882[v578];
    v822 = *&a5[v578];
    v865 = *&a6[v578];
    objc_msgSend_transA(v12, v579, v580);
    objc_msgSend_transB(v12, v581, v582);
    objc_msgSend_dataType(a5, v583, v584);
    objc_msgSend_dataType(a5, v585, v586);
    objc_msgSend_dataType(a5, v587, v588);
    objc_msgSend_dataType(a5, v589, v590);
    objc_msgSend_dataType(v882, v591, v592);
    objc_msgSend_dataType(v882, v593, v594);
    objc_msgSend_dataType(v882, v595, v596);
    objc_msgSend_dataType(v882, v597, v598);
    objc_msgSend_dataType(a6, v599, v600);
    objc_msgSend_dataType(a6, v601, v602);
    if (objc_msgSend_M(v12, v603, v604) > 0x20 || objc_msgSend_N(v12, v605, v606) <= 0x1FF)
    {
      v609 = v549;
      if (objc_msgSend_N(v12, v605, v606) > 0x20 || objc_msgSend_M(v12, v605, v606) < 0x200)
      {
LABEL_197:
        if (qword_280D74AE8 != -1)
        {
          dispatch_once(&qword_280D74AE8, &unk_284CAA738);
        }

        objc_msgSend_alpha(v12, v605, v606);
        if (v612 == 1.0)
        {
          objc_msgSend_beta(v12, v610, v611);
        }

        if (objc_msgSend_M(v12, v610, v611) <= 0x7FFE && objc_msgSend_N(v12, v613, v614) <= 0x7FFE)
        {
          objc_msgSend_K(v12, v613, v614);
        }

        if (!(objc_msgSend_M(v12, v613, v614) % word_27DF8570A) && !(objc_msgSend_N(v12, v615, v616) % word_27DF85708))
        {
          objc_msgSend_K(v12, v617, v618);
        }

        MPSLibrary::CreateUberShaderKey();
        v875 = MPSLibrary::GetPipelineStateForMPSKey();
        MPSLibrary::ReleaseMPSKey();
        v776 = objc_msgSend_N(v12, v619, v620, 0, 0, 0, 0, 0);
        v893 = v776;
        v623 = objc_msgSend_M(v12, v621, v622);
        v894 = v623;
        LODWORD(v895) = objc_msgSend_K(v12, v624, v625);
        HIDWORD(v895) = 1;
        v896 = objc_msgSend_rowBytes(v881, v626, v627);
        v897 = objc_msgSend_rowBytes(v882, v628, v629);
        v898 = objc_msgSend_rowBytes(a6, v630, v631);
        v899 = objc_msgSend_rowBytes(a6, v632, v633);
        v900 = objc_msgSend_matrixBytes(v881, v634, v635);
        v901 = objc_msgSend_matrixBytes(v882, v636, v637);
        v902 = objc_msgSend_matrixBytes(a6, v638, v639);
        v903 = objc_msgSend_matrixBytes(a6, v640, v641);
        objc_msgSend_alpha(v12, v642, v643);
        *&v644 = v644;
        v904 = LODWORD(v644);
        objc_msgSend_beta(v12, v645, v646);
        *&v647 = v647;
        v905 = LODWORD(v647);
        v906 = 0u;
        memset(v907, 0, sizeof(v907));
        v648 = *(v609 + 32);
        v891 = 0u;
        v892 = 0u;
        (*(*v648 + 24))(&v891);
        v651 = (((HIWORD(dword_27DF8570C) - 128) >> 7) | ((HIWORD(dword_27DF8570C) - 128) << 9));
        v772 = v623;
        if (v651 <= 2)
        {
          if (!(((HIWORD(dword_27DF8570C) - 128) >> 7) | ((HIWORD(dword_27DF8570C) - 128) << 9)))
          {
            v891 = xmmword_2399EC750;
            v652 = 8;
            v653 = 16;
            goto LABEL_218;
          }

          if (v651 == 1)
          {
            v891 = vdupq_n_s64(0x10uLL);
            v652 = 16;
            v653 = 16;
LABEL_218:
            *&v892 = word_27DF85708 / v653;
            *(&v892 + 1) = word_27DF8570A / v652;
            v654 = objc_msgSend_maxTotalThreadsPerThreadgroup(v875, v649, v650);
            v657 = v653 * v652;
            v658 = v654 / v653;
            if (v652 < v654 / v653)
            {
              v658 = v652;
            }

            if (v657 > v654)
            {
              v659 = v658;
            }

            else
            {
              v659 = v652;
            }

            v660 = v657 <= v654 || v658 * v653 <= v654;
            v661 = v892;
            v768 = v660;
            if (objc_msgSend_dataType(v881, v655, v656) == 268435472)
            {
              v664 = 1;
            }

            else if (objc_msgSend_dataType(v881, v662, v663) == 536870928)
            {
              v664 = 1;
            }

            else
            {
              v664 = 2;
            }

            v665 = dword_27DF8570C;
            v666 = v892;
            if (objc_msgSend_dataType(v882, v662, v663) == 268435472)
            {
              v528 = v875;
              v530 = 1;
            }

            else
            {
              v528 = v875;
              v529 = objc_msgSend_dataType(v882, v667, v668);
              v530 = 1;
              if (v529 != 536870928)
              {
                v530 = 2;
              }
            }

            v531 = (v653 << v664) * v665 * v666;
            v532 = (v659 << v530) * dword_27DF8570C * *(&v892 + 1);
            objc_msgSend_setComputePipelineState_(v878, v800, v528);
            a5 = v881;
            v535 = objc_msgSend_data(v881, v533, v534);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v536, v535, v827 * (v816 >> 3) + v804 * v810 + v800 * (v525 + a7) + v822, 0);
            v539 = objc_msgSend_data(v882, v537, v538);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v540, v539, v859 * (v854 >> 3) + v838 * v849 + v832 * (v525 + a7) + v843, 1);
            v543 = objc_msgSend_data(a6, v541, v542);
            objc_msgSend_setBuffer_offset_atIndex_(v878, v544, v543, v796 * (v792 >> 3) + v784 * v788 + v780 * (v525 + a7) + v865, 2);
            objc_msgSend_setBytes_length_atIndex_(v878, v545, &v893, 100, 3);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v546, v531, 0);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v878, v547, v532, 1);
            v888 = (v661 * v653 + v776 - 1) / (v661 * v653);
            v889 = (*(&v661 + 1) * v659 + v772 - 1) / (*(&v661 + 1) * v659);
            v890 = 1;
            v885 = v653;
            v886 = v659;
            v887 = v768;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v878, v548, &v888, &v885);
            result = MPSLibrary::ReleaseComputeState();
            a8 = v877;
            v526 = MEMORY[0x277CD7370];
            v527 = v870;
            goto LABEL_187;
          }

LABEL_214:
          v652 = v891.u64[1];
          v653 = v891.i64[0];
          goto LABEL_218;
        }

        if (v651 == 3)
        {
          v891 = xmmword_2399EC740;
          v652 = 16;
        }

        else
        {
          if (v651 != 7)
          {
            goto LABEL_214;
          }

          v891 = vdupq_n_s64(0x20uLL);
          v652 = 32;
        }

        v653 = 32;
        goto LABEL_218;
      }

      v607 = 128;
      v608 = 32;
    }

    else
    {
      v607 = 32;
      v608 = 128;
      v609 = v549;
    }

    word_27DF85708 = v608;
    word_27DF8570A = v607;
    dword_27DF8570C = 16777232;
    goto LABEL_197;
  }

  result = objc_msgSend_dataType(a4, v78, v79);
  if (result == 536870920)
  {
    result = objc_msgSend_dataType(a6, v374, v375);
    if (result == 268435488)
    {
      if (a8)
      {
        v378 = 0;
        v379 = 1;
        do
        {
          result = sub_2399D43C0(v12, a2, v882, a5, a6, v378 + a7);
          v378 = v379++;
        }

        while (v378 < a8);
      }
    }

    else
    {
      result = objc_msgSend_dataType(a6, v376, v377);
      if (a8 && result == 268435472)
      {
        v671 = 0;
        v672 = 1;
        do
        {
          result = sub_2399D4834(v12, a2, v882, a5, a6, v671 + a7);
          v671 = v672++;
        }

        while (v671 < a8);
      }
    }
  }

  else if (a8)
  {
    v669 = 0;
    v670 = 1;
    do
    {
      result = sub_2399D4CA8(v12, a2, v882, a5, a6, v669 + a7);
      v669 = v670++;
    }

    while (v669 < a8);
  }

  return result;
}

uint64_t sub_2399D1A44(char *a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, unint64_t a8)
{
  if (objc_msgSend_dataType(a4, a2, a3) != 268435488)
  {
    if (objc_msgSend_dataType(a4, v16, v17) != 268435472)
    {
      result = objc_msgSend_dataType(a4, v40, v41);
      if (result == 536870920)
      {
        result = objc_msgSend_dataType(a6, v54, v55);
        if (result == 268435488)
        {
          if (a8)
          {
            v58 = 0;
            v59 = 1;
            do
            {
              result = sub_2399D43C0(a1, a2, a4, a5, a6, v58 + a7);
              v58 = v59++;
            }

            while (v58 < a8);
          }
        }

        else
        {
          result = objc_msgSend_dataType(a6, v56, v57);
          if (a8 && result == 268435472)
          {
            v87 = 0;
            v88 = 1;
            do
            {
              result = sub_2399D4834(a1, a2, a4, a5, a6, v87 + a7);
              v87 = v88++;
            }

            while (v87 < a8);
          }
        }
      }

      else if (a8)
      {
        v60 = 0;
        v61 = 1;
        do
        {
          result = sub_2399D4CA8(a1, a2, a4, a5, a6, v60 + a7);
          v60 = v61++;
        }

        while (v60 < a8);
      }

      return result;
    }

    v261 = a3;
    v264 = a2;
    if ((objc_msgSend_transA(a1, v40, v41) & 1) != 0 || (objc_msgSend_transB(a1, v42, v43) & 1) != 0 || (objc_msgSend_rowBytes(a5, v42, v43) & 0x3F) != 0)
    {
      goto LABEL_18;
    }

    if (a1)
    {
      objc_msgSend_rightMatrixOrigin(a1, v42, v43);
      if ((v272 & 0xF) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v271 = 0;
      v272 = 0;
      v273 = 0;
    }

    if (objc_msgSend_N(a1, v42, v43) >= 4)
    {
      v159 = objc_msgSend_data(a5, v42, v43);
      v162 = objc_msgSend_length(v159, v160, v161);
      v165 = objc_msgSend_K(a1, v163, v164);
      v170 = objc_msgSend_rowBytes(a5, v166, v167) * v165;
      if (a1)
      {
        objc_msgSend_rightMatrixOrigin(a1, v168, v169);
        v170 += objc_msgSend_rowBytes(a5, v171, v172) * v269;
        objc_msgSend_rightMatrixOrigin(a1, v173, v174);
        v177 = v267;
      }

      else
      {
        v269 = 0uLL;
        *&v270 = 0;
        objc_msgSend_rowBytes(a5, v168, v169);
        v177 = 0;
        v267 = 0;
        v268 = 0;
        v266 = 0;
      }

      if (v162 >= v170 + v177 * (objc_msgSend_dataType(a5, v175, v176) >> 3) && (objc_msgSend_N(a1, v42, v43) & 7) == 0 && (objc_msgSend_M(a1, v42, v43) & 0x3F) == 0 && (objc_msgSend_K(a1, v42, v43) & 0xF) == 0)
      {
        if (qword_280D74AF0 != -1)
        {
          dispatch_once(&qword_280D74AF0, &unk_284CAA758);
        }

        v44 = byte_280D74AC0 ^ 1;
        goto LABEL_19;
      }
    }

LABEL_18:
    v44 = 0;
LABEL_19:
    v45 = *(*&a1[*MEMORY[0x277CD7350]] + 16);
    v46 = objc_msgSend_N(a1, v42, v43);
    v49 = objc_msgSend_K(a1, v47, v48);
    v53 = (v44 & 1) == 0 || (v52 = v49, objc_msgSend_maxTextureWidth2D(v45, v50, v51) < (v46 + 3) >> 2) || v52 > objc_msgSend_maxTextureHeight2D(v45, v50, v51);
    if ((objc_msgSend_rowBytes(a4, v50, v51) & 0xF) != 0 || ((objc_msgSend_rowBytes(a6, v76, v77) & 0xF) != 0 ? (v78 = 1) : (v78 = v53), (v78 & 1) != 0 || (result = objc_msgSend_dataType(a6, v76, v77), result != 268435472)))
    {
      result = objc_msgSend_dataType(a6, v76, v77);
      if (result == 268435472)
      {
        if (a8)
        {
          v83 = 0;
          v84 = 1;
          do
          {
            result = sub_2399D6B84(a1, v264, a4, a5, a6, v83 + a7);
            v83 = v84++;
          }

          while (v83 < a8);
        }
      }

      else
      {
        result = objc_msgSend_dataType(a6, v81, v82);
        if (a8 && result == 268435488)
        {
          v85 = 0;
          v86 = 1;
          do
          {
            result = sub_2399D6FF8(a1, v264, a4, a5, a6, v85 + a7);
            v85 = v86++;
          }

          while (v85 < a8);
        }
      }
    }

    else if (a8)
    {
      v79 = 0;
      v80 = 1;
      do
      {
        result = sub_2399D5B44(a1, v264, v261, a4, a5, a6, v79 + a7);
        v79 = v80++;
      }

      while (v79 < a8);
    }

    return result;
  }

  v260 = a3;
  v263 = a2;
  if ((objc_msgSend_transA(a1, v16, v17) & 1) != 0 || (objc_msgSend_transB(a1, v18, v19) & 1) != 0 || (objc_msgSend_rowBytes(a5, v18, v19) & 0x3F) != 0)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    objc_msgSend_rightMatrixOrigin(a1, v18, v19);
    if ((v272 & 0xF) != 0)
    {
LABEL_5:
      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v271 = 0;
    v272 = 0;
    v273 = 0;
  }

  if (objc_msgSend_N(a1, v18, v19) < 4)
  {
    goto LABEL_5;
  }

  v133 = objc_msgSend_data(a5, v18, v19);
  v136 = objc_msgSend_length(v133, v134, v135);
  v139 = objc_msgSend_K(a1, v137, v138);
  v144 = objc_msgSend_rowBytes(a5, v140, v141) * v139;
  if (a1)
  {
    objc_msgSend_rightMatrixOrigin(a1, v142, v143);
    v144 += objc_msgSend_rowBytes(a5, v145, v146) * v269;
    objc_msgSend_rightMatrixOrigin(a1, v147, v148);
    v151 = v267;
  }

  else
  {
    v269 = 0uLL;
    *&v270 = 0;
    objc_msgSend_rowBytes(a5, v142, v143);
    v151 = 0;
    v267 = 0;
    v268 = 0;
    v266 = 0;
  }

  v20 = v136 >= v144 + v151 * (objc_msgSend_dataType(a5, v149, v150) >> 3);
LABEL_6:
  v21 = *(*&a1[*MEMORY[0x277CD7350]] + 16);
  v22 = objc_msgSend_N(a1, v18, v19);
  v25 = objc_msgSend_K(a1, v23, v24);
  if (v20 && (v28 = v25, objc_msgSend_maxTextureWidth2D(v21, v26, v27) >= (v22 + 3) >> 2) && v28 <= objc_msgSend_maxTextureHeight2D(v21, v26, v27))
  {
    if (qword_280D74AF0 != -1)
    {
      dispatch_once(&qword_280D74AF0, &unk_284CAA758);
    }

    v29 = byte_280D74AC0;
    if ((objc_msgSend_rowBytes(a4, v26, v27) & 0xF) != 0)
    {
LABEL_10:
      v32 = 1;
      if ((objc_msgSend_offset(a4, v30, v31) & 0xF) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v29 = 1;
    if ((objc_msgSend_rowBytes(a4, v26, v27) & 0xF) != 0)
    {
      goto LABEL_10;
    }
  }

  v32 = (objc_msgSend_rowBytes(a6, v30, v31) & 0xF) != 0;
  if ((objc_msgSend_offset(a4, v62, v63) & 0xF) != 0)
  {
LABEL_11:
    v35 = 1;
    result = objc_msgSend_dataType(a5, v33, v34);
    if (result == 268435472)
    {
      goto LABEL_12;
    }

LABEL_37:
    v39 = 0;
    if (a8 < 2)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_36:
  v35 = (objc_msgSend_offset(a6, v33, v34) & 0xF) != 0;
  result = objc_msgSend_dataType(a5, v64, v65);
  if (result != 268435472)
  {
    goto LABEL_37;
  }

LABEL_12:
  result = objc_msgSend_M(a1, v37, v38);
  v39 = (result & 0xF) == 0;
  if (a8 < 2)
  {
LABEL_43:
    if ((v29 | v32 | (v35 || v39)))
    {
      result = objc_msgSend_dataType(a5, v37, v38);
      if (result == 268435472)
      {
        if (a8)
        {
          v70 = 0;
          v71 = 1;
          do
          {
            result = sub_2399D60DC(a1, v263, a4, a5, a6, v70 + a7);
            v70 = v71++;
          }

          while (v70 < a8);
        }
      }

      else if (a8)
      {
        v74 = 0;
        v75 = 1;
        do
        {
          result = sub_2399D6754(a1, v263, a4, a5, a6, v74 + a7);
          v74 = v75++;
        }

        while (v74 < a8);
      }
    }

    else if (a8)
    {
      v72 = 0;
      v73 = 1;
      do
      {
        result = sub_2399D5B44(a1, v263, v260, a4, a5, a6, v72 + a7);
        v72 = v73++;
      }

      while (v72 < a8);
    }

    return result;
  }

LABEL_38:
  result = objc_msgSend_dataType(a5, v37, v38);
  if (result != 268435488)
  {
    goto LABEL_43;
  }

  if ((objc_msgSend_K(a1, v37, v38) & 0xF) != 0 && ((objc_msgSend_N(a1, v66, v67) & 0xF) != 0 || (objc_msgSend_M(a1, v68, v69) & 0xF) != 0))
  {
    return sub_2399D5634(a1, v263, a4, a5, a6, a8);
  }

  v89 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, v66, v67);
  if (result)
  {
    result = objc_msgSend_N(a1, v90, v91);
    if (result)
    {
      v262 = v89;
      objc_msgSend_leftMatrixOrigin(a1, v92, v93);
      v245 = objc_msgSend_dataType(a4, v94, v95) >> 3;
      objc_msgSend_leftMatrixOrigin(a1, v96, v97);
      v256 = v269;
      v254 = objc_msgSend_rowBytes(a4, v98, v99);
      objc_msgSend_rightMatrixOrigin(a1, v100, v101);
      v242 = objc_msgSend_dataType(a5, v102, v103) >> 3;
      objc_msgSend_rightMatrixOrigin(a1, v104, v105);
      v252 = v269;
      v250 = objc_msgSend_rowBytes(a5, v106, v107);
      objc_msgSend_resultMatrixOrigin(a1, v108, v109);
      v239 = objc_msgSend_dataType(a6, v110, v111) >> 3;
      objc_msgSend_resultMatrixOrigin(a1, v112, v113);
      v249 = v269;
      v248 = objc_msgSend_rowBytes(a6, v114, v115);
      v116 = *MEMORY[0x277CD73A8];
      v257 = *&a5[v116];
      v258 = *&a4[v116];
      v259 = *&a6[v116];
      v119 = objc_msgSend_transB(a1, v117, v118);
      v122 = objc_msgSend_transA(a1, v120, v121);
      v125 = objc_msgSend_N(a1, v123, v124);
      v128 = objc_msgSend_M(a1, v126, v127);
      v131 = objc_msgSend_K(a1, v129, v130);
      if (v119)
      {
        if (v122)
        {
          v132 = 61;
        }

        else if (((v128 | v125) & 3) != 0 || v128 > 0x20 || v125 > 0x20 || (v131 & 0xF) != 0)
        {
          v132 = 60;
        }

        else
        {
          v132 = 71;
        }

        v158 = v262;
        goto LABEL_117;
      }

      if (v122)
      {
        v153 = v245;
        v152 = v272;
        v155 = v242;
        v154 = v272;
        v157 = v239;
        v156 = v272;
        if ((v125 & 3) != 0 || v128 > 0x20 || v125 > 0x20 || (v128 & 3) != 0)
        {
          v132 = 59;
          v158 = v262;
        }

        else
        {
          v132 = 72;
          v158 = v262;
        }

        goto LABEL_118;
      }

      v158 = v262;
      if (v125 >= 0x41 && v128 >= 0x41 && v131 > 0x80)
      {
        goto LABEL_116;
      }

      if (v128 & 3 | v125 & 0xF)
      {
        v132 = 63;
      }

      else
      {
        v132 = 64;
      }

      if ((v125 & 0xF) == 0)
      {
        goto LABEL_117;
      }

      if (v128 & 1 | v125 & 7)
      {
LABEL_116:
        v132 = 58;
      }

      else
      {
        v132 = 62;
      }

LABEL_117:
      v153 = v245;
      v152 = v272;
      v155 = v242;
      v154 = v272;
      v157 = v239;
      v156 = v272;
LABEL_118:
      v246 = v152 * v153;
      v243 = v156 * v157;
      v244 = v154 * v155;
      ComputeState = MPSLibrary::GetComputeState();
      v241 = objc_msgSend_N(a1, v179, v180);
      LODWORD(v271) = v241;
      v240 = objc_msgSend_M(a1, v181, v182);
      HIDWORD(v271) = v240;
      LODWORD(v272) = objc_msgSend_K(a1, v183, v184);
      HIDWORD(v272) = a8;
      LODWORD(v273) = objc_msgSend_rowBytes(a5, v185, v186);
      HIDWORD(v273) = objc_msgSend_rowBytes(a4, v187, v188);
      v274 = objc_msgSend_rowBytes(a6, v189, v190);
      v275 = objc_msgSend_rowBytes(a6, v191, v192);
      v276 = objc_msgSend_matrixBytes(a5, v193, v194);
      v277 = objc_msgSend_matrixBytes(a4, v195, v196);
      v278 = objc_msgSend_matrixBytes(a6, v197, v198);
      v279 = objc_msgSend_matrixBytes(a6, v199, v200);
      objc_msgSend_alpha(a1, v201, v202);
      *&v203 = v203;
      v280 = LODWORD(v203);
      objc_msgSend_beta(a1, v204, v205);
      *&v206 = v206;
      v281 = LODWORD(v206);
      v282 = 0u;
      memset(v283, 0, sizeof(v283));
      v207 = *(v158 + 32);
      v269 = 0u;
      v270 = 0u;
      v208 = v132;
      (*(*v207 + 24))(&v269);
      v210 = *(&v269 + 1);
      v209 = v269;
      v247 = ComputeState;
      v213 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v211, v212);
      v215 = 8 * v210 * v209;
      if (v210 * v209 > v213 && v210 >= v213 / v209)
      {
        v210 = v213 / v209;
      }

      v216 = v246 + v254 * v256;
      v217 = v244 + v250 * v252;
      v218 = v213 / (v210 * v209);
      if (v218 >= 8)
      {
        v218 = 8;
      }

      if (v215 > v213)
      {
        v219 = v218;
      }

      else
      {
        v219 = 8;
      }

      v251 = v243 + v248 * v249;
      if ((v208 & 0x7E) == 0x3C || (v208 & 0x7E) == 0x3A)
      {
        v255 = (v270 * v209 + v241 - 1) / (v270 * v209);
        v220 = (*(&v270 + 1) * v210 + v240 - 1) / (*(&v270 + 1) * v210);
      }

      else
      {
        v255 = 1;
        v220 = 1;
      }

      v253 = v220;
      objc_msgSend_setComputePipelineState_(v263, v214, v247);
      v223 = objc_msgSend_data(a5, v221, v222);
      objc_msgSend_setBuffer_offset_atIndex_(v263, v224, v223, v217 + v257, 0);
      v227 = objc_msgSend_data(a4, v225, v226);
      objc_msgSend_setBuffer_offset_atIndex_(v263, v228, v227, v216 + v258, 1);
      v231 = objc_msgSend_data(a6, v229, v230);
      objc_msgSend_setBuffer_offset_atIndex_(v263, v232, v231, v251 + v259, 2);
      v235 = objc_msgSend_data(a6, v233, v234);
      objc_msgSend_setBuffer_offset_atIndex_(v263, v236, v235, v251 + v259, 3);
      objc_msgSend_setBytes_length_atIndex_(v263, v237, &v271, 100, 4);
      v266 = v255;
      v267 = v253;
      v268 = (v219 + a8 - 1) / v219;
      v265[0] = v209;
      v265[1] = v210;
      v265[2] = v219;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v263, v238, &v266, v265);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

void *sub_2399D276C(char *a1, char *a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, unint64_t a8)
{
  v15 = objc_msgSend_dataType(a4, a2, a3);
  result = objc_msgSend_dataType(a5, v16, v17);
  if (v15 == result)
  {
    result = objc_msgSend_dataType(a4, v19, v20);
    if (result == 268435488)
    {
      if (a8 <= 1)
      {
        if (a8 == 1)
        {

          return sub_2399D6754(a1, a2, a4, a5, a6, a7);
        }
      }

      else
      {

        return sub_2399D5634(a1, a2, a4, a5, a6, a8);
      }
    }

    else if (objc_msgSend_dataType(a4, v21, v22) == 268435472)
    {
      result = objc_msgSend_dataType(a6, v25, v26);
      if (result == 268435472)
      {
        if (a8)
        {
          v29 = 0;
          v30 = 1;
          do
          {
            result = sub_2399D6B84(a1, a2, a4, a5, a6, v29 + a7);
            v29 = v30++;
          }

          while (v29 < a8);
        }
      }

      else
      {
        result = objc_msgSend_dataType(a6, v27, v28);
        if (a8 && result == 268435488)
        {
          v37 = 0;
          v38 = 1;
          do
          {
            result = sub_2399D6FF8(a1, a2, a4, a5, a6, v37 + a7);
            v37 = v38++;
          }

          while (v37 < a8);
        }
      }
    }

    else
    {
      result = objc_msgSend_dataType(a4, v25, v26);
      if (result == 536870920)
      {
        result = objc_msgSend_dataType(a6, v31, v32);
        if (result == 268435488)
        {
          if (a8)
          {
            v35 = 0;
            v36 = 1;
            do
            {
              result = sub_2399D43C0(a1, a2, a4, a5, a6, v35 + a7);
              v35 = v36++;
            }

            while (v35 < a8);
          }
        }

        else
        {
          result = objc_msgSend_dataType(a6, v33, v34);
          if (a8 && result == 268435472)
          {
            v41 = 0;
            v42 = 1;
            do
            {
              result = sub_2399D4834(a1, a2, a4, a5, a6, v41 + a7);
              v41 = v42++;
            }

            while (v41 < a8);
          }
        }
      }

      else if (a8)
      {
        v39 = 0;
        v40 = 1;
        do
        {
          result = sub_2399D4CA8(a1, a2, a4, a5, a6, v39 + a7);
          v39 = v40++;
        }

        while (v39 < a8);
      }
    }
  }

  else if (a8)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      result = sub_2399D60DC(a1, a2, a4, a5, a6, v23 + a7);
      v23 = v24++;
    }

    while (v23 < a8);
  }

  return result;
}

void sub_2399D3CBC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399D74A4(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_2399D405C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v10 = a2[8];
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v10, 41, 0);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

__n128 sub_2399D4114@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 8) + 32 * a2;
  result = *v3;
  v5 = *(v3 + 16);
  *a3 = *v3;
  a3[1] = v5;
  return result;
}

char *sub_2399D4128(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  v62 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54[0] = objc_msgSend_columns(a1, a2, a3);
  v54[1] = objc_msgSend_rows(a1, v16, v17);
  v54[2] = objc_msgSend_matrices(a1, v18, v19);
  v22 = objc_msgSend_offset(a1, v20, v21);
  v23 = MEMORY[0x277CD7268];
  v26 = objc_msgSend_dataType(a1, v24, v25);
  v28 = objc_msgSend_descriptorWithDataType_dimensionCount_dimensionSizes_(v23, v27, v26, 3, v54);
  v31 = objc_msgSend_rowBytes(a1, v29, v30);
  objc_msgSend_setRowBytes_(v28, v32, v31);
  if (a9)
  {
    objc_msgSend_transposeDimension_withDimension_(v28, v33, 0, 1);
  }

  objc_msgSend_sliceDimension_withSubrange_(v28, v33, 0, a2, a3);
  objc_msgSend_sliceDimension_withSubrange_(v28, v34, 1, a4, a5);
  objc_msgSend_sliceDimension_withSubrange_(v28, v35, 2, a6, a7);
  v36 = objc_alloc(MEMORY[0x277CD7260]);
  v39 = objc_msgSend_data(a1, v37, v38);
  v41 = objc_msgSend_initWithBuffer_descriptor_(v36, v40, v39, v28);
  *&v41[*MEMORY[0x277CD73F8]] = v22;
  v44 = objc_msgSend_userDictionary(a8, v42, v43);
  v46 = objc_msgSend_objectForKey_(v44, v45, @"_MPSCommandBufferRetainListKey");
  if (!v46)
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v44, v49, v48, @"_MPSCommandBufferRetainListKey");

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_2399D4384;
    v53[3] = &unk_278AFD238;
    v53[4] = @"_MPSCommandBufferRetainListKey";
    objc_msgSend_addCompletedHandler_(a8, v50, v53);
    v46 = v48;
  }

  objc_msgSend_addObject_(v46, v47, v41);

  return v41;
}

uint64_t sub_2399D4384(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

void *sub_2399D43C0(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v126 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v132 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v129;
  v28 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v132 * (objc_msgSend_dataType(a4, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a4, v36, v37) * v129;
  v41 = v38 + objc_msgSend_matrixBytes(a4, v39, v40) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v132 * (objc_msgSend_dataType(a5, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a5, v49, v50) * v129;
  v54 = objc_msgSend_matrixBytes(a5, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v56 = v41 + *&a4[v55];
  v125 = *&a5[v55];
  v124 = v28 + *&a3[v55];
  objc_msgSend_rowBytes(a3, v57, v58);
  objc_msgSend_rowBytes(a4, v59, v60);
  v123 = v56;
  objc_msgSend_transB(a1, v61, v62);
  objc_msgSend_transA(a1, v63, v64);
  v122 = v51 + v54 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v68 = objc_msgSend_N(a1, v66, v67);
  v131[0] = v68;
  v71 = objc_msgSend_M(a1, v69, v70);
  v131[1] = v71;
  LODWORD(v132) = objc_msgSend_K(a1, v72, v73);
  HIDWORD(v132) = objc_msgSend_rowBytes(a4, v74, v75);
  v133 = objc_msgSend_rowBytes(a3, v76, v77);
  v134 = objc_msgSend_rowBytes(a5, v78, v79);
  v135 = objc_msgSend_rowBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v136 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v137 = LODWORD(v87);
  v88 = *(v126 + 32);
  v129 = 0u;
  v130 = 0u;
  (*(*v88 + 24))(&v129);
  v91 = objc_msgSend_threadExecutionWidth(ComputeState, v89, v90);
  if (v68 > 32 * v71)
  {
    v94 = *(&v129 + 1);
    v95 = v129;
    if (*(&v129 + 1) * v129 < 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = 2 * v129;
LABEL_12:
      *&v129 = v95;
      goto LABEL_13;
    }

    v94 = *(&v129 + 1) >> 1;
LABEL_10:
    *(&v129 + 1) = v94;
    goto LABEL_13;
  }

  v94 = *(&v129 + 1);
  v95 = v129;
  if (v71 > 32 * v68)
  {
    if (*(&v129 + 1) * v129 >= 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = v129 >> 1;
      goto LABEL_12;
    }

    v94 = 2 * *(&v129 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v98 = v95 * v94;
  v99 = v96 / v95;
  if (v94 < v96 / v95)
  {
    v99 = v94;
  }

  if (v98 > v96)
  {
    v100 = v99;
  }

  else
  {
    v100 = v94;
  }

  v101 = v98 <= v96 || v99 * v95 <= v96;
  v102 = (v130 * v95 + v68 - 1) / (v130 * v95);
  v103 = (*(&v130 + 1) * v100 + v71 - 1) / (*(&v130 + 1) * v100);
  objc_msgSend_setComputePipelineState_(a2, v97, ComputeState);
  v106 = objc_msgSend_data(a4, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v123, 0);
  v110 = objc_msgSend_data(a3, v108, v109);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v111, v110, v124, 1);
  v114 = objc_msgSend_data(a5, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v115, v114, v122 + v125, 2);
  v118 = objc_msgSend_data(a5, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v119, v118, v122 + v125, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v120, v131, 36, 4);
  v128[0] = v102;
  v128[1] = v103;
  v128[2] = 1;
  v127[0] = v95;
  v127[1] = v100;
  v127[2] = v101;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, v128, v127);
  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D4834(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v126 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v132 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v129;
  v28 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v132 * (objc_msgSend_dataType(a4, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a4, v36, v37) * v129;
  v41 = v38 + objc_msgSend_matrixBytes(a4, v39, v40) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v132 * (objc_msgSend_dataType(a5, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a5, v49, v50) * v129;
  v54 = objc_msgSend_matrixBytes(a5, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v56 = v41 + *&a4[v55];
  v125 = *&a5[v55];
  v124 = v28 + *&a3[v55];
  objc_msgSend_rowBytes(a3, v57, v58);
  objc_msgSend_rowBytes(a4, v59, v60);
  v123 = v56;
  objc_msgSend_transB(a1, v61, v62);
  objc_msgSend_transA(a1, v63, v64);
  v122 = v51 + v54 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v68 = objc_msgSend_N(a1, v66, v67);
  v131[0] = v68;
  v71 = objc_msgSend_M(a1, v69, v70);
  v131[1] = v71;
  LODWORD(v132) = objc_msgSend_K(a1, v72, v73);
  HIDWORD(v132) = objc_msgSend_rowBytes(a4, v74, v75);
  v133 = objc_msgSend_rowBytes(a3, v76, v77);
  v134 = objc_msgSend_rowBytes(a5, v78, v79);
  v135 = objc_msgSend_rowBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v136 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v137 = LODWORD(v87);
  v88 = *(v126 + 32);
  v129 = 0u;
  v130 = 0u;
  (*(*v88 + 24))(&v129);
  v91 = objc_msgSend_threadExecutionWidth(ComputeState, v89, v90);
  if (v68 > 32 * v71)
  {
    v94 = *(&v129 + 1);
    v95 = v129;
    if (*(&v129 + 1) * v129 < 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = 2 * v129;
LABEL_12:
      *&v129 = v95;
      goto LABEL_13;
    }

    v94 = *(&v129 + 1) >> 1;
LABEL_10:
    *(&v129 + 1) = v94;
    goto LABEL_13;
  }

  v94 = *(&v129 + 1);
  v95 = v129;
  if (v71 > 32 * v68)
  {
    if (*(&v129 + 1) * v129 >= 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = v129 >> 1;
      goto LABEL_12;
    }

    v94 = 2 * *(&v129 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v98 = v95 * v94;
  v99 = v96 / v95;
  if (v94 < v96 / v95)
  {
    v99 = v94;
  }

  if (v98 > v96)
  {
    v100 = v99;
  }

  else
  {
    v100 = v94;
  }

  v101 = v98 <= v96 || v99 * v95 <= v96;
  v102 = (v130 * v95 + v68 - 1) / (v130 * v95);
  v103 = (*(&v130 + 1) * v100 + v71 - 1) / (*(&v130 + 1) * v100);
  objc_msgSend_setComputePipelineState_(a2, v97, ComputeState);
  v106 = objc_msgSend_data(a4, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v123, 0);
  v110 = objc_msgSend_data(a3, v108, v109);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v111, v110, v124, 1);
  v114 = objc_msgSend_data(a5, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v115, v114, v122 + v125, 2);
  v118 = objc_msgSend_data(a5, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v119, v118, v122 + v125, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v120, v131, 36, 4);
  v128[0] = v102;
  v128[1] = v103;
  v128[2] = 1;
  v127[0] = v95;
  v127[1] = v100;
  v127[2] = v101;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, v128, v127);
  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D4CA8(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v126 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v132 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v129;
  v28 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v132 * (objc_msgSend_dataType(a4, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a4, v36, v37) * v129;
  v41 = v38 + objc_msgSend_matrixBytes(a4, v39, v40) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v132 * (objc_msgSend_dataType(a5, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a5, v49, v50) * v129;
  v54 = objc_msgSend_matrixBytes(a5, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v56 = v41 + *&a4[v55];
  v125 = *&a5[v55];
  v124 = v28 + *&a3[v55];
  objc_msgSend_rowBytes(a3, v57, v58);
  objc_msgSend_rowBytes(a4, v59, v60);
  v123 = v56;
  objc_msgSend_transB(a1, v61, v62);
  objc_msgSend_transA(a1, v63, v64);
  v122 = v51 + v54 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v68 = objc_msgSend_N(a1, v66, v67);
  v131[0] = v68;
  v71 = objc_msgSend_M(a1, v69, v70);
  v131[1] = v71;
  LODWORD(v132) = objc_msgSend_K(a1, v72, v73);
  HIDWORD(v132) = objc_msgSend_rowBytes(a4, v74, v75);
  v133 = objc_msgSend_rowBytes(a3, v76, v77);
  v134 = objc_msgSend_rowBytes(a5, v78, v79);
  v135 = objc_msgSend_rowBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v136 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v137 = LODWORD(v87);
  v88 = *(v126 + 32);
  v129 = 0u;
  v130 = 0u;
  (*(*v88 + 24))(&v129);
  v91 = objc_msgSend_threadExecutionWidth(ComputeState, v89, v90);
  if (v68 > 32 * v71)
  {
    v94 = *(&v129 + 1);
    v95 = v129;
    if (*(&v129 + 1) * v129 < 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = 2 * v129;
LABEL_12:
      *&v129 = v95;
      goto LABEL_13;
    }

    v94 = *(&v129 + 1) >> 1;
LABEL_10:
    *(&v129 + 1) = v94;
    goto LABEL_13;
  }

  v94 = *(&v129 + 1);
  v95 = v129;
  if (v71 > 32 * v68)
  {
    if (*(&v129 + 1) * v129 >= 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = v129 >> 1;
      goto LABEL_12;
    }

    v94 = 2 * *(&v129 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v98 = v95 * v94;
  v99 = v96 / v95;
  if (v94 < v96 / v95)
  {
    v99 = v94;
  }

  if (v98 > v96)
  {
    v100 = v99;
  }

  else
  {
    v100 = v94;
  }

  v101 = v98 <= v96 || v99 * v95 <= v96;
  v102 = (v130 * v95 + v68 - 1) / (v130 * v95);
  v103 = (*(&v130 + 1) * v100 + v71 - 1) / (*(&v130 + 1) * v100);
  objc_msgSend_setComputePipelineState_(a2, v97, ComputeState);
  v106 = objc_msgSend_data(a4, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v123, 0);
  v110 = objc_msgSend_data(a3, v108, v109);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v111, v110, v124, 1);
  v114 = objc_msgSend_data(a5, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v115, v114, v122 + v125, 2);
  v118 = objc_msgSend_data(a5, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v119, v118, v122 + v125, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v120, v131, 36, 4);
  v128[0] = v102;
  v128[1] = v103;
  v128[2] = 1;
  v127[0] = v95;
  v127[1] = v100;
  v127[2] = v101;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, v128, v127);
  return MPSLibrary::ReleaseComputeState();
}

char *sub_2399D511C()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856E8 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856EA = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856EC) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856EC) = result;
  }

  return result;
}

uint64_t sub_2399D51D0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  v9 = v7;
  v10 = a2[8];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[3];
  if (v11 != -1)
  {
    v22 = v11;
    objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v22, 33, 126);
  }

  if (v12 != -1)
  {
    v22 = v12;
    objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v22, 33, 125);
  }

  v22 = HIDWORD(v10);
  objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v22, 33, 124);
  if (v13 != -1)
  {
    v22 = v13;
    objc_msgSend_setConstantValue_type_atIndex_(v9, v14, &v22, 33, 123);
  }

  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v14, &v22, 33, 119);
  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v15, &v22, 33, 118);
  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v16, &v22, 33, 122);
  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v17, &v22, 33, 121);
  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v18, &v22, 33, 117);
  v22 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v19, &v22, 33, 116);
  v20 = _MPSNewSpecializedFunction();

  return v20;
}

char *sub_2399D5364()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856F0 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856F2 = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856F4) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856F4) = result;
  }

  return result;
}

char *sub_2399D5418()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856F8 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856FA = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856FC) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856FC) = result;
  }

  return result;
}

char *sub_2399D54CC()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF85700 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF85702 = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF85704) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF85704) = result;
  }

  return result;
}

char *sub_2399D5580()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF85708 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF8570A = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF8570C) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF8570C) = result;
  }

  return result;
}

void *sub_2399D5634(char *a1, const char *a2, char *a3, char *a4, char *a5, unsigned int a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v139 = a6;
  v141 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v124 = objc_msgSend_dataType(a3, v18, v19) >> 3;
  objc_msgSend_leftMatrixOrigin(a1, v20, v21);
  v134 = v144;
  v131 = objc_msgSend_rowBytes(a3, v22, v23);
  objc_msgSend_rightMatrixOrigin(a1, v24, v25);
  v121 = objc_msgSend_dataType(a4, v26, v27) >> 3;
  objc_msgSend_rightMatrixOrigin(a1, v28, v29);
  v130 = v144;
  v129 = objc_msgSend_rowBytes(a4, v30, v31);
  objc_msgSend_resultMatrixOrigin(a1, v32, v33);
  v36 = objc_msgSend_dataType(a5, v34, v35) >> 3;
  objc_msgSend_resultMatrixOrigin(a1, v37, v38);
  v128 = v144;
  v127 = objc_msgSend_rowBytes(a5, v39, v40);
  v41 = *MEMORY[0x277CD73A8];
  v136 = *&a4[v41];
  v137 = *&a3[v41];
  v138 = *&a5[v41];
  v44 = objc_msgSend_transB(a1, v42, v43);
  v47 = objc_msgSend_transA(a1, v45, v46);
  v50 = objc_msgSend_N(a1, v48, v49);
  v53 = objc_msgSend_M(a1, v51, v52);
  v56 = objc_msgSend_K(a1, v54, v55);
  v133 = a2;
  if (v44)
  {
    if (v47)
    {
      v57 = 61;
    }

    else
    {
      v57 = 60;
    }
  }

  else if (v47)
  {
    v57 = 59;
  }

  else
  {
    if (v50 >= 0x41 && v53 >= 0x21 && v56 > 0x40)
    {
      goto LABEL_17;
    }

    if (v53 & 3 | v50 & 0xF)
    {
      v57 = 63;
    }

    else
    {
      v57 = 64;
    }

    if ((v50 & 0xF) == 0)
    {
      goto LABEL_18;
    }

    if (v53 & 1 | v50 & 7)
    {
LABEL_17:
      v57 = 58;
    }

    else
    {
      v57 = 62;
    }
  }

LABEL_18:
  v58 = v147 * v124;
  v125 = v147 * v36;
  v126 = v147 * v121;
  ComputeState = MPSLibrary::GetComputeState();
  v122 = objc_msgSend_N(a1, v60, v61);
  v146[0] = v122;
  v120 = objc_msgSend_M(a1, v62, v63);
  v146[1] = v120;
  LODWORD(v147) = objc_msgSend_K(a1, v64, v65);
  HIDWORD(v147) = v139;
  v148 = objc_msgSend_rowBytes(a4, v66, v67);
  v149 = objc_msgSend_rowBytes(a3, v68, v69);
  v150 = objc_msgSend_rowBytes(a5, v70, v71);
  v151 = objc_msgSend_rowBytes(a5, v72, v73);
  v152 = objc_msgSend_matrixBytes(a4, v74, v75);
  v123 = a3;
  v153 = objc_msgSend_matrixBytes(a3, v76, v77);
  v154 = objc_msgSend_matrixBytes(a5, v78, v79);
  v155 = objc_msgSend_matrixBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v156 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v157 = LODWORD(v87);
  v158 = 0u;
  memset(v159, 0, sizeof(v159));
  v88 = *(v141 + 32);
  v144 = 0u;
  v145 = 0u;
  (*(*v88 + 24))(&v144);
  v89 = *(&v144 + 1);
  v90 = v144;
  v91 = ComputeState;
  v94 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v96 = 8 * v89 * v90;
  if (v89 * v90 > v94 && v89 >= v94 / v90)
  {
    v89 = v94 / v90;
  }

  v97 = v58 + v131 * v134;
  v98 = v125 + v127 * v128;
  v99 = v94 / (v89 * v90);
  if (v99 >= 8)
  {
    v99 = 8;
  }

  if (v96 > v94)
  {
    v100 = v99;
  }

  else
  {
    v100 = 8;
  }

  v140 = (v100 + v139 - 1) / v100;
  if ((v57 & 0x7E) == 0x3C || (v57 & 0x7E) == 0x3A)
  {
    v135 = (v145 * v90 + v122 - 1) / (v145 * v90);
    v101 = (*(&v145 + 1) * v89 + v120 - 1) / (*(&v145 + 1) * v89);
  }

  else
  {
    v135 = 1;
    v101 = 1;
  }

  v132 = v101;
  objc_msgSend_setComputePipelineState_(v133, v95, v91);
  v104 = objc_msgSend_data(a4, v102, v103);
  objc_msgSend_setBuffer_offset_atIndex_(v133, v105, v104, v126 + v129 * v130 + v136, 0);
  v108 = objc_msgSend_data(v123, v106, v107);
  objc_msgSend_setBuffer_offset_atIndex_(v133, v109, v108, v97 + v137, 1);
  v112 = objc_msgSend_data(a5, v110, v111);
  objc_msgSend_setBuffer_offset_atIndex_(v133, v113, v112, v98 + v138, 2);
  v116 = objc_msgSend_data(a5, v114, v115);
  objc_msgSend_setBuffer_offset_atIndex_(v133, v117, v116, v98 + v138, 3);
  objc_msgSend_setBytes_length_atIndex_(v133, v118, v146, 100, 4);
  v143[0] = v135;
  v143[1] = v132;
  v143[2] = v140;
  v142[0] = v90;
  v142[1] = v89;
  v142[2] = v100;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v133, v119, v143, v142);
  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D5B44(char *a1, const char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17);
  if (!result)
  {
    return result;
  }

  v150 = a2;
  v151 = a3;
  v155 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v18, v19);
  v22 = v162 * (objc_msgSend_dataType(a4, v20, v21) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v23, v24);
  v153 = v22 + objc_msgSend_rowBytes(a4, v25, v26) * v159;
  v145 = objc_msgSend_matrixBytes(a4, v27, v28);
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v162 * (objc_msgSend_dataType(a5, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a5, v36, v37) * v159;
  v41 = objc_msgSend_matrixBytes(a5, v39, v40);
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v162 * (objc_msgSend_dataType(a6, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a6, v49, v50) * v159;
  v54 = objc_msgSend_matrixBytes(a6, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v147 = *&a5[v55];
  v148 = *&a4[v55];
  v149 = *&a6[v55];
  v58 = objc_msgSend_N(a1, v56, v57);
  v152 = a4;
  if ((objc_msgSend_N(a1, v59, v60) & 7) == 0 && (objc_msgSend_M(a1, v61, v62) & 0x3F) == 0 && (objc_msgSend_K(a1, v61, v62) & 0xF) == 0)
  {
    objc_msgSend_dataType(a4, v61, v62);
    v66 = 1;
LABEL_11:
    v141 = v66;
    goto LABEL_13;
  }

  v63 = v58 & 3;
  if ((objc_msgSend_M(a1, v61, v62) & 0xF) != 0 || objc_msgSend_K(a1, v64, v65) & 3 | v63)
  {
    if (v63 > 1)
    {
      v141 = 0;
      goto LABEL_13;
    }

    v66 = 0;
    goto LABEL_11;
  }

  v141 = 0;
LABEL_13:
  v143 = v38 + v41 * a7;
  v144 = v153 + v145 * a7;
  v146 = v51 + v54 * a7;
  ComputeState = MPSLibrary::GetComputeState();
  v70 = objc_msgSend_N(a1, v68, v69);
  v161[0] = v70;
  v73 = objc_msgSend_M(a1, v71, v72);
  v161[1] = v73;
  v76 = objc_msgSend_K(a1, v74, v75);
  LODWORD(v162) = v76;
  HIDWORD(v162) = objc_msgSend_rowBytes(a5, v77, v78);
  v163 = objc_msgSend_rowBytes(v152, v79, v80);
  v164 = objc_msgSend_rowBytes(a6, v81, v82);
  v165 = objc_msgSend_rowBytes(a6, v83, v84);
  objc_msgSend_alpha(a1, v85, v86);
  *&v87 = v87;
  v166 = LODWORD(v87);
  objc_msgSend_beta(a1, v88, v89);
  *&v90 = v90;
  v167 = LODWORD(v90);
  v91 = *(v155 + 32);
  v159 = 0u;
  v160 = 0u;
  (*(*v91 + 24))(&v159);
  v92 = *(&v159 + 1);
  v93 = v159;
  v154 = ComputeState;
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v94, v95);
  v99 = v92 * v93;
  v100 = v96 / v93;
  if (v92 < v96 / v93)
  {
    v100 = v92;
  }

  if (v99 > v96)
  {
    v101 = v100;
  }

  else
  {
    v101 = v92;
  }

  v102 = v99 <= v96 || v100 * v93 <= v96;
  if (v141)
  {
    v93 *= 2;
  }

  else
  {
    v103 = objc_msgSend_M(a1, v97, v98);
    if (v101 == 2 && v103 < 9)
    {
      v101 = 1;
    }
  }

  v142 = (v159 * v160 + v70 - 1) / (v159 * v160);
  objc_msgSend_setComputePipelineState_(v150, v97, v154, (*(&v159 + 1) * *(&v160 + 1) + v73 - 1) / (*(&v159 + 1) * *(&v160 + 1)));
  if (objc_msgSend_dataType(a5, v105, v106) == 268435488)
  {
    v108 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v107, 125, (v70 + 3) >> 2, v76, 0);
  }

  else
  {
    v108 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v107, 115, (v70 + 3) >> 2, v76, 0);
  }

  v111 = v108;
  v112 = objc_msgSend_data(a5, v109, v110);
  v115 = objc_msgSend_resourceOptions(v112, v113, v114);
  objc_msgSend_setResourceOptions_(v111, v116, v115);
  v119 = objc_msgSend_data(a5, v117, v118);
  v122 = objc_msgSend_rowBytes(a5, v120, v121);
  v124 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v119, v123, v111, v143 + v147, v122);
  objc_msgSend_setTexture_atIndex_(v150, v125, v124, 0);
  v128 = objc_msgSend_data(v152, v126, v127);
  objc_msgSend_setBuffer_offset_atIndex_(v150, v129, v128, v144 + v148, 0);
  v132 = objc_msgSend_data(a6, v130, v131);
  objc_msgSend_setBuffer_offset_atIndex_(v150, v133, v132, v146 + v149, 1);
  objc_msgSend_setBytes_length_atIndex_(v150, v134, v161, 36, 2);
  v158[0] = v142;
  v158[1] = v140;
  v158[2] = 1;
  v157[0] = v93;
  v157[1] = v101;
  v157[2] = v102;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v150, v135, v158, v157);
  if ((objc_msgSend_retainedReferences(v151, v136, v137) & 1) == 0)
  {
    v138 = v124;
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_2399D749C;
    v156[3] = &unk_278AFD238;
    v156[4] = v124;
    objc_msgSend_addCompletedHandler_(v151, v139, v156);
  }

  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D60DC(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  result = objc_msgSend_M(a1, a2, a3);
  if (result)
  {
    result = objc_msgSend_N(a1, v13, v14);
    if (result)
    {
      objc_msgSend_leftMatrixOrigin(a1, v15, v16);
      v19 = v191 * (objc_msgSend_dataType(a3, v17, v18) >> 3);
      objc_msgSend_leftMatrixOrigin(a1, v20, v21);
      v24 = v19 + objc_msgSend_rowBytes(a3, v22, v23) * v197;
      v184 = v24 + objc_msgSend_matrixBytes(a3, v25, v26) * a6;
      objc_msgSend_rightMatrixOrigin(a1, v27, v28);
      v31 = v191 * (objc_msgSend_dataType(a4, v29, v30) >> 3);
      objc_msgSend_rightMatrixOrigin(a1, v32, v33);
      v36 = v31 + objc_msgSend_rowBytes(a4, v34, v35) * v197;
      v182 = v36 + objc_msgSend_matrixBytes(a4, v37, v38) * a6;
      objc_msgSend_resultMatrixOrigin(a1, v39, v40);
      v43 = v191 * (objc_msgSend_dataType(a5, v41, v42) >> 3);
      objc_msgSend_resultMatrixOrigin(a1, v44, v45);
      v48 = v43 + objc_msgSend_rowBytes(a5, v46, v47) * v197;
      v51 = v48 + objc_msgSend_matrixBytes(a5, v49, v50) * a6;
      v52 = *MEMORY[0x277CD73A8];
      v183 = *&a3[v52];
      v181 = *&a4[v52];
      v185 = *&a5[v52];
      v189 = objc_msgSend_N(a1, v53, v54);
      v190 = objc_msgSend_M(a1, v55, v56);
      LODWORD(v191) = objc_msgSend_K(a1, v57, v58);
      HIDWORD(v191) = objc_msgSend_rowBytes(a4, v59, v60);
      v192 = objc_msgSend_rowBytes(a3, v61, v62);
      v193 = objc_msgSend_rowBytes(a5, v63, v64);
      v194 = objc_msgSend_rowBytes(a5, v65, v66);
      objc_msgSend_alpha(a1, v67, v68);
      *&v69 = v69;
      v195 = LODWORD(v69);
      objc_msgSend_beta(a1, v70, v71);
      *&v72 = v72;
      v196 = LODWORD(v72);
      v75 = objc_msgSend_transA(a1, v73, v74);
      v78 = objc_msgSend_transB(a1, v76, v77);
      if (v75)
      {
        if ((v78 & 1) == 0)
        {
          ComputeState = MPSLibrary::GetComputeState();
          v91 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v89, v90);
          if (v91 <= 0xFF)
          {
            v86 = v91 >> 6;
          }

          else
          {
            v86 = 4;
          }

          v87 = (v189 + 127) >> 7;
          v88 = (v190 + 4 * v86 - 1) / (4 * v86);
          goto LABEL_15;
        }
      }

      else if ((v78 & 1) == 0)
      {
        if (objc_msgSend_M(a1, v79, v80) > 8 || (objc_msgSend_N(a1, v110, v111) & 0x1F) != 0)
        {
          v112 = objc_msgSend_M(a1, v110, v111);
          if (v112)
          {
            v113 = 57;
          }

          else
          {
            v113 = 56;
          }

          if ((v112 & 0xF) != 0)
          {
            v114 = v113;
          }

          else
          {
            v114 = 44;
          }

          v115 = MPSLibrary::GetComputeState();
          v116 = (&unk_2399EC768 + 32 * v114);
          v117 = *v116;
          v118 = v116[1];
          v119 = v51;
          v120 = v116[2];
          v121 = v116[3];
          v124 = objc_msgSend_maxTotalThreadsPerThreadgroup(v115, v122, v123);
          v126 = v118 * v117;
          v127 = v124 / v117;
          if (v118 < v124 / v117)
          {
            v127 = v118;
          }

          v128 = v126 > v124;
          if (v126 > v124)
          {
            v118 = v127;
          }

          v129 = 1;
          if (v128)
          {
            v129 = v127 * v117 <= v124;
          }

          v130 = (v120 * v117 + v189 - 1) / (v120 * v117);
          v131 = (v118 * v121 + v190 - 1) / (v118 * v121);
          objc_msgSend_setComputePipelineState_(a2, v125, v115, v129);
          v134 = objc_msgSend_data(a4, v132, v133);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v135, v134, v182 + v181, 0);
          v138 = objc_msgSend_data(a3, v136, v137);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v139, v138, v184 + v183, 1);
          v142 = objc_msgSend_data(a5, v140, v141);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v143, v142, v119 + v185, 2);
          v146 = objc_msgSend_data(a5, v144, v145);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v147, v146, v119 + v185, 3);
          objc_msgSend_setBytes_length_atIndex_(a2, v148, &v189, 36, 4);
          v197 = v130;
          v198.i64[0] = v131;
          v198.i64[1] = 1;
          v186 = v117;
          v187 = v118;
          v149 = v179;
        }

        else
        {
          v150 = objc_msgSend_M(a1, v110, v111) + 47;
          v151 = MPSLibrary::GetComputeState();
          v152 = (&unk_2399EC768 + 32 * v150);
          v153 = *v152;
          v154 = v152[1];
          v155 = v152[2];
          v158 = objc_msgSend_maxTotalThreadsPerThreadgroup(v151, v156, v157);
          v160 = v154 * v153;
          v161 = v158 / v153;
          if (v154 < v158 / v153)
          {
            v161 = v154;
          }

          v162 = v160 > v158;
          if (v160 > v158)
          {
            v154 = v161;
          }

          v163 = 1;
          if (v162)
          {
            v163 = v161 * v153 <= v158;
          }

          v180 = v163;
          v164 = (v155 * v153 + v189 - 1) / (v155 * v153);
          objc_msgSend_setComputePipelineState_(a2, v159, v151);
          v167 = objc_msgSend_data(a4, v165, v166);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v168, v167, v182 + v181, 0);
          v171 = objc_msgSend_data(a3, v169, v170);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v172, v171, v184 + v183, 1);
          v175 = objc_msgSend_data(a5, v173, v174);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v176, v175, v51 + v185, 2);
          objc_msgSend_setBytes_length_atIndex_(a2, v177, &v189, 36, 3);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v178, 768, 0);
          v197 = v164;
          v198 = vdupq_n_s64(1uLL);
          v186 = v153;
          v187 = v154;
          v149 = v180;
        }

        v188 = v149;
        goto LABEL_33;
      }

      ComputeState = MPSLibrary::GetComputeState();
      v84 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v82, v83);
      if (v84 <= 0xFF)
      {
        v86 = v84 >> 6;
      }

      else
      {
        v86 = 4;
      }

      v87 = (v189 + 63) >> 6;
      v88 = (v86 + v190 - 1) / v86;
LABEL_15:
      objc_msgSend_setComputePipelineState_(a2, v85, ComputeState);
      v94 = objc_msgSend_data(a4, v92, v93);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v95, v94, v182 + v181, 0);
      v98 = objc_msgSend_data(a3, v96, v97);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v99, v98, v184 + v183, 1);
      v102 = objc_msgSend_data(a5, v100, v101);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v103, v102, v51 + v185, 2);
      v106 = objc_msgSend_data(a5, v104, v105);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v51 + v185, 3);
      objc_msgSend_setBytes_length_atIndex_(a2, v108, &v189, 36, 4);
      v197 = v87;
      v198.i64[0] = v88;
      v198.i64[1] = 1;
      v186 = 64;
      v187 = v86;
      v188 = 1;
LABEL_33:
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v109, &v197, &v186);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

void *sub_2399D6754(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v130 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v127;
  v124 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v28, v29);
  v32 = v130 * (objc_msgSend_dataType(a4, v30, v31) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v33, v34);
  v37 = v32 + objc_msgSend_rowBytes(a4, v35, v36) * v127;
  v121 = v37 + objc_msgSend_matrixBytes(a4, v38, v39) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v40, v41);
  v44 = v130 * (objc_msgSend_dataType(a5, v42, v43) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v45, v46);
  v49 = v44 + objc_msgSend_rowBytes(a5, v47, v48) * v127;
  v123 = v49 + objc_msgSend_matrixBytes(a5, v50, v51) * a6;
  v52 = *MEMORY[0x277CD73A8];
  v119 = *&a4[v52];
  v120 = *&a3[v52];
  v122 = *&a5[v52];
  objc_msgSend_rowBytes(a3, v53, v54);
  objc_msgSend_rowBytes(a4, v55, v56);
  objc_msgSend_transB(a1, v57, v58);
  objc_msgSend_transA(a1, v59, v60);
  ComputeState = MPSLibrary::GetComputeState();
  v64 = objc_msgSend_N(a1, v62, v63);
  v129[0] = v64;
  v67 = v12;
  v68 = objc_msgSend_M(a1, v65, v66);
  v129[1] = v68;
  LODWORD(v130) = objc_msgSend_K(a1, v69, v70);
  HIDWORD(v130) = objc_msgSend_rowBytes(a4, v71, v72);
  v131 = objc_msgSend_rowBytes(a3, v73, v74);
  v132 = objc_msgSend_rowBytes(a5, v75, v76);
  v133 = objc_msgSend_rowBytes(a5, v77, v78);
  objc_msgSend_alpha(a1, v79, v80);
  *&v81 = v81;
  v134 = LODWORD(v81);
  objc_msgSend_beta(a1, v82, v83);
  *&v84 = v84;
  v135 = LODWORD(v84);
  v85 = *(v67 + 32);
  v127 = 0u;
  v128 = 0u;
  (*(*v85 + 24))(&v127);
  v88 = objc_msgSend_threadExecutionWidth(ComputeState, v86, v87);
  if (v64 > 32 * v68)
  {
    v91 = *(&v127 + 1);
    v92 = v127;
    if (*(&v127 + 1) * v127 < 2 * (v88 & 0x7FFFFFFF))
    {
      v92 = 2 * v127;
LABEL_12:
      *&v127 = v92;
      goto LABEL_13;
    }

    v91 = *(&v127 + 1) >> 1;
LABEL_10:
    *(&v127 + 1) = v91;
    goto LABEL_13;
  }

  v91 = *(&v127 + 1);
  v92 = v127;
  if (v68 > 32 * v64)
  {
    if (*(&v127 + 1) * v127 >= 2 * (v88 & 0x7FFFFFFF))
    {
      v92 = v127 >> 1;
      goto LABEL_12;
    }

    v91 = 2 * *(&v127 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v93 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v89, v90);
  v95 = v92 * v91;
  v96 = v93 / v92;
  if (v91 < v93 / v92)
  {
    v96 = v91;
  }

  if (v95 > v93)
  {
    v97 = v96;
  }

  else
  {
    v97 = v91;
  }

  v98 = v95 <= v93 || v96 * v92 <= v93;
  v99 = (v128 * v92 + v64 - 1) / (v128 * v92);
  v100 = (*(&v128 + 1) * v97 + v68 - 1) / (*(&v128 + 1) * v97);
  objc_msgSend_setComputePipelineState_(a2, v94, ComputeState);
  v103 = objc_msgSend_data(a4, v101, v102);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v104, v103, v121 + v119, 0);
  v107 = objc_msgSend_data(a3, v105, v106);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v108, v107, v124 + v120, 1);
  v111 = objc_msgSend_data(a5, v109, v110);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v112, v111, v123 + v122, 2);
  v115 = objc_msgSend_data(a5, v113, v114);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v116, v115, v123 + v122, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v117, v129, 36, 4);
  v126[0] = v99;
  v126[1] = v100;
  v126[2] = 1;
  v125[0] = v92;
  v125[1] = v97;
  v125[2] = v98;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v118, v126, v125);
  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D6B84(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v126 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v132 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v129;
  v28 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v132 * (objc_msgSend_dataType(a4, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a4, v36, v37) * v129;
  v41 = v38 + objc_msgSend_matrixBytes(a4, v39, v40) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v132 * (objc_msgSend_dataType(a5, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a5, v49, v50) * v129;
  v54 = objc_msgSend_matrixBytes(a5, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v56 = v41 + *&a4[v55];
  v125 = *&a5[v55];
  v124 = v28 + *&a3[v55];
  objc_msgSend_rowBytes(a3, v57, v58);
  objc_msgSend_rowBytes(a4, v59, v60);
  v123 = v56;
  objc_msgSend_transB(a1, v61, v62);
  objc_msgSend_transA(a1, v63, v64);
  v122 = v51 + v54 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v68 = objc_msgSend_N(a1, v66, v67);
  v131[0] = v68;
  v71 = objc_msgSend_M(a1, v69, v70);
  v131[1] = v71;
  LODWORD(v132) = objc_msgSend_K(a1, v72, v73);
  HIDWORD(v132) = objc_msgSend_rowBytes(a4, v74, v75);
  v133 = objc_msgSend_rowBytes(a3, v76, v77);
  v134 = objc_msgSend_rowBytes(a5, v78, v79);
  v135 = objc_msgSend_rowBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v136 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v137 = LODWORD(v87);
  v88 = *(v126 + 32);
  v129 = 0u;
  v130 = 0u;
  (*(*v88 + 24))(&v129);
  v91 = objc_msgSend_threadExecutionWidth(ComputeState, v89, v90);
  if (v68 > 32 * v71)
  {
    v94 = *(&v129 + 1);
    v95 = v129;
    if (*(&v129 + 1) * v129 < 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = 2 * v129;
LABEL_12:
      *&v129 = v95;
      goto LABEL_13;
    }

    v94 = *(&v129 + 1) >> 1;
LABEL_10:
    *(&v129 + 1) = v94;
    goto LABEL_13;
  }

  v94 = *(&v129 + 1);
  v95 = v129;
  if (v71 > 32 * v68)
  {
    if (*(&v129 + 1) * v129 >= 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = v129 >> 1;
      goto LABEL_12;
    }

    v94 = 2 * *(&v129 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v98 = v95 * v94;
  v99 = v96 / v95;
  if (v94 < v96 / v95)
  {
    v99 = v94;
  }

  if (v98 > v96)
  {
    v100 = v99;
  }

  else
  {
    v100 = v94;
  }

  v101 = v98 <= v96 || v99 * v95 <= v96;
  v102 = (v130 * v95 + v68 - 1) / (v130 * v95);
  v103 = (*(&v130 + 1) * v100 + v71 - 1) / (*(&v130 + 1) * v100);
  objc_msgSend_setComputePipelineState_(a2, v97, ComputeState);
  v106 = objc_msgSend_data(a4, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v123, 0);
  v110 = objc_msgSend_data(a3, v108, v109);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v111, v110, v124, 1);
  v114 = objc_msgSend_data(a5, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v115, v114, v122 + v125, 2);
  v118 = objc_msgSend_data(a5, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v119, v118, v122 + v125, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v120, v131, 36, 4);
  v128[0] = v102;
  v128[1] = v103;
  v128[2] = 1;
  v127[0] = v95;
  v127[1] = v100;
  v127[2] = v101;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, v128, v127);
  return MPSLibrary::ReleaseComputeState();
}

void *sub_2399D6FF8(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v12 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v14, v15);
  if (!result)
  {
    return result;
  }

  v126 = v12;
  objc_msgSend_leftMatrixOrigin(a1, v16, v17);
  v20 = v132 * (objc_msgSend_dataType(a3, v18, v19) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v21, v22);
  v25 = v20 + objc_msgSend_rowBytes(a3, v23, v24) * v129;
  v28 = v25 + objc_msgSend_matrixBytes(a3, v26, v27) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v29, v30);
  v33 = v132 * (objc_msgSend_dataType(a4, v31, v32) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v34, v35);
  v38 = v33 + objc_msgSend_rowBytes(a4, v36, v37) * v129;
  v41 = v38 + objc_msgSend_matrixBytes(a4, v39, v40) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v42, v43);
  v46 = v132 * (objc_msgSend_dataType(a5, v44, v45) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v47, v48);
  v51 = v46 + objc_msgSend_rowBytes(a5, v49, v50) * v129;
  v54 = objc_msgSend_matrixBytes(a5, v52, v53);
  v55 = *MEMORY[0x277CD73A8];
  v56 = v41 + *&a4[v55];
  v125 = *&a5[v55];
  v124 = v28 + *&a3[v55];
  objc_msgSend_rowBytes(a3, v57, v58);
  objc_msgSend_rowBytes(a4, v59, v60);
  v123 = v56;
  objc_msgSend_transB(a1, v61, v62);
  objc_msgSend_transA(a1, v63, v64);
  v122 = v51 + v54 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v68 = objc_msgSend_N(a1, v66, v67);
  v131[0] = v68;
  v71 = objc_msgSend_M(a1, v69, v70);
  v131[1] = v71;
  LODWORD(v132) = objc_msgSend_K(a1, v72, v73);
  HIDWORD(v132) = objc_msgSend_rowBytes(a4, v74, v75);
  v133 = objc_msgSend_rowBytes(a3, v76, v77);
  v134 = objc_msgSend_rowBytes(a5, v78, v79);
  v135 = objc_msgSend_rowBytes(a5, v80, v81);
  objc_msgSend_alpha(a1, v82, v83);
  *&v84 = v84;
  v136 = LODWORD(v84);
  objc_msgSend_beta(a1, v85, v86);
  *&v87 = v87;
  v137 = LODWORD(v87);
  v88 = *(v126 + 32);
  v129 = 0u;
  v130 = 0u;
  (*(*v88 + 24))(&v129);
  v91 = objc_msgSend_threadExecutionWidth(ComputeState, v89, v90);
  if (v68 > 32 * v71)
  {
    v94 = *(&v129 + 1);
    v95 = v129;
    if (*(&v129 + 1) * v129 < 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = 2 * v129;
LABEL_12:
      *&v129 = v95;
      goto LABEL_13;
    }

    v94 = *(&v129 + 1) >> 1;
LABEL_10:
    *(&v129 + 1) = v94;
    goto LABEL_13;
  }

  v94 = *(&v129 + 1);
  v95 = v129;
  if (v71 > 32 * v68)
  {
    if (*(&v129 + 1) * v129 >= 2 * (v91 & 0x7FFFFFFF))
    {
      v95 = v129 >> 1;
      goto LABEL_12;
    }

    v94 = 2 * *(&v129 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v92, v93);
  v98 = v95 * v94;
  v99 = v96 / v95;
  if (v94 < v96 / v95)
  {
    v99 = v94;
  }

  if (v98 > v96)
  {
    v100 = v99;
  }

  else
  {
    v100 = v94;
  }

  v101 = v98 <= v96 || v99 * v95 <= v96;
  v102 = (v130 * v95 + v68 - 1) / (v130 * v95);
  v103 = (*(&v130 + 1) * v100 + v71 - 1) / (*(&v130 + 1) * v100);
  objc_msgSend_setComputePipelineState_(a2, v97, ComputeState);
  v106 = objc_msgSend_data(a4, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v106, v123, 0);
  v110 = objc_msgSend_data(a3, v108, v109);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v111, v110, v124, 1);
  v114 = objc_msgSend_data(a5, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v115, v114, v122 + v125, 2);
  v118 = objc_msgSend_data(a5, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v119, v118, v122 + v125, 3);
  objc_msgSend_setBytes_length_atIndex_(a2, v120, v131, 36, 4);
  v128[0] = v102;
  v128[1] = v103;
  v128[2] = 1;
  v127[0] = v95;
  v127[1] = v100;
  v127[2] = v101;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, v128, v127);
  return MPSLibrary::ReleaseComputeState();
}

char *sub_2399D746C()
{
  result = getenv("MPS_GRAPH_CAPTURE_OUTPUT_FOLDER");
  if (result)
  {
    byte_280D74AC0 = 1;
  }

  return result;
}

id *sub_2399D74A4(id *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_endEncoding(*a1, a2, a3);

  return a1;
}

void sub_2399D79F8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void *sub_2399D7A0C(char *a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, unsigned int a7)
{
  v10 = objc_msgSend_columns(a5, a2, a3);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v11, v12);
  v15 = objc_msgSend_columns(a4, v13, v14);
  objc_msgSend_primarySourceMatrixOrigin(a1, v16, v17);
  v20 = objc_msgSend_sourceColumns(a1, v18, v19);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v21, v22);
  if (v132 >= objc_msgSend_columns(a5, v23, v24))
  {
    goto LABEL_8;
  }

  v27 = v10 - v132;
  if (v10 - v132 >= v15 - v132)
  {
    v27 = v15 - v132;
  }

  v28 = v27 >= v20 ? v20 : v27;
  objc_msgSend_primarySourceMatrixOrigin(a1, v25, v26);
  if (*(&v129 + 1) >= objc_msgSend_columns(a4, v29, v30))
  {
LABEL_8:
    v28 = 0;
  }

  v31 = objc_msgSend_rows(a5, v25, v26);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v32, v33);
  v34 = v31 - v131;
  v37 = objc_msgSend_rows(a4, v35, v36);
  objc_msgSend_primarySourceMatrixOrigin(a1, v38, v39);
  if (v34 >= v37 - v131)
  {
    v34 = v37 - v131;
  }

  v42 = objc_msgSend_sourceRows(a1, v40, v41);
  if (v34 >= v42)
  {
    v45 = v42;
  }

  else
  {
    v45 = v34;
  }

  objc_msgSend_secondarySourceMatrixOrigin(a1, v43, v44);
  result = objc_msgSend_rows(a5, v46, v47);
  if (v131 < result)
  {
    objc_msgSend_primarySourceMatrixOrigin(a1, v49, v50);
    result = objc_msgSend_rows(a4, v51, v52);
    if (v129 < result && v28 && v45)
    {
      v123 = a4;
      v124 = v45;
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      MPSLibrary::ReleaseMPSKey();
      if ((objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v54, v55, 0, 0, 0, 0, 0) & 0xFFFFFFC0) == 0)
      {
        v58 = 64;
        do
        {
          MPSLibrary::ReleaseComputeState();
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v58 >>= 1;
        }

        while (v58 > objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v59, v60, 0, 0, 0, 0, 0));
      }

      v125[1] = v124;
      v125[0] = v28;
      v126 = objc_msgSend_rowBytes(v123, v56, v57);
      v127 = objc_msgSend_rowBytes(a5, v61, v62);
      v128 = objc_msgSend_rowBytes(a6, v63, v64);
      objc_msgSend_primarySourceMatrixOrigin(a1, v65, v66);
      v67 = v132;
      v70 = v67 * (objc_msgSend_dataType(v123, v68, v69) >> 3);
      objc_msgSend_primarySourceMatrixOrigin(a1, v71, v72);
      v73 = v129;
      v120 = v70 + objc_msgSend_rowBytes(v123, v74, v75) * v73;
      v76 = MEMORY[0x277CD73A8];
      v119 = *&v123[*MEMORY[0x277CD73A8]];
      objc_msgSend_secondarySourceMatrixOrigin(a1, v77, v78);
      v79 = v132;
      v82 = v79 * (objc_msgSend_dataType(a5, v80, v81) >> 3);
      objc_msgSend_secondarySourceMatrixOrigin(a1, v83, v84);
      v85 = v129;
      v118 = v82 + objc_msgSend_rowBytes(a5, v86, v87) * v85;
      v88 = *&a5[*v76];
      objc_msgSend_resultMatrixOrigin(a1, v89, v90);
      v91 = v132;
      v94 = v91 * (objc_msgSend_dataType(a6, v92, v93) >> 3);
      objc_msgSend_resultMatrixOrigin(a1, v95, v96);
      v97 = v129;
      v100 = v94 + objc_msgSend_rowBytes(a6, v98, v99) * v97;
      v101 = *&a6[*v76];
      objc_msgSend_setComputePipelineState_(a2, v102, PipelineStateForMPSKey);
      v105 = objc_msgSend_data(v123, v103, v104);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v106, v105, v120 + v119, 0);
      v109 = objc_msgSend_data(a5, v107, v108);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v110, v109, v118 + v88, 1);
      v113 = objc_msgSend_data(a6, v111, v112);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v114, v113, v100 + v101, 2);
      objc_msgSend_setBytes_length_atIndex_(a2, v115, v125, 16, 3);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v116, 1024, 0);
      v131 = 1;
      v132 = (v124 + 1) >> 1;
      v133 = 1;
      v129 = xmmword_2399EE2C0;
      v130 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v117, &v131, &v129);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

id *sub_2399D7EE0(id *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_endEncoding(*a1, a2, a3);

  return a1;
}

void sub_2399D865C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_2399D8670(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v8 = v6;
  v13 = 1;
  v9 = a2[8];
  if (v9)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v13, 53, 0);
    v9 = a2[8];
  }

  v12 = 31 - __clz(v9 >> 1);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v12, 49, 1);
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

void sub_2399D98C8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D98DC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D98F0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D9904(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D9920(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D9934(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D9948(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D995C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D9988(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D999C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D99B0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D99C4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D99D8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399D99EC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399DA124(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2399D74A4(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2399DA138(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2399D74A4(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_2399DB230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = *(a2 + 64);
  v13 = v7 & 1;
  v12 = (v7 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v8, &v13, 53, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v9, &v12, 53, 1);
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

void sub_2399E090C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2399D74A4(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_2399E3204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v10 = *(a2 + 64) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v10, 53, 3);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t sub_2399E4C74(MPSDevice *a1, char *a2, uint64_t a3, void *a4, void *a5, unsigned int *a6)
{
  v11 = *a6 + a6[2];
  if (objc_msgSend_rows(a4, a2, a3) < v11)
  {
    return -20;
  }

  v14 = a6[1] + a6[3];
  if (objc_msgSend_columns(a4, v12, v13) < v14)
  {
    return -20;
  }

  v17 = *a6 + a6[4];
  if (objc_msgSend_rows(a5, v15, v16) < v17)
  {
    return -20;
  }

  v20 = a6[1] + a6[5];
  if (objc_msgSend_columns(a5, v18, v19) < v20 || objc_msgSend_dataType(a4, v21, v22) != 268435488 || objc_msgSend_dataType(a5, v23, v24) != 268435488)
  {
    return -20;
  }

  if (*a6)
  {
    if (a6[1])
    {
      MPSDevice::GetMPSLibrary_DoNotUse(a1, &stru_278AFE720);
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(a2, v26, ComputeState);
      MPSLibrary::ReleaseComputeState();
      v27 = (*a6 + 15) >> 4;
      v28 = (a6[1] + 63) >> 6;
      v31 = objc_msgSend_data(a4, v29, v30);
      v32 = a6[3];
      v33 = a6[6] * a6[2];
      v36 = objc_msgSend_dataType(a4, v34, v35) >> 3;
      v39 = objc_msgSend_offset(a4, v37, v38);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v40, v31, v39 + v33 + v32 * v36, 0);
      v43 = objc_msgSend_data(a5, v41, v42);
      LODWORD(v31) = a6[5];
      v44 = a6[7] * a6[4];
      v47 = objc_msgSend_dataType(a5, v45, v46) >> 3;
      v50 = objc_msgSend_offset(a5, v48, v49);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v51, v43, v50 + v44 + v31 * v47, 1);
      objc_msgSend_setBytes_length_atIndex_(a2, v52, a6, 32, 2);
      v57[0] = v27;
      v57[1] = v28;
      v57[2] = 1;
      v55 = vdupq_n_s64(0x10uLL);
      v56 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v53, v57, &v55);
    }
  }

  return 0;
}

char *sub_2399E6218(void *a1, char *a2, uint64_t a3, char *a4, char *a5, int a6)
{
  v11 = a1[19];
  v12 = a1[20];
  v124 = 0;
  v125 = 0;
  v126 = 0;
  objc_msgSend_sourceMatrixOrigin(a1, a2, a3);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  objc_msgSend_resultMatrixOrigin(a1, v13, v14);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v96 = objc_opt_class();
      v103 = NSStringFromClass(v96);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v97 = objc_opt_class();
      v103 = NSStringFromClass(v97);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v98 = objc_opt_class();
      v103 = NSStringFromClass(v98);
      MTLReportFailure();
    }

    objc_msgSend_dataType(a4, v15, v16, v103);
    objc_msgSend_dataType(a5, v17, v18);
    v21 = objc_msgSend_dataType(a4, v19, v20);
    if (v21 != objc_msgSend_dataType(a5, v22, v23) && MTLReportFailureTypeEnabled())
    {
      v99 = objc_opt_class();
      v104 = NSStringFromClass(v99);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(a4, v24, v25, v104) != 268435488)
    {
      objc_msgSend_dataType(a4, v26, v27);
    }

    if (objc_msgSend_dataType(a4, v26, v27) != 268435488 && objc_msgSend_dataType(a4, v15, v16) != 268435472 && MTLReportFailureTypeEnabled())
    {
      v100 = objc_opt_class();
      v103 = NSStringFromClass(v100);
      MTLReportFailure();
    }
  }

  v28 = *MEMORY[0x277CD73B0];
  v29 = *&a5[v28];
  v30 = *&a4[v28];
  v117 = v29;
  v118 = v30;
  v31 = *MEMORY[0x277CD73A0];
  v32 = *&a5[v31];
  v33 = *&a4[v31];
  v107 = v32;
  v119 = v32;
  v120 = v33;
  v110 = v33;
  v34 = objc_msgSend_batchStart(a1, v15, v16, v103);
  v37 = objc_msgSend_batchSize(a1, v35, v36);
  if (objc_msgSend_columns(a4, v38, v39) >= v125)
  {
    v43 = objc_msgSend_columns(a4, v40, v41);
    if (v43 - v125 < v11)
    {
      LODWORD(v11) = v43 - v125;
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  LODWORD(v42) = v11;
  v108 = v42;
  if (objc_msgSend_rows(a4, v40, v41) >= v124)
  {
    v46 = objc_msgSend_rows(a4, v44, v45);
    if (v46 - v124 < v12)
    {
      LODWORD(v12) = v46 - v124;
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v111 = a2;
  v116 = DWORD2(v108);
  v115 = __PAIR64__(v12, v108);
  if (objc_msgSend_matrices(a4, v44, v45) <= v34)
  {
    v49 = 0;
    result = objc_msgSend_matrices(a5, v47, v48);
    if (result <= v34)
    {
      return result;
    }
  }

  else
  {
    v49 = (objc_msgSend_matrices(a4, v47, v48) - v34);
    result = objc_msgSend_matrices(a5, v50, v51);
    if (result <= v34)
    {
      return result;
    }
  }

  result = objc_msgSend_matrices(a5, v53, v54);
  v57 = &result[-v34];
  if (v49 < &result[-v34])
  {
    v57 = v49;
  }

  if (v57 >= v37)
  {
    v57 = v37;
  }

  if (v57 && v11 && v12)
  {
    v109 = v57;
    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_rows(a5, v55, v56);
      if (v121 + v12 > objc_msgSend_rows(a5, v58, v59) && MTLReportFailureTypeEnabled())
      {
        v101 = objc_opt_class();
        v105 = NSStringFromClass(v101);
        MTLReportFailure();
      }

      objc_msgSend_columns(a5, v60, v61, v105);
      if (v122 + v11 > objc_msgSend_columns(a5, v62, v63) && MTLReportFailureTypeEnabled())
      {
        v102 = objc_opt_class();
        v105 = NSStringFromClass(v102);
        MTLReportFailure();
      }
    }

    if ((v30 & 0xF) != 0 || (v29 & 0xF) != 0)
    {
      v64 = 0;
      if ((v110 & 0xF) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v64 = 1;
      if ((v110 & 0xF) == 0)
      {
LABEL_35:
        v65 = (v11 > 0xFF) & ((v107 & 0xF) == 0) & v64;
LABEL_38:
        objc_msgSend_dataType(a4, v55, v56, v105);
        ComputeState = MPSLibrary::GetComputeState();
        objc_msgSend_setComputePipelineState_(v111, v67, ComputeState);
        v70 = objc_msgSend_threadExecutionWidth(ComputeState, v68, v69);
        v73 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v71, v72);
        MPSLibrary::ReleaseComputeState();
        if (v65)
        {
          if (v11 <= 0xFFF)
          {
            v79 = 64;
            if (v11 <= 0x3FF)
            {
              v79 = v70;
            }

            if (v11 <= 0x7FF)
            {
              v75 = v79;
            }

            else
            {
              v75 = 128;
            }
          }

          else
          {
            v75 = 256;
          }

          v106 = v12;
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v111, v74, 4 * v75, 0);
          v78 = MEMORY[0x277CD73B0];
        }

        else
        {
          v76 = 4 * v70;
          if ((4 * v70) <= 1)
          {
            v76 = 1;
          }

          if (v76 >= v73)
          {
            v77 = v73;
          }

          else
          {
            v77 = v76;
          }

          if (v77 >= v12)
          {
            v75 = v70;
          }

          else
          {
            v75 = v77;
          }

          v78 = MEMORY[0x277CD73B0];
          if (v75)
          {
            v106 = (v12 + v75 - 1) / v75;
          }

          else
          {
            v106 = 0;
          }
        }

        v80 = *MEMORY[0x277CD7398];
        v81 = *v78;
        v82 = *MEMORY[0x277CD73A8];
        v83 = *&a4[v82];
        v84 = v34 * v110 + v125 * (*&a4[v80] >> 3) + *&a4[v81] * v124;
        v85 = *&a5[v81];
        v86 = *&a5[v82];
        v87 = v34 * v107 + v122 * (*&a5[v80] >> 3);
        v88 = MEMORY[0x277CD7388];
        v89 = &a4[*MEMORY[0x277CD7388]];
        explicit = atomic_load_explicit(v89, memory_order_acquire);
        if (!explicit)
        {
          MPSAutoBuffer::AllocateBuffer(v89, 0);
          explicit = atomic_load_explicit(v89, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v111, v74, explicit, v84 + v83, 1);
        v92 = &a5[*v88];
        v93 = atomic_load_explicit(v92, memory_order_acquire);
        if (!v93)
        {
          MPSAutoBuffer::AllocateBuffer(v92, 0);
          v93 = atomic_load_explicit(v92, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v111, v91, v93, v87 + v85 * v121 + v86, 2);
        objc_msgSend_setBytes_length_atIndex_(v111, v94, &v115, 32, 0);
        v114[0] = v106;
        v114[1] = v109;
        v114[2] = 1;
        v112 = v75;
        v113 = vdupq_n_s64(1uLL);
        return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v111, v95, v114, &v112);
      }
    }

    v65 = 0;
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2399E6D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = *(a2 + 64);
  v13 = v7 & 1;
  v12 = (v7 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v8, &v13, 53, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v9, &v12, 53, 3);
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

__n128 sub_2399E7F10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 8) + 24 * a2);
  result = *v3;
  *a3 = *v3;
  a3[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void sub_2399E9B88(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3);
  _Unwind_Resume(a1);
}

__n128 sub_2399E9CD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8) + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

char *sub_2399E9CF4(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a7 && a8)
  {
    v11 = *&result[*MEMORY[0x277CD7370]];
    v12 = result;
    objc_msgSend_resultMatrixOrigin(result, a2, a3);
    v354 = *v369;
    v359 = objc_msgSend_rowBytes(a3, v13, v14);
    objc_msgSend_resultMatrixOrigin(v12, v15, v16);
    v356 = *&v370[8];
    v350 = a3;
    v352 = objc_msgSend_dataType(a3, v17, v18);
    v348 = objc_msgSend_columns(v12, v19, v20);
    ComputeState = MPSLibrary::GetComputeState();
    v22 = MPSLibrary::GetComputeState();
    v314 = MPSLibrary::GetComputeState();
    v312 = MPSLibrary::GetComputeState();
    v334 = MPSLibrary::GetComputeState();
    v325 = MPSLibrary::GetComputeState();
    v23 = *(v11 + 32);
    (*(*v23 + 16))(v369, v23, 6);
    v326 = *&v369[8];
    v328 = *v369;
    v324 = *&v369[16];
    (*(*v23 + 16))(v369, v23, 5);
    v336 = *v369;
    v333 = *&v369[16];
    (*(*v23 + 16))(v369, v23, 1);
    v24 = *&v369[8];
    v25 = *v369;
    v347 = *&v369[16];
    (*(*v23 + 16))(v369, v23, 0);
    v27 = *&v369[8];
    v26 = *v369;
    v341 = *&v369[16];
    (*(*v23 + 16))(v369, v23, 7);
    v315 = *v369;
    v310 = *&v369[16];
    v331 = v23;
    (*(*v23 + 16))(v369, v23, 4);
    v317 = *v369;
    v311 = *&v369[16];
    v30 = objc_msgSend_maxTotalThreadsPerThreadgroup(v22, v28, v29);
    v33 = objc_msgSend_threadExecutionWidth(v22, v31, v32);
    if (v25 == 1)
    {
      if (v24 > v30)
      {
        goto LABEL_6;
      }

LABEL_5:
      if ((v24 & (v33 - 1)) != 0)
      {
LABEL_6:
        while (v24 > v33)
        {
          if (--v24 <= v30)
          {
            goto LABEL_5;
          }
        }
      }
    }

    else if (v24 == 1)
    {
      if (v25 > v30)
      {
        goto LABEL_12;
      }

LABEL_11:
      if ((v25 & (v33 - 1)) != 0)
      {
LABEL_12:
        while (v25 > v33)
        {
          if (--v25 <= v30)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v36 = v24 * v25;
      if (v24 * v25 > v30)
      {
        while (v36 > v33)
        {
          if (--v36 <= v30 && (v36 & (v33 - 1)) == 0)
          {
            break;
          }
        }

        v37 = v36 / v33;
        v38 = v25 > v24;
        if (v25 <= v24)
        {
          v24 = v37;
        }

        else
        {
          v24 = v33;
        }

        if (v38)
        {
          v25 = v37;
        }

        else
        {
          v25 = v33;
        }
      }
    }

    *&v346 = v25;
    *(&v346 + 1) = v24;
    v39 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v34, v35);
    v42 = objc_msgSend_threadExecutionWidth(ComputeState, v40, v41);
    if (v26 == 1)
    {
      v45 = v314;
      if (v27 > v39)
      {
        goto LABEL_30;
      }

LABEL_29:
      if ((v27 & (v42 - 1)) != 0)
      {
LABEL_30:
        while (v27 > v42)
        {
          if (--v27 <= v39)
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      v45 = v314;
      if (v27 == 1)
      {
        if (v26 > v39)
        {
          goto LABEL_36;
        }

LABEL_35:
        if ((v26 & (v42 - 1)) != 0)
        {
LABEL_36:
          while (v26 > v42)
          {
            if (--v26 <= v39)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v46 = v27 * v26;
        if (v27 * v26 > v39)
        {
          while (v46 > v42)
          {
            if (--v46 <= v39 && (v46 & (v42 - 1)) == 0)
            {
              break;
            }
          }

          v47 = v46 / v42;
          v48 = v26 > v27;
          if (v26 <= v27)
          {
            v27 = v47;
          }

          else
          {
            v27 = v42;
          }

          if (v48)
          {
            v26 = v47;
          }

          else
          {
            v26 = v42;
          }
        }
      }
    }

    v345 = v26;
    v340 = v27;
    v49 = v45;
    v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(v45, v43, v44);
    v53 = objc_msgSend_threadExecutionWidth(v49, v51, v52);
    v56 = v317;
    if (v317 == 1)
    {
      v57 = *(&v317 + 1);
      v58 = a8;
      v59 = v326;
      if (*(&v317 + 1) > v50)
      {
        goto LABEL_54;
      }

LABEL_53:
      if ((v57 & (v53 - 1)) != 0)
      {
LABEL_54:
        while (v57 > v53)
        {
          if (--v57 <= v50)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
      v57 = *(&v317 + 1);
      v58 = a8;
      v59 = v326;
      if (*(&v317 + 1) == 1)
      {
        if (v317 > v50)
        {
          goto LABEL_60;
        }

LABEL_59:
        if ((v56 & (v53 - 1)) != 0)
        {
LABEL_60:
          while (v56 > v53)
          {
            if (--v56 <= v50)
            {
              goto LABEL_59;
            }
          }
        }
      }

      else
      {
        v60 = *(&v317 + 1) * v317;
        if (*(&v317 + 1) * v317 > v50)
        {
          while (v60 > v53)
          {
            if (--v60 <= v50 && (v60 & (v53 - 1)) == 0)
            {
              break;
            }
          }

          v61 = v60 / v53;
          if (v317 <= *(&v317 + 1))
          {
            v57 = v61;
          }

          else
          {
            v57 = v53;
          }

          if (v317 <= *(&v317 + 1))
          {
            v56 = v53;
          }

          else
          {
            v56 = v61;
          }
        }
      }
    }

    *&v318 = v56;
    *(&v318 + 1) = v57;
    v339 = v22;
    v62 = objc_msgSend_maxTotalThreadsPerThreadgroup(v312, v54, v55);
    v65 = objc_msgSend_threadExecutionWidth(v312, v63, v64);
    v68 = v315;
    if (v315 == 1)
    {
      v69 = *(&v315 + 1);
      if (*(&v315 + 1) > v62)
      {
        goto LABEL_78;
      }

LABEL_77:
      if ((v69 & (v65 - 1)) != 0)
      {
LABEL_78:
        while (v69 > v65)
        {
          if (--v69 <= v62)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      v69 = *(&v315 + 1);
      if (*(&v315 + 1) == 1)
      {
        if (v315 > v62)
        {
          goto LABEL_84;
        }

LABEL_83:
        if ((v68 & (v65 - 1)) != 0)
        {
LABEL_84:
          while (v68 > v65)
          {
            if (--v68 <= v62)
            {
              goto LABEL_83;
            }
          }
        }
      }

      else
      {
        v70 = *(&v315 + 1) * v315;
        if (*(&v315 + 1) * v315 > v62)
        {
          while (v70 > v65)
          {
            if (--v70 <= v62 && (v70 & (v65 - 1)) == 0)
            {
              break;
            }
          }

          v71 = v70 / v65;
          if (v315 <= *(&v315 + 1))
          {
            v69 = v71;
          }

          else
          {
            v69 = v65;
          }

          if (v315 <= *(&v315 + 1))
          {
            v68 = v65;
          }

          else
          {
            v68 = v71;
          }
        }
      }
    }

    *&v316 = v68;
    *(&v316 + 1) = v69;
    v72 = objc_msgSend_maxTotalThreadsPerThreadgroup(v325, v66, v67);
    v75 = objc_msgSend_threadExecutionWidth(v325, v73, v74);
    v78 = v328;
    if (v328 == 1)
    {
      if (v59 > v72)
      {
        goto LABEL_102;
      }

LABEL_101:
      if ((v59 & (v75 - 1)) != 0)
      {
LABEL_102:
        while (v59 > v75)
        {
          if (--v59 <= v72)
          {
            goto LABEL_101;
          }
        }
      }
    }

    else if (v59 == 1)
    {
      if (v328 > v72)
      {
        goto LABEL_108;
      }

LABEL_107:
      if ((v78 & (v75 - 1)) != 0)
      {
LABEL_108:
        while (v78 > v75)
        {
          if (--v78 <= v72)
          {
            goto LABEL_107;
          }
        }
      }
    }

    else
    {
      v79 = v59 * v328;
      if (v59 * v328 > v72)
      {
        while (v79 > v75)
        {
          if (--v79 <= v72 && (v79 & (v75 - 1)) == 0)
          {
            break;
          }
        }

        v80 = v79 / v75;
        v81 = v328 > v59;
        if (v328 <= v59)
        {
          v59 = v80;
        }

        else
        {
          v59 = v75;
        }

        if (v81)
        {
          v78 = v80;
        }

        else
        {
          v78 = v75;
        }
      }
    }

    v329 = v78;
    v82 = objc_msgSend_maxTotalThreadsPerThreadgroup(v334, v76, v77);
    v85 = objc_msgSend_threadExecutionWidth(v334, v83, v84);
    v86 = v336;
    if (v336 == 1)
    {
      v87 = *(&v336 + 1);
      if (*(&v336 + 1) > v82)
      {
        goto LABEL_126;
      }

LABEL_125:
      if ((v87 & (v85 - 1)) != 0)
      {
LABEL_126:
        while (v87 > v85)
        {
          if (--v87 <= v82)
          {
            goto LABEL_125;
          }
        }
      }
    }

    else
    {
      v87 = *(&v336 + 1);
      if (*(&v336 + 1) == 1)
      {
        if (v336 > v82)
        {
          goto LABEL_132;
        }

LABEL_131:
        if ((v86 & (v85 - 1)) != 0)
        {
LABEL_132:
          while (v86 > v85)
          {
            if (--v86 <= v82)
            {
              goto LABEL_131;
            }
          }
        }
      }

      else
      {
        v88 = *(&v336 + 1) * v336;
        if (*(&v336 + 1) * v336 > v82)
        {
          while (v88 > v85)
          {
            if (--v88 <= v82 && (v88 & (v85 - 1)) == 0)
            {
              break;
            }
          }

          v89 = v88 / v85;
          if (v336 <= *(&v336 + 1))
          {
            v87 = v89;
          }

          else
          {
            v87 = v85;
          }

          if (v336 <= *(&v336 + 1))
          {
            v86 = v85;
          }

          else
          {
            v86 = v89;
          }
        }
      }
    }

    *&v337 = v86;
    *(&v337 + 1) = v87;
    v343 = v11;
    v351 = (v354 + a6) * v359 + (v356 + a6) * (v352 >> 3);
    v90 = v331;
    (*(*v331 + 16))(v369, v331, 6);
    v91 = *&v369[24];
    (*(*v90 + 16))(v369, v90, 5);
    v92 = *&v369[32];
    (*(*v90 + 16))(v369, v90, 7);
    v94 = *&v369[24];
    v93 = *&v369[32];
    (*(*v90 + 16))(v369, v90, 4);
    v304 = *&v369[24];
    v305 = *&v369[32];
    if (a7 >= v58)
    {
      v97 = v58;
    }

    else
    {
      v97 = a7;
    }

    v366 = a7;
    v367 = v58;
    result = objc_msgSend_rowBytes(v350, v95, v96);
    v368 = result;
    v321 = v97;
    v342 = ComputeState;
    if (v97 >= 8)
    {
      v327 = v59;
      v323 = v91 * v329;
      v322 = v91 * v329 - 1;
      v332 = v92 * *(&v337 + 1);
      v330 = v92 * *(&v337 + 1) - 1;
      v309 = v94 * v316;
      v148 = v93 * *(&v316 + 1);
      v149 = 0;
      v307 = v148;
      v308 = v94 * v316 - 1;
      v306 = v148 - 1;
      v150 = 8;
      __asm { FMOV            V0.2S, #-1.0 }

      v156 = -_D0;
      v157 = v58;
      do
      {
        v170 = 0;
        v320 = v150;
        v171 = -8;
        v319 = v157;
        v361 = v149;
        do
        {
          v211 = v368;
          v355 = v157;
          v358 = v170;
          if ((v171 + 8) > 1)
          {
            v172 = v170 | v149;
            v173 = v149 + v171;
            v174 = v149 + v171 + 8;
            *v369 = 1;
            *&v369[4] = v157;
            *&v369[8] = v171 + 7;
            *&v369[12] = vdupq_n_s32(v368);
            *&v369[28] = v156;
            v175 = a2;
            objc_msgSend_setComputePipelineState_(a2, v98, v325);
            v176 = v350;
            v179 = objc_msgSend_data(v350, v177, v178);
            v173 += 7;
            v182 = v351;
            v183 = v351 + objc_msgSend_rowBytes(v350, v180, v181) * v173;
            v186 = objc_msgSend_dataType(v350, v184, v185);
            v187 = MEMORY[0x277CD73A8];
            objc_msgSend_setBuffer_offset_atIndex_(a2, v188, v179, v183 + *&v350[*MEMORY[0x277CD73A8]] + v361 * (v186 >> 3), 0);
            v191 = objc_msgSend_data(v350, v189, v190);
            v194 = objc_msgSend_dataType(v350, v192, v193) >> 3;
            v197 = objc_msgSend_rowBytes(v350, v195, v196);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v198, v191, v351 + v197 * v361 + *&v350[*v187] + v174 * v194, 1);
            v201 = objc_msgSend_data(v350, v199, v200);
            v204 = v351 + objc_msgSend_rowBytes(v350, v202, v203) * v173;
            v207 = v204 + *&v350[*v187] + v174 * (objc_msgSend_dataType(v350, v205, v206) >> 3);
            v149 = v361;
            objc_msgSend_setBuffer_offset_atIndex_(a2, v208, v201, v207, 2);
            objc_msgSend_setBytes_length_atIndex_(a2, v209, v369, 36, 3);
            *v370 = (v322 + *&v369[4]) / v323;
            *&v370[8] = vdupq_n_s64(1uLL);
            *&v364 = v329;
            *(&v364 + 1) = v327;
            v365 = v324;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v210, v370, &v364);
            v211 = v368;
            v212 = v358;
          }

          else
          {
            v212 = v171 + 8;
            v172 = v149 + v171 + 8;
            v176 = v350;
            v182 = v351;
            v175 = a2;
            v187 = MEMORY[0x277CD73A8];
          }

          *v369 = v366;
          *&v369[4] = 1;
          *&v369[8] = v212;
          *&v369[12] = vdupq_n_s32(v211);
          *&v369[28] = v156;
          objc_msgSend_setComputePipelineState_(v175, v98, v334);
          v215 = objc_msgSend_data(v176, v213, v214);
          v218 = objc_msgSend_dataType(v176, v216, v217) >> 3;
          v221 = objc_msgSend_rowBytes(v176, v219, v220);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v222, v215, v182 + v221 * v149 + *&v176[*v187] + v172 * v218, 0);
          v225 = objc_msgSend_data(v176, v223, v224);
          v228 = v182 + objc_msgSend_rowBytes(v176, v226, v227) * v172;
          v231 = objc_msgSend_dataType(v176, v229, v230);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v232, v225, v228 + *&v176[*v187] + v149 * (v231 >> 3), 1);
          v235 = objc_msgSend_data(v176, v233, v234);
          v238 = objc_msgSend_rowBytes(v176, v236, v237);
          v241 = objc_msgSend_dataType(v176, v239, v240);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v242, v235, *&v176[*v187] + v182 + (v238 + (v241 >> 3)) * v172, 2);
          objc_msgSend_setBytes_length_atIndex_(v175, v243, v369, 36, 3);
          *v370 = 1;
          *&v370[8] = (v330 + *v369) / v332;
          *&v370[16] = 1;
          v364 = v337;
          v365 = v333;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v175, v244, v370, &v364);
          *&v362 = __PAIR64__(v348, v366);
          DWORD2(v362) = v172 + a6;
          HIDWORD(v362) = v172 + a6;
          v363 = v368;
          *v370 = v362;
          *&v370[16] = v368;
          sub_2399EB1B0(v343, v175, v176, a4, v370, a5 + 4 * (v172 + a6));
          v101 = v339;
          objc_msgSend_setComputePipelineState_(v175, v245, v339);
          v248 = objc_msgSend_data(v176, v246, v247);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v249, v248, *&v176[*v187], 0);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v250, a4, a5 + 4 * (v172 + a6), 1);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v251, a9, 0, 2);
          objc_msgSend_setBytes_length_atIndex_(v175, v252, &v362, 20, 3);
          *v370 = (v346 - 1 + DWORD1(v362)) / v346;
          v353 = vdupq_n_s64(1uLL);
          *&v370[8] = v353;
          v364 = v346;
          v365 = v347;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v175, v253, v370, &v364);
          objc_msgSend_setComputePipelineState_(v175, v254, v342);
          v257 = objc_msgSend_data(v176, v255, v256);
          v260 = objc_msgSend_rowBytes(v176, v258, v259);
          v263 = v260 + (objc_msgSend_dataType(v176, v261, v262) >> 3);
          v149 = v361;
          objc_msgSend_setBuffer_offset_atIndex_(v175, v264, v257, *&v176[*v187] + v182 + v263 * v172, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v175, v265, a9, 0, 1);
          objc_msgSend_setBytes_length_atIndex_(v175, v266, &v366, 12, 2);
          *v370 = (v345 - 1 + v366) / v345;
          *&v370[8] = v353;
          *&v364 = v345;
          *(&v364 + 1) = v340;
          v365 = v341;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v175, v267, v370, &v364);
          --v366;
          v170 = v358 + 1;
          v157 = v355 - 1;
        }

        while (!__CFADD__(v171++, 1));
        v100 = v320;
        v268 = MEMORY[0x277CD73A8];
        if (v320 < a8)
        {
          *v369 = 1;
          *&v369[4] = a8 - v361 - 8;
          *&v369[8] = 7;
          v269 = &v368;
          v270 = vld1q_dup_f32(v269);
          *&v369[12] = v270;
          *&v369[28] = v156;
          objc_msgSend_setComputePipelineState_(a2, v98, v325);
          v273 = objc_msgSend_data(v350, v271, v272);
          v276 = v351 + objc_msgSend_rowBytes(v350, v274, v275) * (v361 | 7);
          v279 = objc_msgSend_dataType(v350, v277, v278);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v280, v273, v276 + *&v350[*v268] + v361 * (v279 >> 3), 0);
          v283 = objc_msgSend_data(v350, v281, v282);
          v286 = objc_msgSend_dataType(v350, v284, v285) >> 3;
          v289 = objc_msgSend_rowBytes(v350, v287, v288);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v290, v283, v351 + v289 * v361 + *&v350[*v268] + v320 * v286, 1);
          v293 = objc_msgSend_data(v350, v291, v292);
          v296 = v351 + objc_msgSend_rowBytes(v350, v294, v295) * (v361 | 7);
          v299 = objc_msgSend_dataType(v350, v297, v298);
          v300 = v296 + *&v350[*v268];
          v101 = v339;
          objc_msgSend_setBuffer_offset_atIndex_(a2, v301, v293, v300 + v320 * (v299 >> 3), 2);
          objc_msgSend_setBytes_length_atIndex_(a2, v302, v369, 36, 3);
          *v370 = (v322 + *&v369[4]) / v323;
          *&v370[8] = vdupq_n_s64(1uLL);
          *&v364 = v329;
          *(&v364 + 1) = v327;
          v365 = v324;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v303, v370, &v364);
        }

        objc_msgSend_setComputePipelineState_(a2, v98, v312);
        LODWORD(v364) = v366 + 8;
        DWORD1(v364) = v367 - v361;
        DWORD2(v364) = v368;
        v160 = objc_msgSend_data(v350, v158, v159);
        v163 = objc_msgSend_rowBytes(v350, v161, v162);
        v166 = v163 + (objc_msgSend_dataType(v350, v164, v165) >> 3);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v167, v160, *&v350[*v268] + v351 + v166 * v361, 0);
        objc_msgSend_setBytes_length_atIndex_(a2, v168, &v364, 12, 1);
        *v369 = (v308 + v364) / v309;
        *&v369[8] = (v306 + DWORD1(v364)) / v307;
        *&v369[16] = 1;
        *v370 = v316;
        *&v370[16] = v310;
        result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v169, v369, v370);
        v150 = v320 + 8;
        v149 = v361 + 8;
        v157 = v319 - 8;
        v99 = v321;
      }

      while (v320 + 8 <= v321);
    }

    else
    {
      v99 = v97;
      v100 = 0;
      v101 = v339;
    }

    v103 = v347;
    v102 = v348;
    v104 = v101;
    v105 = *(&v346 + 1);
    v106 = v100;
    v107 = MEMORY[0x277CD73A8];
    if (v100 < v99)
    {
      v108 = v366;
      v109 = -v100;
      v110 = v100 + a6;
      v111 = a5 + 4 * (v100 + a6);
      v357 = vdupq_n_s64(1uLL);
      do
      {
        v360 = v111;
        *&v364 = __PAIR64__(v102, v108);
        DWORD2(v364) = v110;
        HIDWORD(v364) = v110;
        LODWORD(v365) = v368;
        *v369 = v364;
        *&v369[16] = v368;
        sub_2399EB1B0(v343, a2, v350, a4, v369, v111);
        objc_msgSend_setComputePipelineState_(a2, v112, v104);
        v115 = objc_msgSend_data(v350, v113, v114);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v116, v115, *&v350[*v107], 0);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v117, a4, v360, 1);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v118, a9, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(a2, v119, &v364, 20, 3);
        *v369 = (v346 - 1 + DWORD1(v364)) / v346;
        *&v369[8] = v357;
        *v370 = v346;
        *&v370[8] = v105;
        *&v370[16] = v103;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v120, v369, v370);
        objc_msgSend_setComputePipelineState_(a2, v121, v342);
        v124 = objc_msgSend_data(v350, v122, v123);
        v127 = objc_msgSend_rowBytes(v350, v125, v126);
        v130 = objc_msgSend_dataType(v350, v128, v129);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v131, v124, *&v350[*MEMORY[0x277CD73A8]] + v351 + (v127 + (v130 >> 3)) * v106, 0);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v132, a9, 0, 1);
        objc_msgSend_setBytes_length_atIndex_(a2, v133, &v366, 12, 2);
        *v369 = (v345 - 1 + v366) / v345;
        *&v369[8] = v357;
        *v370 = v345;
        *&v370[8] = v340;
        *&v370[16] = v341;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v134, v369, v370);
        objc_msgSend_setComputePipelineState_(a2, v135, v314);
        LODWORD(v362) = v366;
        DWORD1(v362) = v109 + v367;
        DWORD2(v362) = v368;
        v138 = objc_msgSend_data(v350, v136, v137);
        v141 = objc_msgSend_rowBytes(v350, v139, v140);
        v144 = v141 + (objc_msgSend_dataType(v350, v142, v143) >> 3);
        v105 = *(&v346 + 1);
        v103 = v347;
        v107 = MEMORY[0x277CD73A8];
        objc_msgSend_setBuffer_offset_atIndex_(a2, v145, v138, *&v350[*MEMORY[0x277CD73A8]] + v351 + v144 * v106, 0);
        objc_msgSend_setBytes_length_atIndex_(a2, v146, &v362, 12, 1);
        *v369 = (v304 * v318 - 1 + v362) / (v304 * v318);
        *&v369[8] = (v305 * *(&v318 + 1) - 1 + DWORD1(v362)) / (v305 * *(&v318 + 1));
        *&v369[16] = 1;
        *v370 = v318;
        *&v370[16] = v311;
        result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v147, v369, v370);
        v102 = v348;
        v108 = v366 - 1;
        ++v106;
        --v366;
        --v109;
        v111 = v360 + 4;
        ++v110;
      }

      while (v321 != v106);
    }
  }

  return result;
}

void **sub_2399EB1B0(void **result, void *a2, char *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*a5)
  {
    v11 = result;
    ComputeState = MPSLibrary::GetComputeState();
    v13 = MPSLibrary::GetComputeState();
    (*(*v11[4] + 16))(&v66);
    v14 = v66;
    v59 = v67.i64[1];
    v15 = v67.i64[0];
    v18 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v16, v17);
    v21 = objc_msgSend_threadExecutionWidth(ComputeState, v19, v20);
    if (v14 == 1)
    {
      if (v15 > v18)
      {
        goto LABEL_5;
      }

LABEL_4:
      if ((v15 & (v21 - 1)) != 0)
      {
LABEL_5:
        while (v15 > v21)
        {
          if (--v15 <= v18)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else if (v15 == 1)
    {
      if (v14 > v18)
      {
        goto LABEL_11;
      }

LABEL_10:
      if ((v14 & (v21 - 1)) != 0)
      {
LABEL_11:
        while (v14 > v21)
        {
          if (--v14 <= v18)
          {
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
      v24 = v15 * v14;
      if (v15 * v14 > v18)
      {
        while (v24 > v21)
        {
          if (--v24 <= v18 && (v24 & (v21 - 1)) == 0)
          {
            break;
          }
        }

        v25 = v24 / v21;
        v26 = v14 > v15;
        if (v14 <= v15)
        {
          v15 = v25;
        }

        else
        {
          v15 = v21;
        }

        if (v26)
        {
          v14 = v25;
        }

        else
        {
          v14 = v21;
        }
      }
    }

    v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v22, v23);
    v30 = objc_msgSend_threadExecutionWidth(v13, v28, v29);
    v62 = a6;
    if (v14 == 1)
    {
      v32 = ComputeState;
      v33 = v59;
      if (v15 > v27)
      {
        goto LABEL_29;
      }

LABEL_28:
      if ((v15 & (v30 - 1)) != 0)
      {
LABEL_29:
        while (v15 > v30)
        {
          if (--v15 <= v27)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v32 = ComputeState;
      if (v15 == 1)
      {
        v33 = v59;
        if (v14 > v27)
        {
          goto LABEL_35;
        }

LABEL_34:
        if ((v14 & (v30 - 1)) != 0)
        {
LABEL_35:
          while (v14 > v30)
          {
            if (--v14 <= v27)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v34 = v15 * v14;
        v33 = v59;
        if (v15 * v14 > v27)
        {
          while (v34 > v30)
          {
            if (--v34 <= v27 && (v34 & (v30 - 1)) == 0)
            {
              break;
            }
          }

          v35 = v34 / v30;
          v36 = v14 > v15;
          if (v14 <= v15)
          {
            v15 = v35;
          }

          else
          {
            v15 = v30;
          }

          if (v36)
          {
            v14 = v35;
          }

          else
          {
            v14 = v30;
          }
        }
      }
    }

    v37 = 2 * v14 - 1;
    v60 = (v37 + *a5) / (2 * v14);
    objc_msgSend_setComputePipelineState_(a2, v31, v32, v13);
    v40 = objc_msgSend_data(a3, v38, v39);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v41, v40, *&a3[*MEMORY[0x277CD73A8]], 0);
    v42 = a4;
    v43 = a4;
    v44 = v62;
    objc_msgSend_setBuffer_offset_atIndex_(a2, v45, v42, v62, 1);
    objc_msgSend_setBytes_length_atIndex_(a2, v46, a5, 20, 2);
    v65 = v33;
    v66 = v60;
    v67 = vdupq_n_s64(1uLL);
    v63 = v14;
    v64 = v15;
    result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v47, &v66, &v63);
    if (2 * v14 < *a5)
    {
      result = objc_msgSend_setComputePipelineState_(a2, v48, v58);
      v51 = (2 * v14 + *a5 - 1) / (2 * v14);
      *a5 = v51;
      if (v51 >= 2)
      {
        v61 = vdupq_n_s64(1uLL);
        do
        {
          v52 = objc_msgSend_data(a3, v49, v50);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v53, v52, *&a3[*MEMORY[0x277CD73A8]], 0);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v54, v43, v44, 1);
          objc_msgSend_setBytes_length_atIndex_(a2, v55, a5, 20, 2);
          v56 = (v37 + *a5) / (2 * v14);
          v65 = v33;
          v66 = v56;
          v67 = v61;
          v63 = v14;
          v64 = v15;
          result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v57, &v66, &v63);
          *a5 = v56;
          v26 = v56 > 1;
          v44 = v62;
        }

        while (v26);
      }
    }
  }

  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}