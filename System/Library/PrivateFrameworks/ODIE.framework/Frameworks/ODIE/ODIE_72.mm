void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v156 = 261;
    v154 = "CConv";
    v155 = 5;
    v9 = mlir::StringAttr::get(v8, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v156 = 261;
    v154 = "alignment";
    v155 = 9;
    v12 = mlir::StringAttr::get(v11, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v156 = 261;
    v154 = "always_inline";
    v155 = 13;
    v15 = mlir::StringAttr::get(v14, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v156 = 261;
    v154 = "approx_func_fp_math";
    v155 = 19;
    v18 = mlir::StringAttr::get(v17, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v156 = 261;
    v154 = "arg_attrs";
    v155 = 9;
    v21 = mlir::StringAttr::get(v20, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v156 = 261;
    v154 = "arm_in_za";
    v155 = 9;
    v24 = mlir::StringAttr::get(v23, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v156 = 261;
    v154 = "arm_inout_za";
    v155 = 12;
    v27 = mlir::StringAttr::get(v26, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v156 = 261;
    v154 = "arm_locally_streaming";
    v155 = 21;
    v30 = mlir::StringAttr::get(v29, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v156 = 261;
    v154 = "arm_new_za";
    v155 = 10;
    v33 = mlir::StringAttr::get(v32, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v156 = 261;
    v154 = "arm_out_za";
    v155 = 10;
    v36 = mlir::StringAttr::get(v35, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v156 = 261;
    v154 = "arm_preserves_za";
    v155 = 16;
    v39 = mlir::StringAttr::get(v38, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v156 = 261;
    v154 = "arm_streaming";
    v155 = 13;
    v42 = mlir::StringAttr::get(v41, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v156 = 261;
    v154 = "arm_streaming_compatible";
    v155 = 24;
    v45 = mlir::StringAttr::get(v44, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v156 = 261;
    v154 = "comdat";
    v155 = 6;
    v48 = mlir::StringAttr::get(v47, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v156 = 261;
    v154 = "convergent";
    v155 = 10;
    v51 = mlir::StringAttr::get(v50, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v51, v49);
  }

  v52 = v6[15];
  if (v52)
  {
    v53 = *(**v52 + 32);
    v156 = 261;
    v154 = "denormal_fp_math";
    v155 = 16;
    v54 = mlir::StringAttr::get(v53, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v54, v52);
  }

  v55 = v6[16];
  if (v55)
  {
    v56 = *(**v55 + 32);
    v156 = 261;
    v154 = "denormal_fp_math_f32";
    v155 = 20;
    v57 = mlir::StringAttr::get(v56, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v57, v55);
  }

  v58 = v6[17];
  if (v58)
  {
    v59 = *(**v58 + 32);
    v156 = 261;
    v154 = "dso_local";
    v155 = 9;
    v60 = mlir::StringAttr::get(v59, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v60, v58);
  }

  v61 = v6[18];
  if (v61)
  {
    v62 = *(**v61 + 32);
    v156 = 261;
    v154 = "fp_contract";
    v155 = 11;
    v63 = mlir::StringAttr::get(v62, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v63, v61);
  }

  v64 = v6[19];
  if (v64)
  {
    v65 = *(**v64 + 32);
    v156 = 261;
    v154 = "frame_pointer";
    v155 = 13;
    v66 = mlir::StringAttr::get(v65, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v66, v64);
  }

  v67 = v6[20];
  if (v67)
  {
    v68 = *(**v67 + 32);
    v156 = 261;
    v154 = "function_entry_count";
    v155 = 20;
    v69 = mlir::StringAttr::get(v68, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v69, v67);
  }

  v70 = v6[21];
  if (v70)
  {
    v71 = *(**v70 + 32);
    v156 = 261;
    v154 = "function_type";
    v155 = 13;
    v72 = mlir::StringAttr::get(v71, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v72, v70);
  }

  v73 = v6[22];
  if (v73)
  {
    v74 = *(**v73 + 32);
    v156 = 261;
    v154 = "garbageCollector";
    v155 = 16;
    v75 = mlir::StringAttr::get(v74, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v75, v73);
  }

  v76 = v6[23];
  if (v76)
  {
    v77 = *(**v76 + 32);
    v156 = 261;
    v154 = "intel_reqd_sub_group_size";
    v155 = 25;
    v78 = mlir::StringAttr::get(v77, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v78, v76);
  }

  v79 = v6[24];
  if (v79)
  {
    v80 = *(**v79 + 32);
    v156 = 261;
    v154 = "linkage";
    v155 = 7;
    v81 = mlir::StringAttr::get(v80, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v81, v79);
  }

  v82 = v6[25];
  if (v82)
  {
    v83 = *(**v82 + 32);
    v156 = 261;
    v154 = "memory_effects";
    v155 = 14;
    v84 = mlir::StringAttr::get(v83, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v84, v82);
  }

  v85 = v6[26];
  if (v85)
  {
    v86 = *(**v85 + 32);
    v156 = 261;
    v154 = "no_infs_fp_math";
    v155 = 15;
    v87 = mlir::StringAttr::get(v86, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v87, v85);
  }

  v88 = v6[27];
  if (v88)
  {
    v89 = *(**v88 + 32);
    v156 = 261;
    v154 = "no_inline";
    v155 = 9;
    v90 = mlir::StringAttr::get(v89, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v90, v88);
  }

  v91 = v6[28];
  if (v91)
  {
    v92 = *(**v91 + 32);
    v156 = 261;
    v154 = "no_nans_fp_math";
    v155 = 15;
    v93 = mlir::StringAttr::get(v92, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v93, v91);
  }

  v94 = v6[29];
  if (v94)
  {
    v95 = *(**v94 + 32);
    v156 = 261;
    v154 = "no_signed_zeros_fp_math";
    v155 = 23;
    v96 = mlir::StringAttr::get(v95, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v96, v94);
  }

  v97 = v6[30];
  if (v97)
  {
    v98 = *(**v97 + 32);
    v156 = 261;
    v154 = "no_unwind";
    v155 = 9;
    v99 = mlir::StringAttr::get(v98, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v99, v97);
  }

  v100 = v6[31];
  if (v100)
  {
    v101 = *(**v100 + 32);
    v156 = 261;
    v154 = "optimize_none";
    v155 = 13;
    v102 = mlir::StringAttr::get(v101, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v102, v100);
  }

  v103 = v6[32];
  if (v103)
  {
    v104 = *(**v103 + 32);
    v156 = 261;
    v154 = "passthrough";
    v155 = 11;
    v105 = mlir::StringAttr::get(v104, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v105, v103);
  }

  v106 = v6[33];
  if (v106)
  {
    v107 = *(**v106 + 32);
    v156 = 261;
    v154 = "personality";
    v155 = 11;
    v108 = mlir::StringAttr::get(v107, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v108, v106);
  }

  v109 = v6[34];
  if (v109)
  {
    v110 = *(**v109 + 32);
    v156 = 261;
    v154 = "reqd_work_group_size";
    v155 = 20;
    v111 = mlir::StringAttr::get(v110, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v111, v109);
  }

  v112 = v6[35];
  if (v112)
  {
    v113 = *(**v112 + 32);
    v156 = 261;
    v154 = "res_attrs";
    v155 = 9;
    v114 = mlir::StringAttr::get(v113, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v114, v112);
  }

  v115 = v6[36];
  if (v115)
  {
    v116 = *(**v115 + 32);
    v156 = 261;
    v154 = "section";
    v155 = 7;
    v117 = mlir::StringAttr::get(v116, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v117, v115);
  }

  v118 = v6[37];
  if (v118)
  {
    v119 = *(**v118 + 32);
    v156 = 261;
    v154 = "sym_name";
    v155 = 8;
    v120 = mlir::StringAttr::get(v119, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v120, v118);
  }

  v121 = v6[38];
  if (v121)
  {
    v122 = *(**v121 + 32);
    v156 = 261;
    v154 = "sym_visibility";
    v155 = 14;
    v123 = mlir::StringAttr::get(v122, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v123, v121);
  }

  v124 = v6[39];
  if (v124)
  {
    v125 = *(**v124 + 32);
    v156 = 261;
    v154 = "target_cpu";
    v155 = 10;
    v126 = mlir::StringAttr::get(v125, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v126, v124);
  }

  v127 = v6[40];
  if (v127)
  {
    v128 = *(**v127 + 32);
    v156 = 261;
    v154 = "target_features";
    v155 = 15;
    v129 = mlir::StringAttr::get(v128, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v129, v127);
  }

  v130 = v6[41];
  if (v130)
  {
    v131 = *(**v130 + 32);
    v156 = 261;
    v154 = "tune_cpu";
    v155 = 8;
    v132 = mlir::StringAttr::get(v131, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v132, v130);
  }

  v133 = v6[42];
  if (v133)
  {
    v134 = *(**v133 + 32);
    v156 = 261;
    v154 = "unnamed_addr";
    v155 = 12;
    v135 = mlir::StringAttr::get(v134, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v135, v133);
  }

  v136 = v6[43];
  if (v136)
  {
    v137 = *(**v136 + 32);
    v156 = 261;
    v154 = "unsafe_fp_math";
    v155 = 14;
    v138 = mlir::StringAttr::get(v137, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v138, v136);
  }

  v139 = v6[44];
  if (v139)
  {
    v140 = *(**v139 + 32);
    v156 = 261;
    v154 = "vec_type_hint";
    v155 = 13;
    v141 = mlir::StringAttr::get(v140, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v141, v139);
  }

  v142 = v6[45];
  if (v142)
  {
    v143 = *(**v142 + 32);
    v156 = 261;
    v154 = "visibility_";
    v155 = 11;
    v144 = mlir::StringAttr::get(v143, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v144, v142);
  }

  v145 = v6[46];
  if (v145)
  {
    v146 = *(**v145 + 32);
    v156 = 261;
    v154 = "vscale_range";
    v155 = 12;
    v147 = mlir::StringAttr::get(v146, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v147, v145);
  }

  v148 = v6[47];
  if (v148)
  {
    v149 = *(**v148 + 32);
    v156 = 261;
    v154 = "will_return";
    v155 = 11;
    v150 = mlir::StringAttr::get(v149, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v150, v148);
  }

  v151 = v6[48];
  if (v151)
  {
    v152 = *(**v151 + 32);
    v156 = 261;
    v154 = "work_group_size_hint";
    v155 = 20;
    v153 = mlir::StringAttr::get(v152, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v153, v151);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v14, "alignment", 9, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v17, "always_inline", 0xD, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v20, "approx_func_fp_math", 0x13, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v23, "arg_attrs", 9, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v26, "arm_in_za", 9, a4, a5))
            {
              v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
              if ((v28 & 1) == 0 || (v29 = v27[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v29, "arm_inout_za", 0xC, a4, a5))
              {
                v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
                if ((v31 & 1) == 0 || (v32 = v30[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v32, "arm_locally_streaming", 0x15, a4, a5))
                {
                  v33 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 64));
                  if ((v34 & 1) == 0 || (v35 = v33[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v35, "arm_new_za", 0xA, a4, a5))
                  {
                    v36 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 72));
                    if ((v37 & 1) == 0 || (v38 = v36[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v38, "arm_out_za", 0xA, a4, a5))
                    {
                      v39 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 80));
                      if ((v40 & 1) == 0 || (v41 = v39[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v41, "arm_preserves_za", 0x10, a4, a5))
                      {
                        v42 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 88));
                        if ((v43 & 1) == 0 || (v44 = v42[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v44, "arm_streaming", 0xD, a4, a5))
                        {
                          v45 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 96));
                          if ((v46 & 1) == 0 || (v47 = v45[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v47, "arm_streaming_compatible", 0x18, a4, a5))
                          {
                            v48 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 104));
                            if ((v49 & 1) == 0 || (v50 = v48[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(v50, a4, a5))
                            {
                              v51 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 112));
                              if ((v52 & 1) == 0 || (v53 = v51[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v53, "convergent", 0xA, a4, a5))
                              {
                                v54 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 120));
                                if ((v55 & 1) == 0 || (v56 = v54[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v56, "denormal_fp_math", 0x10, a4, a5))
                                {
                                  v57 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 128));
                                  if ((v58 & 1) == 0 || (v59 = v57[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v59, "denormal_fp_math_f32", 0x14, a4, a5))
                                  {
                                    v60 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 136));
                                    if ((v61 & 1) == 0 || (v62 = v60[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v62, "dso_local", 9, a4, a5))
                                    {
                                      v63 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 144));
                                      if ((v64 & 1) == 0 || (v65 = v63[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v65, "fp_contract", 0xB, a4, a5))
                                      {
                                        v66 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 152));
                                        if ((v67 & 1) == 0 || (v68 = v66[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(v68, a4, a5))
                                        {
                                          v69 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 160));
                                          if ((v70 & 1) == 0 || (v71 = v69[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v71, "function_entry_count", 0x14, a4, a5))
                                          {
                                            v72 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 168));
                                            if ((v73 & 1) == 0 || (v74 = v72[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v74, "function_type", 0xD, a4, a5))
                                            {
                                              v75 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 176));
                                              if ((v76 & 1) == 0 || (v77 = v75[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v77, "garbageCollector", 0x10, a4, a5))
                                              {
                                                v78 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 184));
                                                if ((v79 & 1) == 0 || (v80 = v78[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(v80, a4, a5))
                                                {
                                                  v81 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 192));
                                                  if ((v82 & 1) == 0 || (v83 = v81[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v83, a4, a5))
                                                  {
                                                    v84 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 200));
                                                    if ((v85 & 1) == 0 || (v86 = v84[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v86, a4, a5))
                                                    {
                                                      v87 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 208));
                                                      if ((v88 & 1) == 0 || (v89 = v87[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v89, "no_infs_fp_math", 0xF, a4, a5))
                                                      {
                                                        v90 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 216));
                                                        if ((v91 & 1) == 0 || (v92 = v90[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v92, "no_inline", 9, a4, a5))
                                                        {
                                                          v93 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 224));
                                                          if ((v94 & 1) == 0 || (v95 = v93[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v95, "no_nans_fp_math", 0xF, a4, a5))
                                                          {
                                                            v96 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 232));
                                                            if ((v97 & 1) == 0 || (v98 = v96[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v98, "no_signed_zeros_fp_math", 0x17, a4, a5))
                                                            {
                                                              v99 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 240));
                                                              if ((v100 & 1) == 0 || (v101 = v99[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v101, "no_unwind", 9, a4, a5))
                                                              {
                                                                v102 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 248));
                                                                if ((v103 & 1) == 0 || (v104 = v102[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v104, "optimize_none", 0xD, a4, a5))
                                                                {
                                                                  v105 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 256));
                                                                  if ((v106 & 1) == 0 || (v107 = v105[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v107, "passthrough", 0xB, a4, a5))
                                                                  {
                                                                    v108 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 264));
                                                                    if ((v109 & 1) == 0 || (v110 = v108[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v110, "personality", 0xB, a4, a5))
                                                                    {
                                                                      v111 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 272));
                                                                      if ((v112 & 1) == 0 || (v113 = v111[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v113, "reqd_work_group_size", 0x14, a4, a5))
                                                                      {
                                                                        v114 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 280));
                                                                        if ((v115 & 1) == 0 || (v116 = v114[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v116, "res_attrs", 9, a4, a5))
                                                                        {
                                                                          v117 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 288));
                                                                          if ((v118 & 1) == 0 || (v119 = v117[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v119, "section", 7, a4, a5))
                                                                          {
                                                                            v120 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 296));
                                                                            if ((v121 & 1) == 0 || (v122 = v120[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v122, "sym_name", 8, a4, a5))
                                                                            {
                                                                              v123 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 304));
                                                                              if ((v124 & 1) == 0 || (v125 = v123[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v125, "sym_visibility", 0xE, a4, a5))
                                                                              {
                                                                                v126 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 312));
                                                                                if ((v127 & 1) == 0 || (v128 = v126[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v128, "target_cpu", 0xA, a4, a5))
                                                                                {
                                                                                  v129 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 320));
                                                                                  if ((v130 & 1) == 0 || (v131 = v129[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(v131, a4, a5))
                                                                                  {
                                                                                    v132 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 328));
                                                                                    if ((v133 & 1) == 0 || (v134 = v132[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v134, "tune_cpu", 8, a4, a5))
                                                                                    {
                                                                                      v135 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 336));
                                                                                      if ((v136 & 1) == 0 || (v137 = v135[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v137, a4, a5))
                                                                                      {
                                                                                        v138 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 344));
                                                                                        if ((v139 & 1) == 0 || (v140 = v138[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v140, "unsafe_fp_math", 0xE, a4, a5))
                                                                                        {
                                                                                          v141 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 352));
                                                                                          if ((v142 & 1) == 0 || (v143 = v141[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(v143, a4, a5))
                                                                                          {
                                                                                            v144 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 360));
                                                                                            if ((v145 & 1) == 0 || (v146 = v144[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v146, a4, a5))
                                                                                            {
                                                                                              v147 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 368));
                                                                                              if ((v148 & 1) == 0 || (v149 = v147[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(v149, a4, a5))
                                                                                              {
                                                                                                v150 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 376));
                                                                                                if ((v151 & 1) == 0 || (v152 = v150[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v152, "will_return", 0xB, a4, a5))
                                                                                                {
                                                                                                  v153 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 384));
                                                                                                  if ((v154 & 1) == 0)
                                                                                                  {
                                                                                                    return 1;
                                                                                                  }

                                                                                                  v155 = v153[1];
                                                                                                  if (!v155 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v155, "work_group_size_hint", 0x14, a4, a5))
                                                                                                  {
                                                                                                    return 1;
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
        }
      }
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::initProperties(int a1, uint64_t a2, _OWORD *__dst, void *__src)
{
  if (__src)
  {
    memcpy(__dst, __src, 0x188uLL);
  }

  else
  {
    *(__dst + 48) = 0;
    __dst[22] = 0u;
    __dst[23] = 0u;
    __dst[20] = 0u;
    __dst[21] = 0u;
    __dst[18] = 0u;
    __dst[19] = 0u;
    __dst[16] = 0u;
    __dst[17] = 0u;
    __dst[14] = 0u;
    __dst[15] = 0u;
    __dst[12] = 0u;
    __dst[13] = 0u;
    __dst[10] = 0u;
    __dst[11] = 0u;
    __dst[8] = 0u;
    __dst[9] = 0u;
    __dst[6] = 0u;
    __dst[7] = 0u;
    __dst[4] = 0u;
    __dst[5] = 0u;
    __dst[2] = 0u;
    __dst[3] = 0u;
    *__dst = 0u;
    __dst[1] = 0u;
  }

  return mlir::LLVM::LLVMFuncOp::populateDefaultProperties(a2, __dst);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v181 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v177, a6, a2, a3);
    if (v177)
    {
      mlir::Diagnostic::operator<<<42ul>(v178, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "CConv", 5uLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_37:
          if (v177)
          {
            LODWORD(v176[0]) = 0;
            v176[1] = v13;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v179, v176, 1);
            v26 = v179 + 24 * v180;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v180;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "always_inline", 0xDuLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_37;
        }

        a3[2] = v13;
      }
    }

    v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "approx_func_fp_math", 0x13uLL);
    if (v19)
    {
      v13 = *(v18 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v20 = v13[1], *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v20[2] != 1)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_37;
        }

        a3[3] = v13;
      }
    }

    v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
    if (v22)
    {
      v23 = *(v21 + 8);
      v176[0] = v23;
      if (v23)
      {
        if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[4] = v23;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_in_za", 9uLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v176[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[5] = v30;
      }
    }

    v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_inout_za", 0xCuLL);
    if (v32)
    {
      v33 = *(v31 + 8);
      v176[0] = v33;
      if (v33)
      {
        if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        a3[6] = v33;
      }
    }

    v35 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_locally_streaming", 0x15uLL);
    if (v36)
    {
      v37 = *(v35 + 8);
      v176[0] = v37;
      if (v37)
      {
        if (*(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_142:
          if (v177)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v178, v176);
          }

          goto LABEL_4;
        }

        a3[7] = v37;
      }
    }

    v38 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_new_za", 0xAuLL);
    if (v39)
    {
      v40 = *(v38 + 8);
      v176[0] = v40;
      if (v40)
      {
        if (*(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[8] = v40;
      }
    }

    v42 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_out_za", 0xAuLL);
    if (v43)
    {
      v44 = *(v42 + 8);
      v176[0] = v44;
      if (v44)
      {
        if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[9] = v44;
      }
    }

    v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_preserves_za", 0x10uLL);
    if (v46)
    {
      v47 = *(v45 + 8);
      v176[0] = v47;
      if (v47)
      {
        if (*(*v47 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_109;
        }

        a3[10] = v47;
      }
    }

    v49 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_streaming", 0xDuLL);
    if (v50)
    {
      v51 = *(v49 + 8);
      v176[0] = v51;
      if (v51)
      {
        if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[11] = v51;
      }
    }

    v53 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_streaming_compatible", 0x18uLL);
    if (v54)
    {
      v55 = *(v53 + 8);
      v176[0] = v55;
      if (v55)
      {
        if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[12] = v55;
      }
    }

    v56 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "comdat", 6uLL);
    if (v57)
    {
      v58 = *(v56 + 8);
      v176[0] = v58;
      if (v58)
      {
        if (*(*v58 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[13] = v58;
      }
    }

    v59 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "convergent", 0xAuLL);
    if (v60)
    {
      v61 = *(v59 + 8);
      v176[0] = v61;
      if (v61)
      {
        if (*(*v61 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[14] = v61;
      }
    }

    v62 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "denormal_fp_math", 0x10uLL);
    if (v63)
    {
      v64 = *(v62 + 8);
      v176[0] = v64;
      if (v64)
      {
        if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_109;
        }

        a3[15] = v64;
      }
    }

    v65 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "denormal_fp_math_f32", 0x14uLL);
    if (v66)
    {
      v67 = *(v65 + 8);
      v176[0] = v67;
      if (v67)
      {
        if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[16] = v67;
      }
    }

    v69 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dso_local", 9uLL);
    if (v70)
    {
      v71 = *(v69 + 8);
      v176[0] = v71;
      if (v71)
      {
        if (*(*v71 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[17] = v71;
      }
    }

    v72 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fp_contract", 0xBuLL);
    if (v73)
    {
      v74 = *(v72 + 8);
      v176[0] = v74;
      if (v74)
      {
        if (*(*v74 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[18] = v74;
      }
    }

    v76 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "frame_pointer", 0xDuLL);
    if (v77)
    {
      v78 = *(v76 + 8);
      v176[0] = v78;
      if (v78)
      {
        if (*(*v78 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[19] = v78;
      }
    }

    v79 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_entry_count", 0x14uLL);
    if (v80)
    {
      v81 = *(v79 + 8);
      v176[0] = v81;
      if (v81)
      {
        if (*(*v81 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[20] = v81;
      }
    }

    v82 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_type", 0xDuLL);
    if (v83)
    {
      v84 = *(v82 + 8);
      v176[0] = v84;
      if (v84)
      {
        if (*(*v84 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[21] = v84;
      }
    }

    v85 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "garbageCollector", 0x10uLL);
    if (v86)
    {
      v87 = *(v85 + 8);
      v176[0] = v87;
      if (v87)
      {
        if (*(*v87 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_109:
          mlir::Diagnostic::operator<<<62ul>(v178, v48);
          goto LABEL_142;
        }

        a3[22] = v87;
      }
    }

    v88 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "intel_reqd_sub_group_size", 0x19uLL);
    if (v89)
    {
      v90 = *(v88 + 8);
      v176[0] = v90;
      if (v90)
      {
        if (*(*v90 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[23] = v90;
      }
    }

    v91 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "linkage", 7uLL);
    if (v92)
    {
      v93 = *(v91 + 8);
      v176[0] = v93;
      if (v93)
      {
        if (*(*v93 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_168;
        }

        a3[24] = v93;
      }
    }

    v95 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "memory_effects", 0xEuLL);
    if (v96)
    {
      v97 = *(v95 + 8);
      v176[0] = v97;
      if (v97)
      {
        if (*(*v97 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_175;
        }

        a3[25] = v97;
      }
    }

    v99 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_infs_fp_math", 0xFuLL);
    if (v100)
    {
      v101 = *(v99 + 8);
      v176[0] = v101;
      if (v101)
      {
        if (*(*v101 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v102 = v101[1], *(*v102 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v102[2] != 1)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_210;
        }

        a3[26] = v101;
      }
    }

    v103 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
    if (v104)
    {
      v105 = *(v103 + 8);
      v176[0] = v105;
      if (v105)
      {
        if (*(*v105 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[27] = v105;
      }
    }

    v107 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_nans_fp_math", 0xFuLL);
    if (v108)
    {
      v109 = *(v107 + 8);
      v176[0] = v109;
      if (v109)
      {
        if (*(*v109 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v110 = v109[1], *(*v110 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v110[2] != 1)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_210;
        }

        a3[28] = v109;
      }
    }

    v111 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_signed_zeros_fp_math", 0x17uLL);
    if (v112)
    {
      v113 = *(v111 + 8);
      v176[0] = v113;
      if (v113)
      {
        if (*(*v113 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v114 = v113[1], *(*v114 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v114[2] != 1)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[29] = v113;
      }
    }

    v115 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_unwind", 9uLL);
    if (v116)
    {
      v117 = *(v115 + 8);
      v176[0] = v117;
      if (v117)
      {
        if (*(*v117 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[30] = v117;
      }
    }

    v118 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "optimize_none", 0xDuLL);
    if (v119)
    {
      v120 = *(v118 + 8);
      v176[0] = v120;
      if (v120)
      {
        if (*(*v120 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[31] = v120;
      }
    }

    v121 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "passthrough", 0xBuLL);
    if (v122)
    {
      v123 = *(v121 + 8);
      v176[0] = v123;
      if (v123)
      {
        if (*(*v123 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[32] = v123;
      }
    }

    v124 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "personality", 0xBuLL);
    if (v125)
    {
      v126 = *(v124 + 8);
      v176[0] = v126;
      if (v126)
      {
        if (*(*v126 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v126[3])
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[33] = v126;
      }
    }

    v127 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "reqd_work_group_size", 0x14uLL);
    if (v128)
    {
      v129 = *(v127 + 8);
      v176[0] = v129;
      if (v129)
      {
        if (*(*v129 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v130 = v129[1], *(*v130 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v130[2] != 32)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[34] = v129;
      }
    }

    v131 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v132)
    {
      v133 = *(v131 + 8);
      v176[0] = v133;
      if (v133)
      {
        if (*(*v133 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_45:
          mlir::Diagnostic::operator<<<55ul>(v178, v24);
          goto LABEL_142;
        }

        a3[35] = v133;
      }
    }

    v134 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "section", 7uLL);
    if (v135)
    {
      v136 = *(v134 + 8);
      v176[0] = v136;
      if (v136)
      {
        if (*(*v136 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_168:
          mlir::Diagnostic::operator<<<53ul>(v178, v94);
          goto LABEL_142;
        }

        a3[36] = v136;
      }
    }

    v137 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v138)
    {
      v139 = *(v137 + 8);
      v176[0] = v139;
      if (v139)
      {
        if (*(*v139 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_282;
        }

        a3[37] = v139;
      }
    }

    v141 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_visibility", 0xEuLL);
    if (v142)
    {
      v143 = *(v141 + 8);
      v176[0] = v143;
      if (v143)
      {
        if (*(*v143 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_175;
        }

        a3[38] = v143;
      }
    }

    v144 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "target_cpu", 0xAuLL);
    if (v145)
    {
      v146 = *(v144 + 8);
      v176[0] = v146;
      if (v146)
      {
        if (*(*v146 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_102:
          mlir::Diagnostic::operator<<<56ul>(v178, v41);
          goto LABEL_142;
        }

        a3[39] = v146;
      }
    }

    v147 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "target_features", 0xFuLL);
    if (v148)
    {
      v149 = *(v147 + 8);
      v176[0] = v149;
      if (v149)
      {
        if (*(*v149 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_210:
          mlir::Diagnostic::operator<<<61ul>(v178, v106);
          goto LABEL_142;
        }

        a3[40] = v149;
      }
    }

    v150 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tune_cpu", 8uLL);
    if (v151)
    {
      v152 = *(v150 + 8);
      v176[0] = v152;
      if (v152)
      {
        if (*(*v152 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_282:
          mlir::Diagnostic::operator<<<54ul>(v178, v140);
          goto LABEL_142;
        }

        a3[41] = v152;
      }
    }

    v153 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unnamed_addr", 0xCuLL);
    if (v154)
    {
      v155 = *(v153 + 8);
      v176[0] = v155;
      if (v155)
      {
        if (!mlir::LLVM::UnnamedAddrAttr::classof(v155))
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        a3[42] = v155;
      }
    }

    v156 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unsafe_fp_math", 0xEuLL);
    if (v157)
    {
      v158 = *(v156 + 8);
      v176[0] = v158;
      if (v158)
      {
        if (*(*v158 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v159 = v158[1], *(*v159 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v159[2] != 1)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_175:
          mlir::Diagnostic::operator<<<60ul>(v178, v98);
          goto LABEL_142;
        }

        a3[43] = v158;
      }
    }

    v160 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "vec_type_hint", 0xDuLL);
    if (v161)
    {
      v162 = *(v160 + 8);
      v176[0] = v162;
      if (v162)
      {
        if (*(*v162 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_83:
          mlir::Diagnostic::operator<<<59ul>(v178, v52);
          goto LABEL_142;
        }

        a3[44] = v162;
      }
    }

    v163 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "visibility_", 0xBuLL);
    if (v164)
    {
      v165 = *(v163 + 8);
      v176[0] = v165;
      if (v165)
      {
        if (!mlir::LLVM::VisibilityAttr::classof(v165))
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[45] = v165;
      }
    }

    v166 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "vscale_range", 0xCuLL);
    if (v167)
    {
      v168 = *(v166 + 8);
      v176[0] = v168;
      if (v168)
      {
        if (*(*v168 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_52:
          mlir::Diagnostic::operator<<<58ul>(v178, v34);
          goto LABEL_142;
        }

        a3[46] = v168;
      }
    }

    v169 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "will_return", 0xBuLL);
    if (v170)
    {
      v171 = *(v169 + 8);
      v176[0] = v171;
      if (v171)
      {
        if (*(*v171 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v177, a6);
          if (!v177)
          {
            goto LABEL_4;
          }

LABEL_128:
          mlir::Diagnostic::operator<<<57ul>(v178, v75);
          goto LABEL_142;
        }

        a3[47] = v171;
      }
    }

    v172 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "work_group_size_hint", 0x14uLL);
    if ((v173 & 1) == 0)
    {
      return 1;
    }

    v174 = *(v172 + 8);
    v176[0] = v174;
    if (!v174)
    {
      return 1;
    }

    if (*(*v174 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v175 = v174[1];
      if (*(*v175 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v175[2] == 32)
      {
        a3[48] = v174;
        return 1;
      }
    }

    a5(&v177, a6);
    if (!v177)
    {
      goto LABEL_4;
    }

LABEL_141:
    mlir::Diagnostic::operator<<<66ul>(v178, v68);
    goto LABEL_142;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  a5(&v177, a6);
  if (v177)
  {
    goto LABEL_37;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v177);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v162[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v160 = v162;
  v161 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v159 = 261;
    v157 = "CConv";
    v158 = 5;
    v9 = mlir::StringAttr::get(v8, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v159 = 261;
    v157 = "alignment";
    v158 = 9;
    v12 = mlir::StringAttr::get(v11, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v159 = 261;
    v157 = "always_inline";
    v158 = 13;
    v15 = mlir::StringAttr::get(v14, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v159 = 261;
    v157 = "approx_func_fp_math";
    v158 = 19;
    v18 = mlir::StringAttr::get(v17, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v159 = 261;
    v157 = "arg_attrs";
    v158 = 9;
    v21 = mlir::StringAttr::get(v20, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v159 = 261;
    v157 = "arm_in_za";
    v158 = 9;
    v24 = mlir::StringAttr::get(v23, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v159 = 261;
    v157 = "arm_inout_za";
    v158 = 12;
    v27 = mlir::StringAttr::get(v26, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v159 = 261;
    v157 = "arm_locally_streaming";
    v158 = 21;
    v30 = mlir::StringAttr::get(v29, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v159 = 261;
    v157 = "arm_new_za";
    v158 = 10;
    v33 = mlir::StringAttr::get(v32, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v159 = 261;
    v157 = "arm_out_za";
    v158 = 10;
    v36 = mlir::StringAttr::get(v35, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v159 = 261;
    v157 = "arm_preserves_za";
    v158 = 16;
    v39 = mlir::StringAttr::get(v38, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v159 = 261;
    v157 = "arm_streaming";
    v158 = 13;
    v42 = mlir::StringAttr::get(v41, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v159 = 261;
    v157 = "arm_streaming_compatible";
    v158 = 24;
    v45 = mlir::StringAttr::get(v44, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v159 = 261;
    v157 = "comdat";
    v158 = 6;
    v48 = mlir::StringAttr::get(v47, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v159 = 261;
    v157 = "convergent";
    v158 = 10;
    v51 = mlir::StringAttr::get(v50, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v51, v49);
  }

  v52 = v6[15];
  if (v52)
  {
    v53 = *(**v52 + 32);
    v159 = 261;
    v157 = "denormal_fp_math";
    v158 = 16;
    v54 = mlir::StringAttr::get(v53, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v54, v52);
  }

  v55 = v6[16];
  if (v55)
  {
    v56 = *(**v55 + 32);
    v159 = 261;
    v157 = "denormal_fp_math_f32";
    v158 = 20;
    v57 = mlir::StringAttr::get(v56, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v57, v55);
  }

  v58 = v6[17];
  if (v58)
  {
    v59 = *(**v58 + 32);
    v159 = 261;
    v157 = "dso_local";
    v158 = 9;
    v60 = mlir::StringAttr::get(v59, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v60, v58);
  }

  v61 = v6[18];
  if (v61)
  {
    v62 = *(**v61 + 32);
    v159 = 261;
    v157 = "fp_contract";
    v158 = 11;
    v63 = mlir::StringAttr::get(v62, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v63, v61);
  }

  v64 = v6[19];
  if (v64)
  {
    v65 = *(**v64 + 32);
    v159 = 261;
    v157 = "frame_pointer";
    v158 = 13;
    v66 = mlir::StringAttr::get(v65, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v66, v64);
  }

  v67 = v6[20];
  if (v67)
  {
    v68 = *(**v67 + 32);
    v159 = 261;
    v157 = "function_entry_count";
    v158 = 20;
    v69 = mlir::StringAttr::get(v68, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v69, v67);
  }

  v70 = v6[21];
  if (v70)
  {
    v71 = *(**v70 + 32);
    v159 = 261;
    v157 = "function_type";
    v158 = 13;
    v72 = mlir::StringAttr::get(v71, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v72, v70);
  }

  v73 = v6[22];
  if (v73)
  {
    v74 = *(**v73 + 32);
    v159 = 261;
    v157 = "garbageCollector";
    v158 = 16;
    v75 = mlir::StringAttr::get(v74, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v75, v73);
  }

  v76 = v6[23];
  if (v76)
  {
    v77 = *(**v76 + 32);
    v159 = 261;
    v157 = "intel_reqd_sub_group_size";
    v158 = 25;
    v78 = mlir::StringAttr::get(v77, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v78, v76);
  }

  v79 = v6[24];
  if (v79)
  {
    v80 = *(**v79 + 32);
    v159 = 261;
    v157 = "linkage";
    v158 = 7;
    v81 = mlir::StringAttr::get(v80, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v81, v79);
  }

  v82 = v6[25];
  if (v82)
  {
    v83 = *(**v82 + 32);
    v159 = 261;
    v157 = "memory_effects";
    v158 = 14;
    v84 = mlir::StringAttr::get(v83, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v84, v82);
  }

  v85 = v6[26];
  if (v85)
  {
    v86 = *(**v85 + 32);
    v159 = 261;
    v157 = "no_infs_fp_math";
    v158 = 15;
    v87 = mlir::StringAttr::get(v86, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v87, v85);
  }

  v88 = v6[27];
  if (v88)
  {
    v89 = *(**v88 + 32);
    v159 = 261;
    v157 = "no_inline";
    v158 = 9;
    v90 = mlir::StringAttr::get(v89, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v90, v88);
  }

  v91 = v6[28];
  if (v91)
  {
    v92 = *(**v91 + 32);
    v159 = 261;
    v157 = "no_nans_fp_math";
    v158 = 15;
    v93 = mlir::StringAttr::get(v92, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v93, v91);
  }

  v94 = v6[29];
  if (v94)
  {
    v95 = *(**v94 + 32);
    v159 = 261;
    v157 = "no_signed_zeros_fp_math";
    v158 = 23;
    v96 = mlir::StringAttr::get(v95, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v96, v94);
  }

  v97 = v6[30];
  if (v97)
  {
    v98 = *(**v97 + 32);
    v159 = 261;
    v157 = "no_unwind";
    v158 = 9;
    v99 = mlir::StringAttr::get(v98, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v99, v97);
  }

  v100 = v6[31];
  if (v100)
  {
    v101 = *(**v100 + 32);
    v159 = 261;
    v157 = "optimize_none";
    v158 = 13;
    v102 = mlir::StringAttr::get(v101, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v102, v100);
  }

  v103 = v6[32];
  if (v103)
  {
    v104 = *(**v103 + 32);
    v159 = 261;
    v157 = "passthrough";
    v158 = 11;
    v105 = mlir::StringAttr::get(v104, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v105, v103);
  }

  v106 = v6[33];
  if (v106)
  {
    v107 = *(**v106 + 32);
    v159 = 261;
    v157 = "personality";
    v158 = 11;
    v108 = mlir::StringAttr::get(v107, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v108, v106);
  }

  v109 = v6[34];
  if (v109)
  {
    v110 = *(**v109 + 32);
    v159 = 261;
    v157 = "reqd_work_group_size";
    v158 = 20;
    v111 = mlir::StringAttr::get(v110, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v111, v109);
  }

  v112 = v6[35];
  if (v112)
  {
    v113 = *(**v112 + 32);
    v159 = 261;
    v157 = "res_attrs";
    v158 = 9;
    v114 = mlir::StringAttr::get(v113, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v114, v112);
  }

  v115 = v6[36];
  if (v115)
  {
    v116 = *(**v115 + 32);
    v159 = 261;
    v157 = "section";
    v158 = 7;
    v117 = mlir::StringAttr::get(v116, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v117, v115);
  }

  v118 = v6[37];
  if (v118)
  {
    v119 = *(**v118 + 32);
    v159 = 261;
    v157 = "sym_name";
    v158 = 8;
    v120 = mlir::StringAttr::get(v119, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v120, v118);
  }

  v121 = v6[38];
  if (v121)
  {
    v122 = *(**v121 + 32);
    v159 = 261;
    v157 = "sym_visibility";
    v158 = 14;
    v123 = mlir::StringAttr::get(v122, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v123, v121);
  }

  v124 = v6[39];
  if (v124)
  {
    v125 = *(**v124 + 32);
    v159 = 261;
    v157 = "target_cpu";
    v158 = 10;
    v126 = mlir::StringAttr::get(v125, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v126, v124);
  }

  v127 = v6[40];
  if (v127)
  {
    v128 = *(**v127 + 32);
    v159 = 261;
    v157 = "target_features";
    v158 = 15;
    v129 = mlir::StringAttr::get(v128, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v129, v127);
  }

  v130 = v6[41];
  if (v130)
  {
    v131 = *(**v130 + 32);
    v159 = 261;
    v157 = "tune_cpu";
    v158 = 8;
    v132 = mlir::StringAttr::get(v131, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v132, v130);
  }

  v133 = v6[42];
  if (v133)
  {
    v134 = *(**v133 + 32);
    v159 = 261;
    v157 = "unnamed_addr";
    v158 = 12;
    v135 = mlir::StringAttr::get(v134, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v135, v133);
  }

  v136 = v6[43];
  if (v136)
  {
    v137 = *(**v136 + 32);
    v159 = 261;
    v157 = "unsafe_fp_math";
    v158 = 14;
    v138 = mlir::StringAttr::get(v137, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v138, v136);
  }

  v139 = v6[44];
  if (v139)
  {
    v140 = *(**v139 + 32);
    v159 = 261;
    v157 = "vec_type_hint";
    v158 = 13;
    v141 = mlir::StringAttr::get(v140, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v141, v139);
  }

  v142 = v6[45];
  if (v142)
  {
    v143 = *(**v142 + 32);
    v159 = 261;
    v157 = "visibility_";
    v158 = 11;
    v144 = mlir::StringAttr::get(v143, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v144, v142);
  }

  v145 = v6[46];
  if (v145)
  {
    v146 = *(**v145 + 32);
    v159 = 261;
    v157 = "vscale_range";
    v158 = 12;
    v147 = mlir::StringAttr::get(v146, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v147, v145);
  }

  v148 = v6[47];
  if (v148)
  {
    v149 = *(**v148 + 32);
    v159 = 261;
    v157 = "will_return";
    v158 = 11;
    v150 = mlir::StringAttr::get(v149, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v150, v148);
  }

  v151 = v6[48];
  if (v151)
  {
    v152 = *(**v151 + 32);
    v159 = 261;
    v157 = "work_group_size_hint";
    v158 = 20;
    v153 = mlir::StringAttr::get(v152, &v157, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v160, v153, v151);
  }

  v154 = v160;
  if (v161)
  {
    v155 = mlir::DictionaryAttr::get(v3, v160, v161);
    v154 = v160;
  }

  else
  {
    v155 = 0;
  }

  if (v154 != v162)
  {
    free(v154);
  }

  return v155;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::hashProperties(uint64_t a1, void *a2)
{
  v237[13] = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v189 = HIDWORD(*a2) ^ (v2 >> 47) ^ v2;
  v3 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ HIDWORD(a2[1]));
  v187 = HIDWORD(a2[1]) ^ (v3 >> 47) ^ v3;
  v4 = HIDWORD(a2[2]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[2] - 0xAE502812AA7333) ^ v4);
  v185 = v4 ^ (v5 >> 47) ^ v5;
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[3] - 0xAE502812AA7333) ^ HIDWORD(a2[3]));
  v183 = HIDWORD(a2[3]) ^ (v6 >> 47) ^ v6;
  v7 = HIDWORD(a2[4]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a2[4] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a2[5]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a2[5] - 0xAE502812AA7333) ^ v10);
  v12 = v10 ^ (v11 >> 47) ^ v11;
  v13 = HIDWORD(a2[6]);
  v14 = 0x9DDFEA08EB382D69 * ((8 * a2[6] - 0xAE502812AA7333) ^ v13);
  v15 = v13 ^ (v14 >> 47) ^ v14;
  v16 = HIDWORD(a2[7]);
  v17 = 0x9DDFEA08EB382D69 * ((8 * a2[7] - 0xAE502812AA7333) ^ v16);
  v18 = v16 ^ (v17 >> 47) ^ v17;
  v19 = HIDWORD(a2[8]);
  v20 = 0x9DDFEA08EB382D69 * ((8 * a2[8] - 0xAE502812AA7333) ^ v19);
  v21 = v19 ^ (v20 >> 47) ^ v20;
  v22 = HIDWORD(a2[9]);
  v23 = 0x9DDFEA08EB382D69 * ((8 * a2[9] - 0xAE502812AA7333) ^ v22);
  v24 = v22 ^ (v23 >> 47) ^ v23;
  v25 = HIDWORD(a2[10]);
  v26 = 0x9DDFEA08EB382D69 * ((8 * a2[10] - 0xAE502812AA7333) ^ v25);
  v27 = v25 ^ (v26 >> 47) ^ v26;
  v28 = HIDWORD(a2[11]);
  v29 = 0x9DDFEA08EB382D69 * ((8 * a2[11] - 0xAE502812AA7333) ^ v28);
  v30 = v28 ^ (v29 >> 47) ^ v29;
  v31 = HIDWORD(a2[12]);
  v32 = 0x9DDFEA08EB382D69 * ((8 * a2[12] - 0xAE502812AA7333) ^ v31);
  v33 = v31 ^ (v32 >> 47) ^ v32;
  v34 = HIDWORD(a2[13]);
  v35 = 0x9DDFEA08EB382D69 * ((8 * a2[13] - 0xAE502812AA7333) ^ v34);
  v181 = v34 ^ (v35 >> 47) ^ v35;
  v36 = HIDWORD(a2[14]);
  v37 = 0x9DDFEA08EB382D69 * ((8 * a2[14] - 0xAE502812AA7333) ^ v36);
  v179 = v36 ^ (v37 >> 47) ^ v37;
  v38 = 0x9DDFEA08EB382D69 * ((8 * a2[15] - 0xAE502812AA7333) ^ HIDWORD(a2[15]));
  v177 = HIDWORD(a2[15]) ^ (v38 >> 47) ^ v38;
  v39 = HIDWORD(a2[16]);
  v40 = 0x9DDFEA08EB382D69 * ((8 * a2[16] - 0xAE502812AA7333) ^ v39);
  v175 = v39 ^ (v40 >> 47) ^ v40;
  v41 = 0x9DDFEA08EB382D69 * ((8 * a2[17] - 0xAE502812AA7333) ^ HIDWORD(a2[17]));
  v173 = HIDWORD(a2[17]) ^ (v41 >> 47) ^ v41;
  v42 = HIDWORD(a2[18]);
  v43 = 0x9DDFEA08EB382D69 * ((8 * a2[18] - 0xAE502812AA7333) ^ v42);
  v44 = v42 ^ (v43 >> 47) ^ v43;
  v45 = HIDWORD(a2[19]);
  v46 = 0x9DDFEA08EB382D69 * ((8 * a2[19] - 0xAE502812AA7333) ^ v45);
  v47 = v45 ^ (v46 >> 47) ^ v46;
  v48 = HIDWORD(a2[20]);
  v49 = 0x9DDFEA08EB382D69 * ((8 * a2[20] - 0xAE502812AA7333) ^ v48);
  v50 = v48 ^ (v49 >> 47) ^ v49;
  v51 = HIDWORD(a2[21]);
  v52 = 0x9DDFEA08EB382D69 * ((8 * a2[21] - 0xAE502812AA7333) ^ v51);
  v53 = v51 ^ (v52 >> 47) ^ v52;
  v54 = HIDWORD(a2[22]);
  v55 = 0x9DDFEA08EB382D69 * ((8 * a2[22] - 0xAE502812AA7333) ^ v54);
  v56 = v54 ^ (v55 >> 47) ^ v55;
  v57 = HIDWORD(a2[23]);
  v58 = 0x9DDFEA08EB382D69 * ((8 * a2[23] - 0xAE502812AA7333) ^ v57);
  v59 = v57 ^ (v58 >> 47) ^ v58;
  v60 = a2[24];
  v61 = a2[25];
  v62 = 0x9DDFEA08EB382D69 * ((8 * v60 - 0xAE502812AA7333) ^ HIDWORD(v60));
  v63 = 0x9DDFEA08EB382D69 * ((8 * v61 - 0xAE502812AA7333) ^ HIDWORD(v61));
  v64 = HIDWORD(v60) ^ (v62 >> 47) ^ v62;
  v65 = HIDWORD(v61) ^ (v63 >> 47) ^ v63;
  v66 = a2[26];
  v67 = a2[27];
  v68 = 0x9DDFEA08EB382D69 * ((8 * v66 - 0xAE502812AA7333) ^ HIDWORD(v66));
  v69 = HIDWORD(v66) ^ (v68 >> 47) ^ v68;
  v70 = 0x9DDFEA08EB382D69 * ((8 * v67 - 0xAE502812AA7333) ^ HIDWORD(v67));
  v71 = HIDWORD(v67) ^ (v70 >> 47) ^ v70;
  v72 = a2[28];
  v73 = a2[29];
  v74 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
  v75 = HIDWORD(v72) ^ (v74 >> 47) ^ v74;
  v76 = 0x9DDFEA08EB382D69 * ((8 * v73 - 0xAE502812AA7333) ^ HIDWORD(v73));
  v77 = HIDWORD(v73) ^ (v76 >> 47) ^ v76;
  v79 = a2[30];
  v78 = a2[31];
  v80 = 0x9DDFEA08EB382D69 * ((8 * v79 - 0xAE502812AA7333) ^ HIDWORD(v79));
  v81 = HIDWORD(v79) ^ (v80 >> 47) ^ v80;
  v82 = 0x9DDFEA08EB382D69 * ((8 * v78 - 0xAE502812AA7333) ^ HIDWORD(v78));
  v83 = HIDWORD(v78) ^ (v82 >> 47) ^ v82;
  v84 = a2[32];
  v85 = a2[33];
  v86 = 0x9DDFEA08EB382D69 * ((8 * v84 - 0xAE502812AA7333) ^ HIDWORD(v84));
  v87 = 0x9DDFEA08EB382D69 * (HIDWORD(v84) ^ (v86 >> 47) ^ v86);
  v207 = 0x9DDFEA08EB382D69 * (v87 ^ (v87 >> 47));
  v88 = 0x9DDFEA08EB382D69 * ((8 * v85 - 0xAE502812AA7333) ^ HIDWORD(v85));
  v89 = 0x9DDFEA08EB382D69 * (HIDWORD(v85) ^ (v88 >> 47) ^ v88);
  v206 = 0x9DDFEA08EB382D69 * (v89 ^ (v89 >> 47));
  v90 = a2[34];
  v91 = a2[35];
  v92 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
  v93 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v92 >> 47) ^ v92);
  v205 = 0x9DDFEA08EB382D69 * (v93 ^ (v93 >> 47));
  v94 = 0x9DDFEA08EB382D69 * ((8 * v91 - 0xAE502812AA7333) ^ HIDWORD(v91));
  v95 = 0x9DDFEA08EB382D69 * (HIDWORD(v91) ^ (v94 >> 47) ^ v94);
  v204 = 0x9DDFEA08EB382D69 * (v95 ^ (v95 >> 47));
  v96 = a2[36];
  v97 = a2[37];
  v98 = 0x9DDFEA08EB382D69 * ((8 * v96 - 0xAE502812AA7333) ^ HIDWORD(v96));
  v99 = 0x9DDFEA08EB382D69 * (HIDWORD(v96) ^ (v98 >> 47) ^ v98);
  v203 = 0x9DDFEA08EB382D69 * (v99 ^ (v99 >> 47));
  v100 = 0x9DDFEA08EB382D69 * ((8 * v97 - 0xAE502812AA7333) ^ HIDWORD(v97));
  v101 = 0x9DDFEA08EB382D69 * (HIDWORD(v97) ^ (v100 >> 47) ^ v100);
  v202 = 0x9DDFEA08EB382D69 * (v101 ^ (v101 >> 47));
  v102 = a2[38];
  v103 = a2[39];
  v104 = 0x9DDFEA08EB382D69 * ((8 * v102 - 0xAE502812AA7333) ^ HIDWORD(v102));
  v105 = 0x9DDFEA08EB382D69 * (HIDWORD(v102) ^ (v104 >> 47) ^ v104);
  v201 = 0x9DDFEA08EB382D69 * (v105 ^ (v105 >> 47));
  v106 = 0x9DDFEA08EB382D69 * ((8 * v103 - 0xAE502812AA7333) ^ HIDWORD(v103));
  v107 = 0x9DDFEA08EB382D69 * (HIDWORD(v103) ^ (v106 >> 47) ^ v106);
  v200 = 0x9DDFEA08EB382D69 * (v107 ^ (v107 >> 47));
  v108 = a2[40];
  v109 = a2[41];
  v110 = 0x9DDFEA08EB382D69 * ((8 * v108 - 0xAE502812AA7333) ^ HIDWORD(v108));
  v111 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v110 >> 47) ^ v110);
  v199 = 0x9DDFEA08EB382D69 * (v111 ^ (v111 >> 47));
  v112 = 0x9DDFEA08EB382D69 * ((8 * v109 - 0xAE502812AA7333) ^ HIDWORD(v109));
  v113 = 0x9DDFEA08EB382D69 * (HIDWORD(v109) ^ (v112 >> 47) ^ v112);
  v198 = 0x9DDFEA08EB382D69 * (v113 ^ (v113 >> 47));
  v114 = a2[42];
  v115 = a2[43];
  v116 = 0x9DDFEA08EB382D69 * ((8 * v114 - 0xAE502812AA7333) ^ HIDWORD(v114));
  v117 = 0x9DDFEA08EB382D69 * (HIDWORD(v114) ^ (v116 >> 47) ^ v116);
  v197 = 0x9DDFEA08EB382D69 * (v117 ^ (v117 >> 47));
  v118 = 0x9DDFEA08EB382D69 * ((8 * v115 - 0xAE502812AA7333) ^ HIDWORD(v115));
  v119 = 0x9DDFEA08EB382D69 * (HIDWORD(v115) ^ (v118 >> 47) ^ v118);
  v196 = 0x9DDFEA08EB382D69 * (v119 ^ (v119 >> 47));
  v120 = a2[44];
  v121 = a2[45];
  v122 = 0x9DDFEA08EB382D69 * ((8 * v120 - 0xAE502812AA7333) ^ HIDWORD(v120));
  v123 = 0x9DDFEA08EB382D69 * (HIDWORD(v120) ^ (v122 >> 47) ^ v122);
  v195 = 0x9DDFEA08EB382D69 * (v123 ^ (v123 >> 47));
  v124 = 0x9DDFEA08EB382D69 * ((8 * v121 - 0xAE502812AA7333) ^ HIDWORD(v121));
  v125 = 0x9DDFEA08EB382D69 * (HIDWORD(v121) ^ (v124 >> 47) ^ v124);
  v194 = 0x9DDFEA08EB382D69 * (v125 ^ (v125 >> 47));
  v126 = a2[46];
  v127 = a2[47];
  v128 = 0x9DDFEA08EB382D69 * ((8 * v126 - 0xAE502812AA7333) ^ HIDWORD(v126));
  v129 = 0x9DDFEA08EB382D69 * (HIDWORD(v126) ^ (v128 >> 47) ^ v128);
  v193 = 0x9DDFEA08EB382D69 * (v129 ^ (v129 >> 47));
  v130 = 0x9DDFEA08EB382D69 * ((8 * v127 - 0xAE502812AA7333) ^ HIDWORD(v127));
  v131 = 0x9DDFEA08EB382D69 * (HIDWORD(v127) ^ (v130 >> 47) ^ v130);
  v192 = 0x9DDFEA08EB382D69 * (v131 ^ (v131 >> 47));
  v132 = a2[48];
  v133 = 0x9DDFEA08EB382D69 * ((8 * v132 - 0xAE502812AA7333) ^ HIDWORD(v132));
  v134 = 0x9DDFEA08EB382D69 * (HIDWORD(v132) ^ (v133 >> 47) ^ v133);
  v191 = 0x9DDFEA08EB382D69 * (v134 ^ (v134 >> 47));
  v236[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v189) ^ ((0x9DDFEA08EB382D69 * v189) >> 47));
  v236[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v187) ^ ((0x9DDFEA08EB382D69 * v187) >> 47));
  v237[12] = 0xFF51AFD7ED558CCDLL;
  v236[2] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v185) ^ ((0x9DDFEA08EB382D69 * v185) >> 47));
  v135 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v183) ^ ((0x9DDFEA08EB382D69 * v183) >> 47));
  v165 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v181) ^ ((0x9DDFEA08EB382D69 * v181) >> 47));
  v166 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v179) ^ ((0x9DDFEA08EB382D69 * v179) >> 47));
  v167 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v177) ^ ((0x9DDFEA08EB382D69 * v177) >> 47));
  v168 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v175) ^ ((0x9DDFEA08EB382D69 * v175) >> 47));
  v169 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v173) ^ ((0x9DDFEA08EB382D69 * v173) >> 47));
  v170 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v50) ^ ((0x9DDFEA08EB382D69 * v50) >> 47));
  v171 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v53) ^ ((0x9DDFEA08EB382D69 * v53) >> 47));
  v172 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v56) ^ ((0x9DDFEA08EB382D69 * v56) >> 47));
  v174 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v59) ^ ((0x9DDFEA08EB382D69 * v59) >> 47));
  v176 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v64) ^ ((0x9DDFEA08EB382D69 * v64) >> 47));
  v178 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v65) ^ ((0x9DDFEA08EB382D69 * v65) >> 47));
  v180 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v69) ^ ((0x9DDFEA08EB382D69 * v69) >> 47));
  v182 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v71) ^ ((0x9DDFEA08EB382D69 * v71) >> 47));
  v184 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v75) ^ ((0x9DDFEA08EB382D69 * v75) >> 47));
  v186 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v77) ^ ((0x9DDFEA08EB382D69 * v77) >> 47));
  v188 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v81) ^ ((0x9DDFEA08EB382D69 * v81) >> 47));
  v190 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v83) ^ ((0x9DDFEA08EB382D69 * v83) >> 47));
  memset(v237, 0, 96);
  v208 = 0;
  v136 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v208, v237, &v237[5], v135);
  v209 = v208;
  v137 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v209, v136, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47)));
  v210 = v209;
  v138 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v210, v137, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v12) ^ ((0x9DDFEA08EB382D69 * v12) >> 47)));
  v211 = v210;
  v139 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v211, v138, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v15) ^ ((0x9DDFEA08EB382D69 * v15) >> 47)));
  v212 = v211;
  v140 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v212, v139, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v18) ^ ((0x9DDFEA08EB382D69 * v18) >> 47)));
  v213 = v212;
  v141 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v213, v140, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v21) ^ ((0x9DDFEA08EB382D69 * v21) >> 47)));
  v214 = v213;
  v142 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v214, v141, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v24) ^ ((0x9DDFEA08EB382D69 * v24) >> 47)));
  v215 = v214;
  v143 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v215, v142, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v27) ^ ((0x9DDFEA08EB382D69 * v27) >> 47)));
  v216 = v215;
  v144 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v216, v143, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v30) ^ ((0x9DDFEA08EB382D69 * v30) >> 47)));
  v217 = v216;
  v145 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v217, v144, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v33) ^ ((0x9DDFEA08EB382D69 * v33) >> 47)));
  v218 = v217;
  v146 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v218, v145, &v237[5], v165);
  v219 = v218;
  v147 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v219, v146, &v237[5], v166);
  v220 = v219;
  v148 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v220, v147, &v237[5], v167);
  v221 = v220;
  v149 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v221, v148, &v237[5], v168);
  v222 = v221;
  v150 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v222, v149, &v237[5], v169);
  v223 = v222;
  v151 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v223, v150, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v44) ^ ((0x9DDFEA08EB382D69 * v44) >> 47)));
  v224 = v223;
  v152 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v224, v151, &v237[5], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v47) ^ ((0x9DDFEA08EB382D69 * v47) >> 47)));
  v225 = v224;
  v153 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v225, v152, &v237[5], v170);
  v226 = v225;
  v154 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v226, v153, &v237[5], v171);
  v227 = v226;
  v155 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v227, v154, &v237[5], v172);
  v228 = v227;
  v156 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v228, v155, &v237[5], v174);
  v229 = v228;
  v157 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v229, v156, &v237[5], v176);
  v230 = v229;
  v158 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v230, v157, &v237[5], v178);
  v231 = v230;
  v159 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v231, v158, &v237[5], v180);
  v232 = v231;
  v160 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v232, v159, &v237[5], v182);
  v233 = v232;
  v161 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v233, v160, &v237[5], v184);
  v234 = v233;
  v162 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v234, v161, &v237[5], v186);
  v235 = v234;
  v163 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v236, &v235, v162, &v237[5], v188);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v236, v235, v163, &v237[5], v190, &v207, &v206, &v205, &v204, &v203, &v202, &v201, &v200, &v199, &v198, &v197, &v196, &v195, &v194, &v193, &v192, &v191);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMFuncOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(a1, v3)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 1)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 3)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 4)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 6)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 7)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 8)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 9)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 10)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 11)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 12)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::SymbolRefAttr>(a1, v3 + 13)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 14)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 15)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 16)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 17)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 18)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FramePointerKindAttr>(a1, v3 + 19)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 20)
      && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 21)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 22)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 23)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LinkageAttr>(a1, v3 + 24)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::MemoryEffectsAttr>(a1, v3 + 25)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 26)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 27)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 28)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 29)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 30)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 31)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 32)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 33)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 34)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 35)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 36)
      && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 37)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 38)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 39)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::TargetFeaturesAttr>(a1, v3 + 40)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 41)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::UnnamedAddrAttr>(a1, v3 + 42)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 43)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VecTypeHintAttr>(a1, v3 + 44)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VisibilityAttr>(a1, v3 + 45)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VScaleRangeAttr>(a1, v3 + 46)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 47)
      && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 48);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMFuncOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 24))(a3, v4[13]);
  (*(*a3 + 24))(a3, v4[14]);
  (*(*a3 + 24))(a3, v4[15]);
  (*(*a3 + 24))(a3, v4[16]);
  (*(*a3 + 24))(a3, v4[17]);
  (*(*a3 + 24))(a3, v4[18]);
  (*(*a3 + 24))(a3, v4[19]);
  (*(*a3 + 24))(a3, v4[20]);
  (*(*a3 + 24))(a3, v4[21]);
  (*(*a3 + 24))(a3, v4[22]);
  (*(*a3 + 24))(a3, v4[23]);
  (*(*a3 + 24))(a3, v4[24]);
  (*(*a3 + 24))(a3, v4[25]);
  (*(*a3 + 24))(a3, v4[26]);
  (*(*a3 + 24))(a3, v4[27]);
  (*(*a3 + 24))(a3, v4[28]);
  (*(*a3 + 16))(a3, v4[29]);
  (*(*a3 + 24))(a3, v4[30]);
  (*(*a3 + 24))(a3, v4[31]);
  (*(*a3 + 24))(a3, v4[32]);
  (*(*a3 + 24))(a3, v4[33]);
  (*(*a3 + 24))(a3, v4[34]);
  (*(*a3 + 24))(a3, v4[35]);
  (*(*a3 + 24))(a3, v4[36]);
  (*(*a3 + 24))(a3, v4[37]);
  (*(*a3 + 24))(a3, v4[38]);
  (*(*a3 + 24))(a3, v4[39]);
  (*(*a3 + 24))(a3, v4[40]);
  (*(*a3 + 24))(a3, v4[41]);
  (*(*a3 + 24))(a3, v4[42]);
  (*(*a3 + 24))(a3, v4[43]);
  (*(*a3 + 24))(a3, v4[44]);
  (*(*a3 + 16))(a3, v4[45]);
  (*(*a3 + 24))(a3, v4[46]);
  (*(*a3 + 24))(a3, v4[47]);
  (*(*a3 + 24))(a3, v4[48]);
  (*(*a3 + 24))(a3, v4[49]);
  (*(*a3 + 24))(a3, v4[50]);
  (*(*a3 + 24))(a3, v4[51]);
  (*(*a3 + 24))(a3, v4[52]);
  (*(*a3 + 24))(a3, v4[53]);
  (*(*a3 + 24))(a3, v4[54]);
  (*(*a3 + 24))(a3, v4[55]);
  v5 = v4[56];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMFuncOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMFuncOp>::getCallableRegion(uint64_t a1, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 == v2)
  {
    return 0;
  }

  else
  {
    return ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }
}

