uint64_t gleVStateProgram_GetParam(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2 == 351)
  {
    v4 = *(a1 + 8);
    if (!**(v4 + 104))
    {
      v10 = xmmword_23A301110;
      **(*(a1 + 8) + 104) = gleLLVMCreateConstantVec4(v4, &v10, 1);
    }
  }

  v5 = (a1 + 260 + 4 * a2);
  v6 = *v5;
  if (v6 == 0xFFFF)
  {
    v7 = *(a1 + 1998);
    LOWORD(v6) = *(a1 + 1998);
    *v5 = v7;
    *(a1 + 260 + 4 * v7 + 2) = a2;
    v8 = v7 + 11;
    if ((a2 & 0xFFFFFFF0) != 0x90)
    {
      v8 = v7 + 1;
    }

    *(a1 + 1998) = v8;
  }

  return v6;
}

uint64_t gleVStateProgram_MultMatrix4x4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v15 = 1919389696;
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v16 = 8 * (*(a1 + 16) & 7);
  if (a9)
  {
    v77 = v16 | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      Attrib = gleVStateProgram_GetAttrib(a1, a2);
      v18 = 1689600;
    }

    else
    {
      LODWORD(Attrib) = *(a1 + 1900 + 2 * a2);
      if (Attrib == 0xFFFF)
      {
        LODWORD(Attrib) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = Attrib;
        *(a1 + 2004) = Attrib + 1;
      }

      Attrib = Attrib;
      v18 = 1689664;
    }

    *(&v78 + 1) = v18 | (Attrib << 48);
    v21 = gleVStateProgram_GetParam(a1, a3 + 7) << 48;
    if (a7)
    {
      v22 = v21 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v22 = v21 + 1689728;
    }

    *&v79 = v22;
    if (a8)
    {
      v23 = (a1 + 1692 + 4 * a4);
      v24 = *v23;
      v25 = 1918939136;
      if (v24 == 0xFFFF)
      {
        v26 = *(a1 + 2000);
        v24 = *(a1 + 2000);
        *v23 = v26;
        *(a1 + 1692 + 4 * v26 + 2) = a4;
        *(a1 + 2000) = v26 + 1;
      }
    }

    else
    {
      v24 = *(a1 + 1900 + 2 * a4);
      v25 = 1918930944;
      if (v24 == 0xFFFF)
      {
        v24 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v24;
        *(a1 + 2004) = v24 + 1;
      }
    }

    *&v78 = v25 | (v24 << 48);
    (*(a1 + 2016))(a1, &v77);
    v82 = 0;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v27 = gleVStateProgram_GetAttrib(a1, a2);
      v28 = 1689600;
    }

    else
    {
      LODWORD(v27) = *(a1 + 1900 + 2 * a2);
      if (v27 == 0xFFFF)
      {
        LODWORD(v27) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v27;
        *(a1 + 2004) = v27 + 1;
      }

      v27 = v27;
      v28 = 1689664;
    }

    *(&v78 + 1) = v28 | (v27 << 48);
    v29 = gleVStateProgram_GetParam(a1, a3 + 6) << 48;
    if (a7)
    {
      v30 = v29 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v30 = v29 + 1689728;
    }

    *&v79 = v30;
    if (a8)
    {
      v31 = (a1 + 1692 + 4 * a4);
      v32 = *v31;
      v33 = 1918971904;
      if (v32 == 0xFFFF)
      {
        v34 = *(a1 + 2000);
        v32 = *(a1 + 2000);
        *v31 = v34;
        *(a1 + 1692 + 4 * v34 + 2) = a4;
        *(a1 + 2000) = v34 + 1;
      }
    }

    else
    {
      v32 = *(a1 + 1900 + 2 * a4);
      v33 = 1918963712;
      if (v32 == 0xFFFF)
      {
        v32 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v32;
        *(a1 + 2004) = v32 + 1;
      }
    }

    *&v78 = v33 | (v32 << 48);
    (*(a1 + 2016))(a1, &v77);
    v82 = 0;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v35 = gleVStateProgram_GetAttrib(a1, a2);
      v36 = 1689600;
    }

    else
    {
      LODWORD(v35) = *(a1 + 1900 + 2 * a2);
      if (v35 == 0xFFFF)
      {
        LODWORD(v35) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v35;
        *(a1 + 2004) = v35 + 1;
      }

      v35 = v35;
      v36 = 1689664;
    }

    *(&v78 + 1) = v36 | (v35 << 48);
    v37 = gleVStateProgram_GetParam(a1, a3 + 5) << 48;
    if (a7)
    {
      v38 = v37 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v38 = v37 + 1689728;
    }

    *&v79 = v38;
    if (a8)
    {
      v39 = (a1 + 1692 + 4 * a4);
      v40 = *v39;
      v41 = 1919037440;
      if (v40 == 0xFFFF)
      {
        v42 = *(a1 + 2000);
        v40 = *(a1 + 2000);
        *v39 = v42;
        *(a1 + 1692 + 4 * v42 + 2) = a4;
        *(a1 + 2000) = v42 + 1;
      }
    }

    else
    {
      v40 = *(a1 + 1900 + 2 * a4);
      v41 = 1919029248;
      if (v40 == 0xFFFF)
      {
        v40 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v40;
        *(a1 + 2004) = v40 + 1;
      }
    }

    *&v78 = v41 | (v40 << 48);
    (*(a1 + 2016))(a1, &v77);
    v82 = 0;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v43 = gleVStateProgram_GetAttrib(a1, a2);
      v44 = 1689600;
    }

    else
    {
      LODWORD(v43) = *(a1 + 1900 + 2 * a2);
      if (v43 == 0xFFFF)
      {
        LODWORD(v43) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v43;
        *(a1 + 2004) = v43 + 1;
      }

      v43 = v43;
      v44 = 1689664;
    }

    *(&v78 + 1) = v44 | (v43 << 48);
    v45 = gleVStateProgram_GetParam(a1, a3 + 4) << 48;
    if (a7)
    {
      v46 = v45 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v46 = v45 + 1689728;
    }

    *&v79 = v46;
    if (a8)
    {
      v47 = a1 + 1692;
      v48 = (a1 + 1692 + 4 * a4);
      v49 = *v48;
      v15 = 1919168512;
      goto LABEL_99;
    }

    v49 = *(a1 + 1900 + 2 * a4);
    v15 = 1919160320;
    if (v49 != 0xFFFF)
    {
      goto LABEL_104;
    }

    v49 = *(a1 + 2004);
    *(a1 + 1900 + 2 * a4) = v49;
LABEL_103:
    *(a1 + 2004) = v49 + 1;
    goto LABEL_104;
  }

  v77 = v16 + 0x3100000882;
  *(a1 + 16) = 2;
  if (a6)
  {
    v20 = gleVStateProgram_GetAttrib(a1, a2) << 48;
  }

  else
  {
    v50 = *(a1 + 1900 + 2 * a2);
    if (v50 == 0xFFFF)
    {
      v50 = *(a1 + 2004);
      *(a1 + 1900 + 2 * a2) = v50;
      *(a1 + 2004) = v50 + 1;
    }

    v20 = (v50 << 48) | 0x40;
  }

  *(&v78 + 1) = v20;
  Param = gleVStateProgram_GetParam(a1, a3);
  v75 = a8;
  if (a7)
  {
    v52 = (Param << 48) + 1689729;
    *(a1 + 2002) = 1;
  }

  else
  {
    v52 = (Param << 48) + 1689728;
  }

  *&v79 = v52;
  v53 = a1 + 1900;
  v54 = *(a1 + 1900 + 2 * a5);
  if (v54 == 0xFFFF)
  {
    v54 = *(a1 + 2004);
    *(v53 + 2 * a5) = v54;
    *(a1 + 2004) = v54 + 1;
  }

  *&v78 = (v54 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v77);
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v55 = gleVStateProgram_GetAttrib(a1, a2);
    v56 = 43520;
  }

  else
  {
    LODWORD(v55) = *(v53 + 2 * a2);
    if (v55 == 0xFFFF)
    {
      LODWORD(v55) = *(a1 + 2004);
      *(v53 + 2 * a2) = v55;
      *(a1 + 2004) = v55 + 1;
    }

    v55 = v55;
    v56 = 43584;
  }

  *(&v78 + 1) = v56 | (v55 << 48);
  v57 = gleVStateProgram_GetParam(a1, a3 + 1) << 48;
  if (a7)
  {
    v58 = v57 + 1689729;
    *(a1 + 2002) = 1;
  }

  else
  {
    v58 = v57 + 1689728;
  }

  *&v79 = v58;
  v59 = *(v53 + 2 * a5);
  v60 = a4;
  if (v59 == 0xFFFF)
  {
    v61 = *(a1 + 2004);
    *(v53 + 2 * a5) = v61;
    *(a1 + 2004) = v61 + 1;
    v59 = *(v53 + 2 * a5);
    *(&v79 + 1) = (v61 << 48) | 0x19C840;
    if (v59 == 0xFFFF)
    {
      v59 = *(a1 + 2004);
      *(v53 + 2 * a5) = v59;
      *(a1 + 2004) = v59 + 1;
    }
  }

  else
  {
    *(&v79 + 1) = (v59 << 48) | 0x19C840;
  }

  v62 = 87040;
  *&v78 = (v59 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v77);
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v63 = gleVStateProgram_GetAttrib(a1, a2);
  }

  else
  {
    LODWORD(v63) = *(v53 + 2 * a2);
    if (v63 == 0xFFFF)
    {
      LODWORD(v63) = *(a1 + 2004);
      *(v53 + 2 * a2) = v63;
      *(a1 + 2004) = v63 + 1;
    }

    v63 = v63;
    v62 = 87104;
  }

  *(&v78 + 1) = v62 | (v63 << 48);
  v64 = gleVStateProgram_GetParam(a1, a3 + 2) << 48;
  if (a7)
  {
    v65 = v64 + 1689729;
    *(a1 + 2002) = 1;
  }

  else
  {
    v65 = v64 + 1689728;
  }

  LOWORD(a4) = v60;
  *&v79 = v65;
  v66 = *(v53 + 2 * a5);
  if (v66 == 0xFFFF)
  {
    v67 = *(a1 + 2004);
    *(v53 + 2 * a5) = v67;
    *(a1 + 2004) = v67 + 1;
    v66 = *(v53 + 2 * a5);
    *(&v79 + 1) = (v67 << 48) | 0x19C840;
    if (v66 == 0xFFFF)
    {
      v66 = *(a1 + 2004);
      *(v53 + 2 * a5) = v66;
      *(a1 + 2004) = v66 + 1;
    }
  }

  else
  {
    *(&v79 + 1) = (v66 << 48) | 0x19C840;
  }

  *&v78 = (v66 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v77);
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v68 = gleVStateProgram_GetAttrib(a1, a2);
    v69 = 130560;
  }

  else
  {
    LODWORD(v68) = *(v53 + 2 * a2);
    if (v68 == 0xFFFF)
    {
      LODWORD(v68) = *(a1 + 2004);
      *(v53 + 2 * a2) = v68;
      *(a1 + 2004) = v68 + 1;
    }

    v68 = v68;
    v69 = 130624;
  }

  *(&v78 + 1) = v69 | (v68 << 48);
  v70 = gleVStateProgram_GetParam(a1, a3 + 3) << 48;
  if (a7)
  {
    v71 = v70 + 1689729;
    *(a1 + 2002) = 1;
  }

  else
  {
    v71 = v70 + 1689728;
  }

  *&v79 = v71;
  v72 = *(v53 + 2 * a5);
  if (v72 == 0xFFFF)
  {
    v72 = *(a1 + 2004);
    *(v53 + 2 * a5) = v72;
    *(a1 + 2004) = v72 + 1;
  }

  *(&v79 + 1) = (v72 << 48) | 0x19C840;
  if (!v75)
  {
    v49 = *(v53 + 2 * v60);
    if (v49 != 0xFFFF)
    {
      goto LABEL_104;
    }

    v49 = *(a1 + 2004);
    *(v53 + 2 * v60) = v49;
    goto LABEL_103;
  }

  v47 = a1 + 1692;
  v48 = (a1 + 1692 + 4 * v60);
  v49 = *v48;
  v15 = 1919397888;
LABEL_99:
  if (v49 == 0xFFFF)
  {
    v73 = *(a1 + 2000);
    v49 = *(a1 + 2000);
    *v48 = v73;
    *(v47 + 4 * v73 + 2) = a4;
    *(a1 + 2000) = v73 + 1;
  }

LABEL_104:
  *&v78 = v15 | (v49 << 48);
  return (*(a1 + 2016))(a1, &v77);
}

uint64_t gleVStateProgram_MultMatrix3x3(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v10 = 1919389696;
  memset(&v37[8], 0, 48);
  v11 = 8 * (*(a1 + 16) & 7);
  if (a6)
  {
    v35 = v11 | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v36 + 1) = (gleVStateProgram_GetAttrib(a1, 1) << 48) | 0x19C800;
    v12 = gleVStateProgram_GetParam(a1, a2 + 4) << 48;
    if (a5)
    {
      v13 = v12 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v13 = v12 | 0x19C880;
    }

    *v37 = v13;
    v17 = (a1 + 2 * a3 + 1900);
    v18 = *v17;
    if (v18 == 0xFFFF)
    {
      v18 = *(a1 + 2004);
      *v17 = v18;
      *(a1 + 2004) = v18 + 1;
    }

    *&v36 = (v18 << 48) | 0x72641000;
    (*(a1 + 2016))(a1, &v35);
    memset(v37, 0, sizeof(v37));
    v36 = 0u;
    v35 = (8 * (*(a1 + 16) & 7)) | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v36 + 1) = (gleVStateProgram_GetAttrib(a1, 1) << 48) | 0x19C800;
    v19 = gleVStateProgram_GetParam(a1, a2 + 5) << 48;
    if (a5)
    {
      v20 = v19 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v20 = v19 | 0x19C880;
    }

    *v37 = v20;
    v21 = *v17;
    if (v21 == 0xFFFF)
    {
      v21 = *(a1 + 2004);
      *v17 = v21;
      *(a1 + 2004) = v21 + 1;
    }

    *&v36 = (v21 << 48) | 0x72621000;
    (*(a1 + 2016))(a1, &v35);
    memset(v37, 0, sizeof(v37));
    v36 = 0u;
    v35 = (8 * (*(a1 + 16) & 7)) | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v36 + 1) = (gleVStateProgram_GetAttrib(a1, 1) << 48) | 0x19C800;
    v22 = gleVStateProgram_GetParam(a1, a2 + 6) << 48;
    if (a5)
    {
      v23 = v22 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v23 = v22 | 0x19C880;
    }

    *v37 = v23;
    v24 = *v17;
    v10 = 1918996480;
  }

  else
  {
    v35 = v11 + 0x3100000882;
    *(a1 + 16) = 2;
    *(&v36 + 1) = gleVStateProgram_GetAttrib(a1, 1) << 48;
    v15 = gleVStateProgram_GetParam(a1, a2) << 48;
    if (a5)
    {
      v16 = v15 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v16 = v15 | 0x19C880;
    }

    *v37 = v16;
    v25 = a1 + 1900;
    v26 = *(a1 + 1900 + 2 * a4);
    if (v26 == 0xFFFF)
    {
      v26 = *(a1 + 2004);
      *(v25 + 2 * a4) = v26;
      *(a1 + 2004) = v26 + 1;
    }

    *&v36 = (v26 << 48) | 0x72679000;
    (*(a1 + 2016))(a1, &v35);
    memset(v37, 0, sizeof(v37));
    v36 = 0u;
    v35 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
    *(a1 + 16) = 3;
    *(&v36 + 1) = (gleVStateProgram_GetAttrib(a1, 1) << 48) | 0xAA00;
    v27 = gleVStateProgram_GetParam(a1, a2 + 1) << 48;
    if (a5)
    {
      v28 = v27 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v28 = v27 | 0x19C880;
    }

    *v37 = v28;
    v29 = *(v25 + 2 * a4);
    if (v29 == 0xFFFF)
    {
      v30 = *(a1 + 2004);
      *(v25 + 2 * a4) = v30;
      *(a1 + 2004) = v30 + 1;
      v29 = *(v25 + 2 * a4);
      *&v37[8] = (v30 << 48) | 0x19C840;
      if (v29 == 0xFFFF)
      {
        v29 = *(a1 + 2004);
        *(v25 + 2 * a4) = v29;
        *(a1 + 2004) = v29 + 1;
      }
    }

    else
    {
      *&v37[8] = ((v29 << 48) | 0x19C880) - 64;
    }

    *&v36 = (v29 << 48) | 0x72679000;
    (*(a1 + 2016))(a1, &v35);
    memset(v37, 0, sizeof(v37));
    v36 = 0u;
    v35 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
    *(a1 + 16) = 3;
    *(&v36 + 1) = (gleVStateProgram_GetAttrib(a1, 1) << 48) | 0x15400;
    v31 = gleVStateProgram_GetParam(a1, a2 + 2) << 48;
    if (a5)
    {
      v32 = v31 + 1689729;
      *(a1 + 2002) = 1;
    }

    else
    {
      v32 = v31 | 0x19C880;
    }

    *v37 = v32;
    v33 = *(v25 + 2 * a4);
    if (v33 == 0xFFFF)
    {
      v33 = *(a1 + 2004);
      *(v25 + 2 * a4) = v33;
      *(a1 + 2004) = v33 + 1;
    }

    *&v37[8] = (v33 << 48) | 0x19C840;
    v17 = (v25 + 2 * a3);
    v24 = *v17;
  }

  if (v24 == 0xFFFF)
  {
    v24 = *(a1 + 2004);
    *v17 = v24;
    *(a1 + 2004) = v24 + 1;
  }

  *&v36 = v10 | (v24 << 48);
  return (*(a1 + 2016))(a1, &v35);
}

