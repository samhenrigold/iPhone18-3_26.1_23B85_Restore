uint64_t _outDefElem(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "defnamespace:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "defname:");
    _outToken(a1, *(a2 + 16));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "arg:");
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",");
  }

  v4 = *(a2 + 32);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B75C8)[v4];
  }

  result = appendStringInfo(a1, "defaction:%s,", v5);
  if (*(a2 + 36))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 36));
  }

  return result;
}

uint64_t _outRangeTblEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B75E8)[v4];
  }

  appendStringInfo(a1, "rtekind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relid:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "relkind:%c,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "rellockmode:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "tablesample:{");
    _outTableSampleClause(a1, *(a2 + 24));
    v6 = *(a1 + 8);
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v8 < 0 == v7)
    {
      v9 = *a1;
      if (*(*a1 + v8) == 44)
      {
        *(a1 + 8) = v8;
        *(v9 + v8) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subquery:{");
    _outQuery(a1, *(a2 + 32));
    v10 = *(a1 + 8);
    v7 = __OFSUB__(v10, 1);
    v11 = v10 - 1;
    if (v11 < 0 == v7)
    {
      v12 = *a1;
      if (*(*a1 + v11) == 44)
      {
        *(a1 + 8) = v11;
        *(v12 + v11) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 40) == 1)
  {
    appendStringInfo(a1, "security_barrier:%s,", "true");
  }

  v13 = *(a2 + 44);
  if (v13 > 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = (&off_2797B7630)[v13];
  }

  appendStringInfo(a1, "jointype:%s,", v14);
  if (*(a2 + 48))
  {
    appendStringInfo(a1, "joinmergedcols:%d,", *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "joinaliasvars:");
    appendStringInfoChar(a1, 91);
    v15 = *(a2 + 56);
    if (v15 && *(v15 + 4) >= 1)
    {
      v16 = 0;
      v17 = 8;
      do
      {
        v18 = *(v15 + 16);
        v19 = *(v18 + 8 * v16);
        if (v19)
        {
          _outNode(a1, v19);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v18 + v17)
        {
          v20 = v18 + v17 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          appendStringInfoString(a1, ",");
        }

        ++v16;
        v17 += 8;
      }

      while (v16 < *(v15 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "joinleftcols:");
    appendStringInfoChar(a1, 91);
    v21 = *(a2 + 64);
    if (v21 && *(v21 + 4) >= 1)
    {
      v22 = 0;
      v23 = 8;
      do
      {
        v24 = *(v21 + 16);
        v25 = *(v24 + 8 * v22);
        if (v25)
        {
          _outNode(a1, v25);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v24 + v23)
        {
          v26 = v24 + v23 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          appendStringInfoString(a1, ",");
        }

        ++v22;
        v23 += 8;
      }

      while (v22 < *(v21 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "joinrightcols:");
    appendStringInfoChar(a1, 91);
    v27 = *(a2 + 72);
    if (v27 && *(v27 + 4) >= 1)
    {
      v28 = 0;
      v29 = 8;
      do
      {
        v30 = *(v27 + 16);
        v31 = *(v30 + 8 * v28);
        if (v31)
        {
          _outNode(a1, v31);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v30 + v29)
        {
          v32 = v30 + v29 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          appendStringInfoString(a1, ",");
        }

        ++v28;
        v29 += 8;
      }

      while (v28 < *(v27 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "functions:");
    appendStringInfoChar(a1, 91);
    v33 = *(a2 + 80);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(a1, v37);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(a1, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 88) == 1)
  {
    appendStringInfo(a1, "funcordinality:%s,", "true");
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "tablefunc:{");
    _outTableFunc(a1, *(a2 + 96));
    v39 = *(a1 + 8);
    v7 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v7)
    {
      v41 = *a1;
      if (*(*a1 + v40) == 44)
      {
        *(a1 + 8) = v40;
        *(v41 + v40) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 104))
  {
    appendStringInfo(a1, "values_lists:");
    appendStringInfoChar(a1, 91);
    v42 = *(a2 + 104);
    if (v42 && *(v42 + 4) >= 1)
    {
      v43 = 0;
      v44 = 8;
      do
      {
        v45 = *(v42 + 16);
        v46 = *(v45 + 8 * v43);
        if (v46)
        {
          _outNode(a1, v46);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v45 + v44)
        {
          v47 = v45 + v44 >= (*(*(a2 + 104) + 16) + 8 * *(*(a2 + 104) + 4));
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          appendStringInfoString(a1, ",");
        }

        ++v43;
        v44 += 8;
      }

      while (v43 < *(v42 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "ctename:");
    _outToken(a1, *(a2 + 112));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "ctelevelsup:%u,", *(a2 + 120));
  }

  if (*(a2 + 124) == 1)
  {
    appendStringInfo(a1, "self_reference:%s,", "true");
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "coltypes:");
    appendStringInfoChar(a1, 91);
    v48 = *(a2 + 128);
    if (v48 && *(v48 + 4) >= 1)
    {
      v49 = 0;
      v50 = 8;
      do
      {
        v51 = *(v48 + 16);
        v52 = *(v51 + 8 * v49);
        if (v52)
        {
          _outNode(a1, v52);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v51 + v50)
        {
          v53 = v51 + v50 >= (*(*(a2 + 128) + 16) + 8 * *(*(a2 + 128) + 4));
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          appendStringInfoString(a1, ",");
        }

        ++v49;
        v50 += 8;
      }

      while (v49 < *(v48 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "coltypmods:");
    appendStringInfoChar(a1, 91);
    v54 = *(a2 + 136);
    if (v54 && *(v54 + 4) >= 1)
    {
      v55 = 0;
      v56 = 8;
      do
      {
        v57 = *(v54 + 16);
        v58 = *(v57 + 8 * v55);
        if (v58)
        {
          _outNode(a1, v58);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v57 + v56)
        {
          v59 = v57 + v56 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          appendStringInfoString(a1, ",");
        }

        ++v55;
        v56 += 8;
      }

      while (v55 < *(v54 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "colcollations:");
    appendStringInfoChar(a1, 91);
    v60 = *(a2 + 144);
    if (v60 && *(v60 + 4) >= 1)
    {
      v61 = 0;
      v62 = 8;
      do
      {
        v63 = *(v60 + 16);
        v64 = *(v63 + 8 * v61);
        if (v64)
        {
          _outNode(a1, v64);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v63 + v62)
        {
          v65 = v63 + v62 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          appendStringInfoString(a1, ",");
        }

        ++v61;
        v62 += 8;
      }

      while (v61 < *(v60 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 152))
  {
    appendStringInfo(a1, "enrname:");
    _outToken(a1, *(a2 + 152));
    appendStringInfo(a1, ",");
  }

  appendStringInfo(a1, "enrtuples:%f,", *(a2 + 160));
  if (*(a2 + 168))
  {
    appendStringInfo(a1, "alias:{");
    _outAlias(a1, *(a2 + 168));
    v66 = *(a1 + 8);
    v7 = __OFSUB__(v66, 1);
    v67 = v66 - 1;
    if (v67 < 0 == v7)
    {
      v68 = *a1;
      if (*(*a1 + v67) == 44)
      {
        *(a1 + 8) = v67;
        *(v68 + v67) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 176))
  {
    appendStringInfo(a1, "eref:{");
    _outAlias(a1, *(a2 + 176));
    v69 = *(a1 + 8);
    v7 = __OFSUB__(v69, 1);
    v70 = v69 - 1;
    if (v70 < 0 == v7)
    {
      v71 = *a1;
      if (*(*a1 + v70) == 44)
      {
        *(a1 + 8) = v70;
        *(v71 + v70) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  if (*(a2 + 184) == 1)
  {
    appendStringInfo(a1, "lateral:%s,", "true");
    if (*(a2 + 185) != 1)
    {
LABEL_166:
      if (*(a2 + 186) != 1)
      {
        goto LABEL_167;
      }

      goto LABEL_193;
    }
  }

  else if (*(a2 + 185) != 1)
  {
    goto LABEL_166;
  }

  appendStringInfo(a1, "inh:%s,", "true");
  if (*(a2 + 186) != 1)
  {
LABEL_167:
    v72 = *(a2 + 188);
    if (!v72)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_193:
  appendStringInfo(a1, "inFromCl:%s,", "true");
  v72 = *(a2 + 188);
  if (v72)
  {
LABEL_168:
    appendStringInfo(a1, "requiredPerms:%u,", v72);
  }

LABEL_169:
  if (*(a2 + 192))
  {
    appendStringInfo(a1, "checkAsUser:%u,", *(a2 + 192));
  }

  if (bms_is_empty(*(a2 + 200)))
  {
    if (bms_is_empty(*(a2 + 208)))
    {
      goto LABEL_173;
    }
  }

  else
  {
    appendStringInfo(a1, "selectedCols:[");
    member = bms_next_member(*(a2 + 200), 0);
    if ((member & 0x80000000) == 0)
    {
      v81 = member;
      do
      {
        appendStringInfo(a1, "%d,", v81);
        v81 = bms_next_member(*(a2 + 200), v81);
      }

      while ((v81 & 0x80000000) == 0);
    }

    v82 = *(a1 + 8);
    v7 = __OFSUB__(v82, 1);
    v83 = v82 - 1;
    if (v83 < 0 == v7)
    {
      v84 = *a1;
      if (*(*a1 + v83) == 44)
      {
        *(a1 + 8) = v83;
        *(v84 + v83) = 0;
      }
    }

    appendStringInfo(a1, "],");
    if (bms_is_empty(*(a2 + 208)))
    {
LABEL_173:
      if (bms_is_empty(*(a2 + 216)))
      {
        goto LABEL_174;
      }

      goto LABEL_209;
    }
  }

  appendStringInfo(a1, "insertedCols:[");
  v85 = bms_next_member(*(a2 + 208), 0);
  if ((v85 & 0x80000000) == 0)
  {
    v86 = v85;
    do
    {
      appendStringInfo(a1, "%d,", v86);
      v86 = bms_next_member(*(a2 + 208), v86);
    }

    while ((v86 & 0x80000000) == 0);
  }

  v87 = *(a1 + 8);
  v7 = __OFSUB__(v87, 1);
  v88 = v87 - 1;
  if (v88 < 0 == v7)
  {
    v89 = *a1;
    if (*(*a1 + v88) == 44)
    {
      *(a1 + 8) = v88;
      *(v89 + v88) = 0;
    }
  }

  appendStringInfo(a1, "],");
  if (bms_is_empty(*(a2 + 216)))
  {
LABEL_174:
    result = bms_is_empty(*(a2 + 224));
    if (result)
    {
      goto LABEL_175;
    }

    goto LABEL_216;
  }

LABEL_209:
  appendStringInfo(a1, "updatedCols:[");
  v90 = bms_next_member(*(a2 + 216), 0);
  if ((v90 & 0x80000000) == 0)
  {
    v91 = v90;
    do
    {
      appendStringInfo(a1, "%d,", v91);
      v91 = bms_next_member(*(a2 + 216), v91);
    }

    while ((v91 & 0x80000000) == 0);
  }

  v92 = *(a1 + 8);
  v7 = __OFSUB__(v92, 1);
  v93 = v92 - 1;
  if (v93 < 0 == v7)
  {
    v94 = *a1;
    if (*(*a1 + v93) == 44)
    {
      *(a1 + 8) = v93;
      *(v94 + v93) = 0;
    }
  }

  appendStringInfo(a1, "],");
  result = bms_is_empty(*(a2 + 224));
  if (result)
  {
LABEL_175:
    if (!*(a2 + 232))
    {
      return result;
    }

    goto LABEL_176;
  }

LABEL_216:
  appendStringInfo(a1, "extraUpdatedCols:[");
  v95 = bms_next_member(*(a2 + 224), 0);
  if ((v95 & 0x80000000) == 0)
  {
    v96 = v95;
    do
    {
      appendStringInfo(a1, "%d,", v96);
      v96 = bms_next_member(*(a2 + 224), v96);
    }

    while ((v96 & 0x80000000) == 0);
  }

  v97 = *(a1 + 8);
  v7 = __OFSUB__(v97, 1);
  v98 = v97 - 1;
  if (v98 < 0 == v7)
  {
    v99 = *a1;
    if (*(*a1 + v98) == 44)
    {
      *(a1 + 8) = v98;
      *(v99 + v98) = 0;
    }
  }

  result = appendStringInfo(a1, "],");
  if (*(a2 + 232))
  {
LABEL_176:
    appendStringInfo(a1, "securityQuals:");
    appendStringInfoChar(a1, 91);
    v74 = *(a2 + 232);
    if (v74 && *(v74 + 4) >= 1)
    {
      v75 = 0;
      v76 = 8;
      do
      {
        v77 = *(v74 + 16);
        v78 = *(v77 + 8 * v75);
        if (v78)
        {
          _outNode(a1, v78);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v77 + v76)
        {
          v79 = v77 + v76 >= (*(*(a2 + 232) + 16) + 8 * *(*(a2 + 232) + 4));
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          appendStringInfoString(a1, ",");
        }

        ++v75;
        v76 += 8;
      }

      while (v75 < *(v74 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

unint64_t _outRangeTblFunction(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "funcexpr:");
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "funccolcount:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "funccolnames:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "funccoltypes:");
    appendStringInfoChar(a1, 91);
    v10 = *(a2 + 32);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(a1, v14);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(a1, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "funccoltypmods:");
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 40);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "funccolcollations:");
    appendStringInfoChar(a1, 91);
    v22 = *(a2 + 48);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(a1, v26);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(a1, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    appendStringInfo(a1, "],");
  }

  result = bms_is_empty(*(a2 + 56));
  if ((result & 1) == 0)
  {
    appendStringInfo(a1, "funcparams:[");
    member = bms_next_member(*(a2 + 56), 0);
    if ((member & 0x80000000) == 0)
    {
      v30 = member;
      do
      {
        appendStringInfo(a1, "%d,", v30);
        v30 = bms_next_member(*(a2 + 56), v30);
      }

      while ((v30 & 0x80000000) == 0);
    }

    v31 = *(a1 + 2);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        *(a1 + 2) = v33;
        *(v34 + v33) = 0;
      }
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

uint64_t _outTableSampleClause(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "tsmhandler:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "args:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "repeatable:");
    _outNode(v3, *(a2 + 16));

    return appendStringInfo(v3, ",");
  }

  return result;
}

uint64_t _outWithCheckOption(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7670)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relname:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "polname:");
    _outToken(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "qual:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "cascaded:%s,", "true");
  }

  return result;
}

uint64_t _outSortGroupClause(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "tleSortGroupRef:%u,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "eqop:%u,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "sortop:%u,", *(a2 + 12));
  }

  if (*(a2 + 16) != 1)
  {
    if (*(a2 + 17) != 1)
    {
      return result;
    }

    return appendStringInfo(v3, "hashable:%s,", "true");
  }

  result = appendStringInfo(v3, "nulls_first:%s,", "true");
  if (*(a2 + 17) == 1)
  {
    return appendStringInfo(v3, "hashable:%s,", "true");
  }

  return result;
}

uint64_t _outGroupingSet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7690)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "content:");
    appendStringInfoChar(a1, 91);
    v7 = *(a2 + 8);
    if (v7 && *(v7 + 4) >= 1)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(v7 + 16);
        v11 = *(v10 + 8 * v8);
        if (v11)
        {
          _outNode(a1, v11);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v10 + v9)
        {
          v12 = v10 + v9 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          appendStringInfoString(a1, ",");
        }

        ++v8;
        v9 += 8;
      }

      while (v8 < *(v7 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 16));
  }

  return result;
}

int *_outWindowClause(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "refname:");
    _outToken(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "partitionClause:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "orderClause:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 32);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v3, "frameOptions:%d,", *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v3, "startOffset:");
    _outNode(v3, *(a2 + 48));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v3, "endOffset:");
    _outNode(v3, *(a2 + 56));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 64))
  {
    result = appendStringInfo(v3, "startInRangeFunc:%u,", *(a2 + 64));
  }

  if (*(a2 + 68))
  {
    result = appendStringInfo(v3, "endInRangeFunc:%u,", *(a2 + 68));
  }

  if (*(a2 + 72))
  {
    result = appendStringInfo(v3, "inRangeColl:%u,", *(a2 + 72));
  }

  if (*(a2 + 76) == 1)
  {
    result = appendStringInfo(v3, "inRangeAsc:%s,", "true");
    if (*(a2 + 77) != 1)
    {
LABEL_47:
      v16 = *(a2 + 80);
      if (!v16)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if (*(a2 + 77) != 1)
  {
    goto LABEL_47;
  }

  result = appendStringInfo(v3, "inRangeNullsFirst:%s,", "true");
  v16 = *(a2 + 80);
  if (v16)
  {
LABEL_48:
    result = appendStringInfo(v3, "winref:%u,", v16);
  }

LABEL_49:
  if (*(a2 + 84) == 1)
  {
    return appendStringInfo(v3, "copiedOrder:%s,", "true");
  }

  return result;
}

uint64_t _outObjectWithArgs(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "objname:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "objargs:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 16);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v3, "args_unspecified:%s,", "true");
  }

  return result;
}

int *_outAccessPriv(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "priv_name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "cols:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    return appendStringInfo(v3, "],");
  }

  return result;
}

uint64_t _outCreateOpClassItem(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "itemtype:%d,", *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v3, "name:{");
    _outObjectWithArgs(v3, *(a2 + 8));
    v4 = *(v3 + 8);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        *(v3 + 8) = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "number:%d,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "order_family:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 24);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(v3, v12);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(v3, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "class_args:");
    appendStringInfoChar(v3, 91);
    v14 = *(a2 + 32);
    if (v14 && *(v14 + 4) >= 1)
    {
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = *(v14 + 16);
        v18 = *(v17 + 8 * v15);
        if (v18)
        {
          _outNode(v3, v18);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v17 + v16)
        {
          v19 = v17 + v16 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          appendStringInfoString(v3, ",");
        }

        ++v15;
        v16 += 8;
      }

      while (v15 < *(v14 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v3, "storedtype:{");
    _outTypeName(v3, *(a2 + 40));
    v20 = *(v3 + 8);
    v5 = __OFSUB__(v20, 1);
    v21 = v20 - 1;
    if (v21 < 0 == v5)
    {
      v22 = *v3;
      if (*(*v3 + v21) == 44)
      {
        *(v3 + 8) = v21;
        *(v22 + v21) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outTableLikeClause(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "options:%u,", *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "relationOid:%u,", *(a2 + 20));
  }

  return result;
}

uint64_t _outFunctionParameter(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "argType:{");
    _outTypeName(a1, *(a2 + 16));
    v4 = a1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *a1;
      if (*(*a1 + v6) == 44)
      {
        a1[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    appendStringInfo(a1, "},");
  }

  v8 = *(a2 + 24);
  if (v8 <= 110)
  {
    if (v8 == 98)
    {
      v9 = "FUNC_PARAM_INOUT";
      goto LABEL_20;
    }

    if (v8 == 105)
    {
      v9 = "FUNC_PARAM_IN";
      goto LABEL_20;
    }
  }

  else
  {
    switch(v8)
    {
      case 'v':
        v9 = "FUNC_PARAM_VARIADIC";
        goto LABEL_20;
      case 't':
        v9 = "FUNC_PARAM_TABLE";
        goto LABEL_20;
      case 'o':
        v9 = "FUNC_PARAM_OUT";
        goto LABEL_20;
    }
  }

  v9 = 0;
LABEL_20:
  result = appendStringInfo(a1, "mode:%s,", v9);
  if (*(a2 + 32))
  {
    appendStringInfo(a1, "defexpr:");
    _outNode(a1, *(a2 + 32));

    return appendStringInfo(a1, ",");
  }

  return result;
}

unint64_t _outLockingClause(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "lockedRels:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v10 = *(a2 + 16);
  if (v10 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = (&off_2797B76B8)[v10];
  }

  appendStringInfo(a1, "strength:%s,", v11);
  v12 = *(a2 + 20);
  if (v12 > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (&off_2797B76E0)[v12];
  }

  return appendStringInfo(a1, "waitPolicy:%s,", v13);
}

uint64_t _outRowMarkClause(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "rti:%u,", *(a2 + 4));
  }

  v4 = *(a2 + 8);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B76B8)[v4];
  }

  appendStringInfo(a1, "strength:%s,", v5);
  v6 = *(a2 + 12);
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&off_2797B76E0)[v6];
  }

  result = appendStringInfo(a1, "waitPolicy:%s,", v7);
  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(a1, "pushedDown:%s,", "true");
  }

  return result;
}