uint64_t mlir::LLVM::LLVMFuncOp::getResultTypes(mlir::LLVM::LLVMFuncOp *this)
{
  v2 = *(**(*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 232) + 8) + 8) + 136);
  if (v2 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    return 0;
  }

  else
  {
    return *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 232) + 8) + 8;
  }
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::LLVM::LLVMFuncOp>::verifyBody(mlir::Operation *a1)
{
  v27[26] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  v2 = (a1 + 16 * ((v1 >> 23) & 1) + 64);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  if (*v3 == v3)
  {
    return 1;
  }

  v4 = *(*(v2 + 21) + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = v3[1];
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v24 = v5;
  v10 = v8 + 48;
  v9 = *(v8 + 48);
  if (((*(v10 + 8) - v9) >> 3) != v5)
  {
    v25[0] = "entry block must have ";
    v26 = 259;
    mlir::Operation::emitOpError(v27, a1, v25);
    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v24);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<39ul>((v15 + 1), " arguments to match function signature");
    }

LABEL_14:
    v13 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
    return v13 & 1;
  }

  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = (*(*(v9 + 8 * v11) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(v6 + 8 * v11) != v12)
      {
        break;
      }

      if (v5 == ++v11)
      {
        goto LABEL_10;
      }
    }

    v23 = v11;
    v21 = "type of entry block argument #";
    v22 = 259;
    mlir::Operation::emitOpError(v27, a1, &v21);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v23);
    v16 = v17;
    if (*v17)
    {
      v26 = 264;
      LOBYTE(v25[0]) = 40;
      mlir::Diagnostic::operator<<((v17 + 1), v25);
      if (*v16)
      {
        LODWORD(v25[0]) = 4;
        v25[1] = v12;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), v25, 1);
        v19 = v16[3] + 24 * *(v16 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v16 + 8);
        if (*v16)
        {
          mlir::Diagnostic::operator<<<56ul>((v16 + 1), ") must match the type of the corresponding argument in ");
          if (*v16)
          {
            mlir::Diagnostic::operator<<<20ul>((v16 + 1), "function signature(");
            if (*v16)
            {
              mlir::Diagnostic::operator<<<mlir::Type const&>((v16 + 1), (v6 + 8 * v23));
              if (*v16)
              {
                v26 = 264;
                LOBYTE(v25[0]) = 41;
                mlir::Diagnostic::operator<<((v16 + 1), v25);
              }
            }
          }
        }
      }
    }

    goto LABEL_14;
  }

