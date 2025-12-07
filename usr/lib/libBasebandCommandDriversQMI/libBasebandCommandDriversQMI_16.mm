void __copy_helper_block_e8_40c29_ZTSN3abm4data12QMAPSettingsE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18E38;
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_4056c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }
}

void data::QMIDataCommandDriver::setDataFormat(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_92_3;
  v10 = *(a2 + 8);
  v9[4] = a1;
  v9[5] = &unk_2A1E18D60;
  v11 = *(a2 + 12);
  v13 = *(a2 + 24);
  v12 = &unk_2A1E18DA8;
  v14 = *(a2 + 28);
  v16 = *(a2 + 40);
  v15 = &unk_2A1E18DF0;
  v17 = *(a2 + 44);
  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a4 + 8);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v20 = a3;
  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v9);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v145 = *(a1 + 32);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v178 = v2;
  v179 = v2;
  qmi::MutableMessageBase::MutableMessageBase(&v178);
  v3 = *(a1 + 52);
  v146 = a1;
  if (!v3)
  {
LABEL_24:
    v5 = 2048;
    v4 = 1;
    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 84);
    v6 = 9;
    goto LABEL_26;
  }

  if (v3 != 1)
  {
    v175 = operator new(0x20uLL);
    v176 = xmmword_296FC2D50;
    strcpy(v175, "Invalid DataAggregationProtocol");
    CreateError();
    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = _Block_copy(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 96);
    block = MEMORY[0x29EDCA5F8];
    v181 = 1174405120;
    v182 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
    v183 = &__block_descriptor_tmp_163_2;
    if (v8)
    {
      v10 = _Block_copy(v8);
      v11 = v177;
      v184 = v10;
      v185 = v177;
      if (!v177)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = v177;
      v184 = 0;
      v185 = v177;
      if (!v177)
      {
LABEL_14:
        dispatch_async(v9, &block);
        if (v185)
        {
          CFRelease(v185);
        }

        if (v184)
        {
          _Block_release(v184);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        if (v177)
        {
          CFRelease(v177);
        }

        if (SHIBYTE(v176) < 0)
        {
          operator delete(v175);
        }

        goto LABEL_24;
      }
    }

    CFRetain(v11);
    goto LABEL_14;
  }

  v4 = *(a1 + 68);
  v5 = *(a1 + 84);
LABEL_25:
  v6 = 5;
LABEL_26:
  v171[0] = MEMORY[0x29EDCA5F8];
  v171[1] = 0x40000000;
  v12 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v172 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v173 = &__block_descriptor_tmp_67_0;
  v174 = v6;
  v13 = *(&v178 + 1);
  v14 = v179;
  v15 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v15 = *(&v178 + 1);
    while (*(*v15 + 8) != 19)
    {
      if (++v15 == v179)
      {
        goto LABEL_34;
      }
    }
  }

  if (v15 == v179)
  {
LABEL_34:
    v18 = operator new(0x10uLL);
    v18[8] = 19;
    *v18 = &unk_2A1E1FE08;
    *(v18 + 3) = 0;
    v17 = v18 + 12;
    if (v14 >= *(&v179 + 1))
    {
      v20 = v14 - v13;
      v21 = (v14 - v13) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v23 = *(&v179 + 1) - v13;
      if ((*(&v179 + 1) - v13) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      v144 = v18 + 12;
      if (v24)
      {
        if (v24 >> 61)
        {
          goto LABEL_242;
        }

        v25 = v6;
        v26 = v5;
        v27 = v18;
        v28 = operator new(8 * v24);
        v18 = v27;
        v5 = v26;
        v6 = v25;
      }

      else
      {
        v28 = 0;
      }

      v29 = &v28[8 * v21];
      *v29 = v18;
      v19 = v29 + 8;
      memcpy(v28, v13, v20);
      *(&v178 + 1) = v28;
      *&v179 = v19;
      *(&v179 + 1) = &v28[8 * v24];
      if (v13)
      {
        operator delete(v13);
      }

      v17 = v144;
    }

    else
    {
      *v14 = v18;
      v19 = v14 + 8;
    }

    *&v179 = v19;
    v12 = v172;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_240;
    }

    v17 = v16 + 12;
  }

  v12(v171, v17);
  v167[0] = MEMORY[0x29EDCA5F8];
  v167[1] = 0x40000000;
  v30 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v168 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v169 = &__block_descriptor_tmp_68_2;
  v170 = v4;
  v31 = *(&v178 + 1);
  v32 = v179;
  v33 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v33 = *(&v178 + 1);
    while (*(*v33 + 8) != 21)
    {
      if (++v33 == v179)
      {
        goto LABEL_58;
      }
    }
  }

  if (v33 == v179)
  {
LABEL_58:
    v36 = operator new(0x10uLL);
    v36[8] = 21;
    *v36 = &unk_2A1E1FE58;
    *(v36 + 3) = 0;
    v35 = v36 + 12;
    if (v32 >= *(&v179 + 1))
    {
      v38 = v32 - v31;
      v39 = (v32 - v31) >> 3;
      v40 = v39 + 1;
      if ((v39 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v41 = *(&v179 + 1) - v31;
      if ((*(&v179 + 1) - v31) >> 2 > v40)
      {
        v40 = v41 >> 2;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        if (v42 >> 61)
        {
          goto LABEL_242;
        }

        v43 = v6;
        v44 = v5;
        v45 = v36;
        v46 = v36 + 12;
        v47 = operator new(8 * v42);
        v36 = v45;
        v5 = v44;
        v6 = v43;
      }

      else
      {
        v46 = v36 + 12;
        v47 = 0;
      }

      v48 = &v47[8 * v39];
      *v48 = v36;
      v37 = v48 + 8;
      memcpy(v47, v31, v38);
      *(&v178 + 1) = v47;
      *&v179 = v37;
      *(&v179 + 1) = &v47[8 * v42];
      if (v31)
      {
        operator delete(v31);
      }

      v35 = v46;
    }

    else
    {
      *v32 = v36;
      v37 = v32 + 8;
    }

    *&v179 = v37;
    v30 = v168;
  }

  else
  {
    if (!v34)
    {
      goto LABEL_240;
    }

    v35 = v34 + 12;
  }

  v30(v167, v35);
  v163[0] = MEMORY[0x29EDCA5F8];
  v163[1] = 0x40000000;
  v49 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v164 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v165 = &__block_descriptor_tmp_69_2;
  v166 = v5;
  v50 = *(&v178 + 1);
  v51 = v179;
  v52 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v52 = *(&v178 + 1);
    while (*(*v52 + 8) != 22)
    {
      if (++v52 == v179)
      {
        goto LABEL_82;
      }
    }
  }

  if (v52 == v179)
  {
LABEL_82:
    v55 = operator new(0x10uLL);
    v55[8] = 22;
    *v55 = &unk_2A1E1FEA8;
    *(v55 + 3) = 0;
    v54 = v55 + 12;
    if (v51 >= *(&v179 + 1))
    {
      v57 = v51 - v50;
      v58 = (v51 - v50) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v60 = *(&v179 + 1) - v50;
      if ((*(&v179 + 1) - v50) >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        if (v61 >> 61)
        {
          goto LABEL_242;
        }

        v62 = v55;
        v63 = v55 + 12;
        v64 = operator new(8 * v61);
        v55 = v62;
      }

      else
      {
        v63 = v55 + 12;
        v64 = 0;
      }

      v65 = &v64[8 * v58];
      *v65 = v55;
      v56 = v65 + 8;
      memcpy(v64, v50, v57);
      *(&v178 + 1) = v64;
      *&v179 = v56;
      *(&v179 + 1) = &v64[8 * v61];
      if (v50)
      {
        operator delete(v50);
      }

      v54 = v63;
    }

    else
    {
      *v51 = v55;
      v56 = v51 + 8;
    }

    *&v179 = v56;
    v49 = v164;
  }

  else
  {
    if (!v53)
    {
      goto LABEL_240;
    }

    v54 = v53 + 12;
  }

  v49(v163, v54);
  v159[0] = MEMORY[0x29EDCA5F8];
  v159[1] = 0x40000000;
  v66 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_5;
  v160 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_5;
  v161 = &__block_descriptor_tmp_71_2;
  v162 = v6;
  v67 = *(&v178 + 1);
  v68 = v179;
  v69 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v69 = *(&v178 + 1);
    while (*(*v69 + 8) != 18)
    {
      if (++v69 == v179)
      {
        goto LABEL_106;
      }
    }
  }

  if (v69 == v179)
  {
LABEL_106:
    v72 = operator new(0x10uLL);
    v72[8] = 18;
    *v72 = &unk_2A1E1FEF8;
    *(v72 + 3) = 0;
    v71 = v72 + 12;
    if (v68 >= *(&v179 + 1))
    {
      v74 = v68 - v67;
      v75 = (v68 - v67) >> 3;
      v76 = v75 + 1;
      if ((v75 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v77 = *(&v179 + 1) - v67;
      if ((*(&v179 + 1) - v67) >> 2 > v76)
      {
        v76 = v77 >> 2;
      }

      if (v77 >= 0x7FFFFFFFFFFFFFF8)
      {
        v78 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v78 = v76;
      }

      if (v78)
      {
        if (v78 >> 61)
        {
          goto LABEL_242;
        }

        v79 = v72;
        v80 = v72 + 12;
        v81 = operator new(8 * v78);
        v72 = v79;
      }

      else
      {
        v80 = v72 + 12;
        v81 = 0;
      }

      v82 = &v81[8 * v75];
      *v82 = v72;
      v73 = v82 + 8;
      memcpy(v81, v67, v74);
      *(&v178 + 1) = v81;
      *&v179 = v73;
      *(&v179 + 1) = &v81[8 * v78];
      if (v67)
      {
        operator delete(v67);
      }

      v71 = v80;
    }

    else
    {
      *v68 = v72;
      v73 = v68 + 8;
    }

    *&v179 = v73;
    v66 = v160;
  }

  else
  {
    if (!v70)
    {
      goto LABEL_240;
    }

    v71 = v70 + 12;
  }

  v66(v159, v71);
  v83 = *(&v178 + 1);
  v84 = v179;
  v85 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v85 = *(&v178 + 1);
    while (*(*v85 + 8) != 27)
    {
      if (++v85 == v179)
      {
        goto LABEL_131;
      }
    }
  }

  if (v85 == v179)
  {
LABEL_131:
    v88 = operator new(0x10uLL);
    v88[8] = 27;
    *v88 = &unk_2A1E1FF48;
    *(v88 + 3) = 0;
    v89 = v88 + 12;
    if (v84 >= *(&v179 + 1))
    {
      v90 = v84 - v83;
      v91 = v84 - v83;
      v92 = v91 + 1;
      if ((v91 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v93 = *(&v179 + 1) - v83;
      if ((*(&v179 + 1) - v83) >> 2 > v92)
      {
        v92 = v93 >> 2;
      }

      if (v93 >= 0x7FFFFFFFFFFFFFF8)
      {
        v94 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v94 = v92;
      }

      if (v94)
      {
        if (v94 >> 61)
        {
          goto LABEL_242;
        }

        v95 = v88;
        v96 = operator new(8 * v94);
        v88 = v95;
      }

      else
      {
        v96 = 0;
      }

      v97 = &v96[v91];
      *v97 = v88;
      v84 = v97 + 1;
      memcpy(v96, v83, v90);
      *(&v178 + 1) = v96;
      *&v179 = v84;
      *(&v179 + 1) = &v96[v94];
      if (v83)
      {
        operator delete(v83);
        v83 = *(&v178 + 1);
        *&v179 = v84;
        *v89 = 1;
        v87 = v83;
        if (v83 == v84)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v83 = v96;
        *&v179 = v84;
        *v89 = 1;
        v87 = v96;
        if (v96 == v84)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
      *v84++ = v88;
      *&v179 = v84;
      *v89 = 1;
      v87 = v83;
      if (v83 == v84)
      {
        goto LABEL_152;
      }
    }

    goto LABEL_148;
  }

  if (!v86)
  {
    goto LABEL_240;
  }

  v86[3] = 1;
  v87 = v83;
  if (v83 != v84)
  {
LABEL_148:
    v87 = v83;
    while (*(*v87 + 8) != 28)
    {
      if (++v87 == v84)
      {
        goto LABEL_156;
      }
    }
  }

LABEL_152:
  if (v87 == v84)
  {
LABEL_156:
    v100 = operator new(0x10uLL);
    v100[8] = 28;
    *v100 = &unk_2A1E1FF98;
    *(v100 + 3) = 0;
    v101 = v100 + 12;
    if (v84 >= *(&v179 + 1))
    {
      v102 = v84 - v83;
      v103 = v84 - v83;
      v104 = v103 + 1;
      if ((v103 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v105 = *(&v179 + 1) - v83;
      if ((*(&v179 + 1) - v83) >> 2 > v104)
      {
        v104 = v105 >> 2;
      }

      if (v105 >= 0x7FFFFFFFFFFFFFF8)
      {
        v106 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v106 = v104;
      }

      if (v106)
      {
        if (v106 >> 61)
        {
          goto LABEL_242;
        }

        v107 = v100;
        v108 = operator new(8 * v106);
        v100 = v107;
      }

      else
      {
        v108 = 0;
      }

      v109 = &v108[v103];
      *v109 = v100;
      v84 = v109 + 1;
      memcpy(v108, v83, v102);
      *(&v178 + 1) = v108;
      *&v179 = v84;
      *(&v179 + 1) = &v108[v106];
      if (v83)
      {
        operator delete(v83);
        v83 = *(&v178 + 1);
        *&v179 = v84;
        *v101 = 2048;
        v99 = v83;
        if (v83 == v84)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v83 = v108;
        *&v179 = v84;
        *v101 = 2048;
        v99 = v108;
        if (v108 == v84)
        {
          goto LABEL_177;
        }
      }
    }

    else
    {
      *v84++ = v100;
      *&v179 = v84;
      *v101 = 2048;
      v99 = v83;
      if (v83 == v84)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_173;
  }

  if (!v98)
  {
    goto LABEL_240;
  }

  v98[3] = 2048;
  v99 = v83;
  if (v83 != v84)
  {
LABEL_173:
    v99 = v83;
    while (*(*v99 + 8) != 17)
    {
      if (++v99 == v84)
      {
        goto LABEL_180;
      }
    }
  }

LABEL_177:
  if (v99 == v84)
  {
LABEL_180:
    v113 = operator new(0x10uLL);
    v113[8] = 17;
    *v113 = &unk_2A1E1FFE8;
    *(v113 + 3) = 0;
    v111 = v113 + 12;
    if (v84 >= *(&v179 + 1))
    {
      v114 = v84 - v83;
      v115 = v84 - v83;
      v116 = v115 + 1;
      if ((v115 + 1) >> 61)
      {
        goto LABEL_241;
      }

      v117 = *(&v179 + 1) - v83;
      if ((*(&v179 + 1) - v83) >> 2 > v116)
      {
        v116 = v117 >> 2;
      }

      if (v117 >= 0x7FFFFFFFFFFFFFF8)
      {
        v118 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v118 = v116;
      }

      if (v118)
      {
        if (v118 >> 61)
        {
          goto LABEL_242;
        }

        v119 = v113;
        v120 = operator new(8 * v118);
        v113 = v119;
      }

      else
      {
        v120 = 0;
      }

      v121 = &v120[8 * v115];
      *v121 = v113;
      v84 = (v121 + 8);
      memcpy(v120, v83, v114);
      *(&v178 + 1) = v120;
      *&v179 = v84;
      *(&v179 + 1) = &v120[8 * v118];
      if (v83)
      {
        operator delete(v83);
        v83 = *(&v178 + 1);
      }

      else
      {
        v83 = v120;
      }
    }

    else
    {
      *v84++ = v113;
    }

    v112 = v146;
    *&v179 = v84;
  }

  else
  {
    if (!v110)
    {
      goto LABEL_240;
    }

    v111 = v110 + 12;
    v112 = v146;
  }

  *v111 = 2;
  v155[0] = MEMORY[0x29EDCA5F8];
  v155[1] = 0x40000000;
  v122 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9;
  v156 = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9;
  v157 = &__block_descriptor_tmp_84_0;
  v158 = *(v112 + 104);
  if (v83 != v84)
  {
    while (*(*v83 + 8) != 23)
    {
      if (++v83 == v84)
      {
        goto LABEL_203;
      }
    }
  }

  if (v83 == v84)
  {
LABEL_203:
    v124 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v178, 23);
    v122 = v156;
  }

  else
  {
    if (!v123)
    {
      goto LABEL_240;
    }

    v124 = v123 + 12;
  }

  v125 = v122(v155, v124);
  v126 = v145;
  if (!capabilities::ipc::supportsCoalescing(v125))
  {
    goto LABEL_229;
  }

  v127 = *(&v178 + 1);
  v128 = v179;
  v129 = *(&v178 + 1);
  if (*(&v178 + 1) != v179)
  {
    v129 = *(&v178 + 1);
    while (*(*v129 + 8) != 29)
    {
      if (++v129 == v179)
      {
        goto LABEL_213;
      }
    }
  }

  if (v129 == v179)
  {
LABEL_213:
    v132 = operator new(0x10uLL);
    v133 = v132;
    v132[4] = 29;
    *v132 = &unk_2A1E20038;
    *(v132 + 10) = 0;
    if (v128 < *(&v179 + 1))
    {
      *v128 = v132;
      v134 = v128 + 8;
LABEL_227:
      v126 = v145;
      v131 = (v133 + 9);
      *&v179 = v134;
      goto LABEL_228;
    }

    v135 = v128 - v127;
    v136 = (v128 - v127) >> 3;
    v137 = v136 + 1;
    if (!((v136 + 1) >> 61))
    {
      v138 = *(&v179 + 1) - v127;
      if ((*(&v179 + 1) - v127) >> 2 > v137)
      {
        v137 = v138 >> 2;
      }

      if (v138 >= 0x7FFFFFFFFFFFFFF8)
      {
        v139 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v139 = v137;
      }

      if (!v139)
      {
        v140 = 0;
LABEL_225:
        v141 = &v140[8 * v136];
        *v141 = v133;
        v134 = v141 + 8;
        memcpy(v140, v127, v135);
        *(&v178 + 1) = v140;
        *&v179 = v134;
        *(&v179 + 1) = &v140[8 * v139];
        if (v127)
        {
          operator delete(v127);
        }

        goto LABEL_227;
      }

      if (!(v139 >> 61))
      {
        v140 = operator new(8 * v139);
        goto LABEL_225;
      }

LABEL_242:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_241:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (!v130)
  {
LABEL_240:
    __cxa_bad_cast();
  }

  v131 = v130 + 9;
  v126 = v145;
LABEL_228:
  *v131 = 257;
LABEL_229:
  v150 = v126 + 88;
  v151 = QMIServiceMsg::create();
  v152 = 25000;
  v153 = 0;
  aBlock = 0;
  v147[0] = MEMORY[0x29EDCA5F8];
  v147[1] = 1174405120;
  v147[2] = ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_11;
  v147[3] = &__block_descriptor_tmp_91_3;
  v147[4] = v126;
  v142 = *(v146 + 88);
  if (v142)
  {
    v142 = _Block_copy(v142);
  }

  v143 = *(v146 + 96);
  v148 = v142;
  object = v143;
  if (v143)
  {
    dispatch_retain(v143);
  }

  block = MEMORY[0x29EDCA5F8];
  v181 = 0x40000000;
  v182 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v183 = &unk_29EE609D8;
  v184 = v147;
  aBlock = _Block_copy(&block);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v148)
  {
    _Block_release(v148);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v178);
}

void sub_296F9A5C8(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
    qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
    _Unwind_Resume(a1);
  }

  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  _Unwind_Resume(a1);
}

uint64_t ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_9(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  *a2 = 3;
  a2[1] = v2;
  return result;
}

void ___ZN4data20QMIDataCommandDriver13setDataFormatEN3abm4data10DataFormatEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_11(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c27_ZTSN3abm4data10DataFormatE88c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18D60;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = &unk_2A1E18DA8;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = &unk_2A1E18DF0;
  *(a1 + 84) = *(a2 + 84);
  v4 = *(a2 + 88);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 96);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_4088c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }
}

void data::QMIDataCommandDriver::setDataPowerSaveConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_104_1;
  v8 = *(a2 + 8);
  v7[4] = a1;
  v7[5] = &unk_2A1E18E80;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 49) == 1)
  {
    v2 = *(a1 + 32);
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v3;
    v36 = v3;
    qmi::MutableMessageBase::MutableMessageBase(&v35);
    v4 = *(&v35 + 1);
    v5 = v36;
    v6 = *(&v35 + 1);
    if (*(&v35 + 1) != v36)
    {
      v6 = *(&v35 + 1);
      while (*(*v6 + 8) != 16)
      {
        if (++v6 == v36)
        {
          goto LABEL_16;
        }
      }
    }

    if (v6 == v36)
    {
LABEL_16:
      v13 = operator new(0x10uLL);
      v13[8] = 16;
      *v13 = &unk_2A1E20088;
      *(v13 + 3) = 0;
      v14 = v13 + 12;
      if (v5 >= *(&v36 + 1))
      {
        v15 = v5 - v4;
        v16 = (v5 - v4) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v18 = *(&v36 + 1) - v4;
        if ((*(&v36 + 1) - v4) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = v13;
          v21 = operator new(8 * v19);
          v13 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = &v21[8 * v16];
        *v22 = v13;
        v5 = v22 + 8;
        memcpy(v21, v4, v15);
        *(&v35 + 1) = v21;
        *&v36 = v5;
        *(&v36 + 1) = &v21[8 * v19];
        if (v4)
        {
          operator delete(v4);
          v4 = *(&v35 + 1);
          *&v36 = v5;
          *v14 = 2;
          if (v4 != v5)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v4 = v21;
          *&v36 = v5;
          *v14 = 2;
          if (v21 != v5)
          {
LABEL_39:
            while (*(*v4 + 8) != 1)
            {
              v4 += 8;
              if (v4 == v5)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      else
      {
        *v5 = v13;
        v5 += 8;
        *&v36 = v5;
        *v14 = 2;
        if (v4 != v5)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_58;
      }

      v12[3] = 2;
      if (v4 != v5)
      {
        goto LABEL_39;
      }
    }

    if (v4 == v5)
    {
LABEL_45:
      v24 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v35, 1);
      goto LABEL_46;
    }

    if (v23)
    {
      v24 = v23 + 12;
LABEL_46:
      *v24 = 0x400000003;
      v30 = v2 + 88;
      v31 = QMIServiceMsg::create();
      v32 = 25000;
      v33 = 0;
      v34 = 0;
      v27[0] = MEMORY[0x29EDCA5F8];
      v27[1] = 1174405120;
      v27[2] = ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
      v27[3] = &__block_descriptor_tmp_102_0;
      v27[4] = v2;
      v25 = *(a1 + 56);
      if (v25)
      {
        v25 = _Block_copy(v25);
      }

      v26 = *(a1 + 64);
      v28 = v25;
      object = v26;
      if (v26)
      {
        dispatch_retain(v26);
      }

      block = MEMORY[0x29EDCA5F8];
      v38 = 0x40000000;
      v39 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm18SetPowerSaveConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
      v40 = &unk_29EE60A00;
      aBlock = v27;
      v34 = _Block_copy(&block);
      qmi::Client::send();
      if (v34)
      {
        _Block_release(v34);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v28)
      {
        _Block_release(v28);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v35);
      return;
    }

LABEL_58:
    __cxa_bad_cast();
  }

  v7 = *(a1 + 56);
  if (!v7 || !*(a1 + 64))
  {
    return;
  }

  v8 = _Block_copy(v7);
  v9 = v8;
  v10 = *(a1 + 64);
  block = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  v40 = &__block_descriptor_tmp_163_2;
  if (v8)
  {
    aBlock = _Block_copy(v8);
    cf = 0;
    dispatch_async(v10, &block);
    v11 = cf;
    if (!cf)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v10, &block);
  v11 = cf;
  if (cf)
  {
LABEL_29:
    CFRelease(v11);
  }

LABEL_30:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }
}

void sub_296F9AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9AED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver22setDataPowerSaveConfigEN3abm4data13DataPowerSaveEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c30_ZTSN3abm4data13DataPowerSaveE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = &unk_2A1E18E80;
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void data::QMIDataCommandDriver::setDefaultCapabilities(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_117_2;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v3;
  v33 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v32);
  v4 = *(&v32 + 1);
  v5 = v33;
  v6 = *(&v32 + 1);
  if (*(&v32 + 1) != v33)
  {
    v6 = *(&v32 + 1);
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v33)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v33)
  {
LABEL_10:
    v9 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v32, 1);
    v4 = *(&v32 + 1);
    v5 = v33;
    *v9 = 0x400000003;
    v8 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_44;
    }

    *(v7 + 12) = 0x400000003;
    v8 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  v8 = v4;
  while (*(*v8 + 8) != 16)
  {
    if (++v8 == v5)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (v8 != v5)
  {
    if (v10)
    {
      v11 = v10 + 12;
      goto LABEL_33;
    }

LABEL_44:
    __cxa_bad_cast();
  }

LABEL_18:
  v12 = operator new(0x10uLL);
  v12[8] = 16;
  *v12 = &unk_2A1E200D8;
  *(v12 + 3) = 0;
  v11 = v12 + 12;
  if (v5 >= *(&v33 + 1))
  {
    v14 = v5 - v4;
    v15 = v5 - v4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v17 = *(&v33 + 1) - v4;
    if ((*(&v33 + 1) - v4) >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = v12;
      v20 = operator new(8 * v18);
      v12 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[8 * v15];
    *v21 = v12;
    v13 = v21 + 8;
    memcpy(v20, v4, v14);
    *(&v32 + 1) = v20;
    *&v33 = v13;
    *(&v33 + 1) = &v20[8 * v18];
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v5 = v12;
    v13 = v5 + 1;
  }

  *&v33 = v13;
LABEL_33:
  *v11 = 1;
  v27 = v2 + 88;
  v28 = QMIServiceMsg::create();
  v29 = 25000;
  v30 = 0;
  v31 = 0;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v24[3] = &__block_descriptor_tmp_114_2;
  v24[4] = v2;
  v22 = a1[5];
  if (v22)
  {
    v22 = _Block_copy(v22);
  }

  v23 = a1[6];
  v25 = v22;
  object = v23;
  if (v23)
  {
    dispatch_retain(v23);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60A28;
  aBlock[4] = v24;
  v31 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v31)
  {
    _Block_release(v31);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v32);
}

void sub_296F9B55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9B598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver22setDefaultCapabilitiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void data::QMIDataCommandDriver::setLowLatencyCapability(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_130_0;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v3;
  v33 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v32);
  v4 = *(&v32 + 1);
  v5 = v33;
  v6 = *(&v32 + 1);
  if (*(&v32 + 1) != v33)
  {
    v6 = *(&v32 + 1);
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v33)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v33)
  {
LABEL_10:
    v9 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v32, 1);
    v4 = *(&v32 + 1);
    v5 = v33;
    *v9 = 0x700000003;
    v8 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_44;
    }

    *(v7 + 12) = 0x700000003;
    v8 = v4;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  v8 = v4;
  while (*(*v8 + 8) != 17)
  {
    if (++v8 == v5)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (v8 != v5)
  {
    if (v10)
    {
      v11 = v10 + 9;
      goto LABEL_33;
    }

LABEL_44:
    __cxa_bad_cast();
  }

LABEL_18:
  v12 = operator new(0x10uLL);
  v13 = v12;
  v12[4] = 17;
  *v12 = &unk_2A1E20128;
  if (v5 >= *(&v33 + 1))
  {
    v15 = v5 - v4;
    v16 = v5 - v4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v18 = *(&v33 + 1) - v4;
    if ((*(&v33 + 1) - v4) >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v20 = operator new(8 * v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[8 * v16];
    *v21 = v13;
    v14 = v21 + 8;
    memcpy(v20, v4, v15);
    *(&v32 + 1) = v20;
    *&v33 = v14;
    *(&v33 + 1) = &v20[8 * v19];
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v5 = v12;
    v14 = v5 + 1;
  }

  v11 = v13 + 9;
  *&v33 = v14;
LABEL_33:
  *v11 = 1;
  v27 = v2 + 88;
  v28 = QMIServiceMsg::create();
  v29 = 25000;
  v30 = 0;
  v31 = 0;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v24[3] = &__block_descriptor_tmp_127_1;
  v24[4] = v2;
  v22 = a1[5];
  if (v22)
  {
    v22 = _Block_copy(v22);
  }

  v23 = a1[6];
  v25 = v22;
  object = v23;
  if (v23)
  {
    dispatch_retain(v23);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60A28;
  aBlock[4] = v24;
  v31 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v31)
  {
    _Block_release(v31);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v32);
}

void sub_296F9BB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F9BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver23setLowLatencyCapabilityEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void std::__shared_ptr_pointer<data::QMIDataCommandDriver *,std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver *)#1},std::allocator<data::QMIDataCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<data::QMIDataCommandDriver *,std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver *)#1},std::allocator<data::QMIDataCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4data13CommandDriverEE15make_shared_ptrINS1_20QMIDataCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver*)#1}::operator() const(data::QMIDataCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1FC60;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4data13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4data13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

char *qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(void *a1, char a2)
{
  v4 = operator new(0x18uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1FCB8;
  *(v4 + 3) = 0;
  v5 = v4 + 12;
  *(v4 + 4) = 0;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::PeripheralEndPointID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::PeripheralEndPointID>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FCB8;
  *(result + 12) = *(a1 + 12);
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, &cf, &object);
  xpc_release(object);
  object = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F9C24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, const void *a10)
{
  xpc_release(object);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9C414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15GetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9C530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataFlowControl>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataFlowControl>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1FD38;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::InBandFlowControl>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::InBandFlowControl>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1FD88;
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F9C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15SetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FE08;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxDatagrams>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FE58;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxSize>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DownLinkDataAggregationMaxSize>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FEA8;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FEF8;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxDatagrams>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FF48;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxSize>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::UpLinkDataAggregationMaxSize>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FF98;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LinkLayerProtocol>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LinkLayerProtocol>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1FFE8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::CoalescingInformation>::write(_BYTE *result, uint64_t *a2)
{
  v2 = result[8];
  v3 = *a2;
  *(v3 + 3) = result[9];
  *(v3 + 4) = result[10];
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::CoalescingInformation>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E20038;
  *(result + 9) = *(a1 + 9);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9CD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataPowerSaveConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DataPowerSaveConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E20088;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm18SetPowerSaveConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9CEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DefaultFlowRebindVersion>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::DefaultFlowRebindVersion>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E200D8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13SetCapability8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F9D098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LowLatencyConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<wda::tlv::abm::LowLatencyConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E20128;
  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_4)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_4 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      if (capabilities::radio::maverick(v3))
      {
        if (!qword_2A18A59C8)
        {
          qword_2A18A59C8 = os_log_create("com.apple.telephony.abm", "libetl");
        }

        ETLDebugRegisterDelegate();
      }
    }
  }

  if (!qword_2A18A59D0)
  {
    qword_2A18A59D0 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(0, v5, a3, a4);
}

