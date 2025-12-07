unint64_t _readFromExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 151;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    *(v4 + 16) = _readNode(v13);
  }

  return v4;
}

_DWORD *_readOnConflictExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  v5 = v4;
  *v4 = 152;
  v6 = *(a1 + 24);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  v4[1] = v7;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v9);
    *(v5 + 1) = v10;
    if (*(a1 + 32) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 40) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v5 + 1) = v11;
        v13 = v12++;
      }

      while (*(a1 + 32) > v13);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    *(v5 + 2) = _readNode(v16);
  }

  v5[6] = *(a1 + 56);
  if (*(a1 + 64))
  {
    v17 = _readNode(**(a1 + 72));
    list_make1_impl(226, v17, v18);
    *(v5 + 4) = v19;
    if (*(a1 + 64) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 72) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v5 + 4) = v20;
        v22 = v21++;
      }

      while (*(a1 + 64) > v22);
    }
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    *(v5 + 5) = _readNode(v25);
  }

  v5[12] = *(a1 + 88);
  if (*(a1 + 96))
  {
    v26 = _readNode(**(a1 + 104));
    list_make1_impl(226, v26, v27);
    *(v5 + 7) = v28;
    if (*(a1 + 96) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 104) + 8 * v31));
        v29 = lappend(v29, v32, v33);
        *(v5 + 7) = v29;
        v31 = v30++;
      }

      while (*(a1 + 96) > v31);
    }
  }

  return v5;
}

unint64_t _readIntoClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x48uLL);
  *v4 = 153;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15 && *v15)
  {
    *(v4 + 24) = pstrdup(v15, v5);
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  v24 = *(a1 + 72);
  v25 = v24 - 2;
  v26 = v24 - 1;
  if (v25 >= 3)
  {
    v26 = 0;
  }

  *(v4 + 40) = v26;
  v27 = *(a1 + 80);
  if (v27 && *v27)
  {
    *(v4 + 48) = pstrdup(v27, v5);
  }

  v28 = *(a1 + 88);
  if (v28)
  {
    *(v4 + 56) = _readNode(v28);
  }

  *(v4 + 64) = *(a1 + 96) != 0;
  return v4;
}

unint64_t _readQuery(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xE0uLL);
  v6 = v4;
  *v4 = 231;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 6)
  {
    v9 = 0;
  }

  *(v4 + 4) = v9;
  v10 = *(a1 + 28);
  v11 = v10 - 2;
  v12 = v10 - 1;
  if (v11 >= 4)
  {
    v12 = 0;
  }

  *(v4 + 8) = v12;
  *(v4 + 24) = *(a1 + 32) != 0;
  v13 = *(a1 + 40);
  if (v13)
  {
    *(v6 + 32) = _readNode(v13);
  }

  *(v6 + 40) = *(a1 + 48);
  *(v6 + 44) = *(a1 + 52) != 0;
  *(v6 + 45) = *(a1 + 56) != 0;
  *(v6 + 46) = *(a1 + 60) != 0;
  *(v6 + 47) = *(a1 + 64) != 0;
  *(v6 + 48) = *(a1 + 68) != 0;
  *(v6 + 49) = *(a1 + 72) != 0;
  *(v6 + 50) = *(a1 + 76) != 0;
  *(v6 + 51) = *(a1 + 80) != 0;
  *(v6 + 52) = *(a1 + 84) != 0;
  if (*(a1 + 88))
  {
    Node = _readNode(**(a1 + 96));
    v5 = list_make1_impl(226, Node, v15);
    *(v6 + 56) = v16;
    if (*(a1 + 88) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 96) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v6 + 56) = v17;
        v19 = v18++;
      }

      while (*(a1 + 88) > v19);
    }
  }

  if (*(a1 + 104))
  {
    v22 = _readNode(**(a1 + 112));
    v5 = list_make1_impl(226, v22, v23);
    *(v6 + 64) = v24;
    if (*(a1 + 104) >= 2uLL)
    {
      v25 = v24;
      v26 = 2;
      v27 = 1;
      do
      {
        v28 = _readNode(*(*(a1 + 112) + 8 * v27));
        v25 = lappend(v25, v28, v29);
        *(v6 + 64) = v25;
        v27 = v26++;
      }

      while (*(a1 + 104) > v27);
    }
  }

  v30 = *(a1 + 120);
  if (v30)
  {
    *(v6 + 72) = _readFromExpr(v30, v5);
  }

  if (*(a1 + 128))
  {
    v31 = _readNode(**(a1 + 136));
    v5 = list_make1_impl(226, v31, v32);
    *(v6 + 80) = v33;
    if (*(a1 + 128) >= 2uLL)
    {
      v34 = v33;
      v35 = 2;
      v36 = 1;
      do
      {
        v37 = _readNode(*(*(a1 + 136) + 8 * v36));
        v34 = lappend(v34, v37, v38);
        *(v6 + 80) = v34;
        v36 = v35++;
      }

      while (*(a1 + 128) > v36);
    }
  }

  v39 = *(a1 + 144);
  if (v39 == 3)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39 == 2;
  }

  *(v6 + 88) = v40;
  v41 = *(a1 + 152);
  if (v41)
  {
    *(v6 + 96) = _readOnConflictExpr(v41, v5);
  }

  if (*(a1 + 160))
  {
    v42 = _readNode(**(a1 + 168));
    list_make1_impl(226, v42, v43);
    *(v6 + 104) = v44;
    if (*(a1 + 160) >= 2uLL)
    {
      v45 = v44;
      v46 = 2;
      v47 = 1;
      do
      {
        v48 = _readNode(*(*(a1 + 168) + 8 * v47));
        v45 = lappend(v45, v48, v49);
        *(v6 + 104) = v45;
        v47 = v46++;
      }

      while (*(a1 + 160) > v47);
    }
  }

  if (*(a1 + 176))
  {
    v50 = _readNode(**(a1 + 184));
    list_make1_impl(226, v50, v51);
    *(v6 + 112) = v52;
    if (*(a1 + 176) >= 2uLL)
    {
      v53 = v52;
      v54 = 2;
      v55 = 1;
      do
      {
        v56 = _readNode(*(*(a1 + 184) + 8 * v55));
        v53 = lappend(v53, v56, v57);
        *(v6 + 112) = v53;
        v55 = v54++;
      }

      while (*(a1 + 176) > v55);
    }
  }

  if (*(a1 + 192))
  {
    v58 = _readNode(**(a1 + 200));
    list_make1_impl(226, v58, v59);
    *(v6 + 120) = v60;
    if (*(a1 + 192) >= 2uLL)
    {
      v61 = v60;
      v62 = 2;
      v63 = 1;
      do
      {
        v64 = _readNode(*(*(a1 + 200) + 8 * v63));
        v61 = lappend(v61, v64, v65);
        *(v6 + 120) = v61;
        v63 = v62++;
      }

      while (*(a1 + 192) > v63);
    }
  }

  v66 = *(a1 + 208);
  if (v66)
  {
    *(v6 + 128) = _readNode(v66);
  }

  if (*(a1 + 216))
  {
    v67 = _readNode(**(a1 + 224));
    list_make1_impl(226, v67, v68);
    *(v6 + 136) = v69;
    if (*(a1 + 216) >= 2uLL)
    {
      v70 = v69;
      v71 = 2;
      v72 = 1;
      do
      {
        v73 = _readNode(*(*(a1 + 224) + 8 * v72));
        v70 = lappend(v70, v73, v74);
        *(v6 + 136) = v70;
        v72 = v71++;
      }

      while (*(a1 + 216) > v72);
    }
  }

  if (*(a1 + 232))
  {
    v75 = _readNode(**(a1 + 240));
    list_make1_impl(226, v75, v76);
    *(v6 + 144) = v77;
    if (*(a1 + 232) >= 2uLL)
    {
      v78 = v77;
      v79 = 2;
      v80 = 1;
      do
      {
        v81 = _readNode(*(*(a1 + 240) + 8 * v80));
        v78 = lappend(v78, v81, v82);
        *(v6 + 144) = v78;
        v80 = v79++;
      }

      while (*(a1 + 232) > v80);
    }
  }

  if (*(a1 + 248))
  {
    v83 = _readNode(**(a1 + 256));
    list_make1_impl(226, v83, v84);
    *(v6 + 152) = v85;
    if (*(a1 + 248) >= 2uLL)
    {
      v86 = v85;
      v87 = 2;
      v88 = 1;
      do
      {
        v89 = _readNode(*(*(a1 + 256) + 8 * v88));
        v86 = lappend(v86, v89, v90);
        *(v6 + 152) = v86;
        v88 = v87++;
      }

      while (*(a1 + 248) > v88);
    }
  }

  v91 = *(a1 + 264);
  if (v91)
  {
    *(v6 + 160) = _readNode(v91);
  }

  v92 = *(a1 + 272);
  if (v92)
  {
    *(v6 + 168) = _readNode(v92);
  }

  v93 = *(a1 + 280);
  if (v93 == 3)
  {
    v94 = 2;
  }

  else
  {
    v94 = v93 == 2;
  }

  *(v6 + 176) = v94;
  if (*(a1 + 288))
  {
    v95 = _readNode(**(a1 + 296));
    list_make1_impl(226, v95, v96);
    *(v6 + 184) = v97;
    if (*(a1 + 288) >= 2uLL)
    {
      v98 = v97;
      v99 = 2;
      v100 = 1;
      do
      {
        v101 = _readNode(*(*(a1 + 296) + 8 * v100));
        v98 = lappend(v98, v101, v102);
        *(v6 + 184) = v98;
        v100 = v99++;
      }

      while (*(a1 + 288) > v100);
    }
  }

  v103 = *(a1 + 304);
  if (v103)
  {
    *(v6 + 192) = _readNode(v103);
  }

  if (*(a1 + 312))
  {
    v104 = _readNode(**(a1 + 320));
    list_make1_impl(226, v104, v105);
    *(v6 + 200) = v106;
    if (*(a1 + 312) >= 2uLL)
    {
      v107 = v106;
      v108 = 2;
      v109 = 1;
      do
      {
        v110 = _readNode(*(*(a1 + 320) + 8 * v109));
        v107 = lappend(v107, v110, v111);
        *(v6 + 200) = v107;
        v109 = v108++;
      }

      while (*(a1 + 312) > v109);
    }
  }

  if (*(a1 + 328))
  {
    v112 = _readNode(**(a1 + 336));
    list_make1_impl(226, v112, v113);
    *(v6 + 208) = v114;
    if (*(a1 + 328) >= 2uLL)
    {
      v115 = v114;
      v116 = 2;
      v117 = 1;
      do
      {
        v118 = _readNode(*(*(a1 + 336) + 8 * v117));
        v115 = lappend(v115, v118, v119);
        *(v6 + 208) = v115;
        v117 = v116++;
      }

      while (*(a1 + 328) > v117);
    }
  }

  *(v6 + 216) = *(a1 + 344);
  *(v6 + 220) = *(a1 + 348);
  return v6;
}

unint64_t _readInsertStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 233;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(v4 + 32) = _readOnConflictClause(v16, v5);
  }

  if (*(a1 + 64))
  {
    v17 = _readNode(**(a1 + 72));
    v5 = list_make1_impl(226, v17, v18);
    *(v4 + 40) = v19;
    if (*(a1 + 64) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 72) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v4 + 40) = v20;
        v22 = v21++;
      }

      while (*(a1 + 64) > v22);
    }
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    *(v4 + 48) = _readWithClause(v25, v5);
  }

  v26 = *(a1 + 88);
  if (v26 == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26 == 2;
  }

  *(v4 + 56) = v27;
  return v4;
}

unint64_t _readDeleteStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 234;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    *(v4 + 40) = _readWithClause(v24, v5);
  }

  return v4;
}

unint64_t _readUpdateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 235;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  if (*(a1 + 72))
  {
    v24 = _readNode(**(a1 + 80));
    v5 = list_make1_impl(226, v24, v25);
    *(v4 + 40) = v26;
    if (*(a1 + 72) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 80) + 8 * v29));
        v27 = lappend(v27, v30, v31);
        *(v4 + 40) = v27;
        v29 = v28++;
      }

      while (*(a1 + 72) > v29);
    }
  }

  v32 = *(a1 + 88);
  if (v32)
  {
    *(v4 + 48) = _readWithClause(v32, v5);
  }

  return v4;
}