LABEL_10:
  v13 = 1;
  return v13 & 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82[8] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  v9 = a2 + 64;
  v10 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 192) + 8);
  if (v10)
  {
    v11 = mlir::LLVM::linkage::stringifyLinkage(v10);
    v13 = v12;
    v14 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v14, v11, v13);
    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }
  }

  *&v76[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 360);
  Int = mlir::IntegerAttr::getInt(v76);
  if (Int == 1)
  {
    v18 = "hidden";
    v19 = 6;
  }

  else
  {
    if (Int != 2)
    {
      goto LABEL_15;
    }

    v18 = "protected";
    v19 = 9;
  }

  v20 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v20, v18, v19);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

LABEL_15:
  *&v76[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 336);
  if (!*&v76[0])
  {
    goto LABEL_23;
  }

  v23 = mlir::IntegerAttr::getInt(v76);
  if (v23 == 1)
  {
    v24 = "local_unnamed_addr";
    v25 = 18;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_23;
    }

    v24 = "unnamed_addr";
    v25 = 12;
  }

  v26 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v26, v24, v25);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

LABEL_23:
  v29 = *(*(v9 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8);
  if (v29)
  {
    v30 = mlir::LLVM::cconv::stringifyCConv(v29);
    v32 = v31;
    v33 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v33, v30, v32);
    v34 = (*(*a3 + 16))(a3);
    v35 = *(v34 + 4);
    if (v35 >= *(v34 + 3))
    {
      llvm::raw_ostream::write(v34, 32);
    }

    else
    {
      *(v34 + 4) = v35 + 1;
      *v35 = 32;
    }
  }

  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v37 = Attr;
  }

  else
  {
    v37 = 0;
  }

  (*(*a3 + 88))(a3, *(v37 + 16), *(v37 + 24));
  v38 = *(*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 168) + 8);
  v80 = v82;
  v81 = 0x800000000;
  v77 = &v79;
  v78 = 0x100000000;
  v39 = *(v38 + 24);
  if (v39 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v39, 8);
    v39 = *(v38 + 24);
  }

  if (v39)
  {
    v40 = 0;
    v41 = 8 * v39;
    do
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v80, *(*(v38 + 16) + v40));
      v40 += 8;
    }

    while (v41 != v40);
  }

  v42 = *(v38 + 8);
  v43 = *(*v42 + 136);
  if (v43 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v77, v42);
  }

  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v45 = v81;
  v46 = *(*(*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 168) + 8) + 32);
  v47 = v77;
  v48 = v78;
  v49 = v80 & 0xFFFFFFFFFFFFFFF9;
  v50 = (*(*(InterfaceFor + 48) + 24))();
  v51 = (*(*(InterfaceFor + 48) + 32))();
  mlir::call_interface_impl::printFunctionSignature(a3, v49 | 2, v45, v50, v46, v47 & 0xFFFFFFFFFFFFFFF9 | 2, v48, v51, (((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)), 0);
  v52 = (*(a2 + 44) >> 23) & 1;
  v53 = *(v9 + 16 * v52 + 368);
  if (v53)
  {
    v54 = (*(*a3 + 16))(a3);
    v55 = *(v54 + 4);
    if (*(v54 + 3) - v55 > 0xDuLL)
    {
      qmemcpy(v55, " vscale_range(", 14);
      *(v54 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v54, " vscale_range(", 0xEuLL);
    }

    *&v76[0] = *(v53 + 8);
    v56 = mlir::IntegerAttr::getInt(v76);
    v57 = (*(*a3 + 16))(a3);
    llvm::write_integer(v57, v56, 0, 0);
    v58 = (*(*a3 + 16))(a3);
    v59 = *(v58 + 4);
    if (*(v58 + 3) - v59 > 1uLL)
    {
      *v59 = 8236;
      *(v58 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v58, ", ", 2uLL);
    }

    v75 = *(v53 + 16);
    v60 = mlir::IntegerAttr::getInt(&v75);
    v61 = (*(*a3 + 16))(a3);
    llvm::write_integer(v61, v60, 0, 0);
    v62 = (*(*a3 + 16))(a3);
    v63 = *(v62 + 4);
    if (v63 >= *(v62 + 3))
    {
      llvm::raw_ostream::write(v62, 41);
    }

    else
    {
      *(v62 + 4) = v63 + 1;
      *v63 = 41;
    }

    v52 = (*(a2 + 44) >> 23) & 1;
  }

  v64 = *(v9 + 16 * v52 + 104);
  if (v64)
  {
    v65 = (*(*a3 + 16))(a3);
    v66 = *(v65 + 4);
    if (*(v65 + 3) - v66 > 7uLL)
    {
      *v66 = 0x287461646D6F6320;
      *(v65 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v65, " comdat(", 8uLL);
    }

    (*(*a3 + 40))(a3, v64);
    v67 = (*(*a3 + 16))(a3);
    v68 = *(v67 + 4);
    if (v68 >= *(v67 + 3))
    {
      llvm::raw_ostream::write(v67, 41);
    }

    else
    {
      *(v67 + 4) = v68 + 1;
      *v68 = 41;
    }
  }

  v69 = *(*(a2 + 48) + 96);
  v70 = *(v69[4] + 16);
  v76[0] = *(v69[21] + 16);
  v76[1] = v70;
  v76[2] = *(v69[35] + 16);
  v76[3] = *(v69[24] + 16);
  v76[4] = *(*v69 + 16);
  v71 = v69[46];
  v76[5] = *(v69[45] + 16);
  v76[6] = *(v69[13] + 16);
  v76[7] = *(v69[42] + 16);
  v76[8] = *(v71 + 16);
  mlir::function_interface_impl::printFunctionAttributes(a3, a2, v76, 9);
  v72 = (((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v72 != v72)
  {
    v73 = (*(*a3 + 16))(a3);
    v74 = *(v73 + 4);
    if (v74 >= *(v73 + 3))
    {
      llvm::raw_ostream::write(v73, 32);
    }

    else
    {
      *(v73 + 4) = v74 + 1;
      *v74 = 32;
    }

    (*(*a3 + 224))(a3, v72, 0, 1, 0);
  }

  if (v77 != &v79)
  {
    free(v77);
  }

  if (v80 != v82)
  {
    free(v80);
  }
}

uint64_t mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_79;
  }

  v6 = a1 + 64;
  v7 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v8 = v7[21];
  if (v8)
  {
    v9 = v7[37];
    if (v9)
    {
      v10 = *v7;
      v36 = v7[1];
      v51 = v7[2];
      v45 = v7[3];
      v71 = v7[4];
      v65 = v7[7];
      v62 = v7[5];
      v63 = v7[8];
      v60 = v7[6];
      v61 = v7[9];
      v59 = v7[10];
      v66 = v7[11];
      v64 = v7[12];
      v12 = v7[13];
      v11 = v7[14];
      v46 = v7[15];
      v47 = v7[16];
      v13 = v7[17];
      v37 = v7[19];
      v69 = v7[20];
      v57 = v7[23];
      v14 = v7[24];
      v68 = v7[25];
      v42 = v7[26];
      v48 = v7[18];
      v49 = v7[27];
      v43 = v7[28];
      v44 = v7[29];
      v50 = v7[30];
      v53 = v7[31];
      v15 = v7[33];
      v72 = v7[32];
      v73 = v7[22];
      v56 = v7[34];
      v70 = v7[35];
      v58 = v7[36];
      v16 = v7[38];
      v38 = v7[39];
      v39 = v7[41];
      v40 = v7[40];
      v41 = v7[43];
      v67 = v7[45];
      v34 = v7[42];
      v35 = v7[46];
      v52 = v7[47];
      v54 = v7[44];
      v55 = v7[48];
      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v9, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v16, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v8, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v13, "dso_local", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(v12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v11, "convergent", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v15, "personality", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v73, "garbageCollector", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v72, "passthrough", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v71, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v70, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v69, "function_entry_count", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v68, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v67, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v66, "arm_streaming", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v65, "arm_locally_streaming", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v64, "arm_streaming_compatible", 0x18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v63, "arm_new_za", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v62, "arm_in_za", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v61, "arm_out_za", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v60, "arm_inout_za", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v59, "arm_preserves_za", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v58, "section", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v34, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v36, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(v35, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(v37, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v38, "target_cpu", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v39, "tune_cpu", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(v40, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v41, "unsafe_fp_math", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v42, "no_infs_fp_math", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v43, "no_nans_fp_math", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v45, "approx_func_fp_math", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v44, "no_signed_zeros_fp_math", 0x17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v46, "denormal_fp_math", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v47, "denormal_fp_math_f32", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v48, "fp_contract", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v49, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v51, "always_inline", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v50, "no_unwind", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v52, "will_return", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v53, "optimize_none", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(v54, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v55, "work_group_size_hint", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v56, "reqd_work_group_size", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      v81 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(v57, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v81))
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    }

    v18 = "requires attribute 'sym_name'";
  }

  else
  {
    v18 = "requires attribute 'function_type'";
  }

  v78 = v18;
  v80 = 259;
  mlir::Operation::emitOpError(&v81, a1, &v78);
  v19 = v83;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
  if (v19)
  {
    goto LABEL_79;
  }

LABEL_60:
  if ((mlir::detail::verifySymbol(a1, v17) & 1) == 0)
  {
    goto LABEL_79;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v20 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
        if (((*(**(v22 + 48) + 32))(*(v22 + 48), v23) & 1) == 0 && *(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v78 = "symbol's parent must have the SymbolTable trait";
          v80 = 259;
          mlir::Operation::emitOpError(&v81, a1, &v78);
          v24 = v83;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
          if (v24)
          {
            goto LABEL_79;
          }
        }
      }
    }
  }

  if ((mlir::function_interface_impl::verifyTrait<mlir::LLVM::LLVMFuncOp>(a1) & 1) == 0)
  {
    goto LABEL_79;
  }

  v25 = v6 + 16 * ((*(a1 + 44) >> 23) & 1);
  if (*(*(v25 + 192) + 8) == 10)
  {
    v77 = 257;
    mlir::Operation::emitOpError(&v81, a1, &v75);
    if (v81)
    {
      mlir::Diagnostic::operator<<<24ul>(v82, "functions cannot have '");
      if (v81)
      {
        v80 = 261;
        v26 = "common";
        v27 = 6;
        goto LABEL_72;
      }
    }

    goto LABEL_93;
  }

  if (!verifyComdat(a1, *(v25 + 104), *(v25 + 104) != 0))
  {
LABEL_79:
    v31 = 0;
    return v31 & 1;
  }

  v28 = *(a1 + 44);
  v29 = (v6 + 16 * ((v28 >> 23) & 1));
  v30 = (((v29 + ((v28 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (*v30 != v30)
  {
    if (v29[27])
    {
      if (v29[2])
      {
        v78 = "no_inline and always_inline attributes are incompatible";
        v80 = 259;
LABEL_92:
        mlir::Operation::emitError(&v81, a1, &v78);
        goto LABEL_93;
      }
    }

    else if (v29[31])
    {
      v78 = "with optimize_none must also be no_inline";
      v80 = 259;
      mlir::Operation::emitOpError(&v81, a1, &v78);
      goto LABEL_93;
    }

    v74 = 0;
    v75 = 0;
    v76 = 0;
    v81 = &v74;
    v82[0] = &v75;
    v31 = 1;
    if (mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::LLVM::LLVMFuncOp::verify(void)::$_0>, &v81, 1))
    {
      return v31 & 1;
    }

    v80 = 261;
    v78 = v75;
    v79 = v76;
    goto LABEL_92;
  }

  v33 = *(v29[24] + 8);
  v31 = 1;
  if (v33 && v33 != 9)
  {
    v77 = 257;
    mlir::Operation::emitOpError(&v81, a1, &v75);
    if (v81)
    {
      mlir::Diagnostic::operator<<<31ul>(v82, "external functions must have '");
      if (v81)
      {
        v80 = 261;
        v78 = "external";
        v79 = 8;
        mlir::Diagnostic::operator<<(v82, &v78);
        if (v81)
        {
          mlir::Diagnostic::operator<<<7ul>(v82, "' or '");
          if (v81)
          {
            v80 = 261;
            v26 = "extern_weak";
            v27 = 11;
LABEL_72:
            v78 = v26;
            v79 = v27;
            mlir::Diagnostic::operator<<(v82, &v78);
            if (v81)
            {
              mlir::Diagnostic::operator<<<10ul>(v82, "' linkage");
            }
          }
        }
      }
    }

LABEL_93:
    v31 = v83 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
  }

  return v31 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::LLVM::LLVMFuncOp>(mlir::Operation *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v49 = this;
  v2 = this + 64;
  v3 = *(this + 11);
  v4 = (v3 >> 23) & 1;
  v5 = this + 16 * v4 + 64;
  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = *(*(*(v5 + 21) + 8) + 24);
    v48 = v7;
    if (*(v6 + 16) != v7)
    {
      v47 = 257;
      mlir::Operation::emitOpError(&v50, this, v46);
      if (v50)
      {
        mlir::Diagnostic::operator<<<111ul>(v51, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      }

      v38 = *(v6 + 16);
      goto LABEL_47;
    }

    if (v7)
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = *(*(v6 + 8) + 8 * v8);
        if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          break;
        }

        v11 = v10[2];
        if (v11)
        {
          v12 = v10[1];
          v13 = &v12[2 * v11];
          while (1)
          {
            v14 = *v12;
            v15 = *(*v12 + 24);
            if (!v15)
            {
              break;
            }

            v16 = v12[1];
            v17 = *(v14 + 16);
            v18 = memchr(v17, 46, v15);
            if (!v18 || v18 - v17 == -1)
            {
              break;
            }

            v20 = *(v14 + 32);
            if (v20 && ((*(*v20 + 80))(v20, this, 0, v9, v14, v16) & 1) == 0)
            {
LABEL_58:
              v44 = 0;
              return v44 & 1;
            }

            v12 += 2;
            if (v12 == v13)
            {
              goto LABEL_17;
            }
          }

          v42 = "arguments may only have dialect attributes";
LABEL_53:
          v46[0] = v42;
          v47 = 259;
          mlir::Operation::emitOpError(&v50, this, v46);
          goto LABEL_54;
        }

LABEL_17:
        v8 = v9 + 1;
        if (v9 + 1 == v7)
        {
          v3 = *(this + 11);
          v4 = (v3 >> 23) & 1;
          goto LABEL_19;
        }
      }

      v47 = 257;
      mlir::Operation::emitOpError(&v50, this, v46);
      if (!v50)
      {
        goto LABEL_54;
      }

      v45 = *(*(v6 + 8) + 8 * v9);
      if (!v50)
      {
        goto LABEL_54;
      }

      mlir::Diagnostic::operator<<<mlir::Attribute>(v51, &v45);
      if (!v50)
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    }
  }

LABEL_19:
  v21 = *&v2[16 * v4 + 280];
  if (!v21)
  {
    goto LABEL_37;
  }

  mlir::LLVM::LLVMFuncOp::getResultTypes(&v49);
  v23 = v22;
  v48 = v22;
  if (*(v21 + 16) != v22)
  {
    v47 = 257;
    mlir::Operation::emitOpError(&v50, this, v46);
    if (v50)
    {
      mlir::Diagnostic::operator<<<107ul>(v51, "expects result attribute array to have the same number of elements as the number of function results, got ");
    }

    v38 = *(v21 + 16);
LABEL_47:
    v45 = v38;
    v39 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v50, &v45);
    v40 = v39;
    if (*v39)
    {
      mlir::Diagnostic::operator<<<16ul>((v39 + 1), ", but expected ");
    }

    v41 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(v40, &v48) + 200);
LABEL_55:
    v44 = v41 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return v44 & 1;
  }

  if (v22)
  {
    v24 = 0;
    while (1)
    {
      v25 = v24;
      v26 = *(*(v21 + 8) + 8 * v24);
      if (!v26 || *(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        break;
      }

      v27 = v26[2];
      if (v27)
      {
        v28 = v26[1];
        v29 = &v28[2 * v27];
        while (1)
        {
          v30 = *v28;
          v31 = *(*v28 + 24);
          if (!v31)
          {
            break;
          }

          v32 = v28[1];
          v33 = *(v30 + 16);
          v34 = memchr(v33, 46, v31);
          if (!v34 || v34 - v33 == -1)
          {
            break;
          }

          v36 = *(v30 + 32);
          if (v36 && ((*(*v36 + 88))(v36, this, 0, v25, v30, v32) & 1) == 0)
          {
            goto LABEL_58;
          }

          v28 += 2;
          if (v28 == v29)
          {
            goto LABEL_35;
          }
        }

        v42 = "results may only have dialect attributes";
        goto LABEL_53;
      }

LABEL_35:
      v24 = v25 + 1;
      if (v25 + 1 == v23)
      {
        goto LABEL_36;
      }
    }

    v47 = 257;
    mlir::Operation::emitOpError(&v50, this, v46);
    if (!v50)
    {
      goto LABEL_54;
    }

    v45 = *(*(v21 + 8) + 8 * v25);
    if (!v50)
    {
      goto LABEL_54;
    }

    mlir::Diagnostic::operator<<<mlir::Attribute>(v51, &v45);
    if (!v50)
    {
      goto LABEL_54;
    }

LABEL_66:
LABEL_54:
    v41 = v52;
    goto LABEL_55;
  }

LABEL_36:
  LODWORD(v3) = *(this + 11);
LABEL_37:
  if ((v3 & 0x7FFFFF) != 1)
  {
    v46[0] = "expects one region";
    v47 = 259;
    mlir::Operation::emitOpError(&v50, this, v46);
    v43 = (v52 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return v43;
  }

  return mlir::detail::FunctionOpInterfaceTrait<mlir::LLVM::LLVMFuncOp>::verifyBody(this);
}

uint64_t mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyRegionInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v26[26] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v6 = *(a1 + 11);
    v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
    v8 = (((v7 + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    if (*v8 == v8 || (v9 = *(*(*(v7 + 21) + 8) + 24), !v9))
    {
LABEL_13:
      v19 = 1;
      return v19 & 1;
    }

    v10 = v8[1];
    if (v10)
    {
      v11 = v10 - 8;
    }

    else
    {
      v11 = 0;
    }

    if (mlir::LLVM::LLVMDialect::isCompatibleType(*(**(v11 + 48) + 8) & 0xFFFFFFFFFFFFFFF8, v3, v4, v5))
    {
      v15 = 0;
      v16 = (v9 - 1);
      while (v16 != v15)
      {
        v17 = v15 + 1;
        isCompatibleType = mlir::LLVM::LLVMDialect::isCompatibleType(*(*(*(v11 + 48) + 8 * v15 + 8) + 8) & 0xFFFFFFFFFFFFFFF8, v12, v13, v14);
        v15 = v17;
        if ((isCompatibleType & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_13;
    }

    LODWORD(v17) = 0;
LABEL_15:
    v25 = v17;
    v23 = "entry block argument #";
    v24 = 259;
    mlir::Operation::emitOpError(v26, a1, &v23);
    v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v26, &v25);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<21ul>((v20 + 1), " is not of LLVM type");
    }

    v19 = *(v21 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 2017817449 ? (v4 = *(a3 + 3) == 1952670072) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 7)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    if (v5 == 2017817449 && v6 == 1952670072)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "isExact";
    v7[1] = 7;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isExact", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "isExact";
  v10[1] = 7;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LShrOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::LLVM::detail::ExactFlagInterfaceInterfaceTraits::Model<mlir::LLVM::LShrOp>::setIsExact(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(**(***(a2 + 24) + 32) + 608);
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v3;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LShrOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0x400000000;
  v19 = v21;
  if (mlir::LLVM::LShrOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &v19))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
    v24 = v20;
    v22[0] = v14;
    v22[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22))
    {
      v15 = 1;
    }

    else
    {
      v23 = "llvm.lshr";
      v24 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LShrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v7 = (*(*a3 + 16))(a3);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 4)
    {
      *(v10 + 4) = 116;
      *v10 = 1667332197;
      *(v9 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v9, "exact", 5uLL);
    }
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ",", 1uLL);
  }

  else
  {
    *v14 = 44;
    ++*(v13 + 4);
  }

  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "isExact", 7);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  if (*(a2 + 36))
  {
    v24 = a2 - 16;
  }

  else
  {
    v24 = 0;
  }

  (*(*a3 + 32))(a3, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::Op<mlir::LLVM::LShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64), v10 = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v5, "isExact", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v8 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1634036835 ? (v4 = *(a3 + 3) == 1886744161) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 7)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    if (v5 == 1634036835 && v6 == 1886744161)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "cleanup";
    v7[1] = 7;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v9, "cleanup", 7, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "cleanup", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "cleanup";
  v10[1] = 7;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LandingpadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LandingpadOp>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v8 = (*(*a3 + 16))(a3);
  if (v7)
  {
    v9 = " cleanup ";
  }

  else
  {
    v9 = " ";
  }

  if (v7)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  llvm::raw_ostream::operator<<(v8, v9, v10);
  v30 = a2;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 68);
    if (v11)
    {
      v12 = *(a2 + 72) + 24;
      do
      {
        v13 = *v12;
        v14 = *(*(*(*v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v15 = (*(*a3 + 16))(a3);
        v16 = *(v15 + 4);
        if (v16 >= *(v15 + 3))
        {
          llvm::raw_ostream::write(v15, 40);
        }

        else
        {
          *(v15 + 4) = v16 + 1;
          *v16 = 40;
        }

        v17 = (*(*a3 + 16))(a3);
        if (v14 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
        {
          v18 = "filter ";
        }

        else
        {
          v18 = "catch ";
        }

        if (v14 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
        {
          v19 = 7;
        }

        else
        {
          v19 = 6;
        }

        llvm::raw_ostream::operator<<(v17, v18, v19);
        (*(*a3 + 160))(a3, v13);
        v20 = (*(*a3 + 16))(a3);
        v21 = *(v20 + 4);
        if ((*(v20 + 3) - v21) > 2)
        {
          *(v21 + 2) = 32;
          *v21 = 14880;
          *(v20 + 4) += 3;
        }

        else
        {
          llvm::raw_ostream::write(v20, " : ", 3uLL);
        }

        (*(*a3 + 32))(a3, *(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
        v22 = (*(*a3 + 16))(a3);
        v23 = *(v22 + 4);
        if (*(v22 + 3) - v23 > 1uLL)
        {
          *v23 = 8233;
          *(v22 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v22, ") ", 2uLL);
        }

        v12 += 32;
        --v11;
      }

      while (v11);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v30);
  v25 = *(AttrDictionary + 8);
  v26 = *(AttrDictionary + 16);
  v31[0] = "cleanup";
  v31[1] = 7;
  (*(*a3 + 192))(a3, v25, v26, v31, 1);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 8250;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, ": ", 2uLL);
  }

  return (*(*a3 + 32))(a3, *(v30 - 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::LandingpadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    goto LABEL_54;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    goto LABEL_54;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_54;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v37 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v5, "cleanup", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
  {
    goto LABEL_54;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 68);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 72) + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, v7))
      {
        ++v7;
        v8 += 32;
        if (v6 == v7)
        {
          goto LABEL_10;
        }
      }

LABEL_54:
      v28 = 0;
      return v28 & 1;
    }
  }

LABEL_10:
  if (*(a1 + 36))
  {
    v9 = a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_54;
  }

  v10 = a1;
  do
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        v10 = *(v12 + 16);
        if (v10)
        {
          continue;
        }
      }
    }

    goto LABEL_20;
  }

  while (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id);
  if (!*(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 328))
  {
    v32 = "llvm.landingpad needs to be in a function with a personality";
    goto LABEL_57;
  }

LABEL_20:
  v13 = *(a1 + 44);
  if (*(a1 + 64 + 16 * ((v13 >> 23) & 1)))
  {
    if ((v13 & 0x800000) == 0 || (v14 = *(a1 + 68)) == 0)
    {
LABEL_48:
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_26;
  }

  if ((v13 & 0x800000) == 0 || (v14 = *(a1 + 68)) == 0)
  {
    v32 = "landingpad instruction expects at least one clause or cleanup attribute";
LABEL_57:
    v35[0] = v32;
    v36 = 259;
    mlir::Operation::emitError(&v37, a1, v35);
    v31 = v39;
    goto LABEL_58;
  }

LABEL_26:
  v15 = 0;
  v16 = *(a1 + 72) + 24;
  while (1)
  {
    v17 = *v16;
    v18 = *(*v16 + 8);
    if (*(*(v18 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
    {
      goto LABEL_47;
    }

    if ((~v18 & 7) == 0)
    {
      v17 = 0;
    }

    if (!v17)
    {
      break;
    }

    v19 = *(v17 + 8) & 7;
    if (v19 == 6)
    {
      v20 = v17 + 24 * *(v17 + 16);
      v21 = (v20 + 120);
      if (v20 == -120)
      {
        break;
      }

      v22 = *(v20 + 168);
    }

    else
    {
      v23 = v17 + 16 * v19;
      v21 = (v23 + 16);
      v22 = *(v23 + 64);
    }

    v24 = *(v22 + 16);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::LLVM::BitcastOp,void>::id)
    {
      v25 = *(v21[9] + 24);
      if ((~*(v25 + 8) & 7) == 0)
      {
        v25 = 0;
      }

      if (!v25)
      {
        goto LABEL_53;
      }

      v26 = *(v25 + 8) & 7;
      if (v26 == 6)
      {
        v27 = v25 + 24 * *(v25 + 16) + 120;
        if (!v27)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v27 = v25 + 16 * v26 + 16;
      }

      if (*(*(v27 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id)
      {
LABEL_53:
        v35[0] = "constant clauses expected";
        v36 = 259;
        mlir::Operation::emitError(&v37, a1, v35);
        mlir::Diagnostic::attachNote(v38, v21[3], 1);
      }
    }

    else if (v24 != &unk_27FC20028 && *(v21[6] + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id)
    {
      break;
    }

LABEL_47:
    ++v15;
    v16 += 32;
    if (v14 == v15)
    {
      goto LABEL_48;
    }
  }

  v34 = v15;
  v35[0] = "clause #";
  v36 = 259;
  mlir::Operation::emitError(&v37, a1, v35);
  v29 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v37, &v34);
  v30 = v29;
  if (*v29)
  {
    mlir::Diagnostic::operator<<<52ul>((v29 + 1), " is not a known constant - null, addressof, bitcast");
  }

  v31 = *(v30 + 200);
LABEL_58:
  v28 = v31 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
  return v28 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1769238639 ? (v4 = *(a3 + 3) == 1936617321) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 7)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    if (v5 == 1769238639 && v6 == 1936617321)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "options";
    v7[1] = 7;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "options", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "options";
  v10[1] = 7;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LinkerOptionsOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 48))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  v10 = v12;
  v11 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v10, "options", 7);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }
}

uint64_t mlir::Op<mlir::LLVM::LinkerOptionsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v14[0] = "requires attribute 'options'";
    v15 = 259;
    mlir::Operation::emitOpError(v16, a1, v14);
    v12 = v17;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  v16[0] = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
  {
    goto LABEL_13;
  }

LABEL_7:
  v8 = *(a1 + 16);
  if (v8 && (v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (v10 = *(v9 + 16)) != 0 && (mlir::LLVM::satisfiesLLVMModule(v10, v7) & 1) == 0)
  {
    v14[0] = "must appear at the module level";
    v15 = 259;
    mlir::Operation::emitOpError(v16, a1, v14);
    v11 = v17 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 <= 10)
  {
    if (a4 == 4)
    {
      if (*a3 == 1633772148)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
        goto LABEL_64;
      }
    }

    else
    {
      if (a4 != 8)
      {
        v7 = 0;
        if (a4 == 9)
        {
          if (*a3 == 0x6E656D6E67696C61 && *(a3 + 8) == 116)
          {
            v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
          }

          else if (*a3 == 0x6E61697261766E69 && *(a3 + 8) == 116)
          {
            v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
          }

          else if (*a3 == 0x706F6373636E7973 && *(a3 + 8) == 101)
          {
            v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
          }

          else
          {
            if (*a3 != 0x656C6974616C6F76 || *(a3 + 8) != 95)
            {
              goto LABEL_58;
            }

            v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
          }

          goto LABEL_64;
        }

        return v7 | v4;
      }

      if (*a3 == 0x676E69726564726FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
        goto LABEL_64;
      }
    }

LABEL_58:
    v4 = 0;
    v7 = 0;
    return v7 | v4;
  }

  if (a4 <= 12)
  {
    if (a4 == 11)
    {
      if (*a3 != 0x6F706D65746E6F6ELL || *(a3 + 3) != 0x6C61726F706D6574)
      {
        goto LABEL_58;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
    }

    else
    {
      if (*a3 != 0x63735F7361696C61 || *(a3 + 8) != 1936027759)
      {
        goto LABEL_58;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    }

LABEL_64:
    v16 = *v5;
    v7 = v16 & 0xFFFFFFFFFFFFFF00;
    v4 = v16;
    return v7 | v4;
  }

  if (a4 == 14)
  {
    if (*a3 == 0x6E61697261766E69 && *(a3 + 6) == 0x70756F7247746E61)
    {
      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
    }

    else
    {
      if (*a3 != 0x5F7361696C616F6ELL || *(a3 + 6) != 0x7365706F63735F73)
      {
        goto LABEL_58;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
    }

    goto LABEL_64;
  }

  v7 = 0;
  if (a4 == 13)
  {
    if (*a3 != 0x675F737365636361 || *(a3 + 5) != 0x7370756F72675F73)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  return v7 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 <= 10)
  {
    switch(v7)
    {
      case 4:
        if (*v6 == 1633772148)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v23 = a4;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v5[17] = v23;
        }

        break;
      case 8:
        if (*v6 == 0x676E69726564726FLL)
        {
          if (a4)
          {
            if (mlir::LLVM::AtomicOrderingAttr::classof(a4))
            {
              v33 = a4;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v5[15] = v33;
        }

        break;
      case 9:
        if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v35 = a4;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }

          v5[10] = v35;
        }

        else if (*v6 == 0x6E61697261766E69 && *(v6 + 8) == 116)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v36 = a4;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          v5[11] = v36;
        }

        else if (*v6 == 0x706F6373636E7973 && *(v6 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v37 = a4;
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }

          v5[16] = v37;
        }

        else
        {
          v15 = *v6;
          v16 = *(v6 + 8);
          if (v15 == 0x656C6974616C6F76 && v16 == 95)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v18 = a4;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            v5[18] = v18;
          }
        }

        break;
    }
  }

  else if (v7 > 12)
  {
    if (v7 == 14)
    {
      if (*v6 == 0x6E61697261766E69 && *(v6 + 6) == 0x70756F7247746E61)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v34 = a4;
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v34 = 0;
        }

        v5[12] = v34;
      }

      else
      {
        v29 = *v6;
        v30 = *(v6 + 6);
        if (v29 == 0x5F7361696C616F6ELL && v30 == 0x7365706F63735F73)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v32 = a4;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v5[13] = v32;
        }
      }
    }

    else if (v7 == 13)
    {
      v19 = *v6;
      v20 = *(v6 + 5);
      if (v19 == 0x675F737365636361 && v20 == 0x7370756F72675F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v5[8] = v22;
      }
    }
  }

  else if (v7 == 11)
  {
    v24 = *v6;
    v25 = *(v6 + 3);
    if (v24 == 0x6F706D65746E6F6ELL && v25 == 0x6C61726F706D6574)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v27 = a4;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v5[14] = v27;
    }
  }

  else
  {
    v8 = *v6;
    v9 = *(v6 + 2);
    if (v8 == 0x63735F7361696C61 && v9 == 1936027759)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v5[9] = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v42 = 261;
    v40 = "access_groups";
    v41 = 13;
    v9 = mlir::StringAttr::get(v8, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v42 = 261;
    v40 = "alias_scopes";
    v41 = 12;
    v12 = mlir::StringAttr::get(v11, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v42 = 261;
    v40 = "alignment";
    v41 = 9;
    v15 = mlir::StringAttr::get(v14, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v42 = 261;
    v40 = "invariant";
    v41 = 9;
    v18 = mlir::StringAttr::get(v17, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v42 = 261;
    v40 = "invariantGroup";
    v41 = 14;
    v21 = mlir::StringAttr::get(v20, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v42 = 261;
    v40 = "noalias_scopes";
    v41 = 14;
    v24 = mlir::StringAttr::get(v23, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v42 = 261;
    v40 = "nontemporal";
    v41 = 11;
    v27 = mlir::StringAttr::get(v26, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v42 = 261;
    v40 = "ordering";
    v41 = 8;
    v30 = mlir::StringAttr::get(v29, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v42 = 261;
    v40 = "syncscope";
    v41 = 9;
    v33 = mlir::StringAttr::get(v32, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v42 = 261;
    v40 = "tbaa";
    v41 = 4;
    v36 = mlir::StringAttr::get(v35, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v42 = 261;
    v40 = "volatile_";
    v41 = 9;
    v39 = mlir::StringAttr::get(v38, &v40, a3);
    mlir::NamedAttrList::push_back(a3, v39, v37);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v4;
    v5 = *(a4 + 32);
    v6 = *(a4 + 48);
    v7 = *(a4 + 64);
    *(a3 + 80) = *(a4 + 80);
    *(a3 + 48) = v6;
    *(a3 + 64) = v7;
    *(a3 + 32) = v5;
  }

  else
  {
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return mlir::LLVM::LoadOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v48, a6, a2, a3);
    if (v48)
    {
      mlir::Diagnostic::operator<<<42ul>(v49, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "access_groups", 0xDuLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_scopes", 0xCuLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

LABEL_30:
          if (v48)
          {
            LODWORD(v47[0]) = 0;
            v47[1] = v13;
            v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, v47, 1);
            v22 = v50 + 24 * v51;
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            ++v51;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[2] = v13;
      }
    }

    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "invariant", 9uLL);
    if (v20)
    {
      v13 = *(v19 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v49, v18);
          goto LABEL_30;
        }

        a3[3] = v13;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "invariantGroup", 0xEuLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v47[0] = v26;
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

          goto LABEL_44;
        }

        a3[4] = v26;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "noalias_scopes", 0xEuLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v47[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

LABEL_44:
          mlir::Diagnostic::operator<<<60ul>(v49, v27);
          goto LABEL_76;
        }

        a3[5] = v30;
      }
    }

    v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "nontemporal", 0xBuLL);
    if (v32)
    {
      v33 = *(v31 + 8);
      v47[0] = v33;
      if (v33)
      {
        if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

LABEL_76:
          if (v48)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v49, v47);
          }

          goto LABEL_4;
        }

        a3[6] = v33;
      }
    }

    v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "ordering", 8uLL);
    if (v35)
    {
      v36 = *(v34 + 8);
      v47[0] = v36;
      if (v36)
      {
        if (!mlir::LLVM::AtomicOrderingAttr::classof(v36))
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

          goto LABEL_76;
        }

        a3[7] = v36;
      }
    }

    v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "syncscope", 9uLL);
    if (v38)
    {
      v39 = *(v37 + 8);
      v47[0] = v39;
      if (v39)
      {
        if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

          goto LABEL_75;
        }

        a3[8] = v39;
      }
    }

    v41 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tbaa", 4uLL);
    if (v42)
    {
      v43 = *(v41 + 8);
      v47[0] = v43;
      if (v43)
      {
        if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

          goto LABEL_76;
        }

        a3[9] = v43;
      }
    }

    v44 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "volatile_", 9uLL);
    if (v45)
    {
      v46 = *(v44 + 8);
      v47[0] = v46;
      if (v46)
      {
        if (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v48, a6);
          if (!v48)
          {
            goto LABEL_4;
          }

LABEL_75:
          mlir::Diagnostic::operator<<<55ul>(v49, v40);
          goto LABEL_76;
        }

        a3[10] = v46;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  (a5)(&v48, a6);
  if (v48)
  {
    goto LABEL_30;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v46 = v48;
  v47 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v45 = 261;
    v43 = "access_groups";
    v44 = 13;
    v9 = mlir::StringAttr::get(v8, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v45 = 261;
    v43 = "alias_scopes";
    v44 = 12;
    v12 = mlir::StringAttr::get(v11, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v45 = 261;
    v43 = "alignment";
    v44 = 9;
    v15 = mlir::StringAttr::get(v14, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v45 = 261;
    v43 = "invariant";
    v44 = 9;
    v18 = mlir::StringAttr::get(v17, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v45 = 261;
    v43 = "invariantGroup";
    v44 = 14;
    v21 = mlir::StringAttr::get(v20, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v45 = 261;
    v43 = "noalias_scopes";
    v44 = 14;
    v24 = mlir::StringAttr::get(v23, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v45 = 261;
    v43 = "nontemporal";
    v44 = 11;
    v27 = mlir::StringAttr::get(v26, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v45 = 261;
    v43 = "ordering";
    v44 = 8;
    v30 = mlir::StringAttr::get(v29, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v45 = 261;
    v43 = "syncscope";
    v44 = 9;
    v33 = mlir::StringAttr::get(v32, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v45 = 261;
    v43 = "tbaa";
    v44 = 4;
    v36 = mlir::StringAttr::get(v35, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v45 = 261;
    v43 = "volatile_";
    v44 = 9;
    v39 = mlir::StringAttr::get(v38, &v43, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v46, v39, v37);
  }

  v40 = v46;
  if (v47)
  {
    v41 = mlir::DictionaryAttr::get(v3, v46, v47);
    v40 = v46;
  }

  else
  {
    v41 = 0;
  }

  if (v40 != v48)
  {
    free(v40);
  }

  return v41;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  result = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5);
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v44 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v43 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[4];
  v14 = a2[5];
  v15 = (8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13);
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v42 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v17 = HIDWORD(v14);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v19 = a2[6];
  v20 = a2[7];
  v21 = (8 * v19 - 0xAE502812AA7333) ^ HIDWORD(v19);
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v40 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v23 = HIDWORD(v20);
  v24 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
  v25 = a2[8];
  v26 = a2[9];
  v27 = (8 * v25 - 0xAE502812AA7333) ^ HIDWORD(v25);
  v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ ((0x9DDFEA08EB382D69 * v27) >> 47) ^ (0x9DDFEA08EB382D69 * v27));
  v38 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v29 = HIDWORD(v26);
  v30 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v32 = a2[10];
  v33 = 0x9DDFEA08EB382D69 * ((8 * v32 - 0xAE502812AA7333) ^ HIDWORD(v32));
  v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v32) ^ (v33 >> 47) ^ v33);
  v36 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
  v37 = v31;
  memset(v46, 0, sizeof(v46));
  v47 = 0xFF51AFD7ED558CCDLL;
  v45 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v45, 0, v46, &v46[3] + 8, 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47)), &v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v36);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::LoadOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 24))(a3, v4[13]);
  (*(*a3 + 24))(a3, v4[14]);
  (*(*a3 + 24))(a3, v4[15]);
  (*(*a3 + 24))(a3, v4[16]);
  (*(*a3 + 24))(a3, v4[17]);
  v5 = v4[18];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits::Model<mlir::LLVM::LoadOp>::getAccessedOperands(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 72) + 24);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a2, &v2, &v3);
}