uint64_t gleVStateProgram_NormalizeVector(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = ((8 * (*(a1 + 16) & 7)) | 0x3100000882) + 384;
  *(a1 + 16) = 2;
  v10 = a1 + 1900;
  v11 = *(a1 + 1900 + 2 * a2);
  if (v11 == 0xFFFF)
  {
    v12 = *(a1 + 2004);
    *(v10 + 2 * a2) = v12;
    *(a1 + 2004) = v12 + 1;
    v11 = *(v10 + 2 * a2);
    *&v23 = (v12 << 48) | 0x19C840;
    if (v11 == 0xFFFF)
    {
      v11 = *(a1 + 2004);
      *(v10 + 2 * a2) = v11;
      *(a1 + 2004) = v11 + 1;
    }
  }

  else
  {
    *&v23 = (v11 << 48) | 0x19C840;
  }

  *(&v23 + 1) = (v11 << 48) | 0x19C840;
  v13 = *(v10 + 2 * a4);
  if (v13 == 0xFFFF)
  {
    v13 = *(a1 + 2004);
    *(v10 + 2 * a4) = v13;
    *(a1 + 2004) = v13 + 1;
  }

  v22 = (v13 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 16);
  *(a1 + 16) = 1;
  v21 = (8 * (v14 & 7)) | 0x100080341;
  v15 = *(v10 + 2 * a4);
  if (v15 == 0xFFFF)
  {
    v15 = *(a1 + 2004);
    *(v10 + 2 * a4) = v15;
    *(a1 + 2004) = v15 + 1;
  }

  *&v23 = (v15 << 48) | 0x19C840;
  v16 = *(v10 + 2 * a5);
  if (v16 == 0xFFFF)
  {
    v16 = *(a1 + 2004);
    *(v10 + 2 * a5) = v16;
    *(a1 + 2004) = v16 + 1;
  }

  v22 = (v16 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = (8 * (*(a1 + 16) & 7)) | 0x3100000882;
  *(a1 + 16) = 2;
  v17 = *(v10 + 2 * a2);
  if (v17 == 0xFFFF)
  {
    v17 = *(a1 + 2004);
    *(v10 + 2 * a2) = v17;
    *(a1 + 2004) = v17 + 1;
  }

  *&v23 = (v17 << 48) | 0x19C840;
  v18 = *(v10 + 2 * a5);
  if (v18 == 0xFFFF)
  {
    v18 = *(a1 + 2004);
    *(v10 + 2 * a5) = v18;
    *(a1 + 2004) = v18 + 1;
  }

  *(&v23 + 1) = (v18 << 48) | 0x19C840;
  v19 = *(v10 + 2 * a3);
  if (v19 == 0xFFFF)
  {
    v19 = *(a1 + 2004);
    *(v10 + 2 * a3) = v19;
    *(a1 + 2004) = v19 + 1;
  }

  v22 = (v19 << 48) | 0x72679000;
  return (*(a1 + 2016))(a1, &v21);
}

uint64_t gleFStateProgram_AttribToFunction(uint64_t a1, int a2)
{
  v4 = *(a1 + 4 * a2 + 22);
  v5 = *(a1 + 8);
  if (*(a1 + 280))
  {
    v8 = *(a1 + 4 * a2 + 22);
    if ((v8 - 1) < 2)
    {
      if (*(a1 + 252))
      {
        LLVMGetParam();
        LLVMGetParam();
        LLVMGetParam();
LABEL_24:

        return LLVMBuildSelect();
      }

      return 0;
    }

    v9 = v8 == 3 || v8 == 13;
    if (v9 || ((1 << (v4 - 4)) & *(*(a1 + 264) + 4)) == 0)
    {
      return 0;
    }

    return LLVMGetParam();
  }

  else
  {
    if (*(a1 + 4 * a2 + 22) - 1 < 2)
    {
      if (*(a1 + 252))
      {
        v6 = MEMORY[0x23EE853F0](v5[2], 1);
        gleLLVMAddFunctionCall(v5, "graphics.pixel.readFrontFacing", v6, 0, 0, 0);
        if (*(a1 + 251))
        {
          v7 = 3;
        }

        else
        {
          v7 = 1;
        }

        gleLLVMGetAttribute(v5, a2, 7, v7);
        gleLLVMGetAttribute(v5, a2 + 1, 7, v7);
        goto LABEL_24;
      }

      return 0;
    }

    if (*(a1 + 4 * a2 + 22) == 3 || ((1 << (v4 - 4)) & *(*(a1 + 264) + 4)) == 0)
    {
      return 0;
    }

    v11 = LLVMFloatTypeInContext();
    v12 = MEMORY[0x23EE854F0](v11, 2);

    return gleLLVMAddFunctionCall(v5, "graphics.pixel.readPointCoordf", v12, 0, 0, 0);
  }
}

uint64_t gleFStateProgram_OutputToFunction(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4 * a2 + 174);
  v7 = *(a1 + 8);
  if (*(a1 + 280))
  {
    if (!v7[20])
    {
      v7[20] = MEMORY[0x23EE85370](v7[21]);
    }

    if (v6 == 8)
    {
      if (!v7[19])
      {
        v7[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildExtractElement();
    }

    else if (*(a1 + 251))
    {
      v15 = LLVMHalfTypeInContext();
      v16 = MEMORY[0x23EE854F0](v15, 4);
      if (LLVMTypeOf() != v16)
      {
        LLVMBuildFPCast();
      }
    }

    result = LLVMBuildInsertValue();
    v7[20] = result;
  }

  else
  {
    v8 = v7[19];
    if (!v8)
    {
      v8 = LLVMInt32TypeInContext();
      v7[19] = v8;
    }

    if (v6 == 8)
    {
      LLVMConstInt();
      Element = LLVMBuildExtractElement();
      v18[0] = LLVMTypeOf();
      v17[0] = Element;
      v10 = "graphics.pixel.writeDepth";
      v11 = v7;
      v12 = 1;
    }

    else
    {
      v18[0] = v8;
      v18[1] = LLVMTypeOf();
      v17[0] = LLVMConstInt();
      v17[1] = a4;
      v10 = "graphics.pixel.writeOutput";
      v11 = v7;
      v12 = 2;
    }

    result = gleLLVMAddVoidFunctionCall(v11, v10, v12, v18, v17);
  }

  ++*a3;
  return result;
}

uint64_t glpFragmentStateToLLVMModule(uint64_t *a1, uint64_t a2)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *&v19[12] = 0u;
  v20 = 0u;
  v5 = 0u;
  v6 = 0;
  *&v19[14] = -1;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *v19 = v2;
  v18 = v2;
  v17 = v2;
  v16 = v2;
  v15 = v2;
  v14 = v2;
  v13 = v2;
  v12 = v2;
  v11 = v2;
  v10 = v2;
  v9 = v2;
  v8 = v2;
  v7 = v2;
  DWORD2(v22) = 1;
  gleFragmentStateToModule(a1, a2, &v23, &v5);
  v3 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  gleLLVMDestroyBuildContext(&v23);
  return v3;
}

uint64_t gleFragmentStateToModule(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  gleLLVMInitBuildContext(a3, a2, "Fragment_State_Program", 0, 14, 0, 16, 9, v70, SHIDWORD(v70));
  *(a3 + 216) = *(a4 + 280) & 1;
  *(a3 + 220) = (*a1 >> 41) & 1;
  *a3 = 1;
  *(a3 + 184) = a4;
  *(a3 + 192) = gleFStateProgram_OutputToFunction;
  *(a3 + 200) = gleFStateProgram_AttribToFunction;
  *(a3 + 208) = 0;
  *(a4 + 264) = a1;
  v8 = *(a4 + 280) & 0xFFFFFFF7 | (8 * (((*a1 >> 38) >> 3) & 1));
  *(a4 + 280) = v8;
  *(a4 + 8) = a3;
  *(a4 + 252) = *(a1 + 3) & 1;
  *(a4 + 160) = 4096;
  *(a4 + 164) = 4097;
  *(a4 + 168) = 4098;
  *(a4 + 256) = gleFStateProgram_LLVMAddOperation;
  v9 = *a1;
  v11 = (*a1 & 0x20000000000) == 0 && gEnablePrecision != 0;
  *(a4 + 251) = v11;
  v12 = *a1;
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  v13 = 0.0;
  v14 = 1;
  do
  {
    if (((BYTE1(v12) >> (v14 - 1)) & 1) == 0)
    {
      continue;
    }

    v15 = a1[v14];
    if ((v15 & 0x70000000) != 0x50000000)
    {
      v13 = v13 + 1.0;
      continue;
    }

    v16 = (v15 >> 21) & 0xF;
    if (v16 > 4)
    {
      v17 = v13 + 2.0;
      if (v16 == 10)
      {
        v18 = v13 + 2.0;
      }

      else
      {
        v18 = v13;
      }

      if (v16 == 9)
      {
        v18 = v13 + 2.0;
      }

      if (v16 != 8)
      {
        v17 = v13;
      }

      if (v16 - 5 < 2)
      {
        v17 = (v13 + 1.0) * 12.0;
      }

      if (((v15 >> 21) & 0xF) > 8)
      {
        v17 = v18;
      }
    }

    else if (((v15 >> 21) & 0xF) > 2)
    {
      if (v16 == 3)
      {
        v17 = v13 + 2.0;
      }

      else
      {
        v17 = v13;
        if (v16 == 4)
        {
          v17 = (v13 + 1.0) + (v13 + 1.0);
        }
      }
    }

    else
    {
      v17 = v13 + 1.0;
      if (v16 - 1 >= 2 && v16)
      {
        v17 = v13;
      }
    }

    v19 = (v15 >> 50) & 0xF;
    if (((v15 >> 50) & 0xF) <= 4)
    {
      if (((v15 >> 50) & 0xF) <= 2)
      {
        if ((v19 - 1) < 2 || !v19)
        {
          v13 = v13 + 1.0;
        }

        goto LABEL_46;
      }

      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v13 = (v13 + 1.0) + (v13 + 1.0);
        }

        goto LABEL_46;
      }

LABEL_45:
      v13 = v13 + 2.0;
      goto LABEL_46;
    }

    if (((v15 >> 50) & 0xF) > 8)
    {
      if (v19 != 9 && v19 != 10)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if ((v19 - 5) >= 2)
    {
      if (v19 != 8)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v13 = (v13 + 1.0) * 12.0;
LABEL_46:
    v20 = v17;
    v21 = v13;
    if (v20 >= v21)
    {
      v21 = v20;
    }

    v22 = (v15 >> 25) & 3;
    v23 = v21 + v21;
    if (v22 == 2)
    {
      v24 = v21 * 4.0;
    }

    else
    {
      v24 = v21 + v21;
    }

    if (v22 == 1)
    {
      v24 = v21;
    }

    v25 = v24;
    v26 = (v15 >> 54) & 3;
    if (v26 == 2)
    {
      v23 = v21 * 4.0;
    }

    if (v26 != 1)
    {
      v21 = v23;
    }

    v13 = v21;
    if (v25 >= v13)
    {
      v13 = v25;
    }
  }

  while (BYTE1(v12) >> v14++);
  if (v13 > 48.0)
  {
    *(a4 + 251) = 0;
    v12 = *a1;
  }

LABEL_66:
  if ((v12 & 0x20000) != 0)
  {
    goto LABEL_83;
  }

  v28 = (v12 >> 8) & 1;
  v29 = v28 | 2;
  if ((v12 & 0x400) != 0)
  {
    v29 = 1;
  }

  if ((v12 & 0x200) != 0)
  {
    v28 = v29;
  }

  v30 = (v12 & 0x40000) != 0 ? v28 : BYTE1(v12);
  FirstActiveTexture = gleFStateProgram_GetFirstActiveTexture(v30, a1);
  if ((FirstActiveTexture & 0x80000000) != 0)
  {
LABEL_83:
    v31 = 0;
    if (v8)
    {
      goto LABEL_80;
    }

    goto LABEL_84;
  }

  v31 = 0;
  v32 = FirstActiveTexture;
  do
  {
    if ((v30 >> v32))
    {
      ++v31;
      FirstActiveTexture = gleLLVMAddTexture(*(a4 + 8), v32, HIBYTE(a1[v32 + 1]) & 7, (a1[v32 + 1] & 0x4000000000000000) != 0, a1[v32 + 1] < 0);
    }
  }

  while (v30 >> ++v32);
  v8 = *(a4 + 280);
  if ((v8 & 1) == 0)
  {
LABEL_84:
    v35 = 0;
    v36 = 0;
    goto LABEL_93;
  }

LABEL_80:
  FirstActiveTexture = gleFStateProgram_AllocateAttribs(a1, a4);
  if ((*a1 & 0x40000) != 0)
  {
    FirstActiveTexture = gleFStateProgram_AllocateOutput(a4, 0);
    if ((*(a1 + 1) & 2) != 0)
    {
      v34 = 8;
LABEL_87:
      FirstActiveTexture = gleFStateProgram_AllocateOutput(a4, v34);
    }
  }

  else
  {
    if ((*a1 & 0x20000) == 0)
    {
      v34 = 0;
      goto LABEL_87;
    }

    for (i = 0; i != 8; ++i)
    {
      if ((*a1 >> 8 >> i))
      {
        FirstActiveTexture = gleFStateProgram_AllocateOutput(a4, i);
      }
    }
  }

  v36 = *(a4 + 240);
  v35 = *(a4 + 244);
  v8 = *(a4 + 280);
LABEL_93:
  v38 = v36;
  MEMORY[0x28223BE20](FirstActiveTexture, 4 * v36);
  v40 = (&v71 - v39);
  bzero(&v71 - v39, v41);
  MEMORY[0x28223BE20](v42, 4 * v35);
  v44 = (&v71 - v43);
  bzero(&v71 - v43, v45);
  if ((v8 & 1) == 0)
  {
    v46 = "fragmentShader";
    v47 = a3;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_120;
  }

  if (v38 >= 1)
  {
    v52 = (a4 + 22);
    v53 = v38;
    v54 = v40;
    while (1)
    {
      v56 = *v52;
      v52 += 2;
      v55 = v56;
      if (v56 > 0xF)
      {
        break;
      }

      if (((1 << v55) & 0xC006) != 0)
      {
        if (*(a4 + 251))
        {
          v57 = 11;
        }

        else
        {
          v57 = 7;
        }

        goto LABEL_107;
      }

      if (((1 << v55) & 0x1008) != 0)
      {
        v57 = 5;
      }

      else
      {
        if (v55 != 13)
        {
          break;
        }

        v57 = 0;
      }

LABEL_107:
      *v54++ = v57;
      if (!--v53)
      {
        goto LABEL_108;
      }
    }

    v57 = 7;
    goto LABEL_107;
  }

LABEL_108:
  v58 = *(a4 + 244);
  if (v58 >= 1)
  {
    v59 = (a4 + 174);
    v60 = v44;
    do
    {
      v61 = *v59;
      v59 += 2;
      if (v61 == 8)
      {
        v62 = 4;
      }

      else if (*(a4 + 251))
      {
        v62 = 11;
      }

      else
      {
        v62 = 7;
      }

      *v60++ = v62;
      --v58;
    }

    while (v58);
  }

  if ((v8 & 8) != 0)
  {
    v46 = "#main";
  }

  else
  {
    v46 = "fragmentShader";
  }

  v47 = a3;
  v48 = v40;
  v49 = v38;
  v50 = v44;
  v51 = v35;
LABEL_120:
  gleLLVMBeginMain(v47, v46, v48, v49, v50, v51, v31);
  if ((*(a4 + 280) & 1) == 0)
  {
    gleFStateProgram_AllocateAttribs(a1, a4);
  }

  gleFStateProgram_Core(a1, a4);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  if (!*(a4 + 248))
  {
    *(a4 + 248) = 1;
    if ((*(a1 + 2) & 2) == 0)
    {
      v63 = 1919389696;
      v74 = 0uLL;
      v75 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      if (*(a4 + 251))
      {
        v64 = 0x3100180000;
      }

      else
      {
        v64 = 0x3100080000;
      }

      *&v71 = v64 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a4 + 16) & 7)) | 1;
      *(a4 + 16) = 1;
      if (*(a4 + 249))
      {
        *&v72 = ((gleFStateProgram_GetTemp(a4, 0) << 48) | 0x19C800) + 64;
        if (!*(a4 + 248))
        {
          Temp = gleFStateProgram_GetTemp(a4, 0);
          goto LABEL_134;
        }
      }

      else
      {
        v66 = *(a4 + 24);
        if (v66 == 0xFFFF)
        {
          v67 = *(a4 + 240);
          v66 = *(a4 + 240);
          *(a4 + 24) = v67;
          *(a4 + 4 * v67 + 22) = 1;
          *(a4 + 240) = v67 + 1;
        }

        *&v72 = (v66 << 48) | 0x19C800;
      }

      Temp = gleFStateProgram_GetOutput(a4, 0);
      v63 = 1919397888;
LABEL_134:
      *(&v71 + 1) = v63 | (Temp << 48);
      (*(a4 + 256))(a4, &v71);
    }

    *(a4 + 250) = 1;
  }

  if (*(a4 + 280) & 1) != 0 || (v68 = **(*a4 + 104)) != 0 && (*(v68 + 24) |= 0x4000uLL, (*(a4 + 280)))
  {
    gleFStateProgram_GenerateMetadata(a1, a4, v40, v38, v35, v31);
  }

  return gleLLVMFinishMain(a3, *(a4 + 242), v31);
}