uint64_t _outXmlSerialize(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = "XMLOPTION_CONTENT";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = "XMLOPTION_DOCUMENT";
  }

  result = appendStringInfo(a1, "xmloption:%s,", v6);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "expr:");
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "typeName:{");
    _outTypeName(a1, *(a2 + 16));
    v8 = *(a1 + 2);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v10 < 0 == v9)
    {
      v11 = *a1;
      if (*(*a1 + v10) == 44)
      {
        *(a1 + 2) = v10;
        *(v11 + v10) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outWithClause(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "ctes:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v3, "recursive:%s,", "true");
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 20));
  }

  return result;
}

int *_outInferClause(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "indexElems:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 8);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "whereClause:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "conname:");
    _outToken(v3, *(a2 + 24));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outOnConflictClause(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B76F8)[v4];
  }

  result = appendStringInfo(a1, "action:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "infer:{");
    _outInferClause(a1, *(a2 + 8));
    v7 = a1[2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v9 < 0 == v8)
    {
      v10 = *a1;
      if (*(*a1 + v9) == 44)
      {
        a1[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    result = appendStringInfo(a1, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "targetList:");
    appendStringInfoChar(a1, 91);
    v11 = *(a2 + 16);
    if (v11 && *(v11 + 4) >= 1)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v14 = *(v11 + 16);
        v15 = *(v14 + 8 * v12);
        if (v15)
        {
          _outNode(a1, v15);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v14 + v13)
        {
          v16 = v14 + v13 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          appendStringInfoString(a1, ",");
        }

        ++v12;
        v13 += 8;
      }

      while (v12 < *(v11 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "whereClause:");
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 32));
  }

  return result;
}

uint64_t _outCommonTableExpr(int *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "ctename:");
    _outToken(a1, *(a2 + 8));
    appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "aliascolnames:");
    appendStringInfoChar(a1, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(a1, v8);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(a1, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    appendStringInfo(a1, "],");
  }

  v10 = *(a2 + 24);
  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = (&off_2797B7710)[v10];
  }

  result = appendStringInfo(a1, "ctematerialized:%s,", v11);
  if (*(a2 + 32))
  {
    appendStringInfo(a1, "ctequery:");
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(a1, "location:%d,", *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    result = appendStringInfo(a1, "cterecursive:%s,", "true");
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "cterefcount:%d,", *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "ctecolnames:");
    appendStringInfoChar(a1, 91);
    v13 = *(a2 + 56);
    if (v13 && *(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(v13 + 16);
        v17 = *(v16 + 8 * v14);
        if (v17)
        {
          _outNode(a1, v17);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v16 + v15)
        {
          v18 = v16 + v15 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appendStringInfoString(a1, ",");
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < *(v13 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "ctecoltypes:");
    appendStringInfoChar(a1, 91);
    v19 = *(a2 + 64);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      v21 = 8;
      do
      {
        v22 = *(v19 + 16);
        v23 = *(v22 + 8 * v20);
        if (v23)
        {
          _outNode(a1, v23);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v22 + v21)
        {
          v24 = v22 + v21 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          appendStringInfoString(a1, ",");
        }

        ++v20;
        v21 += 8;
      }

      while (v20 < *(v19 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "ctecoltypmods:");
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 72);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],");
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "ctecolcollations:");
    appendStringInfoChar(a1, 91);
    v31 = *(a2 + 80);
    if (v31 && *(v31 + 4) >= 1)
    {
      v32 = 0;
      v33 = 8;
      do
      {
        v34 = *(v31 + 16);
        v35 = *(v34 + 8 * v32);
        if (v35)
        {
          _outNode(a1, v35);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v34 + v33)
        {
          v36 = v34 + v33 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          appendStringInfoString(a1, ",");
        }

        ++v32;
        v33 += 8;
      }

      while (v32 < *(v31 + 4));
    }

    return appendStringInfo(a1, "],");
  }

  return result;
}

uint64_t _outRoleSpec(int *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7728)[v4];
  }

  result = appendStringInfo(a1, "roletype:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "rolename:");
    _outToken(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 16));
  }

  return result;
}

int *_outTriggerTransition(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16) != 1)
  {
    if (*(a2 + 17) != 1)
    {
      return result;
    }

    return appendStringInfo(v3, "isTable:%s,", "true");
  }

  result = appendStringInfo(v3, "isNew:%s,", "true");
  if (*(a2 + 17) == 1)
  {
    return appendStringInfo(v3, "isTable:%s,", "true");
  }

  return result;
}

int *_outPartitionElem(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "expr:");
    _outNode(v3, *(a2 + 16));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "collation:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 24);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "opclass:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 32);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 40));
  }

  return result;
}

int *_outPartitionSpec(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "strategy:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "partParams:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 24));
  }

  return result;
}

uint64_t _outPartitionBoundSpec(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "strategy:%c,", *(a2 + 4));
  }

  if (*(a2 + 5) == 1)
  {
    result = appendStringInfo(v3, "is_default:%s,", "true");
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v3, "modulus:%d,", *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v3, "remainder:%d,", *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "listdatums:");
    appendStringInfoChar(v3, 91);
    v4 = *(a2 + 16);
    if (v4 && *(v4 + 4) >= 1)
    {
      v5 = 0;
      v6 = 8;
      do
      {
        v7 = *(v4 + 16);
        v8 = *(v7 + 8 * v5);
        if (v8)
        {
          _outNode(v3, v8);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v7 + v6)
        {
          v9 = v7 + v6 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          appendStringInfoString(v3, ",");
        }

        ++v5;
        v6 += 8;
      }

      while (v5 < *(v4 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "lowerdatums:");
    appendStringInfoChar(v3, 91);
    v10 = *(a2 + 24);
    if (v10 && *(v10 + 4) >= 1)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        v13 = *(v10 + 16);
        v14 = *(v13 + 8 * v11);
        if (v14)
        {
          _outNode(v3, v14);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v13 + v12)
        {
          v15 = v13 + v12 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          appendStringInfoString(v3, ",");
        }

        ++v11;
        v12 += 8;
      }

      while (v11 < *(v10 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v3, "upperdatums:");
    appendStringInfoChar(v3, 91);
    v16 = *(a2 + 32);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v3, v20);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v3, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v3, "],");
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v3, "location:%d,", *(a2 + 40));
  }

  return result;
}

uint64_t _outPartitionRangeDatum(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4) + 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&off_2797B7748)[v4];
  }

  result = appendStringInfo(a1, "kind:%s,", v5);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "value:");
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",");
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", *(a2 + 16));
  }

  return result;
}

int *_outPartitionCmd(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v3, "bound:{");
    _outPartitionBoundSpec(v3, *(a2 + 16));
    v8 = v3[2];
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v5)
    {
      v10 = *v3;
      if (*(*v3 + v9) == 44)
      {
        v3[2] = v9;
        *(v10 + v9) = 0;
      }
    }

    return appendStringInfo(v3, "},");
  }

  return result;
}

int *_outVacuumRelation(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{");
    _outRangeVar(v3, *(a2 + 8));
    v4 = v3[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = *v3;
      if (*(*v3 + v6) == 44)
      {
        v3[2] = v6;
        *(v7 + v6) = 0;
      }
    }

    result = appendStringInfo(v3, "},");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "oid:%u,", *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v3, "va_cols:");
    appendStringInfoChar(v3, 91);
    v8 = *(a2 + 24);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          _outNode(v3, v12);
        }

        else
        {
          appendStringInfoString(v3, "{}");
        }

        if (v11 + v10)
        {
          v13 = v11 + v10 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          appendStringInfoString(v3, ",");
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < *(v8 + 4));
    }

    return appendStringInfo(v3, "],");
  }

  return result;
}

int *_outInlineCodeBlock(int *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "source_text:");
    _outToken(v3, *(a2 + 8));
    result = appendStringInfo(v3, ",");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v3, "langOid:%u,", *(a2 + 16));
  }

  if (*(a2 + 20) != 1)
  {
    if (*(a2 + 21) != 1)
    {
      return result;
    }

    return appendStringInfo(v3, "atomic:%s,", "true");
  }

  result = appendStringInfo(v3, "langIsTrusted:%s,", "true");
  if (*(a2 + 21) == 1)
  {
    return appendStringInfo(v3, "atomic:%s,", "true");
  }

  return result;
}

int *_outToken(int *result, unsigned __int8 *a2)
{
  v2 = result;
  if (a2)
  {
    v3 = a2;
    v4 = result[2];
    if (v4 + 1 >= result[3])
    {
      result = appendStringInfoChar(result, 34);
    }

    else
    {
      *(*result + v4) = 34;
      v5 = *result;
      v6 = result[2] + 1;
      result[2] = v6;
      *(v5 + v6) = 0;
    }

    while (1)
    {
      while (1)
      {
        v7 = *v3;
        if (v7 > 0xB)
        {
          break;
        }

        if (*v3 <= 8u)
        {
          if (v7 == 8)
          {
            result = appendStringInfoString(v2, "\\b");
            ++v3;
          }

          else
          {
            if (!*v3)
            {
              v11 = v2[2];
              if (v11 + 1 >= v2[3])
              {

                return appendStringInfoChar(v2, 34);
              }

              else
              {
                *(*v2 + v11) = 34;
                v12 = *v2;
                v13 = v2[2] + 1;
                v2[2] = v13;
                *(v12 + v13) = 0;
              }

              return result;
            }

LABEL_26:
            if (v7 < 0x20 || (v7 | 2) == 0x3E)
            {
              result = appendStringInfo(v2, "\\u%04x", *v3++);
            }

            else
            {
              v8 = v2[2];
              if (v8 + 1 >= v2[3])
              {
                result = appendStringInfoChar(v2, v7);
              }

              else
              {
                *(*v2 + v8) = v7;
                v9 = *v2;
                v10 = v2[2] + 1;
                v2[2] = v10;
                *(v9 + v10) = 0;
              }

              ++v3;
            }
          }
        }

        else if (v7 == 9)
        {
          result = appendStringInfoString(v2, "\\t");
          ++v3;
        }

        else
        {
          if (v7 != 10)
          {
            goto LABEL_26;
          }

          result = appendStringInfoString(v2, "\\n");
          ++v3;
        }
      }

      if (*v3 > 0x21u)
      {
        if (v7 == 34)
        {
          result = appendStringInfoString(v2, "\");
          ++v3;
        }

        else
        {
          if (v7 != 92)
          {
            goto LABEL_26;
          }

          result = appendStringInfoString(v2, "\\\"");
          ++v3;
        }
      }

      else if (v7 == 12)
      {
        result = appendStringInfoString(v2, "\\f");
        ++v3;
      }

      else
      {
        if (v7 != 13)
        {
          goto LABEL_26;
        }

        result = appendStringInfoString(v2, "\\r");
        ++v3;
      }
    }
  }

  return appendStringInfoString(result, "null");
}

size_t pg_query_nodes_to_protobuf(uint64_t a1, uint64_t a2)
{
  v16 = xmmword_2797B7760;
  v17 = *algn_2797B7770;
  v18 = xmmword_2797B7780;
  DWORD2(v17) = 130003;
  if (a1)
  {
    *&v18 = *(a1 + 4);
    v3 = palloc(8 * v18, 0.0);
    *(&v18 + 1) = v3;
    if (*(a1 + 4) >= 1)
    {
      v5 = v3;
      v6 = 0;
      do
      {
        v7 = *(a1 + 16);
        v8 = palloc(0x28uLL, raw_stmt__init);
        *(v5 + 8 * v6) = v8;
        raw_stmt__init = pg_query__raw_stmt__init(v8);
        v9 = *(v5 + 8 * v6);
        v10 = *(v7 + 8 * v6);
        if (*(v10 + 8))
        {
          v11 = palloc(0x28uLL, raw_stmt__init);
          node__init = pg_query__node__init(v11);
          *(v9 + 24) = v11;
          _outNode_0(v11, *(v10 + 8), node__init);
        }

        *(v9 + 32) = *(v10 + 16);
        *(v9 + 36) = *(v10 + 20);
        ++v6;
      }

      while (v6 < *(a1 + 4));
    }
  }

  else
  {
    v18 = 0uLL;
  }

  packed_size = pg_query__parse_result__get_packed_size(&v16, a2);
  v14 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  pg_query__parse_result__pack(&v16, v14);
  return packed_size;
}

uint64_t _outRawStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 24) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 32) = *(a2 + 16);
  *(v4 + 36) = *(a2 + 20);
  return result;
}