uint64_t *mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::LLVM::LoadOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v6 = *(a2 + 72);
  v7 = *(a3 + 8);
  if (v7 >= *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *>(a3, v5, *(a2 + 72));
  }

  else
  {
    v8 = *a3 + 40 * v7;
    v9 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
    *v8 = v5;
    *(v8 + 8) = v9;
    *(v8 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 36) = 0;
    ++*(a3 + 8);
  }

  v10 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (*(v10 + 80) || (v13 = *(v10 + 56), (result = mlir::IntegerAttr::getInt(&v13)) != 0) && (v13 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 56), result = mlir::IntegerAttr::getInt(&v13), result != 1))
  {
    v13 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(a3, &v13);
    v11 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
    return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *>(a3, v11);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20950))
  {
    v1 = llvm::getTypeName<mlir::PromotableMemOpInterface>();
    qword_27FC20948 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20950);
  }

  return qword_27FC20948;
}

uint64_t llvm::getTypeName<mlir::PromotableMemOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20968))
  {
    qword_27FC20958 = llvm::detail::getTypeNameImpl<mlir::PromotableMemOpInterface>();
    unk_27FC20960 = v1;
    __cxa_guard_release(&qword_27FC20968);
  }

  return qword_27FC20958;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableMemOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableMemOpInterface]";
  v6 = 92;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SafeMemorySlotAccessOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20978))
  {
    v1 = llvm::getTypeName<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>>();
    qword_27FC20970 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20978);
  }

  return qword_27FC20970;
}