void glpFragmentStateToLLVMIR(uint64_t *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  *&v20[12] = 0u;
  v21 = 0u;
  v6 = 0u;
  v7 = 0;
  *&v20[14] = -1;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  v8 = v4;
  DWORD2(v23) = 1;
  v5 = LLVMContextCreate();
  gleFragmentStateToModule(a1, v5, v24, &v6);
  createBitCodeStorage();
}

unint64_t *gleFStateProgram_AllocateAttribs(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x20000) != 0)
  {
    if ((v2 & 0x40) != 0)
    {
      v10 = *(a2 + 240);
      *(a2 + 32) = v10;
      *(a2 + 4 * v10 + 22) = 3;
      *(a2 + 240) = v10 + 1;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    v12 = 0;
    v13 = (a2 + 36);
    do
    {
      if ((*result >> 8 >> v11))
      {
        v14 = *(a2 + 240);
        *v13 = v14;
        *(a2 + 20 + 4 * v14 + 2) = v11 + 4;
        *(a2 + 240) = v14 + 1;
        ++v12;
      }

      ++v11;
      v13 += 2;
    }

    while (v11 != 8);
    v5 = 0;
  }

  else if ((v2 & 0x40000) != 0)
  {
    if ((v2 & 0x400) != 0)
    {
      v18 = *(a2 + 240);
      *(a2 + 24) = v18;
      v5 = 1;
      *(a2 + 20 + 4 * v18 + 2) = 1;
      v19 = v18 + 1;
      *(a2 + 240) = v18 + 1;
      v2 = *result;
      if ((*result & 0x1000000) != 0)
      {
        *(a2 + 76) = v19;
        *(a2 + 20 + 4 * v19 + 2) = 14;
        *(a2 + 240) = v18 + 2;
        v2 = *result;
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }

    if ((v2 & 0x300) != 0)
    {
      v20 = *(a2 + 240);
      *(a2 + 36) = v20;
      *(a2 + 4 * v20 + 22) = 4;
      *(a2 + 240) = v20 + 1;
      v2 = *result;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    v9 = 0;
    if ((v2 & 0x1800) != 0)
    {
      v21 = *(a2 + 240);
      *(a2 + 40) = v21;
      *(a2 + 4 * v21 + 22) = 5;
      *(a2 + 240) = v21 + 1;
      ++v12;
    }
  }

  else if ((v2 & 0x80000) != 0)
  {
    v15 = *(a2 + 240);
    v16 = a2 + 20;
    *(a2 + 24) = v15;
    v5 = 1;
    *(a2 + 20 + 4 * v15 + 2) = 1;
    v17 = v15 + 1;
    *(a2 + 240) = v15 + 1;
    if (*(result + 3))
    {
      *(a2 + 76) = v17;
      *(v16 + 4 * v17 + 2) = 14;
      v17 = v15 + 2;
      v5 = 2;
    }

    v9 = 0;
    *(a2 + 36) = v17;
    *(v16 + 4 * v17 + 2) = 4;
    *(a2 + 240) = v17 + 1;
    v12 = 1;
  }

  else
  {
    v3 = *(a2 + 240);
    v4 = a2 + 20;
    *(a2 + 24) = v3;
    v5 = 1;
    *(a2 + 20 + 4 * v3 + 2) = 1;
    v6 = v3 + 1;
    *(a2 + 240) = v3 + 1;
    v7 = *result;
    if ((*result & 0x1000000) != 0)
    {
      *(a2 + 76) = v6;
      *(v4 + 4 * v6 + 2) = 14;
      v6 = v3 + 2;
      *(a2 + 240) = v3 + 2;
      v7 = *result;
      v5 = 2;
    }

    if ((v7 & 8) != 0)
    {
      *(a2 + 28) = v6;
      *(v4 + 4 * v6 + 2) = 2;
      v8 = v6 + 1;
      *(a2 + 240) = v6 + 1;
      v7 = *result;
      if ((*result & 0x1000000) != 0)
      {
        *(a2 + 80) = v8;
        *(v4 + 4 * v8 + 2) = 15;
        v8 = v6 + 2;
        *(a2 + 240) = v6 + 2;
        v5 += 2;
        v7 = *result;
      }

      else
      {
        ++v5;
      }
    }

    else
    {
      v8 = v6;
    }

    v22 = BYTE1(v2);
    if ((v7 & 0x40) != 0)
    {
      *(a2 + 32) = v8;
      *(v4 + 4 * v8++ + 2) = 3;
      *(a2 + 240) = v8;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v12 = 0;
    if (v22)
    {
      v23 = (a2 + 36);
      v24 = 4;
      do
      {
        if (v22)
        {
          *v23 = v8;
          *(v4 + 4 * v8++ + 2) = v24;
          *(a2 + 240) = v8;
          ++v12;
        }

        ++v24;
        v23 += 2;
        v25 = v22 > 1;
        v22 >>= 1;
      }

      while (v25);
    }

    if ((*(a2 + 280) & 1) != 0 && *(a2 + 252))
    {
      *(a2 + 72) = v8;
      *(v4 + 4 * v8 + 2) = 13;
      *(a2 + 240) = v8 + 1;
    }
  }

  v26 = *(a2 + 280);
  if (v26)
  {
    v27 = *(result + 1);
    if (*(result + 1))
    {
      v28 = 0;
      do
      {
        if ((v27 & 1) != 0 && ((1 << v28) & *(*(a2 + 264) + 4)) != 0)
        {
          v29 = *(a2 + 240);
          *(a2 + 68) = v29;
          *(a2 + 20 + 4 * v29 + 2) = 12;
          *(a2 + 240) = v29 + 1;
        }

        ++v28;
        v25 = v27 > 1;
        v27 >>= 1;
      }

      while (v25);
      v26 = *(a2 + 280);
    }
  }

  if ((v26 & 1) == 0)
  {
    return gleLLVMCreateVaryingsMetaData(*(a2 + 8), "graphics.fragmentInputs", v5, v9, v12, (*result >> 25) & 1, (*result & 1) == 0);
  }

  return result;
}

uint64_t gleFStateProgram_Core(uint64_t result, uint64_t *a2)
{
  v296 = result;
  v3 = *result;
  if ((*result & 0x20000) != 0)
  {
    v203 = 0;
    v204 = a2 + 18;
    do
    {
      if ((*v296 >> 8 >> v203))
      {
        memset(v300 + 8, 0, 72);
        if (*(a2 + 251))
        {
          v205 = 0x3100180000;
        }

        else
        {
          v205 = 0x3100080000;
        }

        *&v300[0] = (8 * (a2[2] & 7)) | v205 | 1;
        *(a2 + 4) = 1;
        v206 = *v204;
        if (v206 == 0xFFFF)
        {
          v207 = *(a2 + 120);
          v206 = *(a2 + 120);
          *v204 = v207;
          *(a2 + 2 * v207 + 11) = v203 + 4;
          *(a2 + 120) = v207 + 1;
        }

        *&v300[1] = (v206 << 48) | 0x19C800;
        *(&v300[0] + 1) = ((gleFStateProgram_GetOutput(a2, v203) << 48) | 0x72679000) + 0x2000;
        result = (a2[32])(a2, v300);
      }

      ++v203;
      v204 += 2;
    }

    while (v203 != 8);
    goto LABEL_453;
  }

  if ((v3 & 0x40000) != 0)
  {
    *(a2 + 248) = 1;
    v208 = *result;
    if ((*result & 0x100) != 0)
    {
      memset(&v300[2], 0, 48);
      v218 = 8 * (a2[2] & 7);
      if (*(a2 + 251))
      {
        v219 = 0x3100188000;
      }

      else
      {
        v219 = 0x3100088000;
      }

      *(a2 + 4) = 2;
      *&v300[0] = v218 | 0x1082 | v219;
      v220 = *(a2 + 18);
      if (v220 == 0xFFFF)
      {
        v221 = *(a2 + 120);
        v220 = *(a2 + 120);
        *(a2 + 18) = v221;
        *(a2 + 2 * v221 + 11) = 4;
        *(a2 + 120) = v221 + 1;
      }

      *&v300[1] = (v220 << 48) | 0x19C800;
      *(&v300[1] + 1) = 2;
      if ((*(result + 1) & 0x10) != 0)
      {
        Temp = gleFStateProgram_GetTemp(a2, 1u);
        v223 = 1919389696;
      }

      else
      {
        Temp = gleFStateProgram_GetOutput(a2, 0);
        v223 = 1919397888;
      }

      *(&v300[0] + 1) = v223 | (Temp << 48);
      result = (a2[32])(a2, v300);
      v208 = *v296;
      if ((*v296 & 0x200) == 0)
      {
LABEL_405:
        if ((v208 & 0x400) == 0)
        {
          goto LABEL_406;
        }

        goto LABEL_437;
      }
    }

    else if ((v208 & 0x200) == 0)
    {
      goto LABEL_405;
    }

    memset(v300 + 8, 0, 72);
    v224 = *(a2 + 4);
    *(a2 + 4) = 2;
    *&v300[0] = (8 * (v224 & 7)) | 0x3100089082;
    v225 = *(a2 + 18);
    if (v225 == 0xFFFF)
    {
      v226 = *(a2 + 120);
      v225 = *(a2 + 120);
      *(a2 + 18) = v226;
      *(a2 + 2 * v226 + 11) = 4;
      *(a2 + 120) = v226 + 1;
    }

    v227 = (v225 << 48) | 0x19C800;
    v228 = 2;
    if ((*v296 & 0x400) == 0)
    {
      v228 = 0x100000002;
    }

    *&v300[1] = v227;
    *(&v300[1] + 1) = v228;
    *(&v300[0] + 1) = ((gleFStateProgram_GetOutput(a2, 8u) << 48) | 0x72679000) + 0x2000;
    result = (a2[32])(a2, v300);
    v208 = *v296;
    if ((*v296 & 0x400) == 0)
    {
LABEL_406:
      if ((v208 & 0x800) == 0)
      {
        goto LABEL_407;
      }

      goto LABEL_442;
    }

LABEL_437:
    memset(v300 + 8, 0, 72);
    v229 = 0x3100080000;
    if (*(a2 + 251))
    {
      v229 = 0x3100180000;
    }

    *&v300[0] = (8 * (a2[2] & 7)) | v229 | 1;
    *(a2 + 4) = 1;
    v230 = *(a2 + 12);
    if (v230 == 0xFFFF)
    {
      v231 = *(a2 + 120);
      v230 = *(a2 + 120);
      *(a2 + 12) = v231;
      *(a2 + 2 * v231 + 11) = 1;
      *(a2 + 120) = v231 + 1;
    }

    *&v300[1] = (v230 << 48) | 0x19C800;
    *(&v300[0] + 1) = ((gleFStateProgram_GetOutput(a2, 0) << 48) | 0x72679000) + 0x2000;
    result = (a2[32])(a2, v300);
    v208 = *v296;
    if ((*v296 & 0x800) == 0)
    {
LABEL_407:
      if ((v208 & 0x1000) == 0)
      {
        goto LABEL_453;
      }

LABEL_447:
      memset(v300 + 8, 0, 72);
      v235 = 0x3100080000;
      if (*(a2 + 251))
      {
        v235 = 0x3100180000;
      }

      *&v300[0] = (8 * (a2[2] & 7)) | 0x882 | v235;
      *(a2 + 4) = 2;
      v236 = *(a2 + 20);
      if (v236 == 0xFFFF)
      {
        v237 = *(a2 + 120);
        v236 = *(a2 + 120);
        *(a2 + 20) = v237;
        *(a2 + 2 * v237 + 11) = 5;
        *(a2 + 120) = v237 + 1;
      }

      *&v300[1] = (v236 << 48) | 0x19C800;
      *(&v300[1] + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
      goto LABEL_452;
    }

LABEL_442:
    memset(v300 + 8, 0, 72);
    v232 = 0x3100080000;
    if (*(a2 + 251))
    {
      v232 = 0x3100180000;
    }

    *&v300[0] = (8 * (a2[2] & 7)) | v232 | 1;
    *(a2 + 4) = 1;
    v233 = *(a2 + 20);
    if (v233 == 0xFFFF)
    {
      v234 = *(a2 + 120);
      v233 = *(a2 + 120);
      *(a2 + 20) = v234;
      *(a2 + 2 * v234 + 11) = 5;
      *(a2 + 120) = v234 + 1;
    }

    *&v300[1] = (v233 << 48) | 0x19C800;
    *(&v300[0] + 1) = ((gleFStateProgram_GetOutput(a2, 0) << 48) | 0x72679000) + 0x2000;
    result = (a2[32])(a2, v300);
    if ((*v296 & 0x1000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_447;
  }

  if ((v3 & 0x80000) != 0)
  {
    *(a2 + 248) = 1;
    memset(&v300[2], 0, 48);
    v209 = 8 * (a2[2] & 7);
    if (*(a2 + 251))
    {
      v210 = 0x3100188000;
    }

    else
    {
      v210 = 0x3100088000;
    }

    *(a2 + 4) = 2;
    *&v300[0] = v209 | 0x1082 | v210;
    v211 = a2 + 20;
    v212 = *(a2 + 18);
    if (v212 == 0xFFFF)
    {
      v213 = *(a2 + 120);
      v212 = *(a2 + 120);
      *(a2 + 18) = v213;
      *&v211[4 * v213 + 2] = 4;
      *(a2 + 120) = v213 + 1;
    }

    *&v300[1] = (v212 << 48) | 0x19C800;
    *(&v300[1] + 1) = 2;
    *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x72679000;
    (a2[32])(a2, v300);
    memset(v300 + 8, 0, 72);
    if (*(a2 + 251))
    {
      v214 = 0x3100180000;
    }

    else
    {
      v214 = 0x3100080000;
    }

    *&v300[0] = (8 * (a2[2] & 7)) | 0x13C1 | v214;
    *(a2 + 4) = 1;
    *&v300[1] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x1FE50;
    *&v300[0] &= ~0x100000000uLL;
    (a2[32])(a2, v300);
    memset(v300 + 8, 0, 72);
    if (*(a2 + 251))
    {
      v215 = 0x3100180000;
    }

    else
    {
      v215 = 0x3100080000;
    }

    *&v300[0] = (8 * (a2[2] & 7)) | v215 | 1;
    *(a2 + 4) = 1;
    v216 = *(a2 + 12);
    if (v216 == 0xFFFF)
    {
      v217 = *(a2 + 120);
      v216 = *(a2 + 120);
      *(a2 + 12) = v217;
      *&v211[4 * v217 + 2] = 1;
      *(a2 + 120) = v217 + 1;
    }

    *&v300[1] = (v216 << 48) | 0x19C800;
LABEL_452:
    *(&v300[0] + 1) = ((gleFStateProgram_GetOutput(a2, 0) << 48) | 0x72679000) + 0x2000;
    result = (a2[32])(a2, v300);
    goto LABEL_453;
  }

  v4 = BYTE1(v3);
  result = gleFStateProgram_GetFirstActiveTexture(BYTE1(v3), result);
  if ((result & 0x80000000) == 0)
  {
    v290 = a2 + 20;
    v5 = result;
    while (1)
    {
      v6 = v4 >> (v5 + 1);
      if ((v4 >> v5))
      {
        break;
      }

LABEL_382:
      ++v5;
      if (!v6)
      {
        goto LABEL_453;
      }
    }

    v7 = &v296[v5];
    v8 = v7[1];
    v9 = (v8 >> 59) & 7;
    v10 = (v8 >> 28) & 7;
    if (v10 == 1)
    {
      v12 = v9 < 4;
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else if (v10 == 3)
    {
      v11 = (v8 & 0x3000000000000000) == 0x1000000000000000 || v9 == 5;
      v12 = v11;
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      if (v6)
      {
        goto LABEL_21;
      }
    }

    if ((*v296 & 0x48) == 0)
    {
      *(a2 + 248) = 1;
      *(a2 + 250) = 0;
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_21:
    if (v12)
    {
LABEL_22:
      if (*(a2 + 248))
      {
        Output = gleFStateProgram_GetOutput(a2, 0);
        v14 = 1919397888;
      }

      else
      {
        Output = gleFStateProgram_GetTemp(a2, 0);
        v14 = 1919389696;
      }

      result = gleStateProgram_TextureSampleOp(v296, a2, v14 | (Output << 48), v5);
LABEL_381:
      *(a2 + 249) = 257;
      goto LABEL_382;
    }

LABEL_27:
    v15 = gleFStateProgram_GetTemp(a2, 1u);
    gleStateProgram_TextureSampleOp(v296, a2, (v15 << 48) | 0x72679000, v5);
    if (v10 != 5)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v19 = &gleStateProgram_ApplyFuncsL;
        }

        else
        {
          v19 = &gleStateProgram_ApplyFuncsA;
        }
      }

      else
      {
        switch(v9)
        {
          case 2:
            v19 = &gleStateProgram_ApplyFuncsLA;
            break;
          case 3:
            v19 = &gleStateProgram_ApplyFuncsI;
            break;
          case 4:
            v19 = &gleStateProgram_ApplyFuncsRGB;
            break;
          default:
            v19 = &gleStateProgram_ApplyFuncsRGBA;
            break;
        }
      }

      result = (v19[v10])(v296, a2, v5);
      goto LABEL_381;
    }

    v16 = 0uLL;
    memset(v300, 0, 80);
    v17 = v7[1];
    v18 = (((v17 >> 50) ^ (v17 >> 21)) & 0xF) != 0 || (((v17 >> 54) ^ (v17 >> 25)) & 3) != 0;
    v20 = v17 & 0x1F;
    if (v20 > 2)
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          Param = gleFStateProgram_GetParam(a2, 19);
          v27 = 128;
          goto LABEL_62;
        }

        if (v20 != 5)
        {
          v29 = v20 - 6;
          v30 = gleFStateProgram_GetTemp(a2, 7u);
          gleStateProgram_TextureSampleOp(v296, a2, (v30 << 48) | 0x72679000, v29);
          Param = gleFStateProgram_GetTemp(a2, 7u);
          v27 = 1689664;
LABEL_62:
          v16 = 0uLL;
          goto LABEL_63;
        }

        v21 = a2;
        v22 = 20;
LABEL_60:
        Param = gleFStateProgram_GetParam(v21, v22);
        v27 = 1689728;
        goto LABEL_62;
      }

      if (!*(a2 + 249))
      {
LABEL_55:
        LODWORD(Param) = *(a2 + 12);
        if (Param == 0xFFFF)
        {
          v28 = *(a2 + 120);
          LODWORD(Param) = *(a2 + 120);
          *(a2 + 12) = v28;
          *&v290[4 * v28 + 2] = 1;
          *(a2 + 120) = v28 + 1;
        }

        Param = Param;
        v27 = 1689600;
LABEL_63:
        v31 = v27 | (Param << 48);
        v32 = (*(v7 + 2) >> 15) & 3;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            goto LABEL_74;
          }

          *&v299[24] = v16;
          *&v299[40] = v16;
          *&v299[8] = v16;
          v35 = 0x3100180000;
          if (!*(a2 + 251))
          {
            v35 = 0x3100080000;
          }

          v297 = (8 * (a2[2] & 7)) | 0x802 | v35;
          *(a2 + 4) = 2;
          *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
          *v299 = v31;
        }

        else
        {
          v33 = (v27 >> 15) & 3;
          v34 = v31 & 0xFFFF0000000180C0 | (v33 << 13) | (v33 << 11);
          if (!v32)
          {
            v31 = v34 | (v33 << 9);
            goto LABEL_74;
          }

          v36 = v34 | (v33 << 9);
          *&v299[24] = v16;
          *&v299[40] = v16;
          *&v299[8] = v16;
          v37 = 0x3100180000;
          if (!*(a2 + 251))
          {
            v37 = 0x3100080000;
          }

          v297 = (8 * (a2[2] & 7)) | 0x802 | v37;
          *(a2 + 4) = 2;
          *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
          *v299 = v36;
        }

        *&v298 = (gleFStateProgram_GetTemp(a2, 2u) << 48) | 0x72679000;
        (a2[32])(a2, &v297);
        v38 = gleFStateProgram_GetTemp(a2, 2u);
        v16 = 0uLL;
        v31 = (v38 << 48) | 0x19C840;
LABEL_74:
        v39 = v7[1];
        v292 = v18;
        if ((v39 & 0x1E00000) == 0xE00000)
        {
          v40 = 0;
          goto LABEL_107;
        }

        v41 = (v39 >> 5) & 0x1F;
        if (v41 > 2)
        {
          if (v41 != 3)
          {
            if (v41 == 4)
            {
              v47 = gleFStateProgram_GetParam(a2, 19);
              v48 = 128;
              goto LABEL_95;
            }

            if (v41 != 5)
            {
              v50 = v41 - 6;
              v51 = gleFStateProgram_GetTemp(a2, 8u);
              gleStateProgram_TextureSampleOp(v296, a2, (v51 << 48) | 0x72679000, v50);
              v47 = gleFStateProgram_GetTemp(a2, 8u);
              v48 = 1689664;
LABEL_95:
              v16 = 0uLL;
              goto LABEL_96;
            }

            v42 = a2;
            v43 = 20;
LABEL_93:
            v47 = gleFStateProgram_GetParam(v42, v43);
            v48 = 1689728;
            goto LABEL_95;
          }

          if (!*(a2 + 249))
          {
LABEL_88:
            LODWORD(v47) = *(a2 + 12);
            if (v47 == 0xFFFF)
            {
              v49 = *(a2 + 120);
              LODWORD(v47) = *(a2 + 120);
              *(a2 + 12) = v49;
              *&v290[4 * v49 + 2] = 1;
              *(a2 + 120) = v49 + 1;
            }

            v47 = v47;
            v48 = 1689600;
LABEL_96:
            v40 = v48 | (v47 << 48);
            v52 = (*(v7 + 2) >> 17) & 3;
            if (v52 > 1)
            {
              if (v52 == 2)
              {
                goto LABEL_107;
              }

              *&v299[48] = 0;
              *&v299[32] = v16;
              *&v299[16] = v16;
              *v299 = v16;
              v298 = v16;
              v55 = 0x3100180000;
              if (!*(a2 + 251))
              {
                v55 = 0x3100080000;
              }

              v297 = (8 * (a2[2] & 7)) | 0x802 | v55;
              *(a2 + 4) = 2;
              *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
              *v299 = v40;
            }

            else
            {
              v53 = (v48 >> 15) & 3;
              v54 = v40 & 0xFFFF0000000180C0 | (v53 << 13) | (v53 << 11);
              if (!v52)
              {
                v40 = v54 | (v53 << 9);
                goto LABEL_107;
              }

              v56 = v54 | (v53 << 9);
              *&v299[48] = 0;
              *&v299[32] = v16;
              *&v299[16] = v16;
              *v299 = v16;
              v298 = v16;
              v57 = 0x3100180000;
              if (!*(a2 + 251))
              {
                v57 = 0x3100080000;
              }

              v297 = (8 * (a2[2] & 7)) | 0x802 | v57;
              *(a2 + 4) = 2;
              *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
              *v299 = v56;
            }

            *&v298 = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x72679000;
            (a2[32])(a2, &v297);
            v58 = gleFStateProgram_GetTemp(a2, 3u);
            v16 = 0uLL;
            v40 = (v58 << 48) | 0x19C840;
LABEL_107:
            v59 = v7[1];
            v60 = (v59 >> 21) & 0xF;
            v294 = v31;
            if (v60 > 4)
            {
              if (v60 - 8 < 3)
              {
                v60 = 1;
                goto LABEL_114;
              }

              if (v60 != 5)
              {
                if (v60 == 6)
                {
                  v62 = 0;
                  v293 = 0;
                  v60 = 1;
                  goto LABEL_168;
                }

                goto LABEL_132;
              }
            }

            else if (v60 - 1 >= 3)
            {
              if (v60)
              {
                v11 = v60 == 4;
                v60 = 0;
                if (!v11)
                {
LABEL_132:
                  if (v292 || ((BYTE4(v59) ^ v59) & 0x1F) != 0)
                  {
                    v62 = 0;
                    v60 = 0;
                    goto LABEL_166;
                  }

                  v158 = (v59 >> 15) & 3;
                  v159 = (v59 >> 47) & 1;
                  if (v158 == v159)
                  {
                    v62 = 0;
                    v293 = 0;
                    v60 = 0;
                    goto LABEL_168;
                  }

                  v62 = 0;
                  v60 = 0;
LABEL_390:
                  v91 = v158 != (v159 | 2);
                  goto LABEL_167;
                }

LABEL_114:
                v61 = (v59 >> 10) & 0x1F;
                if (v61 > 2)
                {
                  if (v61 != 3)
                  {
                    if (v61 == 4)
                    {
                      v70 = gleFStateProgram_GetParam(a2, 19);
                      v71 = 128;
                      goto LABEL_146;
                    }

                    if (v61 != 5)
                    {
                      v73 = v40;
                      v74 = v60;
                      v75 = v61 - 6;
                      v76 = gleFStateProgram_GetTemp(a2, 9u);
                      v77 = v75;
                      v60 = v74;
                      v40 = v73;
                      gleStateProgram_TextureSampleOp(v296, a2, (v76 << 48) | 0x72679000, v77);
                      v70 = gleFStateProgram_GetTemp(a2, 9u);
                      v71 = 1689664;
LABEL_146:
                      v16 = 0uLL;
                      goto LABEL_147;
                    }

                    v65 = a2;
                    v66 = 20;
LABEL_144:
                    v70 = gleFStateProgram_GetParam(v65, v66);
                    v71 = 1689728;
                    goto LABEL_146;
                  }

                  if (!*(a2 + 249))
                  {
LABEL_139:
                    LODWORD(v70) = *(a2 + 12);
                    if (v70 == 0xFFFF)
                    {
                      v72 = *(a2 + 120);
                      LODWORD(v70) = *(a2 + 120);
                      *(a2 + 12) = v72;
                      *&v290[4 * v72 + 2] = 1;
                      *(a2 + 120) = v72 + 1;
                    }

                    v70 = v70;
                    v71 = 1689600;
LABEL_147:
                    v62 = v71 | (v70 << 48);
                    v78 = (*(v7 + 2) >> 19) & 3;
                    if (v78 > 1)
                    {
                      if (v78 == 2)
                      {
                        goto LABEL_158;
                      }

                      *&v299[48] = 0;
                      *&v299[32] = v16;
                      *&v299[16] = v16;
                      *v299 = v16;
                      v298 = v16;
                      v81 = 0x3100180000;
                      if (!*(a2 + 251))
                      {
                        v81 = 0x3100080000;
                      }

                      v297 = (8 * (a2[2] & 7)) | 0x802 | v81;
                      *(a2 + 4) = 2;
                      *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                      *v299 = v62;
                    }

                    else
                    {
                      v79 = (v71 >> 15) & 3;
                      v80 = v62 & 0xFFFF0000000180C0 | (v79 << 13) | (v79 << 11);
                      if (!v78)
                      {
                        v62 = v80 | (v79 << 9);
                        goto LABEL_158;
                      }

                      v82 = v40;
                      v83 = v60;
                      v84 = v80 | (v79 << 9);
                      *&v299[48] = 0;
                      *&v299[32] = v16;
                      *&v299[16] = v16;
                      *v299 = v16;
                      v298 = v16;
                      v85 = 0x3100180000;
                      if (!*(a2 + 251))
                      {
                        v85 = 0x3100080000;
                      }

                      v297 = (8 * (a2[2] & 7)) | 0x802 | v85;
                      *(a2 + 4) = 2;
                      *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                      *v299 = v84;
                      v60 = v83;
                      v40 = v82;
                    }

                    *&v298 = (gleFStateProgram_GetTemp(a2, 4u) << 48) | 0x72679000;
                    (a2[32])(a2, &v297);
                    v86 = gleFStateProgram_GetTemp(a2, 4u);
                    v16 = 0uLL;
                    v62 = (v86 << 48) | 0x19C840;
LABEL_158:
                    v59 = v7[1];
                    if (v292)
                    {
                      goto LABEL_166;
                    }

                    if (((BYTE4(v59) ^ v59) & 0x1F) != 0)
                    {
                      goto LABEL_166;
                    }

                    if ((((v59 >> 37) ^ (v59 >> 5)) & 0x1F) != 0)
                    {
                      goto LABEL_166;
                    }

                    if ((((v59 >> 42) ^ (v59 >> 10)) & 0x1F) != 0)
                    {
                      goto LABEL_166;
                    }

                    v87 = (v59 >> 15) & 3;
                    v88 = (v59 >> 47) & 1;
                    if (v87 != v88 && v87 != (v88 | 2))
                    {
                      goto LABEL_166;
                    }

                    v89 = (v59 >> 17) & 3;
                    v90 = HIWORD(v59) & 1;
                    if (v89 != v90 && v89 != (v90 | 2))
                    {
                      goto LABEL_166;
                    }

                    v158 = (v59 >> 19) & 3;
                    v159 = (v59 >> 49) & 1;
                    if (v158 != v159)
                    {
                      goto LABEL_390;
                    }

LABEL_287:
                    v293 = 0;
LABEL_168:
                    v92 = (v59 >> 21) & 0xF;
                    if (v92 <= 4)
                    {
                      if (v92 <= 1)
                      {
                        if (v92)
                        {
                          *(&v300[4] + 1) = 0;
                          *(&v300[3] + 8) = v16;
                          *(&v300[2] + 8) = v16;
                          *(&v300[1] + 8) = v16;
                          *(v300 + 8) = v16;
                          v101 = 8 * (a2[2] & 7);
                          v102 = 0x3100180000;
                          if (!*(a2 + 251))
                          {
                            v102 = 0x3100080000;
                          }

                          v103 = 1986;
                        }

                        else
                        {
                          *(&v300[4] + 1) = 0;
                          *(&v300[3] + 8) = v16;
                          *(&v300[2] + 8) = v16;
                          *(&v300[1] + 8) = v16;
                          *(v300 + 8) = v16;
                          v101 = 8 * (a2[2] & 7);
                          v102 = 0x3100180000;
                          if (!*(a2 + 251))
                          {
                            v102 = 0x3100080000;
                          }

                          v103 = 2178;
                        }
                      }

                      else
                      {
                        if (v92 != 2)
                        {
                          if (v92 != 3)
                          {
                            *(&v300[4] + 1) = 0;
                            *(&v300[3] + 8) = v16;
                            *(&v300[2] + 8) = v16;
                            *(&v300[1] + 8) = v16;
                            *(v300 + 8) = v16;
                            v93 = 0x3100180000;
                            if (!*(a2 + 251))
                            {
                              v93 = 0x3100080000;
                            }

                            v94 = (8 * (a2[2] & 7)) | 0xF03 | v93;
                            *(a2 + 4) = 3;
                            *&v300[0] = v94;
                            *&v300[1] = v62;
                            *(&v300[1] + 1) = v294;
LABEL_195:
                            *&v300[2] = v40;
                            goto LABEL_217;
                          }

                          *(&v300[4] + 1) = 0;
                          *(&v300[3] + 8) = v16;
                          *(&v300[2] + 8) = v16;
                          *(&v300[1] + 8) = v16;
                          *(v300 + 8) = v16;
                          v113 = 0x3100080000;
                          if (*(a2 + 251))
                          {
                            v113 = 0x3100180000;
                          }

                          v114 = (8 * (a2[2] & 7)) | 0x7C2 | v113;
                          *(a2 + 4) = 2;
                          *&v300[0] = v114;
                          *&v300[1] = v294;
                          *(&v300[1] + 1) = v40;
                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x72679000;
                          (a2[32])(a2, v300);
                          memset(v300 + 8, 0, 72);
                          v115 = 0x3100180000;
                          if (!*(a2 + 251))
                          {
                            v115 = 0x3100080000;
                          }

                          *&v300[0] = (8 * (a2[2] & 7)) | 0x802 | v115;
                          *(a2 + 4) = 2;
                          *&v300[1] = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x19C840;
                          *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0xAA80;
LABEL_217:
                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x72679000;
                          (a2[32])(a2, v300);
                          v118 = (*(v7 + 2) >> 25) & 3;
                          v119 = 0uLL;
                          if (v118 != 1)
                          {
                            if (v118 == 2 && gEnablePrecision)
                            {
                              v120 = *a2;
                              *(v300 + 8) = 0uLL;
                              *(&v300[1] + 8) = 0uLL;
                              *(&v300[2] + 8) = 0uLL;
                              *(&v300[3] + 8) = 0uLL;
                              *(&v300[4] + 1) = 0;
                              v121 = 0x3100180000;
                              if (!*(a2 + 251))
                              {
                                v121 = 0x3100080000;
                              }

                              v122 = (8 * (a2[2] & 7)) | 0x882 | v121;
                              if (v120)
                              {
                                *(a2 + 4) = 2;
                                *&v300[0] = v122 & 0x31000808BALL;
                                v123 = a2;
                                v124 = 21;
                              }

                              else
                              {
                                *&v300[0] = (8 * (a2[2] & 7)) | 0x882 | v121;
                                *(a2 + 4) = 2;
                                v123 = a2;
                                v124 = 19;
                              }

                              v127 = (gleFStateProgram_GetParam(v123, v124) << 48) | 0x15480;
                            }

                            else
                            {
                              if (v118 == 2)
                              {
                                v125 = 2;
                              }

                              else
                              {
                                v125 = 3;
                              }

                              *(&v300[4] + 1) = 0;
                              *(&v300[3] + 8) = 0uLL;
                              *(&v300[2] + 8) = 0uLL;
                              *(&v300[1] + 8) = 0uLL;
                              *(v300 + 8) = 0uLL;
                              v126 = 0x3100180000;
                              if (!*(a2 + 251))
                              {
                                v126 = 0x3100080000;
                              }

                              *&v300[0] = (8 * (a2[2] & 7)) | 0x882 | v126;
                              *(a2 + 4) = 2;
                              v127 = (gleFStateProgram_GetParam(a2, 19) << 48) | (v125 << 9) | (v125 << 11) | (v125 << 13) | (v125 << 15) | 0x80;
                            }

                            *(&v300[1] + 1) = v127;
                            *&v300[1] = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x19C840;
                            *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x72679000;
                            (a2[32])(a2, v300);
                            v60 = 1;
                            v119 = 0uLL;
                          }

                          if (!v293)
                          {
                            v129 = v60;
LABEL_372:
                            *(&v300[4] + 1) = 0;
                            *(&v300[3] + 8) = v119;
                            *(&v300[2] + 8) = v119;
                            *(&v300[1] + 8) = v119;
                            *(v300 + 8) = v119;
                            v197 = 1572864;
                            if (!*(a2 + 251))
                            {
                              v197 = 0x80000;
                            }

                            v198 = v197 & 0xFFFFFFFFFFFFFFC7 | (8 * (a2[2] & 7));
                            *&v300[0] = v198 | 0x3100000001;
                            *(a2 + 4) = 1;
                            if ((*v296 & 0x10) != 0 && v129)
                            {
                              *&v300[0] = v198 | 0x83100000001;
                            }

                            *&v300[1] = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x19C840;
                            if (*(a2 + 248))
                            {
                              v199 = gleFStateProgram_GetOutput(a2, 0);
                              v200 = 1919397888;
                            }

                            else
                            {
                              v199 = gleFStateProgram_GetTemp(a2, 0);
                              v200 = 1919389696;
                            }

                            *(&v300[0] + 1) = v200 | (v199 << 48);
                            result = (a2[32])(a2, v300);
                            goto LABEL_381;
                          }

                          v128 = *(v7 + 3) & 0x1F;
                          v291 = v40;
                          v129 = v60;
                          if (v128 > 2)
                          {
                            if (v128 == 3)
                            {
                              if (*(a2 + 249))
                              {
                                v135 = gleFStateProgram_GetTemp(a2, 0);
                                v119 = 0uLL;
                                v136 = (v135 << 48) | 0x40;
                              }

                              else
                              {
                                v140 = *(a2 + 12);
                                if (v140 == 0xFFFF)
                                {
                                  v141 = *(a2 + 120);
                                  v140 = *(a2 + 120);
                                  *(a2 + 12) = v141;
                                  *&v290[4 * v141 + 2] = 1;
                                  *(a2 + 120) = v141 + 1;
                                }

                                v136 = v140 << 48;
                              }

                              v132 = v136 | 0x1FE00;
                              goto LABEL_258;
                            }

                            if (v128 != 4)
                            {
                              if (v128 == 5)
                              {
                                v133 = ((gleFStateProgram_GetParam(a2, 20) << 48) | 0x19C840) + 64;
                              }

                              else
                              {
                                v137 = v128 - 6;
                                v138 = gleFStateProgram_GetTemp(a2, 7u);
                                gleStateProgram_TextureSampleOp(v296, a2, (v138 << 48) | 0x72679000, v137);
                                v133 = (gleFStateProgram_GetTemp(a2, 7u) << 48) | 0x1FE40;
                              }

                              v295 = v133;
                              goto LABEL_253;
                            }

                            v139 = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                          }

                          else
                          {
                            if (!v128)
                            {
                              v134 = gleFStateProgram_GetTemp(a2, 1u);
                              v119 = 0uLL;
                              v295 = (v134 << 48) | 0x1FE40;
                              goto LABEL_259;
                            }

                            if (v128 != 1)
                            {
                              v130 = *(a2 + 12);
                              if (v130 == 0xFFFF)
                              {
                                v131 = *(a2 + 120);
                                v130 = *(a2 + 120);
                                *(a2 + 12) = v131;
                                *&v290[4 * v131 + 2] = 1;
                                *(a2 + 120) = v131 + 1;
                              }

                              v132 = (v130 << 48) | 0x1FE00;
LABEL_258:
                              v295 = v132;
LABEL_259:
                              v142 = v7[1];
                              if ((v142 & 0x800000000000) != 0)
                              {
                                *&v299[48] = 0;
                                *&v299[32] = v119;
                                *&v299[16] = v119;
                                *v299 = v119;
                                v298 = v119;
                                v143 = 0x3100180000;
                                if (!*(a2 + 251))
                                {
                                  v143 = 0x3100080000;
                                }

                                v297 = (8 * (a2[2] & 7)) | 0x802 | v143;
                                *(a2 + 4) = 2;
                                *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                                *v299 = v295;
                                *&v298 = (gleFStateProgram_GetTemp(a2, 2u) << 48) | 0x72679000;
                                (a2[32])(a2, &v297);
                                v144 = gleFStateProgram_GetTemp(a2, 2u);
                                v119 = 0uLL;
                                v295 = (v144 << 48) | 0x19C840;
                                v142 = v7[1];
                              }

                              if ((v142 & 0x3C000000000000) == 0x1C000000000000)
                              {
LABEL_297:
                                v164 = (v142 >> 50) & 0xF;
                                if ((v164 - 1) < 3)
                                {
                                  v129 = 1;
                                  goto LABEL_325;
                                }

                                if ((v164 - 8) >= 3)
                                {
                                  if (v164 != 4)
                                  {
                                    goto LABEL_325;
                                  }
                                }

                                else
                                {
                                  v129 = 1;
                                }

                                v165 = (v142 >> 42) & 0x1F;
                                if (v165 <= 2)
                                {
                                  if (!v165)
                                  {
                                    v169 = gleFStateProgram_GetTemp(a2, 1u);
                                    v119 = 0uLL;
                                    v62 = (v169 << 48) | 0x1FE40;
                                    goto LABEL_321;
                                  }

                                  if (v165 != 1)
                                  {
                                    v166 = *(a2 + 12);
                                    if (v166 == 0xFFFF)
                                    {
                                      v167 = *(a2 + 120);
                                      v166 = *(a2 + 120);
                                      *(a2 + 12) = v167;
                                      *&v290[4 * v167 + 2] = 1;
                                      *(a2 + 120) = v167 + 1;
                                    }

                                    v62 = (v166 << 48) | 0x1FE00;
                                    goto LABEL_321;
                                  }

                                  v168 = (gleFStateProgram_GetParam(a2, v5) << 48) | 0x1FE40;
                                  goto LABEL_317;
                                }

                                switch(v165)
                                {
                                  case 3:
                                    if (*(a2 + 249))
                                    {
                                      v170 = gleFStateProgram_GetTemp(a2, 0);
                                      v119 = 0uLL;
                                      v171 = (v170 << 48) | 0x40;
                                    }

                                    else
                                    {
                                      v201 = *(a2 + 12);
                                      if (v201 == 0xFFFF)
                                      {
                                        v202 = *(a2 + 120);
                                        v201 = *(a2 + 120);
                                        *(a2 + 12) = v202;
                                        *&v290[4 * v202 + 2] = 1;
                                        *(a2 + 120) = v202 + 1;
                                      }

                                      v171 = v201 << 48;
                                    }

                                    v62 = v171 | 0x1FE00;
                                    goto LABEL_321;
                                  case 4:
                                    v174 = gleFStateProgram_GetParam(a2, 19);
                                    v175 = 128;
                                    break;
                                  case 5:
                                    v168 = (gleFStateProgram_GetParam(a2, 20) << 48) | 0x19C840;
LABEL_317:
                                    v62 = v168 + 64;
LABEL_320:
                                    v119 = 0uLL;
LABEL_321:
                                    v142 = v7[1];
                                    if ((v142 & 0x2000000000000) != 0)
                                    {
                                      *&v299[24] = v119;
                                      *&v299[40] = v119;
                                      *&v299[8] = v119;
                                      v176 = 0x3100180000;
                                      if (!*(a2 + 251))
                                      {
                                        v176 = 0x3100080000;
                                      }

                                      v297 = (8 * (a2[2] & 7)) | 0x802 | v176;
                                      *(a2 + 4) = 2;
                                      *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                                      *v299 = v62;
                                      *&v298 = (gleFStateProgram_GetTemp(a2, 4u) << 48) | 0x72679000;
                                      (a2[32])(a2, &v297);
                                      v177 = gleFStateProgram_GetTemp(a2, 4u);
                                      v119 = 0uLL;
                                      v62 = (v177 << 48) | 0x19C840;
                                      v142 = v7[1];
                                    }

LABEL_325:
                                    v178 = (v142 >> 50) & 0xF;
                                    *(&v300[4] + 1) = 0;
                                    *(&v300[3] + 8) = v119;
                                    *(&v300[2] + 8) = v119;
                                    *(&v300[1] + 8) = v119;
                                    *(v300 + 8) = v119;
                                    v179 = 8 * (a2[2] & 7);
                                    v180 = 0x3100180000;
                                    if (!*(a2 + 251))
                                    {
                                      v180 = 0x3100080000;
                                    }

                                    if (v178 <= 3)
                                    {
                                      if (v178 > 1)
                                      {
                                        if (v178 != 2)
                                        {
                                          *(a2 + 4) = 2;
                                          *&v300[0] = v180 | v179 | 0x7C2;
                                          *&v300[1] = v295;
                                          *(&v300[1] + 1) = v291;
                                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x72679000;
                                          (a2[32])(a2, v300);
                                          memset(v300 + 8, 0, 72);
                                          v182 = 0x3100180000;
                                          if (!*(a2 + 251))
                                          {
                                            v182 = 0x3100080000;
                                          }

                                          *&v300[0] = (8 * (a2[2] & 7)) | 0x802 | v182;
                                          *(a2 + 4) = 2;
                                          *&v300[1] = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x19C840;
                                          *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0xAA80;
                                          goto LABEL_352;
                                        }

                                        v181 = 2050;
                                      }

                                      else
                                      {
                                        if (!v178)
                                        {
                                          v180 |= v179;
                                          *(a2 + 4) = 2;
                                          v184 = 2178;
LABEL_347:
                                          *&v300[0] = v180 | v184;
                                          *&v300[1] = v295;
                                          *(&v300[1] + 1) = v291;
LABEL_352:
                                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x72679000;
                                          (a2[32])(a2, v300);
                                          v187 = (v7[1] >> 54) & 3;
                                          if (v187 != 1)
                                          {
                                            if (v187 == 2 && gEnablePrecision)
                                            {
                                              v188 = *a2;
                                              *(v300 + 8) = 0uLL;
                                              *(&v300[1] + 8) = 0uLL;
                                              *(&v300[2] + 8) = 0uLL;
                                              *(&v300[3] + 8) = 0uLL;
                                              *(&v300[4] + 1) = 0;
                                              v189 = 0x3100180000;
                                              if (!*(a2 + 251))
                                              {
                                                v189 = 0x3100080000;
                                              }

                                              v190 = (8 * (a2[2] & 7)) | 0x882 | v189;
                                              if (v188)
                                              {
                                                *(a2 + 4) = 2;
                                                *&v300[0] = v190 & 0x31000808BALL;
                                                v191 = a2;
                                                v192 = 21;
                                              }

                                              else
                                              {
                                                *&v300[0] = (8 * (a2[2] & 7)) | 0x882 | v189;
                                                *(a2 + 4) = 2;
                                                v191 = a2;
                                                v192 = 19;
                                              }

                                              v195 = (gleFStateProgram_GetParam(v191, v192) << 48) | 0x15480;
                                            }

                                            else
                                            {
                                              if (v187 == 2)
                                              {
                                                v193 = 2;
                                              }

                                              else
                                              {
                                                v193 = 3;
                                              }

                                              *(&v300[4] + 1) = 0;
                                              *(&v300[3] + 8) = 0uLL;
                                              *(&v300[2] + 8) = 0uLL;
                                              *(&v300[1] + 8) = 0uLL;
                                              *(v300 + 8) = 0uLL;
                                              v194 = 0x3100180000;
                                              if (!*(a2 + 251))
                                              {
                                                v194 = 0x3100080000;
                                              }

                                              *&v300[0] = (8 * (a2[2] & 7)) | 0x882 | v194;
                                              *(a2 + 4) = 2;
                                              v195 = (gleFStateProgram_GetParam(a2, 19) << 48) | (v193 << 9) | (v193 << 11) | (v193 << 13) | (v193 << 15) | 0x80;
                                            }

                                            *(&v300[1] + 1) = v195;
                                            *&v300[1] = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x19C840;
                                            *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x72679000;
                                            (a2[32])(a2, v300);
                                            v129 = 1;
                                          }

                                          memset(v300 + 8, 0, 72);
                                          v196 = 0x3100180000;
                                          if (!*(a2 + 251))
                                          {
                                            v196 = 0x3100080000;
                                          }

                                          *&v300[0] = (8 * (a2[2] & 7)) | v196 | 1;
                                          *(a2 + 4) = 1;
                                          *&v300[1] = (gleFStateProgram_GetTemp(a2, 5u) << 48) | 0x19C840;
                                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 6u) << 48) | 0x72609000;
                                          (a2[32])(a2, v300);
                                          v119 = 0uLL;
                                          goto LABEL_372;
                                        }

                                        v181 = 1986;
                                      }

                                      v184 = (8 * (a2[2] & 7)) | v181;
                                      *(a2 + 4) = 2;
                                      goto LABEL_347;
                                    }

                                    if (v178 > 8)
                                    {
                                      if (v178 == 9)
                                      {
                                        *(a2 + 4) = 2;
                                        *&v300[0] = v180 | v179 | 0x802;
                                        *&v300[1] = v291;
                                        *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0xAA80;
                                        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x72679000;
                                        (a2[32])(a2, v300);
                                        memset(v300 + 8, 0, 72);
                                        v185 = 0x3100180000;
                                        if (!*(a2 + 251))
                                        {
                                          v185 = 0x3100080000;
                                        }

                                        v186 = (8 * (a2[2] & 7)) | 0xFC3 | v185;
                                        *(a2 + 4) = 3;
                                        *&v300[0] = v186;
                                        *&v300[1] = v295;
                                        *(&v300[1] + 1) = v62;
                                        v183 = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x19C840;
                                        goto LABEL_351;
                                      }

                                      if (v178 == 10)
                                      {
                                        *(a2 + 4) = 3;
                                        *&v300[0] = v180 | v179 | 0xFC3;
                                        *&v300[1] = v295;
                                        *(&v300[1] + 1) = v62;
                                        v183 = v291 | 0x10;
LABEL_351:
                                        *&v300[2] = v183;
                                        goto LABEL_352;
                                      }
                                    }

                                    else
                                    {
                                      if (v178 == 4)
                                      {
                                        *(a2 + 4) = 3;
                                        *&v300[0] = v180 | v179 | 0xF03;
                                        *&v300[1] = v62;
                                        *(&v300[1] + 1) = v295;
                                        goto LABEL_344;
                                      }

                                      if (v178 == 8)
                                      {
                                        *(a2 + 4) = 3;
                                        *&v300[0] = v180 | v179 | 0xFC3;
                                        *&v300[1] = v295;
                                        *(&v300[1] + 1) = v62;
LABEL_344:
                                        v183 = v291;
                                        goto LABEL_351;
                                      }
                                    }

                                    *(a2 + 4) = 1;
                                    *&v300[0] = v180 | v179 | 1;
                                    *&v300[1] = v295;
                                    goto LABEL_352;
                                  default:
                                    v172 = v165 - 6;
                                    v173 = gleFStateProgram_GetTemp(a2, 9u);
                                    gleStateProgram_TextureSampleOp(v296, a2, (v173 << 48) | 0x72679000, v172);
                                    v174 = gleFStateProgram_GetTemp(a2, 9u);
                                    v175 = 130624;
                                    break;
                                }

                                v62 = v175 | (v174 << 48);
                                goto LABEL_320;
                              }

                              v145 = (v142 >> 37) & 0x1F;
                              if (v145 <= 2)
                              {
                                if (!v145)
                                {
                                  v150 = gleFStateProgram_GetTemp(a2, 1u);
                                  v119 = 0uLL;
                                  v148 = (v150 << 48) | 0x1FE40;
LABEL_292:
                                  v291 = v148;
LABEL_293:
                                  v142 = v7[1];
                                  if ((v142 & 0x1000000000000) != 0)
                                  {
                                    *&v299[48] = 0;
                                    *&v299[32] = v119;
                                    *&v299[16] = v119;
                                    *v299 = v119;
                                    v298 = v119;
                                    v162 = 0x3100180000;
                                    if (!*(a2 + 251))
                                    {
                                      v162 = 0x3100080000;
                                    }

                                    v297 = (8 * (a2[2] & 7)) | 0x802 | v162;
                                    *(a2 + 4) = 2;
                                    *(&v298 + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0x80;
                                    *v299 = v291;
                                    *&v298 = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x72679000;
                                    (a2[32])(a2, &v297);
                                    v163 = gleFStateProgram_GetTemp(a2, 3u);
                                    v119 = 0uLL;
                                    v291 = (v163 << 48) | 0x19C840;
                                    v142 = v7[1];
                                  }

                                  goto LABEL_297;
                                }

                                if (v145 != 1)
                                {
                                  v146 = *(a2 + 12);
                                  if (v146 == 0xFFFF)
                                  {
                                    v147 = *(a2 + 120);
                                    v146 = *(a2 + 120);
                                    *(a2 + 12) = v147;
                                    *&v290[4 * v147 + 2] = 1;
                                    *(a2 + 120) = v147 + 1;
                                  }

                                  v148 = (v146 << 48) | 0x1FE00;
                                  goto LABEL_292;
                                }

                                v149 = (gleFStateProgram_GetParam(a2, v5) << 48) | 0x1FE40;
                                goto LABEL_279;
                              }

                              switch(v145)
                              {
                                case 3:
                                  if (*(a2 + 249))
                                  {
                                    v151 = gleFStateProgram_GetTemp(a2, 0);
                                    v119 = 0uLL;
                                    v152 = (v151 << 48) | 0x40;
                                  }

                                  else
                                  {
                                    v160 = *(a2 + 12);
                                    if (v160 == 0xFFFF)
                                    {
                                      v161 = *(a2 + 120);
                                      v160 = *(a2 + 120);
                                      *(a2 + 12) = v161;
                                      *&v290[4 * v161 + 2] = 1;
                                      *(a2 + 120) = v161 + 1;
                                    }

                                    v152 = v160 << 48;
                                  }

                                  v148 = v152 | 0x1FE00;
                                  goto LABEL_292;
                                case 4:
                                  v155 = gleFStateProgram_GetParam(a2, 19);
                                  v156 = 128;
                                  break;
                                case 5:
                                  v149 = (gleFStateProgram_GetParam(a2, 20) << 48) | 0x19C840;
LABEL_279:
                                  v157 = v149 + 64;
LABEL_282:
                                  v291 = v157;
                                  v119 = 0uLL;
                                  goto LABEL_293;
                                default:
                                  v153 = v145 - 6;
                                  v154 = gleFStateProgram_GetTemp(a2, 8u);
                                  gleStateProgram_TextureSampleOp(v296, a2, (v154 << 48) | 0x72679000, v153);
                                  v155 = gleFStateProgram_GetTemp(a2, 8u);
                                  v156 = 130624;
                                  break;
                              }

                              v157 = v156 | (v155 << 48);
                              goto LABEL_282;
                            }

                            v139 = ((gleFStateProgram_GetParam(a2, v5) << 48) | 0x1FE40) + 64;
                          }

                          v295 = v139;
LABEL_253:
                          v119 = 0uLL;
                          goto LABEL_259;
                        }

                        *(&v300[4] + 1) = 0;
                        *(&v300[3] + 8) = v16;
                        *(&v300[2] + 8) = v16;
                        *(&v300[1] + 8) = v16;
                        *(v300 + 8) = v16;
                        v101 = 8 * (a2[2] & 7);
                        v102 = 0x3100180000;
                        if (!*(a2 + 251))
                        {
                          v102 = 0x3100080000;
                        }

                        v103 = 2050;
                      }

                      *(a2 + 4) = 2;
                      *&v300[0] = v101 | v103 | v102;
                      *&v300[1] = v294;
                      *(&v300[1] + 1) = v40;
                      goto LABEL_217;
                    }

                    if (v92 <= 8)
                    {
                      if ((v92 - 5) < 2)
                      {
                        *(&v300[4] + 1) = 0;
                        *(&v300[3] + 8) = v16;
                        *(&v300[2] + 8) = v16;
                        *(&v300[1] + 8) = v16;
                        *(v300 + 8) = v16;
                        v95 = *(a2 + 4);
                        *(a2 + 4) = 2;
                        *&v300[0] = (8 * (v95 & 7)) | 0x3100080802;
                        *&v300[1] = v294;
                        *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 21) << 48) | 0xAA80;
                        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
                        (a2[32])(a2, v300);
                        memset(v300 + 8, 0, 72);
                        v96 = *(a2 + 4);
                        *(a2 + 4) = 2;
                        *&v300[0] = (8 * (v96 & 7)) | 0x3100080802;
                        *&v300[1] = v40;
                        *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 21) << 48) | 0xAA80;
                        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xBu) << 48) | 0x72679000;
                        (a2[32])(a2, v300);
                        memset(v300 + 8, 0, 72);
                        v97 = *(a2 + 4);
                        *(a2 + 4) = 2;
                        *&v300[0] = (8 * (v97 & 7)) | 0x3100080A02;
                        *&v300[1] = (gleFStateProgram_GetTemp(a2, 0xBu) << 48) | 0x19C840;
                        *(&v300[1] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
                        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
                        (a2[32])(a2, v300);
                        v98 = *a2;
                        memset(v300 + 8, 0, 72);
                        v99 = *(a2 + 4);
                        *(a2 + 4) = 2;
                        *&v300[0] = (8 * (v99 & 7)) | 0x3100080882;
                        *&v300[1] = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
                        *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 21) << 48) | 0x15480;
                        if (!v98)
                        {
                          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xCu) << 48) | 0x72679000;
                          (a2[32])(a2, v300);
                          memset(v300 + 8, 0, 72);
                          v100 = 0x3100180000;
                          if (!*(a2 + 251))
                          {
                            v100 = 0x3100080000;
                          }

                          *&v300[0] = (8 * (a2[2] & 7)) | 0x1B41 | v100;
                          *(a2 + 4) = 1;
                          *&v300[1] = (gleFStateProgram_GetTemp(a2, 0xCu) << 48) | 0x19C840;
                        }

                        goto LABEL_217;
                      }

                      if (v92 == 8)
                      {
                        *(&v300[4] + 1) = 0;
                        *(&v300[3] + 8) = v16;
                        *(&v300[2] + 8) = v16;
                        *(&v300[1] + 8) = v16;
                        *(v300 + 8) = v16;
                        v107 = 0x3100180000;
                        if (!*(a2 + 251))
                        {
                          v107 = 0x3100080000;
                        }

                        v108 = (8 * (a2[2] & 7)) | 0xFC3 | v107;
                        *(a2 + 4) = 3;
                        *&v300[0] = v108;
                        *&v300[1] = v294;
                        *(&v300[1] + 1) = v62;
                        goto LABEL_195;
                      }

                      goto LABEL_214;
                    }

                    if (v92 == 9)
                    {
                      *(&v300[4] + 1) = 0;
                      *(&v300[3] + 8) = v16;
                      *(&v300[2] + 8) = v16;
                      *(&v300[1] + 8) = v16;
                      *(v300 + 8) = v16;
                      v109 = 0x3100080000;
                      if (*(a2 + 251))
                      {
                        v109 = 0x3100180000;
                      }

                      v110 = (8 * (a2[2] & 7)) | 0x802 | v109;
                      *(a2 + 4) = 2;
                      *&v300[0] = v110;
                      *&v300[1] = v40;
                      *(&v300[1] + 1) = (gleFStateProgram_GetParam(a2, 19) << 48) | 0xAA80;
                      *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x72679000;
                      (a2[32])(a2, v300);
                      memset(v300 + 8, 0, 72);
                      v111 = 0x3100180000;
                      if (!*(a2 + 251))
                      {
                        v111 = 0x3100080000;
                      }

                      v112 = (8 * (a2[2] & 7)) | 0xFC3 | v111;
                      *(a2 + 4) = 3;
                      *&v300[0] = v112;
                      *&v300[1] = v294;
                      *(&v300[1] + 1) = v62;
                      v106 = (gleFStateProgram_GetTemp(a2, 3u) << 48) | 0x19C840;
                    }

                    else
                    {
                      if (v92 != 10)
                      {
LABEL_214:
                        *(&v300[4] + 1) = 0;
                        *(&v300[3] + 8) = v16;
                        *(&v300[2] + 8) = v16;
                        *(&v300[1] + 8) = v16;
                        *(v300 + 8) = v16;
                        v116 = 0x3100180000;
                        if (!*(a2 + 251))
                        {
                          v116 = 0x3100080000;
                        }

                        v117 = (8 * (a2[2] & 7)) | v116 | 1;
                        *(a2 + 4) = 1;
                        *&v300[0] = v117;
                        *&v300[1] = v294;
                        goto LABEL_217;
                      }

                      *(&v300[4] + 1) = 0;
                      *(&v300[3] + 8) = v16;
                      *(&v300[2] + 8) = v16;
                      *(&v300[1] + 8) = v16;
                      *(v300 + 8) = v16;
                      v104 = 0x3100180000;
                      if (!*(a2 + 251))
                      {
                        v104 = 0x3100080000;
                      }

                      v105 = (8 * (a2[2] & 7)) | 0xFC3 | v104;
                      *(a2 + 4) = 3;
                      *&v300[0] = v105;
                      *&v300[1] = v294;
                      *(&v300[1] + 1) = v62;
                      v106 = v40 | 0x10;
                    }

                    *&v300[2] = v106;
                    goto LABEL_217;
                  }

                  v67 = a2;
                  v68 = 0;
                }

                else
                {
                  if (v61)
                  {
                    if (v61 != 1)
                    {
                      goto LABEL_139;
                    }

                    v65 = a2;
                    v66 = v5;
                    goto LABEL_144;
                  }

                  v67 = a2;
                  v68 = 1;
                }

                v69 = gleFStateProgram_GetTemp(v67, v68);
                v16 = 0uLL;
                v70 = v69;
                v71 = 1689664;
                goto LABEL_147;
              }