unint64_t _readSelectStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 236;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    *(v4 + 16) = _readIntoClause(v14, v5);
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  if (*(a1 + 64))
  {
    v23 = _readNode(**(a1 + 72));
    v5 = list_make1_impl(226, v23, v24);
    *(v4 + 32) = v25;
    if (*(a1 + 64) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 72) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        *(v4 + 32) = v26;
        v28 = v27++;
      }

      while (*(a1 + 64) > v28);
    }
  }

  v31 = *(a1 + 80);
  if (v31)
  {
    *(v4 + 40) = _readNode(v31);
  }

  if (*(a1 + 88))
  {
    v32 = _readNode(**(a1 + 96));
    v5 = list_make1_impl(226, v32, v33);
    *(v4 + 48) = v34;
    if (*(a1 + 88) >= 2uLL)
    {
      v35 = v34;
      v36 = 2;
      v37 = 1;
      do
      {
        v38 = _readNode(*(*(a1 + 96) + 8 * v37));
        v35 = lappend(v35, v38, v39);
        *(v4 + 48) = v35;
        v37 = v36++;
      }

      while (*(a1 + 88) > v37);
    }
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(v4 + 56) = _readNode(v40);
  }

  if (*(a1 + 112))
  {
    v41 = _readNode(**(a1 + 120));
    v5 = list_make1_impl(226, v41, v42);
    *(v4 + 64) = v43;
    if (*(a1 + 112) >= 2uLL)
    {
      v44 = v43;
      v45 = 2;
      v46 = 1;
      do
      {
        v47 = _readNode(*(*(a1 + 120) + 8 * v46));
        v44 = lappend(v44, v47, v48);
        *(v4 + 64) = v44;
        v46 = v45++;
      }

      while (*(a1 + 112) > v46);
    }
  }

  if (*(a1 + 128))
  {
    v49 = _readNode(**(a1 + 136));
    v5 = list_make1_impl(226, v49, v50);
    *(v4 + 72) = v51;
    if (*(a1 + 128) >= 2uLL)
    {
      v52 = v51;
      v53 = 2;
      v54 = 1;
      do
      {
        v55 = _readNode(*(*(a1 + 136) + 8 * v54));
        v52 = lappend(v52, v55, v56);
        *(v4 + 72) = v52;
        v54 = v53++;
      }

      while (*(a1 + 128) > v54);
    }
  }

  if (*(a1 + 144))
  {
    v57 = _readNode(**(a1 + 152));
    v5 = list_make1_impl(226, v57, v58);
    *(v4 + 80) = v59;
    if (*(a1 + 144) >= 2uLL)
    {
      v60 = v59;
      v61 = 2;
      v62 = 1;
      do
      {
        v63 = _readNode(*(*(a1 + 152) + 8 * v62));
        v60 = lappend(v60, v63, v64);
        *(v4 + 80) = v60;
        v62 = v61++;
      }

      while (*(a1 + 144) > v62);
    }
  }

  v65 = *(a1 + 160);
  if (v65)
  {
    *(v4 + 88) = _readNode(v65);
  }

  v66 = *(a1 + 168);
  if (v66)
  {
    *(v4 + 96) = _readNode(v66);
  }

  v67 = *(a1 + 176);
  if (v67 == 3)
  {
    v68 = 2;
  }

  else
  {
    v68 = v67 == 2;
  }

  *(v4 + 104) = v68;
  if (*(a1 + 184))
  {
    v69 = _readNode(**(a1 + 192));
    v5 = list_make1_impl(226, v69, v70);
    *(v4 + 112) = v71;
    if (*(a1 + 184) >= 2uLL)
    {
      v72 = v71;
      v73 = 2;
      v74 = 1;
      do
      {
        v75 = _readNode(*(*(a1 + 192) + 8 * v74));
        v72 = lappend(v72, v75, v76);
        *(v4 + 112) = v72;
        v74 = v73++;
      }

      while (*(a1 + 184) > v74);
    }
  }

  v77 = *(a1 + 200);
  if (v77)
  {
    *(v4 + 120) = _readWithClause(v77, v5);
  }

  v78 = *(a1 + 208);
  v79 = v78 - 2;
  v80 = v78 - 1;
  if (v79 >= 3)
  {
    v80 = 0;
  }

  *(v4 + 128) = v80;
  *(v4 + 132) = *(a1 + 212) != 0;
  v81 = *(a1 + 216);
  if (v81)
  {
    *(v4 + 136) = _readSelectStmt(v81);
  }

  v82 = *(a1 + 224);
  if (v82)
  {
    *(v4 + 144) = _readSelectStmt(v82);
  }

  return v4;
}

unint64_t _readAlterTableStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 237;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  v16 = v15 - 2;
  v17 = v15 - 1;
  if (v16 >= 0x31)
  {
    v17 = 0;
  }

  *(v4 + 24) = v17;
  *(v4 + 28) = *(a1 + 52) != 0;
  return v4;
}

_DWORD *_readAlterTableCmd(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v6 = v4;
  *v4 = 238;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x42)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    *(v6 + 1) = pstrdup(v10, v5);
  }

  *(v6 + 8) = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v14 = v12;
    *v12 = 390;
    v15 = *(v11 + 24);
    v16 = v15 - 2;
    v17 = v15 - 1;
    if (v16 >= 3)
    {
      v17 = 0;
    }

    v12[1] = v17;
    v18 = *(v11 + 32);
    if (v18 && *v18)
    {
      *(v14 + 1) = pstrdup(v18, v13);
    }

    v14[4] = *(v11 + 40);
    *(v6 + 3) = v14;
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    *(v6 + 4) = _readNode(v19);
  }

  v6[10] = *(a1 + 64) == 2;
  *(v6 + 44) = *(a1 + 68) != 0;
  return v6;
}

unint64_t _readAlterDomainStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 239;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *v7;
    if (v8)
    {
      *(v4 + 4) = v8;
    }
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v10);
    *(v6 + 8) = v11;
    if (*(a1 + 32) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 40) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v6 + 8) = v12;
        v14 = v13++;
      }

      while (*(a1 + 32) > v14);
    }
  }

  v17 = *(a1 + 48);
  if (v17 && *v17)
  {
    *(v6 + 16) = pstrdup(v17, v5);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    *(v6 + 24) = _readNode(v18);
  }

  *(v6 + 32) = *(a1 + 64) == 2;
  *(v6 + 36) = *(a1 + 68) != 0;
  return v6;
}

void *_readSetOperationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  v5 = v4;
  *v4 = 240;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  *(v4 + 4) = v8;
  *(v4 + 8) = *(a1 + 28) != 0;
  v9 = *(a1 + 32);
  if (v9)
  {
    v5[2] = _readNode(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v5[3] = _readNode(v10);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v12);
    v5[4] = v13;
    if (*(a1 + 48) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 56) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        v5[4] = v14;
        v16 = v15++;
      }

      while (*(a1 + 48) > v16);
    }
  }

  if (*(a1 + 64))
  {
    v19 = _readNode(**(a1 + 72));
    list_make1_impl(226, v19, v20);
    v5[5] = v21;
    if (*(a1 + 64) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 72) + 8 * v24));
        v22 = lappend(v22, v25, v26);
        v5[5] = v22;
        v24 = v23++;
      }

      while (*(a1 + 64) > v24);
    }
  }

  if (*(a1 + 80))
  {
    v27 = _readNode(**(a1 + 88));
    list_make1_impl(226, v27, v28);
    v5[6] = v29;
    if (*(a1 + 80) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 88) + 8 * v32));
        v30 = lappend(v30, v33, v34);
        v5[6] = v30;
        v32 = v31++;
      }

      while (*(a1 + 80) > v32);
    }
  }

  if (*(a1 + 96))
  {
    v35 = _readNode(**(a1 + 104));
    list_make1_impl(226, v35, v36);
    v5[7] = v37;
    if (*(a1 + 96) >= 2uLL)
    {
      v38 = v37;
      v39 = 2;
      v40 = 1;
      do
      {
        v41 = _readNode(*(*(a1 + 104) + 8 * v40));
        v38 = lappend(v38, v41, v42);
        v5[7] = v38;
        v40 = v39++;
      }

      while (*(a1 + 96) > v40);
    }
  }

  return v5;
}

unint64_t _readGrantStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 241;
  *(v4 + 4) = *(a1 + 24) != 0;
  v6 = *(a1 + 28);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  *(v4 + 8) = v7;
  v8 = *(a1 + 32);
  v9 = v8 - 2;
  v10 = v8 - 1;
  if (v9 >= 0x31)
  {
    v10 = 0;
  }

  *(v4 + 12) = v10;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v12);
    *(v5 + 16) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v5 + 16) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  if (*(a1 + 56))
  {
    v19 = _readNode(**(a1 + 64));
    list_make1_impl(226, v19, v20);
    *(v5 + 24) = v21;
    if (*(a1 + 56) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 64) + 8 * v24));
        v22 = lappend(v22, v25, v26);
        *(v5 + 24) = v22;
        v24 = v23++;
      }

      while (*(a1 + 56) > v24);
    }
  }

  if (*(a1 + 72))
  {
    v27 = _readNode(**(a1 + 80));
    list_make1_impl(226, v27, v28);
    *(v5 + 32) = v29;
    if (*(a1 + 72) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 80) + 8 * v32));
        v30 = lappend(v30, v33, v34);
        *(v5 + 32) = v30;
        v32 = v31++;
      }

      while (*(a1 + 72) > v32);
    }
  }

  *(v5 + 40) = *(a1 + 88) != 0;
  *(v5 + 44) = *(a1 + 92) == 2;
  return v5;
}

unint64_t _readGrantRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 242;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  *(v4 + 24) = *(a1 + 56) != 0;
  *(v4 + 25) = *(a1 + 60) != 0;
  v21 = *(a1 + 64);
  if (v21)
  {
    v22 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v24 = v22;
    *v22 = 390;
    v25 = *(v21 + 24);
    v26 = v25 - 2;
    v27 = v25 - 1;
    if (v26 >= 3)
    {
      v27 = 0;
    }

    v22[1] = v27;
    v28 = *(v21 + 32);
    if (v28 && *v28)
    {
      *(v24 + 1) = pstrdup(v28, v23);
    }

    v24[4] = *(v21 + 40);
    *(v4 + 32) = v24;
  }

  *(v4 + 40) = *(a1 + 72) == 2;
  return v4;
}

unint64_t _readAlterDefaultPrivilegesStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 243;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    *(v4 + 16) = _readGrantStmt(v14, v5);
  }

  return v4;
}

_DWORD *_readClosePortalStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 244;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

unint64_t _readClusterStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 245;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  *(v4 + 24) = *(a1 + 40);
  return v4;
}

unint64_t _readCopyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 246;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readNode(v7);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  *(v4 + 33) = *(a1 + 60) != 0;
  v16 = *(a1 + 64);
  if (v16 && *v16)
  {
    *(v4 + 40) = pstrdup(v16, v5);
  }

  if (*(a1 + 72))
  {
    v17 = _readNode(**(a1 + 80));
    list_make1_impl(226, v17, v18);
    *(v4 + 48) = v19;
    if (*(a1 + 72) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 80) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v4 + 48) = v20;
        v22 = v21++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  v25 = *(a1 + 88);
  if (v25)
  {
    *(v4 + 56) = _readNode(v25);
  }

  return v4;
}

unint64_t _readCreateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 247;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    *(v4 + 32) = _readPartitionBoundSpec(v23, v5);
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    *(v4 + 40) = _readPartitionSpec(v24, v5);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    *(v4 + 48) = _readTypeName(v25, v5);
  }

  if (*(a1 + 88))
  {
    v26 = _readNode(**(a1 + 96));
    v5 = list_make1_impl(226, v26, v27);
    *(v4 + 56) = v28;
    if (*(a1 + 88) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 96) + 8 * v31));
        v29 = lappend(v29, v32, v33);
        *(v4 + 56) = v29;
        v31 = v30++;
      }

      while (*(a1 + 88) > v31);
    }
  }

  if (*(a1 + 104))
  {
    v34 = _readNode(**(a1 + 112));
    v5 = list_make1_impl(226, v34, v35);
    *(v4 + 64) = v36;
    if (*(a1 + 104) >= 2uLL)
    {
      v37 = v36;
      v38 = 2;
      v39 = 1;
      do
      {
        v40 = _readNode(*(*(a1 + 112) + 8 * v39));
        v37 = lappend(v37, v40, v41);
        *(v4 + 64) = v37;
        v39 = v38++;
      }

      while (*(a1 + 104) > v39);
    }
  }

  v42 = *(a1 + 120);
  v43 = v42 - 2;
  v44 = v42 - 1;
  if (v43 >= 3)
  {
    v44 = 0;
  }

  *(v4 + 72) = v44;
  v45 = *(a1 + 128);
  if (v45 && *v45)
  {
    *(v4 + 80) = pstrdup(v45, v5);
  }

  v46 = *(a1 + 136);
  if (v46 && *v46)
  {
    *(v4 + 88) = pstrdup(v46, v5);
  }

  *(v4 + 96) = *(a1 + 144) != 0;
  return v4;
}

unint64_t _readDefineStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 248;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 0x31)
  {
    v8 = 0;
  }

  *(v4 + 4) = v8;
  *(v4 + 8) = *(a1 + 28) != 0;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v10);
    *(v5 + 16) = v11;
    if (*(a1 + 32) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 40) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v5 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 32) > v14);
    }
  }

  if (*(a1 + 48))
  {
    v17 = _readNode(**(a1 + 56));
    list_make1_impl(226, v17, v18);
    *(v5 + 24) = v19;
    if (*(a1 + 48) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 56) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v5 + 24) = v20;
        v22 = v21++;
      }

      while (*(a1 + 48) > v22);
    }
  }

  if (*(a1 + 64))
  {
    v25 = _readNode(**(a1 + 72));
    list_make1_impl(226, v25, v26);
    *(v5 + 32) = v27;
    if (*(a1 + 64) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 72) + 8 * v30));
        v28 = lappend(v28, v31, v32);
        *(v5 + 32) = v28;
        v30 = v29++;
      }

      while (*(a1 + 64) > v30);
    }
  }

  *(v5 + 40) = *(a1 + 80) != 0;
  *(v5 + 41) = *(a1 + 84) != 0;
  return v5;
}

unint64_t _readDropStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 249;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  v13 = *(a1 + 40);
  v14 = v13 - 2;
  v15 = v13 - 1;
  if (v14 >= 0x31)
  {
    v15 = 0;
  }

  *(v4 + 16) = v15;
  *(v4 + 20) = *(a1 + 44) == 2;
  *(v4 + 24) = *(a1 + 48) != 0;
  *(v4 + 25) = *(a1 + 52) != 0;
  return v4;
}