uint64_t llvm::getTypeName<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20990))
  {
    qword_27FC20980 = llvm::detail::getTypeNameImpl<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>>();
    *algn_27FC20988 = v1;
    __cxa_guard_release(&qword_27FC20990);
  }

  return qword_27FC20980;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableMemOpInterface::Trait<Empty>]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 80))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 7uLL)
    {
      *v11 = 0x656C6974616C6F76;
      *(v10 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "volatile", 8uLL);
    }
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v14 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 56);
  v15 = mlir::IntegerType::get(*(***(a2 + 24) + 32), 64, 0);
  if (v14 != mlir::IntegerAttr::get(v15, 0))
  {
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (v17 >= *(v16 + 3))
    {
      llvm::raw_ostream::write(v16, 32);
    }

    else
    {
      *(v16 + 4) = v17 + 1;
      *v17 = 32;
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if ((*(v18 + 3) - v19) > 5)
    {
      *(v19 + 4) = 25449;
      *v19 = 1836020833;
      *(v18 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v18, "atomic", 6uLL);
    }

    if (*(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
    {
      v20 = (*(*a3 + 16))(a3);
      v21 = *(v20 + 4);
      if (v21 >= *(v20 + 3))
      {
        llvm::raw_ostream::write(v20, 32);
      }

      else
      {
        *(v20 + 4) = v21 + 1;
        *v21 = 32;
      }

      v22 = (*(*a3 + 16))(a3);
      v23 = *(v22 + 4);
      if ((*(v22 + 3) - v23) > 8)
      {
        *(v23 + 8) = 101;
        *v23 = *"syncscope";
        *(v22 + 4) += 9;
      }

      else
      {
        llvm::raw_ostream::write(v22, "syncscope", 9uLL);
      }

      v24 = (*(*a3 + 16))(a3);
      v25 = *(v24 + 4);
      if (*(v24 + 3) == v25)
      {
        llvm::raw_ostream::write(v24, "(", 1uLL);
      }

      else
      {
        *v25 = 40;
        ++*(v24 + 4);
      }

      (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
      v26 = (*(*a3 + 16))(a3);
      v27 = *(v26 + 4);
      if (*(v26 + 3) == v27)
      {
        llvm::raw_ostream::write(v26, ")", 1uLL);
      }

      else
      {
        *v27 = 41;
        ++*(v26 + 4);
      }
    }

    v28 = (*(*a3 + 16))(a3);
    v29 = *(v28 + 4);
    if (v29 >= *(v28 + 3))
    {
      llvm::raw_ostream::write(v28, 32);
    }

    else
    {
      *(v28 + 4) = v29 + 1;
      *v29 = 32;
    }

    v60 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 56);
    Int = mlir::IntegerAttr::getInt(&v60);
    v31 = mlir::LLVM::stringifyAtomicOrdering(Int);
    v33 = v32;
    v34 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v34, v31, v33);
  }

  v35 = (*(a2 + 44) >> 23) & 1;
  if (*(v7 + 16 * v35 + 24))
  {
    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (v37 >= *(v36 + 3))
    {
      llvm::raw_ostream::write(v36, 32);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 32;
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if ((*(v38 + 3) - v39) > 8)
    {
      *(v39 + 8) = 116;
      *v39 = *"invariant";
      *(v38 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v38, "invariant", 9uLL);
    }

    v35 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v35 + 32))
  {
    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (v41 >= *(v40 + 3))
    {
      llvm::raw_ostream::write(v40, 32);
    }

    else
    {
      *(v40 + 4) = v41 + 1;
      *v41 = 32;
    }

    v42 = (*(*a3 + 16))(a3);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 0xEuLL)
    {
      qmemcpy(v43, "invariant_group", 15);
      *(v42 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v42, "invariant_group", 0xFuLL);
    }
  }

  v60 = v62;
  v61 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "volatile_", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "syncscope", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "ordering", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "invariant", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "invariantGroup", 14);
  v44 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 56);
  if (v44)
  {
    v45 = mlir::IntegerType::get(*(***(a2 + 24) + 32), 64, 0);
    if (v44 == mlir::IntegerAttr::get(v45, 0))
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "ordering", 8);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v60, v61);
  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (v48 >= *(v47 + 3))
  {
    llvm::raw_ostream::write(v47, 32);
  }

  else
  {
    *(v47 + 4) = v48 + 1;
    *v48 = 32;
  }

  v49 = (*(*a3 + 16))(a3);
  v50 = *(v49 + 4);
  if (*(v49 + 3) == v50)
  {
    llvm::raw_ostream::write(v49, ":", 1uLL);
  }

  else
  {
    *v50 = 58;
    ++*(v49 + 4);
  }

  v51 = (*(*a3 + 16))(a3);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v53 = (*(*a3 + 16))(a3);
  v54 = *(v53 + 4);
  if (v54 >= *(v53 + 3))
  {
    llvm::raw_ostream::write(v53, 32);
  }

  else
  {
    *(v53 + 4) = v54 + 1;
    *v54 = 32;
  }

  v55 = (*(*a3 + 16))(a3);
  v56 = *(v55 + 4);
  if (*(v55 + 3) - v56 > 1uLL)
  {
    *v56 = 15917;
    *(v55 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v55, "->", 2uLL);
  }

  v57 = (*(*a3 + 16))(a3);
  v58 = *(v57 + 4);
  if (v58 >= *(v57 + 3))
  {
    llvm::raw_ostream::write(v57, 32);
  }

  else
  {
    *(v57 + 4) = v58 + 1;
    *v58 = 32;
  }

  if (*(a2 + 36))
  {
    v59 = a2 - 16;
  }

  else
  {
    v59 = 0;
  }

  (*(*a3 + 32))(a3, *(v59 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v60 != v62)
  {
    free(v60);
  }
}