void abm::debug::handleDebugPrintBinaryETL(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(1, v5, a3, a4);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C268D10](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C268E60](v29);
}

void sub_296F9D584(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x29EDC9538]);
  MEMORY[0x29C268E60](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = v8;
  v43[2] = v8;
  v43[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v43);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C268560](v43, a2);
    MEMORY[0x29C268560](v9, ": ");
  }

  MEMORY[0x29C268380](&v41, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C2683A0](&v41);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v40 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v40) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C268360](v43);
  ctu::LogMessageBuffer::takeMetadata(v43);
  ctu::LogMessage::LogMessage();
  v41 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E20180;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v42 = v17;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if (a1 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v35 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v35[v27] = 0;
  if (a1 <= 1)
  {
LABEL_36:
    if (a1)
    {
      v33 = qword_2A18A59C8;
      if (qword_2A18A59C8 && os_log_type_enabled(qword_2A18A59C8, OS_LOG_TYPE_DEBUG))
      {
        v34 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v34 = v34->__words[0];
        }

        *buf = 136315138;
        v46 = v34;
        _os_log_debug_impl(&dword_296ECF000, v33, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    else
    {
      v31 = _MergedGlobals_4;
      if (_MergedGlobals_4 && os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v32->__words[0];
        }

        *buf = 136315138;
        v46 = v32;
LABEL_54:
        _os_log_impl(&dword_296ECF000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        goto LABEL_55;
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  if (a1 != 2)
  {
    v31 = qword_2A18A59D0;
    if (qword_2A18A59D0)
    {
      if (os_log_type_enabled(qword_2A18A59D0, OS_LOG_TYPE_DEFAULT))
      {
        v36 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v36->__words[0];
        }

        *buf = 136315138;
        v46 = v36;
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v37 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  return MEMORY[0x29C2683A0](v43);
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296FC34AFLL)
  {
    if (((v2 & 0x8000000296FC34AFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296FC34AFLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296FC34AFLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::debug::handleDebugPrintBinary(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v17 = *MEMORY[0x29EDCA608];
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  ctu::assign();
  if (a1)
  {
    v7 = qword_2A18A59C8;
    if (qword_2A18A59C8 && os_log_type_enabled(qword_2A18A59C8, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v10 < 0)
      {
        v8 = __p[0];
      }

      goto LABEL_14;
    }

LABEL_9:
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = _MergedGlobals_4;
  if (!_MergedGlobals_4 || !os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_9;
  }

  v8 = __p;
  if (v10 < 0)
  {
    v8 = __p[0];
  }

LABEL_14:
  *buf = 67109634;
  v12 = v4;
  v13 = 2080;
  v14 = a2;
  v15 = 2080;
  v16 = v8;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
  if (SHIBYTE(v10) < 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }
}

void sub_296F9DD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18A59E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A59E0))
  {
    qword_2A18A59E8 = 0;
    unk_2A18A59F0 = 0;
    __cxa_guard_release(&qword_2A18A59E0);
  }

  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_3);
  }

  return &qword_2A18A59E8;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

char *apps::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_BYTE *apps::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t apps::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

uint64_t tlv::parseV<apps::tlv::abm::WakeReason>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9DF14(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::WakeReason>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::ChannelID>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9DFD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::ChannelID>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

_DWORD *apps::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t tlv::parseV<apps::tlv::abm::WakeBufferLength>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E094(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::WakeBufferLength>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *apps::tlv::abm::parseField(char *__src, char *a2, void *a3)
{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

char *apps::tlv::abm::writeField(char *a1, uint64_t a2)
{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

uint64_t apps::tlv::abm::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

void *tlv::parseV<apps::tlv::abm::WakeBuffer>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9E1A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9E194);
}

void sub_296F9E1B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<apps::tlv::abm::WakeBuffer>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

char *apps::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<apps::tlv::abm::Level>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9E2BC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<apps::tlv::abm::Level>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t apps::tlv::abm::parseField(apps::tlv::abm *this, const unsigned __int8 *a2, unsigned __int8 *a3, Size *a4)
{
  tlv::throwIfNotEnoughBytes(this, a2, 2);
  *a3 = *this;
  return this + 2;
}

uint64_t tlv::parseV<apps::tlv::abm::Size>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

uint64_t sub_296F9E37C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<apps::tlv::abm::Size>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void *tlv::parseV<apps::tlv::abm::LogData>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9E48C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9E47CLL);
}

void sub_296F9E49C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<apps::tlv::abm::LogData>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::length>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E5A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::length>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::blockSize>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E664(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::blockSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::MHIBufferSize>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E724(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::MHIBufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::PCIeBufferSize>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E7E4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::PCIeBufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<apps::tlv::abm::IPABufferSize>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E8A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<apps::tlv::abm::IPABufferSize>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *mfse::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *mfse::writeField(_DWORD *a1, int a2)
{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

uint64_t mfse::getFieldSize()
{
  return 4;
}

{
  return 4;
}

char *mfse::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *mfse::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t mfse::tlv::abm::getFieldSize()
{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

uint64_t tlv::parseV<mfse::tlv::abm::FileSystem>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9E9F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::FileSystem>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<mfse::tlv::abm::Token>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9EAB4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::Token>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<mfse::tlv::abm::ErrorNumber>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

uint64_t sub_296F9EB74(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<mfse::tlv::abm::ErrorNumber>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *mfse::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL tlv::parseV<mfse::tlv::abm::ResetAfterSync>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9EC44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<mfse::tlv::abm::ResetAfterSync>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *bsp::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  return a1 + 12;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t bsp::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 13;
}

{
  return 4;
}

{
  return 8;
}

{
  return 16;
}

{
  return 2;
}

{
  return 8;
}

{
  return 12;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 16;
}

{
  return 1;
}

{
  return 13;
}

{
  return 1;
}

{
  return 1;
}

{
  return 8;
}

{
  return 2;
}

{
  return 2;
}

{
  return 8;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 20;
}

{
  return 2;
}

{
  return 10;
}

{
  return 14;
}

{
  return 22;
}

{
  return 6;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 6;
}

{
  return 10;
}

{
  return 2;
}

{
  return 2;
}

{
  return 6;
}

{
  return 6;
}

{
  return 14;
}

{
  return 22;
}

{
  return 2;
}

{
  return 28;
}

{
  return 46;
}

{
  return 12;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 2;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 2;
}

{
  return 5;
}

{
  return 5;
}

{
  return 5;
}

{
  return 2;
}

{
  return 1;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

uint64_t tlv::parseV<bsp::tlv::abm::LogCollectionType>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9ED04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::LogCollectionType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, BOOL *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL tlv::parseV<bsp::tlv::abm::LogCollectionState>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9EDD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::LogCollectionState>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *bsp::tlv::abm::parseField(char *__src, char *a2, void *a3)
{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

{
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, __src, a2, a2 - __src);
  return a2;
}

char *bsp::tlv::abm::writeField(char *a1, uint64_t a2)
{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

{
  memcpy(a1, *a2, *(a2 + 8) - *a2);
  return &a1[*(a2 + 8) - *a2];
}

uint64_t bsp::tlv::abm::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1 + 2;
}

{
  return a1[1] - *a1 + 2;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1;
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  else
  {
    return v1 - *a1;
  }
}

{
  return a1[1] - *a1;
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return (v1 - *a1) | 1;
  }
}

void *tlv::parseV<bsp::tlv::abm::LogDataBuff>@<X0>(char **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = &(*a1)[a2];
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
  return result;
}

void sub_296F9EEE4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9EED4);
}

void sub_296F9EEF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<bsp::tlv::abm::LogDataBuff>(void **a1, uint64_t a2)
{
  v4 = *a1;
  result = memcpy(*a1, *a2, *(a2 + 8) - *a2);
  *a1 = &v4[*(a2 + 8) - *a2];
  return result;
}

uint64_t tlv::parseV<bsp::tlv::abm::EndOfLog>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296F9EFFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<bsp::tlv::abm::EndOfLog>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *ssctl::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void **a3, unint64_t a4)
{
  v6 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v7 = *v6;
  v6 = (v6 + 1);
  tlv::throwIfNotEnoughBytes(v6, a2, v7);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v6, v6 + v7, v7);
  return v6 + v7;
}

{
  v6 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  v7 = *v6;
  v6 = (v6 + 2);
  tlv::throwIfNotEnoughBytes(v6, a2, v7);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v6, v6 + v7, v7);
  return v6 + v7;
}

_BYTE *ssctl::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  v2 = a2;
  LOBYTE(v3) = a2[23];
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  *a1 = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  memcpy(a1 + 1, a2, v6);
  v7 = v2[23];
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 1);
  }

  return &v4[v7];
}

uint64_t ssctl::tlv::abm::getFieldSize(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 1;
}

{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 2;
}

void tlv::parseV<ssctl::tlv::abm::ErrorMessage>(tlv **a1@<X0>, int a2@<W1>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v8 = *v6;
  v6 = (v6 + 1);
  tlv::throwIfNotEnoughBytes(v6, v7, v8);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a4, v6, v6 + v8, v8);
  *a1 = (v6 + v8);
}

void sub_296F9F1AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9F198);
}

void sub_296F9F1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<ssctl::tlv::abm::ErrorMessage>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 4;
}