unint64_t _readTruncateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 250;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40) != 0;
  *(v4 + 20) = *(a1 + 44) == 2;
  return v4;
}

_DWORD *_readCommentStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  v6 = v4;
  *v4 = 251;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 1) = _readNode(v10);
  }

  v11 = *(a1 + 40);
  if (v11 && *v11)
  {
    *(v6 + 2) = pstrdup(v11, v5);
  }

  return v6;
}

unint64_t _readFetchStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 252;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  *(result + 4) = v8;
  *(result + 8) = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    v10 = result;
    v11 = pstrdup(*(a1 + 40), v5);
    result = v10;
    *(v10 + 16) = v11;
  }

  *(result + 24) = *(a1 + 48) != 0;
  return result;
}

unint64_t _readIndexStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 253;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readRangeVar(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  v9 = *(a1 + 48);
  if (v9 && *v9)
  {
    *(v4 + 32) = pstrdup(v9, v5);
  }

  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, Node, v11);
    *(v4 + 40) = v12;
    if (*(a1 + 56) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 64) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v4 + 40) = v13;
        v15 = v14++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  if (*(a1 + 72))
  {
    v18 = _readNode(**(a1 + 80));
    v5 = list_make1_impl(226, v18, v19);
    *(v4 + 48) = v20;
    if (*(a1 + 72) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 80) + 8 * v23));
        v21 = lappend(v21, v24, v25);
        *(v4 + 48) = v21;
        v23 = v22++;
      }

      while (*(a1 + 72) > v23);
    }
  }

  if (*(a1 + 88))
  {
    v26 = _readNode(**(a1 + 96));
    v5 = list_make1_impl(226, v26, v27);
    *(v4 + 56) = v28;
    if (*(a1 + 88) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 96) + 8 * v31));
        v29 = lappend(v29, v32, v33);
        *(v4 + 56) = v29;
        v31 = v30++;
      }

      while (*(a1 + 88) > v31);
    }
  }

  v34 = *(a1 + 104);
  if (v34)
  {
    *(v4 + 64) = _readNode(v34);
  }

  if (*(a1 + 112))
  {
    v35 = _readNode(**(a1 + 120));
    v5 = list_make1_impl(226, v35, v36);
    *(v4 + 72) = v37;
    if (*(a1 + 112) >= 2uLL)
    {
      v38 = v37;
      v39 = 2;
      v40 = 1;
      do
      {
        v41 = _readNode(*(*(a1 + 120) + 8 * v40));
        v38 = lappend(v38, v41, v42);
        *(v4 + 72) = v38;
        v40 = v39++;
      }

      while (*(a1 + 112) > v40);
    }
  }

  v43 = *(a1 + 128);
  if (v43 && *v43)
  {
    *(v4 + 80) = pstrdup(v43, v5);
  }

  *(v4 + 88) = *(a1 + 136);
  *(v4 + 92) = *(a1 + 140);
  *(v4 + 96) = *(a1 + 144);
  *(v4 + 100) = *(a1 + 148);
  *(v4 + 104) = *(a1 + 152) != 0;
  *(v4 + 105) = *(a1 + 156) != 0;
  *(v4 + 106) = *(a1 + 160) != 0;
  *(v4 + 107) = *(a1 + 164) != 0;
  *(v4 + 108) = *(a1 + 168) != 0;
  *(v4 + 109) = *(a1 + 172) != 0;
  *(v4 + 110) = *(a1 + 176) != 0;
  *(v4 + 111) = *(a1 + 180) != 0;
  *(v4 + 112) = *(a1 + 184) != 0;
  return v4;
}

unint64_t _readCreateFunctionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 254;
  *(v4 + 4) = *(a1 + 24) != 0;
  *(v4 + 5) = *(a1 + 28) != 0;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  if (*(a1 + 48))
  {
    v14 = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, v14, v15);
    *(v4 + 16) = v16;
    if (*(a1 + 48) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 56) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 16) = v17;
        v19 = v18++;
      }

      while (*(a1 + 48) > v19);
    }
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    *(v4 + 24) = _readTypeName(v22, v5);
  }

  if (*(a1 + 72))
  {
    v23 = _readNode(**(a1 + 80));
    list_make1_impl(226, v23, v24);
    *(v4 + 32) = v25;
    if (*(a1 + 72) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 80) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        *(v4 + 32) = v26;
        v28 = v27++;
      }

      while (*(a1 + 72) > v28);
    }
  }

  return v4;
}

_DWORD *_readAlterFunctionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  v6 = v4;
  *v4 = 255;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 1) = _readObjectWithArgs(v10, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v12);
    *(v6 + 2) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v6 + 2) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  return v6;
}

unint64_t _readDoStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 256;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  return v4;
}

_DWORD *_readRenameStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  v6 = v4;
  *v4 = 257;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 28);
  v11 = v10 - 2;
  v12 = v10 - 1;
  if (v11 >= 0x31)
  {
    v12 = 0;
  }

  v4[2] = v12;
  v13 = *(a1 + 32);
  if (v13)
  {
    *(v6 + 2) = _readRangeVar(v13, v5);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    *(v6 + 3) = _readNode(v14);
  }

  v15 = *(a1 + 48);
  if (v15 && *v15)
  {
    *(v6 + 4) = pstrdup(v15, v5);
  }

  v16 = *(a1 + 56);
  if (v16 && *v16)
  {
    *(v6 + 5) = pstrdup(v16, v5);
  }

  v6[12] = *(a1 + 64) == 2;
  *(v6 + 52) = *(a1 + 68) != 0;
  return v6;
}

unint64_t _readRuleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 258;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    *(v4 + 24) = _readNode(v8);
  }

  v9 = *(a1 + 48);
  v10 = v9 - 2;
  v11 = v9 - 1;
  if (v10 >= 6)
  {
    v11 = 0;
  }

  *(v4 + 32) = v11;
  *(v4 + 36) = *(a1 + 52) != 0;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v13);
    *(v4 + 40) = v14;
    if (*(a1 + 56) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 64) + 8 * v17));
        v15 = lappend(v15, v18, v19);
        *(v4 + 40) = v15;
        v17 = v16++;
      }

      while (*(a1 + 56) > v17);
    }
  }

  *(v4 + 48) = *(a1 + 72) != 0;
  return v4;
}

unint64_t _readNotifyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 259;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  return v4;
}

_DWORD *_readListenStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 260;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

_DWORD *_readUnlistenStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 261;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

_DWORD *_readTransactionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 262;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 9)
  {
    v9 = 0;
  }

  v4[1] = v9;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    v5 = list_make1_impl(226, Node, v11);
    *(v6 + 1) = v12;
    if (*(a1 + 32) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 40) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v6 + 1) = v13;
        v15 = v14++;
      }

      while (*(a1 + 32) > v15);
    }
  }

  v18 = *(a1 + 48);
  if (v18 && *v18)
  {
    *(v6 + 2) = pstrdup(v18, v5);
  }

  v19 = *(a1 + 56);
  if (v19 && *v19)
  {
    *(v6 + 3) = pstrdup(v19, v5);
  }

  *(v6 + 32) = *(a1 + 64) != 0;
  return v6;
}

unint64_t _readViewStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 263;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    list_make1_impl(226, v16, v17);
    *(v4 + 40) = v18;
    if (*(a1 + 64) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 72) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 40) = v19;
        v21 = v20++;
      }

      while (*(a1 + 64) > v21);
    }
  }

  v24 = *(a1 + 80);
  if (v24 == 3)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24 == 2;
  }

  *(v4 + 48) = v25;
  return v4;
}

_DWORD *_readLoadStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 264;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

unint64_t _readCreateDomainStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 265;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    *(v4 + 16) = _readTypeName(v14, v5);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readCollateClause(v15, v5);
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  return v4;
}

unint64_t _readCreatedbStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 266;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readDropdbStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 267;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  *(v4 + 16) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v8);
    *(v4 + 24) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 24) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  return v4;
}

unint64_t _readVacuumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 268;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  *(v4 + 24) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readExplainStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 269;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v7);
    *(v4 + 16) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  return v4;
}

unint64_t _readCreateTableAsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 270;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readIntoClause(v7, v5);
  }

  v8 = *(a1 + 40);
  v9 = v8 - 2;
  v10 = v8 - 1;
  if (v9 >= 0x31)
  {
    v10 = 0;
  }

  *(v4 + 24) = v10;
  *(v4 + 28) = *(a1 + 44) != 0;
  *(v4 + 29) = *(a1 + 48) != 0;
  return v4;
}

unint64_t _readCreateSeqStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 271;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  *(v4 + 24) = *(a1 + 48);
  *(v4 + 28) = *(a1 + 52) != 0;
  *(v4 + 29) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readAlterSeqStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 272;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  *(v4 + 24) = *(a1 + 48) != 0;
  *(v4 + 25) = *(a1 + 52) != 0;
  return v4;
}

_DWORD *_readVariableSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  v6 = v4;
  *v4 = 273;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 5)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    *(v6 + 1) = pstrdup(v10, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v12);
    *(v6 + 2) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v6 + 2) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  *(v6 + 24) = *(a1 + 56) != 0;
  return v6;
}

_DWORD *_readVariableShowStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 274;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

_DWORD *_readDiscardStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 8uLL);
  *result = 275;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  result[1] = v7;
  return result;
}

unint64_t _readCreateTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x60uLL);
  *v4 = 276;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readRangeVar(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  *(v4 + 40) = *(a1 + 72) != 0;
  *(v4 + 42) = *(a1 + 76);
  *(v4 + 44) = *(a1 + 80);
  if (*(a1 + 88))
  {
    v24 = _readNode(**(a1 + 96));
    v5 = list_make1_impl(226, v24, v25);
    *(v4 + 48) = v26;
    if (*(a1 + 88) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 96) + 8 * v29));
        v27 = lappend(v27, v30, v31);
        *(v4 + 48) = v27;
        v29 = v28++;
      }

      while (*(a1 + 88) > v29);
    }
  }

  v32 = *(a1 + 104);
  if (v32)
  {
    *(v4 + 56) = _readNode(v32);
  }

  *(v4 + 64) = *(a1 + 112) != 0;
  if (*(a1 + 120))
  {
    v33 = _readNode(**(a1 + 128));
    v5 = list_make1_impl(226, v33, v34);
    *(v4 + 72) = v35;
    if (*(a1 + 120) >= 2uLL)
    {
      v36 = v35;
      v37 = 2;
      v38 = 1;
      do
      {
        v39 = _readNode(*(*(a1 + 128) + 8 * v38));
        v36 = lappend(v36, v39, v40);
        *(v4 + 72) = v36;
        v38 = v37++;
      }

      while (*(a1 + 120) > v38);
    }
  }

  *(v4 + 80) = *(a1 + 136) != 0;
  *(v4 + 81) = *(a1 + 140) != 0;
  v41 = *(a1 + 144);
  if (v41)
  {
    *(v4 + 88) = _readRangeVar(v41, v5);
  }

  return v4;
}

unint64_t _readCreatePLangStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 277;
  *(v4 + 4) = *(a1 + 24) != 0;
  v6 = *(a1 + 32);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  if (*(a1 + 56))
  {
    v15 = _readNode(**(a1 + 64));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  if (*(a1 + 72))
  {
    v23 = _readNode(**(a1 + 80));
    list_make1_impl(226, v23, v24);
    *(v4 + 32) = v25;
    if (*(a1 + 72) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 80) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        *(v4 + 32) = v26;
        v28 = v27++;
      }

      while (*(a1 + 72) > v28);
    }
  }

  *(v4 + 40) = *(a1 + 88) != 0;
  return v4;
}

_DWORD *_readCreateRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  v6 = v4;
  *v4 = 278;
  v7 = *(a1 + 24);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  v4[1] = v8;
  v9 = *(a1 + 32);
  if (v9 && *v9)
  {
    *(v6 + 1) = pstrdup(v9, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v11);
    *(v6 + 2) = v12;
    if (*(a1 + 40) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 48) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v6 + 2) = v13;
        v15 = v14++;
      }

      while (*(a1 + 40) > v15);
    }
  }

  return v6;
}

unint64_t _readAlterRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 279;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v8 = v6;
    *v6 = 390;
    v9 = *(v5 + 24);
    v10 = v9 - 2;
    v11 = v9 - 1;
    if (v10 >= 3)
    {
      v11 = 0;
    }

    v6[1] = v11;
    v12 = *(v5 + 32);
    if (v12 && *v12)
    {
      *(v8 + 1) = pstrdup(v12, v7);
    }

    v8[4] = *(v5 + 40);
    *(v4 + 8) = v8;
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 32) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 40) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 32) > v18);
    }
  }

  *(v4 + 24) = *(a1 + 48);
  return v4;
}

unint64_t _readDropRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 280;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40) != 0;
  return v4;
}

unint64_t _readLockStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 281;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40);
  *(v4 + 20) = *(a1 + 44) != 0;
  return v4;
}

unint64_t _readConstraintsSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 282;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40) != 0;
  return v4;
}

_DWORD *_readReindexStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  v6 = v4;
  *v4 = 283;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 4)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 1) = _readRangeVar(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11 && *v11)
  {
    *(v6 + 2) = pstrdup(v11, v5);
  }

  v6[6] = *(a1 + 48);
  *(v6 + 28) = *(a1 + 52) != 0;
  return v6;
}