void _outNode_0(uint64_t result, _DWORD *a2, double a3)
{
  if (a2)
  {
    switch(*a2)
    {
      case 0x66:
        v5 = palloc(0x30uLL, a3);
        alias__init = pg_query__alias__init(v5);
        _outAlias_0(v5, a2, alias__init);
        *(result + 32) = v5;
        v7 = 1;
        goto LABEL_252;
      case 0x67:
        v9 = palloc(0x50uLL, a3);
        range_var__init = pg_query__range_var__init(v9);
        _outRangeVar_0(v9, a2, range_var__init);
        *(result + 32) = v9;
        v7 = 2;
        goto LABEL_252;
      case 0x68:
        v218 = palloc(0xC0uLL, a3);
        table_func__init = pg_query__table_func__init(v218);
        _outTableFunc_0(v218, a2, table_func__init);
        *(result + 32) = v218;
        v7 = 3;
        goto LABEL_252;
      case 0x69:
        v344 = palloc(0x18uLL, a3);
        pg_query__expr__init(v344);
        *(result + 32) = v344;
        v7 = 4;
        goto LABEL_252;
      case 0x6A:
        v34 = palloc(0x48uLL, a3);
        pg_query__var__init(v34);
        _outVar_0(v34, a2);
        *(result + 32) = v34;
        v7 = 5;
        goto LABEL_252;
      case 0x6C:
        v8 = palloc(0x38uLL, a3);
        pg_query__param__init(v8);
        _outParam_0(v8, a2);
        *(result + 32) = v8;
        v7 = 6;
        goto LABEL_252;
      case 0x6D:
        v43 = palloc(0xB0uLL, a3);
        aggref__init = pg_query__aggref__init(v43);
        _outAggref_0(v43, a2, aggref__init);
        *(result + 32) = v43;
        v7 = 7;
        goto LABEL_252;
      case 0x6E:
        v11 = palloc(0x58uLL, a3);
        grouping_func__init = pg_query__grouping_func__init(v11);
        _outGroupingFunc_0(v11, a2, grouping_func__init);
        *(result + 32) = v11;
        v7 = 8;
        goto LABEL_252;
      case 0x6F:
        v436 = palloc(0x58uLL, a3);
        window_func__init = pg_query__window_func__init(v436);
        _outWindowFunc_0(v436, a2, window_func__init);
        *(result + 32) = v436;
        v7 = 9;
        goto LABEL_252;
      case 0x70:
        v448 = palloc(0x60uLL, a3);
        subscripting_ref__init = pg_query__subscripting_ref__init(v448);
        _outSubscriptingRef_0(v448, a2, subscripting_ref__init);
        *(result + 32) = v448;
        v7 = 10;
        goto LABEL_252;
      case 0x71:
        v450 = palloc(0x58uLL, a3);
        func_expr__init = pg_query__func_expr__init(v450);
        _outFuncExpr_0(v450, a2, func_expr__init);
        *(result + 32) = v450;
        v7 = 11;
        goto LABEL_252;
      case 0x72:
        v225 = palloc(0x38uLL, a3);
        named_arg_expr__init = pg_query__named_arg_expr__init(v225);
        _outNamedArgExpr_0(v225, a2, named_arg_expr__init);
        *(result + 32) = v225;
        v7 = 12;
        goto LABEL_252;
      case 0x73:
        v122 = palloc(0x50uLL, a3);
        op_expr__init = pg_query__op_expr__init(v122);
        _outOpExpr_0(v122, a2, op_expr__init);
        *(result + 32) = v122;
        v7 = 13;
        goto LABEL_252;
      case 0x74:
        v292 = palloc(0x50uLL, a3);
        distinct_expr__init = pg_query__distinct_expr__init(v292);
        _outOpExpr_0(v292, a2, distinct_expr__init);
        *(result + 32) = v292;
        v7 = 14;
        goto LABEL_252;
      case 0x75:
        v432 = palloc(0x50uLL, a3);
        null_if_expr__init = pg_query__null_if_expr__init(v432);
        _outOpExpr_0(v432, a2, null_if_expr__init);
        *(result + 32) = v432;
        v7 = 15;
        goto LABEL_252;
      case 0x76:
        v83 = palloc(0x48uLL, a3);
        scalar_array_op_expr__init = pg_query__scalar_array_op_expr__init(v83);
        _outScalarArrayOpExpr_0(v83, a2, scalar_array_op_expr__init);
        *(result + 32) = v83;
        v7 = 16;
        goto LABEL_252;
      case 0x77:
        v79 = palloc(0x40uLL, a3);
        BOOL_expr__init = pg_query__BOOL_expr__init(v79);
        _outBoolExpr_0(v79, a2, BOOL_expr__init);
        *(result + 32) = v79;
        v7 = 17;
        goto LABEL_252;
      case 0x78:
        v19 = palloc(0x50uLL, a3);
        sub_link__init = pg_query__sub_link__init(v19);
        _outSubLink_0(v19, a2, sub_link__init);
        *(result + 32) = v19;
        v7 = 18;
        goto LABEL_252;
      case 0x79:
        v17 = palloc(0xA8uLL, a3);
        sub_plan__init = pg_query__sub_plan__init(v17);
        _outSubPlan_0(v17, a2, sub_plan__init);
        *(result + 32) = v17;
        v7 = 19;
        goto LABEL_252;
      case 0x7A:
        v442 = palloc(0x30uLL, a3);
        alternative_sub_plan__init = pg_query__alternative_sub_plan__init(v442);
        _outAlternativeSubPlan_0(v442, a2, alternative_sub_plan__init);
        *(result + 32) = v442;
        v7 = 20;
        goto LABEL_252;
      case 0x7B:
        v21 = palloc(0x38uLL, a3);
        field_select__init = pg_query__field_select__init(v21);
        _outFieldSelect_0(v21, a2, field_select__init);
        *(result + 32) = v21;
        v7 = 21;
        goto LABEL_252;
      case 0x7C:
        v380 = palloc(0x50uLL, a3);
        field_store__init = pg_query__field_store__init(v380);
        _outFieldStore_0(v380, a2, field_store__init);
        *(result + 32) = v380;
        v7 = 22;
        goto LABEL_252;
      case 0x7D:
        v116 = palloc(0x40uLL, a3);
        relabel_type__init = pg_query__relabel_type__init(v116);
        _outRelabelType_0(v116, a2, relabel_type__init);
        *(result + 32) = v116;
        v7 = 23;
        goto LABEL_252;
      case 0x7E:
        v190 = palloc(0x38uLL, a3);
        coerce_via_io__init = pg_query__coerce_via_io__init(v190);
        _outCoerceViaIO_0(v190, a2, coerce_via_io__init);
        *(result + 32) = v190;
        v7 = 24;
        goto LABEL_252;
      case 0x7F:
        v25 = palloc(0x48uLL, a3);
        array_coerce_expr__init = pg_query__array_coerce_expr__init(v25);
        _outArrayCoerceExpr_0(v25, a2, array_coerce_expr__init);
        *(result + 32) = v25;
        v7 = 25;
        goto LABEL_252;
      case 0x80:
        v393 = palloc(0x38uLL, a3);
        convert_rowtype_expr__init = pg_query__convert_rowtype_expr__init(v393);
        _outConvertRowtypeExpr_0(v393, a2, convert_rowtype_expr__init);
        *(result + 32) = v393;
        v7 = 26;
        goto LABEL_252;
      case 0x81:
        v388 = palloc(0x30uLL, a3);
        collate_expr__init = pg_query__collate_expr__init(v388);
        _outCollateExpr_0(v388, a2, collate_expr__init);
        *(result + 32) = v388;
        v7 = 27;
        goto LABEL_252;
      case 0x82:
        v416 = palloc(0x50uLL, a3);
        case_expr__init = pg_query__case_expr__init(v416);
        _outCaseExpr_0(v416, a2, case_expr__init);
        *(result + 32) = v416;
        v7 = 28;
        goto LABEL_252;
      case 0x83:
        v411 = palloc(0x38uLL, a3);
        case_when__init = pg_query__case_when__init(v411);
        _outCaseWhen_0(v411, a2, case_when__init);
        *(result + 32) = v411;
        v7 = 29;
        goto LABEL_252;
      case 0x84:
        v353 = palloc(0x30uLL, a3);
        pg_query__case_test_expr__init(v353);
        *(v353 + 32) = a2[1];
        *(v353 + 36) = a2[2];
        *(v353 + 40) = a2[3];
        *(result + 32) = v353;
        v7 = 30;
        goto LABEL_252;
      case 0x85:
        v229 = palloc(0x48uLL, a3);
        array_expr__init = pg_query__array_expr__init(v229);
        _outArrayExpr_0(v229, a2, array_expr__init);
        *(result + 32) = v229;
        v7 = 31;
        goto LABEL_252;
      case 0x86:
        v405 = palloc(0x50uLL, a3);
        row_expr__init = pg_query__row_expr__init(v405);
        _outRowExpr_0(v405, a2, row_expr__init);
        *(result + 32) = v405;
        v7 = 32;
        goto LABEL_252;
      case 0x87:
        v403 = palloc(0x78uLL, a3);
        row_compare_expr__init = pg_query__row_compare_expr__init(v403);
        _outRowCompareExpr_0(v403, a2, row_compare_expr__init);
        *(result + 32) = v403;
        v7 = 33;
        goto LABEL_252;
      case 0x88:
        v27 = palloc(0x40uLL, a3);
        coalesce_expr__init = pg_query__coalesce_expr__init(v27);
        _outCoalesceExpr_0(v27, a2, coalesce_expr__init);
        *(result + 32) = v27;
        v7 = 34;
        goto LABEL_252;
      case 0x89:
        v429 = palloc(0x48uLL, a3);
        min_max_expr__init = pg_query__min_max_expr__init(v429);
        _outMinMaxExpr_0(v429, a2, min_max_expr__init);
        *(result + 32) = v429;
        v7 = 35;
        goto LABEL_252;
      case 0x8A:
        v422 = palloc(0x30uLL, a3);
        pg_query__sqlvalue_function__init(v422);
        _outSQLValueFunction_0(v422, a2);
        *(result + 32) = v422;
        v7 = 36;
        goto LABEL_252;
      case 0x8B:
        v29 = palloc(0x70uLL, a3);
        xml_expr__init = pg_query__xml_expr__init(v29);
        _outXmlExpr_0(v29, a2, xml_expr__init);
        *(result + 32) = v29;
        v7 = 37;
        goto LABEL_252;
      case 0x8C:
        v110 = palloc(0x38uLL, a3);
        null_test__init = pg_query__null_test__init(v110);
        _outNullTest_0(v110, a2, null_test__init);
        *(result + 32) = v110;
        v7 = 38;
        goto LABEL_252;
      case 0x8D:
        v13 = palloc(0x30uLL, a3);
        BOOLean_test__init = pg_query__BOOLean_test__init(v13);
        _outBooleanTest_0(v13, a2, BOOLean_test__init);
        *(result + 32) = v13;
        v7 = 39;
        goto LABEL_252;
      case 0x8E:
        v427 = palloc(0x40uLL, a3);
        coerce_to_domain__init = pg_query__coerce_to_domain__init(v427);
        _outRelabelType_0(v427, a2, coerce_to_domain__init);
        *(result + 32) = v427;
        v7 = 40;
        goto LABEL_252;
      case 0x8F:
        v431 = palloc(0x30uLL, a3);
        pg_query__coerce_to_domain_value__init(v431);
        *(v431 + 32) = a2[1];
        *(v431 + 36) = a2[2];
        *(v431 + 40) = a2[3];
        *(v431 + 44) = a2[4];
        *(result + 32) = v431;
        v7 = 41;
        goto LABEL_252;
      case 0x90:
        v56 = palloc(0x30uLL, a3);
        pg_query__set_to_default__init(v56);
        *(v56 + 32) = a2[1];
        *(v56 + 36) = a2[2];
        *(v56 + 40) = a2[3];
        *(v56 + 44) = a2[4];
        *(result + 32) = v56;
        v7 = 42;
        goto LABEL_252;
      case 0x91:
        v220 = palloc(0x38uLL, a3);
        current_of_expr__init = pg_query__current_of_expr__init(v220);
        *(v220 + 32) = a2[1];
        v222 = *(a2 + 1);
        if (v222)
        {
          *(v220 + 40) = pstrdup(v222, current_of_expr__init);
        }

        *(v220 + 48) = a2[4];
        *(result + 32) = v220;
        v7 = 43;
        goto LABEL_252;
      case 0x92:
        v42 = palloc(0x28uLL, a3);
        pg_query__next_value_expr__init(v42);
        *(v42 + 32) = a2[1];
        *(v42 + 36) = a2[2];
        *(result + 32) = v42;
        v7 = 44;
        goto LABEL_252;
      case 0x93:
        v63 = palloc(0x30uLL, a3);
        inference_elem__init = pg_query__inference_elem__init(v63);
        _outCollateExpr_0(v63, a2, inference_elem__init);
        *(result + 32) = v63;
        v7 = 45;
        goto LABEL_252;
      case 0x94:
        v423 = palloc(0x48uLL, a3);
        target_entry__init = pg_query__target_entry__init(v423);
        _outTargetEntry_0(v423, a2, target_entry__init);
        *(result + 32) = v423;
        v7 = 46;
        goto LABEL_252;
      case 0x95:
        v37 = palloc(0x20uLL, a3);
        pg_query__range_tbl_ref__init(v37);
        *(v37 + 24) = a2[1];
        *(result + 32) = v37;
        v7 = 47;
        goto LABEL_252;
      case 0x96:
        v15 = palloc(0x58uLL, a3);
        join_expr__init = pg_query__join_expr__init(v15);
        _outJoinExpr_0(v15, a2, join_expr__init);
        *(result + 32) = v15;
        v7 = 48;
        goto LABEL_252;
      case 0x97:
        v45 = palloc(0x30uLL, a3);
        v46 = pg_query__from_expr__init(v45);
        _outFromExpr_0(v45, a2, v46);
        *(result + 32) = v45;
        v7 = 49;
        goto LABEL_252;
      case 0x98:
        v425 = palloc(0x70uLL, a3);
        v426 = pg_query__on_conflict_expr__init(v425);
        _outOnConflictExpr_0(v425, a2, v426);
        *(result + 32) = v425;
        v7 = 50;
        goto LABEL_252;
      case 0x99:
        v112 = palloc(0x68uLL, a3);
        into_clause__init = pg_query__into_clause__init(v112);
        _outIntoClause_0(v112, a2, into_clause__init);
        *(result + 32) = v112;
        v7 = 51;
        goto LABEL_252;
      case 0xDD:
        v186 = palloc(0x20uLL, a3);
        pg_query__integer__init(v186);
        *(v186 + 24) = a2[2];
        *(result + 32) = v186;
        v7 = 221;
        goto LABEL_252;
      case 0xDE:
        v31 = palloc(0x20uLL, a3);
        pg_query__float__init(v31);
        *(v31 + 24) = *(a2 + 1);
        *(result + 32) = v31;
        v7 = 222;
        goto LABEL_252;
      case 0xDF:
        v354 = palloc(0x20uLL, a3);
        pg_query__string__init(v354);
        *(v354 + 24) = *(a2 + 1);
        *(result + 32) = v354;
        v7 = 223;
        goto LABEL_252;
      case 0xE0:
        v298 = palloc(0x20uLL, a3);
        pg_query__bit_string__init(v298);
        *(v298 + 24) = *(a2 + 1);
        *(result + 32) = v298;
        v7 = 224;
        goto LABEL_252;
      case 0xE1:
        v413 = palloc(0x18uLL, a3);
        pg_query__null__init(v413);
        *(result + 32) = v413;
        v7 = 225;
        goto LABEL_252;
      case 0xE2:
        v294 = palloc(0x28uLL, a3);
        list__init = pg_query__list__init(v294);
        _outList_0(v294, a2, list__init);
        *(result + 32) = v294;
        v7 = 226;
        goto LABEL_252;
      case 0xE3:
        v126 = palloc(0x28uLL, a3);
        int_list__init = pg_query__int_list__init(v126);
        _outList_0(v126, a2, int_list__init);
        *(result + 32) = v126;
        v7 = 227;
        goto LABEL_252;
      case 0xE4:
        v59 = palloc(0x28uLL, a3);
        oid_list__init = pg_query__oid_list__init(v59);
        _outList_0(v59, a2, oid_list__init);
        *(result + 32) = v59;
        v7 = 228;
        goto LABEL_252;
      case 0xE6:
        v100 = palloc(0x28uLL, a3);
        raw_stmt__init = pg_query__raw_stmt__init(v100);
        _outRawStmt_0(v100, a2, raw_stmt__init);
        *(result + 32) = v100;
        v7 = 52;
        goto LABEL_252;
      case 0xE7:
        v71 = palloc(0x160uLL, a3);
        pg_query__query__init(v71);
        _outQuery_0(v71, a2, v72);
        *(result + 32) = v71;
        v7 = 53;
        goto LABEL_252;
      case 0xE9:
        v23 = palloc(0x60uLL, a3);
        insert_stmt__init = pg_query__insert_stmt__init(v23);
        _outInsertStmt_0(v23, a2, insert_stmt__init);
        *(result + 32) = v23;
        v7 = 54;
        goto LABEL_252;
      case 0xEA:
        v446 = palloc(0x50uLL, a3);
        v447 = pg_query__delete_stmt__init(v446);
        _outDeleteStmt_0(v446, a2, v447);
        *(result + 32) = v446;
        v7 = 55;
        goto LABEL_252;
      case 0xEB:
        v438 = palloc(0x60uLL, a3);
        update_stmt__init = pg_query__update_stmt__init(v438);
        _outUpdateStmt_0(v438, a2, update_stmt__init);
        *(result + 32) = v438;
        v7 = 56;
        goto LABEL_252;
      case 0xEC:
        v444 = palloc(0xE8uLL, a3);
        select_stmt__init = pg_query__select_stmt__init(v444);
        _outSelectStmt_0(v444, a2, select_stmt__init);
        *(result + 32) = v444;
        v7 = 57;
        goto LABEL_252;
      case 0xED:
        v414 = palloc(0x38uLL, a3);
        alter_table_stmt__init = pg_query__alter_table_stmt__init(v414);
        _outAlterTableStmt_0(v414, a2, alter_table_stmt__init);
        *(result + 32) = v414;
        v7 = 58;
        goto LABEL_252;
      case 0xEE:
        v124 = palloc(0x48uLL, a3);
        alter_table_cmd__init = pg_query__alter_table_cmd__init(v124);
        _outAlterTableCmd_0(v124, a2, alter_table_cmd__init);
        *(result + 32) = v124;
        v7 = 59;
        goto LABEL_252;
      case 0xEF:
        v65 = palloc(0x48uLL, a3);
        alter_domain_stmt__init = pg_query__alter_domain_stmt__init(v65);
        _outAlterDomainStmt_0(v65, a2, alter_domain_stmt__init);
        *(result + 32) = v65;
        v7 = 60;
        goto LABEL_252;
      case 0xF0:
        v81 = palloc(0x70uLL, a3);
        set_operation_stmt__init = pg_query__set_operation_stmt__init(v81);
        _outSetOperationStmt_0(v81, a2, set_operation_stmt__init);
        *(result + 32) = v81;
        v7 = 61;
        goto LABEL_252;
      case 0xF1:
        v440 = palloc(0x60uLL, a3);
        grant_stmt__init = pg_query__grant_stmt__init(v440);
        _outGrantStmt_0(v440, a2, grant_stmt__init);
        *(result + 32) = v440;
        v7 = 62;
        goto LABEL_252;
      case 0xF2:
        v38 = palloc(0x50uLL, a3);
        grant_role_stmt__init = pg_query__grant_role_stmt__init(v38);
        _outGrantRoleStmt_0(v38, a2, grant_role_stmt__init);
        *(result + 32) = v38;
        v7 = 63;
        goto LABEL_252;
      case 0xF3:
        v85 = palloc(0x30uLL, a3);
        alter_default_privileges_stmt__init = pg_query__alter_default_privileges_stmt__init(v85);
        _outAlterDefaultPrivilegesStmt_0(v85, a2, alter_default_privileges_stmt__init);
        *(result + 32) = v85;
        v7 = 64;
        goto LABEL_252;
      case 0xF4:
        v97 = palloc(0x20uLL, a3);
        close_portal_stmt__init = pg_query__close_portal_stmt__init(v97);
        v99 = *(a2 + 1);
        if (v99)
        {
          *(v97 + 24) = pstrdup(v99, close_portal_stmt__init);
        }

        *(result + 32) = v97;
        v7 = 65;
        goto LABEL_252;
      case 0xF5:
        v384 = palloc(0x30uLL, a3);
        cluster_stmt__init = pg_query__cluster_stmt__init(v384);
        _outClusterStmt_0(v384, a2, cluster_stmt__init);
        *(result + 32) = v384;
        v7 = 66;
        goto LABEL_252;
      case 0xF6:
        v234 = palloc(0x60uLL, a3);
        copy_stmt__init = pg_query__copy_stmt__init(v234);
        _outCopyStmt_0(v234, a2, copy_stmt__init);
        *(result + 32) = v234;
        v7 = 67;
        goto LABEL_252;
      case 0xF7:
        v104 = palloc(0x98uLL, a3);
        stmt__init = pg_query__create_stmt__init(v104);
        _outCreateStmt_0(v104, a2, stmt__init);
        *(result + 32) = v104;
        v7 = 68;
        goto LABEL_252;
      case 0xF8:
        v128 = palloc(0x58uLL, a3);
        define_stmt__init = pg_query__define_stmt__init(v128);
        _outDefineStmt_0(v128, a2, define_stmt__init);
        *(result + 32) = v128;
        v7 = 69;
        goto LABEL_252;
      case 0xF9:
        v236 = palloc(0x38uLL, a3);
        drop_stmt__init = pg_query__drop_stmt__init(v236);
        _outDropStmt_0(v236, a2, drop_stmt__init);
        *(result + 32) = v236;
        v7 = 70;
        goto LABEL_252;
      case 0xFA:
        v47 = palloc(0x30uLL, a3);
        truncate_stmt__init = pg_query__truncate_stmt__init(v47);
        _outTruncateStmt_0(v47, a2, truncate_stmt__init);
        *(result + 32) = v47;
        v7 = 71;
LABEL_252:
        *(result + 24) = v7;
        break;
      case 0xFB:
        v163 = palloc(0x30uLL, a3);
        comment_stmt__init = pg_query__comment_stmt__init(v163);
        _outCommentStmt_0(v163, a2, comment_stmt__init);
        *(result + 32) = v163;
        *(result + 24) = 72;
        break;
      case 0xFC:
        v49 = palloc(0x38uLL, a3);
        v50 = pg_query__fetch_stmt__init(v49);
        _outFetchStmt_0(v49, a2, v50);
        *(result + 32) = v49;
        *(result + 24) = 73;
        break;
      case 0xFD:
        v407 = palloc(0xC0uLL, a3);
        index_stmt__init = pg_query__index_stmt__init(v407);
        _outIndexStmt_0(v407, a2, index_stmt__init);
        *(result + 32) = v407;
        *(result + 24) = 74;
        break;
      case 0xFE:
        v342 = palloc(0x58uLL, a3);
        function_stmt__init = pg_query__create_function_stmt__init(v342);
        _outCreateFunctionStmt_0(v342, a2, function_stmt__init);
        *(result + 32) = v342;
        *(result + 24) = 75;
        break;
      case 0xFF:
        v299 = palloc(0x38uLL, a3);
        alter_function_stmt__init = pg_query__alter_function_stmt__init(v299);
        _outAlterFunctionStmt_0(v299, a2, alter_function_stmt__init);
        *(result + 32) = v299;
        *(result + 24) = 76;
        break;
      case 0x100:
        v132 = palloc(0x28uLL, a3);
        do_stmt__init = pg_query__do_stmt__init(v132);
        _outDoStmt_0(v132, a2, do_stmt__init);
        *(result + 32) = v132;
        *(result + 24) = 77;
        break;
      case 0x101:
        v364 = palloc(0x48uLL, a3);
        rename_stmt__init = pg_query__rename_stmt__init(v364);
        _outRenameStmt_0(v364, a2, rename_stmt__init);
        *(result + 32) = v364;
        *(result + 24) = 78;
        break;
      case 0x102:
        v401 = palloc(0x50uLL, a3);
        rule_stmt__init = pg_query__rule_stmt__init(v401);
        _outRuleStmt_0(v401, a2, rule_stmt__init);
        *(result + 32) = v401;
        *(result + 24) = 79;
        break;
      case 0x103:
        v434 = palloc(0x28uLL, a3);
        notify_stmt__init = pg_query__notify_stmt__init(v434);
        _outNotifyStmt_0(v434, a2, notify_stmt__init);
        *(result + 32) = v434;
        *(result + 24) = 80;
        break;
      case 0x104:
        v160 = palloc(0x20uLL, a3);
        listen_stmt__init = pg_query__listen_stmt__init(v160);
        v162 = *(a2 + 1);
        if (v162)
        {
          *(v160 + 24) = pstrdup(v162, listen_stmt__init);
        }

        *(result + 32) = v160;
        *(result + 24) = 81;
        break;
      case 0x105:
        v53 = palloc(0x20uLL, a3);
        unlisten_stmt__init = pg_query__unlisten_stmt__init(v53);
        v55 = *(a2 + 1);
        if (v55)
        {
          *(v53 + 24) = pstrdup(v55, unlisten_stmt__init);
        }

        *(result + 32) = v53;
        *(result + 24) = 82;
        break;
      case 0x106:
        v69 = palloc(0x48uLL, a3);
        transaction_stmt__init = pg_query__transaction_stmt__init(v69);
        _outTransactionStmt_0(v69, a2, transaction_stmt__init);
        *(result + 32) = v69;
        *(result + 24) = 83;
        break;
      case 0x107:
        v347 = palloc(0x58uLL, a3);
        view_stmt__init = pg_query__view_stmt__init(v347);
        _outViewStmt_0(v347, a2, view_stmt__init);
        *(result + 32) = v347;
        *(result + 24) = 84;
        break;
      case 0x108:
        v171 = palloc(0x20uLL, a3);
        load_stmt__init = pg_query__load_stmt__init(v171);
        v173 = *(a2 + 1);
        if (v173)
        {
          *(v171 + 24) = pstrdup(v173, load_stmt__init);
        }

        *(result + 32) = v171;
        *(result + 24) = 85;
        break;
      case 0x109:
        v395 = palloc(0x48uLL, a3);
        domain_stmt__init = pg_query__create_domain_stmt__init(v395);
        _outCreateDomainStmt_0(v395, a2, domain_stmt__init);
        *(result + 32) = v395;
        *(result + 24) = 86;
        break;
      case 0x10A:
        v418 = palloc(0x30uLL, a3);
        createdb_stmt__init = pg_query__createdb_stmt__init(v418);
        _outAlias_0(v418, a2, createdb_stmt__init);
        *(result + 32) = v418;
        *(result + 24) = 87;
        break;
      case 0x10B:
        v40 = palloc(0x38uLL, a3);
        dropdb_stmt__init = pg_query__dropdb_stmt__init(v40);
        _outDropdbStmt_0(v40, a2, dropdb_stmt__init);
        *(result + 32) = v40;
        *(result + 24) = 88;
        break;
      case 0x10C:
        v32 = palloc(0x40uLL, a3);
        vacuum_stmt__init = pg_query__vacuum_stmt__init(v32);
        _outVacuumStmt_0(v32, a2, vacuum_stmt__init);
        *(result + 32) = v32;
        *(result + 24) = 89;
        break;
      case 0x10D:
        v174 = palloc(0x30uLL, a3);
        explain_stmt__init = pg_query__explain_stmt__init(v174);
        _outExplainStmt_0(v174, a2, explain_stmt__init);
        *(result + 32) = v174;
        *(result + 24) = 90;
        break;
      case 0x10E:
        v194 = palloc(0x38uLL, a3);
        table_as_stmt__init = pg_query__create_table_as_stmt__init(v194);
        _outCreateTableAsStmt_0(v194, a2, table_as_stmt__init);
        *(result + 32) = v194;
        *(result + 24) = 91;
        break;
      case 0x10F:
        v303 = palloc(0x40uLL, a3);
        seq_stmt__init = pg_query__create_seq_stmt__init(v303);
        _outCreateSeqStmt_0(v303, a2, seq_stmt__init);
        *(result + 32) = v303;
        *(result + 24) = 92;
        break;
      case 0x110:
        v210 = palloc(0x38uLL, a3);
        alter_seq_stmt__init = pg_query__alter_seq_stmt__init(v210);
        _outAlterSeqStmt_0(v210, a2, alter_seq_stmt__init);
        *(result + 32) = v210;
        *(result + 24) = 93;
        break;
      case 0x111:
        v301 = palloc(0x40uLL, a3);
        variable_set_stmt__init = pg_query__variable_set_stmt__init(v301);
        _outVariableSetStmt_0(v301, a2, variable_set_stmt__init);
        *(result + 32) = v301;
        *(result + 24) = 94;
        break;
      case 0x112:
        v239 = palloc(0x20uLL, a3);
        variable_show_stmt__init = pg_query__variable_show_stmt__init(v239);
        v241 = *(a2 + 1);
        if (v241)
        {
          *(v239 + 24) = pstrdup(v241, variable_show_stmt__init);
        }

        *(result + 32) = v239;
        *(result + 24) = 95;
        break;
      case 0x113:
        v355 = palloc(0x20uLL, a3);
        pg_query__discard_stmt__init(v355);
        v356 = a2[1];
        if (v356 < 4)
        {
          v357 = v356 + 1;
        }

        else
        {
          v357 = -1;
        }

        *(v355 + 24) = v357;
        *(result + 32) = v355;
        *(result + 24) = 96;
        break;
      case 0x114:
        v35 = palloc(0x98uLL, a3);
        trig_stmt__init = pg_query__create_trig_stmt__init(v35);
        _outCreateTrigStmt_0(v35, a2, trig_stmt__init);
        *(result + 32) = v35;
        *(result + 24) = 97;
        break;
      case 0x115:
        v57 = palloc(0x60uLL, a3);
        plang_stmt__init = pg_query__create_plang_stmt__init(v57);
        _outCreatePLangStmt_0(v57, a2, plang_stmt__init);
        *(result + 32) = v57;
        *(result + 24) = 98;
        break;
      case 0x116:
        v200 = palloc(0x38uLL, a3);
        role_stmt__init = pg_query__create_role_stmt__init(v200);
        _outCreateRoleStmt_0(v200, a2, role_stmt__init);
        *(result + 32) = v200;
        *(result + 24) = 99;
        break;
      case 0x117:
        v89 = palloc(0x38uLL, a3);
        alter_role_stmt__init = pg_query__alter_role_stmt__init(v89);
        _outAlterRoleStmt_0(v89, a2, alter_role_stmt__init);
        *(result + 32) = v89;
        *(result + 24) = 100;
        break;
      case 0x118:
        v312 = palloc(0x30uLL, a3);
        drop_role_stmt__init = pg_query__drop_role_stmt__init(v312);
        _outDropRoleStmt_0(v312, a2, drop_role_stmt__init);
        *(result + 32) = v312;
        *(result + 24) = 101;
        break;
      case 0x119:
        v316 = palloc(0x30uLL, a3);
        lock_stmt__init = pg_query__lock_stmt__init(v316);
        _outLockStmt_0(v316, a2, lock_stmt__init);
        *(result + 32) = v316;
        *(result + 24) = 102;
        break;
      case 0x11A:
        v188 = palloc(0x30uLL, a3);
        constraints_set_stmt__init = pg_query__constraints_set_stmt__init(v188);
        _outDropRoleStmt_0(v188, a2, constraints_set_stmt__init);
        *(result + 32) = v188;
        *(result + 24) = 103;
        break;
      case 0x11B:
        v334 = palloc(0x38uLL, a3);
        reindex_stmt__init = pg_query__reindex_stmt__init(v334);
        _outReindexStmt_0(v334, a2, reindex_stmt__init);
        *(result + 32) = v334;
        *(result + 24) = 104;
        break;
      case 0x11C:
        v311 = palloc(0x18uLL, a3);
        pg_query__check_point_stmt__init(v311);
        *(result + 32) = v311;
        *(result + 24) = 105;
        break;
      case 0x11D:
        v130 = palloc(0x40uLL, a3);
        schema_stmt__init = pg_query__create_schema_stmt__init(v130);
        _outCreateSchemaStmt_0(v130, a2, schema_stmt__init);
        *(result + 32) = v130;
        *(result + 24) = 106;
        break;
      case 0x11E:
        v136 = palloc(0x30uLL, a3);
        alter_database_stmt__init = pg_query__alter_database_stmt__init(v136);
        _outAlias_0(v136, a2, alter_database_stmt__init);
        *(result + 32) = v136;
        *(result + 24) = 107;
        break;
      case 0x11F:
        v314 = palloc(0x28uLL, a3);
        alter_database_set_stmt__init = pg_query__alter_database_set_stmt__init(v314);
        _outAlterDatabaseSetStmt_0(v314, a2, alter_database_set_stmt__init);
        *(result + 32) = v314;
        *(result + 24) = 108;
        break;
      case 0x120:
        v345 = palloc(0x30uLL, a3);
        alter_role_set_stmt__init = pg_query__alter_role_set_stmt__init(v345);
        _outAlterRoleSetStmt_0(v345, a2, alter_role_set_stmt__init);
        *(result + 32) = v345;
        *(result + 24) = 109;
        break;
      case 0x121:
        v51 = palloc(0x50uLL, a3);
        conversion_stmt__init = pg_query__create_conversion_stmt__init(v51);
        _outCreateConversionStmt_0(v51, a2, conversion_stmt__init);
        *(result + 32) = v51;
        *(result + 24) = 110;
        break;
      case 0x122:
        v67 = palloc(0x38uLL, a3);
        cast_stmt__init = pg_query__create_cast_stmt__init(v67);
        _outCreateCastStmt_0(v67, a2, cast_stmt__init);
        *(result + 32) = v67;
        *(result + 24) = 111;
        break;
      case 0x123:
        v134 = palloc(0x60uLL, a3);
        op_class_stmt__init = pg_query__create_op_class_stmt__init(v134);
        _outCreateOpClassStmt_0(v134, a2, op_class_stmt__init);
        *(result + 32) = v134;
        *(result + 24) = 112;
        break;
      case 0x124:
        v148 = palloc(0x30uLL, a3);
        op_family_stmt__init = pg_query__create_op_family_stmt__init(v148);
        _outCreateOpFamilyStmt_0(v148, a2, op_family_stmt__init);
        *(result + 32) = v148;
        *(result + 24) = 113;
        break;
      case 0x125:
        v77 = palloc(0x48uLL, a3);
        alter_op_family_stmt__init = pg_query__alter_op_family_stmt__init(v77);
        _outAlterOpFamilyStmt_0(v77, a2, alter_op_family_stmt__init);
        *(result + 32) = v77;
        *(result + 24) = 114;
        break;
      case 0x126:
        v93 = palloc(0x38uLL, a3);
        prepare_stmt__init = pg_query__prepare_stmt__init(v93);
        _outPrepareStmt_0(v93, a2, prepare_stmt__init);
        *(result + 32) = v93;
        *(result + 24) = 115;
        break;
      case 0x127:
        v370 = palloc(0x30uLL, a3);
        execute_stmt__init = pg_query__execute_stmt__init(v370);
        _outAlias_0(v370, a2, execute_stmt__init);
        *(result + 32) = v370;
        *(result + 24) = 116;
        break;
      case 0x128:
        v373 = palloc(0x20uLL, a3);
        deallocate_stmt__init = pg_query__deallocate_stmt__init(v373);
        v375 = *(a2 + 1);
        if (v375)
        {
          *(v373 + 24) = pstrdup(v375, deallocate_stmt__init);
        }

        *(result + 32) = v373;
        *(result + 24) = 117;
        break;
      case 0x129:
        v120 = palloc(0x30uLL, a3);
        declare_cursor_stmt__init = pg_query__declare_cursor_stmt__init(v120);
        _outDeclareCursorStmt_0(v120, a2, declare_cursor_stmt__init);
        *(result + 32) = v120;
        *(result + 24) = 118;
        break;
      case 0x12A:
        v378 = palloc(0x40uLL, a3);
        table_space_stmt__init = pg_query__create_table_space_stmt__init(v378);
        _outCreateTableSpaceStmt_0(v378, a2, table_space_stmt__init);
        *(result + 32) = v378;
        *(result + 24) = 119;
        break;
      case 0x12B:
        v390 = palloc(0x28uLL, a3);
        drop_table_space_stmt__init = pg_query__drop_table_space_stmt__init(v390);
        v392 = *(a2 + 1);
        if (v392)
        {
          *(v390 + 24) = pstrdup(v392, drop_table_space_stmt__init);
        }

        *(v390 + 32) = *(a2 + 16);
        *(result + 32) = v390;
        *(result + 24) = 120;
        break;
      case 0x12C:
        v420 = palloc(0x40uLL, a3);
        alter_object_depends_stmt__init = pg_query__alter_object_depends_stmt__init(v420);
        _outAlterObjectDependsStmt_0(v420, a2, alter_object_depends_stmt__init);
        *(result + 32) = v420;
        *(result + 24) = 121;
        break;
      case 0x12D:
        v253 = palloc(0x40uLL, a3);
        alter_object_schema_stmt__init = pg_query__alter_object_schema_stmt__init(v253);
        _outAlterObjectSchemaStmt_0(v253, a2, alter_object_schema_stmt__init);
        *(result + 32) = v253;
        *(result + 24) = 122;
        break;
      case 0x12E:
        v409 = palloc(0x38uLL, a3);
        alter_owner_stmt__init = pg_query__alter_owner_stmt__init(v409);
        _outAlterOwnerStmt_0(v409, a2, alter_owner_stmt__init);
        *(result + 32) = v409;
        *(result + 24) = 123;
        break;
      case 0x12F:
        v91 = palloc(0x30uLL, a3);
        alter_operator_stmt__init = pg_query__alter_operator_stmt__init(v91);
        _outAlterOperatorStmt_0(v91, a2, alter_operator_stmt__init);
        *(result + 32) = v91;
        *(result + 24) = 124;
        break;
      case 0x130:
        v386 = palloc(0x38uLL, a3);
        alter_type_stmt__init = pg_query__alter_type_stmt__init(v386);
        _outAlterTypeStmt_0(v386, a2, alter_type_stmt__init);
        *(result + 32) = v386;
        *(result + 24) = 125;
        break;
      case 0x131:
        v259 = palloc(0x30uLL, a3);
        drop_owned_stmt__init = pg_query__drop_owned_stmt__init(v259);
        _outDropOwnedStmt_0(v259, a2, drop_owned_stmt__init);
        *(result + 32) = v259;
        *(result + 24) = 126;
        break;
      case 0x132:
        v106 = palloc(0x30uLL, a3);
        reassign_owned_stmt__init = pg_query__reassign_owned_stmt__init(v106);
        _outReassignOwnedStmt_0(v106, a2, reassign_owned_stmt__init);
        *(result + 32) = v106;
        *(result + 24) = 127;
        break;
      case 0x133:
        v251 = palloc(0x30uLL, a3);
        composite_type_stmt__init = pg_query__composite_type_stmt__init(v251);
        _outCompositeTypeStmt_0(v251, a2, composite_type_stmt__init);
        *(result + 32) = v251;
        *(result + 24) = 128;
        break;
      case 0x134:
        v75 = palloc(0x38uLL, a3);
        enum_stmt__init = pg_query__create_enum_stmt__init(v75);
        _outAlterTypeStmt_0(v75, a2, enum_stmt__init);
        *(result + 32) = v75;
        *(result + 24) = 129;
        break;
      case 0x135:
        v397 = palloc(0x38uLL, a3);
        range_stmt__init = pg_query__create_range_stmt__init(v397);
        _outAlterTypeStmt_0(v397, a2, range_stmt__init);
        *(result + 32) = v397;
        *(result + 24) = 130;
        break;
      case 0x136:
        v399 = palloc(0x48uLL, a3);
        alter_enum_stmt__init = pg_query__alter_enum_stmt__init(v399);
        _outAlterEnumStmt_0(v399, a2, alter_enum_stmt__init);
        *(result + 32) = v399;
        *(result + 24) = 131;
        break;
      case 0x137:
        v114 = palloc(0x38uLL, a3);
        alter_tsdictionary_stmt__init = pg_query__alter_tsdictionary_stmt__init(v114);
        _outAlterTypeStmt_0(v114, a2, alter_tsdictionary_stmt__init);
        *(result + 32) = v114;
        *(result + 24) = 132;
        break;
      case 0x138:
        v366 = palloc(0x60uLL, a3);
        alter_tsconfiguration_stmt__init = pg_query__alter_tsconfiguration_stmt__init(v366);
        _outAlterTSConfigurationStmt_0(v366, a2, alter_tsconfiguration_stmt__init);
        *(result + 32) = v366;
        *(result + 24) = 133;
        break;
      case 0x139:
        v309 = palloc(0x40uLL, a3);
        fdw_stmt__init = pg_query__create_fdw_stmt__init(v309);
        _outCreateFdwStmt_0(v309, a2, fdw_stmt__init);
        *(result + 32) = v309;
        *(result + 24) = 134;
        break;
      case 0x13A:
        v305 = palloc(0x40uLL, a3);
        alter_fdw_stmt__init = pg_query__alter_fdw_stmt__init(v305);
        _outCreateFdwStmt_0(v305, a2, alter_fdw_stmt__init);
        *(result + 32) = v305;
        *(result + 24) = 135;
        break;
      case 0x13B:
        v61 = palloc(0x50uLL, a3);
        foreign_server_stmt__init = pg_query__create_foreign_server_stmt__init(v61);
        _outCreateForeignServerStmt_0(v61, a2, foreign_server_stmt__init);
        *(result + 32) = v61;
        *(result + 24) = 136;
        break;
      case 0x13C:
        v73 = palloc(0x40uLL, a3);
        alter_foreign_server_stmt__init = pg_query__alter_foreign_server_stmt__init(v73);
        _outAlterForeignServerStmt_0(v73, a2, alter_foreign_server_stmt__init);
        *(result + 32) = v73;
        *(result + 24) = 137;
        break;
      case 0x13D:
        v196 = palloc(0x40uLL, a3);
        user_mapping_stmt__init = pg_query__create_user_mapping_stmt__init(v196);
        _outCreateUserMappingStmt_0(v196, a2, user_mapping_stmt__init);
        *(result + 32) = v196;
        *(result + 24) = 138;
        break;
      case 0x13E:
        v202 = palloc(0x38uLL, a3);
        alter_user_mapping_stmt__init = pg_query__alter_user_mapping_stmt__init(v202);
        _outAlterUserMappingStmt_0(v202, a2, alter_user_mapping_stmt__init);
        *(result + 32) = v202;
        *(result + 24) = 139;
        break;
      case 0x13F:
        v140 = palloc(0x30uLL, a3);
        drop_user_mapping_stmt__init = pg_query__drop_user_mapping_stmt__init(v140);
        _outDropUserMappingStmt_0(v140, a2, drop_user_mapping_stmt__init);
        *(result + 32) = v140;
        *(result + 24) = 140;
        break;
      case 0x140:
        v87 = palloc(0x38uLL, a3);
        alter_table_space_options_stmt__init = pg_query__alter_table_space_options_stmt__init(v87);
        _outAlterTableSpaceOptionsStmt_0(v87, a2, alter_table_space_options_stmt__init);
        *(result + 32) = v87;
        *(result + 24) = 141;
        break;
      case 0x141:
        v376 = palloc(0x48uLL, a3);
        alter_table_move_all_stmt__init = pg_query__alter_table_move_all_stmt__init(v376);
        _outAlterTableMoveAllStmt_0(v376, a2, alter_table_move_all_stmt__init);
        *(result + 32) = v376;
        *(result + 24) = 142;
        break;
      case 0x142:
        v102 = palloc(0x38uLL, a3);
        sec_label_stmt__init = pg_query__sec_label_stmt__init(v102);
        _outSecLabelStmt_0(v102, a2, sec_label_stmt__init);
        *(result + 32) = v102;
        *(result + 24) = 143;
        break;
      case 0x143:
        v263 = palloc(0x38uLL, a3);
        foreign_table_stmt__init = pg_query__create_foreign_table_stmt__init(v263);
        _outCreateForeignTableStmt_0(v263, a2, foreign_table_stmt__init);
        *(result + 32) = v263;
        *(result + 24) = 144;
        break;
      case 0x144:
        v154 = palloc(0x58uLL, a3);
        import_foreign_schema_stmt__init = pg_query__import_foreign_schema_stmt__init(v154);
        _outImportForeignSchemaStmt_0(v154, a2, import_foreign_schema_stmt__init);
        *(result + 32) = v154;
        *(result + 24) = 145;
        break;
      case 0x145:
        v368 = palloc(0x38uLL, a3);
        extension_stmt__init = pg_query__create_extension_stmt__init(v368);
        _outDropdbStmt_0(v368, a2, extension_stmt__init);
        *(result + 32) = v368;
        *(result + 24) = 146;
        break;
      case 0x146:
        v362 = palloc(0x30uLL, a3);
        alter_extension_stmt__init = pg_query__alter_extension_stmt__init(v362);
        _outAlias_0(v362, a2, alter_extension_stmt__init);
        *(result + 32) = v362;
        *(result + 24) = 147;
        break;
      case 0x147:
        v349 = palloc(0x30uLL, a3);
        alter_extension_contents_stmt__init = pg_query__alter_extension_contents_stmt__init(v349);
        _outAlterExtensionContentsStmt_0(v349, a2, alter_extension_contents_stmt__init);
        *(result + 32) = v349;
        *(result + 24) = 148;
        break;
      case 0x148:
        v142 = palloc(0x48uLL, a3);
        event_trig_stmt__init = pg_query__create_event_trig_stmt__init(v142);
        _outCreateEventTrigStmt_0(v142, a2, event_trig_stmt__init);
        *(result + 32) = v142;
        *(result + 24) = 149;
        break;
      case 0x149:
        v95 = palloc(0x28uLL, a3);
        alter_event_trig_stmt__init = pg_query__alter_event_trig_stmt__init(v95);
        _outAlterEventTrigStmt_0(v95, a2, alter_event_trig_stmt__init);
        *(result + 32) = v95;
        *(result + 24) = 150;
        break;
      case 0x14A:
        v165 = palloc(0x28uLL, a3);
        refresh_mat_view_stmt__init = pg_query__refresh_mat_view_stmt__init(v165);
        _outRefreshMatViewStmt_0(v165, a2, refresh_mat_view_stmt__init);
        *(result + 32) = v165;
        *(result + 24) = 151;
        break;
      case 0x14B:
        v382 = palloc(0x28uLL, a3);
        replica_identity_stmt__init = pg_query__replica_identity_stmt__init(v382);
        _outReplicaIdentityStmt_0(v382, a2, replica_identity_stmt__init);
        *(result + 32) = v382;
        *(result + 24) = 152;
        break;
      case 0x14C:
        v178 = palloc(0x20uLL, a3);
        alter_system_stmt__init = pg_query__alter_system_stmt__init(v178);
        _outAlterSystemStmt_0(v178, a2, alter_system_stmt__init);
        *(result + 32) = v178;
        *(result + 24) = 153;
        break;
      case 0x14D:
        v138 = palloc(0x58uLL, a3);
        policy_stmt__init = pg_query__create_policy_stmt__init(v138);
        _outCreatePolicyStmt_0(v138, a2, policy_stmt__init);
        *(result + 32) = v138;
        *(result + 24) = 154;
        break;
      case 0x14E:
        v271 = palloc(0x48uLL, a3);
        alter_policy_stmt__init = pg_query__alter_policy_stmt__init(v271);
        _outAlterPolicyStmt_0(v271, a2, alter_policy_stmt__init);
        *(result + 32) = v271;
        *(result + 24) = 155;
        break;
      case 0x14F:
        v214 = palloc(0x40uLL, a3);
        transform_stmt__init = pg_query__create_transform_stmt__init(v214);
        _outCreateTransformStmt_0(v214, a2, transform_stmt__init);
        *(result + 32) = v214;
        *(result + 24) = 156;
        break;
      case 0x150:
        v242 = palloc(0x38uLL, a3);
        am_stmt__init = pg_query__create_am_stmt__init(v242);
        _outCreateAmStmt_0(v242, a2, am_stmt__init);
        *(result + 32) = v242;
        *(result + 24) = 157;
        break;
      case 0x151:
        v273 = palloc(0x48uLL, a3);
        publication_stmt__init = pg_query__create_publication_stmt__init(v273);
        _outCreatePublicationStmt_0(v273, a2, publication_stmt__init);
        *(result + 32) = v273;
        *(result + 24) = 158;
        break;
      case 0x152:
        v267 = palloc(0x48uLL, a3);
        alter_publication_stmt__init = pg_query__alter_publication_stmt__init(v267);
        _outAlterPublicationStmt_0(v267, a2, alter_publication_stmt__init);
        *(result + 32) = v267;
        *(result + 24) = 159;
        break;
      case 0x153:
        v212 = palloc(0x48uLL, a3);
        subscription_stmt__init = pg_query__create_subscription_stmt__init(v212);
        _outCreateEventTrigStmt_0(v212, a2, subscription_stmt__init);
        *(result + 32) = v212;
        *(result + 24) = 160;
        break;
      case 0x154:
        v326 = palloc(0x50uLL, a3);
        alter_subscription_stmt__init = pg_query__alter_subscription_stmt__init(v326);
        _outAlterSubscriptionStmt_0(v326, a2, alter_subscription_stmt__init);
        *(result + 32) = v326;
        *(result + 24) = 161;
        break;
      case 0x155:
        v192 = palloc(0x28uLL, a3);
        drop_subscription_stmt__init = pg_query__drop_subscription_stmt__init(v192);
        _outDropSubscriptionStmt_0(v192, a2, drop_subscription_stmt__init);
        *(result + 32) = v192;
        *(result + 24) = 162;
        break;
      case 0x156:
        v322 = palloc(0x68uLL, a3);
        stats_stmt__init = pg_query__create_stats_stmt__init(v322);
        _outCreateStatsStmt_0(v322, a2, stats_stmt__init);
        *(result + 32) = v322;
        *(result + 24) = 163;
        break;
      case 0x157:
        v152 = palloc(0x28uLL, a3);
        alter_collation_stmt__init = pg_query__alter_collation_stmt__init(v152);
        _outDoStmt_0(v152, a2, alter_collation_stmt__init);
        *(result + 32) = v152;
        *(result + 24) = 164;
        break;
      case 0x158:
        v351 = palloc(0x28uLL, a3);
        v352 = pg_query__call_stmt__init(v351);
        _outCallStmt_0(v351, a2, v352);
        *(result + 32) = v351;
        *(result + 24) = 165;
        break;
      case 0x159:
        v340 = palloc(0x30uLL, a3);
        alter_stats_stmt__init = pg_query__alter_stats_stmt__init(v340);
        _outLockStmt_0(v340, a2, alter_stats_stmt__init);
        *(result + 32) = v340;
        *(result + 24) = 166;
        break;
      case 0x15A:
        v146 = palloc(0x48uLL, a3);
        a__expr__init = pg_query__a__expr__init(v146);
        _outAExpr_0(v146, a2, a__expr__init);
        *(result + 32) = v146;
        *(result + 24) = 167;
        break;
      case 0x15B:
        v358 = palloc(0x30uLL, a3);
        column_ref__init = pg_query__column_ref__init(v358);
        _outColumnRef_0(v358, a2, column_ref__init);
        *(result + 32) = v358;
        *(result + 24) = 168;
        break;
      case 0x15C:
        v372 = palloc(0x20uLL, a3);
        pg_query__param_ref__init(v372);
        *(v372 + 24) = a2[1];
        *(v372 + 28) = a2[2];
        *(result + 32) = v372;
        *(result + 24) = 169;
        break;
      case 0x15D:
        v108 = palloc(0x28uLL, a3);
        a__const__init = pg_query__a__const__init(v108);
        _outAConst_0(v108, a2, a__const__init);
        *(result + 32) = v108;
        *(result + 24) = 170;
        break;
      case 0x15E:
        v204 = palloc(0x70uLL, a3);
        v205 = pg_query__func_call__init(v204);
        _outFuncCall_0(v204, a2, v205);
        *(result + 32) = v204;
        *(result + 24) = 171;
        break;
      case 0x15F:
        v187 = palloc(0x18uLL, a3);
        pg_query__a__star__init(v187);
        *(result + 32) = v187;
        *(result + 24) = 172;
        break;
      case 0x160:
        v150 = palloc(0x30uLL, a3);
        a__indices__init = pg_query__a__indices__init(v150);
        _outAIndices_0(v150, a2, a__indices__init);
        *(result + 32) = v150;
        *(result + 24) = 173;
        break;
      case 0x161:
        v360 = palloc(0x30uLL, a3);
        a__indirection__init = pg_query__a__indirection__init(v360);
        _outExplainStmt_0(v360, a2, a__indirection__init);
        *(result + 32) = v360;
        *(result + 24) = 174;
        break;
      case 0x162:
        v296 = palloc(0x30uLL, a3);
        a__array_expr__init = pg_query__a__array_expr__init(v296);
        _outColumnRef_0(v296, a2, a__array_expr__init);
        *(result + 32) = v296;
        *(result + 24) = 175;
        break;
      case 0x163:
        v180 = palloc(0x40uLL, a3);
        res_target__init = pg_query__res_target__init(v180);
        _outResTarget_0(v180, a2, res_target__init);
        *(result + 32) = v180;
        *(result + 24) = 176;
        break;
      case 0x164:
        v118 = palloc(0x28uLL, a3);
        multi_assign_ref__init = pg_query__multi_assign_ref__init(v118);
        _outRawStmt_0(v118, a2, multi_assign_ref__init);
        *(result + 32) = v118;
        *(result + 24) = 177;
        break;
      case 0x165:
        v324 = palloc(0x30uLL, a3);
        type_cast__init = pg_query__type_cast__init(v324);
        _outTypeCast_0(v324, a2, type_cast__init);
        *(result + 32) = v324;
        *(result + 24) = 178;
        break;
      case 0x166:
        v261 = palloc(0x38uLL, a3);
        collate_clause__init = pg_query__collate_clause__init(v261);
        _outCollateClause_0(v261, a2, collate_clause__init);
        *(result + 32) = v261;
        *(result + 24) = 179;
        break;
      case 0x167:
        v208 = palloc(0x40uLL, a3);
        sort_by__init = pg_query__sort_by__init(v208);
        _outSortBy_0(v208, a2, sort_by__init);
        *(result + 32) = v208;
        *(result + 24) = 180;
        break;
      case 0x168:
        v318 = palloc(0x68uLL, a3);
        window_def__init = pg_query__window_def__init(v318);
        _outWindowDef_0(v318, a2, window_def__init);
        *(result + 32) = v318;
        *(result + 24) = 181;
        break;
      case 0x169:
        v336 = palloc(0x30uLL, a3);
        range_subselect__init = pg_query__range_subselect__init(v336);
        _outRangeSubselect_0(v336, a2, range_subselect__init);
        *(result + 32) = v336;
        *(result + 24) = 182;
        break;
      case 0x16A:
        v144 = palloc(0x50uLL, a3);
        range_function__init = pg_query__range_function__init(v144);
        _outRangeFunction_0(v144, a2, range_function__init);
        *(result + 32) = v144;
        *(result + 24) = 183;
        break;
      case 0x16B:
        v158 = palloc(0x50uLL, a3);
        range_table_sample__init = pg_query__range_table_sample__init(v158);
        _outRangeTableSample_0(v158, a2, range_table_sample__init);
        *(result + 32) = v158;
        *(result + 24) = 184;
        break;
      case 0x16C:
        v156 = palloc(0x60uLL, a3);
        range_table_func__init = pg_query__range_table_func__init(v156);
        _outRangeTableFunc_0(v156, a2, range_table_func__init);
        *(result + 32) = v156;
        *(result + 24) = 185;
        break;
      case 0x16D:
        v169 = palloc(0x48uLL, a3);
        range_table_func_col__init = pg_query__range_table_func_col__init(v169);
        _outRangeTableFuncCol_0(v169, a2, range_table_func_col__init);
        *(result + 32) = v169;
        *(result + 24) = 186;
        break;
      case 0x16E:
        v184 = palloc(0x68uLL, a3);
        type_name__init = pg_query__type_name__init(v184);
        _outTypeName_0(v184, a2, type_name__init);
        *(result + 32) = v184;
        *(result + 24) = 187;
        break;
      case 0x16F:
        v290 = palloc(0xA0uLL, a3);
        column_def__init = pg_query__column_def__init(v290);
        _outColumnDef_0(v290, a2, column_def__init);
        *(result + 32) = v290;
        *(result + 24) = 188;
        break;
      case 0x170:
        v255 = palloc(0x68uLL, a3);
        index_elem__init = pg_query__index_elem__init(v255);
        _outIndexElem_0(v255, a2, index_elem__init);
        *(result + 32) = v255;
        *(result + 24) = 189;
        break;
      case 0x171:
        v288 = palloc(0x118uLL, a3);
        pg_query__constraint__init(v288);
        _outConstraint_0(v288, a2, v289);
        *(result + 32) = v288;
        *(result + 24) = 190;
        break;
      case 0x172:
        v332 = palloc(0x38uLL, a3);
        def_elem__init = pg_query__def_elem__init(v332);
        _outDefElem_0(v332, a2, def_elem__init);
        *(result + 32) = v332;
        *(result + 24) = 191;
        break;
      case 0x173:
        v330 = palloc(0x178uLL, a3);
        pg_query__range_tbl_entry__init(v330);
        _outRangeTblEntry_0(v330, a2, v331);
        *(result + 32) = v330;
        *(result + 24) = 192;
        break;
      case 0x174:
        v167 = palloc(0x78uLL, a3);
        range_tbl_function__init = pg_query__range_tbl_function__init(v167);
        _outRangeTblFunction_0(v167, a2, range_tbl_function__init);
        *(result + 32) = v167;
        *(result + 24) = 193;
        break;
      case 0x175:
        v338 = palloc(0x38uLL, a3);
        table_sample_clause__init = pg_query__table_sample_clause__init(v338);
        _outTableSampleClause_0(v338, a2, table_sample_clause__init);
        *(result + 32) = v338;
        *(result + 24) = 194;
        break;
      case 0x176:
        v227 = palloc(0x40uLL, a3);
        v228 = pg_query__with_check_option__init(v227);
        _outWithCheckOption_0(v227, a2, v228);
        *(result + 32) = v227;
        *(result + 24) = 195;
        break;
      case 0x177:
        v231 = palloc(0x30uLL, a3);
        pg_query__sort_group_clause__init(v231);
        *(v231 + 24) = a2[1];
        *(v231 + 28) = a2[2];
        *(v231 + 32) = a2[3];
        *(v231 + 36) = *(a2 + 16);
        *(v231 + 40) = *(a2 + 17);
        *(result + 32) = v231;
        *(result + 24) = 196;
        break;
      case 0x178:
        v328 = palloc(0x38uLL, a3);
        grouping_set__init = pg_query__grouping_set__init(v328);
        _outGroupingSet_0(v328, a2, grouping_set__init);
        *(result + 32) = v328;
        *(result + 24) = 197;
        break;
      case 0x179:
        v307 = palloc(0x80uLL, a3);
        window_clause__init = pg_query__window_clause__init(v307);
        _outWindowClause_0(v307, a2, window_clause__init);
        *(result + 32) = v307;
        *(result + 24) = 198;
        break;
      case 0x17A:
        v275 = palloc(0x40uLL, a3);
        object_with_args__init = pg_query__object_with_args__init(v275);
        _outVacuumStmt_0(v275, a2, object_with_args__init);
        *(result + 32) = v275;
        *(result + 24) = 199;
        break;
      case 0x17B:
        v265 = palloc(0x30uLL, a3);
        access_priv__init = pg_query__access_priv__init(v265);
        _outAlias_0(v265, a2, access_priv__init);
        *(result + 32) = v265;
        *(result + 24) = 200;
        break;
      case 0x17C:
        v320 = palloc(0x58uLL, a3);
        op_class_item__init = pg_query__create_op_class_item__init(v320);
        _outCreateOpClassItem_0(v320, a2, op_class_item__init);
        *(result + 32) = v320;
        *(result + 24) = 201;
        break;
      case 0x17D:
        v281 = palloc(0x28uLL, a3);
        table_like_clause__init = pg_query__table_like_clause__init(v281);
        _outTableLikeClause_0(v281, a2, table_like_clause__init);
        *(result + 32) = v281;
        *(result + 24) = 202;
        break;
      case 0x17E:
        v257 = palloc(0x38uLL, a3);
        function_parameter__init = pg_query__function_parameter__init(v257);
        _outFunctionParameter_0(v257, a2, function_parameter__init);
        *(result + 32) = v257;
        *(result + 24) = 203;
        break;
      case 0x17F:
        v176 = palloc(0x30uLL, a3);
        locking_clause__init = pg_query__locking_clause__init(v176);
        _outLockingClause_0(v176, a2, locking_clause__init);
        *(result + 32) = v176;
        *(result + 24) = 204;
        break;
      case 0x180:
        v238 = palloc(0x28uLL, a3);
        pg_query__row_mark_clause__init(v238);
        _outRowMarkClause_0(v238, a2);
        *(result + 32) = v238;
        *(result + 24) = 205;
        break;
      case 0x181:
        v182 = palloc(0x38uLL, a3);
        xml_serialize__init = pg_query__xml_serialize__init(v182);
        _outXmlSerialize_0(v182, a2, xml_serialize__init);
        *(result + 32) = v182;
        *(result + 24) = 206;
        break;
      case 0x182:
        v277 = palloc(0x30uLL, a3);
        v278 = pg_query__with_clause__init(v277);
        _outWithClause_0(v277, a2, v278);
        *(result + 32) = v277;
        *(result + 24) = 207;
        break;
      case 0x183:
        v216 = palloc(0x40uLL, a3);
        infer_clause__init = pg_query__infer_clause__init(v216);
        _outInferClause_0(v216, a2, infer_clause__init);
        *(result + 32) = v216;
        *(result + 24) = 208;
        break;
      case 0x184:
        v198 = palloc(0x48uLL, a3);
        v199 = pg_query__on_conflict_clause__init(v198);
        _outOnConflictClause_0(v198, a2, v199);
        *(result + 32) = v198;
        *(result + 24) = 209;
        break;
      case 0x185:
        v283 = palloc(0x90uLL, a3);
        common_table_expr__init = pg_query__common_table_expr__init(v283);
        _outCommonTableExpr_0(v283, a2, common_table_expr__init);
        *(result + 32) = v283;
        *(result + 24) = 210;
        break;
      case 0x186:
        v223 = palloc(0x30uLL, a3);
        role_spec__init = pg_query__role_spec__init(v223);
        _outRoleSpec_0(v223, a2, role_spec__init);
        *(result + 32) = v223;
        *(result + 24) = 211;
        break;
      case 0x187:
        v285 = palloc(0x28uLL, a3);
        trigger_transition__init = pg_query__trigger_transition__init(v285);
        v287 = *(a2 + 1);
        if (v287)
        {
          *(v285 + 24) = pstrdup(v287, trigger_transition__init);
        }

        *(v285 + 32) = *(a2 + 16);
        *(v285 + 36) = *(a2 + 17);
        *(result + 32) = v285;
        *(result + 24) = 212;
        break;
      case 0x188:
        v246 = palloc(0x50uLL, a3);
        partition_elem__init = pg_query__partition_elem__init(v246);
        _outPartitionElem_0(v246, a2, partition_elem__init);
        *(result + 32) = v246;
        *(result + 24) = 213;
        break;
      case 0x189:
        v279 = palloc(0x38uLL, a3);
        partition_spec__init = pg_query__partition_spec__init(v279);
        _outPartitionSpec_0(v279, a2, partition_spec__init);
        *(result + 32) = v279;
        *(result + 24) = 214;
        break;
      case 0x18A:
        v269 = palloc(0x68uLL, a3);
        partition_bound_spec__init = pg_query__partition_bound_spec__init(v269);
        _outPartitionBoundSpec_0(v269, a2, partition_bound_spec__init);
        *(result + 32) = v269;
        *(result + 24) = 215;
        break;
      case 0x18B:
        v206 = palloc(0x30uLL, a3);
        partition_range_datum__init = pg_query__partition_range_datum__init(v206);
        _outPartitionRangeDatum_0(v206, a2, partition_range_datum__init);
        *(result + 32) = v206;
        *(result + 24) = 216;
        break;
      case 0x18C:
        v244 = palloc(0x28uLL, a3);
        partition_cmd__init = pg_query__partition_cmd__init(v244);
        _outPartitionCmd_0(v244, a2, partition_cmd__init);
        *(result + 32) = v244;
        *(result + 24) = 217;
        break;
      case 0x18D:
        v232 = palloc(0x38uLL, a3);
        vacuum_relation__init = pg_query__vacuum_relation__init(v232);
        _outVacuumRelation_0(v232, a2, vacuum_relation__init);
        *(result + 32) = v232;
        *(result + 24) = 218;
        break;
      case 0x19A:
        v248 = palloc(0x30uLL, a3);
        inline_code_block__init = pg_query__inline_code_block__init(v248);
        _outInlineCodeBlock_0(v248, a2, inline_code_block__init);
        *(result + 32) = v248;
        *(result + 24) = 219;
        break;
      case 0x1A0:
        v250 = palloc(0x20uLL, a3);
        pg_query__call_context__init(v250);
        *(v250 + 24) = *(a2 + 4);
        *(result + 32) = v250;
        *(result + 24) = 220;
        break;
      default:
        pg_printf("could not dump unrecognized node type: %d", *a2);
        if (errstart(19, 0))
        {
          errmsg_internal("could not dump unrecognized node type: %d", *a2);

          errfinish("src/pg_query_outfuncs_protobuf.c", 198, "_outNode");
        }

        break;
    }
  }
}