void *tlv::writeV<ssctl::tlv::abm::ErrorMessage>(_BYTE **a1, _BYTE *a2)
{
  v2 = a2;
  v4 = *a1;
  LOBYTE(v5) = a2[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  *v4 = v5;
  v6 = v4 + 1;
  v7 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v8 = a2[23];
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  result = memcpy(v6, a2, v8);
  v10 = v2[23];
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v2 + 1);
  }

  *a1 = &v6[v10];
  return result;
}

char *ssctl::tlv::abm::writeField(_WORD *a1, void *a2)
{
  v2 = a2;
  LOWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  *a1 = v3;
  v4 = a1 + 1;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  memcpy(a1 + 1, a2, v6);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = v2[1];
  }

  return v4 + v7;
}

void tlv::parseV<ssctl::tlv::abm::ExtendedErrorMessage>(tlv **a1@<X0>, int a2@<W1>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 2);
  v8 = *v6;
  v6 = (v6 + 2);
  tlv::throwIfNotEnoughBytes(v6, v7, v8);
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a4, v6, v6 + v8, v8);
  *a1 = (v6 + v8);
}

void sub_296F9F3F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9F3DCLL);
}

void sub_296F9F400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<ssctl::tlv::abm::ExtendedErrorMessage>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 5;
}