unint64_t _readCreateSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 285;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v10 = v8;
    *v8 = 390;
    v11 = *(v7 + 24);
    v12 = v11 - 2;
    v13 = v11 - 1;
    if (v12 >= 3)
    {
      v13 = 0;
    }

    v8[1] = v13;
    v14 = *(v7 + 32);
    if (v14 && *v14)
    {
      *(v10 + 1) = pstrdup(v14, v9);
    }

    v10[4] = *(v7 + 40);
    *(v4 + 16) = v10;
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 40) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 48) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 40) > v20);
    }
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readAlterDatabaseStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 286;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readAlterDatabaseSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 287;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readVariableSetStmt(v7, v5);
  }

  return v4;
}

unint64_t _readAlterRoleSetStmt(void *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 288;
  v6 = a1[3];
  if (v6)
  {
    v7 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v8 = v7;
    *v7 = 390;
    v9 = *(v6 + 24);
    v10 = v9 - 2;
    v11 = v9 - 1;
    if (v10 >= 3)
    {
      v11 = 0;
    }

    v7[1] = v11;
    v12 = *(v6 + 32);
    if (v12 && *v12)
    {
      *(v8 + 1) = pstrdup(v12, v5);
    }

    v8[4] = *(v6 + 40);
    *(v4 + 8) = v8;
  }

  v13 = a1[4];
  if (v13 && *v13)
  {
    *(v4 + 16) = pstrdup(v13, v5);
  }

  v14 = a1[5];
  if (v14)
  {
    *(v4 + 24) = _readVariableSetStmt(v14, v5);
  }

  return v4;
}

unint64_t _readCreateConversionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 289;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14 && *v14)
  {
    *(v4 + 16) = pstrdup(v14, v5);
  }

  v15 = *(a1 + 48);
  if (v15 && *v15)
  {
    *(v4 + 24) = pstrdup(v15, v5);
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  *(v4 + 40) = *(a1 + 72) != 0;
  return v4;
}

unint64_t _readCreateCastStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 290;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readTypeName(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    *(v4 + 24) = _readObjectWithArgs(v8, v5);
  }

  v9 = *(a1 + 48);
  if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 2;
  }

  *(v4 + 32) = v10;
  *(v4 + 36) = *(a1 + 52) != 0;
  return v4;
}

unint64_t _readCreateOpClassStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 291;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  if (*(a1 + 40))
  {
    v14 = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, v14, v15);
    *(v4 + 16) = v16;
    if (*(a1 + 40) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 48) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 16) = v17;
        v19 = v18++;
      }

      while (*(a1 + 40) > v19);
    }
  }

  v22 = *(a1 + 56);
  if (v22 && *v22)
  {
    *(v4 + 24) = pstrdup(v22, v5);
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    *(v4 + 32) = _readTypeName(v23, v5);
  }

  if (*(a1 + 72))
  {
    v24 = _readNode(**(a1 + 80));
    list_make1_impl(226, v24, v25);
    *(v4 + 40) = v26;
    if (*(a1 + 72) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 80) + 8 * v29));
        v27 = lappend(v27, v30, v31);
        *(v4 + 40) = v27;
        v29 = v28++;
      }

      while (*(a1 + 72) > v29);
    }
  }

  *(v4 + 48) = *(a1 + 88) != 0;
  return v4;
}

unint64_t _readCreateOpFamilyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 292;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14 && *v14)
  {
    *(v4 + 16) = pstrdup(v14, v5);
  }

  return v4;
}

unint64_t _readAlterOpFamilyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 293;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14 && *v14)
  {
    *(v4 + 16) = pstrdup(v14, v5);
  }

  *(v4 + 24) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    v15 = _readNode(**(a1 + 64));
    list_make1_impl(226, v15, v16);
    *(v4 + 32) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 32) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  return v4;
}

unint64_t _readPrepareStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 294;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  return v4;
}

unint64_t _readExecuteStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 295;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

_DWORD *_readDeallocateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 296;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6, v5);
      result = v7;
      *(v7 + 1) = v8;
    }
  }

  return result;
}

unint64_t _readDeclareCursorStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 297;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  *(v4 + 16) = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    *(v4 + 24) = _readNode(v7);
  }

  return v4;
}

unint64_t _readCreateTableSpaceStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 298;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v9 = v8;
    *v8 = 390;
    v10 = *(v7 + 24);
    v11 = v10 - 2;
    v12 = v10 - 1;
    if (v11 >= 3)
    {
      v12 = 0;
    }

    v8[1] = v12;
    v13 = *(v7 + 32);
    if (v13 && *v13)
    {
      *(v9 + 1) = pstrdup(v13, v5);
    }

    v9[4] = *(v7 + 40);
    *(v4 + 16) = v9;
  }

  v14 = *(a1 + 40);
  if (v14 && *v14)
  {
    *(v4 + 24) = pstrdup(v14, v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v16);
    *(v4 + 32) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 32) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  return v4;
}

unint64_t _readDropTableSpaceStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 299;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 24), v5);
    result = v7;
    *(v7 + 8) = v8;
  }

  *(result + 16) = *(a1 + 32) != 0;
  return result;
}

_DWORD *_readAlterObjectDependsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 300;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 1) = _readRangeVar(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *(v6 + 2) = _readNode(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(v6 + 3) = _readNode(v12);
  }

  *(v6 + 32) = *(a1 + 56) != 0;
  return v6;
}

_DWORD *_readAlterObjectSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 301;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v6 + 1) = _readRangeVar(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *(v6 + 2) = _readNode(v11);
  }

  v12 = *(a1 + 48);
  if (v12 && *v12)
  {
    *(v6 + 3) = pstrdup(v12, v5);
  }

  *(v6 + 32) = *(a1 + 56) != 0;
  return v6;
}

void *_readAlterOwnerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  v6 = v4;
  *v4 = 302;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    v6[1] = _readRangeVar(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v6[2] = _readNode(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v15 = v13;
    *v13 = 390;
    v16 = *(v12 + 24);
    v17 = v16 - 2;
    v18 = v16 - 1;
    if (v17 >= 3)
    {
      v18 = 0;
    }

    v13[1] = v18;
    v19 = *(v12 + 32);
    if (v19 && *v19)
    {
      *(v15 + 1) = pstrdup(v19, v14);
    }

    v15[4] = *(v12 + 40);
    v6[3] = v15;
  }

  return v6;
}

unint64_t _readAlterOperatorStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 303;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readObjectWithArgs(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readAlterTypeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 304;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  return v4;
}

unint64_t _readDropOwnedStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 305;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40) == 2;
  return v4;
}

unint64_t _readReassignOwnedStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 306;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v16 = v14;
    *v14 = 390;
    v17 = *(v13 + 24);
    v18 = v17 - 2;
    v19 = v17 - 1;
    if (v18 >= 3)
    {
      v19 = 0;
    }

    v14[1] = v19;
    v20 = *(v13 + 32);
    if (v20 && *v20)
    {
      *(v16 + 1) = pstrdup(v20, v15);
    }

    v16[4] = *(v13 + 40);
    *(v4 + 16) = v16;
  }

  return v4;
}

unint64_t _readCompositeTypeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 307;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readCreateEnumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 308;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  return v4;
}

unint64_t _readCreateRangeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 309;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  return v4;
}

unint64_t _readAlterEnumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 310;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14 && *v14)
  {
    *(v4 + 16) = pstrdup(v14, v5);
  }

  v15 = *(a1 + 48);
  if (v15 && *v15)
  {
    *(v4 + 24) = pstrdup(v15, v5);
  }

  v16 = *(a1 + 56);
  if (v16 && *v16)
  {
    *(v4 + 32) = pstrdup(v16, v5);
  }

  *(v4 + 40) = *(a1 + 64) != 0;
  *(v4 + 41) = *(a1 + 68) != 0;
  return v4;
}

unint64_t _readAlterTSDictionaryStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 311;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  return v4;
}

_DWORD *_readAlterTSConfigurationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v5 = v4;
  *v4 = 312;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 4)
  {
    v8 = 0;
  }

  v4[1] = v8;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v10);
    *(v5 + 1) = v11;
    if (*(a1 + 32) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 40) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v5 + 1) = v12;
        v14 = v13++;
      }

      while (*(a1 + 32) > v14);
    }
  }

  if (*(a1 + 48))
  {
    v17 = _readNode(**(a1 + 56));
    list_make1_impl(226, v17, v18);
    *(v5 + 2) = v19;
    if (*(a1 + 48) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 56) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v5 + 2) = v20;
        v22 = v21++;
      }

      while (*(a1 + 48) > v22);
    }
  }

  if (*(a1 + 64))
  {
    v25 = _readNode(**(a1 + 72));
    list_make1_impl(226, v25, v26);
    *(v5 + 3) = v27;
    if (*(a1 + 64) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 72) + 8 * v30));
        v28 = lappend(v28, v31, v32);
        *(v5 + 3) = v28;
        v30 = v29++;
      }

      while (*(a1 + 64) > v30);
    }
  }

  *(v5 + 32) = *(a1 + 80) != 0;
  *(v5 + 33) = *(a1 + 84) != 0;
  *(v5 + 34) = *(a1 + 88) != 0;
  return v5;
}

unint64_t _readCreateFdwStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 313;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  return v4;
}

unint64_t _readAlterFdwStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 314;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  return v4;
}

unint64_t _readCreateForeignServerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 315;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  v9 = *(a1 + 48);
  if (v9 && *v9)
  {
    *(v4 + 32) = pstrdup(v9, v5);
  }

  *(v4 + 40) = *(a1 + 56) != 0;
  if (*(a1 + 64))
  {
    Node = _readNode(**(a1 + 72));
    list_make1_impl(226, Node, v11);
    *(v4 + 48) = v12;
    if (*(a1 + 64) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 72) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v4 + 48) = v13;
        v15 = v14++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  return v4;
}

unint64_t _readAlterForeignServerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 316;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readCreateUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 317;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v8 = v7;
    *v7 = 390;
    v9 = *(v6 + 24);
    v10 = v9 - 2;
    v11 = v9 - 1;
    if (v10 >= 3)
    {
      v11 = 0;
    }

    v7[1] = v11;
    v12 = *(v6 + 32);
    if (v12 && *v12)
    {
      *(v8 + 1) = pstrdup(v12, v5);
    }

    v8[4] = *(v6 + 40);
    *(v4 + 8) = v8;
  }

  v13 = *(a1 + 32);
  if (v13 && *v13)
  {
    *(v4 + 16) = pstrdup(v13, v5);
  }

  *(v4 + 24) = *(a1 + 40) != 0;
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v15);
    *(v4 + 32) = v16;
    if (*(a1 + 48) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 56) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 32) = v17;
        v19 = v18++;
      }

      while (*(a1 + 48) > v19);
    }
  }

  return v4;
}

unint64_t _readAlterUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 318;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v8 = v7;
    *v7 = 390;
    v9 = *(v6 + 24);
    v10 = v9 - 2;
    v11 = v9 - 1;
    if (v10 >= 3)
    {
      v11 = 0;
    }

    v7[1] = v11;
    v12 = *(v6 + 32);
    if (v12 && *v12)
    {
      *(v8 + 1) = pstrdup(v12, v5);
    }

    v8[4] = *(v6 + 40);
    *(v4 + 8) = v8;
  }

  v13 = *(a1 + 32);
  if (v13 && *v13)
  {
    *(v4 + 16) = pstrdup(v13, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v15);
    *(v4 + 24) = v16;
    if (*(a1 + 40) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 48) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 24) = v17;
        v19 = v18++;
      }

      while (*(a1 + 40) > v19);
    }
  }

  return v4;
}

unint64_t _readDropUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 319;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
    v8 = v7;
    *v7 = 390;
    v9 = *(v6 + 24);
    v10 = v9 - 2;
    v11 = v9 - 1;
    if (v10 >= 3)
    {
      v11 = 0;
    }

    v7[1] = v11;
    v12 = *(v6 + 32);
    if (v12 && *v12)
    {
      *(v8 + 1) = pstrdup(v12, v5);
    }

    v8[4] = *(v6 + 40);
    *(v4 + 8) = v8;
  }

  v13 = *(a1 + 32);
  if (v13 && *v13)
  {
    *(v4 + 16) = pstrdup(v13, v5);
  }

  *(v4 + 24) = *(a1 + 40) != 0;
  return v4;
}

unint64_t _readAlterTableSpaceOptionsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 320;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  *(v4 + 24) = *(a1 + 48) != 0;
  return v4;
}

unint64_t _readAlterTableMoveAllStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 321;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  *(v4 + 16) = v9;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, Node, v11);
    *(v4 + 24) = v12;
    if (*(a1 + 40) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 48) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v4 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 40) > v15);
    }
  }

  v18 = *(a1 + 56);
  if (v18 && *v18)
  {
    *(v4 + 32) = pstrdup(v18, v5);
  }

  *(v4 + 40) = *(a1 + 64) != 0;
  return v4;
}

void *_readSecLabelStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  v6 = v4;
  *v4 = 322;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10)
  {
    v6[1] = _readNode(v10);
  }

  v11 = *(a1 + 40);
  if (v11 && *v11)
  {
    v6[2] = pstrdup(v11, v5);
  }

  v12 = *(a1 + 48);
  if (v12 && *v12)
  {
    v6[3] = pstrdup(v12, v5);
  }

  return v6;
}