uint64_t _outList_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  *(a1 + 24) = v5;
  result = palloc(8 * v5, a3);
  *(a1 + 32) = result;
  if (*(a2 + 4) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 16);
      *(*(a1 + 32) + 8 * v8) = palloc(0x28uLL, v7);
      pg_query__node__init(*(*(a1 + 32) + 8 * v8));
      result = _outNode_0(*(*(a1 + 32) + 8 * v8), *(v9 + 8 * v8));
      ++v8;
    }

    while (v8 < *(a2 + 4));
  }

  return result;
}

const char *_outAlias_0(void *a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    a1[3] = result;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[4] = v7;
    result = palloc(8 * v7, a3);
    a1[5] = result;
    if (a1[4])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, v8);
        pg_query__node__init(v11);
        *(a1[5] + 8 * v9) = v11;
        result = _outNode_0(*(a1[5] + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (a1[4] > v9);
    }
  }

  return result;
}

char *_outRangeVar_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6, a3);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 32);
  if (*(a2 + 33))
  {
    result = palloc(2uLL, a3);
    *(a1 + 56) = result;
    *result = *(a2 + 33);
    *(*(a1 + 56) + 1) = 0;
  }

  if (*(a2 + 40))
  {
    v8 = palloc(0x30uLL, a3);
    alias__init = pg_query__alias__init(v8);
    result = _outAlias_0(v8, *(a2 + 40), alias__init);
    *(a1 + 64) = v8;
  }

  *(a1 + 72) = *(a2 + 48);
  return result;
}