LABEL_122:
              if (v292 || ((BYTE4(v59) ^ v59) & 0x1F) != 0 || (((v59 >> 37) ^ (v59 >> 5)) & 0x1F) != 0 || (v63 = (v59 >> 15) & 3, v64 = (v59 >> 47) & 1, v63 != v64) && v63 != (v64 | 2))
              {
                v62 = 0;
LABEL_166:
                v91 = 1;
LABEL_167:
                v293 = v91;
                goto LABEL_168;
              }

              v158 = (v59 >> 17) & 3;
              v159 = HIWORD(v59) & 1;
              if (v158 != v159)
              {
                v62 = 0;
                goto LABEL_390;
              }

              v62 = 0;
              goto LABEL_287;
            }

            v60 = 1;
            goto LABEL_122;
          }

          v44 = a2;
          v45 = 0;
        }

        else
        {
          if (v41)
          {
            if (v41 != 1)
            {
              goto LABEL_88;
            }

            v42 = a2;
            v43 = v5;
            goto LABEL_93;
          }

          v44 = a2;
          v45 = 1;
        }

        v46 = gleFStateProgram_GetTemp(v44, v45);
        v16 = 0uLL;
        v47 = v46;
        v48 = 1689664;
        goto LABEL_96;
      }

      v23 = a2;
      v24 = 0;
    }

    else
    {
      if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_55;
        }

        v21 = a2;
        v22 = v5;
        goto LABEL_60;
      }

      v23 = a2;
      v24 = 1;
    }

    v25 = gleFStateProgram_GetTemp(v23, v24);
    v16 = 0uLL;
    Param = v25;
    v27 = 1689664;
    goto LABEL_63;
  }