unint64_t _readCreateForeignTableStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 323;
  Stmt = _readCreateStmt(*(a1 + 24), v5);
  v7 = *Stmt;
  v8 = *(Stmt + 32);
  *(v4 + 16) = *(Stmt + 16);
  *(v4 + 32) = v8;
  *v4 = v7;
  v9 = *(Stmt + 48);
  v10 = *(Stmt + 64);
  v11 = *(Stmt + 80);
  *(v4 + 96) = *(Stmt + 96);
  *(v4 + 64) = v10;
  *(v4 + 80) = v11;
  *(v4 + 48) = v9;
  v12 = *(a1 + 32);
  if (v12 && *v12)
  {
    *(v4 + 104) = pstrdup(v12, *&v9);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v14);
    *(v4 + 112) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 112) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  *v4 = 323;
  return v4;
}

unint64_t _readImportForeignSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 324;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  v9 = *(a1 + 48);
  if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 2;
  }

  *(v4 + 32) = v10;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v12);
    *(v4 + 40) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v4 + 40) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  if (*(a1 + 72))
  {
    v19 = _readNode(**(a1 + 80));
    list_make1_impl(226, v19, v20);
    *(v4 + 48) = v21;
    if (*(a1 + 72) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 80) + 8 * v24));
        v22 = lappend(v22, v25, v26);
        *(v4 + 48) = v22;
        v24 = v23++;
      }

      while (*(a1 + 72) > v24);
    }
  }

  return v4;
}

unint64_t _readCreateExtensionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 325;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  *(v4 + 16) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v8);
    *(v4 + 24) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 24) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  return v4;
}

unint64_t _readAlterExtensionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 326;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readAlterExtensionContentsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 327;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  *(v4 + 16) = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  *(v4 + 20) = v9;
  v10 = *(a1 + 40);
  if (v10)
  {
    *(v4 + 24) = _readNode(v10);
  }

  return v4;
}

unint64_t _readCreateEventTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 328;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  return v4;
}

unint64_t _readAlterEventTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 329;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 24), v5);
    result = v7;
    *(v7 + 8) = v8;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *v9;
    if (v10)
    {
      *(result + 16) = v10;
    }
  }

  return result;
}

unint64_t _readRefreshMatViewStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 330;
  *(result + 4) = *(a1 + 24) != 0;
  *(result + 5) = *(a1 + 28) != 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = result;
    RangeVar = _readRangeVar(v6, v5);
    result = v7;
    *(v7 + 8) = RangeVar;
  }

  return result;
}

unint64_t _readReplicaIdentityStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 331;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if (v7)
    {
      *(result + 4) = v7;
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if (*v8)
    {
      v9 = result;
      v10 = pstrdup(v8, v5);
      result = v9;
      *(v9 + 8) = v10;
    }
  }

  return result;
}

_DWORD *_readAlterSystemStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 332;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = result;
    VariableSetStmt = _readVariableSetStmt(v6, v5);
    result = v7;
    *(v7 + 1) = VariableSetStmt;
  }

  return result;
}

unint64_t _readCreatePolicyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 333;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readRangeVar(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  *(v4 + 32) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node, v10);
    *(v4 + 40) = v11;
    if (*(a1 + 56) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 64) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v4 + 40) = v12;
        v14 = v13++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    *(v4 + 48) = _readNode(v17);
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    *(v4 + 56) = _readNode(v18);
  }

  return v4;
}

unint64_t _readAlterPolicyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 334;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readRangeVar(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(v4 + 32) = _readNode(v16);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *(v4 + 40) = _readNode(v17);
  }

  return v4;
}

unint64_t _readCreateTransformStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 335;
  *(v4 + 4) = *(a1 + 24) != 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readTypeName(v6, v5);
  }

  v7 = *(a1 + 40);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    *(v4 + 24) = _readObjectWithArgs(v8, v5);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(v4 + 32) = _readObjectWithArgs(v9, v5);
  }

  return v4;
}

unint64_t _readCreateAmStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 336;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *v15;
    if (v16)
    {
      *(v4 + 24) = v16;
    }
  }

  return v4;
}

unint64_t _readCreatePublicationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 337;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  *(v4 + 32) = *(a1 + 64) != 0;
  return v4;
}

unint64_t _readAlterPublicationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 338;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v15 = _readNode(**(a1 + 56));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 48) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 56) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 48) > v20);
    }
  }

  *(v4 + 32) = *(a1 + 64) != 0;
  v23 = *(a1 + 68);
  v24 = v23 - 2;
  v25 = v23 - 1;
  if (v24 >= 3)
  {
    v25 = 0;
  }

  *(v4 + 36) = v25;
  return v4;
}

unint64_t _readCreateSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 339;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  return v4;
}

void *_readAlterSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 340;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 4)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    v6[1] = pstrdup(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11 && *v11)
  {
    v6[2] = pstrdup(v11, v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v13);
    v6[3] = v14;
    if (*(a1 + 48) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 56) + 8 * v17));
        v15 = lappend(v15, v18, v19);
        v6[3] = v15;
        v17 = v16++;
      }

      while (*(a1 + 48) > v17);
    }
  }

  if (*(a1 + 64))
  {
    v20 = _readNode(**(a1 + 72));
    list_make1_impl(226, v20, v21);
    v6[4] = v22;
    if (*(a1 + 64) >= 2uLL)
    {
      v23 = v22;
      v24 = 2;
      v25 = 1;
      do
      {
        v26 = _readNode(*(*(a1 + 72) + 8 * v25));
        v23 = lappend(v23, v26, v27);
        v6[4] = v23;
        v25 = v24++;
      }

      while (*(a1 + 64) > v25);
    }
  }

  return v6;
}

unint64_t _readDropSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 341;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 24), v5);
    result = v7;
    *(v7 + 8) = v8;
  }

  *(result + 16) = *(a1 + 32) != 0;
  *(result + 20) = *(a1 + 36) == 2;
  return result;
}

unint64_t _readCreateStatsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 342;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  if (*(a1 + 40))
  {
    v14 = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, v14, v15);
    *(v4 + 16) = v16;
    if (*(a1 + 40) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 48) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 16) = v17;
        v19 = v18++;
      }

      while (*(a1 + 40) > v19);
    }
  }

  if (*(a1 + 56))
  {
    v22 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v22, v23);
    *(v4 + 24) = v24;
    if (*(a1 + 56) >= 2uLL)
    {
      v25 = v24;
      v26 = 2;
      v27 = 1;
      do
      {
        v28 = _readNode(*(*(a1 + 64) + 8 * v27));
        v25 = lappend(v25, v28, v29);
        *(v4 + 24) = v25;
        v27 = v26++;
      }

      while (*(a1 + 56) > v27);
    }
  }

  if (*(a1 + 72))
  {
    v30 = _readNode(**(a1 + 80));
    v5 = list_make1_impl(226, v30, v31);
    *(v4 + 32) = v32;
    if (*(a1 + 72) >= 2uLL)
    {
      v33 = v32;
      v34 = 2;
      v35 = 1;
      do
      {
        v36 = _readNode(*(*(a1 + 80) + 8 * v35));
        v33 = lappend(v33, v36, v37);
        *(v4 + 32) = v33;
        v35 = v34++;
      }

      while (*(a1 + 72) > v35);
    }
  }

  v38 = *(a1 + 88);
  if (v38 && *v38)
  {
    *(v4 + 40) = pstrdup(v38, v5);
  }

  *(v4 + 48) = *(a1 + 96) != 0;
  return v4;
}

unint64_t _readAlterCollationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 343;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  return v4;
}

unint64_t _readCallStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 344;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readFuncCall(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readFuncExpr(v7, v5);
  }

  return v4;
}

unint64_t _readAlterStatsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 345;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40);
  *(v4 + 20) = *(a1 + 44) != 0;
  return v4;
}

_DWORD *_readAExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v5 = v4;
  *v4 = 346;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 0xF)
  {
    v8 = 0;
  }

  v4[1] = v8;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v10);
    *(v5 + 1) = v11;
    if (*(a1 + 32) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 40) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v5 + 1) = v12;
        v14 = v13++;
      }

      while (*(a1 + 32) > v14);
    }
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    *(v5 + 2) = _readNode(v17);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    *(v5 + 3) = _readNode(v18);
  }

  v5[8] = *(a1 + 64);
  return v5;
}

unint64_t _readColumnRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 347;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40);
  return v4;
}

_DWORD *_readAConst(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 349;
  if (*(a1 + 24))
  {
    v5 = result;
    Node = _readNode(*(a1 + 24));
    result = v5;
    *(v5 + 2) = *Node;
  }

  result[6] = *(a1 + 32);
  return result;
}

unint64_t _readFuncCall(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 350;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  if (*(a1 + 40))
  {
    v14 = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, v14, v15);
    *(v4 + 16) = v16;
    if (*(a1 + 40) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 48) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 16) = v17;
        v19 = v18++;
      }

      while (*(a1 + 40) > v19);
    }
  }

  if (*(a1 + 56))
  {
    v22 = _readNode(**(a1 + 64));
    v5 = list_make1_impl(226, v22, v23);
    *(v4 + 24) = v24;
    if (*(a1 + 56) >= 2uLL)
    {
      v25 = v24;
      v26 = 2;
      v27 = 1;
      do
      {
        v28 = _readNode(*(*(a1 + 64) + 8 * v27));
        v25 = lappend(v25, v28, v29);
        *(v4 + 24) = v25;
        v27 = v26++;
      }

      while (*(a1 + 56) > v27);
    }
  }

  v30 = *(a1 + 72);
  if (v30)
  {
    *(v4 + 32) = _readNode(v30);
  }

  *(v4 + 40) = *(a1 + 80) != 0;
  *(v4 + 41) = *(a1 + 84) != 0;
  *(v4 + 42) = *(a1 + 88) != 0;
  *(v4 + 43) = *(a1 + 92) != 0;
  v31 = *(a1 + 96);
  if (v31)
  {
    *(v4 + 48) = _readWindowDef(v31, v5);
  }

  *(v4 + 56) = *(a1 + 104);
  return v4;
}

unint64_t _readAIndices(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 352;
  *(v4 + 4) = *(a1 + 24) != 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v4 + 16) = _readNode(v6);
  }

  return v4;
}

unint64_t _readAIndirection(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 353;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v7);
    *(v4 + 16) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  return v4;
}

unint64_t _readAArrayExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 354;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40);
  return v4;
}

unint64_t _readResTarget(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 355;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    *(v4 + 24) = _readNode(v15);
  }

  *(v4 + 32) = *(a1 + 56);
  return v4;
}

_DWORD *_readMultiAssignRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 356;
  if (*(a1 + 24))
  {
    v5 = result;
    Node = _readNode(*(a1 + 24));
    result = v5;
    *(v5 + 1) = Node;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

unint64_t _readTypeCast(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 357;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  *(v4 + 24) = *(a1 + 40);
  return v4;
}

unint64_t _readCollateClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 358;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v7);
    *(v4 + 16) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  *(v4 + 24) = *(a1 + 48);
  return v4;
}

unint64_t _readSortBy(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 359;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  v6 = *(a1 + 32);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  *(v4 + 16) = v8;
  v9 = *(a1 + 36);
  if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 2;
  }

  *(v4 + 20) = v10;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v12);
    *(v4 + 24) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17, v18);
        *(v4 + 24) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  *(v4 + 32) = *(a1 + 56);
  return v4;
}

unint64_t _readWindowDef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x48uLL);
  *v4 = 360;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  v24 = *(a1 + 80);
  if (v24)
  {
    *(v4 + 48) = _readNode(v24);
  }

  v25 = *(a1 + 88);
  if (v25)
  {
    *(v4 + 56) = _readNode(v25);
  }

  *(v4 + 64) = *(a1 + 96);
  return v4;
}

unint64_t _readRangeSubselect(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 361;
  *(v4 + 4) = *(a1 + 24) != 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    *(v4 + 16) = _readAlias(v7, v5);
  }

  return v4;
}

unint64_t _readRangeFunction(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 362;
  *(v4 + 4) = *(a1 + 24) != 0;
  *(v4 + 5) = *(a1 + 28) != 0;
  *(v4 + 6) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 40) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 48) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    *(v4 + 16) = _readAlias(v14, v5);
  }

  if (*(a1 + 64))
  {
    v15 = _readNode(**(a1 + 72));
    list_make1_impl(226, v15, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 64) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 72) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 64) > v20);
    }
  }

  return v4;
}

unint64_t _readRangeTableSample(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 363;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v7);
    *(v4 + 16) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  if (*(a1 + 48))
  {
    v14 = _readNode(**(a1 + 56));
    list_make1_impl(226, v14, v15);
    *(v4 + 24) = v16;
    if (*(a1 + 48) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 56) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 24) = v17;
        v19 = v18++;
      }

      while (*(a1 + 48) > v19);
    }
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    *(v4 + 32) = _readNode(v22);
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readRangeTableFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 364;
  *(v4 + 4) = *(a1 + 24) != 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    *(v4 + 16) = _readNode(v7);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 48) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 56) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    v5 = list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 64) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 72) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 64) > v21);
    }
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    *(v4 + 40) = _readAlias(v24, v5);
  }

  *(v4 + 48) = *(a1 + 88);
  return v4;
}

unint64_t _readRangeTableFuncCol(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 365;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  *(v4 + 24) = *(a1 + 40) != 0;
  *(v4 + 25) = *(a1 + 44) != 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    *(v4 + 32) = _readNode(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(v4 + 40) = _readNode(v9);
  }

  *(v4 + 48) = *(a1 + 64);
  return v4;
}