void *tlv::writeV<ssctl::tlv::abm::ExtendedErrorMessage>(_WORD **a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  LOWORD(v5) = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  *v4 = v5;
  v6 = (v4 + 1);
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  result = memcpy(v6, a2, v8);
  v10 = *(v2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v2[1];
  }

  *a1 = &v6[v10];
  return result;
}

tlv *ssctl::tlv::abm::parseField(tlv *a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  if (a1 >= a2)
  {
    return a1;
  }

  do
  {
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 16))
    {
      v7 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
    }

    else
    {
      *v12 = 0;
      v12[1] = 0;
      v7 = (v12 + 3);
      v12[2] = 0;
    }

    *(a3 + 8) = v7;
    v8 = v7 - 3;
    tlv::throwIfNotEnoughBytes(v4, a2, 1);
    v10 = *v4;
    v9 = (v4 + 1);
    tlv::throwIfNotEnoughBytes(v9, a2, v10);
    std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v8, v9, v9 + v10, v10);
    v4 = (v9 + v10);
    v11 = v4;
  }

  while (v4 < a2);
  return v11;
}

{
  v4 = a1;
  if (a1 >= a2)
  {
    return a1;
  }

  do
  {
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 16))
    {
      v7 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a3);
    }

    else
    {
      *v12 = 0;
      v12[1] = 0;
      v7 = (v12 + 3);
      v12[2] = 0;
    }

    *(a3 + 8) = v7;
    v8 = v7 - 3;
    tlv::throwIfNotEnoughBytes(v4, a2, 2);
    v10 = *v4;
    v9 = (v4 + 2);
    tlv::throwIfNotEnoughBytes(v9, a2, v10);
    std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v8, v9, v9 + v10, v10);
    v4 = (v9 + v10);
    v11 = v4;
  }

  while (v4 < a2);
  return v11;
}

char *ssctl::tlv::abm::writeField(char *a1, const void ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      LOBYTE(v5) = *(v3 + 23);
      if (v5 < 0)
      {
        v5 = v3[1];
      }

      *a1 = v5;
      v6 = a1 + 1;
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 23);
      }

      else
      {
        v9 = v3[1];
      }

      memcpy(v6, v8, v9);
      v10 = *(v3 + 23);
      if (v10 < 0)
      {
        v10 = v3[1];
      }

      a1 = &v10[v6];
      v3 += 3;
    }

    while (v3 != v4);
  }

  return a1;
}

{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      LOWORD(v5) = *(v3 + 23);
      if (v5 < 0)
      {
        v5 = v3[1];
      }

      *a1 = v5;
      v6 = a1 + 2;
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 23);
      }

      else
      {
        v9 = v3[1];
      }

      memcpy(v6, v8, v9);
      v10 = *(v3 + 23);
      if (v10 < 0)
      {
        v10 = v3[1];
      }

      a1 = &v10[v6];
      v3 += 3;
    }

    while (v3 != v4);
  }

  return a1;
}