LABEL_453:
  v238 = *v296;
  if ((*v296 & 8) == 0)
  {
    if ((v238 & 0x40) == 0)
    {
      return result;
    }

LABEL_473:
    *(a2 + 248) = 1;
    *(a2 + 250) = 0;
    gleStateProgram_CheckDestInit(a2);
    v248 = *v296;
    if ((*v296 & 0x80) != 0)
    {
LABEL_504:
      memset(v300 + 8, 0, 72);
      v274 = 0x3100080000;
      if (*(a2 + 251))
      {
        v274 = 0x3100180000;
      }

      *&v300[0] = (8 * (a2[2] & 7)) | 0xF03 | v274;
      *(a2 + 4) = 3;
      if ((*v296 & 0x80) != 0)
      {
        LODWORD(v275) = *(a2 + 16);
        if (v275 == 0xFFFF)
        {
          v277 = *(a2 + 120);
          LODWORD(v275) = *(a2 + 120);
          *(a2 + 16) = v277;
          *(a2 + 2 * v277 + 11) = 3;
          *(a2 + 120) = v277 + 1;
        }

        v275 = v275;
        v276 = 43520;
      }

      else
      {
        v275 = gleFStateProgram_GetTemp(a2, 0xAu);
        v276 = 1689664;
      }

      *&v300[1] = v276 | (v275 << 48);
      if (*(a2 + 249))
      {
        v278 = gleFStateProgram_GetTemp(a2, 0);
        v279 = 1689664;
      }

      else
      {
        LODWORD(v278) = *(a2 + 12);
        if (v278 == 0xFFFF)
        {
          v280 = *(a2 + 120);
          LODWORD(v278) = *(a2 + 120);
          *(a2 + 12) = v280;
          *(a2 + 2 * v280 + 11) = 1;
          *(a2 + 120) = v280 + 1;
        }

        v278 = v278;
        v279 = 1689600;
      }

      *(&v300[1] + 1) = v279 | (v278 << 48);
      v281 = *(a2 + 78);
      if (v281 == 0xFFFF)
      {
        v282 = *(a2 + 121);
        v281 = *(a2 + 121);
        *(a2 + 78) = v282;
        *(a2 + 2 * v282 + 43) = 18;
        *(a2 + 121) = v282 + 1;
      }

      *&v300[2] = ((v281 << 48) | 0x19C840) + 64;
      if (*(a2 + 248))
      {
        v283 = gleFStateProgram_GetOutput(a2, 0);
        v284 = 1919365120;
      }

      else
      {
        v283 = gleFStateProgram_GetTemp(a2, 0);
        v284 = 1919356928;
      }

      *(&v300[0] + 1) = v284 | (v283 << 48);
      result = (a2[32])(a2, v300);
      *(a2 + 249) = 257;
      return result;
    }

    v249 = (v248 >> 1) & 3;
    if (v249 > 1)
    {
      if (v249 == 2)
      {
        if ((v248 & 0x20) == 0)
        {
          memset(&v300[1] + 8, 0, 56);
          v255 = *(a2 + 4);
          *(a2 + 4) = 1;
          *&v300[0] = (8 * (v255 & 7)) | 0x3100080081;
          v256 = *(a2 + 16);
          if (v256 == 0xFFFF)
          {
            v257 = *(a2 + 120);
            v256 = *(a2 + 120);
            *(a2 + 16) = v257;
            *(a2 + 2 * v257 + 11) = 3;
            *(a2 + 120) = v257 + 1;
          }

          *&v300[1] = v256 << 48;
          *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
          (a2[32])(a2, v300);
        }

        memset(v300 + 8, 0, 72);
        v258 = *(a2 + 4);
        *(a2 + 4) = 2;
        *&v300[0] = (8 * (v258 & 7)) | 0x3100080882;
        if ((*v296 & 0x20) != 0)
        {
          v285 = *(a2 + 16);
          if (v285 == 0xFFFF)
          {
            v286 = *(a2 + 120);
            v285 = *(a2 + 120);
            *(a2 + 16) = v286;
            *(a2 + 2 * v286 + 11) = 3;
            *(a2 + 120) = v286 + 1;
          }

          v259 = v285 << 48;
        }

        else
        {
          v259 = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
        }

        *&v300[1] = v259;
        v287 = *(a2 + 76);
        if (v287 == 0xFFFF)
        {
          v288 = *(a2 + 121);
          v287 = *(a2 + 121);
          *(a2 + 76) = v288;
          *(a2 + 2 * v288 + 43) = 17;
          *(a2 + 121) = v288 + 1;
        }

        *(&v300[1] + 1) = (v287 << 48) | 0x80;
        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
        (a2[32])(a2, v300);
        memset(v300 + 8, 0, 72);
        v289 = *(a2 + 4);
        *(a2 + 4) = 1;
        *&v300[0] = (8 * (v289 & 7)) | 0x100080401;
        if ((*v296 & 0x20) != 0)
        {
          *&v300[0] = (8 * (v289 & 7)) | 0x80100080401;
        }

        goto LABEL_494;
      }
    }

    else if (v249)
    {
      if ((v248 & 0x20) == 0)
      {
        memset(&v300[1] + 8, 0, 56);
        v250 = *(a2 + 4);
        *(a2 + 4) = 1;
        *&v300[0] = (8 * (v250 & 7)) | 0x3100080081;
        v251 = *(a2 + 16);
        if (v251 == 0xFFFF)
        {
          v252 = *(a2 + 120);
          v251 = *(a2 + 120);
          *(a2 + 16) = v252;
          *(a2 + 2 * v252 + 11) = 3;
          *(a2 + 120) = v252 + 1;
        }

        *&v300[1] = v251 << 48;
        *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
        (a2[32])(a2, v300);
      }

      memset(v300 + 8, 0, 72);
      v253 = *(a2 + 4);
      *(a2 + 4) = 3;
      *&v300[0] = (8 * (v253 & 7)) | 0x83100080FC3;
      if ((*v296 & 0x20) != 0)
      {
        v267 = *(a2 + 16);
        if (v267 == 0xFFFF)
        {
          v268 = *(a2 + 120);
          v267 = *(a2 + 120);
          *(a2 + 16) = v268;
          *(a2 + 2 * v268 + 11) = 3;
          *(a2 + 120) = v268 + 1;
        }

        v254 = v267 << 48;
      }

      else
      {
        v254 = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
      }

      *&v300[1] = v254 | 0x10;
      v269 = a2 + 84;
      v270 = *(a2 + 74);
      if (v270 == 0xFFFF)
      {
        v271 = *(a2 + 121);
        v270 = *(a2 + 121);
        *(a2 + 74) = v271;
        *&v269[4 * v271 + 2] = 16;
        *(a2 + 121) = v271 + 1;
      }

      *(&v300[1] + 1) = ((v270 << 48) | 0x1FE40) + 64;
      v272 = *(a2 + 76);
      if (v272 == 0xFFFF)
      {
        v273 = *(a2 + 121);
        v272 = *(a2 + 121);
        *(a2 + 76) = v273;
        *&v269[4 * v273 + 2] = 17;
        *(a2 + 121) = v273 + 1;
      }

      *&v300[2] = ((v272 << 48) | 0x1FE40) + 64;
      goto LABEL_503;
    }

    memset(&v300[2], 0, 48);
    v260 = *(a2 + 4);
    *(a2 + 4) = 2;
    *&v300[0] = (8 * (v260 & 7)) | 0x3100080882;
    v261 = *(a2 + 16);
    if (v261 == 0xFFFF)
    {
      v262 = *(a2 + 120);
      v261 = *(a2 + 120);
      *(a2 + 16) = v262;
      *(a2 + 2 * v262 + 11) = 3;
      *(a2 + 120) = v262 + 1;
    }

    *&v300[1] = v261 << 48;
    v263 = *(a2 + 76);
    if (v263 == 0xFFFF)
    {
      v264 = *(a2 + 121);
      v263 = *(a2 + 121);
      *(a2 + 76) = v264;
      *(a2 + 2 * v264 + 43) = 17;
      *(a2 + 121) = v264 + 1;
    }

    *(&v300[1] + 1) = (v263 << 48) | 0xAA80;
    *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
    (a2[32])(a2, v300);
    memset(v300 + 8, 0, 72);
    v265 = *(a2 + 4);
    *(a2 + 4) = 2;
    *&v300[0] = (8 * (v265 & 7)) | 0x3100080882;
    *&v300[1] = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
    *(&v300[1] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x19C840;
    *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
    (a2[32])(a2, v300);
    memset(v300 + 8, 0, 72);
    v266 = *(a2 + 4);
    *(a2 + 4) = 1;
    *&v300[0] = (8 * (v266 & 7)) | 0x100080401;
LABEL_494:
    *&v300[1] = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x50;
LABEL_503:
    *(&v300[0] + 1) = (gleFStateProgram_GetTemp(a2, 0xAu) << 48) | 0x72679000;
    (a2[32])(a2, v300);
    goto LABEL_504;
  }

  *(a2 + 248) = (*v296 & 0x40) == 0;
  if ((v238 & 0x40) == 0)
  {
    *(a2 + 250) = 0;
  }

  gleStateProgram_CheckDestInit(a2);
  memset(v300 + 8, 0, 72);
  v239 = 1572864;
  if (!*(a2 + 251))
  {
    v239 = 0x80000;
  }

  v240 = v239 & 0xFFFFFFFFFFFFFFC7 | (8 * (a2[2] & 7));
  *&v300[0] = v240 | 0x31000007C2;
  *(a2 + 4) = 2;
  if ((*v296 & 0x10) != 0)
  {
    *&v300[0] = v240 | 0x831000007C2;
  }

  if (*(a2 + 249))
  {
    v241 = gleFStateProgram_GetTemp(a2, 0);
    v242 = 1689664;
  }

  else
  {
    LODWORD(v241) = *(a2 + 12);
    if (v241 == 0xFFFF)
    {
      v243 = *(a2 + 120);
      LODWORD(v241) = *(a2 + 120);
      *(a2 + 12) = v243;
      *(a2 + 2 * v243 + 11) = 1;
      *(a2 + 120) = v243 + 1;
    }

    v241 = v241;
    v242 = 1689600;
  }

  *&v300[1] = v242 | (v241 << 48);
  v244 = *(a2 + 14);
  if (v244 == 0xFFFF)
  {
    v245 = *(a2 + 120);
    v244 = *(a2 + 120);
    *(a2 + 14) = v245;
    *(a2 + 2 * v245 + 11) = 2;
    *(a2 + 120) = v245 + 1;
  }

  *(&v300[1] + 1) = (v244 << 48) | 0x19C800;
  if (*(a2 + 248))
  {
    v246 = gleFStateProgram_GetOutput(a2, 0);
    v247 = 1919365120;
  }

  else
  {
    v246 = gleFStateProgram_GetTemp(a2, 0);
    v247 = 1919356928;
  }

  *(&v300[0] + 1) = v247 | (v246 << 48);
  result = (a2[32])(a2, v300);
  *(a2 + 249) = 257;
  if ((*v296 & 0x40) != 0)
  {
    goto LABEL_473;
  }

  return result;
}