unint64_t _readTypeName(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 366;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40);
  *(v4 + 20) = *(a1 + 44) != 0;
  *(v4 + 21) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    v13 = _readNode(**(a1 + 64));
    list_make1_impl(226, v13, v14);
    *(v4 + 24) = v15;
    if (*(a1 + 56) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 64) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 24) = v16;
        v18 = v17++;
      }

      while (*(a1 + 56) > v18);
    }
  }

  *(v4 + 32) = *(a1 + 72);
  if (*(a1 + 80))
  {
    v21 = _readNode(**(a1 + 88));
    list_make1_impl(226, v21, v22);
    *(v4 + 40) = v23;
    if (*(a1 + 80) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 88) + 8 * v26));
        v24 = lappend(v24, v27, v28);
        *(v4 + 40) = v24;
        v26 = v25++;
      }

      while (*(a1 + 80) > v26);
    }
  }

  *(v4 + 48) = *(a1 + 96);
  return v4;
}

unint64_t _readColumnDef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 367;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  *(v4 + 24) = *(a1 + 40);
  *(v4 + 28) = *(a1 + 44) != 0;
  *(v4 + 29) = *(a1 + 48) != 0;
  *(v4 + 30) = *(a1 + 52) != 0;
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *v8;
    if (v9)
    {
      *(v4 + 31) = v9;
    }
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    *(v4 + 32) = _readNode(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    *(v4 + 40) = _readNode(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *v12;
    if (v13)
    {
      *(v4 + 48) = v13;
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    *(v4 + 56) = _readRangeVar(v14, v5);
  }

  v15 = *(a1 + 96);
  if (v15)
  {
    v16 = *v15;
    if (v16)
    {
      *(v4 + 64) = v16;
    }
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    *(v4 + 72) = _readCollateClause(v17, v5);
  }

  *(v4 + 80) = *(a1 + 112);
  if (*(a1 + 120))
  {
    Node = _readNode(**(a1 + 128));
    list_make1_impl(226, Node, v19);
    *(v4 + 88) = v20;
    if (*(a1 + 120) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 128) + 8 * v23));
        v21 = lappend(v21, v24, v25);
        *(v4 + 88) = v21;
        v23 = v22++;
      }

      while (*(a1 + 120) > v23);
    }
  }

  if (*(a1 + 136))
  {
    v26 = _readNode(**(a1 + 144));
    list_make1_impl(226, v26, v27);
    *(v4 + 96) = v28;
    if (*(a1 + 136) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 144) + 8 * v31));
        v29 = lappend(v29, v32, v33);
        *(v4 + 96) = v29;
        v31 = v30++;
      }

      while (*(a1 + 136) > v31);
    }
  }

  *(v4 + 104) = *(a1 + 152);
  return v4;
}

unint64_t _readIndexElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 368;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readNode(v7);
  }

  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 24) = pstrdup(v8, v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v10);
    *(v4 + 32) = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v4 + 32) = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  if (*(a1 + 64))
  {
    v17 = _readNode(**(a1 + 72));
    list_make1_impl(226, v17, v18);
    *(v4 + 40) = v19;
    if (*(a1 + 64) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 72) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v4 + 40) = v20;
        v22 = v21++;
      }

      while (*(a1 + 64) > v22);
    }
  }

  if (*(a1 + 80))
  {
    v25 = _readNode(**(a1 + 88));
    list_make1_impl(226, v25, v26);
    *(v4 + 48) = v27;
    if (*(a1 + 80) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 88) + 8 * v30));
        v28 = lappend(v28, v31, v32);
        *(v4 + 48) = v28;
        v30 = v29++;
      }

      while (*(a1 + 80) > v30);
    }
  }

  v33 = *(a1 + 96);
  v34 = v33 - 2;
  v35 = v33 - 1;
  if (v34 >= 3)
  {
    v35 = 0;
  }

  *(v4 + 56) = v35;
  v36 = *(a1 + 100);
  if (v36 == 3)
  {
    v37 = 2;
  }

  else
  {
    v37 = v36 == 2;
  }

  *(v4 + 60) = v37;
  return v4;
}

_DWORD *_readConstraint(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xB0uLL);
  v6 = v4;
  *v4 = 369;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0xD)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    *(v6 + 1) = pstrdup(v10, v5);
  }

  *(v6 + 16) = *(a1 + 40) != 0;
  *(v6 + 17) = *(a1 + 44) != 0;
  v6[5] = *(a1 + 48);
  *(v6 + 24) = *(a1 + 52) != 0;
  v11 = *(a1 + 56);
  if (v11)
  {
    *(v6 + 4) = _readNode(v11);
  }

  v12 = *(a1 + 64);
  if (v12 && *v12)
  {
    *(v6 + 5) = pstrdup(v12, v5);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *v13;
    if (v14)
    {
      *(v6 + 48) = v14;
    }
  }

  if (*(a1 + 80))
  {
    Node = _readNode(**(a1 + 88));
    v5 = list_make1_impl(226, Node, v16);
    *(v6 + 7) = v17;
    if (*(a1 + 80) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 88) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v6 + 7) = v18;
        v20 = v19++;
      }

      while (*(a1 + 80) > v20);
    }
  }

  if (*(a1 + 96))
  {
    v23 = _readNode(**(a1 + 104));
    v5 = list_make1_impl(226, v23, v24);
    *(v6 + 8) = v25;
    if (*(a1 + 96) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 104) + 8 * v28));
        v26 = lappend(v26, v29, v30);
        *(v6 + 8) = v26;
        v28 = v27++;
      }

      while (*(a1 + 96) > v28);
    }
  }

  if (*(a1 + 112))
  {
    v31 = _readNode(**(a1 + 120));
    v5 = list_make1_impl(226, v31, v32);
    *(v6 + 9) = v33;
    if (*(a1 + 112) >= 2uLL)
    {
      v34 = v33;
      v35 = 2;
      v36 = 1;
      do
      {
        v37 = _readNode(*(*(a1 + 120) + 8 * v36));
        v34 = lappend(v34, v37, v38);
        *(v6 + 9) = v34;
        v36 = v35++;
      }

      while (*(a1 + 112) > v36);
    }
  }

  if (*(a1 + 128))
  {
    v39 = _readNode(**(a1 + 136));
    v5 = list_make1_impl(226, v39, v40);
    *(v6 + 10) = v41;
    if (*(a1 + 128) >= 2uLL)
    {
      v42 = v41;
      v43 = 2;
      v44 = 1;
      do
      {
        v45 = _readNode(*(*(a1 + 136) + 8 * v44));
        v42 = lappend(v42, v45, v46);
        *(v6 + 10) = v42;
        v44 = v43++;
      }

      while (*(a1 + 128) > v44);
    }
  }

  v47 = *(a1 + 144);
  if (v47 && *v47)
  {
    *(v6 + 11) = pstrdup(v47, v5);
  }

  v48 = *(a1 + 152);
  if (v48 && *v48)
  {
    *(v6 + 12) = pstrdup(v48, v5);
  }

  *(v6 + 104) = *(a1 + 160) != 0;
  v49 = *(a1 + 168);
  if (v49 && *v49)
  {
    *(v6 + 14) = pstrdup(v49, v5);
  }

  v50 = *(a1 + 176);
  if (v50)
  {
    *(v6 + 15) = _readNode(v50);
  }

  v51 = *(a1 + 184);
  if (v51)
  {
    *(v6 + 16) = _readRangeVar(v51, v5);
  }

  if (*(a1 + 192))
  {
    v52 = _readNode(**(a1 + 200));
    list_make1_impl(226, v52, v53);
    *(v6 + 17) = v54;
    if (*(a1 + 192) >= 2uLL)
    {
      v55 = v54;
      v56 = 2;
      v57 = 1;
      do
      {
        v58 = _readNode(*(*(a1 + 200) + 8 * v57));
        v55 = lappend(v55, v58, v59);
        *(v6 + 17) = v55;
        v57 = v56++;
      }

      while (*(a1 + 192) > v57);
    }
  }

  if (*(a1 + 208))
  {
    v60 = _readNode(**(a1 + 216));
    list_make1_impl(226, v60, v61);
    *(v6 + 18) = v62;
    if (*(a1 + 208) >= 2uLL)
    {
      v63 = v62;
      v64 = 2;
      v65 = 1;
      do
      {
        v66 = _readNode(*(*(a1 + 216) + 8 * v65));
        v63 = lappend(v63, v66, v67);
        *(v6 + 18) = v63;
        v65 = v64++;
      }

      while (*(a1 + 208) > v65);
    }
  }

  v68 = *(a1 + 224);
  if (v68)
  {
    v69 = *v68;
    if (v69)
    {
      *(v6 + 152) = v69;
    }
  }

  v70 = *(a1 + 232);
  if (v70)
  {
    v71 = *v70;
    if (v71)
    {
      *(v6 + 153) = v71;
    }
  }

  v72 = *(a1 + 240);
  if (v72)
  {
    v73 = *v72;
    if (v73)
    {
      *(v6 + 154) = v73;
    }
  }

  if (*(a1 + 248))
  {
    v74 = _readNode(**(a1 + 256));
    list_make1_impl(226, v74, v75);
    *(v6 + 20) = v76;
    if (*(a1 + 248) >= 2uLL)
    {
      v77 = v76;
      v78 = 2;
      v79 = 1;
      do
      {
        v80 = _readNode(*(*(a1 + 256) + 8 * v79));
        v77 = lappend(v77, v80, v81);
        *(v6 + 20) = v77;
        v79 = v78++;
      }

      while (*(a1 + 248) > v79);
    }
  }

  v6[42] = *(a1 + 264);
  *(v6 + 172) = *(a1 + 268) != 0;
  *(v6 + 173) = *(a1 + 272) != 0;
  return v6;
}

unint64_t _readDefElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 370;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    *(v4 + 24) = _readNode(v8);
  }

  v9 = *(a1 + 48);
  v10 = v9 - 2;
  v11 = v9 - 1;
  if (v10 >= 3)
  {
    v11 = 0;
  }

  *(v4 + 32) = v11;
  *(v4 + 36) = *(a1 + 52);
  return v4;
}

unint64_t _readRangeTblEntry(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xF0uLL);
  v6 = v4;
  *v4 = 371;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 8)
  {
    v9 = 0;
  }

  *(v4 + 4) = v9;
  *(v4 + 8) = *(a1 + 28);
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *v10;
    if (v11)
    {
      *(v4 + 12) = v11;
    }
  }

  *(v4 + 16) = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12)
  {
    *(v6 + 24) = _readTableSampleClause(v12, v5);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    *(v6 + 32) = _readQuery(v13, v5);
  }

  *(v6 + 40) = *(a1 + 64) != 0;
  v14 = *(a1 + 68);
  v15 = v14 - 2;
  v16 = v14 - 1;
  if (v15 >= 7)
  {
    v16 = 0;
  }

  *(v6 + 44) = v16;
  *(v6 + 48) = *(a1 + 72);
  if (*(a1 + 80))
  {
    Node = _readNode(**(a1 + 88));
    v5 = list_make1_impl(226, Node, v18);
    *(v6 + 56) = v19;
    if (*(a1 + 80) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 88) + 8 * v22));
        v20 = lappend(v20, v23, v24);
        *(v6 + 56) = v20;
        v22 = v21++;
      }

      while (*(a1 + 80) > v22);
    }
  }

  if (*(a1 + 96))
  {
    v25 = _readNode(**(a1 + 104));
    v5 = list_make1_impl(226, v25, v26);
    *(v6 + 64) = v27;
    if (*(a1 + 96) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 104) + 8 * v30));
        v28 = lappend(v28, v31, v32);
        *(v6 + 64) = v28;
        v30 = v29++;
      }

      while (*(a1 + 96) > v30);
    }
  }

  if (*(a1 + 112))
  {
    v33 = _readNode(**(a1 + 120));
    v5 = list_make1_impl(226, v33, v34);
    *(v6 + 72) = v35;
    if (*(a1 + 112) >= 2uLL)
    {
      v36 = v35;
      v37 = 2;
      v38 = 1;
      do
      {
        v39 = _readNode(*(*(a1 + 120) + 8 * v38));
        v36 = lappend(v36, v39, v40);
        *(v6 + 72) = v36;
        v38 = v37++;
      }

      while (*(a1 + 112) > v38);
    }
  }

  if (*(a1 + 128))
  {
    v41 = _readNode(**(a1 + 136));
    v5 = list_make1_impl(226, v41, v42);
    *(v6 + 80) = v43;
    if (*(a1 + 128) >= 2uLL)
    {
      v44 = v43;
      v45 = 2;
      v46 = 1;
      do
      {
        v47 = _readNode(*(*(a1 + 136) + 8 * v46));
        v44 = lappend(v44, v47, v48);
        *(v6 + 80) = v44;
        v46 = v45++;
      }

      while (*(a1 + 128) > v46);
    }
  }

  *(v6 + 88) = *(a1 + 144) != 0;
  v49 = *(a1 + 152);
  if (v49)
  {
    *(v6 + 96) = _readTableFunc(v49, v5);
  }

  if (*(a1 + 160))
  {
    v50 = _readNode(**(a1 + 168));
    v5 = list_make1_impl(226, v50, v51);
    *(v6 + 104) = v52;
    if (*(a1 + 160) >= 2uLL)
    {
      v53 = v52;
      v54 = 2;
      v55 = 1;
      do
      {
        v56 = _readNode(*(*(a1 + 168) + 8 * v55));
        v53 = lappend(v53, v56, v57);
        *(v6 + 104) = v53;
        v55 = v54++;
      }

      while (*(a1 + 160) > v55);
    }
  }

  v58 = *(a1 + 176);
  if (v58 && *v58)
  {
    *(v6 + 112) = pstrdup(v58, v5);
  }

  *(v6 + 120) = *(a1 + 184);
  *(v6 + 124) = *(a1 + 188) != 0;
  if (*(a1 + 192))
  {
    v59 = _readNode(**(a1 + 200));
    v5 = list_make1_impl(226, v59, v60);
    *(v6 + 128) = v61;
    if (*(a1 + 192) >= 2uLL)
    {
      v62 = v61;
      v63 = 2;
      v64 = 1;
      do
      {
        v65 = _readNode(*(*(a1 + 200) + 8 * v64));
        v62 = lappend(v62, v65, v66);
        *(v6 + 128) = v62;
        v64 = v63++;
      }

      while (*(a1 + 192) > v64);
    }
  }

  if (*(a1 + 208))
  {
    v67 = _readNode(**(a1 + 216));
    v5 = list_make1_impl(226, v67, v68);
    *(v6 + 136) = v69;
    if (*(a1 + 208) >= 2uLL)
    {
      v70 = v69;
      v71 = 2;
      v72 = 1;
      do
      {
        v73 = _readNode(*(*(a1 + 216) + 8 * v72));
        v70 = lappend(v70, v73, v74);
        *(v6 + 136) = v70;
        v72 = v71++;
      }

      while (*(a1 + 208) > v72);
    }
  }

  if (*(a1 + 224))
  {
    v75 = _readNode(**(a1 + 232));
    v5 = list_make1_impl(226, v75, v76);
    *(v6 + 144) = v77;
    if (*(a1 + 224) >= 2uLL)
    {
      v78 = v77;
      v79 = 2;
      v80 = 1;
      do
      {
        v81 = _readNode(*(*(a1 + 232) + 8 * v80));
        v78 = lappend(v78, v81, v82);
        *(v6 + 144) = v78;
        v80 = v79++;
      }

      while (*(a1 + 224) > v80);
    }
  }

  v83 = *(a1 + 240);
  if (v83 && *v83)
  {
    *(v6 + 152) = pstrdup(v83, v5);
  }

  v84 = *(a1 + 248);
  *(v6 + 160) = v84;
  v85 = *(a1 + 256);
  if (v85)
  {
    *(v6 + 168) = _readAlias(v85, v84);
  }

  v86 = *(a1 + 264);
  if (v86)
  {
    *(v6 + 176) = _readAlias(v86, v84);
  }

  *(v6 + 184) = *(a1 + 272) != 0;
  *(v6 + 185) = *(a1 + 276) != 0;
  *(v6 + 186) = *(a1 + 280) != 0;
  *(v6 + 188) = *(a1 + 284);
  *(v6 + 192) = *(a1 + 288);
  if (*(a1 + 360))
  {
    v87 = _readNode(**(a1 + 368));
    list_make1_impl(226, v87, v88);
    *(v6 + 232) = v89;
    if (*(a1 + 360) >= 2uLL)
    {
      v90 = v89;
      v91 = 2;
      v92 = 1;
      do
      {
        v93 = _readNode(*(*(a1 + 368) + 8 * v92));
        v90 = lappend(v90, v93, v94);
        *(v6 + 232) = v90;
        v92 = v91++;
      }

      while (*(a1 + 360) > v92);
    }
  }

  return v6;
}