unint64_t ssctl::tlv::abm::getFieldSize(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 24;
  if (v3 < 0x60)
  {
    result = 0;
    v5 = v2;
    goto LABEL_18;
  }

  v6 = v3 / 0x18;
  v7 = v3 / 0x18 + 1;
  if (v3 < 0x180)
  {
    result = 0;
    v8 = 0;
LABEL_13:
    v68 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v68 = 4;
    }

    v5 = v2 + 24 * (v7 - v68);
    v69 = 0uLL;
    v70 = result;
    v71 = ~v6 + v8 + v68;
    v72 = (v2 + 24 * v8 + 47);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    do
    {
      v74.i16[0] = *(v72 - 24);
      v74.i16[1] = *v72;
      v74.i16[2] = v72[24];
      v74.i16[3] = v72[48];
      v75 = (v72 - 39);
      v76 = (v72 + 9);
      v77 = vld3q_f64(v75);
      v78 = vld3q_f64(v76);
      v79 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v74, 8uLL), 8uLL)));
      v80.i64[0] = v79.u32[0];
      v80.i64[1] = v79.u32[1];
      v81 = vshrq_n_s64(vshlq_n_s64(v80, 0x38uLL), 0x38uLL);
      v80.i64[0] = v79.u32[2];
      v80.i64[1] = v79.u32[3];
      v82 = vshrq_n_s64(vshlq_n_s64(v80, 0x38uLL), 0x38uLL);
      v80.i64[0] = v72[24];
      v80.i64[1] = v72[48];
      v83 = vbicq_s8(v80, v82);
      v80.i64[0] = *(v72 - 24);
      v80.i64[1] = *v72;
      v69 = vsubq_s64(vorrq_s8(vandq_s8(v78, v82), vandq_s8(v83, v73)), vmvnq_s8(v69));
      v70 = vsubq_s64(vorrq_s8(vandq_s8(v77, v81), vandq_s8(vbicq_s8(v80, v81), v73)), vmvnq_s8(v70));
      v72 += 96;
      v71 += 4;
    }

    while (v71);
    result = vaddvq_s64(vaddq_s64(v70, v69));
    goto LABEL_18;
  }

  v9 = 16;
  v10 = 0uLL;
  v11 = 0uLL;
  if ((v7 & 0xF) != 0)
  {
    v9 = v7 & 0xF;
  }

  v8 = v7 - v9;
  v12 = (v2 + 191);
  v13 = v7 - v9;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v85 = v15;
    v86 = v17;
    v20.i8[0] = *(v12 - 168);
    v21.i8[0] = v20.i8[0];
    v21.i8[1] = *(v12 - 144);
    v21.i8[2] = *(v12 - 120);
    v21.i8[3] = *(v12 - 96);
    v21.i8[4] = *(v12 - 72);
    v21.i8[5] = *(v12 - 48);
    v21.i8[6] = *(v12 - 24);
    v21.i8[7] = *v12;
    v21.i8[8] = v12[24];
    v21.i8[9] = v12[48];
    v22 = (v12 - 183);
    v23 = (v12 - 135);
    v24 = (v12 - 87);
    v25 = (v12 + 9);
    v26 = vld3q_f64(v22);
    v27 = vld3q_f64(v23);
    v28 = vld3q_f64(v24);
    v29 = vld3q_f64(v25);
    v21.i8[10] = v12[72];
    v21.i8[11] = v12[96];
    v21.i8[12] = v12[120];
    v30.i32[0] = v21.i32[2];
    v21.i8[13] = v12[144];
    v21.i8[14] = v12[168];
    v30.i16[2] = v21.i16[6];
    v21.i8[15] = v12[192];
    v30.i16[3] = v21.i16[7];
    v31 = vcltzq_s8(v21);
    v32 = vmovl_high_s8(v31);
    v20.i8[1] = *(v12 - 144);
    v20.i8[2] = *(v12 - 120);
    v33 = vmovl_s8(*v31.i8);
    v34 = vmovl_s16(*v32.i8);
    v20.i8[3] = *(v12 - 96);
    v20.i8[4] = *(v12 - 72);
    v35 = vmovl_s16(*v33.i8);
    v36 = vmovl_u8(v30);
    v20.i8[5] = *(v12 - 48);
    v20.i8[6] = *(v12 - 24);
    v37.i64[0] = v34.i32[0];
    v37.i64[1] = v34.i32[1];
    v38 = v37;
    v20.i8[7] = *v12;
    v39 = vmovl_u8(v20);
    v40 = vmovl_u16(*v39.i8);
    v37.i64[0] = v40.u32[0];
    v37.i64[1] = v40.u32[1];
    v41 = v37;
    v37.i64[0] = v35.i32[0];
    v37.i64[1] = v35.i32[1];
    v42 = vbslq_s8(v37, v26, v41);
    v43 = vmovl_u16(*v36.i8);
    v37.i64[0] = v43.u32[0];
    v37.i64[1] = v43.u32[1];
    v44 = (v12 + 57);
    v45 = (v12 + 105);
    v46 = vbslq_s8(v38, v29, v37);
    v47 = vld3q_f64(v44);
    v48 = vld3q_f64(v45);
    v37.i64[0] = v35.i32[2];
    v37.i64[1] = v35.i32[3];
    v49 = v37;
    v37.i64[0] = v40.u32[2];
    v37.i64[1] = v40.u32[3];
    v50 = vbslq_s8(v49, v27, v37);
    v51 = vmovl_high_s16(v33);
    v52 = vmovl_high_u16(v39);
    v37.i64[0] = v51.i32[0];
    v37.i64[1] = v51.i32[1];
    v53 = v37;
    v37.i64[0] = v52.u32[0];
    v37.i64[1] = v52.u32[1];
    v54 = vbslq_s8(v53, v28, v37);
    v55 = vmovl_high_s16(v32);
    v37.i64[0] = v34.i32[2];
    v37.i64[1] = v34.i32[3];
    v56 = v37;
    v37.i64[0] = v43.u32[2];
    v37.i64[1] = v43.u32[3];
    v57 = vbslq_s8(v56, v47, v37);
    v37.i64[0] = v55.i32[0];
    v37.i64[1] = v55.i32[1];
    v58 = v37;
    v59 = (v12 - 39);
    v60 = (v12 + 153);
    v61 = vmovl_high_u16(v36);
    v37.i64[0] = v61.u32[0];
    v37.i64[1] = v61.u32[1];
    v62 = vbslq_s8(v58, v48, v37);
    v63 = vld3q_f64(v59);
    v64 = vld3q_f64(v60);
    v37.i64[0] = v51.i32[2];
    v37.i64[1] = v51.i32[3];
    v65 = v37;
    v37.i64[0] = v52.u32[2];
    v37.i64[1] = v52.u32[3];
    v66 = vbslq_s8(v65, v63, v37);
    v37.i64[0] = v55.i32[2];
    v37.i64[1] = v55.i32[3];
    v67 = v37;
    v37.i64[0] = v61.u32[2];
    v37.i64[1] = v61.u32[3];
    v19 = vsubq_s64(vbslq_s8(v67, v64, v37), vmvnq_s8(v19));
    v15 = vsubq_s64(v66, vmvnq_s8(v85));
    v18 = vsubq_s64(v62, vmvnq_s8(v18));
    v17 = vsubq_s64(v57, vmvnq_s8(v86));
    v14 = vsubq_s64(v54, vmvnq_s8(v14));
    v11 = vsubq_s64(v50, vmvnq_s8(v11));
    v16 = vsubq_s64(v46, vmvnq_s8(v16));
    v10 = vsubq_s64(v42, vmvnq_s8(v10));
    v12 += 384;
    v13 -= 16;
  }

  while (v13);
  result = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v10, v16), vaddq_s64(v14, v18)), vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19))));
  if (v9 >= 5)
  {
    goto LABEL_13;
  }

  v5 = v2 + 24 * v8;
  do
  {
LABEL_18:
    v84 = *(v5 + 23);
    if ((v84 & 0x80u) != 0)
    {
      v84 = *(v5 + 8);
    }

    result += v84 + 1;
    v5 += 24;
  }

  while (v5 != v1);
  return result;
}

{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 24;
  if (v3 < 0x60)
  {
    result = 0;
    v5 = v2;
    goto LABEL_18;
  }

  v6 = v3 / 0x18;
  v7 = v3 / 0x18 + 1;
  if (v3 < 0x180)
  {
    result = 0;
    v8 = 0;
LABEL_13:
    v70 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v70 = 4;
    }

    v5 = v2 + 24 * (v7 - v70);
    v71 = 0uLL;
    v72 = result;
    v73 = ~v6 + v8 + v70;
    v74 = (v2 + 24 * v8 + 47);
    v75.i64[0] = 255;
    v75.i64[1] = 255;
    v76 = vdupq_n_s64(2uLL);
    do
    {
      v77.i16[0] = *(v74 - 24);
      v77.i16[1] = *v74;
      v77.i16[2] = v74[24];
      v77.i16[3] = v74[48];
      v78 = (v74 - 39);
      v79 = (v74 + 9);
      v80 = vld3q_f64(v78);
      v81 = vld3q_f64(v79);
      v82 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v77, 8uLL), 8uLL)));
      v83.i64[0] = v82.u32[2];
      v83.i64[1] = v82.u32[3];
      v84 = vshrq_n_s64(vshlq_n_s64(v83, 0x38uLL), 0x38uLL);
      v83.i64[0] = v82.u32[0];
      v83.i64[1] = v82.u32[1];
      v85 = vshlq_n_s64(v83, 0x38uLL);
      v83.i64[0] = *(v74 - 24);
      v83.i64[1] = *v74;
      v86 = vshrq_n_s64(v85, 0x38uLL);
      v87 = vbicq_s8(v83, v86);
      v83.i64[0] = v74[24];
      v83.i64[1] = v74[48];
      v71 = vaddq_s64(vaddq_s64(v71, v76), vorrq_s8(vandq_s8(v81, v84), vandq_s8(vbicq_s8(v83, v84), v75)));
      v72 = vaddq_s64(vaddq_s64(v72, v76), vorrq_s8(vandq_s8(v80, v86), vandq_s8(v87, v75)));
      v74 += 96;
      v73 += 4;
    }

    while (v73);
    result = vaddvq_s64(vaddq_s64(v72, v71));
    goto LABEL_18;
  }

  v9 = 16;
  v10 = vdupq_n_s64(2uLL);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((v7 & 0xF) != 0)
  {
    v9 = v7 & 0xF;
  }

  v8 = v7 - v9;
  v13 = (v2 + 191);
  v14 = v7 - v9;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v89 = v12;
    v21.i8[0] = *(v13 - 168);
    v22.i8[0] = v21.i8[0];
    v22.i8[1] = *(v13 - 144);
    v22.i8[2] = *(v13 - 120);
    v22.i8[3] = *(v13 - 96);
    v22.i8[4] = *(v13 - 72);
    v22.i8[5] = *(v13 - 48);
    v22.i8[6] = *(v13 - 24);
    v22.i8[7] = *v13;
    v22.i8[8] = v13[24];
    v23 = (v13 - 135);
    v24 = (v13 - 87);
    v25 = (v13 - 39);
    v26 = (v13 + 153);
    v27 = vld3q_f64(v23);
    v28 = vld3q_f64(v24);
    v29 = vld3q_f64(v25);
    v30 = vld3q_f64(v26);
    v22.i8[9] = v13[48];
    v22.i8[10] = v13[72];
    v22.i8[11] = v13[96];
    v22.i8[12] = v13[120];
    v21.i8[1] = v22.i8[1];
    v22.i8[13] = v13[144];
    v21.i16[1] = v22.i16[1];
    v22.i8[14] = v13[168];
    v21.i16[2] = v22.i16[2];
    v22.i8[15] = v13[192];
    v31 = vcltzq_s8(v22);
    v21.i8[6] = v22.i8[6];
    v21.i8[7] = *v13;
    v32 = vmovl_s8(*v31.i8);
    v33.i8[0] = v13[24];
    v33.i8[1] = v13[48];
    v33.i8[2] = v13[72];
    v34 = vmovl_high_s8(v31);
    v35 = vmovl_high_s16(v32);
    v33.i8[3] = v13[96];
    v33.i8[4] = v13[120];
    v36 = vmovl_high_s16(v34);
    v37 = vmovl_u8(v21);
    v33.i8[5] = v13[144];
    v33.i8[6] = v13[168];
    v38.i64[0] = v35.i32[2];
    v38.i64[1] = v35.i32[3];
    v39 = v38;
    v33.i8[7] = v13[192];
    v40 = vmovl_u8(v33);
    v41 = vmovl_high_u16(v40);
    v38.i64[0] = v41.u32[2];
    v38.i64[1] = v41.u32[3];
    v42 = v38;
    v38.i64[0] = v36.i32[2];
    v38.i64[1] = v36.i32[3];
    v43 = vbslq_s8(v38, v30, v42);
    v44 = vmovl_high_u16(v37);
    v38.i64[0] = v44.u32[2];
    v38.i64[1] = v44.u32[3];
    v45 = (v13 + 57);
    v46 = (v13 + 105);
    v47 = vbslq_s8(v39, v29, v38);
    v48 = vld3q_f64(v45);
    v49 = v11;
    v50 = vld3q_f64(v46);
    v38.i64[0] = v36.i32[0];
    v38.i64[1] = v36.i32[1];
    v51 = v38;
    v38.i64[0] = v41.u32[0];
    v38.i64[1] = v41.u32[1];
    v52 = vbslq_s8(v51, v50, v38);
    v53 = vmovl_s16(*v34.i8);
    v54 = vmovl_u16(*v40.i8);
    v38.i64[0] = v53.i32[2];
    v38.i64[1] = v53.i32[3];
    v55 = v38;
    v38.i64[0] = v54.u32[2];
    v38.i64[1] = v54.u32[3];
    v56 = vbslq_s8(v55, v48, v38);
    v57 = vmovl_s16(*v32.i8);
    v38.i64[0] = v35.i32[0];
    v38.i64[1] = v35.i32[1];
    v58 = v38;
    v38.i64[0] = v44.u32[0];
    v38.i64[1] = v44.u32[1];
    v59 = vbslq_s8(v58, v28, v38);
    v38.i64[0] = v57.i32[2];
    v38.i64[1] = v57.i32[3];
    v60 = v38;
    v61 = (v13 - 183);
    v62 = (v13 + 9);
    v63 = vmovl_u16(*v37.i8);
    v38.i64[0] = v63.u32[2];
    v38.i64[1] = v63.u32[3];
    v64 = vbslq_s8(v60, v27, v38);
    v65 = vld3q_f64(v61);
    v66 = vld3q_f64(v62);
    v38.i64[0] = v53.i32[0];
    v38.i64[1] = v53.i32[1];
    v67 = v38;
    v38.i64[0] = v54.u32[0];
    v38.i64[1] = v54.u32[1];
    v68 = vbslq_s8(v67, v66, v38);
    v38.i64[0] = v57.i32[0];
    v38.i64[1] = v57.i32[1];
    v69 = v38;
    v38.i64[0] = v63.u32[0];
    v38.i64[1] = v63.u32[1];
    v20 = vaddq_s64(vaddq_s64(v20, v10), v43);
    v16 = vaddq_s64(vaddq_s64(v16, v10), v47);
    v19 = vaddq_s64(vaddq_s64(v19, v10), v52);
    v18 = vaddq_s64(vaddq_s64(v18, v10), v56);
    v15 = vaddq_s64(vaddq_s64(v15, v10), v59);
    v12 = vaddq_s64(vaddq_s64(v89, v10), v64);
    v17 = vaddq_s64(vaddq_s64(v17, v10), v68);
    v11 = vaddq_s64(vaddq_s64(v49, v10), vbslq_s8(v69, v65, v38));
    v13 += 384;
    v14 -= 16;
  }

  while (v14);
  result = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19)), vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20))));
  if (v9 >= 5)
  {
    goto LABEL_13;
  }

  v5 = v2 + 24 * v8;
  do
  {
LABEL_18:
    v88 = *(v5 + 23);
    if ((v88 & 0x80u) != 0)
    {
      v88 = *(v5 + 8);
    }

    result += v88 + 2;
    v5 += 24;
  }

  while (v5 != v1);
  return result;
}