uint64_t _outTableFunc_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 24) = v6;
    *(a1 + 32) = palloc(8 * v6, a3);
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(a1 + 32) + 8 * v7) = v9;
        _outNode_0(*(*(a1 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(a1 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11, a3);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  if (*(a2 + 24))
  {
    v15 = palloc(0x28uLL, a3);
    pg_query__node__init(v15);
    *(a1 + 56) = v15;
    _outNode_0(v15, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    v16 = palloc(0x28uLL, a3);
    pg_query__node__init(v16);
    *(a1 + 64) = v16;
    _outNode_0(v16, *(a2 + 32));
  }

  v17 = *(a2 + 40);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(a1 + 72) = v18;
    *(a1 + 80) = palloc(8 * v18, a3);
    if (*(a1 + 72))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL, a3);
        pg_query__node__init(v21);
        *(*(a1 + 80) + 8 * v19) = v21;
        _outNode_0(*(*(a1 + 80) + 8 * v19), *(*(*(a2 + 40) + 16) + 8 * v19));
        v19 = v20++;
      }

      while (*(a1 + 72) > v19);
    }
  }

  v22 = *(a2 + 48);
  if (v22)
  {
    v23 = *(v22 + 4);
    *(a1 + 88) = v23;
    *(a1 + 96) = palloc(8 * v23, a3);
    if (*(a1 + 88))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL, a3);
        pg_query__node__init(v26);
        *(*(a1 + 96) + 8 * v24) = v26;
        _outNode_0(*(*(a1 + 96) + 8 * v24), *(*(*(a2 + 48) + 16) + 8 * v24));
        v24 = v25++;
      }

      while (*(a1 + 88) > v24);
    }
  }

  v27 = *(a2 + 56);
  if (v27)
  {
    v28 = *(v27 + 4);
    *(a1 + 104) = v28;
    *(a1 + 112) = palloc(8 * v28, a3);
    if (*(a1 + 104))
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = palloc(0x28uLL, a3);
        pg_query__node__init(v31);
        *(*(a1 + 112) + 8 * v29) = v31;
        _outNode_0(*(*(a1 + 112) + 8 * v29), *(*(*(a2 + 56) + 16) + 8 * v29));
        v29 = v30++;
      }

      while (*(a1 + 104) > v29);
    }
  }

  v32 = *(a2 + 64);
  if (v32)
  {
    v33 = *(v32 + 4);
    *(a1 + 120) = v33;
    *(a1 + 128) = palloc(8 * v33, a3);
    if (*(a1 + 120))
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = palloc(0x28uLL, a3);
        pg_query__node__init(v36);
        *(*(a1 + 128) + 8 * v34) = v36;
        _outNode_0(*(*(a1 + 128) + 8 * v34), *(*(*(a2 + 64) + 16) + 8 * v34));
        v34 = v35++;
      }

      while (*(a1 + 120) > v34);
    }
  }

  v37 = *(a2 + 72);
  if (v37)
  {
    v38 = *(v37 + 4);
    *(a1 + 136) = v38;
    *(a1 + 144) = palloc(8 * v38, a3);
    if (*(a1 + 136))
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = palloc(0x28uLL, a3);
        pg_query__node__init(v41);
        *(*(a1 + 144) + 8 * v39) = v41;
        _outNode_0(*(*(a1 + 144) + 8 * v39), *(*(*(a2 + 72) + 16) + 8 * v39));
        v39 = v40++;
      }

      while (*(a1 + 136) > v39);
    }
  }

  v42 = *(a2 + 80);
  if (v42)
  {
    v43 = *(v42 + 4);
    *(a1 + 152) = v43;
    *(a1 + 160) = palloc(8 * v43, a3);
    if (*(a1 + 152))
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = palloc(0x28uLL, v44);
        pg_query__node__init(v47);
        *(*(a1 + 160) + 8 * v45) = v47;
        _outNode_0(*(*(a1 + 160) + 8 * v45), *(*(*(a2 + 80) + 16) + 8 * v45));
        v45 = v46++;
      }

      while (*(a1 + 152) > v45);
    }
  }

  result = bms_is_empty(*(a2 + 88));
  if ((result & 1) == 0)
  {
    v49 = bms_num_members(*(a2 + 88));
    *(a1 + 168) = v49;
    *(a1 + 176) = palloc(8 * v49, v50);
    result = bms_first_member(*(a2 + 88));
    if ((result & 0x80000000) == 0)
    {
      v51 = 0;
      do
      {
        v52 = v51 + 1;
        *(*(a1 + 176) + 8 * v51) = result;
        result = bms_first_member(*(a2 + 88));
        v51 = v52;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  *(a1 + 184) = *(a2 + 96);
  *(a1 + 188) = *(a2 + 100);
  return result;
}

_DWORD *_outVar_0(_DWORD *result, uint64_t a2)
{
  result[8] = *(a2 + 4);
  result[9] = *(a2 + 8);
  result[10] = *(a2 + 12);
  result[11] = *(a2 + 16);
  result[12] = *(a2 + 20);
  result[13] = *(a2 + 24);
  result[14] = *(a2 + 28);
  result[15] = *(a2 + 32);
  result[16] = *(a2 + 36);
  return result;
}

_DWORD *_outParam_0(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  if (v2 < 4)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[8] = v3;
  result[9] = a2[2];
  result[10] = a2[3];
  result[11] = a2[4];
  result[12] = a2[5];
  result[13] = a2[6];
  return result;
}

uint64_t _outAggref_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  *(result + 48) = *(a2 + 20);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 56) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 64) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 64) + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 56) > v7);
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 72) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 80) = result;
    if (*(v4 + 72))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 80) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 80) + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 72) > v12);
    }
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 88) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 96) = result;
    if (*(v4 + 88))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(v4 + 96) + 8 * v17) = v19;
        result = _outNode_0(*(*(v4 + 96) + 8 * v17), *(*(*(a2 + 40) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(v4 + 88) > v17);
    }
  }

  v20 = *(a2 + 48);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(v4 + 104) = v21;
    result = palloc(8 * v21, a3);
    *(v4 + 112) = result;
    if (*(v4 + 104))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, a3);
        pg_query__node__init(v24);
        *(*(v4 + 112) + 8 * v22) = v24;
        result = _outNode_0(*(*(v4 + 112) + 8 * v22), *(*(*(a2 + 48) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(v4 + 104) > v22);
    }
  }

  v25 = *(a2 + 56);
  if (v25)
  {
    v26 = *(v25 + 4);
    *(v4 + 120) = v26;
    result = palloc(8 * v26, a3);
    *(v4 + 128) = result;
    if (*(v4 + 120))
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = palloc(0x28uLL, a3);
        pg_query__node__init(v29);
        *(*(v4 + 128) + 8 * v27) = v29;
        result = _outNode_0(*(*(v4 + 128) + 8 * v27), *(*(*(a2 + 56) + 16) + 8 * v27));
        v27 = v28++;
      }

      while (*(v4 + 120) > v27);
    }
  }

  if (*(a2 + 64))
  {
    v30 = palloc(0x28uLL, a3);
    pg_query__node__init(v30);
    *(v4 + 136) = v30;
    result = _outNode_0(v30, *(a2 + 64));
  }

  *(v4 + 144) = *(a2 + 72);
  *(v4 + 148) = *(a2 + 73);
  if (*(a2 + 74))
  {
    result = palloc(2uLL, a3);
    *(v4 + 152) = result;
    *result = *(a2 + 74);
    *(*(v4 + 152) + 1) = 0;
  }

  *(v4 + 160) = *(a2 + 76);
  v31 = *(a2 + 80);
  if (v31)
  {
    if (v31 == 9)
    {
      v32 = 3;
    }

    else if (v31 == 6)
    {
      v32 = 2;
    }

    else
    {
      v32 = -1;
    }
  }

  else
  {
    v32 = 1;
  }

  *(v4 + 164) = v32;
  *(v4 + 168) = *(a2 + 84);
  return result;
}