uint64_t mlir::Op<mlir::LLVM::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableMemOpInterface::Trait,mlir::SafeMemorySlotAccessOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0
    && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0
    && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4)
    && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0
    && (v6 = a1 + 64, v7 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1), v9 = *v7, v8 = *(v7 + 8), v10 = *(v7 + 16), v11 = *(v7 + 24), v12 = *(v7 + 32), v14 = *(v7 + 48), v13 = *(v7 + 56), v15 = *(v7 + 64), v31 = *(v7 + 72), v32 = *(v7 + 40), v16 = *(v7 + 80), v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v10, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v16, "volatile_", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v14, "nontemporal", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v11, "invariant", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v12, "invariantGroup", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v13, "ordering", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v15, "syncscope", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v8, "alias_scopes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v32, "noalias_scopes", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && (v42[0] = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v31, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v42))
    && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0)
    && (*(a1 + 36) ? (v17 = a1 - 16) : (v17 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps19(a1, (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6) && (mlir::LLVM::detail::verifyAccessGroupOpInterface(a1, v18) & 1) != 0 && (mlir::LLVM::detail::verifyAliasAnalysisOpInterface(a1, v19) & 1) != 0))
  {
    v20 = *(a1 - 8);
    v42[0] = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
    if (mlir::IntegerAttr::getInt(v42))
    {
      v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
      mlir::DataLayout::closest(a1, v42);
      if (isTypeCompatibleWithAtomicOp(v21, v42))
      {
        v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
        if ((mlir::IntegerAttr::getInt(&v37) - 5) > 1)
        {
          v30 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
          if (v30)
          {
            if (*(v30 + 24) >= 0x41u)
            {
              operator new[]();
            }

            v25 = 1;
            goto LABEL_43;
          }

          v35[0] = "expected alignment for atomic access";
          v36 = 259;
          mlir::Operation::emitOpError(&v37, a1, v35);
        }

        else
        {
          v33[0] = "unsupported ordering '";
          v34 = 259;
          mlir::Operation::emitOpError(&v37, a1, v33);
          v35[0] = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
          Int = mlir::IntegerAttr::getInt(v35);
          if (v37)
          {
            v23 = mlir::LLVM::stringifyAtomicOrdering(Int);
            v36 = 261;
            v35[0] = v23;
            v35[1] = v24;
            mlir::Diagnostic::operator<<(v38, v35);
            if (v37)
            {
              mlir::Diagnostic::operator<<<2ul>(v38, "'");
            }
          }
        }
      }

      else
      {
        v35[0] = "unsupported type ";
        v36 = 259;
        mlir::Operation::emitOpError(&v37, a1, v35);
        if (v37)
        {
          LODWORD(v33[0]) = 4;
          v33[1] = v21;
          v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, v33, 1);
          v28 = v39 + 24 * v40;
          v29 = *v27;
          *(v28 + 16) = *(v27 + 16);
          *v28 = v29;
          ++v40;
          if (v37)
          {
            mlir::Diagnostic::operator<<<19ul>(v38, " for atomic access");
          }
        }
      }

      v25 = v41 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
LABEL_43:
      MEMORY[0x25F891030](v42[17], 8);
      MEMORY[0x25F891030](v42[14], 8);
      MEMORY[0x25F891030](v42[11], 8);
      MEMORY[0x25F891030](v42[8], 8);
      MEMORY[0x25F891030](v42[5], 8);
      return v25 & 1;
    }

    if (*(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 64))
    {
      v37 = "expected syncscope to be null for non-atomic access";
      LOWORD(v40) = 259;
      mlir::Operation::emitOpError(v42, a1, &v37);
      v25 = v43 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::initProperties(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v14[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v13, a6, a2, a3);
    if (v13)
    {
      mlir::Diagnostic::operator<<<42ul>(v14, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "overflowFlags", 0xDuLL);
  if ((v11 & 1) != 0 && (v12 = *(v10 + 8)) != 0)
  {
    if (!mlir::convertFromAttribute(a3, v12, a5, a6))
    {
      return 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  v4 = mlir::LLVM::IntegerOverflowFlagsAttr::get(v2, v3);
  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "overflowFlags";
  v10[1] = 13;
  v7 = mlir::StringAttr::get(v5, v10, v6);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v7, v4);
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v2, v12, v13);
  }

  else
  {
    v8 = 0;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::MulOp>::hashProperties(uint64_t a1, unsigned int *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * *a2 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * *a2 - 0x4089B058A25136EBLL) >> 47));
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::MulOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MulOpGenericAdaptorBase::Properties>(a2);
  v5 = 0;
  if (((*(*a1 + 72))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  *v3 = v5;
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::MulOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::MulOp::inferReturnTypes(a4, a5, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "llvm.mul";
      v22 = 8;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::MulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  printOverflowFlags(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  if (*(a2 + 36))
  {
    v20 = a2 - 16;
  }

  else
  {
    v20 = 0;
  }

  (*(*a3 + 32))(a3, *(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v7 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::NoneTokenOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::NoneTokenOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  mlir::LLVM::NoneTokenOp::inferReturnTypes(a1, &v17);
  v13 = *(a11 + 8);
  v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
  v22 = v18;
  v20[0] = v14;
  v20[1] = v13;
  if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
  {
    v15 = 1;
  }

  else
  {
    v21 = "llvm.mlir.none";
    v22 = 14;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::NoneTokenOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
  v8 = (*(*a3 + 16))(a3);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++*(v10 + 4);
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  if (*(a2 + 9))
  {
    v14 = a2 - 16;
  }

  else
  {
    v14 = 0;
  }

  (*(*a3 + 32))(a3, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::LLVM::NoneTokenOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 9) ? a1 - 16 : 0;
  v7 = *(v6 + 1) & 0xFFFFFFFFFFFFFFF8;
  v18 = 0;
  v8 = *(*v7 + 136);
  if (v8 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
  {
    return 1;
  }

  v17 = 261;
  v16[0] = "result";
  v16[1] = 6;
  mlir::Operation::emitOpError(&v21, a1, v16);
  if (v21)
  {
    mlir::Diagnostic::operator<<<3ul>(v22, " #");
  }

  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<35ul>((v9 + 1), " must be LLVM token type, but got ");
    if (*v10)
    {
      v19 = 4;
      v20 = v7;
      v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v19, 1);
      v12 = v10[3] + 24 * *(v10 + 8);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *v12 = v13;
      ++*(v10 + 8);
    }
  }

  v14 = *(v10 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  return (v14 & 1) == 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x696F6A7369447369 ? (v4 = *(a3 + 8) == 29806) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 10)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 0x696F6A7369447369 && v6 == 29806)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "isDisjoint";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isDisjoint", 0xAuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "isDisjoint";
  v10[1] = 10;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::OrOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::LLVM::detail::DisjointFlagInterfaceInterfaceTraits::Model<mlir::LLVM::OrOp>::setIsDisjoint(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(**(***(a2 + 24) + 32) + 608);
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v3;
}

uint64_t llvm::getTypeName<mlir::LLVM::DisjointFlagInterface>()
{
  if ((atomic_load_explicit(&qword_27FC209B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC209B8))
  {
    qword_27FC209A8 = llvm::detail::getTypeNameImpl<mlir::LLVM::DisjointFlagInterface>();
    unk_27FC209B0 = v1;
    __cxa_guard_release(&qword_27FC209B8);
  }

  return qword_27FC209A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DisjointFlagInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DisjointFlagInterface]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::OrOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0x400000000;
  v19 = v21;
  if (mlir::LLVM::OrOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &v19))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
    v24 = v20;
    v22[0] = v14;
    v22[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22))
    {
      v15 = 1;
    }

    else
    {
      v23 = "llvm.or";
      v24 = 7;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::OrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 0;
  }

  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v7 = a3[1];
  if (!v7 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v9 = *(a2 - 8);
  if (*(v5 + 24) > 0x40u)
  {
    operator new[]();
  }

  if (*(v7 + 24) > 0x40u)
  {
    operator new[]();
  }

  v10 = *(v7 + 16) | *(v5 + 16);
  v13 = *(v7 + 24);
  v12 = v10;
  v11 = mlir::IntegerAttr::get((v9 & 0xFFFFFFFFFFFFFFF8), &v12);
  if (v13 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  if (v11 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v11 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[13] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC209C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC209C8))
  {
    v8 = llvm::getTypeName<mlir::LLVM::DisjointFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DisjointFlagInterface::Trait>(void)::Empty>>();
    qword_27FC209C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC209C8);
  }

  v10[11] = qword_27FC209C0;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[12] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::LLVM::DisjointFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DisjointFlagInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC209E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC209E0))
  {
    qword_27FC209D0 = llvm::detail::getTypeNameImpl<mlir::LLVM::DisjointFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DisjointFlagInterface::Trait>(void)::Empty>>();
    *algn_27FC209D8 = v1;
    __cxa_guard_release(&qword_27FC209E0);
  }

  return qword_27FC209D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DisjointFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DisjointFlagInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DisjointFlagInterface::Trait<Empty>]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v7 = (*(*a3 + 16))(a3);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 7uLL)
    {
      *v10 = 0x746E696F6A736964;
      *(v9 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v9, "disjoint", 8uLL);
    }
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ",", 1uLL);
  }

  else
  {
    *v14 = 44;
    ++*(v13 + 4);
  }

  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "isDisjoint", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  if (*(a2 + 36))
  {
    v24 = a2 - 16;
  }

  else
  {
    v24 = 0;
  }

  (*(*a3 + 32))(a3, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::Op<mlir::LLVM::OrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::DisjointFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64), v10 = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v5, "isDisjoint", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v8 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PoisonOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(**(***(a2 + 24) + 32) + 560);
  v9 = &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v9);
  if (v7 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[9] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
  v8 = (*(*a3 + 16))(a3);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++*(v10 + 4);
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  if (*(a2 + 9))
  {
    v14 = a2 - 16;
  }

  else
  {
    v14 = 0;
  }

  (*(*a3 + 32))(a3, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::LLVM::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    if (*(a1 + 9))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(v6 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::PtrToIntOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, 0);
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 28532;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "to", 2uLL);
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  if (*(a2 + 36))
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 32))(a3, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::LLVM::PtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ResumeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, 0);
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::ResumeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::LLVM::ReturnOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::LLVM::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(InterfaceFor + 16);

  return v5();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
    {
      (*(*a3 + 160))(a3);
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (v11 >= *(v10 + 3))
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      *(v10 + 4) = v11 + 1;
      *v11 = 32;
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, ":", 1uLL);
    }

    else
    {
      *v13 = 58;
      ++*(v12 + 4);
    }

    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
    {
      v16 = *(*(a2 + 72) + 24);
      if (v16)
      {
        (*(*a3 + 32))(a3, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }
  }
}