void tlv::parseV<ssctl::tlv::abm::ErrorMessages>(tlv **result@<X0>, int a2@<W1>, __int128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *result;
  if (a2 < 1)
  {
    *result = v5;
  }

  else
  {
    v7 = v5 + a2;
    do
    {
      v8 = a4[1];
      if (v8 >= a4[2])
      {
        v9 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a4);
      }

      else
      {
        *v8 = 0;
        *(v8 + 1) = 0;
        v9 = (v8 + 24);
        *(v8 + 2) = 0;
      }

      a4[1] = v9;
      tlv::throwIfNotEnoughBytes(v5, v7, 1);
      v11 = *v5;
      v10 = (v5 + 1);
      tlv::throwIfNotEnoughBytes(v10, v7, v11);
      std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v9 - 3, v10, v10 + v11, v11);
      v5 = (v10 + v11);
    }

    while (v5 < v7);
    *result = v5;
  }
}

void sub_296F9FB08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F9FADCLL);
}

uint64_t tlv::size<ssctl::tlv::abm::ErrorMessages>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 3;
  }

  v3 = v1 - v2 - 24;
  if (v3 >= 0x60)
  {
    v7 = v3 / 0x18;
    v8 = v3 / 0x18 + 1;
    if (v3 >= 0x180)
    {
      v10 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      if ((v8 & 0xF) != 0)
      {
        v10 = v8 & 0xF;
      }

      v9 = v8 - v10;
      v13 = (v2 + 191);
      v14 = v8 - v10;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v86 = v16;
        v87 = v18;
        v21.i8[0] = *(v13 - 168);
        v22.i8[0] = v21.i8[0];
        v22.i8[1] = *(v13 - 144);
        v22.i8[2] = *(v13 - 120);
        v22.i8[3] = *(v13 - 96);
        v22.i8[4] = *(v13 - 72);
        v22.i8[5] = *(v13 - 48);
        v22.i8[6] = *(v13 - 24);
        v22.i8[7] = *v13;
        v22.i8[8] = v13[24];
        v22.i8[9] = v13[48];
        v23 = (v13 - 183);
        v24 = (v13 - 135);
        v25 = (v13 - 87);
        v26 = (v13 + 9);
        v27 = vld3q_f64(v23);
        v28 = vld3q_f64(v24);
        v29 = vld3q_f64(v25);
        v30 = vld3q_f64(v26);
        v22.i8[10] = v13[72];
        v22.i8[11] = v13[96];
        v22.i8[12] = v13[120];
        v31.i32[0] = v22.i32[2];
        v22.i8[13] = v13[144];
        v22.i8[14] = v13[168];
        v31.i16[2] = v22.i16[6];
        v22.i8[15] = v13[192];
        v31.i16[3] = v22.i16[7];
        v32 = vcltzq_s8(v22);
        v33 = vmovl_high_s8(v32);
        v21.i8[1] = *(v13 - 144);
        v21.i8[2] = *(v13 - 120);
        v34 = vmovl_s8(*v32.i8);
        v35 = vmovl_s16(*v33.i8);
        v21.i8[3] = *(v13 - 96);
        v21.i8[4] = *(v13 - 72);
        v36 = vmovl_s16(*v34.i8);
        v37 = vmovl_u8(v31);
        v21.i8[5] = *(v13 - 48);
        v21.i8[6] = *(v13 - 24);
        v38.i64[0] = v35.i32[0];
        v38.i64[1] = v35.i32[1];
        v39 = v38;
        v21.i8[7] = *v13;
        v40 = vmovl_u8(v21);
        v41 = vmovl_u16(*v40.i8);
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v42 = v38;
        v38.i64[0] = v36.i32[0];
        v38.i64[1] = v36.i32[1];
        v43 = vbslq_s8(v38, v27, v42);
        v44 = vmovl_u16(*v37.i8);
        v38.i64[0] = v44.u32[0];
        v38.i64[1] = v44.u32[1];
        v45 = (v13 + 57);
        v46 = (v13 + 105);
        v47 = vbslq_s8(v39, v30, v38);
        v48 = vld3q_f64(v45);
        v49 = vld3q_f64(v46);
        v38.i64[0] = v36.i32[2];
        v38.i64[1] = v36.i32[3];
        v50 = v38;
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v51 = vbslq_s8(v50, v28, v38);
        v52 = vmovl_high_s16(v34);
        v53 = vmovl_high_u16(v40);
        v38.i64[0] = v52.i32[0];
        v38.i64[1] = v52.i32[1];
        v54 = v38;
        v38.i64[0] = v53.u32[0];
        v38.i64[1] = v53.u32[1];
        v55 = vbslq_s8(v54, v29, v38);
        v56 = vmovl_high_s16(v33);
        v38.i64[0] = v35.i32[2];
        v38.i64[1] = v35.i32[3];
        v57 = v38;
        v38.i64[0] = v44.u32[2];
        v38.i64[1] = v44.u32[3];
        v58 = vbslq_s8(v57, v48, v38);
        v38.i64[0] = v56.i32[0];
        v38.i64[1] = v56.i32[1];
        v59 = v38;
        v60 = (v13 - 39);
        v61 = (v13 + 153);
        v62 = vmovl_high_u16(v37);
        v38.i64[0] = v62.u32[0];
        v38.i64[1] = v62.u32[1];
        v63 = vbslq_s8(v59, v49, v38);
        v64 = vld3q_f64(v60);
        v65 = vld3q_f64(v61);
        v38.i64[0] = v52.i32[2];
        v38.i64[1] = v52.i32[3];
        v66 = v38;
        v38.i64[0] = v53.u32[2];
        v38.i64[1] = v53.u32[3];
        v67 = vbslq_s8(v66, v64, v38);
        v38.i64[0] = v56.i32[2];
        v38.i64[1] = v56.i32[3];
        v68 = v38;
        v38.i64[0] = v62.u32[2];
        v38.i64[1] = v62.u32[3];
        v20 = vsubq_s64(vbslq_s8(v68, v65, v38), vmvnq_s8(v20));
        v16 = vsubq_s64(v67, vmvnq_s8(v86));
        v19 = vsubq_s64(v63, vmvnq_s8(v19));
        v18 = vsubq_s64(v58, vmvnq_s8(v87));
        v15 = vsubq_s64(v55, vmvnq_s8(v15));
        v12 = vsubq_s64(v51, vmvnq_s8(v12));
        v17 = vsubq_s64(v47, vmvnq_s8(v17));
        v11 = vsubq_s64(v43, vmvnq_s8(v11));
        v13 += 384;
        v14 -= 16;
      }

      while (v14);
      v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v11, v17), vaddq_s64(v15, v19)), vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20))));
      if (v10 < 5)
      {
        v5 = v2 + 24 * v9;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v69 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v69 = 4;
    }

    v5 = v2 + 24 * (v8 - v69);
    v70 = 0uLL;
    v71 = v4;
    v72 = ~v7 + v9 + v69;
    v73 = (v2 + 24 * v9 + 47);
    v74.i64[0] = 255;
    v74.i64[1] = 255;
    do
    {
      v75.i16[0] = *(v73 - 24);
      v75.i16[1] = *v73;
      v75.i16[2] = v73[24];
      v75.i16[3] = v73[48];
      v76 = (v73 - 39);
      v77 = (v73 + 9);
      v78 = vld3q_f64(v76);
      v79 = vld3q_f64(v77);
      v80 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v75, 8uLL), 8uLL)));
      v81.i64[0] = v80.u32[0];
      v81.i64[1] = v80.u32[1];
      v82 = vshrq_n_s64(vshlq_n_s64(v81, 0x38uLL), 0x38uLL);
      v81.i64[0] = v80.u32[2];
      v81.i64[1] = v80.u32[3];
      v83 = vshrq_n_s64(vshlq_n_s64(v81, 0x38uLL), 0x38uLL);
      v81.i64[0] = v73[24];
      v81.i64[1] = v73[48];
      v84 = vbicq_s8(v81, v83);
      v81.i64[0] = *(v73 - 24);
      v81.i64[1] = *v73;
      v70 = vsubq_s64(vorrq_s8(vandq_s8(v79, v83), vandq_s8(v84, v74)), vmvnq_s8(v70));
      v71 = vsubq_s64(vorrq_s8(vandq_s8(v78, v82), vandq_s8(vbicq_s8(v81, v82), v74)), vmvnq_s8(v71));
      v73 += 96;
      v72 += 4;
    }

    while (v72);
    v4 = vaddvq_s64(vaddq_s64(v71, v70));
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
LABEL_18:
    v85 = *(v5 + 23);
    if ((v85 & 0x80u) != 0)
    {
      v85 = *(v5 + 8);
    }

    v4 += v85 + 1;
    v5 += 24;
  }

  while (v5 != v1);
  return v4 + 3;
}

char **tlv::writeV<ssctl::tlv::abm::ErrorMessages>(char **result, const void ***a2)
{
  v2 = result;
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      LOBYTE(v6) = *(v4 + 23);
      if (v6 < 0)
      {
        v6 = v4[1];
      }

      *v3 = v6;
      v7 = v3 + 1;
      v8 = *(v4 + 23);
      if (v8 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 23);
      }

      else
      {
        v10 = v4[1];
      }

      result = memcpy(v7, v9, v10);
      v11 = *(v4 + 23);
      if (v11 < 0)
      {
        v11 = v4[1];
      }

      v3 = &v11[v7];
      v4 += 3;
    }

    while (v4 != v5);
  }

  *v2 = v3;
  return result;
}

void tlv::parseV<ssctl::tlv::abm::ExtendedErrorMessages>(tlv **result@<X0>, int a2@<W1>, __int128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *result;
  if (a2 < 1)
  {
    *result = v5;
  }

  else
  {
    v7 = v5 + a2;
    do
    {
      v8 = a4[1];
      if (v8 >= a4[2])
      {
        v9 = std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(a4);
      }

      else
      {
        *v8 = 0;
        *(v8 + 1) = 0;
        v9 = (v8 + 24);
        *(v8 + 2) = 0;
      }

      a4[1] = v9;
      tlv::throwIfNotEnoughBytes(v5, v7, 2);
      v11 = *v5;
      v10 = (v5 + 2);
      tlv::throwIfNotEnoughBytes(v10, v7, v11);
      std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(v9 - 3, v10, v10 + v11, v11);
      v5 = (v10 + v11);
    }

    while (v5 < v7);
    *result = v5;
  }
}

void sub_296FA064C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA0620);
}