uint64_t _outGroupingFunc_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 32) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 40) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 32) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 48) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 56) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 56) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 48) > v12);
    }
  }

  v15 = *(a2 + 24);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 64) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, v17);
        pg_query__node__init(v20);
        *(*(v4 + 72) + 8 * v18) = v20;
        result = _outNode_0(*(*(v4 + 72) + 8 * v18), *(*(*(a2 + 24) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (*(v4 + 64) > v18);
    }
  }

  *(v4 + 80) = *(a2 + 32);
  *(v4 + 84) = *(a2 + 36);
  return result;
}

uint64_t _outWindowFunc_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 48) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 56) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 56) + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 48) > v7);
    }
  }

  if (*(a2 + 32))
  {
    v10 = palloc(0x28uLL, a3);
    pg_query__node__init(v10);
    *(v4 + 64) = v10;
    result = _outNode_0(v10, *(a2 + 32));
  }

  *(v4 + 72) = *(a2 + 40);
  *(v4 + 76) = *(a2 + 44);
  *(v4 + 80) = *(a2 + 45);
  *(v4 + 84) = *(a2 + 48);
  return result;
}

uint64_t _outSubscriptingRef_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 48) = v6;
    result = palloc(8 * v6, a3);
    v4[7] = result;
    if (v4[6])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[7] + 8 * v7) = v9;
        result = _outNode_0(*(v4[7] + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[6] > v7);
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    v4[8] = v11;
    result = palloc(8 * v11, a3);
    v4[9] = result;
    if (v4[8])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(v4[9] + 8 * v12) = v14;
        result = _outNode_0(*(v4[9] + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (v4[8] > v12);
    }
  }

  if (*(a2 + 40))
  {
    v15 = palloc(0x28uLL, a3);
    pg_query__node__init(v15);
    v4[10] = v15;
    result = _outNode_0(v15, *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    v16 = palloc(0x28uLL, a3);
    pg_query__node__init(v16);
    v4[11] = v16;
    v17 = *(a2 + 48);

    return _outNode_0(v16, v17);
  }

  return result;
}

uint64_t _outFuncExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 13);
  v5 = *(a2 + 16);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 48) = v6;
  *(result + 52) = *(a2 + 20);
  *(result + 56) = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 64) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 72) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 72) + 8 * v10), *(*(*(a2 + 32) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 64) > v10);
    }
  }

  *(v4 + 80) = *(a2 + 40);
  return result;
}

const char *_outNamedArgExpr_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(a1 + 32) = v5;
    _outNode_0(v5, *(a2 + 8));
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outOpExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  *(result + 48) = *(a2 + 20);
  *(result + 52) = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 56) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 64) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 64) + 8 * v8), *(*(*(a2 + 32) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 56) > v8);
    }
  }

  *(v4 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outScalarArrayOpExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  *(result + 44) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 48) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 56) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 56) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 48) > v8);
    }
  }

  *(v4 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outBoolExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 32) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 40) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 48) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 48) + 8 * v10), *(*(*(a2 + 8) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 40) > v10);
    }
  }

  *(v4 + 56) = *(a2 + 16);
  return result;
}

uint64_t _outSubLink_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 32) = v6;
  *(result + 36) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(v4 + 40) = v7;
    result = _outNode_0(v7, *(a2 + 16));
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(v4 + 48) = v9;
    result = palloc(8 * v9, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(v4 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 56) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 48) > v10);
    }
  }

  if (*(a2 + 32))
  {
    v13 = palloc(0x28uLL, a3);
    pg_query__node__init(v13);
    *(v4 + 64) = v13;
    result = _outNode_0(v13, *(a2 + 32));
  }

  *(v4 + 72) = *(a2 + 40);
  return result;
}

double _outSubPlan_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 32) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(a1 + 40) = v7;
    _outNode_0(v7, *(a2 + 8));
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    *(a1 + 56) = palloc(8 * v9, a3);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  *(a1 + 64) = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v13)
  {
    *(a1 + 72) = pstrdup(v13, a3);
  }

  *(a1 + 80) = *(a2 + 40);
  *(a1 + 84) = *(a2 + 44);
  *(a1 + 88) = *(a2 + 48);
  *(a1 + 92) = *(a2 + 52);
  *(a1 + 96) = *(a2 + 53);
  *(a1 + 100) = *(a2 + 54);
  v14 = *(a2 + 56);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 104) = v15;
    *(a1 + 112) = palloc(8 * v15, a3);
    if (*(a1 + 104))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(a1 + 112) + 8 * v16) = v18;
        _outNode_0(*(*(a1 + 112) + 8 * v16), *(*(*(a2 + 56) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(a1 + 104) > v16);
    }
  }

  v19 = *(a2 + 64);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(a1 + 120) = v20;
    *(a1 + 128) = palloc(8 * v20, a3);
    if (*(a1 + 120))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, a3);
        pg_query__node__init(v23);
        *(*(a1 + 128) + 8 * v21) = v23;
        _outNode_0(*(*(a1 + 128) + 8 * v21), *(*(*(a2 + 64) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 120) > v21);
    }
  }

  v24 = *(a2 + 72);
  if (v24)
  {
    v25 = *(v24 + 4);
    *(a1 + 136) = v25;
    *(a1 + 144) = palloc(8 * v25, a3);
    if (*(a1 + 136))
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = palloc(0x28uLL, v26);
        pg_query__node__init(v29);
        *(*(a1 + 144) + 8 * v27) = v29;
        _outNode_0(*(*(a1 + 144) + 8 * v27), *(*(*(a2 + 72) + 16) + 8 * v27));
        v27 = v28++;
      }

      while (*(a1 + 136) > v27);
    }
  }

  *(a1 + 152) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 160) = result;
  return result;
}

uint64_t _outAlternativeSubPlan_0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = result;
    v6 = *(v3 + 4);
    *(result + 32) = v6;
    result = palloc(8 * v6, a3);
    *(v5 + 40) = result;
    if (*(v5 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v5 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v5 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v5 + 32) > v8);
    }
  }

  return result;
}

uint64_t _outFieldSelect_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  *(v4 + 48) = *(a2 + 24);
  *(v4 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outFieldStore_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v4 + 40) = v7;
    result = palloc(8 * v7, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(v4 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 48) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 40) > v8);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(v4 + 56) = v12;
    result = palloc(8 * v12, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, v13);
        pg_query__node__init(v16);
        *(*(v4 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 64) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 56) > v14);
    }
  }

  *(v4 + 72) = *(a2 + 32);
  return result;
}

uint64_t _outRelabelType_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  *(v4 + 48) = *(a2 + 24);
  v6 = *(a2 + 28);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v4 + 52) = v7;
  *(v4 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outCoerceViaIO_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  v6 = *(a2 + 24);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v4 + 48) = v7;
  *(v4 + 52) = *(a2 + 28);
  return result;
}

uint64_t _outArrayCoerceExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(v4 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16));
  }

  *(v4 + 48) = *(a2 + 24);
  *(v4 + 52) = *(a2 + 28);
  *(v4 + 56) = *(a2 + 32);
  v7 = *(a2 + 36);
  if (v7 < 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(v4 + 60) = v8;
  *(v4 + 64) = *(a2 + 40);
  return result;
}

uint64_t _outConvertRowtypeExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v4 + 44) = v7;
  *(v4 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outCollateExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  *(v4 + 40) = *(a2 + 16);
  *(v4 + 44) = *(a2 + 20);
  return result;
}

uint64_t _outCaseExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 40) = v5;
    result = _outNode_0(v5, *(a2 + 16));
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v4 + 48) = v7;
    result = palloc(8 * v7, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(v4 + 56) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 56) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 48) > v8);
    }
  }

  if (*(a2 + 32))
  {
    v11 = palloc(0x28uLL, a3);
    pg_query__node__init(v11);
    *(v4 + 64) = v11;
    result = _outNode_0(v11, *(a2 + 32));
  }

  *(v4 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outCaseWhen_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL, a3);
    pg_query__node__init(v6);
    *(v4 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16));
  }

  *(v4 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outArrayExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 48) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 56) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 56) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 48) > v8);
    }
  }

  *(v4 + 64) = *(a2 + 24);
  *(v4 + 68) = *(a2 + 28);
  return result;
}

uint64_t _outRowExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 32) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 40) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 32) > v7);
    }
  }

  *(v4 + 48) = *(a2 + 16);
  v10 = *(a2 + 20);
  if (v10 < 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = -1;
  }

  *(v4 + 52) = v11;
  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 56) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, v14);
        pg_query__node__init(v17);
        *(*(v4 + 64) + 8 * v15) = v17;
        result = _outNode_0(*(*(v4 + 64) + 8 * v15), *(*(*(a2 + 24) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(v4 + 56) > v15);
    }
  }

  *(v4 + 72) = *(a2 + 32);
  return result;
}

uint64_t _outRowCompareExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if ((v5 - 1) >= 6)
  {
    v5 = -1;
  }

  *(result + 32) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 40) = v7;
    result = palloc(8 * v7, a3);
    v4[6] = result;
    if (v4[5])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(v4[6] + 8 * v8) = v10;
        result = _outNode_0(*(v4[6] + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (v4[5] > v8);
    }
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(v11 + 4);
    v4[7] = v12;
    result = palloc(8 * v12, a3);
    v4[8] = result;
    if (v4[7])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL, a3);
        pg_query__node__init(v15);
        *(v4[8] + 8 * v13) = v15;
        result = _outNode_0(*(v4[8] + 8 * v13), *(*(*(a2 + 16) + 16) + 8 * v13));
        v13 = v14++;
      }

      while (v4[7] > v13);
    }
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = *(v16 + 4);
    v4[9] = v17;
    result = palloc(8 * v17, a3);
    v4[10] = result;
    if (v4[9])
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL, a3);
        pg_query__node__init(v20);
        *(v4[10] + 8 * v18) = v20;
        result = _outNode_0(*(v4[10] + 8 * v18), *(*(*(a2 + 24) + 16) + 8 * v18));
        v18 = v19++;
      }

      while (v4[9] > v18);
    }
  }

  v21 = *(a2 + 32);
  if (v21)
  {
    v22 = *(v21 + 4);
    v4[11] = v22;
    result = palloc(8 * v22, a3);
    v4[12] = result;
    if (v4[11])
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = palloc(0x28uLL, a3);
        pg_query__node__init(v25);
        *(v4[12] + 8 * v23) = v25;
        result = _outNode_0(*(v4[12] + 8 * v23), *(*(*(a2 + 32) + 16) + 8 * v23));
        v23 = v24++;
      }

      while (v4[11] > v23);
    }
  }

  v26 = *(a2 + 40);
  if (v26)
  {
    v27 = *(v26 + 4);
    v4[13] = v27;
    result = palloc(8 * v27, a3);
    v4[14] = result;
    if (v4[13])
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = palloc(0x28uLL, v28);
        pg_query__node__init(v31);
        *(v4[14] + 8 * v29) = v31;
        result = _outNode_0(*(v4[14] + 8 * v29), *(*(*(a2 + 40) + 16) + 8 * v29));
        v29 = v30++;
      }

      while (v4[13] > v29);
    }
  }

  return result;
}

uint64_t _outCoalesceExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 40) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 48) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 40) > v8);
    }
  }

  *(v4 + 56) = *(a2 + 24);
  return result;
}

uint64_t _outMinMaxExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 32) = *(a2 + 4);
  *(result + 36) = *(a2 + 8);
  *(result + 40) = *(a2 + 12);
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  *(result + 44) = v7;
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(result + 48) = v9;
    result = palloc(8 * v9, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, v10);
        pg_query__node__init(v13);
        *(*(v4 + 56) + 8 * v11) = v13;
        result = _outNode_0(*(*(v4 + 56) + 8 * v11), *(*(*(a2 + 24) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(v4 + 48) > v11);
    }
  }

  *(v4 + 64) = *(a2 + 32);
  return result;
}

_DWORD *_outSQLValueFunction_0(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  if (v2 < 0xF)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[8] = v3;
  result[9] = a2[2];
  result[10] = a2[3];
  result[11] = a2[4];
  return result;
}

const char *_outXmlExpr_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 32) = v6;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    result = palloc(8 * v9, a3);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 64) = v14;
    result = palloc(8 * v14, a3);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(*(a1 + 72) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 72) + 8 * v15), *(*(*(a2 + 24) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 80) = v19;
    result = palloc(8 * v19, a3);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, v20);
        pg_query__node__init(v23);
        *(*(a1 + 88) + 8 * v21) = v23;
        result = _outNode_0(*(*(a1 + 88) + 8 * v21), *(*(*(a2 + 32) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (*(a1 + 80) > v21);
    }
  }

  v24 = *(a2 + 40);
  if (v24 == 1)
  {
    v25 = 2;
  }

  else
  {
    v25 = -1;
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  *(a1 + 96) = v26;
  *(a1 + 100) = *(a2 + 44);
  *(a1 + 104) = *(a2 + 48);
  *(a1 + 108) = *(a2 + 52);
  return result;
}

uint64_t _outNullTest_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(v4 + 40) = v8;
  *(v4 + 44) = *(a2 + 20);
  *(v4 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outBooleanTest_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(v4 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 8));
  }

  v6 = *(a2 + 16);
  if (v6 < 6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v4 + 40) = v7;
  *(v4 + 44) = *(a2 + 20);
  return result;
}

const char *_outTargetEntry_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x28uLL, a3);
    pg_query__node__init(v5);
    *(a1 + 32) = v5;
    _outNode_0(v5, *(a2 + 8));
  }

  *(a1 + 40) = *(a2 + 16);
  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 36);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 42);
  return result;
}