uint64_t mlir::Op<mlir::LLVM::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_24;
  }

  v23 = 0;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 68);
    if (v6 < 2)
    {
      if (v6 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24[0] = "operand group starting at #";
      v25 = 259;
      mlir::Operation::emitOpError(&v26, a1, v24);
      v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v26, &v23);
      v8 = v7;
      if (*v7)
      {
        mlir::Diagnostic::operator<<<37ul>((v7 + 1), " requires 0 or 1 element, but found ");
      }

      v22 = v6;
      v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v8, &v22) + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
      if (v9)
      {
        goto LABEL_24;
      }
    }
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    v10 = a1;
    do
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v10 = *(v12 + 16);
          if (v10)
          {
            continue;
          }
        }
      }

      goto LABEL_33;
    }

    while (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id);
    v13 = *(*(*(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 232) + 8) + 8);
    v14 = *(*v13 + 136);
    v15 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
    v16 = *(a1 + 44);
    if (v14 == v15)
    {
      if ((v16 & 0x800000) == 0 || !*(a1 + 68) || !*(*(a1 + 72) + 24))
      {
        goto LABEL_33;
      }

      v18 = "expected no operands";
    }

    else
    {
      if ((v16 & 0x800000) != 0)
      {
        if (*(a1 + 68))
        {
          v17 = *(*(a1 + 72) + 24);
          if (v17)
          {
            if ((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) != v13)
            {
              v18 = "mismatching result types";
              goto LABEL_32;
            }

LABEL_33:
            v19 = 1;
            return v19 & 1;
          }
        }
      }

      v21 = *(*v13 + 136);
      if (v21 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        goto LABEL_33;
      }

      v18 = "expected 1 operand";
    }

LABEL_32:
    v24[0] = v18;
    v25 = 259;
    mlir::Operation::emitOpError(&v26, a1, v24);
    mlir::Diagnostic::attachNote(v27, *(v10 + 24), 1);
  }

LABEL_24:
  v19 = 0;
  return v19 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::SDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::SDivOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 2017817449 ? (v4 = *(a3 + 3) == 1952670072) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}