uint64_t tlv::size<ssctl::tlv::abm::ExtendedErrorMessages>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 3;
  }

  v3 = v1 - v2 - 24;
  if (v3 >= 0x60)
  {
    v7 = v3 / 0x18;
    v8 = v3 / 0x18 + 1;
    if (v3 >= 0x180)
    {
      v10 = 16;
      v11 = vdupq_n_s64(2uLL);
      v12 = 0uLL;
      v13 = 0uLL;
      if ((v8 & 0xF) != 0)
      {
        v10 = v8 & 0xF;
      }

      v9 = v8 - v10;
      v14 = (v2 + 191);
      v15 = v8 - v10;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v90 = v13;
        v22.i8[0] = *(v14 - 168);
        v23.i8[0] = v22.i8[0];
        v23.i8[1] = *(v14 - 144);
        v23.i8[2] = *(v14 - 120);
        v23.i8[3] = *(v14 - 96);
        v23.i8[4] = *(v14 - 72);
        v23.i8[5] = *(v14 - 48);
        v23.i8[6] = *(v14 - 24);
        v23.i8[7] = *v14;
        v23.i8[8] = v14[24];
        v24 = (v14 - 135);
        v25 = (v14 - 87);
        v26 = (v14 - 39);
        v27 = (v14 + 153);
        v28 = vld3q_f64(v24);
        v29 = vld3q_f64(v25);
        v30 = vld3q_f64(v26);
        v31 = vld3q_f64(v27);
        v23.i8[9] = v14[48];
        v23.i8[10] = v14[72];
        v23.i8[11] = v14[96];
        v23.i8[12] = v14[120];
        v22.i8[1] = v23.i8[1];
        v23.i8[13] = v14[144];
        v22.i16[1] = v23.i16[1];
        v23.i8[14] = v14[168];
        v22.i16[2] = v23.i16[2];
        v23.i8[15] = v14[192];
        v32 = vcltzq_s8(v23);
        v22.i8[6] = v23.i8[6];
        v22.i8[7] = *v14;
        v33 = vmovl_s8(*v32.i8);
        v34.i8[0] = v14[24];
        v34.i8[1] = v14[48];
        v34.i8[2] = v14[72];
        v35 = vmovl_high_s8(v32);
        v36 = vmovl_high_s16(v33);
        v34.i8[3] = v14[96];
        v34.i8[4] = v14[120];
        v37 = vmovl_high_s16(v35);
        v38 = vmovl_u8(v22);
        v34.i8[5] = v14[144];
        v34.i8[6] = v14[168];
        v39.i64[0] = v36.i32[2];
        v39.i64[1] = v36.i32[3];
        v40 = v39;
        v34.i8[7] = v14[192];
        v41 = vmovl_u8(v34);
        v42 = vmovl_high_u16(v41);
        v39.i64[0] = v42.u32[2];
        v39.i64[1] = v42.u32[3];
        v43 = v39;
        v39.i64[0] = v37.i32[2];
        v39.i64[1] = v37.i32[3];
        v44 = vbslq_s8(v39, v31, v43);
        v45 = vmovl_high_u16(v38);
        v39.i64[0] = v45.u32[2];
        v39.i64[1] = v45.u32[3];
        v46 = (v14 + 57);
        v47 = (v14 + 105);
        v48 = vbslq_s8(v40, v30, v39);
        v49 = vld3q_f64(v46);
        v50 = v12;
        v51 = vld3q_f64(v47);
        v39.i64[0] = v37.i32[0];
        v39.i64[1] = v37.i32[1];
        v52 = v39;
        v39.i64[0] = v42.u32[0];
        v39.i64[1] = v42.u32[1];
        v53 = vbslq_s8(v52, v51, v39);
        v54 = vmovl_s16(*v35.i8);
        v55 = vmovl_u16(*v41.i8);
        v39.i64[0] = v54.i32[2];
        v39.i64[1] = v54.i32[3];
        v56 = v39;
        v39.i64[0] = v55.u32[2];
        v39.i64[1] = v55.u32[3];
        v57 = vbslq_s8(v56, v49, v39);
        v58 = vmovl_s16(*v33.i8);
        v39.i64[0] = v36.i32[0];
        v39.i64[1] = v36.i32[1];
        v59 = v39;
        v39.i64[0] = v45.u32[0];
        v39.i64[1] = v45.u32[1];
        v60 = vbslq_s8(v59, v29, v39);
        v39.i64[0] = v58.i32[2];
        v39.i64[1] = v58.i32[3];
        v61 = v39;
        v62 = (v14 - 183);
        v63 = (v14 + 9);
        v64 = vmovl_u16(*v38.i8);
        v39.i64[0] = v64.u32[2];
        v39.i64[1] = v64.u32[3];
        v65 = vbslq_s8(v61, v28, v39);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v39.i64[0] = v54.i32[0];
        v39.i64[1] = v54.i32[1];
        v68 = v39;
        v39.i64[0] = v55.u32[0];
        v39.i64[1] = v55.u32[1];
        v69 = vbslq_s8(v68, v67, v39);
        v39.i64[0] = v58.i32[0];
        v39.i64[1] = v58.i32[1];
        v70 = v39;
        v39.i64[0] = v64.u32[0];
        v39.i64[1] = v64.u32[1];
        v21 = vaddq_s64(vaddq_s64(v21, v11), v44);
        v17 = vaddq_s64(vaddq_s64(v17, v11), v48);
        v20 = vaddq_s64(vaddq_s64(v20, v11), v53);
        v19 = vaddq_s64(vaddq_s64(v19, v11), v57);
        v16 = vaddq_s64(vaddq_s64(v16, v11), v60);
        v13 = vaddq_s64(vaddq_s64(v90, v11), v65);
        v18 = vaddq_s64(vaddq_s64(v18, v11), v69);
        v12 = vaddq_s64(vaddq_s64(v50, v11), vbslq_s8(v70, v66, v39));
        v14 += 384;
        v15 -= 16;
      }

      while (v15);
      v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v12, v18), vaddq_s64(v16, v20)), vaddq_s64(vaddq_s64(v13, v19), vaddq_s64(v17, v21))));
      if (v10 < 5)
      {
        v5 = v2 + 24 * v9;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v71 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v71 = 4;
    }

    v5 = v2 + 24 * (v8 - v71);
    v72 = 0uLL;
    v73 = v4;
    v74 = ~v7 + v9 + v71;
    v75 = (v2 + 24 * v9 + 47);
    v76.i64[0] = 255;
    v76.i64[1] = 255;
    v77 = vdupq_n_s64(2uLL);
    do
    {
      v78.i16[0] = *(v75 - 24);
      v78.i16[1] = *v75;
      v78.i16[2] = v75[24];
      v78.i16[3] = v75[48];
      v79 = (v75 - 39);
      v80 = (v75 + 9);
      v81 = vld3q_f64(v79);
      v82 = vld3q_f64(v80);
      v83 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v78, 8uLL), 8uLL)));
      v84.i64[0] = v83.u32[2];
      v84.i64[1] = v83.u32[3];
      v85 = vshrq_n_s64(vshlq_n_s64(v84, 0x38uLL), 0x38uLL);
      v84.i64[0] = v83.u32[0];
      v84.i64[1] = v83.u32[1];
      v86 = vshlq_n_s64(v84, 0x38uLL);
      v84.i64[0] = *(v75 - 24);
      v84.i64[1] = *v75;
      v87 = vshrq_n_s64(v86, 0x38uLL);
      v88 = vbicq_s8(v84, v87);
      v84.i64[0] = v75[24];
      v84.i64[1] = v75[48];
      v72 = vaddq_s64(vaddq_s64(v72, v77), vorrq_s8(vandq_s8(v82, v85), vandq_s8(vbicq_s8(v84, v85), v76)));
      v73 = vaddq_s64(vaddq_s64(v73, v77), vorrq_s8(vandq_s8(v81, v87), vandq_s8(v88, v76)));
      v75 += 96;
      v74 += 4;
    }

    while (v74);
    v4 = vaddvq_s64(vaddq_s64(v73, v72));
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
LABEL_18:
    v89 = *(v5 + 23);
    if ((v89 & 0x80u) != 0)
    {
      v89 = *(v5 + 8);
    }

    v4 += v89 + 2;
    v5 += 24;
  }

  while (v5 != v1);
  return v4 + 3;
}

char **tlv::writeV<ssctl::tlv::abm::ExtendedErrorMessages>(char **result, const void ***a2)
{
  v2 = result;
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      LOWORD(v6) = *(v4 + 23);
      if (v6 < 0)
      {
        v6 = v4[1];
      }

      *v3 = v6;
      v7 = v3 + 2;
      v8 = *(v4 + 23);
      if (v8 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 23);
      }

      else
      {
        v10 = v4[1];
      }

      result = memcpy(v7, v9, v10);
      v11 = *(v4 + 23);
      if (v11 < 0)
      {
        v11 = v4[1];
      }

      v3 = &v11[v7];
      v4 += 3;
    }

    while (v4 != v5);
  }

  *v2 = v3;
  return result;
}

void std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(void **a1, char *a2, char *a3, unint64_t a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v8 = a1;
    if (a4 < 0x17)
    {
      goto LABEL_23;
    }

    if (a4 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
    {
      v9 = 22;
      v10 = a1;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v11 = a1[2];
  v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (a4 > v9)
  {
    if (0x7FFFFFFFFFFFFFF8 - (v11 & 0x7FFFFFFFFFFFFFFFLL) >= a4 - v9)
    {
      v10 = *a1;
      if (v9 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0x7FFFFFFFFFFFFFF7;
        v8 = operator new(0x7FFFFFFFFFFFFFF7uLL);
LABEL_21:
        operator delete(v10);
LABEL_22:
        a1[1] = 0;
        a1[2] = (v14 | 0x8000000000000000);
        *a1 = v8;
        goto LABEL_23;
      }

LABEL_8:
      v12 = 2 * v9;
      if (a4 > 2 * v9)
      {
        v12 = a4;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v14 = v13;
      }

      else
      {
        v14 = 23;
      }

      v8 = operator new(v14);
      if (v9 == 22)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_36:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = a1;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v8 = *a1;
  }

LABEL_23:
  if (a2 == a3)
  {
    v16 = v8;
  }

  else
  {
    v15 = a3 - a2;
    if ((a3 - a2) < 0x20 || (v8 - a2) < 0x20)
    {
      v16 = v8;
      v17 = a2;
    }

    else
    {
      v16 = v8 + (v15 & 0xFFFFFFFFFFFFFFE0);
      v17 = &a2[v15 & 0xFFFFFFFFFFFFFFE0];
      v18 = (a2 + 16);
      v19 = v8 + 2;
      v20 = v15 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_33;
      }
    }

    do
    {
      v22 = *v17++;
      *v16++ = v22;
    }

    while (v17 != a3);
  }

LABEL_33:
  *v16 = 0;
  if (*(a1 + 23) < 0)
  {
    a1[1] = a4;
  }

  else
  {
    *(a1 + 23) = a4 & 0x7F;
  }
}

__int128 *std::vector<ssctl::tlv::abm::ErrorMessage>::__emplace_back_slow_path<>(__int128 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ssctl::tlv::abm::ErrorMessage>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[8 * (v3 >> 3)];
  v9 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v10 = (v8 + 24);
  v11 = &v8[-v3];
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v13 = v14;
      v13 = (v13 + 24);
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v12 += 24;
    }

    while (v12 != v2);
    do
    {
      if (v1[23] < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v9;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *dms::tlv::abm::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t dms::tlv::abm::getFieldSize()
{
  return 1;
}

{
  return 1;
}

{
  return 2;
}

{
  return 1;
}

{
  return 8;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingMode>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296FA0F04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingMode>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingModeLegacy>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296FA0FC4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingModeLegacy>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, _WORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

uint64_t tlv::parseV<dms::tlv::abm::ProtocolNVConfig>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

uint64_t sub_296FA1084(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<dms::tlv::abm::ProtocolNVConfig>(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<dms::tlv::abm::OperatingModeReporting>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

uint64_t sub_296FA1144(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<dms::tlv::abm::OperatingModeReporting>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *dms::tlv::abm::writeField(char *a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  memcpy(a1, a2, v5);
  v6 = *(v2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v2[1];
  }

  return &a1[v6];
}

uint64_t dms::tlv::abm::getFieldSize(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return *(a1 + 23);
  }

  else
  {
    return *(a1 + 8);
  }
}

void tlv::parseV<dms::tlv::abm::BasebandFWVersion>(char **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = &(*a1)[a2];
  std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, *a1, v4, a2);
  *a1 = v4;
}

void sub_296FA1278(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA1268);
}

void sub_296FA1288(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::size<dms::tlv::abm::BasebandFWVersion>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 3;
}

void *tlv::writeV<dms::tlv::abm::BasebandFWVersion>(void **a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = memcpy(*a1, a2, v6);
  v8 = *(v2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = v2[1];
  }

  *a1 = &v4[v8];
  return result;
}

char *dms::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  return a1 + 8;
}

uint64_t tlv::parseV<dms::tlv::abm::BasebandTime>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v5;
  *a1 = (v5 + 8);
  return result;
}

uint64_t sub_296FA13B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

void **tlv::writeV<dms::tlv::abm::BasebandTime>(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

char *coex::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

_DWORD *coex::writeField(_DWORD *a1, int a2)
{
  *a1 = a2;
  return a1 + 1;
}

{
  *a1 = a2;
  return a1 + 1;
}

uint64_t coex::getFieldSize()
{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

uint64_t coex::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  a3[4] = *(a1 + 16);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  a3[4] = *(a1 + 16);
  return a1 + 20;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

_DWORD *coex::tlv::abm::writeField(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1 + 5;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t coex::tlv::abm::getFieldSize()
{
  return 8;
}

{
  return 16;
}

{
  return 16;
}

{
  return 20;
}

{
  return 20;
}

{
  return 33;
}

{
  return 26;
}

{
  return 4;
}

{
  return 4;
}

{
  return 16;
}

{
  return 16;
}

{
  return 8;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

{
  return 4;
}

{
  return 8;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 2;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 4;
}

{
  return 24;
}

{
  return 8;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 8;
}

{
  return 2;
}

{
  return 2;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

{
  return 4;
}

uint64_t tlv::parseV<coex::tlv::abm::BandInfo>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  v8 = *(v5 + 1);
  *a1 = (v5 + 8);
  return (v8 << 32) | v7;
}

uint64_t sub_296FA1568(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_DWORD **tlv::writeV<coex::tlv::abm::BandInfo>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

_DWORD **tlv::writeV<coex::tlv::abm::LTEBandInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

unint64_t tlv::parseV<coex::tlv::abm::LTE2BandInformation>(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  v8 = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 4);
  tlv::throwIfNotEnoughBytes((v5 + 12), v6, 4);
  *a1 = (v5 + 16);
  return v7 | (v8 << 32);
}

void sub_296FA1820(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296FA1800);
}

_DWORD **tlv::writeV<coex::tlv::abm::LTE2BandInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTETDDInformation>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 4);
  *a4 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 4), v7, 4);
  *(a4 + 4) = *(v6 + 1);
  tlv::throwIfNotEnoughBytes((v6 + 8), v7, 4);
  *(a4 + 8) = *(v6 + 2);
  tlv::throwIfNotEnoughBytes((v6 + 12), v7, 4);
  *(a4 + 12) = *(v6 + 3);
  result = tlv::throwIfNotEnoughBytes((v6 + 16), v7, 4);
  *(a4 + 16) = *(v6 + 4);
  *a1 = (v6 + 20);
  return result;
}

void sub_296FA1A00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

_DWORD **tlv::writeV<coex::tlv::abm::LTETDDInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  *result = v2 + 5;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::LTE2TDDInformation>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 4);
  *a4 = *v6;
  tlv::throwIfNotEnoughBytes((v6 + 4), v7, 4);
  *(a4 + 4) = *(v6 + 1);
  tlv::throwIfNotEnoughBytes((v6 + 8), v7, 4);
  *(a4 + 8) = *(v6 + 2);
  tlv::throwIfNotEnoughBytes((v6 + 12), v7, 4);
  *(a4 + 12) = *(v6 + 3);
  result = tlv::throwIfNotEnoughBytes((v6 + 16), v7, 4);
  *(a4 + 16) = *(v6 + 4);
  *a1 = (v6 + 20);
  return result;
}