uint64_t gleFStateProgram_GenerateMetadata(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v38 = a5;
  v39 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  v36 = a6;
  v35 = (a4 + 2 * a6 + 1);
  v10 = 8 * v35;
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v35 - v11;
  bzero(&v35 - v11, 8 * v35);
  bzero(v12, v10);
  v37 = a4;
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = v37;
    v15 = (a2 + 22);
    do
    {
      v16 = gleLLVMGetArgTypeName(*(a3 + 4 * v13));
      v18 = *v15;
      v15 += 2;
      v17 = v18;
      if (v18 > 0xF)
      {
LABEL_26:
        v20 = "air.perspective";
        if (!v17)
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }

      if (((1 << v17) & 0xC006) != 0)
      {
        v19 = "air.perspective";
        if (*v39)
        {
          v19 = "air.no_perspective";
        }

        if ((*v39 & 0x2000000) != 0)
        {
          v20 = "air.flat";
        }

        else
        {
          v20 = v19;
        }

LABEL_10:
        memset(__str, 0, 32);
        if (v17 <= 3)
        {
          switch(v17)
          {
            case 1:
              if ((*(a2 + 280) & 8) != 0)
              {
                strcpy(__str, "user(front_color)");
              }

              v21 = 2;
              break;
            case 2:
              if ((*(a2 + 280) & 8) != 0)
              {
                strcpy(__str, "user(sec_front_color)");
              }

              v21 = 3;
              break;
            case 3:
              v21 = 5;
              break;
            default:
              goto LABEL_67;
          }
        }

        else if ((v17 - 4) >= 8)
        {
          if (v17 == 14)
          {
            if ((*(a2 + 280) & 8) != 0)
            {
              strcpy(__str, "user(back_color)");
            }

            v21 = 1;
          }

          else
          {
            if (v17 != 15)
            {
LABEL_67:
              abort();
            }

            if ((*(a2 + 280) & 8) != 0)
            {
              strcpy(__str, "user(sec_back_color)");
            }

            v21 = 4;
          }
        }

        else
        {
          if ((*(a2 + 280) & 8) != 0)
          {
            snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v17 - 4);
          }

          v21 = v17 + 4;
        }

        if ((*(a2 + 280) & 8) != 0)
        {
          if (!__str[0])
          {
            snprintf(__str, 0x1FuLL, "user(slot%u)", v21);
          }

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          *&v40 = gleLLVMGetConstantInt32(v9, v13);
          *(&v40 + 1) = LLVMMDStringInContext();
          strlen(__str);
          *&v41 = LLVMMDStringInContext();
          strlen(v20);
          *(&v41 + 1) = LLVMMDStringInContext();
          *&v42 = LLVMMDStringInContext();
          *(&v42 + 1) = LLVMMDStringInContext();
          strlen(v16);
          v43 = LLVMMDStringInContext();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          *&v40 = gleLLVMGetConstantInt32(v9, v13);
          *(&v40 + 1) = LLVMMDStringInContext();
          *&v41 = LLVMMDStringInContext();
          if (!*(v9 + 152))
          {
            *(v9 + 152) = LLVMInt32TypeInContext();
          }

          *(&v41 + 1) = LLVMConstInt();
          strlen(v20);
          *&v42 = LLVMMDStringInContext();
          *(&v42 + 1) = LLVMMDStringInContext();
        }

        goto LABEL_40;
      }

      if (v17 == 12)
      {
        if ((*(a2 + 280) & 8) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v17 != 13)
        {
          goto LABEL_26;
        }

        if ((*(a2 + 280) & 8) != 0)
        {
LABEL_39:
          v40 = 0u;
          v41 = 0u;
          *&v40 = gleLLVMGetConstantInt32(v9, v13);
          *(&v40 + 1) = LLVMMDStringInContext();
          *&v41 = LLVMMDStringInContext();
          strlen(v16);
          *(&v41 + 1) = LLVMMDStringInContext();
          goto LABEL_40;
        }
      }

      v40 = 0uLL;
      *&v40 = gleLLVMGetConstantInt32(v9, v13);
      *(&v40 + 1) = LLVMMDStringInContext();
LABEL_40:
      *&v12[8 * v13] = LLVMMDNodeInContext();
LABEL_41:
      ++v13;
    }

    while (v14 != v13);
  }

  gleLLVMAddCommonMetaData(v9, &v12[8 * v37], v35 - v37, v37, *(a2 + 242), v36);
  v22 = LLVMMDNodeInContext();
  v23 = v38;
  MEMORY[0x28223BE20](v22, 8 * v38);
  v25 = (&v35 - v24);
  bzero(&v35 - v24, v26);
  if (v23 >= 1)
  {
    v27 = v38;
    v28 = (a2 + 174);
    v29 = v25;
    do
    {
      v30 = *v28;
      v28 += 2;
      v31 = v30 == 8;
      if (v30 >= 8)
      {
        if (!v31)
        {
          goto LABEL_61;
        }

        *&v41 = 0;
        v40 = 0uLL;
        *&v40 = LLVMMDStringInContext();
        *(&v40 + 1) = LLVMMDStringInContext();
        v32 = LLVMMDStringInContext();
      }

      else
      {
        *&v41 = 0;
        v40 = 0uLL;
        *&v40 = LLVMMDStringInContext();
        if (!*(v9 + 152))
        {
          *(v9 + 152) = LLVMInt32TypeInContext();
        }

        *(&v40 + 1) = LLVMConstInt();
        if (!*(v9 + 152))
        {
          *(v9 + 152) = LLVMInt32TypeInContext();
        }

        v32 = LLVMConstInt();
      }

      *&v41 = v32;
      *v29 = LLVMMDNodeInContext();
LABEL_61:
      ++v29;
      --v27;
    }

    while (v27);
  }

  v33 = LLVMMDNodeInContext();
  return gleLLVMCreateFunctionMetadata(v9, "air.fragment", v22, v33);
}