uint64_t _outJoinExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  *(result + 28) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(v4 + 32) = v7;
    result = _outNode_0(v7, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    *(v4 + 40) = v8;
    result = _outNode_0(v8, *(a2 + 24));
  }

  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(v4 + 48) = v10;
    result = palloc(8 * v10, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(*(v4 + 56) + 8 * v11) = v13;
        result = _outNode_0(*(*(v4 + 56) + 8 * v11), *(*(*(a2 + 32) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(v4 + 48) > v11);
    }
  }

  if (*(a2 + 40))
  {
    v14 = palloc(0x28uLL, a3);
    pg_query__node__init(v14);
    *(v4 + 64) = v14;
    result = _outNode_0(v14, *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    v15 = palloc(0x30uLL, a3);
    alias__init = pg_query__alias__init(v15);
    result = _outAlias_0(v15, *(a2 + 48), alias__init);
    *(v4 + 72) = v15;
  }

  *(v4 + 80) = *(a2 + 56);
  return result;
}

void *_outFromExpr_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    result[3] = v6;
    result = palloc(8 * v6, a3);
    v4[4] = result;
    if (v4[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[4] + 8 * v7) = v9;
        result = _outNode_0(*(v4[4] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[3] > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL, a3);
    pg_query__node__init(v10);
    v4[5] = v10;
    v11 = *(a2 + 16);

    return _outNode_0(v10, v11);
  }

  return result;
}

uint64_t _outOnConflictExpr_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 8) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  if (*(a2 + 16))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    *(v4 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 16));
  }

  *(v4 + 56) = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(v4 + 64) = v14;
    result = palloc(8 * v14, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(*(v4 + 72) + 8 * v15) = v17;
        result = _outNode_0(*(*(v4 + 72) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(v4 + 64) > v15);
    }
  }

  if (*(a2 + 40))
  {
    v18 = palloc(0x28uLL, a3);
    pg_query__node__init(v18);
    *(v4 + 80) = v18;
    result = _outNode_0(v18, *(a2 + 40));
  }

  *(v4 + 88) = *(a2 + 48);
  v19 = *(a2 + 56);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(v4 + 96) = v20;
    result = palloc(8 * v20, a3);
    *(v4 + 104) = result;
    if (*(v4 + 96))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, v21);
        pg_query__node__init(v24);
        *(*(v4 + 104) + 8 * v22) = v24;
        result = _outNode_0(*(*(v4 + 104) + 8 * v22), *(*(*(a2 + 56) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(v4 + 96) > v22);
    }
  }

  return result;
}

const char *_outIntoClause_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(a1 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 32) = v8;
    *(a1 + 40) = palloc(8 * v8, a3);
    if (*(a1 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 40) + 8 * v9) = v11;
        _outNode_0(*(*(a1 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    *(a1 + 48) = pstrdup(v12, a3);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 56) = v14;
    *(a1 + 64) = palloc(8 * v14, a3);
    if (*(a1 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(*(a1 + 64) + 8 * v15) = v17;
        _outNode_0(*(*(a1 + 64) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  v18 = *(a2 + 40);
  if (v18 < 4)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = -1;
  }

  *(a1 + 72) = v19;
  result = *(a2 + 48);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 80) = result;
  }

  if (*(a2 + 56))
  {
    v21 = palloc(0x28uLL, a3);
    pg_query__node__init(v21);
    *(a1 + 88) = v21;
    result = _outNode_0(v21, *(a2 + 56));
  }

  *(a1 + 96) = *(a2 + 64);
  return result;
}

_DWORD *_outQuery_0(_DWORD *result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 7)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  result[6] = v6;
  v7 = *(a2 + 8);
  if (v7 < 5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  result[7] = v8;
  result[8] = *(a2 + 24);
  if (*(a2 + 32))
  {
    v9 = palloc(0x28uLL, a3);
    pg_query__node__init(v9);
    *(v4 + 5) = v9;
    result = _outNode_0(v9, *(a2 + 32));
  }

  v4[12] = *(a2 + 40);
  v4[13] = *(a2 + 44);
  v4[14] = *(a2 + 45);
  v4[15] = *(a2 + 46);
  v4[16] = *(a2 + 47);
  v4[17] = *(a2 + 48);
  v4[18] = *(a2 + 49);
  v4[19] = *(a2 + 50);
  v4[20] = *(a2 + 51);
  v4[21] = *(a2 + 52);
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 11) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 12) = result;
    if (*(v4 + 11))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 12) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 12) + 8 * v12), *(*(*(a2 + 56) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 11) > v12);
    }
  }

  v15 = *(a2 + 64);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 13) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 14) = result;
    if (*(v4 + 13))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(v4 + 14) + 8 * v17) = v19;
        result = _outNode_0(*(*(v4 + 14) + 8 * v17), *(*(*(a2 + 64) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(v4 + 13) > v17);
    }
  }

  if (*(a2 + 72))
  {
    v20 = palloc(0x30uLL, a3);
    v21 = pg_query__from_expr__init(v20);
    result = _outFromExpr_0(v20, *(a2 + 72), v21);
    *(v4 + 15) = v20;
  }

  v22 = *(a2 + 80);
  if (v22)
  {
    v23 = *(v22 + 4);
    *(v4 + 16) = v23;
    result = palloc(8 * v23, a3);
    *(v4 + 17) = result;
    if (*(v4 + 16))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL, a3);
        pg_query__node__init(v26);
        *(*(v4 + 17) + 8 * v24) = v26;
        result = _outNode_0(*(*(v4 + 17) + 8 * v24), *(*(*(a2 + 80) + 16) + 8 * v24));
        v24 = v25++;
      }

      while (*(v4 + 16) > v24);
    }
  }

  v27 = *(a2 + 88);
  if (v27 < 3)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = -1;
  }

  v4[36] = v28;
  if (*(a2 + 96))
  {
    v29 = palloc(0x70uLL, a3);
    v30 = pg_query__on_conflict_expr__init(v29);
    result = _outOnConflictExpr_0(v29, *(a2 + 96), v30);
    *(v4 + 19) = v29;
  }

  v31 = *(a2 + 104);
  if (v31)
  {
    v32 = *(v31 + 4);
    *(v4 + 20) = v32;
    result = palloc(8 * v32, a3);
    *(v4 + 21) = result;
    if (*(v4 + 20))
    {
      v33 = 0;
      v34 = 1;
      do
      {
        v35 = palloc(0x28uLL, a3);
        pg_query__node__init(v35);
        *(*(v4 + 21) + 8 * v33) = v35;
        result = _outNode_0(*(*(v4 + 21) + 8 * v33), *(*(*(a2 + 104) + 16) + 8 * v33));
        v33 = v34++;
      }

      while (*(v4 + 20) > v33);
    }
  }

  v36 = *(a2 + 112);
  if (v36)
  {
    v37 = *(v36 + 4);
    *(v4 + 22) = v37;
    result = palloc(8 * v37, a3);
    *(v4 + 23) = result;
    if (*(v4 + 22))
    {
      v38 = 0;
      v39 = 1;
      do
      {
        v40 = palloc(0x28uLL, a3);
        pg_query__node__init(v40);
        *(*(v4 + 23) + 8 * v38) = v40;
        result = _outNode_0(*(*(v4 + 23) + 8 * v38), *(*(*(a2 + 112) + 16) + 8 * v38));
        v38 = v39++;
      }

      while (*(v4 + 22) > v38);
    }
  }

  v41 = *(a2 + 120);
  if (v41)
  {
    v42 = *(v41 + 4);
    *(v4 + 24) = v42;
    result = palloc(8 * v42, a3);
    *(v4 + 25) = result;
    if (*(v4 + 24))
    {
      v43 = 0;
      v44 = 1;
      do
      {
        v45 = palloc(0x28uLL, a3);
        pg_query__node__init(v45);
        *(*(v4 + 25) + 8 * v43) = v45;
        result = _outNode_0(*(*(v4 + 25) + 8 * v43), *(*(*(a2 + 120) + 16) + 8 * v43));
        v43 = v44++;
      }

      while (*(v4 + 24) > v43);
    }
  }

  if (*(a2 + 128))
  {
    v46 = palloc(0x28uLL, a3);
    pg_query__node__init(v46);
    *(v4 + 26) = v46;
    result = _outNode_0(v46, *(a2 + 128));
  }

  v47 = *(a2 + 136);
  if (v47)
  {
    v48 = *(v47 + 4);
    *(v4 + 27) = v48;
    result = palloc(8 * v48, a3);
    *(v4 + 28) = result;
    if (*(v4 + 27))
    {
      v49 = 0;
      v50 = 1;
      do
      {
        v51 = palloc(0x28uLL, a3);
        pg_query__node__init(v51);
        *(*(v4 + 28) + 8 * v49) = v51;
        result = _outNode_0(*(*(v4 + 28) + 8 * v49), *(*(*(a2 + 136) + 16) + 8 * v49));
        v49 = v50++;
      }

      while (*(v4 + 27) > v49);
    }
  }

  v52 = *(a2 + 144);
  if (v52)
  {
    v53 = *(v52 + 4);
    *(v4 + 29) = v53;
    result = palloc(8 * v53, a3);
    *(v4 + 30) = result;
    if (*(v4 + 29))
    {
      v54 = 0;
      v55 = 1;
      do
      {
        v56 = palloc(0x28uLL, a3);
        pg_query__node__init(v56);
        *(*(v4 + 30) + 8 * v54) = v56;
        result = _outNode_0(*(*(v4 + 30) + 8 * v54), *(*(*(a2 + 144) + 16) + 8 * v54));
        v54 = v55++;
      }

      while (*(v4 + 29) > v54);
    }
  }

  v57 = *(a2 + 152);
  if (v57)
  {
    v58 = *(v57 + 4);
    *(v4 + 31) = v58;
    result = palloc(8 * v58, a3);
    *(v4 + 32) = result;
    if (*(v4 + 31))
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = palloc(0x28uLL, a3);
        pg_query__node__init(v61);
        *(*(v4 + 32) + 8 * v59) = v61;
        result = _outNode_0(*(*(v4 + 32) + 8 * v59), *(*(*(a2 + 152) + 16) + 8 * v59));
        v59 = v60++;
      }

      while (*(v4 + 31) > v59);
    }
  }

  if (*(a2 + 160))
  {
    v62 = palloc(0x28uLL, a3);
    pg_query__node__init(v62);
    *(v4 + 33) = v62;
    result = _outNode_0(v62, *(a2 + 160));
  }

  if (*(a2 + 168))
  {
    v63 = palloc(0x28uLL, a3);
    pg_query__node__init(v63);
    *(v4 + 34) = v63;
    result = _outNode_0(v63, *(a2 + 168));
  }

  v64 = *(a2 + 176);
  if (v64 < 3)
  {
    v65 = v64 + 1;
  }

  else
  {
    v65 = -1;
  }

  v4[70] = v65;
  v66 = *(a2 + 184);
  if (v66)
  {
    v67 = *(v66 + 4);
    *(v4 + 36) = v67;
    result = palloc(8 * v67, a3);
    *(v4 + 37) = result;
    if (*(v4 + 36))
    {
      v68 = 0;
      v69 = 1;
      do
      {
        v70 = palloc(0x28uLL, a3);
        pg_query__node__init(v70);
        *(*(v4 + 37) + 8 * v68) = v70;
        result = _outNode_0(*(*(v4 + 37) + 8 * v68), *(*(*(a2 + 184) + 16) + 8 * v68));
        v68 = v69++;
      }

      while (*(v4 + 36) > v68);
    }
  }

  if (*(a2 + 192))
  {
    v71 = palloc(0x28uLL, a3);
    pg_query__node__init(v71);
    *(v4 + 38) = v71;
    result = _outNode_0(v71, *(a2 + 192));
  }

  v72 = *(a2 + 200);
  if (v72)
  {
    v73 = *(v72 + 4);
    *(v4 + 39) = v73;
    result = palloc(8 * v73, a3);
    *(v4 + 40) = result;
    if (*(v4 + 39))
    {
      v74 = 0;
      v75 = 1;
      do
      {
        v76 = palloc(0x28uLL, a3);
        pg_query__node__init(v76);
        *(*(v4 + 40) + 8 * v74) = v76;
        result = _outNode_0(*(*(v4 + 40) + 8 * v74), *(*(*(a2 + 200) + 16) + 8 * v74));
        v74 = v75++;
      }

      while (*(v4 + 39) > v74);
    }
  }

  v77 = *(a2 + 208);
  if (v77)
  {
    v78 = *(v77 + 4);
    *(v4 + 41) = v78;
    result = palloc(8 * v78, a3);
    *(v4 + 42) = result;
    if (*(v4 + 41))
    {
      v80 = 0;
      v81 = 1;
      do
      {
        v82 = palloc(0x28uLL, v79);
        pg_query__node__init(v82);
        *(*(v4 + 42) + 8 * v80) = v82;
        result = _outNode_0(*(*(v4 + 42) + 8 * v80), *(*(*(a2 + 208) + 16) + 8 * v80));
        v80 = v81++;
      }

      while (*(v4 + 41) > v80);
    }
  }

  v4[86] = *(a2 + 216);
  v4[87] = *(a2 + 220);
  return result;
}

uint64_t _outInsertStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    *(v4 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    v13 = palloc(0x48uLL, a3);
    v14 = pg_query__on_conflict_clause__init(v13);
    result = _outOnConflictClause_0(v13, *(a2 + 32), v14);
    *(v4 + 56) = v13;
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(v4 + 64) = v16;
    result = palloc(8 * v16, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(v4 + 72) + 8 * v17) = v19;
        result = _outNode_0(*(*(v4 + 72) + 8 * v17), *(*(*(a2 + 40) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(v4 + 64) > v17);
    }
  }

  if (*(a2 + 48))
  {
    v20 = palloc(0x30uLL, a3);
    v21 = pg_query__with_clause__init(v20);
    result = _outWithClause_0(v20, *(a2 + 48), v21);
    *(v4 + 80) = v20;
  }

  v22 = *(a2 + 56);
  if (v22 < 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = -1;
  }

  *(v4 + 88) = v23;
  return result;
}

void *_outDeleteStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    v4[3] = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    v4[4] = v8;
    result = palloc(8 * v8, a3);
    v4[5] = result;
    if (v4[4])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(v4[5] + 8 * v9) = v11;
        result = _outNode_0(*(v4[5] + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (v4[4] > v9);
    }
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    v4[6] = v12;
    result = _outNode_0(v12, *(a2 + 24));
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    v4[7] = v14;
    result = palloc(8 * v14, a3);
    v4[8] = result;
    if (v4[7])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(v4[8] + 8 * v15) = v17;
        result = _outNode_0(*(v4[8] + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (v4[7] > v15);
    }
  }

  if (*(a2 + 40))
  {
    v18 = palloc(0x30uLL, a3);
    v19 = pg_query__with_clause__init(v18);
    result = _outWithClause_0(v18, *(a2 + 40), v19);
    v4[9] = v18;
  }

  return result;
}

void *_outUpdateStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    v4[3] = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    v4[4] = v8;
    result = palloc(8 * v8, a3);
    v4[5] = result;
    if (v4[4])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(v4[5] + 8 * v9) = v11;
        result = _outNode_0(*(v4[5] + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (v4[4] > v9);
    }
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    v4[6] = v12;
    result = _outNode_0(v12, *(a2 + 24));
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    v4[7] = v14;
    result = palloc(8 * v14, a3);
    v4[8] = result;
    if (v4[7])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL, a3);
        pg_query__node__init(v17);
        *(v4[8] + 8 * v15) = v17;
        result = _outNode_0(*(v4[8] + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15));
        v15 = v16++;
      }

      while (v4[7] > v15);
    }
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = *(v18 + 4);
    v4[9] = v19;
    result = palloc(8 * v19, a3);
    v4[10] = result;
    if (v4[9])
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL, a3);
        pg_query__node__init(v22);
        *(v4[10] + 8 * v20) = v22;
        result = _outNode_0(*(v4[10] + 8 * v20), *(*(*(a2 + 40) + 16) + 8 * v20));
        v20 = v21++;
      }

      while (v4[9] > v20);
    }
  }

  if (*(a2 + 48))
  {
    v23 = palloc(0x30uLL, a3);
    v24 = pg_query__with_clause__init(v23);
    result = _outWithClause_0(v23, *(a2 + 48), v24);
    v4[11] = v23;
  }

  return result;
}

uint64_t _outSelectStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 32) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 24) > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x68uLL, a3);
    into_clause__init = pg_query__into_clause__init(v10);
    result = _outIntoClause_0(v10, *(a2 + 16), into_clause__init);
    *(v4 + 40) = v10;
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 48) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(v4 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 48) > v14);
    }
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(v4 + 64) = v18;
    result = palloc(8 * v18, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL, a3);
        pg_query__node__init(v21);
        *(*(v4 + 72) + 8 * v19) = v21;
        result = _outNode_0(*(*(v4 + 72) + 8 * v19), *(*(*(a2 + 32) + 16) + 8 * v19));
        v19 = v20++;
      }

      while (*(v4 + 64) > v19);
    }
  }

  if (*(a2 + 40))
  {
    v22 = palloc(0x28uLL, a3);
    pg_query__node__init(v22);
    *(v4 + 80) = v22;
    result = _outNode_0(v22, *(a2 + 40));
  }

  v23 = *(a2 + 48);
  if (v23)
  {
    v24 = *(v23 + 4);
    *(v4 + 88) = v24;
    result = palloc(8 * v24, a3);
    *(v4 + 96) = result;
    if (*(v4 + 88))
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL, a3);
        pg_query__node__init(v27);
        *(*(v4 + 96) + 8 * v25) = v27;
        result = _outNode_0(*(*(v4 + 96) + 8 * v25), *(*(*(a2 + 48) + 16) + 8 * v25));
        v25 = v26++;
      }

      while (*(v4 + 88) > v25);
    }
  }

  if (*(a2 + 56))
  {
    v28 = palloc(0x28uLL, a3);
    pg_query__node__init(v28);
    *(v4 + 104) = v28;
    result = _outNode_0(v28, *(a2 + 56));
  }

  v29 = *(a2 + 64);
  if (v29)
  {
    v30 = *(v29 + 4);
    *(v4 + 112) = v30;
    result = palloc(8 * v30, a3);
    *(v4 + 120) = result;
    if (*(v4 + 112))
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = palloc(0x28uLL, a3);
        pg_query__node__init(v33);
        *(*(v4 + 120) + 8 * v31) = v33;
        result = _outNode_0(*(*(v4 + 120) + 8 * v31), *(*(*(a2 + 64) + 16) + 8 * v31));
        v31 = v32++;
      }

      while (*(v4 + 112) > v31);
    }
  }

  v34 = *(a2 + 72);
  if (v34)
  {
    v35 = *(v34 + 4);
    *(v4 + 128) = v35;
    result = palloc(8 * v35, a3);
    *(v4 + 136) = result;
    if (*(v4 + 128))
    {
      v36 = 0;
      v37 = 1;
      do
      {
        v38 = palloc(0x28uLL, a3);
        pg_query__node__init(v38);
        *(*(v4 + 136) + 8 * v36) = v38;
        result = _outNode_0(*(*(v4 + 136) + 8 * v36), *(*(*(a2 + 72) + 16) + 8 * v36));
        v36 = v37++;
      }

      while (*(v4 + 128) > v36);
    }
  }

  v39 = *(a2 + 80);
  if (v39)
  {
    v40 = *(v39 + 4);
    *(v4 + 144) = v40;
    result = palloc(8 * v40, a3);
    *(v4 + 152) = result;
    if (*(v4 + 144))
    {
      v41 = 0;
      v42 = 1;
      do
      {
        v43 = palloc(0x28uLL, a3);
        pg_query__node__init(v43);
        *(*(v4 + 152) + 8 * v41) = v43;
        result = _outNode_0(*(*(v4 + 152) + 8 * v41), *(*(*(a2 + 80) + 16) + 8 * v41));
        v41 = v42++;
      }

      while (*(v4 + 144) > v41);
    }
  }

  if (*(a2 + 88))
  {
    v44 = palloc(0x28uLL, a3);
    pg_query__node__init(v44);
    *(v4 + 160) = v44;
    result = _outNode_0(v44, *(a2 + 88));
  }

  if (*(a2 + 96))
  {
    v45 = palloc(0x28uLL, a3);
    pg_query__node__init(v45);
    *(v4 + 168) = v45;
    result = _outNode_0(v45, *(a2 + 96));
  }

  v46 = *(a2 + 104);
  if (v46 < 3)
  {
    v47 = v46 + 1;
  }

  else
  {
    v47 = -1;
  }

  *(v4 + 176) = v47;
  v48 = *(a2 + 112);
  if (v48)
  {
    v49 = *(v48 + 4);
    *(v4 + 184) = v49;
    result = palloc(8 * v49, a3);
    *(v4 + 192) = result;
    if (*(v4 + 184))
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = palloc(0x28uLL, a3);
        pg_query__node__init(v52);
        *(*(v4 + 192) + 8 * v50) = v52;
        result = _outNode_0(*(*(v4 + 192) + 8 * v50), *(*(*(a2 + 112) + 16) + 8 * v50));
        v50 = v51++;
      }

      while (*(v4 + 184) > v50);
    }
  }

  if (*(a2 + 120))
  {
    v53 = palloc(0x30uLL, a3);
    v54 = pg_query__with_clause__init(v53);
    result = _outWithClause_0(v53, *(a2 + 120), v54);
    *(v4 + 200) = v53;
  }

  v55 = *(a2 + 128);
  if (v55 < 4)
  {
    v56 = v55 + 1;
  }

  else
  {
    v56 = -1;
  }

  *(v4 + 208) = v56;
  *(v4 + 212) = *(a2 + 132);
  if (*(a2 + 136))
  {
    v57 = palloc(0xE8uLL, a3);
    pg_query__select_stmt__init(v57);
    result = _outSelectStmt_0(v57, *(a2 + 136));
    *(v4 + 216) = v57;
  }

  if (*(a2 + 144))
  {
    v58 = palloc(0xE8uLL, a3);
    pg_query__select_stmt__init(v58);
    result = _outSelectStmt_0(v58, *(a2 + 144));
    *(v4 + 224) = v58;
  }

  return result;
}