void sub_296FA1C00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

_DWORD **tlv::writeV<coex::tlv::abm::LTE2TDDInformation>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  v2[4] = a2[4];
  *result = v2 + 5;
  return result;
}

uint64_t coex::tlv::abm::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 16);
  *(a1 + 16) = *(a2 + 20);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 28);
  *(a1 + 28) = *(a2 + 32);
  *(a1 + 32) = *(a2 + 36);
  return a1 + 33;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  return a1 + 26;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  return a1 + 16;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1 + 24;
}

{
  *a1 = *a2;
  v3 = a1 + 5;
  *(a1 + 4) = *(a2 + 16) - *(a2 + 8);
  memcpy((a1 + 5), *(a2 + 8), *(a2 + 16) - *(a2 + 8));
  return v3 + *(a2 + 16) - *(a2 + 8);
}

uint64_t tlv::parseV<coex::tlv::abm::LTECarrierInformation>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a4 = v5;
  *(a4 + 16) = v5;
  *a4 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 29) = 0;
  result = coex::tlv::abm::parseField(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_296FA1D08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<coex::tlv::abm::LTECarrierInformation>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 16);
  *(v2 + 16) = *(a2 + 20);
  *(v2 + 20) = *(a2 + 24);
  *(v2 + 24) = *(a2 + 28);
  *(v2 + 28) = *(a2 + 32);
  *(v2 + 32) = *(a2 + 36);
  *result = v2 + 33;
  return result;
}

uint64_t tlv::parseV<coex::tlv::abm::NGCCarrierInformation>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = -1431655766;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  result = coex::tlv::abm::parseField(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_296FA1F08(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *tlv::writeV<coex::tlv::abm::NGCCarrierInformation>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 22) = *(a2 + 22);
  *(v2 + 24) = *(a2 + 24);
  *result = v2 + 26;
  return result;
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v9 = a1 + 1;
  v8 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a3) >> 3);
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v11 = v10 + 40 * v8;
      a3[1] = v11;
    }

    result = v9;
  }

  else
  {
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v8 - v12);
    v10 = *a3;
    v11 = a3[1];
    result = v9;
  }

  while (v10 != v11)
  {
    result = coex::tlv::abm::parseField(result, a2, v10, v7);
    v10 += 40;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v9 = a1 + 1;
  v8 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a3) >> 3);
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v11 = v10 + 40 * v8;
      a3[1] = v11;
    }

    result = v9;
  }

  else
  {
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v8 - v12);
    v10 = *a3;
    v11 = a3[1];
    result = v9;
  }

  while (v10 != v11)
  {
    result = coex::tlv::abm::parseField(result, a2, v10, v7);
    v10 += 40;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v9 = a1 + 1;
  v8 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *a3) >> 2);
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v11 = v10 + 28 * v8;
      a3[1] = v11;
    }

    result = v9;
  }

  else
  {
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v8 - v12);
    v10 = *a3;
    v11 = a3[1];
    result = v9;
  }

  while (v10 != v11)
  {
    result = coex::tlv::abm::parseField(result, a2, v10, v7);
    v10 += 28;
  }

  return result;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v9 = a1 + 1;
  v8 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *a3) >> 2);
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v11 = v10 + 28 * v8;
      a3[1] = v11;
    }

    result = v9;
  }

  else
  {
    std::vector<coex::tlv::abm::NGCCarrierInformation>::__append(a3, v8 - v12);
    v10 = *a3;
    v11 = a3[1];
    result = v9;
  }

  while (v10 != v11)
  {
    result = coex::tlv::abm::parseField(result, a2, v10, v7);
    v10 += 28;
  }

  return result;
}

_BYTE *coex::tlv::abm::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 4) = *(v3 + 8);
      *(result + 3) = *(v3 + 16);
      *(result + 4) = *(v3 + 20);
      *(result + 5) = *(v3 + 24);
      *(result + 6) = *(v3 + 28);
      *(result + 7) = *(v3 + 32);
      v5 = result + 33;
      result[32] = *(v3 + 36);
      v3 += 40;
      result += 33;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 4) = *(v3 + 8);
      *(result + 3) = *(v3 + 16);
      *(result + 4) = *(v3 + 20);
      *(result + 5) = *(v3 + 24);
      *(result + 6) = *(v3 + 28);
      *(result + 7) = *(v3 + 32);
      v5 = result + 33;
      result[32] = *(v3 + 36);
      v3 += 40;
      result += 33;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

{
  *a1 = -73 * ((a2[2] - *a2) >> 2);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 4) = *(v3 + 16);
      *(result + 10) = *(v3 + 20);
      *(result + 11) = *(v3 + 22);
      *(result + 12) = *(v3 + 24);
      result += 26;
      v3 += 28;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -73 * ((a2[2] - *a2) >> 2);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 4) = *(v3 + 16);
      *(result + 10) = *(v3 + 20);
      *(result + 11) = *(v3 + 22);
      *(result + 12) = *(v3 + 24);
      result += 26;
      v3 += 28;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 4;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 1) = *(v3 + 8);
      result += 16;
      v3 += 16;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -85 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      *(result + 1) = *(v3 + 4);
      *(result + 2) = *(v3 + 8);
      *(result + 3) = *(v3 + 12);
      *(result + 2) = *(v3 + 16);
      result += 24;
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = a2[2] - *a2;
  result = a1 + 1;
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v6 = v4 - v5;
    if ((v4 - v5) < 0x20)
    {
      goto LABEL_10;
    }

    if ((a1 - v5 + 1) < 0x20)
    {
      goto LABEL_10;
    }

    result += v6 & 0xFFFFFFFFFFFFFFE0;
    v7 = &v5[v6 & 0xFFFFFFFFFFFFFFE0];
    v8 = (v5 + 16);
    v9 = a1 + 17;
    v10 = v6 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v11 = *v8;
      *(v9 - 1) = *(v8 - 1);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 32;
    }

    while (v10);
    v5 = v7;
    if (v6 != (v6 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_10:
      do
      {
        v12 = *v5++;
        *result++ = v12;
      }

      while (v5 != v4);
    }
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      while (1)
      {
        *result = *v3;
        *(result + 1) = *(v3 + 4);
        result[8] = *(v3 + 8);
        v5 = result + 10;
        result[9] = (*(v3 + 24) - *(v3 + 16)) >> 5;
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v6 != v7)
        {
          break;
        }

        result += 10;
        v3 += 40;
        if (v3 == v4)
        {
          return result;
        }
      }

      do
      {
        *v5 = *v6;
        result = v5 + 2;
        v5[1] = (*(v6 + 16) - *(v6 + 8)) >> 2;
        v9 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v9 != v8)
        {
          v10 = v8 - v9 - 4;
          if (v10 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v5 - v9 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v11 = (v10 >> 2) + 1;
          v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
          result += v12;
          v13 = &v9[v12];
          v14 = (v9 + 16);
          v15 = v5 + 18;
          v16 = v11 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 8;
          }

          while (v16);
          v9 = v13;
          if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v18 = *v9;
              v9 += 4;
              *result = v18;
              result += 4;
            }

            while (v9 != v8);
          }
        }

        v6 += 32;
        v5 = result;
      }

      while (v6 != v7);
      v3 += 40;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = -51 * ((a2[2] - *a2) >> 3);
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      while (1)
      {
        *result = *v3;
        *(result + 1) = *(v3 + 4);
        result[8] = *(v3 + 8);
        v5 = result + 10;
        result[9] = (*(v3 + 24) - *(v3 + 16)) >> 5;
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v6 != v7)
        {
          break;
        }

        result += 10;
        v3 += 40;
        if (v3 == v4)
        {
          return result;
        }
      }

      do
      {
        *v5 = *v6;
        result = v5 + 2;
        v5[1] = (*(v6 + 16) - *(v6 + 8)) >> 2;
        v9 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v9 != v8)
        {
          v10 = v8 - v9 - 4;
          if (v10 < 0x1C)
          {
            goto LABEL_18;
          }

          if ((v5 - v9 + 2) < 0x20)
          {
            goto LABEL_18;
          }

          v11 = (v10 >> 2) + 1;
          v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
          result += v12;
          v13 = &v9[v12];
          v14 = (v9 + 16);
          v15 = v5 + 18;
          v16 = v11 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 8;
          }

          while (v16);
          v9 = v13;
          if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_18:
            do
            {
              v18 = *v9;
              v9 += 4;
              *result = v18;
              result += 4;
            }

            while (v9 != v8);
          }
        }

        v6 += 32;
        v5 = result;
      }

      while (v6 != v7);
      v3 += 40;
    }

    while (v3 != v4);
  }

  return result;
}

{
  *a1 = (a2[2] - *a2) >> 5;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      *result = *v3;
      v5 = result + 5;
      result[4] = *(v3 + 16) - *(v3 + 8);
      memcpy(result + 5, *(v3 + 8), *(v3 + 16) - *(v3 + 8));
      result = &v5[*(v3 + 16) - *(v3 + 8)];
      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t coex::tlv::abm::getFieldSize(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 34;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 33 * ((v1 - *a1 - 40) / 0x28uLL) + 34;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 27;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 26 * ((v1 - *a1 - 28) / 0x1CuLL) + 27;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1 - 16) & 0xFFFFFFFFFFFFFFF0) + 17;
  }
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1) & 0xFFFFFFFFFFFFFFF8) + 1;
  }
}

{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  else
  {
    return 24 * ((v1 - *a1 - 24) / 0x18uLL) + 25;
  }
}

{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return ((v1 - *a1) & 0xFFFFFFFFFFFFFFF8) + 1;
  }
}