uint64_t gleFStateProgram_GetFirstActiveTexture(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  v3 = a1 & 0xFFFFFF7F;
  if ((a1 & 0xFFFFFF7F) != 0)
  {
    v4 = (a2 + 64);
    v5 = 128;
    result = 7;
    while (1)
    {
      v7 = v2;
      v2 = v3;
      if ((v7 & v5) != 0)
      {
        v8 = *v4;
        v9 = (*v4 >> 28) & 7;
        if (v9 == 5)
        {
          v13 = v8 & 0x1F;
          v14 = (v8 >> 5) & 0x1F;
          v15 = v13 == 3 || v14 == 3;
          v16 = (v8 >> 10) & 0x1F;
          v17 = v15 || v16 == 3;
          v18 = HIDWORD(v8) & 0x1F;
          v19 = v17 || v18 == 3;
          v20 = (v8 >> 37) & 0x1F;
          v21 = v19 || v20 == 3;
          v22 = (v8 >> 42) & 0x1F;
          if (!v21 && v22 <= 5 && v20 <= 5 && v18 <= 5 && v16 <= 5 && v14 <= 5 && v13 <= 5 && v22 != 3)
          {
            return result;
          }
        }

        else if (v9 == 3)
        {
          v10 = v8 & 0x3000000000000000;
          v11 = v8 & 0x3800000000000000;
          if (v10 == 0x1000000000000000 || v11 == 0x2800000000000000)
          {
            return result;
          }
        }
      }

      result = (result - 1);
      v5 = 1 << result;
      v3 = v2 & ~(1 << result);
      --v4;
      if (!v3)
      {
        return result;
      }
    }
  }

  return 7;
}