unint64_t _readRangeTblFunction(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 372;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v4 + 8) = _readNode(v5);
  }

  *(v4 + 16) = *(a1 + 32);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v7);
    *(v4 + 24) = v8;
    if (*(a1 + 40) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 48) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 24) = v9;
        v11 = v10++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  if (*(a1 + 56))
  {
    v14 = _readNode(**(a1 + 64));
    list_make1_impl(226, v14, v15);
    *(v4 + 32) = v16;
    if (*(a1 + 56) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 64) + 8 * v19));
        v17 = lappend(v17, v20, v21);
        *(v4 + 32) = v17;
        v19 = v18++;
      }

      while (*(a1 + 56) > v19);
    }
  }

  if (*(a1 + 72))
  {
    v22 = _readNode(**(a1 + 80));
    list_make1_impl(226, v22, v23);
    *(v4 + 40) = v24;
    if (*(a1 + 72) >= 2uLL)
    {
      v25 = v24;
      v26 = 2;
      v27 = 1;
      do
      {
        v28 = _readNode(*(*(a1 + 80) + 8 * v27));
        v25 = lappend(v25, v28, v29);
        *(v4 + 40) = v25;
        v27 = v26++;
      }

      while (*(a1 + 72) > v27);
    }
  }

  if (*(a1 + 88))
  {
    v30 = _readNode(**(a1 + 96));
    list_make1_impl(226, v30, v31);
    *(v4 + 48) = v32;
    if (*(a1 + 88) >= 2uLL)
    {
      v33 = v32;
      v34 = 2;
      v35 = 1;
      do
      {
        v36 = _readNode(*(*(a1 + 96) + 8 * v35));
        v33 = lappend(v33, v36, v37);
        *(v4 + 48) = v33;
        v35 = v34++;
      }

      while (*(a1 + 88) > v35);
    }
  }

  return v4;
}

unint64_t _readTableSampleClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 373;
  *(v4 + 4) = *(a1 + 24);
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 32) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 40) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 32) > v10);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    *(v4 + 16) = _readNode(v13);
  }

  return v4;
}

_DWORD *_readWithCheckOption(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 374;
  v7 = *(a1 + 24);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 3)
  {
    v9 = 0;
  }

  v4[1] = v9;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    *(v6 + 1) = pstrdup(v10, v5);
  }

  v11 = *(a1 + 40);
  if (v11 && *v11)
  {
    *(v6 + 2) = pstrdup(v11, v5);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(v6 + 3) = _readNode(v12);
  }

  *(v6 + 32) = *(a1 + 56) != 0;
  return v6;
}

unint64_t _readSortGroupClause(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 375;
  *(result + 4) = a1[6];
  *(result + 8) = a1[7];
  *(result + 12) = a1[8];
  *(result + 16) = a1[9] != 0;
  *(result + 17) = a1[10] != 0;
  return result;
}

_DWORD *_readGroupingSet(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  v5 = v4;
  *v4 = 376;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 4)
  {
    v8 = 0;
  }

  v4[1] = v8;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v10);
    *(v5 + 1) = v11;
    if (*(a1 + 32) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 40) + 8 * v14));
        v12 = lappend(v12, v15, v16);
        *(v5 + 1) = v12;
        v14 = v13++;
      }

      while (*(a1 + 32) > v14);
    }
  }

  v5[4] = *(a1 + 48);
  return v5;
}

unint64_t _readWindowClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 377;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 16) = pstrdup(v7, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  v24 = *(a1 + 80);
  if (v24)
  {
    *(v4 + 48) = _readNode(v24);
  }

  v25 = *(a1 + 88);
  if (v25)
  {
    *(v4 + 56) = _readNode(v25);
  }

  *(v4 + 64) = *(a1 + 96);
  *(v4 + 68) = *(a1 + 100);
  *(v4 + 72) = *(a1 + 104);
  *(v4 + 76) = *(a1 + 108) != 0;
  *(v4 + 77) = *(a1 + 112) != 0;
  *(v4 + 80) = *(a1 + 116);
  *(v4 + 84) = *(a1 + 120) != 0;
  return v4;
}

unint64_t _readObjectWithArgs(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 378;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  if (*(a1 + 40))
  {
    v13 = _readNode(**(a1 + 48));
    list_make1_impl(226, v13, v14);
    *(v4 + 16) = v15;
    if (*(a1 + 40) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 48) + 8 * v18));
        v16 = lappend(v16, v19, v20);
        *(v4 + 16) = v16;
        v18 = v17++;
      }

      while (*(a1 + 40) > v18);
    }
  }

  *(v4 + 24) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readAccessPriv(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 379;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  return v4;
}

unint64_t _readCreateOpClassItem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 380;
  *(v4 + 4) = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readObjectWithArgs(v6, v5);
  }

  *(v4 + 16) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    v5 = list_make1_impl(226, Node, v8);
    *(v4 + 24) = v9;
    if (*(a1 + 48) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 56) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 24) = v10;
        v12 = v11++;
      }

      while (*(a1 + 48) > v12);
    }
  }

  if (*(a1 + 64))
  {
    v15 = _readNode(**(a1 + 72));
    v5 = list_make1_impl(226, v15, v16);
    *(v4 + 32) = v17;
    if (*(a1 + 64) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 72) + 8 * v20));
        v18 = lappend(v18, v21, v22);
        *(v4 + 32) = v18;
        v20 = v19++;
      }

      while (*(a1 + 64) > v20);
    }
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    *(v4 + 40) = _readTypeName(v23, v5);
  }

  return v4;
}

_DWORD *_readTableLikeClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 381;
  if (*(a1 + 24))
  {
    v6 = result;
    RangeVar = _readRangeVar(*(a1 + 24), v5);
    result = v6;
    *(v6 + 1) = RangeVar;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

unint64_t _readFunctionParameter(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 382;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  v8 = *(a1 + 40) - 2;
  if (v8 <= 3)
  {
    *(v4 + 24) = *&aO[4 * v8];
    v9 = *(a1 + 48);
    if (!v9)
    {
      return v4;
    }

    goto LABEL_10;
  }

  *(v4 + 24) = 105;
  v9 = *(a1 + 48);
  if (v9)
  {
LABEL_10:
    *(v4 + 32) = _readNode(v9);
  }

  return v4;
}

unint64_t _readLockingClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 383;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  v13 = *(a1 + 40);
  v14 = v13 - 2;
  v15 = v13 - 1;
  if (v14 >= 4)
  {
    v15 = 0;
  }

  *(v4 + 16) = v15;
  v16 = *(a1 + 44);
  if (v16 == 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16 == 2;
  }

  *(v4 + 20) = v17;
  return v4;
}

unint64_t _readRowMarkClause(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 384;
  *(result + 4) = a1[6];
  v5 = a1[7];
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  *(result + 8) = v7;
  v8 = a1[8];
  if (v8 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == 2;
  }

  *(result + 12) = v9;
  *(result + 16) = a1[9] != 0;
  return result;
}

unint64_t _readXmlSerialize(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 385;
  *(v4 + 4) = *(a1 + 24) == 2;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v4 + 8) = _readNode(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    *(v4 + 16) = _readTypeName(v7, v5);
  }

  *(v4 + 24) = *(a1 + 48);
  return v4;
}

unint64_t _readWithClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 386;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node, v6);
    *(v4 + 8) = v7;
    if (*(a1 + 24) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 32) + 8 * v10));
        v8 = lappend(v8, v11, v12);
        *(v4 + 8) = v8;
        v10 = v9++;
      }

      while (*(a1 + 24) > v10);
    }
  }

  *(v4 + 16) = *(a1 + 40) != 0;
  *(v4 + 20) = *(a1 + 44);
  return v4;
}

unint64_t _readInferClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 387;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    v5 = list_make1_impl(226, Node, v7);
    *(v4 + 8) = v8;
    if (*(a1 + 24) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 32) + 8 * v11));
        v9 = lappend(v9, v12, v13);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 24) > v11);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    *(v4 + 16) = _readNode(v14);
  }

  v15 = *(a1 + 48);
  if (v15 && *v15)
  {
    *(v4 + 24) = pstrdup(v15, v5);
  }

  *(v4 + 32) = *(a1 + 56);
  return v4;
}

_DWORD *_readOnConflictClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  v6 = v4;
  *v4 = 388;
  v7 = *(a1 + 24);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  v4[1] = v8;
  v9 = *(a1 + 32);
  if (v9)
  {
    *(v6 + 1) = _readInferClause(v9, v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v11);
    *(v6 + 2) = v12;
    if (*(a1 + 40) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 48) + 8 * v15));
        v13 = lappend(v13, v16, v17);
        *(v6 + 2) = v13;
        v15 = v14++;
      }

      while (*(a1 + 40) > v15);
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    *(v6 + 3) = _readNode(v18);
  }

  v6[8] = *(a1 + 64);
  return v6;
}

unint64_t _readCommonTableExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 389;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v15 = *(a1 + 48);
  if (v15 == 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = v15 == 2;
  }

  *(v4 + 24) = v16;
  v17 = *(a1 + 56);
  if (v17)
  {
    *(v4 + 32) = _readNode(v17);
  }

  *(v4 + 40) = *(a1 + 64);
  *(v4 + 44) = *(a1 + 68) != 0;
  *(v4 + 48) = *(a1 + 72);
  if (*(a1 + 80))
  {
    v18 = _readNode(**(a1 + 88));
    list_make1_impl(226, v18, v19);
    *(v4 + 56) = v20;
    if (*(a1 + 80) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 88) + 8 * v23));
        v21 = lappend(v21, v24, v25);
        *(v4 + 56) = v21;
        v23 = v22++;
      }

      while (*(a1 + 80) > v23);
    }
  }

  if (*(a1 + 96))
  {
    v26 = _readNode(**(a1 + 104));
    list_make1_impl(226, v26, v27);
    *(v4 + 64) = v28;
    if (*(a1 + 96) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 104) + 8 * v31));
        v29 = lappend(v29, v32, v33);
        *(v4 + 64) = v29;
        v31 = v30++;
      }

      while (*(a1 + 96) > v31);
    }
  }

  if (*(a1 + 112))
  {
    v34 = _readNode(**(a1 + 120));
    list_make1_impl(226, v34, v35);
    *(v4 + 72) = v36;
    if (*(a1 + 112) >= 2uLL)
    {
      v37 = v36;
      v38 = 2;
      v39 = 1;
      do
      {
        v40 = _readNode(*(*(a1 + 120) + 8 * v39));
        v37 = lappend(v37, v40, v41);
        *(v4 + 72) = v37;
        v39 = v38++;
      }

      while (*(a1 + 112) > v39);
    }
  }

  if (*(a1 + 128))
  {
    v42 = _readNode(**(a1 + 136));
    list_make1_impl(226, v42, v43);
    *(v4 + 80) = v44;
    if (*(a1 + 128) >= 2uLL)
    {
      v45 = v44;
      v46 = 2;
      v47 = 1;
      do
      {
        v48 = _readNode(*(*(a1 + 136) + 8 * v47));
        v45 = lappend(v45, v48, v49);
        *(v4 + 80) = v45;
        v47 = v46++;
      }

      while (*(a1 + 128) > v47);
    }
  }

  return v4;
}