uint64_t _outAlterTableStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(v4 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v4 + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, v9);
        pg_query__node__init(v12);
        *(*(v4 + 40) + 8 * v10) = v12;
        result = _outNode_0(*(*(v4 + 40) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(v4 + 32) > v10);
    }
  }

  v13 = *(a2 + 24);
  if (v13 < 0x32)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = -1;
  }

  *(v4 + 48) = v14;
  *(v4 + 52) = *(a2 + 28);
  return result;
}

const char *_outAlterTableCmd_0(uint64_t a1, uint64_t a2, double role_spec__init)
{
  v5 = *(a2 + 4);
  if (v5 < 0x43)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result, role_spec__init);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v8 = palloc(0x30uLL, role_spec__init);
    role_spec__init = pg_query__role_spec__init(v8);
    v9 = *(a2 + 24);
    v10 = *(v9 + 4);
    if (v10 < 4)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = -1;
    }

    *(v8 + 24) = v11;
    result = *(v9 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v8 + 32) = result;
    }

    *(v8 + 40) = *(v9 + 16);
    *(a1 + 48) = v8;
  }

  if (*(a2 + 32))
  {
    v12 = palloc(0x28uLL, role_spec__init);
    pg_query__node__init(v12);
    *(a1 + 56) = v12;
    result = _outNode_0(v12, *(a2 + 32));
  }

  v13 = *(a2 + 40);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 64) = v15;
  *(a1 + 68) = *(a2 + 44);
  return result;
}

const char *_outAlterDomainStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 4))
  {
    v5 = palloc(2uLL, a3);
    *(a1 + 24) = v5;
    *v5 = *(a2 + 4);
    *(*(a1 + 24) + 1) = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    *(a1 + 40) = palloc(8 * v7, a3);
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, a3);
        pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 48) = result;
  }

  if (*(a2 + 24))
  {
    v12 = palloc(0x28uLL, a3);
    pg_query__node__init(v12);
    *(a1 + 56) = v12;
    result = _outNode_0(v12, *(a2 + 24));
  }

  v13 = *(a2 + 32);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 64) = v15;
  *(a1 + 68) = *(a2 + 36);
  return result;
}

uint64_t _outSetOperationStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  *(result + 28) = *(a2 + 8);
  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    v4[4] = v7;
    result = _outNode_0(v7, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL, a3);
    pg_query__node__init(v8);
    v4[5] = v8;
    result = _outNode_0(v8, *(a2 + 24));
  }

  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(v9 + 4);
    v4[6] = v10;
    result = palloc(8 * v10, a3);
    v4[7] = result;
    if (v4[6])
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(v4[7] + 8 * v11) = v13;
        result = _outNode_0(*(v4[7] + 8 * v11), *(*(*(a2 + 32) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (v4[6] > v11);
    }
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = *(v14 + 4);
    v4[8] = v15;
    result = palloc(8 * v15, a3);
    v4[9] = result;
    if (v4[8])
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(v4[9] + 8 * v16) = v18;
        result = _outNode_0(*(v4[9] + 8 * v16), *(*(*(a2 + 40) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (v4[8] > v16);
    }
  }

  v19 = *(a2 + 48);
  if (v19)
  {
    v20 = *(v19 + 4);
    v4[10] = v20;
    result = palloc(8 * v20, a3);
    v4[11] = result;
    if (v4[10])
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = palloc(0x28uLL, a3);
        pg_query__node__init(v23);
        *(v4[11] + 8 * v21) = v23;
        result = _outNode_0(*(v4[11] + 8 * v21), *(*(*(a2 + 48) + 16) + 8 * v21));
        v21 = v22++;
      }

      while (v4[10] > v21);
    }
  }

  v24 = *(a2 + 56);
  if (v24)
  {
    v25 = *(v24 + 4);
    v4[12] = v25;
    result = palloc(8 * v25, a3);
    v4[13] = result;
    if (v4[12])
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = palloc(0x28uLL, v26);
        pg_query__node__init(v29);
        *(v4[13] + 8 * v27) = v29;
        result = _outNode_0(*(v4[13] + 8 * v27), *(*(*(a2 + 56) + 16) + 8 * v27));
        v27 = v28++;
      }

      while (v4[12] > v27);
    }
  }

  return result;
}

uint64_t _outGrantStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  v5 = *(a2 + 8);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 28) = v6;
  v7 = *(a2 + 12);
  if (v7 < 0x32)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(result + 32) = v8;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(result + 40) = v10;
    result = palloc(8 * v10, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL, a3);
        pg_query__node__init(v13);
        *(*(v4 + 48) + 8 * v11) = v13;
        result = _outNode_0(*(*(v4 + 48) + 8 * v11), *(*(*(a2 + 16) + 16) + 8 * v11));
        v11 = v12++;
      }

      while (*(v4 + 40) > v11);
    }
  }

  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(v4 + 56) = v15;
    result = palloc(8 * v15, a3);
    *(v4 + 64) = result;
    if (*(v4 + 56))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(v4 + 64) + 8 * v16) = v18;
        result = _outNode_0(*(*(v4 + 64) + 8 * v16), *(*(*(a2 + 24) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(v4 + 56) > v16);
    }
  }

  v19 = *(a2 + 32);
  if (v19)
  {
    v20 = *(v19 + 4);
    *(v4 + 72) = v20;
    result = palloc(8 * v20, a3);
    *(v4 + 80) = result;
    if (*(v4 + 72))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, v21);
        pg_query__node__init(v24);
        *(*(v4 + 80) + 8 * v22) = v24;
        result = _outNode_0(*(*(v4 + 80) + 8 * v22), *(*(*(a2 + 32) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(v4 + 72) > v22);
    }
  }

  *(v4 + 88) = *(a2 + 40);
  v25 = *(a2 + 44);
  if (v25 == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = -1;
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  *(v4 + 92) = v27;
  return result;
}

uint64_t _outGrantRoleStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(*(v4 + 32) + 8 * v7) = v9;
        result = _outNode_0(*(*(v4 + 32) + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (*(v4 + 24) > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v4 + 40) = v11;
    result = palloc(8 * v11, a3);
    *(v4 + 48) = result;
    if (*(v4 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(v4 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v4 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(v4 + 40) > v12);
    }
  }

  *(v4 + 56) = *(a2 + 24);
  *(v4 + 60) = *(a2 + 25);
  if (*(a2 + 32))
  {
    v15 = palloc(0x30uLL, a3);
    role_spec__init = pg_query__role_spec__init(v15);
    v17 = *(a2 + 32);
    v18 = *(v17 + 4);
    if (v18 < 4)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = -1;
    }

    *(v15 + 24) = v19;
    result = *(v17 + 8);
    if (result)
    {
      result = pstrdup(result, role_spec__init);
      *(v15 + 32) = result;
    }

    *(v15 + 40) = *(v17 + 16);
    *(v4 + 64) = v15;
  }

  v20 = *(a2 + 40);
  if (v20 == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = -1;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  *(v4 + 72) = v22;
  return result;
}

void *_outAlterDefaultPrivilegesStmt_0(void *result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    result[3] = v6;
    result = palloc(8 * v6, a3);
    v4[4] = result;
    if (v4[3])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[4] + 8 * v7) = v9;
        result = _outNode_0(*(v4[4] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[3] > v7);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x60uLL, a3);
    grant_stmt__init = pg_query__grant_stmt__init(v10);
    result = _outGrantStmt_0(v10, *(a2 + 16), grant_stmt__init);
    v4[5] = v10;
  }

  return result;
}

const char *_outClusterStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(a1 + 24) = v5;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  return result;
}

const char *_outCopyStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(a1 + 32) = v7;
    _outNode_0(v7, *(a2 + 16));
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 40) = v9;
    *(a1 + 48) = palloc(8 * v9, a3);
    if (*(a1 + 40))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL, a3);
        pg_query__node__init(v12);
        *(*(a1 + 48) + 8 * v10) = v12;
        _outNode_0(*(*(a1 + 48) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10));
        v10 = v11++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 33);
  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 64) = result;
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 72) = v15;
    result = palloc(8 * v15, a3);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL, a3);
        pg_query__node__init(v18);
        *(*(a1 + 80) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 80) + 8 * v16), *(*(*(a2 + 48) + 16) + 8 * v16));
        v16 = v17++;
      }

      while (*(a1 + 72) > v16);
    }
  }

  if (*(a2 + 56))
  {
    v19 = palloc(0x28uLL, a3);
    pg_query__node__init(v19);
    *(a1 + 88) = v19;
    v20 = *(a2 + 56);

    return _outNode_0(v19, v20);
  }

  return result;
}

const char *_outCreateStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 8))
  {
    v5 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 8), range_var__init);
    *(a1 + 24) = v5;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 32) = v8;
    *(a1 + 40) = palloc(8 * v8, a3);
    if (*(a1 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(a1 + 40) + 8 * v9) = v11;
        _outNode_0(*(*(a1 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 48) = v13;
    *(a1 + 56) = palloc(8 * v13, a3);
    if (*(a1 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(a1 + 56) + 8 * v14) = v16;
        _outNode_0(*(*(a1 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  if (*(a2 + 32))
  {
    v17 = palloc(0x68uLL, a3);
    partition_bound_spec__init = pg_query__partition_bound_spec__init(v17);
    _outPartitionBoundSpec_0(v17, *(a2 + 32), partition_bound_spec__init);
    *(a1 + 64) = v17;
  }

  if (*(a2 + 40))
  {
    v19 = palloc(0x38uLL, a3);
    partition_spec__init = pg_query__partition_spec__init(v19);
    _outPartitionSpec_0(v19, *(a2 + 40), partition_spec__init);
    *(a1 + 72) = v19;
  }

  if (*(a2 + 48))
  {
    v21 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v21);
    _outTypeName_0(v21, *(a2 + 48), type_name__init);
    *(a1 + 80) = v21;
  }

  v23 = *(a2 + 56);
  if (v23)
  {
    v24 = *(v23 + 4);
    *(a1 + 88) = v24;
    *(a1 + 96) = palloc(8 * v24, a3);
    if (*(a1 + 88))
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL, a3);
        pg_query__node__init(v27);
        *(*(a1 + 96) + 8 * v25) = v27;
        _outNode_0(*(*(a1 + 96) + 8 * v25), *(*(*(a2 + 56) + 16) + 8 * v25));
        v25 = v26++;
      }

      while (*(a1 + 88) > v25);
    }
  }

  v28 = *(a2 + 64);
  if (v28)
  {
    v29 = *(v28 + 4);
    *(a1 + 104) = v29;
    *(a1 + 112) = palloc(8 * v29, a3);
    if (*(a1 + 104))
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = palloc(0x28uLL, a3);
        pg_query__node__init(v32);
        *(*(a1 + 112) + 8 * v30) = v32;
        _outNode_0(*(*(a1 + 112) + 8 * v30), *(*(*(a2 + 64) + 16) + 8 * v30));
        v30 = v31++;
      }

      while (*(a1 + 104) > v30);
    }
  }

  v33 = *(a2 + 72);
  if (v33 < 4)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = -1;
  }

  *(a1 + 120) = v34;
  v35 = *(a2 + 80);
  if (v35)
  {
    *(a1 + 128) = pstrdup(v35, a3);
  }

  result = *(a2 + 88);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 136) = result;
  }

  *(a1 + 144) = *(a2 + 96);
  return result;
}

uint64_t _outDefineStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  *(result + 28) = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(result + 32) = v8;
    result = palloc(8 * v8, a3);
    *(v4 + 40) = result;
    if (*(v4 + 32))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL, a3);
        pg_query__node__init(v11);
        *(*(v4 + 40) + 8 * v9) = v11;
        result = _outNode_0(*(*(v4 + 40) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9));
        v9 = v10++;
      }

      while (*(v4 + 32) > v9);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v4 + 48) = v13;
    result = palloc(8 * v13, a3);
    *(v4 + 56) = result;
    if (*(v4 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL, a3);
        pg_query__node__init(v16);
        *(*(v4 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v4 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14));
        v14 = v15++;
      }

      while (*(v4 + 48) > v14);
    }
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(v4 + 64) = v18;
    result = palloc(8 * v18, a3);
    *(v4 + 72) = result;
    if (*(v4 + 64))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL, v19);
        pg_query__node__init(v22);
        *(*(v4 + 72) + 8 * v20) = v22;
        result = _outNode_0(*(*(v4 + 72) + 8 * v20), *(*(*(a2 + 32) + 16) + 8 * v20));
        v20 = v21++;
      }

      while (*(v4 + 64) > v20);
    }
  }

  *(v4 + 80) = *(a2 + 40);
  *(v4 + 84) = *(a2 + 41);
  return result;
}

uint64_t _outDropStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  v11 = *(a2 + 16);
  if (v11 < 0x32)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(v4 + 40) = v12;
  v13 = *(a2 + 20);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  *(v4 + 44) = v15;
  *(v4 + 48) = *(a2 + 24);
  *(v4 + 52) = *(a2 + 25);
  return result;
}

uint64_t _outTruncateStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 24) = v6;
    result = palloc(8 * v6, a3);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL, v7);
        pg_query__node__init(v10);
        *(*(v4 + 32) + 8 * v8) = v10;
        result = _outNode_0(*(*(v4 + 32) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8));
        v8 = v9++;
      }

      while (*(v4 + 24) > v8);
    }
  }

  *(v4 + 40) = *(a2 + 16);
  v11 = *(a2 + 20);
  if (v11 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = -1;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(v4 + 44) = v13;
  return result;
}

const char *_outCommentStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x28uLL, a3);
    pg_query__node__init(v7);
    *(a1 + 32) = v7;
    _outNode_0(v7, *(a2 + 8));
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  return result;
}

const char *_outFetchStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 8);
  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

const char *_outIndexStmt_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    *(a1 + 24) = pstrdup(v5, a3);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x50uLL, a3);
    range_var__init = pg_query__range_var__init(v6);
    _outRangeVar_0(v6, *(a2 + 16), range_var__init);
    *(a1 + 32) = v6;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    *(a1 + 40) = pstrdup(v8, a3);
  }

  v9 = *(a2 + 32);
  if (v9)
  {
    *(a1 + 48) = pstrdup(v9, a3);
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 56) = v11;
    *(a1 + 64) = palloc(8 * v11, a3);
    if (*(a1 + 56))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(*(a1 + 64) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 64) + 8 * v12), *(*(*(a2 + 40) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (*(a1 + 56) > v12);
    }
  }

  v15 = *(a2 + 48);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 72) = v16;
    *(a1 + 80) = palloc(8 * v16, a3);
    if (*(a1 + 72))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL, a3);
        pg_query__node__init(v19);
        *(*(a1 + 80) + 8 * v17) = v19;
        _outNode_0(*(*(a1 + 80) + 8 * v17), *(*(*(a2 + 48) + 16) + 8 * v17));
        v17 = v18++;
      }

      while (*(a1 + 72) > v17);
    }
  }

  v20 = *(a2 + 56);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 88) = v21;
    *(a1 + 96) = palloc(8 * v21, a3);
    if (*(a1 + 88))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL, a3);
        pg_query__node__init(v24);
        *(*(a1 + 96) + 8 * v22) = v24;
        _outNode_0(*(*(a1 + 96) + 8 * v22), *(*(*(a2 + 56) + 16) + 8 * v22));
        v22 = v23++;
      }

      while (*(a1 + 88) > v22);
    }
  }

  if (*(a2 + 64))
  {
    v25 = palloc(0x28uLL, a3);
    pg_query__node__init(v25);
    *(a1 + 104) = v25;
    _outNode_0(v25, *(a2 + 64));
  }

  v26 = *(a2 + 72);
  if (v26)
  {
    v27 = *(v26 + 4);
    *(a1 + 112) = v27;
    *(a1 + 120) = palloc(8 * v27, a3);
    if (*(a1 + 112))
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = palloc(0x28uLL, a3);
        pg_query__node__init(v30);
        *(*(a1 + 120) + 8 * v28) = v30;
        _outNode_0(*(*(a1 + 120) + 8 * v28), *(*(*(a2 + 72) + 16) + 8 * v28));
        v28 = v29++;
      }

      while (*(a1 + 112) > v28);
    }
  }

  result = *(a2 + 80);
  if (result)
  {
    result = pstrdup(result, a3);
    *(a1 + 128) = result;
  }

  *(a1 + 136) = *(a2 + 88);
  *(a1 + 140) = *(a2 + 92);
  *(a1 + 144) = *(a2 + 96);
  *(a1 + 148) = *(a2 + 100);
  *(a1 + 152) = *(a2 + 104);
  *(a1 + 156) = *(a2 + 105);
  *(a1 + 160) = *(a2 + 106);
  *(a1 + 164) = *(a2 + 107);
  *(a1 + 168) = *(a2 + 108);
  *(a1 + 172) = *(a2 + 109);
  *(a1 + 176) = *(a2 + 110);
  *(a1 + 180) = *(a2 + 111);
  *(a1 + 184) = *(a2 + 112);
  return result;
}

uint64_t _outCreateFunctionStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  *(result + 24) = *(a2 + 4);
  *(result + 28) = *(a2 + 5);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(result + 32) = v6;
    result = palloc(8 * v6, a3);
    v4[5] = result;
    if (v4[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL, a3);
        pg_query__node__init(v9);
        *(v4[5] + 8 * v7) = v9;
        result = _outNode_0(*(v4[5] + 8 * v7), *(*(*(a2 + 8) + 16) + 8 * v7));
        v7 = v8++;
      }

      while (v4[4] > v7);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    v4[6] = v11;
    result = palloc(8 * v11, a3);
    v4[7] = result;
    if (v4[6])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, a3);
        pg_query__node__init(v14);
        *(v4[7] + 8 * v12) = v14;
        result = _outNode_0(*(v4[7] + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (v4[6] > v12);
    }
  }

  if (*(a2 + 24))
  {
    v15 = palloc(0x68uLL, a3);
    type_name__init = pg_query__type_name__init(v15);
    result = _outTypeName_0(v15, *(a2 + 24), type_name__init);
    v4[8] = v15;
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    v4[9] = v18;
    result = palloc(8 * v18, a3);
    v4[10] = result;
    if (v4[9])
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL, v19);
        pg_query__node__init(v22);
        *(v4[10] + 8 * v20) = v22;
        result = _outNode_0(*(v4[10] + 8 * v20), *(*(*(a2 + 32) + 16) + 8 * v20));
        v20 = v21++;
      }

      while (v4[9] > v20);
    }
  }

  return result;
}

uint64_t _outAlterFunctionStmt_0(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = *(a2 + 4);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x40uLL, a3);
    object_with_args__init = pg_query__object_with_args__init(v7);
    result = _outVacuumStmt_0(v7, *(a2 + 8), object_with_args__init);
    v4[4] = v7;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(v9 + 4);
    v4[5] = v10;
    result = palloc(8 * v10, a3);
    v4[6] = result;
    if (v4[5])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL, v11);
        pg_query__node__init(v14);
        *(v4[6] + 8 * v12) = v14;
        result = _outNode_0(*(v4[6] + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12));
        v12 = v13++;
      }

      while (v4[5] > v12);
    }
  }

  return result;
}