uint64_t gleFStateProgram_AllocateOutput(uint64_t result, int a2)
{
  v2 = *(result + 244);
  *(result + 172 + 4 * a2) = v2;
  *(result + 172 + 4 * v2 + 2) = a2;
  *(result + 244) = v2 + 1;
  if (*(result + 8))
  {
    v3 = result;
    if (a2 == 8 || !*(result + 251))
    {
      result = LLVMFloatTypeInContext();
    }

    else
    {
      result = LLVMHalfTypeInContext();
    }

    *(*(*(v3 + 8) + 128) + 8 * v2) = result;
  }

  return result;
}

uint64_t gleFStateProgram_GetOutput(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 172 + 4 * a2);
  v3 = *v2;
  if (v3 == 0xFFFF)
  {
    v5 = *(a1 + 244);
    LOWORD(v3) = *(a1 + 244);
    *v2 = v5;
    *(a1 + 172 + 4 * v5 + 2) = a2;
    *(a1 + 244) = v5 + 1;
    if (*(a1 + 8))
    {
      if (a2 == 8 || !*(a1 + 251))
      {
        v6 = LLVMFloatTypeInContext();
      }

      else
      {
        v6 = LLVMHalfTypeInContext();
      }

      *(*(*(a1 + 8) + 128) + 8 * v5) = v6;
    }
  }

  return v3;
}

uint64_t gleFStateProgram_GetTemp(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 208 + 2 * a2);
  if (v2 == 0xFFFF)
  {
    v4 = *(a1 + 246);
    LOWORD(v2) = *(a1 + 246);
    *(a1 + 208 + 2 * a2) = v4;
    *(a1 + 246) = v4 + 1;
    if (*(a1 + 8))
    {
      if (a2 - 13 <= 0xFFFFFFFC && *(a1 + 251))
      {
        v5 = LLVMHalfTypeInContext();
      }

      else
      {
        v5 = LLVMFloatTypeInContext();
      }

      *(*(*(a1 + 8) + 96) + 8 * v4) = v5;
    }
  }

  return v2;
}

uint64_t gleStateProgram_TextureSampleOp(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v7 = a1[a4 + 1];
  v8 = HIBYTE(v7) & 7;
  if ((HIBYTE(v7) & 7u) > 2)
  {
    switch(v8)
    {
      case 3:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 5;
        v11 = 2;
        break;
      case 4:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 6;
        v11 = 3;
        break;
      case 5:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 7;
        v11 = 4;
        break;
      default:
LABEL_39:
        v34 = 0;
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        if (*(a2 + 251))
        {
          v28 = 0x3100180000;
        }

        else
        {
          v28 = 0x3100080000;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
        *(a2 + 16) = 1;
        *(&v30 + 1) = (gleFStateProgram_GetParam(a2, 20) << 48) | 0x19C880;
        goto LABEL_38;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v12 = 0;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_39;
    }

    v12 = 1;
  }

LABEL_15:
  v13 = 0x3100000002;
  v14 = *a1;
  v15 = 4288;
  if ((v7 & 0x80000000) != 0)
  {
    v15 = 4224;
  }

  v16 = (v7 & 0x80000000) != 0;
  v17 = 4352;
  v18 = 4416;
  if (v16)
  {
    v18 = 4352;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v13 = 0x3100000003;
  }

  else
  {
    v17 = 4224;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  if (((1 << a4) & BYTE4(v14)) == 0)
  {
    v17 = v20;
  }

  v34 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v21 = v13 | (8 * (*(a2 + 16) & 7)) | v17;
  *(a2 + 16) = v19;
  v22 = v21;
  v29 = v21 | 0x88000;
  v23 = *a1;
  if ((*a1 & 0x10) != 0)
  {
    v22 = v21;
    v29 = v21 | 0x80000088000;
  }

  v24 = (a2 + 20 + 4 * (a4 + 4));
  v25 = *v24;
  if (v25 == 0xFFFF)
  {
    v26 = *(a2 + 240);
    v25 = *(a2 + 240);
    *v24 = v26;
    *(a2 + 20 + 4 * v26 + 2) = a4 + 4;
    *(a2 + 240) = v26 + 1;
    v23 = *a1;
  }

  *(&v30 + 1) = ((v25 << 48) | 0x19C880) - 128;
  if ((v23 & 0x10000000000) != 0)
  {
    *&v31 = (gleFStateProgram_GetParam(a2, a4 + 8) << 48) | 0x19C880;
  }

  *(&v30 + (v22 & 7)) = *(&v30 + (v22 & 7)) & 0xFFFFFF80FFFFFFE0 | ((v4 & 0x7F) << 32) | v12;
LABEL_38:
  *&v30 = a3;
  return (*(a2 + 256))(a2, &v29);
}

uint64_t gleFStateProgram_GetParam(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 251))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  switch(a2)
  {
    case 21:
      v7 = *(a1 + 8);
      if (!*(*(v7 + 104) + 16))
      {
        v12 = xmmword_23A301240;
        *(*(*(a1 + 8) + 104) + 16) = gleLLVMCreateConstantVec4(v7, &v12, 1);
      }

      break;
    case 20:
      v6 = *(a1 + 8);
      if (!*(*(v6 + 104) + 8))
      {
        v12 = 0uLL;
        *(*(*(a1 + 8) + 104) + 8) = gleLLVMCreateConstantVec4(v6, &v12, v4);
      }

      break;
    case 19:
      v5 = *(a1 + 8);
      if (!**(v5 + 104))
      {
        v12 = xmmword_23A301240;
        **(*(a1 + 8) + 104) = gleLLVMCreateConstantVec4(v5, &v12, v4);
      }

      break;
  }

  v8 = (a1 + 84 + 4 * a2);
  v9 = *v8;
  if (v9 == 0xFFFF)
  {
    v10 = *(a1 + 242);
    LOWORD(v9) = *(a1 + 242);
    *v8 = v10;
    *(a1 + 84 + 4 * v10 + 2) = a2;
    *(a1 + 242) = v10 + 1;
  }

  return v9;
}

uint64_t gleStateProgram_A_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1918930944;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_A_REPLACE(uint64_t a1, uint64_t a2)
{
  v3 = 1918930944;
  gleStateProgram_CheckDestInit(a2);
  v11 = 0;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v7[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v7[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v3 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v7[1] = v3 | (Output << 48);
  return (*(a2 + 256))(a2, v7);
}

uint64_t gleStateProgram_CheckDestInit(uint64_t result)
{
  if (!*(result + 250))
  {
    v15 = v1;
    v16 = v2;
    v3 = result;
    v4 = 1689600;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (*(result + 251))
    {
      v5 = 0x3100180000;
    }

    else
    {
      v5 = 0x3100080000;
    }

    v10[0] = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(result + 16) & 7)) | 1;
    *(result + 16) = 1;
    if (*(result + 249))
    {
      Temp = gleFStateProgram_GetTemp(result, 0);
      v4 = 1689664;
    }

    else
    {
      LODWORD(Temp) = *(result + 24);
      if (Temp == 0xFFFF)
      {
        v7 = *(result + 240);
        LODWORD(Temp) = *(result + 240);
        *(result + 24) = v7;
        *(result + 4 * v7 + 22) = 1;
        *(result + 240) = v7 + 1;
      }

      Temp = Temp;
    }

    v8 = 1919389696;
    *&v11 = v4 | (Temp << 48);
    if (*(v3 + 248))
    {
      Output = gleFStateProgram_GetOutput(v3, 0);
      v8 = 1919397888;
    }

    else
    {
      Output = gleFStateProgram_GetTemp(v3, 0);
    }

    v10[1] = v8 | (Output << 48);
    return (*(v3 + 256))(v3, v10);
  }

  return result;
}

uint64_t gleStateProgram_RGB_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1919356928;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_RGB_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 1689664;
  gleStateProgram_CheckDestInit(a2);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v6 = 0x3100180000;
  }

  else
  {
    v6 = 0x3100080000;
  }

  v12[0] = v6 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v12[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  v12[3] = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v9 = 1919356928;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v12[1] = v9 | (Output << 48);
  return (*(a2 + 256))(a2, v12);
}

uint64_t gleStateProgram_RGB_REPLACE(uint64_t a1, uint64_t a2)
{
  v3 = 1919356928;
  gleStateProgram_CheckDestInit(a2);
  v11 = 0;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v7[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v7[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v3 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v7[1] = v3 | (Output << 48);
  return (*(a2 + 256))(a2, v7);
}

uint64_t gleStateProgram_RGB_ADD(_BYTE *a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v4 = 1572864;
  if (!*(a2 + 251))
  {
    v4 = 0x80000;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v12 = v5 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v12 = v5 | 0x831000007C2;
  }

  v6 = 1689664;
  *(&v13 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v6 = 1689600;
  }

  v9 = 1919356928;
  *&v14 = v6 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v13 = v9 | (Output << 48);
  return (*(a2 + 256))(a2, &v12);
}

uint64_t gleStateProgram_RGBA_MODULATE(uint64_t a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1919389696;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_RGBA_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v20[8], 0, 48);
  if (*(a2 + 251))
  {
    v5 = 0x3100180000;
  }

  else
  {
    v5 = 0x3100080000;
  }

  v18 = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v6 = (gleFStateProgram_GetTemp(a2, 0) << 48) | 0x40;
  }

  else
  {
    v7 = *(a2 + 24);
    if (v7 == 0xFFFF)
    {
      v8 = *(a2 + 240);
      v7 = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    v6 = v7 << 48;
  }

  *(&v19 + 1) = v6 | 0x1FE00;
  *v20 = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x1FE40;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v10 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
    v10 = 1918930944;
  }

  v11 = 1689664;
  *&v19 = v10 | (Output << 48);
  (*(a2 + 256))(a2, &v18);
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if (*(a2 + 251))
  {
    v12 = 0x3100180000;
  }

  else
  {
    v12 = 0x3100080000;
  }

  v18 = (8 * (*(a2 + 16) & 7)) | 0xF03 | v12;
  *(a2 + 16) = 3;
  *(&v19 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  *v20 = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v14 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v14;
      *(a2 + 4 * v14 + 22) = 1;
      *(a2 + 240) = v14 + 1;
    }

    Temp = Temp;
    v11 = 1689600;
  }

  *&v20[8] = v11 | (Temp << 48);
  if (*(a2 + 248))
  {
    v15 = gleFStateProgram_GetOutput(a2, 0);
    v16 = 1919365120;
  }

  else
  {
    v15 = gleFStateProgram_GetTemp(a2, 0);
    v16 = 1919356928;
  }

  *&v19 = v16 | (v15 << 48);
  return (*(a2 + 256))(a2, &v18);
}

uint64_t gleStateProgram_RGBA_ADD(_BYTE *a1, uint64_t a2)
{
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v3 = 1572864;
  if (!*(a2 + 251))
  {
    v3 = 0x80000;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v17 = v4 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v17 = v4 | 0x831000007C2;
  }

  *(&v18 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v6 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v7 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v7;
      *(a2 + 4 * v7 + 22) = 1;
      *(a2 + 240) = v7 + 1;
    }

    Temp = Temp;
    v6 = 1689600;
  }

  v8 = 1918930944;
  *&v19 = v6 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v10 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
    v10 = 1919356928;
  }

  *&v18 = v10 | (Output << 48);
  (*(a2 + 256))(a2, &v17);
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  if (*(a2 + 251))
  {
    v11 = 0x3100180000;
  }

  else
  {
    v11 = 0x3100080000;
  }

  v17 = v11 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v12 = gleFStateProgram_GetTemp(a2, 0);
    v13 = 1689664;
  }

  else
  {
    LODWORD(v12) = *(a2 + 24);
    if (v12 == 0xFFFF)
    {
      v14 = *(a2 + 240);
      LODWORD(v12) = *(a2 + 240);
      *(a2 + 24) = v14;
      *(a2 + 4 * v14 + 22) = 1;
      *(a2 + 240) = v14 + 1;
    }

    v12 = v12;
    v13 = 1689600;
  }

  *(&v18 + 1) = v13 | (v12 << 48);
  *&v19 = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v15 = gleFStateProgram_GetOutput(a2, 0);
    v8 = 1918939136;
  }

  else
  {
    v15 = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v18 = v8 | (v15 << 48);
  return (*(a2 + 256))(a2, &v17);
}

uint64_t gleStateProgram_I_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 1689664;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v6 = 0x3100180000;
  }

  else
  {
    v6 = 0x3100080000;
  }

  v12[0] = v6 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v12[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  v12[3] = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v9 = 1919389696;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v12[1] = v9 | (Output << 48);
  return (*(a2 + 256))(a2, v12);
}

uint64_t gleStateProgram_I_ADD(_BYTE *a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v3 = 1572864;
  if (!*(a2 + 251))
  {
    v3 = 0x80000;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v11 = v4 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v11 = v4 | 0x831000007C2;
  }

  v5 = 1689664;
  *(&v12 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v7 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v7;
      *(a2 + 4 * v7 + 22) = 1;
      *(a2 + 240) = v7 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v8 = 1919389696;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v8 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v12 = v8 | (Output << 48);
  return (*(a2 + 256))(a2, &v11);
}

uint64_t gleStateProgram_RGBA_DECAL(uint64_t a1, uint64_t a2)
{
  v3 = 1689664;
  gleStateProgram_CheckDestInit(a2);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v10[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v10[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x1FE40;
  v10[3] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v3 = 1689600;
  }

  v7 = 1919356928;
  *&v11 = v3 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

void glpPrimitiveTypeToLLVMType_cold_1(unsigned int a1)
{
  v1 = glpPrimitiveTypeToString(a1);
  printf("unhandled primitive type: %s\n", v1);
  abort();
}

void _glpSetCrashLogMessage_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&dword_23A2B5000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s", &v1, 0xCu);
}

void GLPDebugInfoContext::createFunction()
{
  __assert_rtn("createFunction", "glp_llvm_ir_util.cpp", 526, "!function->getSubprogram()");
}

{
  __assert_rtn("createFunction", "glp_llvm_ir_util.cpp", 534, "lexicalBlocks.size() == 1");
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
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