_DWORD *_readRoleSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 390;
  v6 = *(a1 + 24);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  result[1] = v8;
  v9 = *(a1 + 32);
  if (v9 && *v9)
  {
    v10 = result;
    v11 = pstrdup(*(a1 + 32), v5);
    result = v10;
    *(v10 + 1) = v11;
  }

  result[4] = *(a1 + 40);
  return result;
}

unint64_t _readTriggerTransition(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 391;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 24), v5);
    result = v7;
    *(v7 + 8) = v8;
  }

  *(result + 16) = *(a1 + 32) != 0;
  *(result + 17) = *(a1 + 36) != 0;
  return result;
}

unint64_t _readPartitionElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 392;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readNode(v7);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v9);
    *(v4 + 24) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v4 + 24) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16, v17);
    *(v4 + 32) = v18;
    if (*(a1 + 56) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 64) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v4 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 56) > v21);
    }
  }

  *(v4 + 40) = *(a1 + 72);
  return v4;
}

unint64_t _readPartitionSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 393;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    *(v4 + 8) = pstrdup(v6, v5);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node, v8);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  *(v4 + 24) = *(a1 + 48);
  return v4;
}

unint64_t _readPartitionBoundSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  v5 = v4;
  *v4 = 394;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *v6;
    if (v7)
    {
      *(v4 + 4) = v7;
    }
  }

  *(v4 + 5) = *(a1 + 32) != 0;
  *(v4 + 8) = *(a1 + 36);
  *(v4 + 12) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node, v9);
    *(v5 + 16) = v10;
    if (*(a1 + 48) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 56) + 8 * v13));
        v11 = lappend(v11, v14, v15);
        *(v5 + 16) = v11;
        v13 = v12++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    list_make1_impl(226, v16, v17);
    *(v5 + 24) = v18;
    if (*(a1 + 64) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 72) + 8 * v21));
        v19 = lappend(v19, v22, v23);
        *(v5 + 24) = v19;
        v21 = v20++;
      }

      while (*(a1 + 64) > v21);
    }
  }

  if (*(a1 + 80))
  {
    v24 = _readNode(**(a1 + 88));
    list_make1_impl(226, v24, v25);
    *(v5 + 32) = v26;
    if (*(a1 + 80) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 88) + 8 * v29));
        v27 = lappend(v27, v30, v31);
        *(v5 + 32) = v27;
        v29 = v28++;
      }

      while (*(a1 + 80) > v29);
    }
  }

  *(v5 + 40) = *(a1 + 96);
  return v5;
}

_DWORD *_readPartitionRangeDatum(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 395;
  v5 = *(a1 + 24);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 == 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  result[1] = v7;
  if (*(a1 + 32))
  {
    v8 = result;
    Node = _readNode(*(a1 + 32));
    result = v8;
    *(v8 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  return result;
}

unint64_t _readPartitionCmd(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 396;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 16) = _readPartitionBoundSpec(v7, v5);
  }

  return v4;
}

unint64_t _readVacuumRelation(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 397;
  v6 = *(a1 + 24);
  if (v6)
  {
    *(v4 + 8) = _readRangeVar(v6, v5);
  }

  *(v4 + 16) = *(a1 + 32);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node, v8);
    *(v4 + 24) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13, v14);
        *(v4 + 24) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  return v4;
}

unint64_t _readInlineCodeBlock(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 410;
  v6 = *(a1 + 24);
  if (v6 && *v6)
  {
    v7 = result;
    v8 = pstrdup(*(a1 + 24), v5);
    result = v7;
    *(v7 + 8) = v8;
  }

  *(result + 16) = *(a1 + 32);
  *(result + 20) = *(a1 + 36) != 0;
  *(result + 21) = *(a1 + 40) != 0;
  return result;
}

uint64_t _readList(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  Node = _readNode(**(a1 + 32));
  list_make1_impl(226, Node, v3);
  v5 = v4;
  if (*(a1 + 24) >= 2uLL)
  {
    v6 = 2;
    v7 = 1;
    do
    {
      v8 = _readNode(*(*(a1 + 32) + 8 * v7));
      v5 = lappend(v5, v8, v9);
      v7 = v6++;
    }

    while (*(a1 + 24) > v7);
  }

  return v5;
}

void _readNode_cold_1(_DWORD *a1)
{
  errstart(20, 0);
  errmsg_internal("unsupported protobuf node type: %d", *a1);
  errfinish("src/pg_query_readfuncs_protobuf.c", 116, "_readNode");
  __break(1u);
}

uint64_t pg_query_scan(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v54 = *MEMORY[0x1E69E9840];
  *v3 = 0u;
  v3[1] = 0u;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v48 = 0;
  v45 = xmmword_1E6E55A08;
  v46 = unk_1E6E55A18;
  v47 = xmmword_1E6E55A28;
  pg_query_enter_memory_context();
  v6 = CurrentMemoryContext(v5);
  v7 = *v6;
  bzero(__s1, 0x1001uLL);
  v8 = PG_exception_stack();
  v9 = *v8;
  v10 = v8;
  v11 = error_context_stack();
  v12 = *v11;
  memset(v52, 0, 196);
  if (sigsetjmp(v52, 0))
  {
    *v10 = v9;
    *v11 = v12;
    *v6 = v7;
    v13 = CopyErrorData();
    v14 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v14 = strdup(*(v13 + 64));
    v14[2] = strdup(*(v13 + 16));
    v14[1] = strdup(*(v13 + 32));
    v14[4] = 0;
    *(v14 + 6) = *(v13 + 24);
    *(v14 + 7) = *(v13 + 160);
    *(v4 + 3) = v14;
    FlushErrorState();
  }

  else
  {
    v42 = v11;
    v43 = v12;
    v44 = v4;
    *v10 = v52;
    v15 = scanner_init(v2, v50, &ScanKeywords, &ScanKeywordTokens);
    v17 = -1;
    v18 = -8;
    do
    {
      v19 = v17;
      v20 = v18;
      v21 = core_yylex(&v49, &v48, v15, v16);
      v22 = v19 + 1;
      v23 = v20 + 8;
      v18 = v23;
      v17 = v19 + 1;
    }

    while (v21);
    scanner_finish(v15);
    v24 = malloc_type_malloc(v23, 0x2004093837F09uLL);
    v25 = scanner_init(v2, v50, &ScanKeywords, &ScanKeywordTokens);
    v27 = core_yylex(&v49, &v48, v25, v26);
    if (v27)
    {
      v28 = v27;
      v29 = v24;
      do
      {
        v32 = malloc_type_malloc(0x28uLL, 0x10600401BE82CDFuLL);
        *v29 = v32;
        scan_token__init = pg_query__scan_token__init(v32);
        v34 = v48;
        *(*v29 + 6) = v48;
        if ((v28 - 258) <= 0x12 && ((1 << (v28 - 2)) & 0x40069) != 0)
        {
          v35 = HIDWORD(v51);
        }

        else
        {
          v35 = v34 + *(v25 + 64);
        }

        *(*v29 + 7) = v35;
        *(*v29 + 8) = v28;
        if ((v28 - 277) <= 0x1C1)
        {
          v30 = dword_184D4B100[v28 - 277];
        }

        else
        {
          v30 = 0;
        }

        v31 = *v29++;
        *(v31 + 36) = v30;
        v28 = core_yylex(&v49, &v48, v25, scan_token__init);
      }

      while (v28);
    }

    scanner_finish(v25);
    DWORD2(v46) = 130003;
    *&v47 = v22;
    *(&v47 + 1) = v24;
    packed_size = pg_query__scan_result__get_packed_size(&v45, v36);
    *v44 = packed_size;
    v38 = malloc_type_malloc(packed_size, 0x3121CBB5uLL);
    *(v44 + 1) = v38;
    pg_query__scan_result__pack(&v45, v38);
    if (v22)
    {
      v39 = 0;
      do
      {
        v40 = v39;
        free(v24[v39]);
        v39 = v40 + 1;
      }

      while (v22 != v40 + 1);
    }

    free(v24);
    *(v44 + 2) = strdup(__s1);
    v11 = v42;
    v12 = v43;
  }

  *v10 = v9;
  *v11 = v12;
  return pg_query_exit_memory_context();
}

void pg_query_free_scan_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 8));
  v3 = *(a1 + 16);

  free(v3);
}

uint64_t pg_query_split_with_scanner(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v39 = 0;
  *v3 = 0u;
  v3[1] = 0u;
  memset(v40, 0, sizeof(v40));
  v38 = 0;
  pg_query_enter_memory_context();
  v6 = CurrentMemoryContext(v5);
  v7 = *v6;
  bzero(__s1, 0x1001uLL);
  v8 = PG_exception_stack();
  v9 = *v8;
  v10 = error_context_stack();
  v11 = *v10;
  memset(v42, 0, sizeof(v42));
  if (sigsetjmp(v42, 0))
  {
    *v8 = v9;
    *v10 = v11;
    *v6 = v7;
    v12 = CopyErrorData();
    v13 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v13 = strdup(*(v12 + 64));
    v13[2] = strdup(*(v12 + 16));
    v13[1] = strdup(*(v12 + 32));
    v13[4] = 0;
    *(v13 + 6) = *(v12 + 24);
    *(v13 + 7) = *(v12 + 160);
    *(v4 + 3) = v13;
    FlushErrorState();
  }

  else
  {
    v34 = v4;
    v35 = v11;
    v37 = v9;
    v14 = v8;
    *v8 = v42;
    v15 = scanner_init(v2, v40, &ScanKeywords, &ScanKeywordTokens);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v18;
      v21 = core_yylex(&v39, &v38, v15, v16);
      if ((v21 - 277) < 0x1C2)
      {
        v17 = 1;
      }

      else if (v21 == 41)
      {
        --v19;
      }

      else if (v21 == 40)
      {
        ++v19;
      }

      else if ((v17 & (v19 == 0)) == 1)
      {
        if (v21 != 59 && v21)
        {
          v17 = 1;
          v19 = 0;
        }

        else
        {
          v20 = (v20 + 1);
          v19 = 0;
          v17 = 0;
        }
      }

      v18 = v20;
    }

    while (v21);
    v36 = v14;
    *(v4 + 2) = v20;
    scanner_finish(v15);
    v22 = malloc_type_malloc(8 * v20, 0x2004093837F09uLL);
    *v4 = v22;
    v23 = scanner_init(v2, v40, &ScanKeywords, &ScanKeywordTokens);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = core_yylex(&v39, &v38, v23, v24);
      v30 = v29;
      if ((v29 - 277) < 0x1C2)
      {
        v28 = 1;
      }

      else if (v29 == 41)
      {
        --v26;
      }

      else if (v29 == 40)
      {
        ++v26;
      }

      else if ((v28 & (v26 == 0)) == 1 && (v29 == 59 || !v29))
      {
        v31 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v28 = 0;
        v26 = 0;
        v22[v27] = v31;
        *v31 = v25;
        v32 = v38;
        *(v22[v27] + 4) = v38 - v25;
        v25 = v32 + 1;
        ++v27;
      }

      else if (!v26 && v29 == 59)
      {
        v26 = 0;
        v25 = v38 + 1;
      }
    }

    while (v30);
    scanner_finish(v23);
    v11 = v35;
    *(v34 + 2) = strdup(__s1);
    v9 = v37;
    v8 = v36;
  }

  *v8 = v9;
  *v10 = v11;
  return pg_query_exit_memory_context();
}

uint64_t pg_query_split_with_parser@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  pg_query_enter_memory_context();
  pg_query_raw_parse(a1, v4);
  *(a2 + 16) = v15;
  if (v14)
  {
    v5 = *(v14 + 4);
    *(a2 + 8) = v5;
    v6 = malloc_type_malloc(8 * v5, 0x2004093837F09uLL);
    *a2 = v6;
    if (*(v14 + 4) >= 1)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = *(*(v14 + 16) + 8 * v8);
        v10 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v7[v8] = v10;
        v11 = *(v9 + 16);
        *v10 = v11;
        v12 = *(v9 + 20);
        if (!v12)
        {
          v12 = strlen(a1) - v11;
        }

        *(v7[v8++] + 4) = v12;
      }

      while (v8 < *(v14 + 4));
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return pg_query_exit_memory_context();
}

void pg_query_free_split_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 16));
  v3 = *a1;
  if (*a1)
  {
    if (*(a1 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        free(*(*a1 + 8 * v4++));
      }

      while (v4 < *(a1 + 8));
      v3 = *a1;
    }

    free(v3);
  }
}