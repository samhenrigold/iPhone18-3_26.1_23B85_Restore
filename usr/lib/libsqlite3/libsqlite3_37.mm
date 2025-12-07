uint64_t sub_181A06A7C(uint64_t a1)
{
  *(a1 + 40) = 0;
  v1 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v1)
  {
    v2 = v1[3];
    v3 = v1[4];
    v4 = v3[3];
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    sub_181929C84(v3, v1);
    v5 = v3[3];
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }

    sqlite3_finalize(v2);
  }

  return 0;
}

uint64_t sub_181A06AF4(uint64_t a1)
{
  *(a1 + 40) = 0;
  v1 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v1)
  {
    v2 = v1[3];
    v3 = v1[4];
    v4 = v3[3];
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    sub_181929C84(v3, v1);
    v5 = v3[3];
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }

    sqlite3_finalize(v2);
  }

  return 0;
}

uint64_t sub_181A06B6C(uint64_t a1, uint64_t a2)
{
  v3 = sqlite3_mprintf("ALTER TABLE %Q.'%q_node'   RENAME TO %w_node;ALTER TABLE %Q.'%q_parent' RENAME TO %w_parent;ALTER TABLE %Q.'%q_rowid'  RENAME TO %w_rowid;", *(a1 + 48), *(a1 + 56), a2, *(a1 + 48), *(a1 + 56), a2, *(a1 + 48), *(a1 + 56), a2);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = v5[3];
    v7 = v5[4];
    v8 = v7[3];
    if (v8)
    {
      xmmword_1ED452F18(v8);
    }

    sub_181929C84(v7, v5);
    v9 = v7[3];
    if (v9)
    {
      xmmword_1ED452F28(v9);
    }

    sqlite3_finalize(v6);
  }

  v10 = sqlite3_exec(*(a1 + 24), v4, 0, 0, 0);
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_13;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
  --qword_1ED456A90;
  off_1ED452EB0(v4);
  v4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
LABEL_13:
    (*v11)(v4);
  }

  return v10;
}

uint64_t sub_181A06CC4(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  v3 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v5[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
    }

    sub_181929C84(v5, v3);
    v7 = v5[3];
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }

    sqlite3_finalize(v4);
  }

  *(a1 + 40) = v2;
  return 0;
}

uint64_t sub_181A06D50(uint64_t result)
{
  if (result)
  {
    v1 = "node";
    for (i = result; ; ++i)
    {
      if (*i == *v1)
      {
        if (!*i)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*i] != byte_181A20298[*v1])
      {
        v3 = "parent";
        for (j = result; ; ++j)
        {
          if (*j == *v3)
          {
            if (!*j)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v3])
          {
            for (k = "rowid"; ; ++k)
            {
              if (*result == *k)
              {
                if (!*result)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*result] != byte_181A20298[*k])
              {
                return 0;
              }

              ++result;
            }
          }

          ++v3;
        }
      }

      ++v1;
    }
  }

  return result;
}

uint64_t sub_181A06E2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  result = sub_181A04294(a1[3], a1[6], a1[7], a5);
  if (!result)
  {
    if (*a5)
    {
      v8 = sqlite3_mprintf("In RTree %s.%s:\n%z", a1[6], a1[7], *a5);
      *a5 = v8;
      if (v8)
      {
        return 0;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181A06EA4(sqlite3 *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, char **a6, int a7)
{
  pStmt[8] = *MEMORY[0x1E69E9840];
  if (a3 - 104 <= 0xFFFFFF9D)
  {
    v8 = 16;
    if (a3 > 5)
    {
      v8 = 24;
    }

    *a6 = sqlite3_mprintf("%s", *(&unk_1E6A28188 + v8));
    return 1;
  }

  sqlite3_vtab_config(a1, 1, 1);
  sqlite3_vtab_config(a1, 2);
  v14 = strlen(*(a4 + 8));
  v15 = strlen(*(a4 + 16));
  if (sqlite3_initialize())
  {
    return 7;
  }

  v16 = v14;
  v17 = v14 + (2 * v15);
  v18 = sub_181902484(v17 + 976, 0x10700409EE11F7CLL);
  if (!v18)
  {
    return 7;
  }

  v19 = v18;
  v85 = a6;
  v86 = a1;
  bzero(v18, v17 + 976);
  *(v19 + 72) = 1;
  *v19 = &unk_1EE341D88;
  v20 = v14 << 32;
  v21 = v19 + 968 + (((v14 << 32) + 0x100000000) >> 32);
  *(v19 + 48) = v19 + 968;
  *(v19 + 56) = v21;
  *(v19 + 64) = v21 + v15 + 1;
  *(v19 + 38) = a2 != 0;
  memcpy((v19 + 968), *(a4 + 8), v16);
  memcpy((v19 + 968 + ((v20 + 0x100000000) >> 32)), *(a4 + 16), v15);
  memcpy(*(v19 + 64), *(a4 + 16), v15);
  strcpy((*(v19 + 64) + v15), "_node");
  if (sqlite3_initialize() || (v23 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v22 = &unk_1EA831560;
  }

  else
  {
    v22 = v23;
    if (a1)
    {
      v24 = *(a1 + 34);
    }

    else
    {
      v24 = 2147483645;
    }

    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 20) = v24;
    *(v23 + 24) = 0;
    *(v23 + 28) = 0;
  }

  v25 = a2 != 0;
  v26 = *(a4 + 24);
  v27 = sub_1818966D0(v26, pStmt);
  sqlite3_str_appendf(v22, "CREATE TABLE x(%.*s INT", v27, v26);
  v28 = 1;
  v29 = 4;
  while (1)
  {
    v30 = *(a4 + 8 * v29);
    if (*v30 != 43)
    {
      break;
    }

    ++*(v19 + 41);
    sub_1818966D0(v30 + 1, pStmt);
    sqlite3_str_appendf(v22, ",%.*s");
LABEL_17:
    v28 = ++v29 < a3;
    if (a3 == v29)
    {
      goto LABEL_21;
    }
  }

  if (!*(v19 + 41))
  {
    ++*(v19 + 37);
    v31 = off_1E6A281B0[v25];
    pAutoinc = sub_1818966D0(v30, pStmt);
    sqlite3_str_appendf(v22, v31, pAutoinc, v30);
    goto LABEL_17;
  }

LABEL_21:
  sqlite3_str_appendf(v22, ");");
  v32 = sqlite3_str_finish(v22);
  v33 = v86;
  if (!v32)
  {
    v36 = 7;
    goto LABEL_48;
  }

  v34 = v32;
  if (v28)
  {
    v35 = sqlite3_mprintf("%s", "Auxiliary rtree columns must be last");
    v36 = 1;
    v37 = v85;
    goto LABEL_27;
  }

  v36 = sqlite3_declare_vtab(v86, v32);
  v37 = v85;
  if (v36)
  {
    v38 = sqlite3_errmsg(v86);
    v35 = sqlite3_mprintf("%s", v38);
LABEL_27:
    *v37 = v35;
  }

  v39 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
    --qword_1ED456A90;
    off_1ED452EB0(v34);
    v34 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v39 = &xmmword_1ED452F28;
      goto LABEL_33;
    }
  }

  else
  {
LABEL_33:
    (*v39)(v34);
  }

  if (v36)
  {
LABEL_48:
    if (v36 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v36;
    }

    sub_181A07BB8(v19);
    return v46;
  }

  v40 = *(v19 + 37);
  *(v19 + 36) = *(v19 + 37) >> 1;
  if (v40 < 2)
  {
    v41 = 2;
    goto LABEL_46;
  }

  if (v40 > 0xA)
  {
    v41 = 3;
    goto LABEL_46;
  }

  if (v40)
  {
    v41 = 1;
LABEL_46:
    v45 = sqlite3_mprintf("%s", *(&unk_1E6A28188 + v41));
    v36 = 0;
    goto LABEL_47;
  }

  *(v19 + 39) = 4 * v40 + 8;
  if (!a7)
  {
    v42 = sqlite3_mprintf("SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1", *(v19 + 48), *(v19 + 56));
    if (v42)
    {
      pStmt[0] = 0;
      v43 = sub_1818954B4(v86, v42, 0xFFFFFFFFLL, 128, 0, pStmt, 0);
      if (!v43)
      {
        if (sqlite3_step(pStmt[0]) == 100)
        {
          *(v19 + 32) = sqlite3_column_int(pStmt[0], 0);
        }

        v43 = sqlite3_finalize(pStmt[0]);
        if (!v43)
        {
          if (*(v19 + 32) > 447)
          {
            v36 = 0;
          }

          else
          {
            *v37 = sqlite3_mprintf("undersize RTree blobs in %q_node", *(v19 + 56));
            v36 = 267;
          }

          goto LABEL_60;
        }
      }

      goto LABEL_57;
    }

LABEL_58:
    v36 = 7;
    goto LABEL_59;
  }

  v42 = sqlite3_mprintf("PRAGMA %Q.page_size", *(v19 + 48));
  if (!v42)
  {
    goto LABEL_58;
  }

  pStmt[0] = 0;
  v43 = sub_1818954B4(v86, v42, 0xFFFFFFFFLL, 128, 0, pStmt, 0);
  if (v43)
  {
LABEL_57:
    v36 = v43;
    goto LABEL_59;
  }

  if (sqlite3_step(pStmt[0]) == 100)
  {
    v44 = sqlite3_column_int(pStmt[0], 0) - 64;
  }

  else
  {
    v44 = -64;
  }

  v36 = sqlite3_finalize(pStmt[0]);
  if (v36)
  {
LABEL_59:
    v47 = sqlite3_errmsg(v86);
    *v37 = sqlite3_mprintf("%s", v47);
    if (v42)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  v52 = 51 * *(v19 + 39) + 4;
  if (v52 >= v44)
  {
    v52 = v44;
  }

  *(v19 + 32) = v52;
LABEL_60:
  v48 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
    --qword_1ED456A90;
    off_1ED452EB0(v42);
    v42 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v48 = &xmmword_1ED452F28;
      goto LABEL_65;
    }
  }

  else
  {
LABEL_65:
    (*v48)(v42);
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v50 = *(a4 + 8);
  v49 = *(a4 + 16);
  *(v19 + 24) = v86;
  if (!a7)
  {
    goto LABEL_95;
  }

  if (sqlite3_initialize() || (v53 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v51 = &unk_1EA831560;
  }

  else
  {
    v51 = v53;
    if (v86)
    {
      v54 = *(v86 + 34);
    }

    else
    {
      v54 = 2147483645;
    }

    *v53 = 0;
    *(v53 + 8) = 0;
    *(v53 + 16) = 0;
    *(v53 + 20) = v54;
    *(v53 + 24) = 0;
    *(v53 + 28) = 0;
  }

  v55 = v49;
  sqlite3_str_appendf(v51, "CREATE TABLE %w.%w_rowid(rowid INTEGER PRIMARY KEY,nodeno", v50, v49);
  if (*(v19 + 41))
  {
    v56 = 0;
    do
    {
      sqlite3_str_appendf(v51, ",a%d", v56++);
    }

    while (v56 < *(v19 + 41));
  }

  v49 = v55;
  sqlite3_str_appendf(v51, ");CREATE TABLE %w.%w_node(nodeno INTEGER PRIMARY KEY,data);", v50, v55);
  sqlite3_str_appendf(v51, "CREATE TABLE %w.%w_parent(nodeno INTEGER PRIMARY KEY,parentnode);", v50, v55);
  sqlite3_str_appendf(v51, "INSERT INTO %w.%w_nodeVALUES(1,zeroblob(%d))", v50, v55, *(v19 + 32));
  v57 = sqlite3_str_finish(v51);
  if (!v57)
  {
    goto LABEL_133;
  }

  v58 = v57;
  v36 = sqlite3_exec(v86, v57, 0, 0, 0);
  v59 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v60 = v50;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
    --qword_1ED456A90;
    off_1ED452EB0(v58);
    v58 = xmmword_1ED456AF0;
    v49 = v55;
    if (xmmword_1ED456AF0)
    {
      v59 = &xmmword_1ED452F28;
      goto LABEL_93;
    }
  }

  else
  {
    v60 = v50;
LABEL_93:
    (*v59)(v58);
  }

  v50 = v60;
  if (v36)
  {
    goto LABEL_157;
  }

LABEL_95:
  pStmt[0] = (v19 + 120);
  pStmt[1] = (v19 + 128);
  pStmt[2] = (v19 + 136);
  pStmt[3] = (v19 + 144);
  pStmt[4] = (v19 + 152);
  pStmt[5] = (v19 + 160);
  pStmt[6] = (v19 + 168);
  pStmt[7] = (v19 + 176);
  v61 = sqlite3_table_column_metadata(v86, *(v19 + 48), "sqlite_stat1", 0, 0, 0, 0, 0, 0);
  if (v61)
  {
    v36 = v61;
    *(v19 + 80) = 0x100000;
    if (v61 != 1)
    {
      goto LABEL_128;
    }

LABEL_115:
    v68 = 0;
    while (2)
    {
      if (v68 != 3 || (v69 = "INSERT INTO%w.%w_rowid(rowid,nodeno)VALUES(?1,?2)ON CONFLICT(rowid)DO UPDATE SET nodeno=excluded.nodeno", !*(v19 + 41)))
      {
        v69 = off_1E6A281C0[v68];
      }

      v70 = sqlite3_mprintf(v69, v50, v49);
      if (!v70)
      {
        goto LABEL_156;
      }

      v71 = v70;
      v36 = sub_1818954B4(v86, v70, 0xFFFFFFFFLL, 133, 0, pStmt[v68], 0);
      v72 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v71);
        --qword_1ED456A90;
        off_1ED452EB0(v71);
        v71 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v72 = &xmmword_1ED452F28;
          goto LABEL_125;
        }
      }

      else
      {
LABEL_125:
        (*v72)(v71);
      }

      if (v68 > 6)
      {
        goto LABEL_128;
      }

      ++v68;
      if (v36)
      {
        goto LABEL_128;
      }

      continue;
    }
  }

  v62 = sqlite3_mprintf("SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'", *(v19 + 48), *(v19 + 56));
  if (!v62)
  {
    *(v19 + 80) = 100;
    v36 = 7;
    goto LABEL_157;
  }

  v63 = v62;
  v89 = 0;
  v64 = sub_1818954B4(v86, v62, 0xFFFFFFFFLL, 128, 0, &v89, 0);
  if (v64)
  {
    v36 = v64;
    v65 = 100;
  }

  else
  {
    if (sqlite3_step(v89) == 100)
    {
      v65 = sqlite3_column_int64(v89, 0);
    }

    else
    {
      v65 = 100;
    }

    v36 = sqlite3_finalize(v89);
  }

  v66 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v63);
    --qword_1ED456A90;
    off_1ED452EB0(v63);
    v63 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v66 = &xmmword_1ED452F28;
      goto LABEL_111;
    }
  }

  else
  {
LABEL_111:
    (*v66)(v63);
  }

  v67 = 100;
  if (v65 > 100)
  {
    v67 = v65;
  }

  *(v19 + 80) = v67;
  if (!v36)
  {
    goto LABEL_115;
  }

LABEL_128:
  if (!*(v19 + 41))
  {
    goto LABEL_153;
  }

  v37 = v85;
  v33 = v86;
  if (v36 != 7)
  {
    v73 = sqlite3_mprintf("SELECT * FROM %w.%w_rowid WHERE rowid=?1", v50, v49);
    *(v19 + 96) = v73;
    if (v73)
    {
      if (sqlite3_initialize() || (v75 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
      {
        v74 = &unk_1EA831560;
      }

      else
      {
        v74 = v75;
        if (v86)
        {
          v76 = *(v86 + 34);
        }

        else
        {
          v76 = 2147483645;
        }

        *v75 = 0;
        *(v75 + 8) = 0;
        *(v75 + 16) = 0;
        *(v75 + 20) = v76;
        *(v75 + 24) = 0;
        *(v75 + 28) = 0;
      }

      sqlite3_str_appendf(v74, "UPDATE %w.%w_rowidSET ", v50, v49);
      if (*(v19 + 41))
      {
        sqlite3_str_appendf(v74, "a%d=?%d", 0, 2);
        if (*(v19 + 41) >= 2u)
        {
          v78 = 1;
          do
          {
            v79 = *(v74 + 6);
            if ((v79 + 1) < *(v74 + 4))
            {
              *(v74 + 6) = v79 + 1;
              *(*(v74 + 1) + v79) = 44;
            }

            else
            {
              sub_181906814(v74, ",", 1, v77);
            }

            sqlite3_str_appendf(v74, "a%d=?%d", v78, v78 + 2);
            ++v78;
          }

          while (v78 < *(v19 + 41));
        }
      }

      sqlite3_str_appendf(v74, " WHERE rowid=?1");
      v80 = sqlite3_str_finish(v74);
      if (v80)
      {
        v81 = v80;
        v36 = sub_1818954B4(v86, v80, 0xFFFFFFFFLL, 133, 0, (v19 + 184), 0);
        v82 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_152;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v81);
        --qword_1ED456A90;
        off_1ED452EB0(v81);
        v81 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v82 = &xmmword_1ED452F28;
LABEL_152:
          (*v82)(v81);
        }

LABEL_153:
        v37 = v85;
        v33 = v86;
        goto LABEL_154;
      }

LABEL_156:
      v36 = 7;
      v37 = v85;
      v33 = v86;
LABEL_157:
      v83 = sqlite3_errmsg(v33);
      v45 = sqlite3_mprintf("%s", v83);
LABEL_47:
      *v37 = v45;
      goto LABEL_48;
    }

LABEL_133:
    v36 = 7;
    goto LABEL_157;
  }

LABEL_154:
  if (v36)
  {
    goto LABEL_157;
  }

  result = 0;
  *a5 = v19;
  return result;
}

uint64_t sub_181A07BB8(uint64_t result)
{
  v1 = *(result + 72) - 1;
  *(result + 72) = v1;
  if (v1)
  {
    return result;
  }

  v2 = result;
  *(result + 40) = 0;
  v3 = *(result + 112);
  *(result + 112) = 0;
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v5[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
    }

    sub_181929C84(v5, v3);
    v7 = v5[3];
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }

    sqlite3_finalize(v4);
  }

  sqlite3_finalize(*(v2 + 120));
  sqlite3_finalize(*(v2 + 128));
  sqlite3_finalize(*(v2 + 136));
  sqlite3_finalize(*(v2 + 144));
  sqlite3_finalize(*(v2 + 152));
  sqlite3_finalize(*(v2 + 160));
  sqlite3_finalize(*(v2 + 168));
  sqlite3_finalize(*(v2 + 176));
  sqlite3_finalize(*(v2 + 184));
  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_15:
      (*v9)(v8);
      goto LABEL_16;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v9 = &xmmword_1ED452F28;
      goto LABEL_15;
    }
  }

LABEL_16:
  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_21:
    v11 = *v10;

    return v11(v2);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  result = off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v10 = &xmmword_1ED452F28;
    goto LABEL_21;
  }

  return result;
}

double sub_181A07DA0(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (a1[4] < 1)
  {
    goto LABEL_15;
  }

  v4 = 0;
  v5 = 16;
  do
  {
    v6 = *(*(a1 + 3) + v5);
    if (v6)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v7(*(v6 + 24));
      }

      v8 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_4;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
      --qword_1ED456A90;
      off_1ED452EB0(v6);
      v6 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v8 = &xmmword_1ED452F28;
LABEL_4:
        (*v8)(v6);
      }
    }

    ++v4;
    v5 += 24;
  }

  while (v4 < a1[4]);
  v3 = *(a1 + 3);
  if (v3)
  {
LABEL_15:
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_20;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v9 = &xmmword_1ED452F28;
LABEL_20:
      (*v9)(v3);
    }
  }

  *(a1 + 3) = 0;
LABEL_22:
  sub_181A08010(v2, *(a1 + 11));
  sub_181A08010(v2, *(a1 + 12));
  sub_181A08010(v2, *(a1 + 13));
  sub_181A08010(v2, *(a1 + 14));
  sub_181A08010(v2, *(a1 + 15));
  v10 = *(a1 + 6);
  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_28;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
LABEL_28:
      (*v11)(v10);
    }
  }

  v12 = *(a1 + 7);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 36) = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = v2;
  *(a1 + 7) = v12;
  return result;
}

uint64_t sub_181A08010(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = *(a2 + 4) - 1;
  *(a2 + 4) = v3;
  if (v3)
  {
    return 0;
  }

  --*(a1 + 92);
  if (a2[1] == 1)
  {
    *(a1 + 44) = -1;
  }

  v6 = *a2;
  if (!*v2 || (v7 = sub_181A08010(a1, v6), !v7))
  {
    v7 = sub_181A0818C(a1, v2);
  }

  v8 = v2[1];
  if (v8)
  {
    v9 = (a1 + 8 * (v8 % 0x61) + 192);
    do
    {
      v10 = v9;
      v11 = *v9;
      v9 = (*v9 + 32);
    }

    while (v11 != v2);
    *v10 = v2[4];
    v2[4] = 0;
  }

  v12 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v13 = v7;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      return v13;
    }

    v12 = &xmmword_1ED452F28;
  }

  else
  {
    v13 = v7;
  }

  (*v12)(v2);
  return v13;
}

uint64_t sub_181A0818C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    return 0;
  }

  v4 = *(a1 + 120);
  v5 = *(a2 + 8);
  v6 = sub_1818DF6EC(v4, 0);
  if (v5)
  {
    if (v6)
    {
      goto LABEL_12;
    }

    v7 = v4[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, v5);
    }

    else
    {
      *v7 = v5;
      *(v7 + 20) = 4;
    }
  }

  else if (v6)
  {
    goto LABEL_12;
  }

  v9 = *(*v4 + 24);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

LABEL_12:
  v10 = *(a1 + 32);
  if ((v10 & 0x80000000) != 0)
  {
    sub_1819012D0(101409);
  }

  else
  {
    v11 = *(a2 + 24);
    if (!sub_1818DF6EC(v4, 1u))
    {
      if (v11)
      {
        v12 = sub_1818900D0(v4[16] + 64, v11, v10, 0, 0);
        if (v12)
        {
          v13 = v12;
          v14 = *v4;
          *(v14 + 80) = v13;
          sub_181932D5C(v14, v13);
          sub_18193C988(*v4, v13);
        }
      }

      v15 = *(*v4 + 24);
      if (v15)
      {
        xmmword_1ED452F28(v15);
      }
    }
  }

  sqlite3_step(v4);
  *(a2 + 20) = 0;
  v8 = sqlite3_reset(v4);
  if (!sub_1818DF6EC(v4, 1u))
  {
    v16 = *(*v4 + 24);
    if (v16)
    {
      xmmword_1ED452F28(v16);
    }
  }

  if (!*(a2 + 8) && !v8)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(v17 + 113);
      switch(v18)
      {
        case 186:
          goto LABEL_29;
        case 118:
          v20 = *(v17 + 56);
LABEL_34:
          v8 = 0;
          *(a2 + 8) = v20;
          v21 = a1 + 8 * (v20 % 0x61);
          *(a2 + 32) = *(v21 + 192);
          *(v21 + 192) = a2;
          return v8;
        case 109:
LABEL_29:
          v19 = "unopened";
          break;
        default:
          v19 = "invalid";
          break;
      }
    }

    else
    {
      v19 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v19);
    sub_1819012D0(192786);
    v20 = 0;
    goto LABEL_34;
  }

  return v8;
}

uint64_t sub_181A083C8(sqlite3_blob **a1, uint64_t a2, sqlite3_blob **a3, sqlite3_int64 *a4)
{
  *a3 = 0;
  v8 = a1[17];
  if (!sub_1818DF6EC(v8, 0))
  {
    v9 = v8[16];
    if ((*(v9 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v9, a2);
    }

    else
    {
      *v9 = a2;
      *(v9 + 20) = 4;
    }

    v10 = *(*v8 + 24);
    if (v10)
    {
      xmmword_1ED452F28(v10);
    }
  }

  v11 = sqlite3_step(a1[17]);
  v12 = a1[17];
  if (v11 == 100)
  {
    v13 = sqlite3_column_int64(v12, 0);
    if (a4)
    {
      *a4 = v13;
    }

    v14 = sub_181A086B4(a1, v13, 0, a3);
    sqlite3_reset(a1[17]);
    return v14;
  }

  else
  {

    return sqlite3_reset(v12);
  }
}

uint64_t sub_181A084D0(uint64_t a1, unsigned int a2, double a3)
{
  v3 = *(a1 + 9);
  if (!*(a1 + 9))
  {
    if (*(a1 + 36))
    {
      v4 = *(a1 + 48);
      ++*(a1 + 4 * a2 + 128);
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      ++*(a1 + 4 * a2 + 128);
    }

LABEL_19:
    *(a1 + 64) = a3;
    result = a1 + 64;
    *(result + 16) = a2;
    *(result - 55) = 1;
    return result;
  }

  v4 = a1 + 64;
  ++*(a1 + 4 * a2 + 128);
LABEL_3:
  if (*v4 > a3 || *v4 == a3 && *(v4 + 16) > a2)
  {
    if (v3)
    {
      v5 = a1;
      v6 = a3;
      v7 = a2;
      result = sub_181A0924C(a1, a2, a3);
      if (!result)
      {
        return result;
      }

      v9 = result;
      a1 = v5;
      if ((-1431655765 * ((v9 - *(v5 + 48)) >> 3)) > 3)
      {
        sub_181A08010(*v5, *(v5 + 88));
        a1 = v5;
      }

      else
      {
        *(v5 + 88 + ((0xAAAAAAAB00000000 * ((v9 - *(v5 + 48)) >> 3) + 0x100000000) >> 29)) = *(v5 + 88);
      }

      LOBYTE(a2) = v7;
      a3 = v6;
      *(a1 + 88) = 0;
      v10 = *(a1 + 64);
      *(v9 + 16) = *(a1 + 80);
      *v9 = v10;
    }

    goto LABEL_19;
  }

  return sub_181A0924C(a1, a2, a3);
}

uint64_t sub_181A0862C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  v5 = __rev16(*(v4 + 2));
  if (!v5)
  {
    return 267;
  }

  v6 = 0;
  v7 = (v4 + 5);
  while (((*(v7 - 1) << 56) | (*v7 << 48) | (v7[1] << 40) | (v7[2] << 32) | (v7[3] << 24) | (v7[4] << 16) | (v7[5] << 8)) + v7[6] != a3)
  {
    v7 += *(a1 + 39);
    if (v5 == ++v6)
    {
      return 267;
    }
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t sub_181A086B4(sqlite3_blob **ppBlob, sqlite3_int64 iRow, uint64_t a3, sqlite3_blob **a4)
{
  v8 = ppBlob + 24;
  v9 = ppBlob[iRow % 0x61 + 24];
  if (v9)
  {
    while (*(v9 + 1) != iRow)
    {
      v9 = *(v9 + 4);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    if (a3 && *v9 != a3)
    {
      return 267;
    }

    v18 = 0;
    ++*(v9 + 4);
    goto LABEL_51;
  }

LABEL_4:
  v11 = ppBlob + 14;
  v10 = ppBlob[14];
  if (!v10)
  {
    goto LABEL_19;
  }

  *v11 = 0;
  v12 = sqlite3_blob_reopen(v10, iRow);
  *v11 = v10;
  if (!v12)
  {
    v19 = *(ppBlob + 8);
    goto LABEL_24;
  }

  v13 = v12;
  *v11 = 0;
  v14 = *(v10 + 3);
  v15 = *(v10 + 4);
  v16 = v15[3];
  if (v16)
  {
    xmmword_1ED452F18(v16);
  }

  sub_181929C84(v15, v10);
  v17 = v15[3];
  if (v17)
  {
    xmmword_1ED452F28(v17);
  }

  sqlite3_finalize(v14);
  if (v13 != 7)
  {
    if (*v11)
    {
      v20 = v13;
      goto LABEL_20;
    }

LABEL_19:
    v20 = sqlite3_blob_open(ppBlob[3], ppBlob[6], ppBlob[8], "data", iRow, 0, ppBlob + 14);
    if (v20)
    {
LABEL_20:
      v21 = 0;
      v9 = 0;
      *a4 = 0;
      if (v20 == 1)
      {
        v18 = 267;
      }

      else
      {
        v18 = v20;
      }

      goto LABEL_30;
    }

    v10 = ppBlob[14];
    v19 = *(ppBlob + 8);
    if (!v10)
    {
      if (!v19)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }

LABEL_24:
    v22 = *(v10 + 3);
    if (v22)
    {
      LODWORD(v22) = *v10;
    }

    if (v19 == v22)
    {
LABEL_27:
      if (sqlite3_initialize())
      {
        v21 = 0;
        v9 = 0;
LABEL_29:
        v18 = 7;
LABEL_30:
        v23 = *v11;
        *v11 = 0;
        if (v23)
        {
          v24 = *(v23 + 3);
          v25 = *(v23 + 4);
          v26 = v25[3];
          if (v26)
          {
            xmmword_1ED452F18(v26);
          }

          sub_181929C84(v25, v23);
          v27 = v25[3];
          if (v27)
          {
            xmmword_1ED452F28(v27);
          }

          sqlite3_finalize(v24);
        }

        if (v21)
        {
          --*(ppBlob + 23);
          v28 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
            --qword_1ED456A90;
            off_1ED452EB0(v9);
            v9 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_51;
            }

            v28 = &xmmword_1ED452F28;
          }

          (*v28)(v9);
        }

        v9 = 0;
LABEL_51:
        *a4 = v9;
        return v18;
      }

      v29 = sub_181902484(v19 + 40, 0x1030040EE16382ALL);
      v9 = v29;
      if (!v29)
      {
        v21 = 0;
        goto LABEL_29;
      }

      ++*(ppBlob + 23);
      *v29 = a3;
      *(v29 + 8) = iRow;
      *(v29 + 16) = 1;
      *(v29 + 24) = v29 + 40;
      *(v29 + 32) = 0;
      v30 = sub_181910DE0(ppBlob[14], (v29 + 40), *(ppBlob + 8), 0, sub_181910FE4);
      v18 = v30;
      if (iRow != 1 || v30)
      {
        if (v30)
        {
          v21 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        v31 = __rev16(**(v9 + 3));
        *(ppBlob + 11) = v31;
        if (v31 > 0x28)
        {
LABEL_57:
          v21 = 1;
          v18 = 267;
          goto LABEL_30;
        }
      }

      if ((*(ppBlob + 8) - 4) / *(ppBlob + 39) >= (bswap32(*(*(v9 + 3) + 2)) >> 16))
      {
        if (a3)
        {
          ++*(a3 + 16);
        }

        v18 = 0;
        v33 = *(v9 + 2) % 0x61u;
        *(v9 + 4) = v8[v33];
        v8[v33] = v9;
        goto LABEL_51;
      }

      goto LABEL_57;
    }

LABEL_50:
    v9 = 0;
    v18 = 267;
    goto LABEL_51;
  }

  return 7;
}

uint64_t sub_181A08AA4(uint64_t *a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(*a1 + 38);
  v5 = a1 + 8;
  v6 = a1 + 11;
  v56 = a1 + 8;
  v57 = a1 + 9;
  v7 = 24 * v3;
  v58 = *a1;
  v59 = *(a1 + 4);
  v55 = a1 + 11;
  while (1)
  {
    while (1)
    {
      v8 = *(a1 + 9);
      v9 = v5;
      if (!*(a1 + 9) && (!*(a1 + 9) || (v9 = a1[6]) == 0))
      {
        v54 = 1;
        goto LABEL_120;
      }

      if (!*(v9 + 16))
      {
        v54 = 0;
LABEL_120:
        result = 0;
        *(a1 + 8) = v54;
        return result;
      }

      v10 = &v6[1 - v8];
      v11 = *v10;
      if (!*v10)
      {
        v12 = v57;
        if (v8 != 1)
        {
          v12 = (a1[6] + 8);
        }

        result = sub_181A086B4(*a1, *v12, 0, v10);
        if (result)
        {
          return result;
        }

        v11 = *v10;
      }

      v14 = *(v11 + 3);
      v15 = __rev16(*(v14 + 2));
      v16 = *(v9 + 18);
      if (v15 <= v16)
      {
        goto LABEL_114;
      }

      v60 = v15;
      v17 = v14 + *(v9 + 18) * *(v2 + 39);
      v18 = (v17 + 4);
      if (v3 < 1)
      {
        break;
      }

      v19 = (v17 + 12);
      v20 = (v17 + 4);
      while (2)
      {
        v21 = 0;
        v22 = 2;
        v23 = -1.0;
        while (1)
        {
          v24 = a1[3];
          v25 = v24 + v21;
          v26 = *(v24 + v21 + 4);
          if (v26 >= 70)
          {
            break;
          }

          v29 = 4 * *v25;
          if (*(v9 + 16) == 1)
          {
            v30 = COERCE_FLOAT(bswap32(*&v19[v29]));
            v31 = SLODWORD(v30);
            if (v4 != 1)
            {
              v31 = v30;
            }

            if (v26 > 66)
            {
              if (v26 == 67)
              {
                if (v31 >= *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }
              }

              else if (v26 == 68)
              {
                if (v31 < *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }
              }

              else if (v31 <= *(v24 + v21 + 8))
              {
                goto LABEL_93;
              }

              goto LABEL_17;
            }

            if (v26 != 63)
            {
              if (v26 != 66)
              {
                if (v26 == 64 || v31 != *(v24 + v21 + 8))
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              v36 = *(v24 + v21 + 8);
              goto LABEL_80;
            }
          }

          else
          {
            v32 = &v20[v29 & 0x3F8];
            if (v26 > 65)
            {
              if ((v26 - 66) < 2)
              {
                v41 = COERCE_FLOAT(bswap32(*(v32 + 2)));
                v42 = SLODWORD(v41);
                if (v4 != 1)
                {
                  v42 = v41;
                }

                if (*(v24 + v21 + 8) < v42)
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              goto LABEL_87;
            }

            if (v26 != 63)
            {
              if (v26 == 65)
              {
                v33 = COERCE_FLOAT(bswap32(*(v32 + 2)));
                v34 = v33;
                if (v4 == 1)
                {
                  v34 = SLODWORD(v33);
                }

                v31 = *(v24 + v21 + 8);
                if (v31 < v34)
                {
                  goto LABEL_93;
                }

                v35 = COERCE_FLOAT(bswap32(*(v32 + 3)));
                v36 = SLODWORD(v35);
                if (v4 != 1)
                {
                  v36 = v35;
                }

LABEL_80:
                if (v31 > v36)
                {
                  goto LABEL_93;
                }

                goto LABEL_17;
              }

              if (v26 == 64)
              {
                goto LABEL_93;
              }

LABEL_87:
              v43 = COERCE_FLOAT(bswap32(*(v32 + 3)));
              v44 = SLODWORD(v43);
              if (v4 != 1)
              {
                v44 = v43;
              }

              if (*(v24 + v21 + 8) > v44)
              {
                goto LABEL_93;
              }
            }
          }

LABEL_17:
          v21 += 24;
          if (v7 == v21)
          {
            LOBYTE(v16) = *(v9 + 18);
            v18 = v20;
            v2 = v58;
LABEL_97:
            LODWORD(v3) = v59;
            goto LABEL_99;
          }
        }

        v27 = *(v25 + 16);
        if (v26 == 71 && *(v9 + 16) == 1)
        {
          *(v27 + 72) = ((*v20 << 56) | (v20[1] << 48) | (v20[2] << 40) | (v20[3] << 32) | (v20[4] << 24) | (v20[5] << 16) | (v20[6] << 8)) + v20[7];
        }

        v28 = *(v27 + 56);
        if (v4 == 1)
        {
          if (v28 <= 7)
          {
            if (v28 != 4)
            {
              if (v28 != 6)
              {
                goto LABEL_54;
              }

LABEL_52:
              v66 = bswap32(*(v20 + 7));
              v65 = bswap32(*(v20 + 6));
            }

            v64 = bswap32(*(v20 + 5));
            v63 = bswap32(*(v20 + 4));
LABEL_54:
            v62 = bswap32(*(v20 + 3));
            v37 = ((*v19 << 24) | (v20[9] << 16) | (v20[10] << 8) | v20[11]);
            goto LABEL_62;
          }

          if (v28 != 8)
          {
            if (v28 != 10)
            {
              goto LABEL_54;
            }

            v70 = bswap32(*(v20 + 11));
            v69 = bswap32(*(v20 + 10));
          }

          v68 = bswap32(*(v20 + 9));
          v67 = bswap32(*(v20 + 8));
          goto LABEL_52;
        }

        if (v28 <= 7)
        {
          if (v28 != 4)
          {
            if (v28 != 6)
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          goto LABEL_60;
        }

        if (v28 == 8)
        {
          goto LABEL_58;
        }

        if (v28 == 10)
        {
          v70 = COERCE_FLOAT(bswap32(*(v20 + 11)));
          v69 = COERCE_FLOAT(bswap32(*(v20 + 10)));
LABEL_58:
          v68 = COERCE_FLOAT(bswap32(*(v20 + 9)));
          v67 = COERCE_FLOAT(bswap32(*(v20 + 8)));
LABEL_59:
          v66 = COERCE_FLOAT(bswap32(*(v20 + 7)));
          v65 = COERCE_FLOAT(bswap32(*(v20 + 6)));
LABEL_60:
          v64 = COERCE_FLOAT(bswap32(*(v20 + 5)));
          v63 = COERCE_FLOAT(bswap32(*(v20 + 4)));
        }

LABEL_61:
        v62 = COERCE_FLOAT(bswap32(*(v20 + 3)));
        v37 = COERCE_FLOAT((*v19 << 24) | (v20[9] << 16) | (v20[10] << 8) | v20[11]);
LABEL_62:
        v61 = v37;
        if (v26 == 70)
        {
          result = (*(v24 + v21 + 8))(v27);
          v22 = 0;
          v23 = 0.0;
          if (result)
          {
            return result;
          }
        }

        else
        {
          *(v27 + 40) = &v61;
          *(v27 + 60) = *(v9 + 16) - 1;
          v38 = *v9;
          *(v27 + 80) = *v9;
          *(v27 + 96) = v38;
          v39 = *(v9 + 17);
          *(v27 + 88) = v39;
          *(v27 + 92) = v39;
          result = (*(v24 + v21 + 8))(v27);
          if (*(v27 + 92) < v22)
          {
            v22 = *(v27 + 92);
          }

          if (*(v27 + 96) < v23 || v23 < 0.0)
          {
            v23 = *(v27 + 96);
          }

          if (result)
          {
            return result;
          }
        }

        if (v22)
        {
          goto LABEL_17;
        }

LABEL_93:
        LOBYTE(v16) = *(v9 + 18) + 1;
        *(v9 + 18) = v16;
        if (v60 > v16)
        {
          v2 = v58;
          v20 += *(v58 + 39);
          v19 = v20 + 8;
          if (v59 >= 1)
          {
            continue;
          }

          v23 = -1.0;
          LOBYTE(v22) = 2;
          goto LABEL_97;
        }

        break;
      }

      v2 = v58;
      LODWORD(v3) = v59;
      v6 = v55;
      v5 = v56;
LABEL_115:
      sub_181A093F4(a1);
    }

    v23 = -1.0;
    LOBYTE(v22) = 2;
LABEL_99:
    v45 = v16 + 1;
    *(v9 + 18) = v16 + 1;
    v46 = *(v9 + 16);
    v47 = v46 - 1;
    if (v46 != 1)
    {
      break;
    }

    v48 = v9[1];
LABEL_107:
    if (v60 <= v45)
    {
      sub_181A093F4(a1);
    }

    if (v23 >= 0.0)
    {
      v52 = v23;
    }

    else
    {
      v52 = 0.0;
    }

    v53 = sub_181A084D0(a1, v47, v52);
    if (!v53)
    {
      return 7;
    }

    *(v53 + 17) = v22;
    *(v53 + 18) = v16;
    v16 = v16;
    *(v53 + 8) = v48;
    v6 = v55;
    v5 = v56;
    v15 = v60;
LABEL_114:
    if (v15 <= v16)
    {
      goto LABEL_115;
    }
  }

  v48 = ((*v18 << 56) | (v18[1] << 48) | (v18[2] << 40) | (v18[3] << 32) | (v18[4] << 24) | (v18[5] << 16) | (v18[6] << 8)) + v18[7];
  v49 = *(a1 + 9);
  if (v49 < 1)
  {
    LOBYTE(v16) = 0;
    goto LABEL_107;
  }

  v50 = (a1[6] + 8);
  while (1)
  {
    v51 = *v50;
    v50 += 3;
    if (v51 == v48)
    {
      return 267;
    }

    if (!--v49)
    {
      LOBYTE(v16) = 0;
      goto LABEL_107;
    }
  }
}

uint64_t sub_181A0924C(uint64_t a1, char a2, double a3)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 32);
  if (v4 < v5)
  {
    result = *(a1 + 48);
    goto LABEL_10;
  }

  v7 = a3;
  v8 = a2;
  v9 = 2 * v5 + 8;
  v10 = *(a1 + 48);
  v11 = sqlite3_initialize();
  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  result = sub_18190287C(v10, 24 * v9, 0x10000408F6FA0D9);
  if (result)
  {
    *(a1 + 48) = result;
    *(a1 + 32) = v9;
    v4 = *(a1 + 36);
    a2 = v8;
    a3 = v7;
LABEL_10:
    *(a1 + 36) = v4 + 1;
    v13 = result + 24 * v4;
    *v13 = a3;
    *(v13 + 16) = a2;
    if (v4 < 1)
    {
      result += 24 * v4;
    }

    else
    {
      v14 = a1 + 88;
      do
      {
        result = v13;
        v17 = v4 - 1;
        v18 = (v4 - 1) >> 1;
        v19 = *(a1 + 48);
        v13 = v19 + 24 * v18;
        if (*result >= *v13 && (*result > *v13 || *(result + 16) >= *(v13 + 16)))
        {
          break;
        }

        v20 = *v13;
        v21 = *(v13 + 16);
        v22 = v19 + 24 * v4;
        v23 = *(v22 + 16);
        *v13 = *v22;
        *(v13 + 16) = v23;
        v24 = *(a1 + 48) + 24 * v4;
        *v24 = v20;
        *(v24 + 16) = v21;
        if (v4 <= 8)
        {
          v25 = v18 + 1;
          if (v4 < 4)
          {
            v15 = v4 + 1;
            v16 = *(v14 + 8 * v25);
            *(v14 + 8 * v25) = *(v14 + 8 * v15);
            *(v14 + 8 * v15) = v16;
          }

          else
          {
            sub_181A08010(*a1, *(v14 + 8 * v25));
            *(v14 + 8 * v25) = 0;
          }
        }

        v4 = v17 >> 1;
        result = v13;
      }

      while (v17 > 1);
    }
  }

  return result;
}

uint64_t sub_181A093F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 9);
  v3 = 1 - v2;
  v4 = result + 88;
  v5 = *(result + 88 + 8 * (1 - v2));
  if (v5)
  {
    result = sub_181A08010(*result, v5);
    *(v4 + 8 * v3) = 0;
    LODWORD(v2) = *(v1 + 9);
  }

  if (v2)
  {
    v6 = v1 + 4 * *(v1 + 80);
    --*(v6 + 128);
    *(v1 + 9) = 0;
    return result;
  }

  v7 = *(v1 + 36);
  if (v7)
  {
    v8 = *(v1 + 48);
    v9 = v1 + 4 * *(v8 + 16);
    --*(v9 + 128);
    v10 = v7 - 1;
    *(v1 + 36) = v7 - 1;
    v11 = v8 + 24 * (v7 - 1);
    v12 = *(v11 + 16);
    *v8 = *v11;
    *(v8 + 16) = v12;
    if (v7 > 4 || (*(v1 + 96) = *(v4 + 8 * v7), *(v4 + 8 * v7) = 0, v7 >= 3))
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v18 = v13;
        v17 = v13 + 2;
        v19 = *(v1 + 48);
        v20 = (v19 + 24 * v14);
        if (v17 >= v10)
        {
          v30 = v15;
          v24 = *(v19 + 24 * v15);
        }

        else
        {
          v21 = (v19 + 24 * v17);
          v22 = v19 + 24 * v15;
          v23 = *v21;
          v24 = *v22;
          if (*v21 < *v22 || (v30 = v15, *v21 <= *v22) && *(v21 + 16) < *(v22 + 16))
          {
            if (v23 >= *v20 && (v23 > *v20 || *(v21 + 16) >= *(v20 + 16)))
            {
              return result;
            }

            v25 = *v20;
            v26 = *(v20 + 2);
            v27 = *(v21 + 2);
            *v20 = *v21;
            *(v20 + 2) = v27;
            v28 = *(v1 + 48) + 24 * v17;
            *v28 = v25;
            *(v28 + 16) = v26;
            if (v14 <= 3)
            {
              v29 = v14 + 1;
              if (v14 < 1)
              {
                v37 = *(v4 + 8 * v29);
                *(v4 + 8 * v29) = *(v4 + 8 * (v18 + 3));
                *(v4 + 8 * (v18 + 3)) = v37;
              }

              else
              {
                result = sub_181A08010(*v1, *(v4 + 8 * v29));
                *(v4 + 8 * v29) = 0;
              }
            }

            goto LABEL_12;
          }
        }

        v31 = (v19 + 24 * v30);
        if (v24 >= *v20 && (v24 > *v20 || *(v31 + 16) >= *(v20 + 16)))
        {
          return result;
        }

        v32 = *v20;
        v33 = *(v20 + 2);
        v34 = *(v31 + 2);
        *v20 = *v31;
        *(v20 + 2) = v34;
        v35 = *(v1 + 48) + 24 * v30;
        *v35 = v32;
        *(v35 + 16) = v33;
        if (v14 <= 3)
        {
          v36 = v14 + 1;
          if (v14 < 2)
          {
            v16 = *(v4 + 8 * v36);
            *(v4 + 8 * v36) = *(v4 + 8 * v17);
            *(v4 + 8 * v17) = v16;
          }

          else
          {
            result = sub_181A08010(*v1, *(v4 + 8 * v36));
            *(v4 + 8 * v36) = 0;
          }
        }

        LODWORD(v17) = v15;
LABEL_12:
        v13 = 2 * v17;
        v15 = (2 * v17) | 1;
        v14 = v17;
      }

      while (v15 < v10);
    }
  }

  return result;
}

uint64_t sub_181A09684(void *a1, unsigned int a2)
{
  pStmt = 0;
  v4 = sqlite3_mprintf("SELECT * FROM %Q.%Q", a1[6], a1[7]);
  if (!v4)
  {
    v6 = 7;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_1818954B4(a1[3], v4, 0xFFFFFFFFLL, 128, 0, &pStmt, 0);
  v7 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_8;
    }

    v7 = &xmmword_1ED452F28;
  }

  (*v7)(v5);
LABEL_8:
  if (!v6)
  {
    if (a2)
    {
      sub_18190C804(pStmt, a2, 0, 0);
      sub_18190C804(pStmt, a2 + 1, 0, 0);
      v8 = sqlite3_mprintf("rtree constraint failed: %s.(%s<=%s)");
    }

    else
    {
      sub_18190C804(pStmt, 0, 0, 0);
      v8 = sqlite3_mprintf("UNIQUE constraint failed: %s.%s");
    }

    a1[2] = v8;
    v6 = 19;
  }

LABEL_14:
  sqlite3_finalize(pStmt);
  return v6;
}

uint64_t sub_181A09810(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v4 = sub_181A086B4(a1, 1, 0, &v39);
  if (!v4)
  {
    v4 = sub_181A083C8(a1, a2, &v40, 0);
    if (!v4 && v40)
    {
      v24 = *(v40 + 3);
      v25 = __rev16(*(v24 + 2));
      if (!v25)
      {
LABEL_34:
        sub_181A08010(a1, v40);
        v4 = 267;
        goto LABEL_2;
      }

      v26 = 0;
      v27 = (v24 + 5);
      while (((*(v27 - 1) << 56) | (*v27 << 48) | (v27[1] << 40) | (v27[2] << 32) | (v27[3] << 24) | (v27[4] << 16) | (v27[5] << 8)) + v27[6] != a2)
      {
        v27 += *(a1 + 39);
        if (v25 == ++v26)
        {
          goto LABEL_34;
        }
      }

      v29 = v40;
      v30 = sub_181A0B5A4(a1, v40, v26, 0);
      LODWORD(v4) = sub_181A08010(a1, v29);
      if (v30)
      {
        v4 = v30;
      }

      else
      {
        v4 = v4;
      }
    }

    if (!v4)
    {
      v31 = *(a1 + 152);
      if (!sub_1818DF6EC(v31, 0))
      {
        v32 = v31[16];
        if ((*(v32 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v32, a2);
        }

        else
        {
          *v32 = a2;
          *(v32 + 20) = 4;
        }

        v33 = *(*v31 + 24);
        if (v33)
        {
          xmmword_1ED452F28(v33);
        }
      }

      sqlite3_step(*(a1 + 152));
      v4 = sqlite3_reset(*(a1 + 152));
      if (!v4)
      {
        if (*(a1 + 44) >= 1 && (v34 = v39, v35 = *(v39 + 3), __rev16(*(v35 + 2)) == 1))
        {
          v41 = 0;
          v36 = sub_181A086B4(a1, ((*(v35 + 4) << 56) | (*(v35 + 5) << 48) | (*(v35 + 6) << 40) | (*(v35 + 7) << 32) | (*(v35 + 8) << 24) | (*(v35 + 9) << 16) | (*(v35 + 10) << 8)) + *(v35 + 11), v39, &v41);
          v37 = v41;
          if (!v36)
          {
            v36 = sub_181A0B7DC(a1, v41, *(a1 + 44) - 1);
          }

          LODWORD(v4) = sub_181A08010(a1, v37);
          if (v36)
          {
            v4 = v36;
          }

          else
          {
            v4 = v4;
          }

          if (!v4)
          {
            v38 = *(a1 + 44) - 1;
            *(a1 + 44) = v38;
            **(v34 + 3) = bswap32(v38) >> 16;
            *(v34 + 5) = 1;
          }
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

LABEL_2:
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = v4;
    v7 = &unk_1ED456000;
    while (1)
    {
      v8 = v6;
      if (!v6)
      {
        v9 = __rev16(*(*(v5 + 24) + 2));
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = 0;
            v12 = (*(v5 + 24) + v10 * *(a1 + 39));
            v13 = (((v12[4] << 56) | (v12[5] << 48) | (v12[6] << 40) | (v12[7] << 32) | (v12[8] << 24) | (v12[9] << 16) | (v12[10] << 8)) + v12[11]);
            v45 = 0;
            v44 = 0;
            v43 = 0u;
            v42 = 0u;
            v41 = v13;
            v14 = (v12 + 12);
            v15 = *(a1 + 37);
            do
            {
              v16 = &v41 + 4 * v11;
              v17 = *v14;
              v18 = v14[1];
              v14 += 2;
              *(v16 + 2) = bswap32(v17);
              *(v16 + 3) = bswap32(v18);
              v11 += 2;
            }

            while (v11 < v15);
            v8 = sub_181A09C80(a1, &v41, *(v5 + 8), &v45);
            if (v8)
            {
              break;
            }

            v19 = v45;
            v20 = sub_181A0A1B4(a1, v45, &v41, *(v5 + 8));
            LODWORD(v8) = sub_181A08010(a1, v19);
            v8 = v20 ? v20 : v8;
            ++v10;
          }

          while (!v8 && v10 < v9);
          v7 = &unk_1ED456000;
        }

        else
        {
          v8 = 0;
        }
      }

      *(a1 + 104) = *(v5 + 32);
      --*(a1 + 92);
      v22 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v6 = v8;
        v23 = v7[350];
        if (v23)
        {
          xmmword_1ED452F18(v23);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = v7[350];
        if (!v5)
        {
          goto LABEL_6;
        }

        v22 = &xmmword_1ED452F28;
      }

      else
      {
        v6 = v8;
      }

      (*v22)(v5);
LABEL_6:
      v5 = *(a1 + 104);
      if (!v5)
      {
        goto LABEL_36;
      }
    }
  }

  LODWORD(v6) = v4;
LABEL_36:
  LODWORD(result) = sub_181A08010(a1, v39);
  if (v6)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_181A09C80(sqlite3_blob **a1, uint64_t a2, int a3, sqlite3_blob **a4)
{
  v82 = 0;
  result = sub_181A086B4(a1, 1, 0, &v82);
  if (result)
  {
    v9 = v82;
    goto LABEL_71;
  }

  v69 = a4;
  v10 = 0;
  v76 = (a2 + 12);
  v75 = (a2 + 8);
  v11 = a1;
  v9 = v82;
  v70 = a3;
  while (2)
  {
    if (v10 >= *(v11 + 11) - a3)
    {
      result = 0;
      goto LABEL_70;
    }

    v72 = v10;
    v77 = *(v9 + 3);
    v14 = __rev16(*(v77 + 2));
    v81 = 0;
    if (!v14)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v71 = v9;
    v15 = 0;
    v16 = 0;
    v12 = 0;
    v17 = *(v11 + 39);
    v18 = v11;
    v19 = *(v11 + 37);
    v20 = 0.0;
    v21 = v18;
    v22 = v18[38];
    do
    {
      v25 = 0;
      v80 = 0;
      *&v78[1] = 0u;
      v79 = 0u;
      v26 = (v77 + v15 * v17);
      v78[0] = ((v26[4] << 56) | (v26[5] << 48) | (v26[6] << 40) | (v26[7] << 32) | (v26[8] << 24) | (v26[9] << 16) | (v26[10] << 8)) + v26[11];
      v27 = (v26 + 12);
      do
      {
        v28 = &v78[v25 / 2];
        *(v28 + 2) = bswap32(*v27);
        *(v28 + 3) = bswap32(v27[1]);
        v27 += 2;
        v25 += 2;
      }

      while (v25 < v19);
      if (v22 == 1)
      {
        if (!v19)
        {
          goto LABEL_9;
        }

        v29 = &v78[1] + 1;
        v30 = v76;
        v31 = 2;
        while (*(v30 - 1) >= *(v29 - 1) && *v30 <= *v29)
        {
          v30 += 2;
          v29 += 2;
          v32 = v31 >= v19;
          v31 += 2;
          if (v32)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        if (!v19)
        {
LABEL_9:
          v23 = sub_181A0BE54(v21, v78);
          if (v23 < v20 || v16 == 0)
          {
            v12 = v78[0];
            v20 = v23;
          }

          v16 = 1;
          goto LABEL_15;
        }

        v33 = &v78[1] + 1;
        v34 = v76;
        v35 = 2;
        while (*(v34 - 1) >= *(v33 - 1) && *v34 <= *v33)
        {
          v34 += 2;
          v33 += 2;
          v32 = v35 >= v19;
          v35 += 2;
          if (v32)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_15:
      ++v15;
    }

    while (v15 != v14);
    if (!v16)
    {
      v36 = 0;
      v11 = v21;
      v74 = v21[39];
      v37 = v21[37];
      v73 = v21[38];
      v38 = 2;
      if (v37 > 2)
      {
        v38 = v21[37];
      }

      v39 = ((v38 - 1) >> 1) + 1;
      v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0.0;
      v9 = v71;
      while (1)
      {
        v42 = 0;
        v80 = 0;
        *&v78[1] = 0u;
        v79 = 0u;
        v43 = (v77 + v36 * v74);
        v78[0] = ((v43[4] << 56) | (v43[5] << 48) | (v43[6] << 40) | (v43[7] << 32) | (v43[8] << 24) | (v43[9] << 16) | (v43[10] << 8)) + v43[11];
        v44 = (v43 + 12);
        do
        {
          v45 = &v78[v42 / 2];
          *(v45 + 2) = bswap32(*v44);
          *(v45 + 3) = bswap32(v44[1]);
          v44 += 2;
          v42 += 2;
        }

        while (v42 < v37);
        v46 = sub_181A0BE54(v11, v78);
        if (v73)
        {
          v47 = v39 & 0x7FFFFFFFFFFFFFFCLL;
          v48 = v75;
          v49 = &v78[1];
          if (v37 < 7)
          {
            v50 = 0;
LABEL_47:
            v54 = &v76[v50];
            v55 = &v78[v50 / 2 + 1] + 1;
            do
            {
              v56 = *(v55 - 1);
              if (v56 >= *(v54 - 1))
              {
                v56 = *(v54 - 1);
              }

              v57 = *v55;
              if (*v55 <= *v54)
              {
                v57 = *v54;
              }

              *(v55 - 1) = v56;
              *v55 = v57;
              v50 += 2;
              v54 += 2;
              v55 += 2;
            }

            while (v50 < v37);
            goto LABEL_61;
          }

          do
          {
            v52 = *v48;
            v51 = v48[1];
            v48 += 2;
            v53 = vtrn2q_s32(vrev64q_s32(vminq_s32(v49[1], v51)), vmaxq_s32(v49[1], v51));
            *v49 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v49, v52)), vmaxq_s32(*v49, v52));
            v49[1] = v53;
            v49 += 2;
            v47 -= 4;
          }

          while (v47);
          v50 = 2 * (v39 & 0x7FFFFFFFFFFFFFFCLL);
          if (v39 != v40)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v37 < 7)
          {
            v58 = 0;
LABEL_59:
            v62 = (v75 + 4 * v58);
            v63 = &v78[v58 / 2 + 1];
            do
            {
              v64 = *v62++;
              v65.i32[0] = *v63;
              v65.i32[1] = v64.i32[1];
              v66.i32[0] = v64.i32[0];
              v66.i32[1] = HIDWORD(*v63);
              *v63 = vbsl_s8(vcgt_f32(v66, v65), *v63, v64);
              ++v63;
              v58 += 2;
            }

            while (v58 < v37);
            goto LABEL_61;
          }

          v59 = v39 & 0x7FFFFFFFFFFFFFFCLL;
          v60 = v75;
          v61 = &v78[1];
          do
          {
            v83 = vld2q_f32(v61);
            v84 = vld2q_f32(v60);
            v60 += 8;
            v85.val[0] = vbslq_s8(vcgtq_f32(v84.val[0], v83.val[0]), v83.val[0], v84.val[0]);
            v85.val[1] = vbslq_s8(vcgtq_f32(v83.val[1], v84.val[1]), v83.val[1], v84.val[1]);
            vst2q_f32(v61, v85);
            v61 += 8;
            v59 -= 4;
          }

          while (v59);
          v58 = 2 * (v39 & 0x7FFFFFFFFFFFFFFCLL);
          if (v39 != v40)
          {
            goto LABEL_59;
          }
        }

LABEL_61:
        v67 = sub_181A0BE54(v11, v78) - v46;
        if (!v36 || v67 < v41 || (v67 == v41 ? (v68 = v46 < v20) : (v68 = 0), v68))
        {
          v12 = v78[0];
          v41 = v67;
          v20 = v46;
        }

        if (++v36 == v14)
        {
          goto LABEL_5;
        }
      }
    }

    v11 = v21;
    v9 = v71;
LABEL_5:
    v13 = sub_181A086B4(v11, v12, v9, &v81);
    sub_181A08010(v11, v9);
    v9 = v81;
    v10 = v72 + 1;
    a3 = v70;
    if (!v13)
    {
      continue;
    }

    break;
  }

  result = v13;
LABEL_70:
  a4 = v69;
LABEL_71:
  *a4 = v9;
  return result;
}

uint64_t sub_181A0A1B4(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (a4 >= 1)
  {
    v8 = (1372618415 * *a3) >> 32;
    v9 = *(a1 + 8 * (*a3 - 97 * ((v8 + ((*a3 - v8) >> 1)) >> 6)) + 192);
    if (v9)
    {
      while (*(v9 + 8) != *a3)
      {
        v9 = *(v9 + 32);
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      sub_181A08010(a1, *v9);
      if (a2)
      {
        ++*(a2 + 4);
      }

      *v9 = a2;
    }
  }

LABEL_9:
  v10 = *(a1 + 39);
  v11 = (*(a1 + 32) - 4) / v10;
  v12 = a2[3];
  v13 = __rev16(*(v12 + 2));
  if (v13 < v11)
  {
    v14 = v12 + (v13 * v10);
    *(v14 + 4) = bswap64(*v5);
    if (*(a1 + 37))
    {
      v15 = 0;
      v16 = (v14 + 12);
      do
      {
        *v16++ = bswap32(*(v5 + v15 + 2));
        ++v15;
      }

      while (v15 < *(a1 + 37));
    }

    *(a2[3] + 2) = bswap32(v13 + 1) >> 16;
    *(a2 + 5) = 1;
  }

  if (v13 != v11)
  {
    result = sub_181A0BF58(a1, a2, v5);
    if (!result)
    {
      v26 = *v5;
      v27 = a2[1];
      if (v4)
      {

        return sub_181A0C420(a1, v26, v27);
      }

      else
      {

        return sub_181A0C320(a1, v26, v27);
      }
    }

    return result;
  }

  v17 = a2[3];
  v18 = *(v17 + 2);
  v19 = *(v17 + 3);
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  if (sqlite3_initialize())
  {
    v20 = 0;
LABEL_17:
    v21 = 0;
    v22 = 0;
    v23 = 7;
    v24 = 1;
    goto LABEL_55;
  }

  v28 = v19 & 0xFFFF00FF | (v18 << 8);
  v29 = (v28 + 1);
  v30 = sub_181902484(52 * v29, 0x1000040EED21634);
  v20 = v30;
  if (!v30)
  {
    goto LABEL_17;
  }

  v247 = (v28 + 1);
  v261 = 4 * v29;
  bzero((v30 + 48 * v29), 4 * v29);
  if (v28)
  {
    v31 = 0;
    v32 = (v20 + 12);
    do
    {
      v33 = (a2[3] + v31 * *(a1 + 39));
      *(v20 + 48 * v31) = ((v33[4] << 56) | (v33[5] << 48) | (v33[6] << 40) | (v33[7] << 32) | (v33[8] << 24) | (v33[9] << 16) | (v33[10] << 8)) + v33[11];
      v34 = (v33 + 12);
      v35 = v32;
      v36 = 2;
      do
      {
        *(v35 - 1) = bswap32(*v34);
        *v35 = bswap32(v34[1]);
        v35 += 2;
        v34 += 2;
        v37 = v36 >= *(a1 + 37);
        v36 += 2;
      }

      while (!v37);
      ++v31;
      v32 += 12;
    }

    while (v31 != v28);
  }

  bzero((a2[3] + 2), *(a1 + 32) - 2);
  *(a2 + 5) = 1;
  v263 = v19 & 0xFFFF00FF | (v18 << 8);
  v38 = (v20 + 48 * v28);
  v39 = *v5;
  v40 = *(v5 + 2);
  v38[1] = *(v5 + 1);
  v38[2] = v40;
  *v38 = v39;
  if (a2[1] == 1)
  {
    v41 = *(a1 + 32);
    if (sqlite3_initialize())
    {
      v22 = 0;
    }

    else
    {
      v45 = sub_181902484(v41 + 40, 0x1030040EE16382ALL);
      v22 = v45;
      if (v45)
      {
        bzero(v45, *(a1 + 32) + 40);
        *(v22 + 24) = v22 + 40;
        ++*(a1 + 92);
        *v22 = a2;
        *(v22 + 16) = 0x100000001;
        ++*(a2 + 4);
      }
    }

    v46 = *(a1 + 32);
    if (sqlite3_initialize() || (v48 = sub_181902484(v46 + 40, 0x1030040EE16382ALL)) == 0)
    {
      v44 = 0;
    }

    else
    {
      v49 = v48;
      bzero(v48, *(a1 + 32) + 40);
      v49[3] = (v49 + 5);
      ++*(a1 + 92);
      *v49 = a2;
      v44 = v49;
      v49[2] = 0x100000001;
      ++*(a2 + 4);
    }

    v50 = *(a1 + 44) + 1;
    *(a1 + 44) = v50;
    *(a2 + 5) = 1;
    *a2[3] = bswap32(v50) >> 16;
  }

  else
  {
    v42 = *a2;
    v43 = *(a1 + 32);
    if (sqlite3_initialize())
    {
      v22 = 0;
    }

    else
    {
      v47 = sub_181902484(v43 + 40, 0x1030040EE16382ALL);
      v22 = v47;
      if (v47)
      {
        bzero(v47, *(a1 + 32) + 40);
        *(v22 + 24) = v22 + 40;
        ++*(a1 + 92);
        *v22 = v42;
        *(v22 + 16) = 0x100000001;
        if (v42)
        {
          ++*(v42 + 16);
        }
      }
    }

    ++*(a2 + 4);
    v44 = a2;
  }

  v24 = 0;
  v250 = v44;
  if (!v44 || !v22)
  {
LABEL_53:
    v23 = 7;
LABEL_54:
    v21 = v250;
    goto LABEL_55;
  }

  bzero(v44[3], *(a1 + 32));
  bzero(*(v22 + 24), *(a1 + 32));
  v51 = *(a1 + 36);
  if (sqlite3_initialize() || (v246 = a2, v53 = v261 + 8 + (v261 + 8) * v51, (v54 = sub_181902484(v53, 0x10040436913F5)) == 0))
  {
    v24 = 0;
    goto LABEL_53;
  }

  v55 = v54;
  v56 = *(a1 + 36);
  bzero(v54, v53);
  LODWORD(v57) = *(a1 + 36);
  v255 = v55;
  if (!*(a1 + 36))
  {
    v176 = 0;
    v177 = 0;
LABEL_177:
    v61 = v247;
    goto LABEL_179;
  }

  v243 = v22;
  v244 = v5;
  v245 = v4;
  v254 = v20;
  v58 = 0;
  v59 = &v55[8 * v56];
  v60 = v55;
  v61 = v247;
  v62 = &v59[4 * (v247 * v56)];
  v63 = (v18 << 8) | v19;
  v64 = v63 + 1;
  v65 = v60 + 16;
  v66 = 4 * v64;
  v67.i64[0] = 0x400000004;
  v67.i64[1] = 0x400000004;
  v68.i64[0] = 0x800000008;
  v68.i64[1] = 0x800000008;
  do
  {
    v69 = &v255[8 * v57 + 4 * v58 * v247];
    *&v255[8 * v58] = v69;
    if (v63 < 7)
    {
      v70 = 0;
      do
      {
LABEL_73:
        *&v60[8 * v57 + 4 * v70] = v70;
        ++v70;
      }

      while (v64 != v70);
      goto LABEL_67;
    }

    v71 = &v65[8 * v57];
    v72 = &v60[8 * v57];
    v73 = v64 & 0x1FFF8;
    v74 = xmmword_181A1FFE0;
    do
    {
      *v72 = v74;
      v72 += 2;
      *v71 = vaddq_s32(v74, v67);
      v71 += 2;
      v74 = vaddq_s32(v74, v68);
      v73 -= 8;
    }

    while (v73);
    v70 = v64 & 0x1FFF8;
    if ((v64 & 0x1FFF8) != v64)
    {
      goto LABEL_73;
    }

LABEL_67:
    sub_181A0C668(a1, v69, v247, v58++, v254, v62);
    v57 = *(a1 + 36);
    v65 += v66;
    v60 += v66;
    v67.i64[0] = 0x400000004;
    v67.i64[1] = 0x400000004;
    v68.i64[0] = 0x800000008;
    v68.i64[1] = 0x800000008;
  }

  while (v58 < v57);
  if (*(a1 + 36))
  {
    v249 = *(a1 + 36);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = (*(a1 + 32) - 4) / *(a1 + 39);
    v79 = v78 / 3;
    v248 = ((((1431655765 * v78) >> 32) - v78) >> 1) + ((((1431655765 * v78) >> 32) - v78) >> 31) + v247;
    v80 = v254 + 8;
    v81 = v254 + 12;
    v82 = 0.0;
    v83 = v263;
    v257 = v79;
    while (1)
    {
      v252 = v77;
      v253 = v76;
      v251 = v75;
      if (v79 <= v248)
      {
        break;
      }

      v256 = 0;
      v84 = 0.0;
LABEL_78:
      v85 = v84 < v82 || v251 == 0;
      if (v85)
      {
        v77 = v251;
      }

      else
      {
        v77 = v252;
      }

      if (v85)
      {
        v76 = v256;
      }

      else
      {
        v76 = v253;
      }

      if (v85)
      {
        v82 = v84;
      }

      v75 = v251 + 1;
      if (v251 + 1 == v249)
      {
        v176 = v77;
        v177 = v76;
        v20 = v254;
        v4 = v245;
        v22 = v243;
        v5 = v244;
        goto LABEL_177;
      }
    }

    v256 = 0;
    v86 = *&v255[8 * v75];
    v262 = (v254 + 48 * *v86);
    v260 = (v254 + 48 * v86[v83]);
    v87 = *(a1 + 37);
    v88 = *(a1 + 38);
    v89 = 2;
    if (v87 > 2)
    {
      v89 = *(a1 + 37);
    }

    v90 = ((v89 - 1) >> 1) + 1;
    v91 = v90 & 0x7FFFFFFFFFFFFFFCLL;
    v92 = 2 * (v90 & 0x7FFFFFFFFFFFFFFCLL);
    v93 = v87 + 2;
    v94 = 4 * *(a1 + 37);
    v95 = 0.0;
    v96 = *(a1 + 38);
    v97 = v79;
    v98 = 0.0;
    v84 = 0.0;
    v258 = v92;
    v259 = v90;
    while (1)
    {
      v99 = *v262;
      v100 = v262[2];
      v271[1] = v262[1];
      v271[2] = v100;
      v271[0] = v99;
      v101 = *v260;
      v102 = v260[2];
      v270[1] = v260[1];
      v270[2] = v102;
      v270[0] = v101;
      if (v83 >= 2)
      {
        break;
      }

LABEL_143:
      v149 = 0.0;
      v150 = v94;
      v151 = v93;
      do
      {
        if (v88)
        {
          v152 = *(v271 + v150);
          v153.i64[0] = v152;
          v153.i64[1] = SHIDWORD(v152);
          v154 = vcvtq_f64_s64(v153);
        }

        else
        {
          v154 = vcvtq_f64_f32(*(v271 + v150));
        }

        v149 = v149 + vsubq_f64(vdupq_laneq_s64(v154, 1), v154).f64[0];
        v151 -= 2;
        v150 -= 8;
      }

      while (v151 > 3);
      v155 = 0.0;
      v156 = v94;
      v157 = v93;
      do
      {
        if (v88)
        {
          v158 = *(v270 + v156);
          v159.i64[0] = v158;
          v159.i64[1] = SHIDWORD(v158);
          v160 = vcvtq_f64_s64(v159);
        }

        else
        {
          v160 = vcvtq_f64_f32(*(v270 + v156));
        }

        v155 = v155 + vsubq_f64(vdupq_laneq_s64(v160, 1), v160).f64[0];
        v157 -= 2;
        v156 -= 8;
      }

      while (v157 > 3);
      if (v87)
      {
        v161 = 0;
        v162 = 1.0;
        v163 = v271 + 3;
        v164 = v270 + 3;
        while (1)
        {
          if (v88)
          {
            v165 = *(v163 - 1);
            if (v165 <= *(v164 - 1))
            {
              v165 = *(v164 - 1);
            }

            v166 = v165;
            v167 = *v163;
            v168 = *v164;
            v169 = v167 < v168;
          }

          else
          {
            v170 = *(v163 - 1);
            v171 = *v163;
            v172 = *v164;
            if (v170 <= *(v164 - 1))
            {
              v170 = *(v164 - 1);
            }

            v166 = v170;
            v169 = v171 < v172;
            v167 = v171;
            v168 = v172;
          }

          if (!v169)
          {
            v167 = v168;
          }

          if (v167 < v166)
          {
            break;
          }

          v162 = v162 * (v167 - v166);
          v161 += 2;
          v164 += 2;
          v163 += 2;
          if (v161 >= v87)
          {
            goto LABEL_169;
          }
        }

        v162 = 0.0;
LABEL_169:
        v173 = v162 + 0.0;
      }

      else
      {
        v173 = 1.0;
      }

      v174 = sub_181A0BE54(a1, v271);
      v175 = v174 + sub_181A0BE54(a1, v270);
      v79 = v257;
      v83 = v263;
      v94 = 4 * v87;
      v81 = v254 + 12;
      v92 = v258;
      v90 = v259;
      v93 = v87 + 2;
      if (v97 == v257 || v173 < v98 || v173 == v98 && v175 < v95)
      {
        v98 = v173;
        v95 = v175;
        v256 = v97;
      }

      v84 = v84 + v149 + v155;
      if (v248 + 1 == ++v97)
      {
        goto LABEL_78;
      }
    }

    v103 = 1;
    while (2)
    {
      v104 = v86[v103];
      if (v103 >= v97)
      {
        if (v96)
        {
          if (v87 >= 7)
          {
            v121 = (v80 + 48 * v104);
            v122 = v91;
            v123 = (v270 + 8);
            do
            {
              v125 = *v121;
              v124 = v121[1];
              v121 += 2;
              v126 = vtrn2q_s32(vrev64q_s32(vminq_s32(v123[1], v124)), vmaxq_s32(v123[1], v124));
              *v123 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v123, v125)), vmaxq_s32(*v123, v125));
              v123[1] = v126;
              v123 += 2;
              v122 -= 4;
            }

            while (v122);
            v106 = v92;
            if (v90 == v91)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v106 = 0;
          }

          v127 = (v81 + 4 * v106 + 48 * v104);
          v128 = v270 + v106 + 3;
          do
          {
            v129 = *(v128 - 1);
            if (v129 >= *(v127 - 1))
            {
              v129 = *(v127 - 1);
            }

            *(v128 - 1) = v129;
            v130 = *v128;
            v132 = *v127;
            v127 += 2;
            v131 = v132;
            if (*v128 <= v132)
            {
              v130 = v131;
            }

            *v128 = v130;
            v128 += 2;
            v106 += 2;
          }

          while (v106 < v87);
LABEL_99:
          if (++v103 == v83)
          {
            goto LABEL_143;
          }

          continue;
        }

        if (v87 >= 7)
        {
          v141 = (v80 + 48 * v104);
          v142 = v91;
          v143 = v270 + 2;
          do
          {
            v274 = vld2q_f32(v143);
            v277 = vld2q_f32(v141);
            v141 += 8;
            v280.val[0] = vbslq_s8(vcgtq_f32(v277.val[0], v274.val[0]), v274.val[0], v277.val[0]);
            v280.val[1] = vbslq_s8(vcgtq_f32(v274.val[1], v277.val[1]), v274.val[1], v277.val[1]);
            vst2q_f32(v143, v280);
            v143 += 8;
            v142 -= 4;
          }

          while (v142);
          v108 = v92;
          if (v90 == v91)
          {
            break;
          }
        }

        else
        {
          v108 = 0;
        }

        v144 = (v80 + 4 * v108 + 48 * v104);
        v145 = (v270 + 4 * v108 + 8);
        do
        {
          v146 = *v144++;
          v147.i32[0] = *v145;
          v147.i32[1] = v146.i32[1];
          v148.i32[0] = v146.i32[0];
          v148.i32[1] = HIDWORD(*v145);
          *v145 = vbsl_s8(vcgt_f32(v148, v147), *v145, v146);
          ++v145;
          v108 += 2;
        }

        while (v108 < v87);
      }

      else
      {
        if (v88)
        {
          if (v87 >= 7)
          {
            v109 = (v80 + 48 * v104);
            v110 = v91;
            v111 = (v271 + 8);
            do
            {
              v113 = *v109;
              v112 = v109[1];
              v109 += 2;
              v114 = vtrn2q_s32(vrev64q_s32(vminq_s32(v111[1], v112)), vmaxq_s32(v111[1], v112));
              *v111 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v111, v113)), vmaxq_s32(*v111, v113));
              v111[1] = v114;
              v111 += 2;
              v110 -= 4;
            }

            while (v110);
            v105 = v92;
            v96 = v88;
            if (v90 != v91)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v105 = 0;
LABEL_114:
            v115 = (v81 + 4 * v105 + 48 * v104);
            v116 = v271 + v105 + 3;
            do
            {
              v117 = *(v116 - 1);
              if (v117 >= *(v115 - 1))
              {
                v117 = *(v115 - 1);
              }

              *(v116 - 1) = v117;
              v118 = *v116;
              v120 = *v115;
              v115 += 2;
              v119 = v120;
              if (*v116 <= v120)
              {
                v118 = v119;
              }

              *v116 = v118;
              v116 += 2;
              v105 += 2;
            }

            while (v105 < v87);
            v96 = v88;
          }

          goto LABEL_99;
        }

        if (v87 < 7)
        {
          v107 = 0;
          goto LABEL_134;
        }

        v133 = (v80 + 48 * v104);
        v134 = v91;
        v135 = v271 + 2;
        do
        {
          v273 = vld2q_f32(v135);
          v276 = vld2q_f32(v133);
          v133 += 8;
          v279.val[0] = vbslq_s8(vcgtq_f32(v276.val[0], v273.val[0]), v273.val[0], v276.val[0]);
          v279.val[1] = vbslq_s8(vcgtq_f32(v273.val[1], v276.val[1]), v273.val[1], v276.val[1]);
          vst2q_f32(v135, v279);
          v135 += 8;
          v134 -= 4;
        }

        while (v134);
        v107 = v92;
        if (v90 != v91)
        {
LABEL_134:
          v136 = (v80 + 4 * v107 + 48 * v104);
          v137 = (v271 + 4 * v107 + 8);
          do
          {
            v138 = *v136++;
            v139.i32[0] = *v137;
            v139.i32[1] = v138.i32[1];
            v140.i32[0] = v138.i32[0];
            v140.i32[1] = HIDWORD(*v137);
            *v137 = vbsl_s8(vcgt_f32(v140, v139), *v137, v138);
            ++v137;
            v107 += 2;
          }

          while (v107 < v87);
        }
      }

      break;
    }

    v96 = 0;
    goto LABEL_99;
  }

  v176 = 0;
  v177 = 0;
  v20 = v254;
  v4 = v245;
  v22 = v243;
  v5 = v244;
LABEL_179:
  v178 = 0;
  v179 = v255;
  v180 = *&v255[8 * v176];
  v181 = (v20 + 48 * *v180);
  v182 = *v181;
  v183 = v181[2];
  v268 = v181[1];
  v269 = v183;
  v267 = v182;
  v184 = (v20 + 48 * v180[v177]);
  v185 = *v184;
  v186 = v184[2];
  v265 = v184[1];
  v266 = v186;
  v264 = v185;
  v21 = v250;
  while (2)
  {
    if (v178 >= v177)
    {
      v187 = v22;
    }

    else
    {
      v187 = v250;
    }

    v188 = *(*&v255[8 * v176] + 4 * v178);
    v189 = (v20 + 48 * v188);
    v190 = *(a1 + 39);
    v191 = v187[3];
    v192 = __rev16(*(v191 + 2));
    if (v192 < (*(a1 + 32) - 4) / v190)
    {
      v193 = v191 + (v192 * v190);
      *(v193 + 4) = bswap64(*v189);
      if (*(a1 + 37))
      {
        v194 = 0;
        v195 = (v193 + 12);
        do
        {
          *v195++ = bswap32(*(v189 + v194 + 2));
          ++v194;
        }

        while (v194 < *(a1 + 37));
      }

      *(v187[3] + 2) = bswap32(v192 + 1) >> 16;
      *(v187 + 5) = 1;
    }

    if (v178 >= v177)
    {
      v196 = &v264;
    }

    else
    {
      v196 = &v267;
    }

    v197 = v196 | 8;
    v198 = v189 + 1;
    v199 = *(a1 + 37);
    if (v199 <= 2)
    {
      v200 = 2;
    }

    else
    {
      v200 = *(a1 + 37);
    }

    v201 = ((v200 - 1) >> 1) + 1;
    if (!*(a1 + 38))
    {
      if (v199 >= 7)
      {
        v203 = 2 * (v201 & 0x7FFFFFFFFFFFFFFCLL);
        v212 = v201 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v275 = vld2q_f32(v197);
          v278 = vld2q_f32(v198);
          v198 += 4;
          v281.val[0] = vbslq_s8(vcgtq_f32(v278.val[0], v275.val[0]), v275.val[0], v278.val[0]);
          v281.val[1] = vbslq_s8(vcgtq_f32(v275.val[1], v278.val[1]), v275.val[1], v278.val[1]);
          vst2q_f32(v197, v281);
          v197 += 32;
          v212 -= 4;
        }

        while (v212);
        if (v201 == (v201 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_180;
        }
      }

      else
      {
        v203 = 0;
      }

      v188 = v20 + 8 + 4 * v203 + 48 * v188;
      v196 = (v196 + 4 * v203 + 8);
      do
      {
        v213 = *v188;
        v188 += 8;
        v214.i32[0] = *v196;
        v214.i32[1] = v213.i32[1];
        v215.i32[0] = v213.i32[0];
        v215.i32[1] = HIDWORD(*v196);
        *v196 = vbsl_s8(vcgt_f32(v215, v214), *v196, v213);
        ++v196;
        v203 += 2;
      }

      while (v203 < v199);
      goto LABEL_180;
    }

    if (v199 > 6)
    {
      v202 = 2 * (v201 & 0x7FFFFFFFFFFFFFFCLL);
      v204 = v201 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v206 = *v198;
        v205 = *(v198 + 1);
        v198 += 4;
        v207 = vtrn2q_s32(vrev64q_s32(vminq_s32(*(v197 + 16), v205)), vmaxq_s32(*(v197 + 16), v205));
        *v197 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v197, v206)), vmaxq_s32(*v197, v206));
        *(v197 + 16) = v207;
        v197 += 32;
        v204 -= 4;
      }

      while (v204);
      if (v201 != (v201 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_203;
      }
    }

    else
    {
      v202 = 0;
LABEL_203:
      v188 = v20 + 12 + 4 * v202 + 48 * v188;
      v196 = (v196 + 4 * v202 + 12);
      do
      {
        v208 = v196[-1].i32[1];
        if (v208 >= *(v188 - 4))
        {
          v208 = *(v188 - 4);
        }

        v196[-1].i32[1] = v208;
        v209 = v196->i32[0];
        v211 = *v188;
        v188 += 8;
        v210 = v211;
        if (v196->i32[0] <= v211)
        {
          v209 = v210;
        }

        v196->i32[0] = v209;
        ++v196;
        v202 += 2;
      }

      while (v202 < v199);
    }

LABEL_180:
    if (++v178 != v61)
    {
      continue;
    }

    break;
  }

  v216 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_221;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v255);
  --qword_1ED456A90;
  off_1ED452EB0(v255);
  if (xmmword_1ED456AF0)
  {
    v179 = xmmword_1ED456AF0;
    v216 = &xmmword_1ED452F28;
LABEL_221:
    (*v216)(v179, v188, v196);
  }

  v217 = sub_181A0818C(a1, v22);
  if (v217)
  {
LABEL_223:
    v23 = v217;
    v24 = 0;
    goto LABEL_55;
  }

  v218 = v250[1];
  if (!v218)
  {
    v217 = sub_181A0818C(a1, v250);
    if (v217)
    {
      goto LABEL_223;
    }

    v218 = v250[1];
  }

  *&v264 = *(v22 + 8);
  *&v267 = v218;
  v219 = *v250;
  if (v246[1] != 1)
  {
    LODWORD(v271[0]) = 0;
    if (v219)
    {
      v224 = sub_181A0862C(a1, v219, v218, v271);
      if (v224)
      {
        goto LABEL_235;
      }

      v225 = v271[0];
    }

    else
    {
      v225 = -1;
    }

    sub_181A0BE00(a1, v219, &v267, v225);
    v224 = sub_181A0BF58(a1, v219, &v267);
    if (!v224)
    {
      v220 = v22;
      v221 = v5;
      v222 = (v4 + 1);
      goto LABEL_237;
    }

LABEL_235:
    v23 = v224;
    v24 = 0;
    goto LABEL_54;
  }

  v220 = v22;
  v221 = v5;
  v222 = (v4 + 1);
  v223 = sub_181A0A1B4(a1, v219, &v267, v222);
  if (v223)
  {
    v23 = v223;
    v24 = 0;
    v22 = v220;
    goto LABEL_54;
  }

LABEL_237:
  v226 = sub_181A0A1B4(a1, *v220, &v264, v222);
  v21 = v250;
  if (v226)
  {
    v23 = v226;
    v24 = 0;
    v22 = v220;
    goto LABEL_55;
  }

  v227 = v220;
  v228 = *(v220 + 24);
  if (__rev16(*(v228 + 2)))
  {
    v229 = 0;
    v230 = 0;
    v231 = v4;
    if (v4)
    {
      v232 = sub_181A0C420;
    }

    else
    {
      v232 = sub_181A0C320;
    }

    do
    {
      v233 = (v228 + v229 * *(a1 + 39));
      v234 = ((v233[4] << 56) | (v233[5] << 48) | (v233[6] << 40) | (v233[7] << 32) | (v233[8] << 24) | (v233[9] << 16) | (v233[10] << 8)) + v233[11];
      if (v231 >= 1)
      {
        for (i = *(a1 + 192 + 8 * ((((v233[8] << 24) | (v233[9] << 16) | (v233[10] << 8)) + v233[11]) % 0x61)); i; i = i[4])
        {
          if (i[1] == v234)
          {
            break;
          }
        }

        v236 = v227;
        do
        {
          if (v236 == i)
          {
            v24 = 0;
            v23 = 267;
            v22 = v227;
            goto LABEL_54;
          }

          v236 = *v236;
        }

        while (v236);
        if (i)
        {
          sub_181A08010(a1, *i);
          ++*(v227 + 16);
          *i = v227;
        }
      }

      v237 = v232(a1, v234, *(v227 + 8));
      if (v237)
      {
        v23 = v237;
        v24 = 0;
        v22 = v227;
        goto LABEL_54;
      }

      if (v234 == *v221)
      {
        v230 = 1;
      }

      ++v229;
      v228 = *(v227 + 24);
    }

    while (v229 < bswap32(*(v228 + 2)) >> 16);
    v4 = v231;
    v21 = v250;
    if (v246[1] == 1)
    {
      goto LABEL_261;
    }

    if (!v230)
    {
LABEL_266:
      v241 = sub_181A0C520(a1, *v221, v21, v4);
      if (v241)
      {
        goto LABEL_267;
      }
    }

LABEL_268:
    v242 = sub_181A08010(a1, v227);
    if (v242)
    {
      v23 = v242;
      v24 = 0;
    }

    else
    {
      v23 = sub_181A08010(a1, v21);
      v24 = 0;
      v21 = 0;
    }

    v22 = 0;
  }

  else
  {
    if (v246[1] != 1)
    {
      goto LABEL_266;
    }

LABEL_261:
    v238 = v21[3];
    if (!__rev16(*(v238 + 2)))
    {
      goto LABEL_268;
    }

    v239 = 0;
    while (1)
    {
      v240 = sub_181A04250((v238 + v239 * *(a1 + 39) + 4));
      v241 = sub_181A0C520(a1, v240, v21, v4);
      if (v241)
      {
        break;
      }

      ++v239;
      v238 = v21[3];
      if (v239 >= bswap32(*(v238 + 2)) >> 16)
      {
        goto LABEL_268;
      }
    }

LABEL_267:
    v23 = v241;
    v24 = 0;
    v22 = v227;
  }

LABEL_55:
  sub_181A08010(a1, v22);
  sub_181A08010(a1, v21);
  if ((v24 & 1) == 0)
  {
    v52 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v52 = &xmmword_1ED452F28;
LABEL_61:
      (*v52)(v20);
    }
  }

  return v23;
}

uint64_t sub_181A0B5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = a2;
  while (1)
  {
    v9 = *(v8 + 1);
    if (v9 == 1 || *v8)
    {
      break;
    }

    v10 = *(a1 + 160);
    if (!sub_1818DF6EC(v10, 0))
    {
      v11 = v10[16];
      if ((*(v11 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v11, v9);
      }

      else
      {
        *v11 = v9;
        *(v11 + 20) = 4;
      }

      v12 = *(*v10 + 24);
      if (v12)
      {
        xmmword_1ED452F28(v12);
      }
    }

    if (sqlite3_step(*(a1 + 160)) != 100)
    {
      goto LABEL_16;
    }

    v13 = sqlite3_column_int64(*(a1 + 160), 0);
    if (a2)
    {
      v14 = a2;
      while (v14[1] != v13)
      {
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      v15 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v15 = sub_181A086B4(a1, v13, 0, v8);
LABEL_17:
    LODWORD(result) = sqlite3_reset(*(a1 + 160));
    if (result)
    {
      result = result;
    }

    else
    {
      result = v15;
    }

    if (result)
    {
      return result;
    }

    v8 = *v8;
    if (!v8)
    {
      return 267;
    }
  }

  v17 = *(a2 + 24);
  v18 = (v17 + *(a1 + 39) * a3 + 4);
  memmove(v18, &v18[*(a1 + 39)], *(a1 + 39) * (~a3 + (bswap32(*(v17 + 2)) >> 16)));
  *(*(a2 + 24) + 2) = bswap32((*(*(a2 + 24) + 3) | (*(*(a2 + 24) + 2) << 8)) - 1) >> 16;
  *(a2 + 20) = 1;
  if (!*a2)
  {
    return 0;
  }

  v19 = 1431655766 * ((*(a1 + 32) - 4) / *(a1 + 39));
  if ((HIDWORD(v19) + (v19 >> 63)) <= (bswap32(*(*(a2 + 24) + 2)) >> 16))
  {

    return sub_181A0BA34(a1, a2);
  }

  else
  {

    return sub_181A0B7DC(a1, a2, v4);
  }
}

uint64_t sub_181A0B7DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = v6[3];
    v8 = __rev16(*(v7 + 2));
    if (!v8)
    {
LABEL_6:
      sub_181A08010(a1, 0);
      return 267;
    }

    v9 = 0;
    v10 = (v7 + 5);
    while (((*(v10 - 1) << 56) | (*v10 << 48) | (v10[1] << 40) | (v10[2] << 32) | (v10[3] << 24) | (v10[4] << 16) | (v10[5] << 8)) + v10[6] != *(a2 + 8))
    {
      v10 += *(a1 + 39);
      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    LODWORD(v9) = -1;
  }

  *a2 = 0;
  v12 = sub_181A0B5A4(a1, v6, v9, (a3 + 1));
  LODWORD(result) = sub_181A08010(a1, v6);
  if (v12)
  {
    result = v12;
  }

  else
  {
    result = result;
  }

  if (!result)
  {
    v13 = *(a1 + 128);
    v14 = *(a2 + 8);
    if (!sub_1818DF6EC(v13, 0))
    {
      v15 = v13[16];
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v15, v14);
      }

      else
      {
        *v15 = v14;
        *(v15 + 20) = 4;
      }

      v16 = *(*v13 + 24);
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }
    }

    sqlite3_step(*(a1 + 128));
    result = sqlite3_reset(*(a1 + 128));
    if (!result)
    {
      v17 = *(a1 + 176);
      v18 = *(a2 + 8);
      if (!sub_1818DF6EC(v17, 0))
      {
        v19 = v17[16];
        if ((*(v19 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v19, v18);
        }

        else
        {
          *v19 = v18;
          *(v19 + 20) = 4;
        }

        v20 = *(*v17 + 24);
        if (v20)
        {
          xmmword_1ED452F28(v20);
        }
      }

      sqlite3_step(*(a1 + 176));
      result = sqlite3_reset(*(a1 + 176));
      if (!result)
      {
        v21 = *(a2 + 8);
        if (v21)
        {
          v22 = (a1 + 8 * (v21 % 0x61) + 192);
          do
          {
            v23 = v22;
            v24 = *v22;
            v22 = (*v22 + 32);
          }

          while (v24 != a2);
          *v23 = *(a2 + 32);
        }

        result = 0;
        *(a2 + 8) = a3;
        *(a2 + 32) = *(a1 + 104);
        ++*(a2 + 16);
        *(a1 + 104) = a2;
      }
    }
  }

  return result;
}

uint64_t sub_181A0BA34(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2[3];
  v6 = v5[2];
  v7 = v5[3];
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v8 = a1[39];
  v54 = ((v5[4] << 56) | (v5[5] << 48) | (v5[6] << 40) | (v5[7] << 32) | (v5[8] << 24) | (v5[9] << 16) | (v5[10] << 8)) + v5[11];
  v9 = (v5 + 12);
  v10 = a1[37];
  do
  {
    v11 = &v54 + 4 * v4;
    *(v11 + 2) = bswap32(*v9);
    *(v11 + 3) = bswap32(v9[1]);
    v9 += 2;
    v4 += 2;
  }

  while (v4 < v10);
  v12 = v7 | (v6 << 8);
  if (v12 >= 2)
  {
    v13 = a1[38];
    v14 = 2;
    if (v10 > 2)
    {
      v14 = v10;
    }

    v15 = ((v14 - 1) >> 1) + 1;
    v16 = v15 & 0x7FFFFFFFFFFFFFFCLL;
    for (i = 1; i != v12; ++i)
    {
      v18 = 0;
      v53 = 0;
      memset(v52, 0, sizeof(v52));
      v19 = &v5[i * v8];
      v51 = ((v19[4] << 56) | (v19[5] << 48) | (v19[6] << 40) | (v19[7] << 32) | (v19[8] << 24) | (v19[9] << 16) | (v19[10] << 8)) + v19[11];
      v20 = (v19 + 12);
      do
      {
        v21 = &v52[v18 - 2];
        v21[2] = bswap32(*v20);
        v21[3] = bswap32(v20[1]);
        v20 += 2;
        v18 += 2;
      }

      while (v18 < v10);
      if (v13)
      {
        v22 = v15 & 0x7FFFFFFFFFFFFFFCLL;
        v23 = v52;
        v24 = v55;
        if (v10 < 7)
        {
          v25 = 0;
LABEL_16:
          v29 = &v52[v25 + 1];
          v30 = v55 + v25 + 1;
          do
          {
            v31 = *(v30 - 1);
            if (v31 >= *(v29 - 1))
            {
              v31 = *(v29 - 1);
            }

            v32 = *v30;
            if (*v30 <= *v29)
            {
              v32 = *v29;
            }

            *(v30 - 1) = v31;
            *v30 = v32;
            v25 += 2;
            v29 += 2;
            v30 += 2;
          }

          while (v25 < v10);
          continue;
        }

        do
        {
          v27 = *v23;
          v26 = v23[1];
          v23 += 2;
          v28 = vtrn2q_s32(vrev64q_s32(vminq_s32(v24[1], v26)), vmaxq_s32(v24[1], v26));
          *v24 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v24, v27)), vmaxq_s32(*v24, v27));
          v24[1] = v28;
          v24 += 2;
          v22 -= 4;
        }

        while (v22);
        v25 = 2 * (v15 & 0x7FFFFFFFFFFFFFFCLL);
        if (v15 != v16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v10 >= 7)
        {
          v34 = v15 & 0x7FFFFFFFFFFFFFFCLL;
          v35 = v52;
          v36 = v55;
          do
          {
            v57 = vld2q_f32(v36);
            v58 = vld2q_f32(v35);
            v35 += 8;
            v59.val[0] = vbslq_s8(vcgtq_f32(v58.val[0], v57.val[0]), v57.val[0], v58.val[0]);
            v59.val[1] = vbslq_s8(vcgtq_f32(v57.val[1], v58.val[1]), v57.val[1], v58.val[1]);
            vst2q_f32(v36, v59);
            v36 += 8;
            v34 -= 4;
          }

          while (v34);
          v33 = 2 * (v15 & 0x7FFFFFFFFFFFFFFCLL);
          if (v15 == v16)
          {
            continue;
          }
        }

        else
        {
          v33 = 0;
        }

        v37 = &v52[v33];
        v38 = (v55 + 4 * v33);
        do
        {
          v39 = *v37++;
          v40.i32[0] = *v38;
          v40.i32[1] = v39.i32[1];
          v41.i32[0] = v39.i32[0];
          v41.i32[1] = HIDWORD(*v38);
          *v38 = vbsl_s8(vcgt_f32(v41, v40), *v38, v39);
          ++v38;
          v33 += 2;
        }

        while (v33 < v10);
      }
    }
  }

  v42 = *(v3 + 24);
  v43 = __rev16(*(v42 + 2));
  if (!v43)
  {
    return 267;
  }

  v44 = 0;
  v45 = a2[1];
  v46 = (v42 + 5);
  while (((*(v46 - 1) << 56) | (*v46 << 48) | (v46[1] << 40) | (v46[2] << 32) | (v46[3] << 24) | (v46[4] << 16) | (v46[5] << 8)) + v46[6] != v45)
  {
    v46 += v8;
    v44 += v8 << 32;
    if (!--v43)
    {
      return 267;
    }
  }

  v48 = v42 + (v44 >> 32);
  *(v48 + 4) = bswap64(v45);
  if (a1[37])
  {
    v49 = 0;
    v50 = (v48 + 12);
    do
    {
      *v50++ = bswap32(*(v55 + v49++));
    }

    while (v49 < a1[37]);
  }

  *(v3 + 20) = 1;
  return sub_181A0BA34(a1, v3);
}

uint64_t sub_181A0BE00(uint64_t result, uint64_t a2, unint64_t *a3, int a4)
{
  v4 = *(a2 + 24) + *(result + 39) * a4;
  *(v4 + 4) = bswap64(*a3);
  if (*(result + 37))
  {
    v5 = 0;
    v6 = (v4 + 12);
    do
    {
      *v6++ = bswap32(*(a3 + v5 + 2));
      ++v5;
    }

    while (v5 < *(result + 37));
  }

  *(a2 + 20) = 1;
  return result;
}

double sub_181A0BE54(uint64_t a1, float *a2)
{
  v2 = *(a1 + 36);
  v3 = 1.0;
  if (*(a1 + 38))
  {
    if (*(a1 + 36) > 3u)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return v3 * (*(a2 + 3) - *(a2 + 2));
        }

        v3 = (*(a2 + 11) - *(a2 + 10));
      }

      v3 = v3 * (*(a2 + 9) - *(a2 + 8));
    }

    else
    {
      if (v2 == 2)
      {
LABEL_15:
        v3 = v3 * (*(a2 + 5) - *(a2 + 4));
        return v3 * (*(a2 + 3) - *(a2 + 2));
      }

      if (v2 != 3)
      {
        return v3 * (*(a2 + 3) - *(a2 + 2));
      }
    }

    v3 = v3 * (*(a2 + 7) - *(a2 + 6));
    goto LABEL_15;
  }

  if (*(a1 + 36) <= 3u)
  {
    if (v2 == 2)
    {
LABEL_22:
      v3 = v3 * (a2[5] - a2[4]);
      return v3 * (a2[3] - a2[2]);
    }

    if (v2 != 3)
    {
      return v3 * (a2[3] - a2[2]);
    }

LABEL_21:
    v3 = v3 * (a2[7] - a2[6]);
    goto LABEL_22;
  }

  if (v2 == 4)
  {
LABEL_20:
    v3 = v3 * (a2[9] - a2[8]);
    goto LABEL_21;
  }

  if (v2 == 5)
  {
    v3 = (a2[11] - a2[10]);
    goto LABEL_20;
  }

  return v3 * (a2[3] - a2[2]);
}

uint64_t sub_181A0BF58(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = (a3 + 8);
    v6 = (a3 + 12);
    while (1)
    {
      memset(v52, 0, sizeof(v52));
      if (v4 == 100)
      {
        return 267;
      }

      v7 = a2;
      a2 = v3;
      if (*v7)
      {
        v8 = *(*v7 + 24);
        v9 = __rev16(*(v8 + 2));
        if (!v9)
        {
          return 267;
        }

        v10 = 0;
        v11 = v7[1];
        v12 = a1[39];
        v13 = v9 << 32;
        v14 = (v8 + 5);
        while (((*(v14 - 1) << 56) | (*v14 << 48) | (v14[1] << 40) | (v14[2] << 32) | (v14[3] << 24) | (v14[4] << 16) | (v14[5] << 8)) + v14[6] != v11)
        {
          v14 += v12;
          v10 += 0x100000000;
          if (v13 == v10)
          {
            return 267;
          }
        }
      }

      else
      {
        v12 = a1[39];
        v10 = 0xFFFFFFFF00000000;
      }

      v15 = 0;
      ++v4;
      v16 = (a2[3] + ((v10 * v12) >> 32));
      *&v52[0] = ((v16[4] << 56) | (v16[5] << 48) | (v16[6] << 40) | (v16[7] << 32) | (v16[8] << 24) | (v16[9] << 16) | (v16[10] << 8)) + v16[11];
      v17 = v16 + 12;
      v18 = a1[37];
      v19 = (v16 + 12);
      do
      {
        v20 = v52 + 4 * v15;
        *(v20 + 2) = bswap32(*v19);
        *(v20 + 3) = bswap32(v19[1]);
        v19 += 2;
        v15 += 2;
      }

      while (v15 < v18);
      if (a1[38] == 1)
      {
        if (v18)
        {
          v21 = v52 + 3;
          v22 = v6;
          v23 = 2;
          while (*(v22 - 1) >= *(v21 - 1) && *v22 <= *v21)
          {
            v22 += 2;
            v21 += 2;
            v24 = v23 >= v18;
            v23 += 2;
            if (v24)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_29;
        }

LABEL_27:
        v3 = *a2;
        if (!*a2)
        {
          return 0;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_27;
        }

        v25 = v52 + 3;
        v26 = v6;
        v27 = 2;
        while (*(v26 - 1) >= *(v25 - 1) && *v26 <= *v25)
        {
          v26 += 2;
          v25 += 2;
          v24 = v27 >= v18;
          v27 += 2;
          if (v24)
          {
            goto LABEL_27;
          }
        }

LABEL_29:
        if (v18 <= 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = v18;
        }

        v29 = ((v28 - 1) >> 1) + 1;
        if (a1[38])
        {
          if (v18 <= 6)
          {
            v30 = 0;
LABEL_40:
            v38 = &v6[v30];
            v39 = v52 + v30 + 3;
            do
            {
              v40 = *(v39 - 1);
              if (v40 >= *(v38 - 1))
              {
                v40 = *(v38 - 1);
              }

              v41 = *v39;
              if (*v39 <= *v38)
              {
                v41 = *v38;
              }

              *(v39 - 1) = v40;
              *v39 = v41;
              v30 += 2;
              v38 += 2;
              v39 += 2;
            }

            while (v30 < v18);
            goto LABEL_52;
          }

          v30 = 2 * (v29 & 0x7FFFFFFFFFFFFFFCLL);
          v32 = v29 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = v5;
          v34 = (v52 + 8);
          do
          {
            v36 = *v33;
            v35 = v33[1];
            v33 += 2;
            v37 = vtrn2q_s32(vrev64q_s32(vminq_s32(v34[1], v35)), vmaxq_s32(v34[1], v35));
            *v34 = vtrn2q_s32(vrev64q_s32(vminq_s32(*v34, v36)), vmaxq_s32(*v34, v36));
            v34[1] = v37;
            v34 += 2;
            v32 -= 4;
          }

          while (v32);
          if (v29 != (v29 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v18 >= 7)
          {
            v31 = 2 * (v29 & 0x7FFFFFFFFFFFFFFCLL);
            v42 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            v43 = v5;
            v44 = v52 + 2;
            do
            {
              v53 = vld2q_f32(v44);
              v54 = vld2q_f32(v43);
              v43 += 8;
              v55.val[0] = vbslq_s8(vcgtq_f32(v54.val[0], v53.val[0]), v53.val[0], v54.val[0]);
              v55.val[1] = vbslq_s8(vcgtq_f32(v53.val[1], v54.val[1]), v53.val[1], v54.val[1]);
              vst2q_f32(v44, v55);
              v44 += 8;
              v42 -= 4;
            }

            while (v42);
            if (v29 == (v29 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v31 = 0;
          }

          v45 = (v5 + 4 * v31);
          v46 = (v52 + 4 * v31 + 8);
          do
          {
            v47 = *v45++;
            v48.i32[0] = *v46;
            v48.i32[1] = v47.i32[1];
            v49.i32[0] = v47.i32[0];
            v49.i32[1] = HIDWORD(*v46);
            *v46 = vbsl_s8(vcgt_f32(v49, v48), *v46, v47);
            ++v46;
            v31 += 2;
          }

          while (v31 < v18);
        }

LABEL_52:
        *(v16 + 4) = bswap64(*&v52[0]);
        if (a1[37])
        {
          v50 = 0;
          do
          {
            *v17++ = bswap32(*(v52 + v50 + 2));
            ++v50;
          }

          while (v50 < a1[37]);
        }

        *(a2 + 5) = 1;
        v3 = *a2;
        if (!*a2)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181A0C320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 144);
  if (!sub_1818DF6EC(v6, 0))
  {
    v7 = v6[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, a2);
    }

    else
    {
      *v7 = a2;
      *(v7 + 20) = 4;
    }

    v8 = *(*v6 + 24);
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  v9 = *(a1 + 144);
  if (!sub_1818DF6EC(v9, 1u))
  {
    v10 = v9[16];
    if ((*(v10 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v10 + 64, a3);
    }

    else
    {
      *(v10 + 64) = a3;
      *(v10 + 84) = 4;
    }

    v11 = *(*v9 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  sqlite3_step(*(a1 + 144));
  v12 = *(a1 + 144);

  return sqlite3_reset(v12);
}

uint64_t sub_181A0C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 168);
  if (!sub_1818DF6EC(v6, 0))
  {
    v7 = v6[16];
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, a2);
    }

    else
    {
      *v7 = a2;
      *(v7 + 20) = 4;
    }

    v8 = *(*v6 + 24);
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  v9 = *(a1 + 168);
  if (!sub_1818DF6EC(v9, 1u))
  {
    v10 = v9[16];
    if ((*(v10 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v10 + 64, a3);
    }

    else
    {
      *(v10 + 64) = a3;
      *(v10 + 84) = 4;
    }

    v11 = *(*v9 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  sqlite3_step(*(a1 + 168));
  v12 = *(a1 + 168);

  return sqlite3_reset(v12);
}

uint64_t sub_181A0C520(uint64_t a1, uint64_t a2, uint64_t **a3, int a4)
{
  if (a4)
  {
    v4 = sub_181A0C420;
  }

  else
  {
    v4 = sub_181A0C320;
  }

  if (a4 >= 1)
  {
    for (i = *(a1 + 8 * (a2 % 0x61) + 192); i; i = *(i + 32))
    {
      if (*(i + 8) == a2)
      {
        break;
      }
    }

    if (a3)
    {
      v6 = a3;
      do
      {
        if (v6 == i)
        {
          return 267;
        }

        v6 = *v6;
      }

      while (v6);
      if (!i)
      {
        goto LABEL_18;
      }

      v12 = v4;
      v7 = a2;
      v8 = a1;
      v9 = a3;
      sub_181A08010(a1, *i);
      a3 = v9;
      ++*(v9 + 4);
      goto LABEL_17;
    }

    if (i)
    {
      v12 = v4;
      v7 = a2;
      v8 = a1;
      sub_181A08010(a1, *i);
      a3 = 0;
LABEL_17:
      *i = a3;
      a2 = v7;
      a1 = v8;
      v4 = v12;
    }
  }

LABEL_18:
  v10 = a3[1];

  return v4(a1, a2, v10);
}

unsigned __int8 *sub_181A0C668(unsigned __int8 *result, char *a2, unsigned int a3, int a4, uint64_t a5, void *a6)
{
  if (a3 >= 2)
  {
    v10 = a3 >> 1;
    v11 = a3 - (a3 >> 1);
    v12 = 4 * (a3 >> 1);
    v13 = &a2[v12];
    v14 = result;
    sub_181A0C668(result, a2, a3 >> 1, a4, a5, a6);
    sub_181A0C668(v14, v13, v11, a4, a5, a6);
    result = memcpy(a6, a2, v12);
    v15 = 0;
    v16 = 0;
    v17 = v14[38];
    v18 = 8 * a4;
    while (1)
    {
      v19 = *(a6 + v15);
      v20 = (a5 + 48 * v19 + v18);
      v21 = *&v13[4 * v16];
      v22 = (a5 + 48 * v21 + v18);
      if (v17)
      {
        v23 = v20[1];
        v24 = v22[1];
        v25.i64[0] = v23.i32[0];
        v25.i64[1] = v23.i32[1];
        v26 = vcvtq_f64_s64(v25);
        v25.i64[0] = v24.i32[0];
        v25.i64[1] = v24.i32[1];
        v27 = vcvtq_f64_s64(v25);
        if (v15 == v10)
        {
          goto LABEL_13;
        }

LABEL_7:
        if (v16 != v11 && v26.f64[0] >= v27.f64[0] && (v26.f64[0] != v27.f64[0] || v26.f64[1] >= v27.f64[1]))
        {
          goto LABEL_13;
        }

        *&a2[4 * v15 + 4 * v16] = v19;
        if (++v15 >= v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = vcvtq_f64_f32(v20[1]);
        v27 = vcvtq_f64_f32(v22[1]);
        if (v15 != v10)
        {
          goto LABEL_7;
        }

LABEL_13:
        *&a2[4 * v15 + 4 * v16++] = v21;
        if (v15 >= v10)
        {
LABEL_16:
          if (v16 >= v11)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_181A0C7CC(sqlite3 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char **a6)
{
  if (a3 < 4)
  {
    v12 = 0;
  }

  else
  {
    v10 = *(a4 + 24);
    v16 = v10;
    v17 = 0;
    if (v10)
    {
      v11 = strlen(v10) & 0x3FFFFFFF;
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v17) = v11;
    v13 = sub_18195D514(a1, &v16);
    if (v13 < 0)
    {
      *a6 = sqlite3_mprintf("no such database: %s", *(a4 + 24));
      return 1;
    }

    v12 = v13;
  }

  sqlite3_vtab_config(a1, 3);
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x( name       TEXT, path       TEXT, pageno     INTEGER, pagetype   TEXT, ncell      INTEGER, payload    INTEGER, unused     INTEGER, mx_payload INTEGER, pgoffset   INTEGER, pgsize     INTEGER, schema     TEXT HIDDEN, aggregate  BOOLEAN HIDDEN)");
  if (result)
  {
    v15 = 0;
  }

  else
  {
    if (sqlite3_initialize())
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_181902484(40, 0x1070040280257AFLL);
      if (v15)
      {
        result = 0;
        *v15 = 0u;
        *(v15 + 16) = 0u;
        *(v15 + 24) = a1;
        *(v15 + 32) = 0;
        *(v15 + 32) = v12;
        goto LABEL_16;
      }
    }

    result = 7;
  }

LABEL_16:
  *a5 = v15;
  return result;
}

uint64_t sub_181A0C8E8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    goto LABEL_22;
  }

  v3 = 0;
  v4 = (*(a2 + 1) + 5);
  v5 = -1;
  v6 = -1;
  v7 = -1;
  do
  {
    if (*(v4 - 1) == 2)
    {
      if (!*v4)
      {
        return 19;
      }

      v8 = *(v4 - 5);
      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = v3;
      }

      if (v8 == 10)
      {
        v10 = v3;
      }

      else
      {
        v10 = v7;
      }

      if (v8 == 10)
      {
        v9 = v6;
      }

      if (v8 == 11)
      {
        v5 = v3;
      }

      else
      {
        v7 = v10;
        v6 = v9;
      }
    }

    ++v3;
    v4 += 12;
  }

  while (v2 != v3);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(a2 + 4) + 8 * v7;
    v12 = 1;
    *v11 = 1;
    *(v11 + 4) = 1;
    a2[10] |= 1u;
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v12 = 0;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_19:
    *(*(a2 + 4) + 8 * v6) = ++v12;
    a2[10] |= 2u;
  }

LABEL_20:
  if ((v5 & 0x80000000) == 0)
  {
    *(*(a2 + 4) + 8 * v5) = v12 + 1;
    a2[10] |= 4u;
  }

LABEL_22:
  *(a2 + 8) = 0x3FF0000000000000;
  v13 = a2[4];
  if (v13 == 2)
  {
    v15 = *(a2 + 3);
    if (*v15 || *(v15 + 4) || *(v15 + 8) != 1 || *(v15 + 12))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_31;
    }

    v14 = *(a2 + 3);
    if (*v14 || *(v14 + 4))
    {
      goto LABEL_31;
    }
  }

  a2[15] = 1;
  a2[10] |= 8u;
LABEL_31:
  result = 0;
  a2[20] |= 2u;
  return result;
}

uint64_t sub_181A0CA5C(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A0CB14(uint64_t a1, void *a2)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v5 = sub_181902484(2152, 0x1030040E8075C3CLL);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  bzero(v5, 0x868uLL);
  result = 0;
  *v6 = a1;
  v6[5] = *(a1 + 32);
  *a2 = v6;
  return result;
}

uint64_t sub_181A0CB8C(uint64_t a1)
{
  for (i = 0; i != 2048; i += 64)
  {
    v3 = a1 + i;
    v4 = *(a1 + i + 32);
    sub_181A0E424(a1 + i + 24);
    v5 = *(a1 + i + 48);
    if (v5)
    {
      v6 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_11;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v5);
    }

LABEL_11:
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 32) = v4;
    if (v4)
    {
      v7 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_2;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
      --qword_1ED456A90;
      off_1ED452EB0(v4);
      v4 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v7 = &xmmword_1ED452F28;
LABEL_2:
        (*v7)(v4);
      }
    }

    *(v3 + 32) = 0;
  }

  sqlite3_reset(*(a1 + 8));
  *(a1 + 2072) = 0;
  v8 = *(a1 + 2088);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_23;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v9 = &xmmword_1ED452F28;
LABEL_23:
      (*v9)(v8);
    }
  }

  *(a1 + 2088) = 0;
  *(a1 + 16) = 0;
  sqlite3_finalize(*(a1 + 8));
  v10 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(a1);
    a1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v10 = &xmmword_1ED452F28;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_29:
    (*v10)(a1);
  }

  return 0;
}

uint64_t sub_181A0CDF0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = 0;
  v50 = *a1;
  do
  {
    v7 = &a1[v6];
    v8 = a1[v6 + 4];
    sub_181A0E424(&a1[v6 + 3]);
    v9 = a1[v6 + 6];
    if (v9)
    {
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_11;
        }

        v10 = &xmmword_1ED452F28;
      }

      (*v10)(v9);
    }

LABEL_11:
    *(v7 + 9) = 0u;
    *(v7 + 7) = 0u;
    *(v7 + 5) = 0u;
    *(v7 + 3) = 0u;
    v7[4] = v8;
    if (v8)
    {
      v11 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_2;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v11 = &xmmword_1ED452F28;
LABEL_2:
        (*v11)(v8);
      }
    }

    v7[4] = 0;
    v6 += 8;
  }

  while (v6 != 256);
  sqlite3_reset(a1[1]);
  *(a1 + 518) = 0;
  v12 = a1[261];
  if (v12)
  {
    v13 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_23;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v13 = &xmmword_1ED452F28;
LABEL_23:
      (*v13)(v12);
    }
  }

  a1[261] = 0;
  *(a1 + 16) = 0;
  sqlite3_finalize(a1[1]);
  a1[1] = 0;
  if ((a2 & 1) == 0)
  {
    v16 = 0;
    *(a1 + 5) = *(v50 + 32);
    if ((a2 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

  v21 = *a5;
  if (!*a5)
  {
    goto LABEL_67;
  }

  v22 = *(v21 + 20);
  if ((~v22 & 0x202) != 0 || *(v21 + 22) != 1)
  {
    if (v22)
    {
      goto LABEL_67;
    }

    v23 = sub_18193CB70(v21, 1, v14, v15);
    if (!v23)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v23 = *(v21 + 8);
    if (!v23)
    {
      goto LABEL_67;
    }
  }

  v24 = *(v50 + 24);
  v25 = *(v24 + 40);
  v26 = __OFSUB__(v25, 1);
  v27 = (v25 - 1);
  if (v27 < 0 != v26)
  {
LABEL_67:
    result = 0;
    *(a1 + 5) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  v28 = (*(v24 + 32) + 32 * v27);
  while (1)
  {
    v29 = *v28;
    if (*v28)
    {
      for (i = v23; ; ++i)
      {
        if (*v29 == *i)
        {
          if (!*v29)
          {
            *(a1 + 5) = v27;
            if ((v27 & 0x80000000) == 0)
            {
              v16 = 1;
              if ((a2 & 2) == 0)
              {
                goto LABEL_26;
              }

LABEL_63:
              v35 = v16 + 1;
              v36 = a5[v16];
              if (v36)
              {
                v37 = *(v36 + 20);
                if ((~v37 & 0x202) == 0 && *(v36 + 22) == 1)
                {
                  v17 = *(v36 + 8);
LABEL_71:
                  v16 = v35;
                  if ((a2 & 4) == 0)
                  {
                    goto LABEL_72;
                  }

LABEL_27:
                  v18 = a5[v16];
                  if (v18)
                  {
                    v19 = *(v18 + 20);
                    if ((v19 & 8) != 0)
                    {
                      v20 = *v18;
                    }

                    else if ((v19 & 0x24) != 0)
                    {
                      v20 = *v18;
                    }

                    else if ((v19 & 0x12) != 0)
                    {
                      v20 = sub_18193CF90(v18);
                    }

                    else
                    {
                      v20 = 0.0;
                    }
                  }

                  else
                  {
                    sub_1819012D0(92272);
                    v20 = 0.0;
                  }

                  v34 = v20 != 0.0;
                  goto LABEL_73;
                }

                if ((v37 & 1) == 0)
                {
                  v17 = sub_18193CB70(v36, 1, v14, v15);
                  goto LABEL_71;
                }
              }

              v17 = 0;
              goto LABEL_71;
            }

            goto LABEL_67;
          }
        }

        else if (byte_181A20298[*v29] != byte_181A20298[*i])
        {
          break;
        }

        ++v29;
      }
    }

    if (!v27)
    {
      break;
    }

LABEL_48:
    v28 -= 4;
    v31 = v27 <= 0;
    LODWORD(v27) = v27 - 1;
    if (v31)
    {
      goto LABEL_67;
    }
  }

  v32 = "main";
  v33 = v23;
  while (2)
  {
    if (*v32 != *v33)
    {
      if (byte_181A20298[*v32] != byte_181A20298[*v33])
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    if (*v32)
    {
LABEL_53:
      ++v32;
      ++v33;
      continue;
    }

    break;
  }

  v16 = 1;
  *(a1 + 5) = 0;
  if ((a2 & 2) != 0)
  {
    goto LABEL_63;
  }

LABEL_26:
  v17 = 0;
  if ((a2 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_72:
  v34 = 0;
LABEL_73:
  *(a1 + 17) = v34;
  v39 = *(v50 + 24);
  if (sqlite3_initialize() || (v41 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
  {
    v40 = &unk_1EA831560;
  }

  else
  {
    v40 = v41;
    if (v39)
    {
      v42 = *(v39 + 136);
    }

    else
    {
      v42 = 2147483645;
    }

    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 20) = v42;
    *(v41 + 24) = 0;
    *(v41 + 28) = 0;
  }

  sqlite3_str_appendf(v40, "SELECT * FROM (SELECT 'sqlite_schema' AS name,1 AS rootpage,'table' AS type UNION ALL SELECT name,rootpage,type FROM %w.sqlite_schema WHERE rootpage!=0)", *(*(*(v50 + 24) + 32) + 32 * *(a1 + 5)));
  if (v17)
  {
    sqlite3_str_appendf(v40, "WHERE name=%Q", v17);
  }

  if ((a2 & 8) != 0)
  {
    sqlite3_str_appendf(v40, " ORDER BY name");
  }

  v43 = sqlite3_str_finish(v40);
  if (!v43)
  {
    return 7;
  }

  v44 = v43;
  v45 = sub_1818954B4(*(v50 + 24), v43, 0xFFFFFFFFLL, 128, 0, a1 + 1, 0);
  v46 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v47 = v45;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v44);
    --qword_1ED456A90;
    off_1ED452EB0(v44);
    v44 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v46 = &xmmword_1ED452F28;
      goto LABEL_92;
    }
  }

  else
  {
    v47 = v45;
LABEL_92:
    (*v46)(v44);
  }

  result = v47;
  if (!v47)
  {
    *(a1 + 518) = -1;

    return sub_181A0D3E0(a1);
  }

  return result;
}

uint64_t sub_181A0D3E0(uint64_t a1)
{
  v132 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*a1 + 24) + 32) + 32 * *(a1 + 20) + 8);
  v126 = **(v2 + 8);
  v3 = *(a1 + 2088);
  v4 = &unk_1ED456000;
  if (v3)
  {
    v5 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
      --qword_1ED456A90;
      off_1ED452EB0(v3);
      v3 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_8;
      }

      v5 = &xmmword_1ED452F28;
    }

    (*v5)(v3);
  }

LABEL_8:
  v6 = a1 + 24;
  *(a1 + 2088) = 0;
  v128 = (a1 + 2120);
  v129 = (a1 + 2108);
  while (1)
  {
    v7 = *(a1 + 2072);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    if (!*(a1 + 17))
    {
      *v129 = 0;
      *(a1 + 2144) = 0;
      *(a1 + 2104) = 0;
      *v128 = 0;
      *(a1 + 2128) = 0;
    }

    v8 = v6 + (v7 << 6);
    v9 = *(v8 + 16);
    if (v9 >= *(v8 + 36))
    {
      v24 = *(v8 + 56);
      if (!v24)
      {
        goto LABEL_44;
      }

LABEL_43:
      v30 = *(v8 + 16);
      v31 = *(v8 + 36);
      if (v30 > v31)
      {
        goto LABEL_44;
      }

      v38 = *(a1 + 2072);
      *(a1 + 2072) = v38 + 1;
      if (v38 >= 31)
      {
        v113 = 32;
        while (1)
        {
          v114 = *(v6 + 8);
          sub_181A0E424(v6);
          v115 = *(v6 + 24);
          if (!v115)
          {
            goto LABEL_193;
          }

          v116 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_192;
          }

          v117 = v4[350];
          if (v117)
          {
            xmmword_1ED452F18(v117);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v115);
          --qword_1ED456A90;
          off_1ED452EB0(v115);
          v115 = v4[350];
          if (v115)
          {
            break;
          }

LABEL_193:
          *(v6 + 32) = 0u;
          *(v6 + 48) = 0u;
          *v6 = 0u;
          *(v6 + 16) = 0u;
          *(v6 + 8) = v114;
          if (v114)
          {
            v118 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              v119 = v4[350];
              if (v119)
              {
                xmmword_1ED452F18(v119);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v114);
              --qword_1ED456A90;
              off_1ED452EB0(v114);
              v114 = v4[350];
              if (!v114)
              {
                goto LABEL_185;
              }

              v118 = &xmmword_1ED452F28;
            }

            (*v118)(v114);
          }

LABEL_185:
          *(v6 + 8) = 0;
          v6 += 64;
          if (!--v113)
          {
            sqlite3_reset(*(a1 + 8));
            *(a1 + 2072) = 0;
            v120 = *(a1 + 2088);
            if (v120)
            {
              v121 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_205;
              }

              v122 = v4[350];
              if (v122)
              {
                xmmword_1ED452F18(v122);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v120);
              --qword_1ED456A90;
              off_1ED452EB0(v120);
              v120 = v4[350];
              if (v120)
              {
                v121 = &xmmword_1ED452F28;
LABEL_205:
                (*v121)(v120);
              }
            }

            *(a1 + 2088) = 0;
            *(a1 + 16) = 0;
            return sub_18190EDA8(237825);
          }
        }

        v116 = &xmmword_1ED452F28;
LABEL_192:
        (*v116)(v115);
        goto LABEL_193;
      }

      if (v30 != v31)
      {
        v24 = *(*(v8 + 48) + 32 * v30 + 4);
      }

      *(v8 + 64) = v24;
      result = sub_181A0E53C(v2, v24, v8 + 64);
      ++*(a1 + 2104);
      *(v8 + 80) = 0;
      if (!*(a1 + 17))
      {
        v39 = result;
        v40 = sqlite3_mprintf("%s%.3x/", *(v8 + 24), *(v8 + 16));
        *(v8 + 88) = v40;
        if (v40)
        {
          result = v39;
        }

        else
        {
          result = 7;
        }
      }

      ++*(v8 + 16);
      if (result)
      {
        return result;
      }

LABEL_62:
      v41 = v6 + (*(a1 + 2072) << 6);
      *(a1 + 2080) = sqlite3_column_text(*(a1 + 8), 0);
      v42 = *v41;
      *(a1 + 2076) = *v41;
      v43 = *(v41 + 8);
      v44 = 100;
      if (v42 != 1)
      {
        v44 = 0;
      }

      v45 = (v43 + v44);
      v46 = *v45;
      *(v41 + 32) = v46;
      if (v46 > 9)
      {
        if (v46 != 10 && v46 != 13)
        {
          goto LABEL_87;
        }

        v127 = 0;
        v48 = 8;
      }

      else
      {
        if (v46 != 2 && v46 != 5)
        {
          goto LABEL_87;
        }

        v48 = 12;
        v127 = 1;
      }

      if (v42 == 1)
      {
        v50 = v48 + 100;
      }

      else
      {
        v50 = v48;
      }

      v51 = __rev16(*(v45 + 3));
      *(v41 + 36) = v51;
      *(v41 + 60) = 0;
      v52 = *(v2 + 8);
      v53 = *(v52 + 52);
      v125 = v50;
      v54 = v45[7] - (v50 + 2 * v51) + (bswap32(*(v45 + 5)) >> 16);
      v55 = __rev16(*(v45 + 1));
      while (v55)
      {
        if (v55 < v53)
        {
          v54 += bswap32(*(v43 + v55 + 2)) >> 16;
          v56 = __rev16(*(v43 + v55));
          v57 = v56 >= v55 + 4 || v56 == 0;
          v55 = v56;
          if (v57)
          {
            continue;
          }
        }

        goto LABEL_87;
      }

      *(v41 + 40) = v54;
      if (v127)
      {
        *(v41 + 56) = bswap32(*(v45 + 2));
        if (!v51)
        {
          goto LABEL_88;
        }
      }

      else
      {
        *(v41 + 56) = 0;
        if (!v51)
        {
          goto LABEL_88;
        }
      }

      if (!*(v2 + 17))
      {
        v123 = *(v52 + 56);
        goto LABEL_134;
      }

      v84 = *(v2 + 20);
      *(v2 + 20) = v84 + 1;
      if (*(v2 + 18))
      {
        v123 = *(v52 + 56);
        *(v2 + 20) = v84;
        if (v84)
        {
          goto LABEL_134;
        }

LABEL_133:
        sub_181932ECC(v2);
        goto LABEL_134;
      }

      sub_181932DEC(v2);
      v123 = *(*(v2 + 8) + 56) - *(*(v2 + 8) + 52) + v53;
      if (*(v2 + 17))
      {
        v85 = *(v2 + 20) - 1;
        *(v2 + 20) = v85;
        if (!v85)
        {
          goto LABEL_133;
        }
      }

LABEL_134:
      v86 = *(v41 + 36);
      if (sqlite3_initialize())
      {
        *(v41 + 48) = 0;
        return 7;
      }

      v87 = sub_181902484(32 * v86 + 32, 0x10100402D4494F5);
      *(v41 + 48) = v87;
      if (!v87)
      {
        return 7;
      }

      bzero(v87, 32 * *(v41 + 36) + 32);
      if (*(v41 + 36) >= 1)
      {
        v88 = 0;
        v124 = v123 - 4;
        while (1)
        {
          v89 = __rev16(*(v43 + v125 + 2 * v88));
          if (v89 < v125 || v89 >= v53)
          {
            break;
          }

          v91 = *(v41 + 48) + 32 * v88;
          if (v127)
          {
            *(v91 + 4) = bswap32(*(v43 + v89));
            v89 += 4;
          }

          v92 = *(v41 + 32);
          if (v92 != 5)
          {
            v93 = (v43 + v89);
            v94 = *v93;
            if ((v94 & 0x80000000) != 0)
            {
              v96 = v93[1];
              if (v93[1] < 0)
              {
                v97 = v93[2];
                if (v97 < 0)
                {
                  v130 = 0;
                  v95 = sub_1818C7200(v93, &v130);
                  if (HIDWORD(v130))
                  {
                    v94 = -1;
                  }

                  else
                  {
                    v94 = v130;
                  }
                }

                else
                {
                  v94 = ((v94 & 0x7F) << 14) | ((v96 & 0x7F) << 7) | v97;
                  v95 = 3;
                }
              }

              else
              {
                v94 = v96 | ((v94 & 0x7F) << 7);
                v95 = 2;
              }
            }

            else
            {
              v95 = 1;
            }

            v98 = v95 + v89;
            if (v92 == 13)
            {
              v98 += sub_1818C7200((v43 + v98), &v130);
            }

            if (v94 > *(v41 + 60))
            {
              *(v41 + 60) = v94;
            }

            v99 = 32 * (v123 - 12);
            v100 = ((v123 - 12) << 6) / 255 - 23;
            if (v92 == 13)
            {
              v99 = 32 * v123 - 384;
              v100 = v123 - 35;
            }

            v101 = v99 / 255 - 23;
            v102 = (v94 - v101) % v124 + v101;
            if (v102 <= v100)
            {
              v103 = v102;
            }

            else
            {
              v103 = v101;
            }

            if ((v103 & 0x80000000) != 0)
            {
              break;
            }

            *v91 = v103;
            v104 = v94 - v103;
            if (v94 > v103)
            {
              if ((v94 & 0x80000000) != 0)
              {
                break;
              }

              v105 = v103 + v98;
              if (v105 + 4 > v123)
              {
                break;
              }

              v106 = (v123 - 5 + v104) / v124;
              *(v91 + 24) = v104 - (v106 - 1) * v124;
              *(v91 + 8) = v106;
              if (sqlite3_initialize())
              {
                *(v91 + 16) = 0;
                return 7;
              }

              v107 = sub_181902484(4 * v106, 0x100004052888210);
              *(v91 + 16) = v107;
              if (!v107)
              {
                return 7;
              }

              *v107 = bswap32(*(v43 + v105));
              if (v106 >= 2)
              {
                v108 = 0;
                do
                {
                  v130 = 0;
                  result = (*(**(v2 + 8) + 288))();
                  if (result)
                  {
                    return result;
                  }

                  v110 = v130;
                  *(*(v91 + 16) + 4 * v108 + 4) = bswap32(**(v130 + 8));
                  if ((*(v110 + 52) & 0x20) != 0)
                  {
                    v111 = *(v110 + 40);
                    --*(v111 + 152);
                    *(v110 + 32) = *(v111 + 168);
                    *(v111 + 168) = v110;
                    (*(**(v111 + 72) + 144))(*(v111 + 72), *(v111 + 200) * (*(v110 + 48) - 1));
                  }

                  else
                  {
                    sub_181932B68(v110);
                  }

                  v109 = v108 + 2;
                  ++v108;
                }

                while (v109 < v106);
              }
            }
          }

          if (++v88 >= *(v41 + 36))
          {
            goto LABEL_88;
          }
        }

LABEL_87:
        *(v41 + 32) = 0;
        sub_181A0E424(v41);
      }

LABEL_88:
      v58 = *(*(*(*a1 + 24) + 32) + 32 * *(*a1 + 32) + 8);
      v59 = *(v58 + 8);
      v60 = *(*v59 + 72);
      v61 = *(a1 + 2076);
      v130 = v61;
      if (!*v60)
      {
        v4 = &unk_1ED456000;
        v6 = a1 + 24;
        goto LABEL_92;
      }

      v6 = a1 + 24;
      if ((*(*v60 + 80))(v60, 230440, &v130))
      {
        v59 = *(v58 + 8);
        v61 = *(a1 + 2076);
        v4 = &unk_1ED456000;
LABEL_92:
        v62 = *(a1 + 2144) + v59[13];
        *(a1 + 2144) = v62;
        *(a1 + 2136) = v62 * (v61 - 1);
        goto LABEL_97;
      }

      v63 = v131;
      *(a1 + 2136) = v130;
      *(a1 + 2144) += v63;
      v4 = &unk_1ED456000;
LABEL_97:
      v64 = *(v41 + 32);
      if (v64 > 9)
      {
        if (v64 == 13 || v64 == 10)
        {
          v65 = "leaf";
          goto LABEL_105;
        }

LABEL_104:
        v65 = "corrupted";
        goto LABEL_105;
      }

      v65 = "internal";
      if (v64 != 2 && v64 != 5)
      {
        goto LABEL_104;
      }

LABEL_105:
      *(a1 + 2096) = v65;
      v66 = *(v41 + 36);
      v67 = *(v41 + 40);
      *(a1 + 2108) += v66;
      *(a1 + 2120) += v67;
      v68 = *(v41 + 60);
      if (v68 > *(a1 + 2112))
      {
        *(a1 + 2112) = v68;
      }

      if (*(a1 + 17))
      {
        result = 0;
        if (v66 >= 1)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v73 = sqlite3_mprintf("%s", *(v41 + 24));
        *(a1 + 2088) = v73;
        if (v73)
        {
          result = 0;
        }

        else
        {
          result = 7;
        }

        v66 = *(v41 + 36);
        if (v66 >= 1)
        {
LABEL_109:
          v69 = *(v41 + 48);
          v70 = v66;
          if (v66 >= 9)
          {
            v74 = v66 & 7;
            if ((v70 & 7) == 0)
            {
              v74 = 8;
            }

            v71 = v70 - v74;
            v75 = (v69 + 128);
            v76 = 0uLL;
            v77 = v71;
            v78 = 0uLL;
            do
            {
              v79.i32[0] = *(v75 - 32);
              v79.i32[1] = *(v75 - 24);
              v79.i32[2] = *(v75 - 16);
              v79.i32[3] = *(v75 - 8);
              v80.i32[0] = *v75;
              v80.i32[1] = v75[8];
              v80.i32[2] = v75[16];
              v80.i32[3] = v75[24];
              v76 = vaddq_s32(v79, v76);
              v78 = vaddq_s32(v80, v78);
              v75 += 64;
              v77 -= 8;
            }

            while (v77);
            LODWORD(v72) = vaddvq_s32(vaddq_s32(v78, v76));
          }

          else
          {
            v71 = 0;
            LODWORD(v72) = 0;
          }

          v81 = (v69 + 32 * v71);
          v82 = v70 - v71;
          do
          {
            v83 = *v81;
            v81 += 8;
            v72 = v83 + v72;
            --v82;
          }

          while (v82);
          goto LABEL_123;
        }
      }

      v72 = 0;
LABEL_123:
      *(a1 + 2128) += v72;
      if (!*(a1 + 17))
      {
        return result;
      }
    }

    else
    {
      do
      {
        v10 = *(v8 + 48) + 32 * v9;
        v11 = *(v10 + 28);
        v12 = *(v10 + 8);
        while (v11 < v12)
        {
          if (!*(v2 + 17))
          {
            v14 = *(*(v2 + 8) + 56);
            goto LABEL_24;
          }

          ++*(v2 + 20);
          if (*(v2 + 18))
          {
            v14 = *(*(v2 + 8) + 56);
          }

          else
          {
            sub_181932DEC(v2);
            v14 = *(*(v2 + 8) + 56);
            if (!*(v2 + 17))
            {
              goto LABEL_24;
            }
          }

          v15 = *(v2 + 20) - 1;
          *(v2 + 20) = v15;
          if (!v15)
          {
            sub_181932ECC(v2);
          }

LABEL_24:
          ++*(a1 + 2104);
          v16 = *(*(*(*a1 + 24) + 32) + 32 * *(*a1 + 32) + 8);
          v17 = *(v16 + 8);
          v18 = *(*v17 + 72);
          v19 = *(a1 + 2076);
          v130 = v19;
          if (*v18)
          {
            if (!(*(*v18 + 80))(v18, 230440, &v130))
            {
              v21 = v131;
              *(a1 + 2136) = v130;
              *(a1 + 2144) += v21;
              goto LABEL_29;
            }

            v17 = *(v16 + 8);
            v19 = *(a1 + 2076);
          }

          v20 = *(a1 + 2144) + v17[13];
          *(a1 + 2144) = v20;
          *(a1 + 2136) = v20 * (v19 - 1);
LABEL_29:
          v22 = *(v10 + 28);
          v12 = *(v10 + 8);
          v23 = *(a1 + 2128);
          if (v22 >= v12 - 1)
          {
            v13 = *(v10 + 24);
            *(a1 + 2128) = v23 + v13;
            *(a1 + 2120) += v14 - v13 - 4;
          }

          else
          {
            *(a1 + 2128) = v23 + v14 - 4;
          }

          v11 = v22 + 1;
          *(v10 + 28) = v22 + 1;
          if (!*(a1 + 17))
          {
            *(a1 + 2080) = sqlite3_column_text(*(a1 + 8), 0);
            *(a1 + 2076) = *(*(v10 + 16) + 4 * v22);
            *(a1 + 2096) = "overflow";
            v112 = sqlite3_mprintf("%s%.3x+%.6x", *(v8 + 24), *(v8 + 16), v22);
            *(a1 + 2088) = v112;
            if (v112)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }

        v24 = *(v8 + 56);
        if (v24)
        {
          goto LABEL_43;
        }

        v9 = *(v8 + 16) + 1;
        *(v8 + 16) = v9;
      }

      while (v9 < *(v8 + 36));
LABEL_44:
      v32 = v6;
      v33 = *(v8 + 8);
      sub_181A0E424(v8);
      v34 = *(v8 + 24);
      if (v34)
      {
        v35 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_50;
        }

        v36 = v4[350];
        if (v36)
        {
          xmmword_1ED452F18(v36);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
        --qword_1ED456A90;
        off_1ED452EB0(v34);
        v34 = v4[350];
        if (v34)
        {
          v35 = &xmmword_1ED452F28;
LABEL_50:
          (*v35)(v34);
        }
      }

      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 8) = v33;
      v37 = *(a1 + 2072);
      *(a1 + 2072) = v37 - 1;
      v6 = v32;
      if (*(a1 + 17) && v37 < 1)
      {
        return 0;
      }
    }
  }

  *v129 = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2104) = 0;
  *v128 = 0;
  *(a1 + 2128) = 0;
  if (sqlite3_step(*(a1 + 8)) != 100 || (v25 = sqlite3_column_int64(*(a1 + 8), 1), !*(v126 + 32)))
  {
    *(a1 + 16) = 1;
    return sqlite3_reset(*(a1 + 8));
  }

  v26 = v25;
  result = sub_181A0E53C(v2, v25, v6);
  *(a1 + 24) = v26;
  *(a1 + 40) = 0;
  if (!*(a1 + 17))
  {
    v28 = result;
    v29 = sqlite3_mprintf("/");
    *(a1 + 48) = v29;
    if (v29)
    {
      result = v28;
    }

    else
    {
      result = 7;
    }
  }

  *(a1 + 2072) = 0;
  *(a1 + 2104) = 1;
  if (!result)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_181A0E268(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2128);
      }

      else if (a3 == 6)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2120);
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2112);
      }

      goto LABEL_45;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2144);
        goto LABEL_45;
      }

      if (a3 == 10)
      {
        if (!a2)
        {
          return 0;
        }

        v4 = *(*(*(*a2 + 24) + 32) + 32 * *(a1 + 20));
LABEL_28:
        sub_18190B23C(a2, v4, -1, 1, 0);
        return 0;
      }

      goto LABEL_41;
    }

    if (!*(a1 + 17) && a2)
    {
      v3 = *(a1 + 2136);
LABEL_45:
      v6 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v6, v3);
      }

      else
      {
        *v6 = v3;
        *(v6 + 20) = 4;
      }

      return 0;
    }

    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (*(a1 + 17))
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2104);
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v3 = *(a1 + 2076);
      }

      goto LABEL_45;
    }

    if (a3 != 3)
    {
      if (!a2)
      {
        return 0;
      }

      v3 = *(a1 + 2108);
      goto LABEL_45;
    }

    if (a2 && !*(a1 + 17))
    {
      v4 = *(a1 + 2096);
      goto LABEL_28;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a2)
    {
      return 0;
    }

    v5 = *(a1 + 2080);
LABEL_24:
    sub_18190B23C(a2, v5, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }

  if (a3 != 1)
  {
LABEL_41:
    if (!a2)
    {
      return 0;
    }

    v3 = *(a1 + 17);
    goto LABEL_45;
  }

  if (a2 && !*(a1 + 17))
  {
    v5 = *(a1 + 2088);
    goto LABEL_24;
  }

  return 0;
}

void sub_181A0E424(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 36) < 1)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 16;
  do
  {
    v5 = *(*(a1 + 48) + v4);
    if (v5)
    {
      v6 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_4;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
      --qword_1ED456A90;
      off_1ED452EB0(v5);
      v5 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v6 = &xmmword_1ED452F28;
LABEL_4:
        (*v6)(v5);
      }
    }

    ++v3;
    v4 += 32;
  }

  while (v3 < *(a1 + 36));
  v2 = *(a1 + 48);
LABEL_13:
  sqlite3_free(v2);
LABEL_14:
  *(a1 + 36) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_181A0E53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4[13];
  if (*(a3 + 8))
  {
    goto LABEL_2;
  }

  v8 = sqlite3_initialize();
  if (v5 < -255 || v8 != 0)
  {
    *(a3 + 8) = 0;
    return 7;
  }

  v10 = sub_181902484((v5 + 256), 0x100004077774924);
  *(a3 + 8) = v10;
  if (!v10)
  {
    return 7;
  }

  v11 = (v10 + v5);
  v11[14] = 0u;
  v11[15] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  v4 = *(a1 + 8);
LABEL_2:
  result = (*(*v4 + 288))();
  if (!result)
  {
    memcpy(*(a3 + 8), MEMORY[8], v5);
    return 0;
  }

  return result;
}

uint64_t sub_181A0E688(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)");
  if (!result)
  {
    if (a1)
    {
      v8 = sub_181929E8C(a1, 0x20uLL, 0x107004075084CA3);
      if (v8)
      {
LABEL_4:
        *v8 = 0u;
        v8[1] = 0u;
        *a5 = v8;
        v9 = v8;
        sqlite3_vtab_config(a1, 2);
        result = 0;
        *(v9 + 3) = a1;
        return result;
      }
    }

    else
    {
      v8 = sub_181902484(32, 0x107004075084CA3);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    *a5 = 0;
    return 7;
  }

  return result;
}

uint64_t sub_181A0E720(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = -1;
  v2 = *a2;
  if (*a2 < 1)
  {
    v4 = 0;
    v11 = -1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (*(a2 + 8) + 5);
    do
    {
      v7 = *(v6 - 5);
      v8 = __OFSUB__(v7, 8);
      v9 = v7 - 8;
      if (v9 < 0 == v8)
      {
        v10 = 1 << v9;
        if (*v6)
        {
          if (*(v6 - 1) == 2)
          {
            *(v19 + v9) = v5;
            v3 |= v10;
          }
        }

        else
        {
          v4 |= v10;
        }
      }

      ++v5;
      v6 += 12;
    }

    while (v2 != v5);
    v11 = ~v3;
  }

  if (*(a2 + 16) >= 1 && (v12 = *(a2 + 24), (*v12 & 0x80000000) != 0) && !*(v12 + 4))
  {
    *(a2 + 60) = 1;
    if ((v4 & v11) != 0)
    {
      return 19;
    }
  }

  else if ((v4 & v11) != 0)
  {
    return 19;
  }

  v14 = LODWORD(v19[0]);
  if ((v19[0] & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    *(a2 + 64) = 0x3FF0000000000000;
    v15 = *(a2 + 32);
    v16 = v15 + 8 * v14;
    v17 = 1;
    *v16 = 1;
    *(v16 + 4) = 1;
    if ((v19[0] & 0x8000000000000000) == 0)
    {
      v18 = v15 + 8 * HIDWORD(v19[0]);
      *v18 = 2;
      *(v18 + 4) = 1;
      v17 = 3;
    }
  }

  result = 0;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_181A0E8A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v5 = sub_181902484(264, 0x10300403B68C836);
    if (v5)
    {
      goto LABEL_3;
    }

    return 7;
  }

  v5 = sub_181929E8C(v4, 0x108uLL, 0x10300403B68C836);
  if (!v5)
  {
    return 7;
  }

LABEL_3:
  v6 = 0;
  *(v5 + 256) = 0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 48) = *(a1 + 24);
  *(v5 + 64) = v5 + 90;
  *(v5 + 88) = 1;
  *(v5 + 72) = xmmword_181A201B0;
  *a2 = v5;
  return v6;
}

uint64_t sub_181A0E95C(uint64_t a1)
{
  sub_181A0F6E8(a1);
  sub_181929C84(*(a1 + 48), a1);
  return 0;
}

uint64_t sub_181A0E990(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v43 = 0;
  sub_181A0F6E8(a1);
  if (!a2)
  {
    return 0;
  }

  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 228) = 1;
  *(a1 + 216) = *(a1 + 48);
  if (!sub_1819A02D4(*a5, (a1 + 192)))
  {
    v13 = *a5;
    if (*a5)
    {
      v14 = *(v13 + 20);
      if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
      {
        if (v14)
        {
          v13 = 0;
        }

        else
        {
          v13 = sub_18193CB70(v13, 1, v8, v9);
        }
      }

      else
      {
        v13 = *(v13 + 8);
      }
    }

    *(a1 + 208) = v13;
    v25 = *a5;
    if (*a5)
    {
      v26 = *(v25 + 20);
      if ((v26 & 2) != 0 && *(v25 + 22) == 1)
      {
        v27 = *(v25 + 16);
        goto LABEL_43;
      }

      if ((v26 & 0x10) != 0)
      {
        v27 = *(v25 + 16);
        if ((*(v25 + 20) & 0x400) != 0)
        {
          v27 += *v25;
        }

LABEL_43:
        *(a1 + 224) = v27;
        v28 = *(a1 + 208);
        if (!v28)
        {
          result = 0;
          *(a1 + 12) = 0;
          *(a1 + 16) = 0;
          return result;
        }

        v29 = sub_1819A13A0((a1 + 192), 0);
        if (!*(a1 + 239))
        {
          v30 = v29 - 1;
          if (v29 >= 1)
          {
            v31 = v28 + v29 - 1;
            do
            {
              v33 = *++v31;
              v32 = v33;
              ++v30;
            }

            while (byte_181A24B89[v33]);
            if (v32)
            {
              v30 += sub_1819A22A8(v31);
              if (*(v28 + v30))
              {
                goto LABEL_52;
              }

              *(a1 + 241) = 1;
            }

            if (v30 > 0)
            {
              goto LABEL_3;
            }
          }
        }

LABEL_52:
        sub_1819A24BC((a1 + 192));
        if (*(a1 + 239))
        {
          return 7;
        }

        v34 = *(*a1 + 16);
        if (!v34)
        {
          goto LABEL_64;
        }

        v35 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
          --qword_1ED456A90;
          off_1ED452EB0(v34);
          v34 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_64;
          }

          v35 = &xmmword_1ED452F28;
        }

        (*v35)(v34);
LABEL_64:
        v36 = sqlite3_mprintf("malformed JSON");
        goto LABEL_79;
      }

      if ((v26 & 1) == 0)
      {
        v27 = sub_18193CB44(v25, 1, v8, v9);
        goto LABEL_43;
      }
    }

    else
    {
      sub_1819012D0(93690);
    }

    v27 = 0;
    goto LABEL_43;
  }

LABEL_3:
  if (a2 != 3)
  {
    *(a1 + 12) = 0;
    *(a1 + 24) = 0;
    *(a1 + 20) = 1;
    v15 = *(a1 + 80);
    if ((v15 + 1) >= *(a1 + 72))
    {
      sub_1819A470C(a1 + 56, "$", 1u);
      v16 = 0;
      goto LABEL_19;
    }

    v16 = 0;
    *(*(a1 + 64) + v15) = 36;
    v17 = *(a1 + 80) + 1;
    goto LABEL_15;
  }

  result = a5[1];
  if (!result)
  {
    return result;
  }

  v11 = *(result + 20);
  if ((~v11 & 0x202) != 0 || *(result + 22) != 1)
  {
    if (v11)
    {
      return 0;
    }

    v12 = sub_18193CB70(result, 1, v8, v9);
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    v12 = *(result + 8);
    if (!v12)
    {
      return 0;
    }
  }

  if (*v12 == 36)
  {
    *(a1 + 20) = strlen(v12) & 0x3FFFFFFF;
    if (*(v12 + 1))
    {
      v24 = sub_18199F840(a1 + 192, 0, (v12 + 1), 0);
      v16 = v24;
      if (v24 >= 0xFFFFFFFD)
      {
        if (v24 == -2)
        {
          result = 0;
          *(a1 + 12) = 0;
          *(a1 + 24) = 0;
          return result;
        }

        sqlite3_free(*(*a1 + 16));
        goto LABEL_78;
      }

      v39 = *(a1 + 252);
      if (v39)
      {
        *(a1 + 12) = v39;
        v40 = 12;
      }

      else
      {
        *(a1 + 12) = v24;
        v40 = 11;
      }

      *(a1 + 24) = v40;
    }

    else
    {
      v16 = 0;
      *(a1 + 12) = 0;
      *(a1 + 24) = 0;
    }

    v41 = *(a1 + 20);
    if (!v41)
    {
LABEL_19:
      *(a1 + 28) = 0;
      v18 = sub_1819A0760((a1 + 192), v16, &v43) + v16;
      *(a1 + 16) = v18 + v43;
      v19 = *(a1 + 192);
      if ((*(v19 + v16) & 0xFu) < 0xB || *(a1 + 25))
      {
        return 0;
      }

      *(a1 + 12) = v18;
      *(a1 + 24) = *(v19 + v16) & 0xF;
      v20 = *(a1 + 48);
      if (v20)
      {
        v21 = sub_181929E8C(v20, 0x18uLL, 0x1000040504FFAC1);
        if (v21)
        {
LABEL_23:
          result = 0;
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *(a1 + 40) = v21;
          *(a1 + 28) = 0x100000001;
          v23 = *(a1 + 12);
          v22 = *(a1 + 16);
          *(v21 + 4) = v16;
          *(v21 + 8) = v22;
          *v21 = v23;
          return result;
        }
      }

      else
      {
        v21 = sub_181902484(24, 0x1000040504FFAC1);
        if (v21)
        {
          goto LABEL_23;
        }
      }

      *(a1 + 40) = 0;
      return 7;
    }

    v42 = *(a1 + 80);
    if ((v42 + v41) >= *(a1 + 72))
    {
      sub_1819A470C(a1 + 56, v12, *(a1 + 20));
      goto LABEL_19;
    }

    memcpy((*(a1 + 64) + v42), v12, *(a1 + 20));
    v17 = *(a1 + 80) + v41;
LABEL_15:
    *(a1 + 80) = v17;
    goto LABEL_19;
  }

  v37 = *(*a1 + 16);
  if (v37)
  {
    v38 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v37);
      --qword_1ED456A90;
      off_1ED452EB0(v37);
      v37 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_78;
      }

      v38 = &xmmword_1ED452F28;
    }

    (*v38)(v37);
  }

LABEL_78:
  v36 = sqlite3_mprintf("bad JSON path: %Q", v12);
LABEL_79:
  *(*a1 + 16) = v36;
  sub_181A0F6E8(a1);
  if (*(*a1 + 16))
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_181A0EEF4(uint64_t a1)
{
  if (!*(a1 + 25))
  {
    v30 = 0;
    v6 = *(a1 + 24);
    if (v6 == 12)
    {
      v31 = 0;
      v7 = *(a1 + 12);
      v8 = sub_1819A0760((a1 + 192), v7, &v31);
      v9 = v8 + v7 + v31;
    }

    else
    {
      v9 = *(a1 + 12);
    }

    v19 = sub_1819A0760((a1 + 192), v9, &v30);
    result = 0;
    *(a1 + 12) = v19 + v9 + v30;
    if (v6 != 11)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v30 = 0;
  v2 = *(a1 + 24);
  if (v2 == 12)
  {
    v31 = 0;
    v3 = *(a1 + 12);
    v4 = sub_1819A0760((a1 + 192), v3, &v31);
    v5 = v4 + v3 + v31;
  }

  else
  {
    v3 = *(a1 + 12);
    v5 = v3;
  }

  v10 = *(*(a1 + 192) + v5) & 0xF;
  v11 = sub_1819A0760((a1 + 192), v5, &v30);
  v12 = v10 - 13;
  if (v12 < 0xFFFFFFFE)
  {
    result = 0;
    v14 = v11 + v5 + v30;
    *(a1 + 12) = v14;
    v15 = *(a1 + 28);
    if (!v15)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v16 = *(a1 + 28);
  v17 = *(a1 + 32);
  if (v16 >= v17)
  {
    v20 = 2 * v17 + 3;
    v18 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = 24 * v20;
    if (v18)
    {
      if (*(v21 + 512) > v18)
      {
        if (*(v21 + 496) <= v18)
        {
          if (v20 < 6)
          {
LABEL_26:
            *(a1 + 32) = v20;
            *(a1 + 40) = v18;
            goto LABEL_27;
          }
        }

        else if (*(v21 + 504) <= v18 && v22 <= *(v21 + 438))
        {
          goto LABEL_26;
        }
      }

      v18 = sub_181929F38(v21, v18, v22, 0x1000040504FFAC1);
      if (v18)
      {
LABEL_25:
        v16 = *(a1 + 28);
        v3 = *(a1 + 12);
        v2 = *(a1 + 24);
        goto LABEL_26;
      }
    }

    else
    {
      v18 = sub_181929E8C(v21, 24 * v20, 0x1000040504FFAC1);
      if (v18)
      {
        goto LABEL_25;
      }
    }

    return 7;
  }

  v18 = *(a1 + 40);
LABEL_27:
  result = 0;
  v23 = &v18[3 * v16];
  *v23 = v3;
  *(v23 + 1) = v5;
  v14 = v11 + v5;
  *(v23 + 2) = v30 + v14;
  v23[2] = -1;
  *(v23 + 3) = *(a1 + 80);
  if (v16 && v2)
  {
    sub_181A0F800(a1);
    if (*(a1 + 89))
    {
      result = 7;
    }

    else
    {
      result = 0;
    }

    v16 = *(a1 + 28);
  }

  *(a1 + 12) = v14;
  v15 = v16 + 1;
  *(a1 + 28) = v16 + 1;
  if (v16 == -1)
  {
    goto LABEL_40;
  }

LABEL_34:
  v24 = *(a1 + 40);
  v25 = v15 - 1;
  if (v14 >= *(v24 + 24 * (v15 - 1) + 8))
  {
    *(a1 + 28) = v25;
    *(a1 + 80) = *(v24 + 24 * v25 + 12);
    if (v15 != 1)
    {
      while (1)
      {
        v26 = v25 - 1;
        if (v14 < *(v24 + 24 * (v25 - 1) + 8))
        {
          break;
        }

        *(a1 + 28) = v26;
        *(a1 + 80) = *(v24 + 24 * v26 + 12);
        if (!--v25)
        {
          goto LABEL_40;
        }
      }

      v15 = v25;
      goto LABEL_42;
    }

LABEL_40:
    v27 = 0;
LABEL_43:
    *(a1 + 24) = v27;
    goto LABEL_44;
  }

  if (v12 >= 0xFFFFFFFE)
  {
LABEL_42:
    v27 = *(*(a1 + 192) + *(v24 + 24 * (v15 - 1) + 4)) & 0xF;
    goto LABEL_43;
  }

LABEL_44:
  if (*(a1 + 24) == 11)
  {
LABEL_45:
    v28 = *(a1 + 28);
    if (v28)
    {
      v29 = *(a1 + 40) + 24 * (v28 - 1);
      ++*(v29 + 16);
    }
  }

LABEL_47:
  ++*(a1 + 8);
  return result;
}

uint64_t sub_181A0F248(uint64_t a1, sqlite3_context *a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      switch(a3)
      {
        case 6:
          v22 = *(a1 + 80);
          v23 = v22;
          if (*(a1 + 28))
          {
            sub_181A0F800(a1);
            v23 = *(a1 + 80);
          }

          sqlite3_result_text64(a2, *(a1 + 64), v23, 0xFFFFFFFFFFFFFFFFLL, 1u);
          *(a1 + 80) = v22;
          return 0;
        case 7:
          v24 = *(a1 + 80);
          v25 = *(a1 + 64);
          if (!*(a1 + 8) && *(a1 + 25) && (v24 & 0xFFFFFFFE) != 0)
          {
            LODWORD(v24) = v24 - 1;
            while (1)
            {
              v27 = *(v25 + v24);
              if (v27 == 91 || v27 == 46)
              {
                *(v25 + v24) = 0;
                v28 = sub_18199F840(a1 + 192, 0, (v25 + 1), 0);
                *(v25 + v24) = v27;
                if (v28 < 0xFFFFFFFD && sub_1819A0760((a1 + 192), v28, &v40) + v28 == *(a1 + 12))
                {
                  break;
                }
              }

              v26 = v24 & 0xFFFFFFFE;
              LODWORD(v24) = v24 - 1;
              if (!v26)
              {
                LODWORD(v24) = 1;
                break;
              }
            }

            v25 = *(a1 + 64);
          }

          sqlite3_result_text64(a2, v25, v24, 0xFFFFFFFFFFFFFFFFLL, 1u);
          return 0;
        case 8:
          v5 = *(a1 + 208);
          if (v5)
          {
            if (a2)
            {
              v6 = a2;
              v7 = -1;
LABEL_9:
              v8 = 1;
LABEL_64:
              v32 = -1;
              goto LABEL_65;
            }
          }

          else
          {
            if (a2)
            {
              v7 = *(a1 + 200);
              if ((v7 & 0x80000000) == 0)
              {
                v5 = *(a1 + 192);
                v6 = a2;
                v8 = 0;
                goto LABEL_64;
              }
            }

            if (a2)
            {
              *(a2 + 9) = 18;
              sub_1818900D0(*a2, "string or blob too big", -1, 1, 0);
            }
          }

          return 0;
      }

      goto LABEL_43;
    }

    if (a3 == 4)
    {
      if (!a2)
      {
        return 0;
      }

      v16 = *(a1 + 12);
    }

    else
    {
      v15 = *(a1 + 28);
      if (!v15 || !*(a1 + 25) || !a2)
      {
        return 0;
      }

      v16 = *(*(a1 + 40) + 24 * (v15 - 1));
    }

LABEL_68:
    v37 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v37, v16);
    }

    else
    {
      *v37 = v16;
      *(v37 + 20) = 4;
    }

    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (*(a1 + 24) == 12)
      {
        LODWORD(v40) = 0;
        v19 = *(a1 + 12);
        v20 = sub_1819A0760((a1 + 192), v19, &v40);
        v21 = v20 + v19 + v40;
      }

      else
      {
        v21 = *(a1 + 12);
      }

      if (!a2)
      {
        return 0;
      }

      v5 = off_1E6A27D50[*(*(a1 + 192) + v21) & 0xF];
      v6 = a2;
      v7 = -1;
LABEL_56:
      v8 = 1;
      v32 = 0;
LABEL_65:
      sub_18190B23C(v6, v5, v7, v8, v32);
      return 0;
    }

    if (*(a1 + 24) == 12)
    {
      LODWORD(v40) = 0;
      v12 = *(a1 + 12);
      v13 = sub_1819A0760((a1 + 192), v12, &v40);
      v14 = v13 + v12 + v40;
    }

    else
    {
      v14 = *(a1 + 12);
    }

    v31 = *(a1 + 192);
    v30 = (a1 + 192);
    if ((*(v31 + v14) & 0xFu) > 0xA)
    {
      return 0;
    }

    v18 = v30;
    goto LABEL_52;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (*(a1 + 24) == 12)
      {
        LODWORD(v40) = 0;
        v9 = *(a1 + 12);
        v10 = sub_1819A0760((a1 + 192), v9, &v40);
        v11 = v10 + v9 + v40;
      }

      else
      {
        v11 = *(a1 + 12);
      }

      sub_1819A4E40((a1 + 192), v11, a2, 1);
      if (a2 && (*(*(a1 + 192) + v11) & 0xFu) >= 0xB)
      {
        v29 = *a2;
        *(v29 + 23) = 74;
        *(v29 + 20) |= 0x800u;
      }

      return 0;
    }

LABEL_43:
    if (!a2)
    {
      return 0;
    }

    v7 = *(a1 + 20);
    v5 = *(a1 + 64);
    v6 = a2;
    goto LABEL_56;
  }

  v17 = *(a1 + 28);
  if (v17)
  {
    if (*(a1 + 24) != 12)
    {
      if (!a2)
      {
        return 0;
      }

      v16 = *(*(a1 + 40) + 24 * (v17 - 1) + 16);
      goto LABEL_68;
    }

    v14 = *(a1 + 12);
    v18 = (a1 + 192);
LABEL_52:
    sub_1819A4E40(v18, v14, a2, 1);
    return 0;
  }

  if (*(a1 + 20) != 1)
  {
    v33 = sub_181A0F8F0(a1);
    v34 = *(a1 + 20);
    v35 = v34 - v33;
    if (v34 != v33)
    {
      v36 = *(a1 + 64);
      if (*(v36 + v33) != 91)
      {
        v39 = v33 + 1;
        if (*(v36 + v39) == 34)
        {
          if (!a2)
          {
            return 0;
          }

          v7 = v35 - 3;
          v5 = (v36 + v33 + 2);
          v6 = a2;
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v7 = v35 - 1;
          v5 = (v36 + v39);
          v6 = a2;
        }

        goto LABEL_9;
      }

      v40 = 0;
      sub_18193D008((v36 + v33 + 1), &v40, v35 - 1, 1);
      sqlite3_result_int64(a2, v40);
    }
  }

  return 0;
}

double sub_181A0F6E8(uint64_t a1)
{
  sub_1819A24BC((a1 + 192));
  if (!*(a1 + 88))
  {
    v2 = *(a1 + 64);
    v5 = *(v2 - 8);
    v4 = (v2 - 8);
    v3 = v5;
    if (v5 >= 2)
    {
      *v4 = v3 - 1;
      goto LABEL_10;
    }

    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
LABEL_9:
      (*v6)(v4);
    }
  }

LABEL_10:
  *(a1 + 64) = a1 + 90;
  *(a1 + 72) = xmmword_181A201B0;
  *(a1 + 88) = 1;
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_181929C84(*(a1 + 48), v7);
  }

  result = 0.0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 28) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

size_t sub_181A0F800(uint64_t a1)
{
  if (*(a1 + 24) == 11)
  {
    return sub_1819A40A0(30, (a1 + 56), "[%lld]");
  }

  v12 = 0;
  v3 = *(a1 + 12);
  v4 = sub_1819A0760((a1 + 192), v3, &v12);
  if (v12 && (byte_181A204C8[*(*(a1 + 192) + v4 + v3)] & 2) != 0)
  {
    v7 = v12;
    v8 = (*(a1 + 192) + v4 + v3);
    while (1)
    {
      v9 = *v8++;
      if ((byte_181A204C8[v9] & 6) == 0)
      {
        break;
      }

      if (!--v7)
      {
        v10 = v12;
        v11 = *(a1 + 192) + v4 + v3;
        v5 = ".%.*s";
        v6 = v12 + 2;
        return sub_1819A40A0(v6, (a1 + 56), v5, v10, v11);
      }
    }
  }

  v10 = v12;
  v11 = *(a1 + 192) + v4 + v3;
  v5 = ".%.*s";
  v6 = v12 + 4;
  return sub_1819A40A0(v6, (a1 + 56), v5, v10, v11);
}

uint64_t sub_181A0F8F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!*(a1 + 8) && *(a1 + 25) && v1 >= 2)
  {
    v4 = *(a1 + 64);
    v5 = (v4 + (v1 - 1));
    do
    {
      v6 = *v5;
      if (v6 == 91 || v6 == 46)
      {
        *v5 = 0;
        v7 = sub_18199F840(a1 + 192, 0, (v4 + 1), 0);
        *v5 = v6;
        if (v7 < 0xFFFFFFFD && sub_1819A0760((a1 + 192), v7, &v9) + v7 == *(a1 + 12))
        {
          return (v1 - 1);
        }
      }

      --v5;
      LODWORD(v1) = v1 - 1;
    }

    while (v1 >= 2);
    return 1;
  }

  return v1;
}

uint64_t sub_181A0F9D0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(v4 + 436) <= 0x107u)
    {
      if (*(v4 + 432))
      {
        if (*(v4 + 103))
        {
          return 7;
        }
      }

      else
      {
        ++*(v4 + 452);
      }

LABEL_15:
      v5 = sub_18192A080(v4, 264, 0x10300403B68C836);
      if (v5)
      {
        goto LABEL_16;
      }

      return 7;
    }

    v5 = *(v4 + 472);
    if (v5)
    {
      v6 = (v4 + 472);
    }

    else
    {
      v5 = *(v4 + 464);
      if (!v5)
      {
        ++*(v4 + 456);
        goto LABEL_15;
      }

      v6 = (v4 + 464);
    }

    *v6 = *v5;
    ++*(v4 + 448);
  }

  else
  {
    v5 = sub_181902484(264, 0x10300403B68C836);
    if (!v5)
    {
      return 7;
    }
  }

LABEL_16:
  v7 = 0;
  *(v5 + 256) = 0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 48) = *(a1 + 24);
  *(v5 + 64) = v5 + 90;
  *(v5 + 72) = xmmword_181A201B0;
  *a2 = v5;
  *(v5 + 88) = 1;
  *(v5 + 25) = 1;
  return v7;
}

double sub_181A0FB10(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!sqlite3_declare_vtab(a1, off_1E6A28200[a2 != 0]))
  {
    if (sqlite3_initialize())
    {
      *a5 = 0;
    }

    else
    {
      v9 = sub_181902484(40, 0x1070040280257AFLL);
      *a5 = v9;
      if (v9)
      {
        result = 0.0;
        *v9 = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 24) = a1;
        *(v9 + 32) = 0;
        *(v9 + 32) = 2 * (a2 != 0);
      }
    }
  }

  return result;
}

uint64_t sub_181A0FBB4(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 32))
  {
    v2 = 4;
  }

  else
  {
    v2 = 10;
  }

  *(a2 + 8) = 0x4059000000000000;
  *(a2 + 9) = 100;
  a2[10] = 0;
  v3 = *a2;
  if (v3 < 1)
  {
    return 19;
  }

  v4 = 0;
  v5 = *(a2 + 1);
  v6 = 8 * v3;
  result = 19;
  do
  {
    if (*(v5 + 5))
    {
      v8 = *(v5 + 4);
      if (v8 == 71)
      {
        if (*v5 == v2)
        {
          *(*(a2 + 4) + v4 + 4) = 1;
          a2[10] = 1;
        }
      }

      else if (v8 == 2 && *v5 == (v2 | 1))
      {
        result = 0;
        v9 = *(a2 + 4) + v4;
        *(v9 + 4) = 1;
        *v9 = 1;
      }
    }

    v5 += 12;
    v4 += 8;
  }

  while (v6 != v4);
  return result;
}

uint64_t sub_181A0FC78(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

double sub_181A0FD30(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v5 = sub_181902484(136, 0x10F20407260F910);
    if (v5)
    {
      result = 0.0;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 92) = 1;
      *(v5 + 128) = 0;
      *(v5 + 112) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *(v5 + 96) = *(a1 + 24);
      *(v5 + 104) = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_181A0FDBC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(v1 + 40) = 0;
  v4 = *(v1 + 92);
  if ((v4 & 0x9000) != 0 || *(v1 + 104))
  {
    sub_18193CA00((v1 + 72));
    v4 = *(v1 + 92);
  }

  if ((v4 & 0x9000) != 0)
  {
    sub_18193CA54((v1 + 72));
    if (!*(v1 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v1 + 92) = 1;
  if (*(v1 + 24))
  {
LABEL_13:
    sqlite3_finalize(*(v1 + 8));
  }

LABEL_14:
  *(v1 + 8) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_19:
    (*v5)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_181A0FF50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  v6 = a2;
  v8 = *a1;
  v9 = a1[5];
  if (v9)
  {
    v10 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v10)(v9, a2, a3, a4);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
    --qword_1ED456A90;
    off_1ED452EB0(v9);
    v9 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v10 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  a1[5] = 0;
  v11 = *(a1 + 46);
  if ((v11 & 0x9000) != 0 || *(a1 + 26))
  {
    sub_18193CA00(a1 + 18);
    v11 = *(a1 + 46);
  }

  if ((v11 & 0x9000) != 0)
  {
    sub_18193CA54(a1 + 18);
    if (!*(a1 + 6))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(a1 + 46) = 1;
  if (*(a1 + 6))
  {
LABEL_13:
    sqlite3_finalize(a1[1]);
  }

LABEL_14:
  a1[1] = 0;
  v12 = a1 + 1;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[2] = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = v6 == 0;
  v13 = *a5;
  if (!*a5)
  {
    sub_1819012D0(99877);
    v13 = *a5;
    if (!*a5)
    {
      sub_1819012D0(99775);
      v16 = 0;
      goto LABEL_38;
    }

LABEL_23:
    if ((v13[5] & 0xFBF) == 0xA01 && *(v13 + 23) == 112 && !strcmp(*v13, "stmt-pointer"))
    {
      v16 = *(v13 + 1);
    }

    else
    {
      v16 = 0;
    }

LABEL_38:
    v17 = 0;
    *v12 = v16;
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_39:
    sub_181A101F8(a1);
    return v17;
  }

  v14 = *(v13 + 10);
  if (((0x4000000040004uLL >> v14) & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((~v14 & 0x202) == 0 && *(v13 + 22) == 1)
  {
    v15 = *(v13 + 1);
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if ((v14 & 1) == 0)
  {
    v15 = sub_18193CB70(*a5, 1, a3, a4);
    if (v15)
    {
LABEL_29:
      v17 = sub_1818954B4(*(v8 + 24), v15, 0xFFFFFFFFLL, 128, 0, a1 + 1, 0);
      *(a1 + 6) = 1;
      if (!*v12)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }
  }

LABEL_31:
  v17 = 7;
  if (*v12)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (*(v8 + 32))
  {
    v18 = "tables_used";
  }

  else
  {
    v18 = "bytecode";
  }

  *(v8 + 16) = sqlite3_mprintf("argument to %s() is not a valid SQL statement", v18);
  return 1;
}

uint64_t sub_181A101F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
      --qword_1ED456A90;
      off_1ED452EB0(v3);
      v3 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_8;
      }

      v4 = &xmmword_1ED452F28;
    }

    (*v4)(v3);
LABEL_8:
    a1[5] = 0;
  }

  if (a1[8])
  {
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  if (*(a1 + 7))
  {
    v5 = a1 + 9;
  }

  else
  {
    v5 = 0;
  }

  if (sub_18193D2D4(a1[1], v5, *(v2 + 32), a1 + 4, a1 + 5, a1 + 4))
  {
    if ((*(a1 + 46) & 0x9000) != 0)
    {
      sub_18193CA54(a1 + 18);
    }

    else
    {
      *(a1 + 46) = 1;
    }

    a1[4] = 0;
  }

  return 0;
}

uint64_t sub_181A10330(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[4];
  v6 = *(a1 + 5);
  v7 = (v5 + 40 * v6);
  if (!*(*a1 + 32))
  {
LABEL_17:
    switch(a3)
    {
      case 0:
        if (!a2)
        {
          return 0;
        }

        v24 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v24, v6);
          return 0;
        }

        *v24 = v6;
        goto LABEL_56;
      case 1:
        if (!a2)
        {
          return 0;
        }

        v22 = off_1E6A269B0[*v7];
        goto LABEL_40;
      case 2:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 1);
        goto LABEL_53;
      case 3:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 2);
        goto LABEL_53;
      case 4:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 3);
        goto LABEL_53;
      case 5:
      case 7:
        v16 = a1[5];
        if (!v16)
        {
          v18 = a2;
          v19 = a3;
          v20 = sub_18193D590(*(v4 + 24), v7, a3, a4);
          LODWORD(a3) = v19;
          a2 = v18;
          v16 = v20;
          a1[5] = v20;
        }

        if (!a2 || a3 != 5)
        {
          return 0;
        }

        v9 = a2;
        v10 = v16;
        goto LABEL_41;
      case 6:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 1);
        goto LABEL_53;
      case 8:
        goto LABEL_3;
      case 9:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 3);
        goto LABEL_53;
      case 10:
        if (!a2)
        {
          return 0;
        }

        v23 = *(v7 + 4);
        goto LABEL_53;
      case 20:
        if (!a2)
        {
          return 0;
        }

        v22 = a1[6];
        goto LABEL_40;
      case 21:
        if (!a2)
        {
          return 0;
        }

        v22 = a1[7];
        goto LABEL_40;
      case 22:
        if (!a2)
        {
          return 0;
        }

        v22 = a1[8];
LABEL_40:
        v9 = a2;
        v10 = v22;
        goto LABEL_41;
      case 23:
        if (!a2)
        {
          return 0;
        }

        v23 = *v7 == 113;
LABEL_53:
        v24 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v24, v23);
        }

        else
        {
          *v24 = v23;
LABEL_56:
          *(v24 + 20) = 4;
        }

        break;
      default:
        return 0;
    }

    return 0;
  }

  if (a3 != 4)
  {
    if (a3 <= 2 && !a1[6])
    {
      v11 = *(v7 + 2);
      v12 = (*(*(v4 + 24) + 32) + 32 * *(v7 + 3));
      v13 = v12[3];
      a1[7] = *v12;
      v14 = *(v13 + 16);
      if (v14)
      {
        while (1)
        {
          v15 = v14[2];
          if (*(v15 + 63) != 1 && *(v15 + 40) == v11)
          {
            break;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_15;
          }
        }

        a1[8] = *v15;
        a1[6] = "table";
      }

LABEL_15:
      if (!a1[8])
      {
        for (i = *(v13 + 40); i; i = *i)
        {
          v27 = i[2];
          if (*(v27 + 88) == v11)
          {
            a1[8] = *v27;
            a1[6] = "index";
          }
        }
      }
    }

    a3 = (a3 + 20);
    goto LABEL_17;
  }

LABEL_3:
  if (*(a1 + 4) != v6 + 1)
  {
    v8 = *(v5 + 16);
    if (v8)
    {
      if (a2)
      {
        v9 = a2;
        v10 = (v8 + 3);
LABEL_41:
        v21 = -1;
        goto LABEL_42;
      }
    }

    else if (a2)
    {
      v9 = a2;
      v10 = "(FK)";
      v21 = 4;
LABEL_42:
      sub_18190B23C(v9, v10, v21, 1, 0);
    }
  }

  return 0;
}

void sub_181A10608()
{
  v0 = getenv("SQLITE_AUTO_PROFILE");
  if (v0)
  {
    v1 = v0;
    v2 = 1;
    if (!strncasecmp("1", v0, 1uLL))
    {
      if (isatty(2))
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else if (!strncasecmp("stderr", v1, 6uLL))
    {
      v2 = 1;
      v3 = 1;
    }

    else
    {
      v2 = strncasecmp("syslog", v1, 6uLL) == 0;
      v3 = 2 * v2;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = getenv("SQLITE_AUTO_TRACE");
  if (v4)
  {
    if (!strncasecmp("1", v4, 1uLL))
    {
      if (isatty(2))
      {
        LODWORD(v4) = 1;
      }

      else
      {
        LODWORD(v4) = 2;
      }

      goto LABEL_20;
    }

    if (!strncasecmp("stderr", v4, 6uLL))
    {
      LODWORD(v4) = 1;
      if (!dyld_process_is_restricted())
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v5 = strncasecmp("syslog", v4, 6uLL) == 0;
    LODWORD(v4) = 2 * v5;
  }

  else
  {
    v5 = 0;
  }

  if (!v2 && !v5)
  {
    return;
  }

LABEL_20:
  if (!dyld_process_is_restricted())
  {
LABEL_26:
    dword_1EA831A94 = v3;
    dword_1EA831A98 = v4;
    return;
  }

LABEL_21:
  if (os_variant_allows_internal_security_policies())
  {
    goto LABEL_26;
  }

  sqlite3_log(28, "Auto logging environment variable set, but process is restricted. Ignoring.");
}

void sub_181A107B0(uint64_t a1, char *a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED456C38 != -1)
  {
    sub_181A1EA60();
  }

  v5 = qword_1ED456C08;
  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = &byte_181A2878D;
    if (a2)
    {
      v6 = a2;
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 2048;
    v10 = a3 / 0xF4240;
    _os_log_impl(&dword_18188D000, v5, OS_LOG_TYPE_DEFAULT, "Query: %s\n Execution Time: %llu ms\n", &v7, 0x16u);
  }
}

void sub_181A108A8(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED456C38 != -1)
  {
    sub_181A1EA60();
  }

  v4 = qword_1ED456C08;
  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &byte_181A2878D;
    if (a2)
    {
      v5 = a2;
    }

    v6 = 134218242;
    v7 = a1;
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&dword_18188D000, v4, OS_LOG_TYPE_DEFAULT, "TraceSQL(%p): %s\n", &v6, 0x16u);
  }
}

uint64_t sub_181A10988(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 48);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        if ((*(v5 + 20) & 0x9000) != 0 || *(v5 + 32))
        {
          sub_18193CA00(*(v4 + 8 * i));
        }

        sub_181929C84(*(v5 + 24), v5);
        v2 = *(v1 + 40);
      }
    }
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_15:
    v8 = *v6;

    return v8(v1);
  }

  return result;
}

uint64_t sub_181A10AAC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (sqlite3_initialize())
  {
    v8 = 0;
  }

  else
  {
    v10 = sub_181902484(32, 0x107004075084CA3);
    v8 = v10;
    if (v10)
    {
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 24) = a2;
      result = sqlite3_declare_vtab(a1, "CREATE TABLE x(value INTEGER PRIMARY KEY)");
      goto LABEL_6;
    }
  }

  result = 7;
LABEL_6:
  *a5 = v8;
  return result;
}

uint64_t sub_181A10B38(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A10BF0(uint64_t a1, void *a2)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v4 = sub_181902484(16, 0x10200403A5D3213);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  result = 0;
  *v5 = 0;
  v5[1] = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_181A10C4C(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A10D40(unsigned int *a1, uint64_t *a2)
{
  v2 = a1[2];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(*a1 + 24);
    if (v2 < *v3)
    {
      if (a2)
      {
        v4 = *(*(v3 + 8) + 8 * v2);
        v5 = *a2;
        if ((*(*a2 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v5, v4);
          return 0;
        }

        *v5 = v4;
        *(v5 + 20) = 4;
      }
    }
  }

  return 0;
}

uint64_t sub_181A10E40(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 12);
  if (!v1)
  {
    v1 = *a1;
    if (*a1)
    {
      if (*(*v1 + 24))
      {
        v3 = a1;
        xmmword_1ED452F18(*(*v1 + 24));
        v4 = *(*v1 + 24);
        LODWORD(v1) = v1[130];
        if (v4)
        {
          xmmword_1ED452F28(v4);
        }

        a1 = v3;
      }

      else
      {
        LODWORD(v1) = v1[130];
      }
    }
  }

  return (v1 - *(a1 + 8));
}

double sub_181A10EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = 0;
  result = 0.0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  if (*(a3 + 36))
  {
    return result;
  }

  v8 = a1;
  if (sub_18191E5A4(a3, a4, *a3, *(a3 + 8)))
  {
    return result;
  }

  v9 = (a3 + 96);
  v10 = (*(a3 + 120))(*(a3 + 96));
  v11 = *(a4 + 20);
  if (v11 < v10)
  {
    v12 = v10;
    if (sub_181A1172C(a3, a4) || sub_181A11950(a3, a4))
    {
      return result;
    }

    v11 = *(a4 + 20);
    v10 = v12;
  }

  if (v11 != v10)
  {
    v13 = 17;
    goto LABEL_11;
  }

  if (sub_181A11DF0(a3, 0, a4))
  {
    v13 = 7;
LABEL_11:
    *(a3 + 36) = v13;
    return result;
  }

  if (*(a4 + 24))
  {
    v14 = *(a3 + 112);
    v65 = *v9;
    v66 = v14;
    *&v67 = *(a3 + 128);
    *(&v67 + 1) = a3;
    *(a3 + 112) = sub_181A12008;
    *(a3 + 96) = &v65;
    *(a3 + 104) = sub_181A120A0;
    *(a3 + 120) = sub_181A12134;
    *(a3 + 128) = sub_181A12140;
    if (!*(a3 + 72))
    {
      v15 = sub_181902484(64, 0x10F2040695A4BFELL);
      if (!v15)
      {
LABEL_143:
        v13 = 7;
        goto LABEL_151;
      }

      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 20) = 1;
      *(v15 + 24) = 0;
      v16 = v15;
      sub_1818900D0(v15, &byte_181A2878D, 0, 0, 0);
      *(a3 + 72) = v16;
    }
  }

  v69 = 0;
  v13 = sub_181A1214C(a3, a2, a4, v8 == 18, &v69, &v68);
  if (v13 | v68)
  {
    goto LABEL_151;
  }

  v62 = v69;
  v18 = *(*(a4 + 72) + 8 * v69);
  if (v18)
  {
    v19 = 104;
    if (v8 == 18)
    {
      v19 = 112;
    }

    v64 = v19;
    while (1)
    {
      v63 = v18;
      v20 = *(v18 + 16);
      if (!*(a4 + 28))
      {
        break;
      }

      if (*v20 == 1 && bswap64(*(v20 + 1)) == a2)
      {
        goto LABEL_118;
      }

LABEL_22:
      v18 = *(v63 + 24);
      if (!v18)
      {
        goto LABEL_122;
      }
    }

    v21 = *(a4 + 16);
    if (v21 >= 1)
    {
      v22 = 0;
      while (1)
      {
        if (!*(*(a4 + 56) + v22))
        {
          v28 = *v20;
          v23 = 1;
          if (*v20)
          {
            v29 = v28 == 5;
          }

          else
          {
            v29 = 1;
          }

          if (!v29 && v28 != 255)
          {
            if ((v28 - 1) < 2)
            {
              v23 = 9;
            }

            else
            {
              v30 = v20[1];
              if (v30 < 0)
              {
                v40 = v20[2];
                if (v20[2] < 0)
                {
                  v48 = v20[3];
                  if (v48 < 0)
                  {
                    v71 = 0;
                    v49 = sub_1818C7200(v20 + 1, &v71);
                    v30 = v71;
                    if (HIDWORD(v71))
                    {
                      v30 = -1;
                    }

                    v31 = (v49 + 1);
                  }

                  else
                  {
                    v30 = ((v30 & 0x7F) << 14) | ((v40 & 0x7F) << 7) | v48;
                    v31 = 4;
                  }
                }

                else
                {
                  v30 = v40 | ((v30 & 0x7F) << 7);
                  v31 = 3;
                }
              }

              else
              {
                v31 = 2;
              }

              v23 = v31 + v30;
            }
          }

          v20 += v23;
          goto LABEL_31;
        }

        v70 = 0;
        v25 = v20 + 1;
        v24 = *v20;
        (*(a3 + v64))(*(a3 + 96), *(*(a4 + 48) + 4 * v22), &v70);
        if (v70)
        {
          v27 = byte_181A203AA[*(v70 + 10) & 0x3F];
        }

        else
        {
          sub_1819012D0(99877);
          v27 = 0;
        }

        if (v27 != v24)
        {
          goto LABEL_22;
        }

        if ((v24 - 1) > 1)
        {
          v35 = *v25;
          if (v35 < 0)
          {
            v38 = v20[2];
            if (v20[2] < 0)
            {
              v39 = v20[3];
              if (v39 < 0)
              {
                v71 = 0;
                v41 = sub_1818C7200(v20 + 1, &v71);
                if (HIDWORD(v71))
                {
                  v35 = -1;
                }

                else
                {
                  v35 = v71;
                }

                v36 = v41;
              }

              else
              {
                v35 = ((v35 & 0x7F) << 14) | ((v38 & 0x7F) << 7) | v39;
                v36 = 3;
              }
            }

            else
            {
              v35 = v38 | ((v35 & 0x7F) << 7);
              v36 = 2;
            }
          }

          else
          {
            v36 = 1;
          }

          if (!v70)
          {
            sub_1819012D0(93690);
            goto LABEL_90;
          }

          v42 = *(v70 + 10);
          if ((v42 & 2) != 0 && *(v70 + 22) == 1)
          {
            v43 = *(v70 + 4);
            goto LABEL_91;
          }

          if ((v42 & 0x10) != 0)
          {
            v43 = *(v70 + 4);
            if ((*(v70 + 10) & 0x400) != 0)
            {
              v43 += *v70;
            }
          }

          else
          {
            if ((v42 & 1) == 0)
            {
              v43 = sub_18193CB44(v70, 1, v26, v17);
              goto LABEL_91;
            }

LABEL_90:
            v43 = 0;
          }

LABEL_91:
          if (v43 != v35)
          {
            goto LABEL_22;
          }

          if (v24 == 3)
          {
            if (!v70)
            {
              goto LABEL_103;
            }

            v44 = *(v70 + 10);
            if ((~v44 & 0x202) == 0 && *(v70 + 22) == 1)
            {
              v45 = *(v70 + 1);
              goto LABEL_104;
            }

            if (v44)
            {
LABEL_103:
              v45 = 0;
            }

            else
            {
              v46 = sub_18193CB70(v70, 1, v26, v17);
LABEL_98:
              v45 = v46;
            }

LABEL_104:
            v47 = &v25[v36];
            if (v35 >= 1 && memcmp(v47, v45, v35))
            {
              goto LABEL_22;
            }

            v20 = &v47[v35];
            goto LABEL_107;
          }

          v46 = sqlite3_value_blob(v70);
          goto LABEL_98;
        }

        v32 = COERCE_DOUBLE(bswap64(*(v20 + 1)));
        v20 += 9;
        if (v24 != 1)
        {
          if (v70)
          {
            v37 = *(v70 + 10);
            if ((v37 & 8) != 0)
            {
              result = *v70;
            }

            else if ((v37 & 0x24) != 0)
            {
              result = *v70;
            }

            else if ((v37 & 0x12) != 0)
            {
              result = sub_18193CF90(v70);
            }

            else
            {
              result = 0.0;
            }
          }

          else
          {
            sub_1819012D0(92272);
            result = 0.0;
          }

          if (result != v32)
          {
            goto LABEL_22;
          }

          goto LABEL_107;
        }

        if (!v70)
        {
          break;
        }

        v33 = *(v70 + 10);
        if ((v33 & 0x24) != 0)
        {
          v34 = *v70;
          goto LABEL_60;
        }

        if ((v33 & 8) != 0)
        {
          result = *v70;
          if (*v70 >= -9.22337204e18)
          {
            if (result <= 9.22337204e18)
            {
              v34 = result;
            }

            else
            {
              v34 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v34 = 0x8000000000000000;
          }
        }

        else
        {
          if ((v33 & 0x12) == 0 || !*(v70 + 1))
          {
            goto LABEL_59;
          }

          v34 = sub_18193CFCC(v70);
        }

LABEL_60:
        if (v34 != *&v32)
        {
          goto LABEL_22;
        }

LABEL_107:
        v21 = *(a4 + 16);
LABEL_31:
        if (++v22 >= v21)
        {
          goto LABEL_118;
        }
      }

      sub_1819012D0(92237);
LABEL_59:
      v34 = 0;
      goto LABEL_60;
    }

LABEL_118:
    v50 = v63;
    if (*(v63 + 1) && !(*(a3 + 128))(*(a3 + 96)) && !*(a3 + 24))
    {
      *(v63 + 1) = 0;
    }

    goto LABEL_148;
  }

LABEL_122:
  ++*(a4 + 64);
  v51 = 32;
  v71 = 32;
  v52 = *(a4 + 28);
  if (v52 >= *(a4 + 16))
  {
LABEL_131:
    if (v52)
    {
      v51 += 9;
      v71 = v51;
    }

    v55 = sub_18191FD18(a3, v51);
    if (v55)
    {
      v50 = v55;
      result = 0.0;
      *v55 = 0u;
      *(v55 + 16) = 0u;
      *(v55 + 16) = v55 + 32;
      v71 = 0;
      v57 = *(a4 + 28);
      if (v57)
      {
        *(v55 + 32) = 1;
        *(v55 + 33) = HIBYTE(a2);
        *(v55 + 34) = BYTE6(a2);
        *(v55 + 35) = BYTE5(a2);
        *(v55 + 36) = BYTE4(a2);
        *(v55 + 37) = BYTE3(a2);
        *(v55 + 38) = BYTE2(a2);
        *(v55 + 39) = BYTE1(a2);
        *(v55 + 40) = a2;
        v71 = 9;
        v57 = *(a4 + 28);
      }

      if (v57 < *(a4 + 16))
      {
        v58 = v57;
        do
        {
          v70 = 0;
          v59 = (a3 + 104);
          if (v8 != 18 || (v59 = (a3 + 112), *(*(a4 + 56) + v58)))
          {
            (*v59)(*v9);
          }

          sub_181A12484(*(v50 + 16) + v71, v70, &v71, v56);
          ++v58;
        }

        while (v58 < *(a4 + 16));
      }

      if (*(a3 + 24) || (*(a3 + 128))(*(a3 + 96)))
      {
        *(v50 + 1) = 1;
      }

      *(v50 + 2) = *(a4 + 16);
      *(v50 + 8) = v71;
      *v50 = v8;
      v60 = *(a4 + 72);
      *(v50 + 24) = *(v60 + 8 * v62);
      *(v60 + 8 * v62) = v50;
LABEL_148:
      if (*(a3 + 16))
      {
        v13 = sub_181A12800(v8, a3, a4, v50);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_151;
    }

    goto LABEL_143;
  }

  v53 = v52;
  while (1)
  {
    v54 = *(*(a4 + 48) + 4 * v53);
    v70 = 0;
    if (v8 == 18)
    {
      if (*(*(a4 + 56) + v53))
      {
        (*(a3 + 112))(*(a3 + 96), v54, &v70);
      }
    }

    else
    {
      v13 = (*(a3 + 104))(*(a3 + 96), v54, &v70);
      if (v13)
      {
        break;
      }
    }

    v13 = sub_181A12484(0, v70, &v71, v17);
    if (v13)
    {
      break;
    }

    if (++v53 >= *(a4 + 16))
    {
      v52 = *(a4 + 28);
      v51 = v71;
      goto LABEL_131;
    }
  }

LABEL_151:
  if (*(a4 + 24))
  {
    result = *&v65;
    v61 = v66;
    *v9 = v65;
    *(a3 + 112) = v61;
    *(a3 + 128) = v67;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_181A1172C(uint64_t a1, uint64_t a2)
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v4 = &v27;
  if (!*(a1 + 32))
  {
    v4 = 0;
  }

  v5 = sub_18191E83C(a1, *a1, *(a1 + 8), *(a2 + 8), &v32 + 1, &v32, 0, &v31, &v30, &v29, &v28, v4);
  *(a1 + 36) = v5;
  if (v5)
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 16);
  v7 = HIDWORD(v32);
  if (SHIDWORD(v32) < v6 || *(a2 + 28) != v27)
  {
    *(a1 + 36) = 17;
    goto LABEL_15;
  }

  if (SHIDWORD(v32) < 1)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = v28;
  do
  {
    if (v9 >= v6)
    {
      if (!*(v10 + v9))
      {
        goto LABEL_10;
      }

LABEL_9:
      v8 = 17;
      *(a1 + 36) = 17;
      goto LABEL_10;
    }

    if (*(*(a2 + 56) + v9) != *(v10 + v9))
    {
      goto LABEL_9;
    }

LABEL_10:
    ++v9;
  }

  while (v7 != v9);
  if (!v8)
  {
LABEL_24:
    v14 = *(a2 + 32);
    v15 = v31;
    v16 = v32;
    *(a2 + 16) = v7;
    *(a2 + 20) = v16;
    v17 = v29;
    v18 = v30;
    *(a2 + 32) = v15;
    *(a2 + 40) = v18;
    v19 = v28;
    *(a2 + 48) = v17;
    *(a2 + 56) = v19;
    v31 = v14;
  }

  if (*(a1 + 16))
  {
    v20 = *(a1 + 64) + v7 - v6;
    if (v7 >= 0x80)
    {
      v22 = v7;
      v21 = 1;
      do
      {
        v23 = v22 >> 14;
        v22 >>= 7;
        ++v21;
      }

      while (v23);
    }

    else
    {
      v21 = 1;
    }

    v24 = v20 + v21;
    v25 = 1;
    if (v6 >= 0x80)
    {
      do
      {
        v26 = v6 >> 14;
        v6 >>= 7;
        ++v25;
      }

      while (v26);
    }

    *(a1 + 64) = v24 - v25;
  }

LABEL_15:
  v11 = v31;
  if (v31)
  {
    v12 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_21;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v12 = &xmmword_1ED452F28;
LABEL_21:
      (*v12)(v11);
    }
  }

  return *(a1 + 36);
}

uint64_t sub_181A11950(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  pStmt = 0;
  v38 = sub_181A12C5C(*a1, a2, &pStmt);
  if (v38)
  {
    goto LABEL_56;
  }

  if (sqlite3_step(pStmt) != 100 || (v4 = *(v2 + 68), v4 < 1))
  {
    v38 = 0;
    goto LABEL_56;
  }

  v5 = 0;
  v38 = 0;
  v39 = v2;
  while (2)
  {
    v37 = v5;
    v6 = (*(v2 + 72) + 8 * v5);
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_6;
    }

    while (2)
    {
      v8 = *(v7 + 2);
      v9 = *(v2 + 16);
      v40 = v9;
      if (v9 == v8 || v9 <= v8)
      {
        goto LABEL_11;
      }

      v10 = pStmt;
      while (1)
      {
        v13 = sqlite3_column_type(v10, v8);
        v14 = v13;
        if (v13 - 1 >= 2)
        {
          if (v13 == 5)
          {
            v15 = 1;
          }

          else
          {
            v16 = sqlite3_column_bytes(v10, v8);
            if (v16 >= 0x80)
            {
              v18 = v16;
              v17 = 1;
              do
              {
                v19 = v18 >> 14;
                v18 >>= 7;
                ++v17;
              }

              while (v19);
            }

            else
            {
              v17 = 1;
            }

            v15 = v16 + v17 + 1;
          }
        }

        else
        {
          v15 = 9;
        }

        v20 = *(v7 + 8);
        if (sqlite3_initialize())
        {
          break;
        }

        v21 = sub_181902484(v15 + v20 + 32, 451894878);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        *(a1 + 56) += xmmword_1ED452EC0(v21);
        v23 = *(v7 + 16);
        *v22 = *v7;
        *(v22 + 16) = v23;
        *(v22 + 16) = v22 + 32;
        memcpy((v22 + 32), *(v7 + 16), *(v7 + 8));
        v24 = *(v22 + 8);
        *(v22 + 8) = v24 + 1;
        *(v22 + 32 + v24) = v14;
        if (v14 > 2u)
        {
          if (v14 == 3)
          {
            v25 = sqlite3_column_bytes(v10, v8);
            v26 = sqlite3_column_text(v10, v8);
            v29 = (*(v22 + 16) + *(v22 + 8));
            if (v25 > 0x7F)
            {
              if (v25 >> 14)
              {
                v30 = sub_1819436D0(v29, v25);
              }

              else
              {
                v29->i8[0] = (v25 >> 7) | 0x80;
                v29->i8[1] = v25 & 0x7F;
                v30 = 2;
              }
            }

            else
            {
              v29->i8[0] = v25;
              v30 = 1;
            }

            v31 = *(v22 + 8) + v30;
            *(v22 + 8) = v31;
            v32 = *(v22 + 16);
            v33 = v25;
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_50;
            }

            v25 = sqlite3_column_bytes(v10, v8);
            v26 = sqlite3_column_blob(v10, v8);
            v27 = (*(v22 + 16) + *(v22 + 8));
            if (v25 > 0x7F)
            {
              if (v25 >> 14)
              {
                v28 = sub_1819436D0(v27, v25);
              }

              else
              {
                v27->i8[0] = (v25 >> 7) | 0x80;
                v27->i8[1] = v25 & 0x7F;
                v28 = 2;
              }
            }

            else
            {
              v27->i8[0] = v25;
              v28 = 1;
            }

            v31 = *(v22 + 8) + v28;
            *(v22 + 8) = v31;
            v32 = *(v22 + 16);
            v33 = v25;
          }

          memcpy((v32 + v31), v26, v33);
        }

        else if (v14 == 1)
        {
          *(*(v22 + 16) + *(v22 + 8)) = bswap64(sqlite3_column_int64(v10, v8));
          v25 = 8;
        }

        else
        {
          if (v14 != 2)
          {
            goto LABEL_50;
          }

          *(*(v22 + 16) + *(v22 + 8)) = bswap64(COERCE_UNSIGNED_INT64(sqlite3_column_double(v10, v8)));
          v25 = 8;
        }

        *(v22 + 8) += v25;
LABEL_50:
        *(a1 + 56) -= xmmword_1ED452EC0(v7);
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
          --qword_1ED456A90;
          off_1ED452EB0(v7);
          v7 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_17;
          }

          v11 = &xmmword_1ED452F28;
        }

        else
        {
          v11 = &off_1ED452EB0;
        }

        (*v11)(v7);
LABEL_17:
        *v6 = v22;
        v12 = *(v22 + 2) + 1;
        *(v22 + 2) = v12;
        *(v22 + 4) += v15;
        *(a1 + 64) += v15;
        v8 = v12;
        v7 = v22;
        if (v40 <= v12)
        {
          goto LABEL_10;
        }
      }

      v38 = 7;
LABEL_10:
      v7 = *v6;
      v2 = v39;
LABEL_11:
      v6 = (v7 + 24);
      v7 = *(v7 + 24);
      if (v7)
      {
        continue;
      }

      break;
    }

    v4 = *(v2 + 68);
LABEL_6:
    v5 = v37 + 1;
    if (v37 + 1 < v4)
    {
      continue;
    }

    break;
  }

LABEL_56:
  *(a1 + 36) = v38;
  v34 = sqlite3_finalize(pStmt);
  v35 = *(a1 + 36);
  if (!v35)
  {
    *(a1 + 36) = v34;
    return v34;
  }

  return v35;
}

BOOL sub_181A11DF0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 68);
  if (v6 && *(a3 + 64) < v6 / 2)
  {
    return 0;
  }

  if (v6)
  {
    v8 = 2 * v6;
  }

  else
  {
    v8 = 256;
  }

  if (sqlite3_initialize())
  {
    if (!a1)
    {
      return *(a3 + 68) == 0;
    }

    v9 = 0;
  }

  else
  {
    v11 = sub_181902484(8 * v8, 451894878);
    v9 = v11;
    if (!a1)
    {
      goto LABEL_15;
    }

    if (v11)
    {
      v10 = xmmword_1ED452EC0(v11);
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  *(a1 + 56) += v10;
LABEL_15:
  if (!v9)
  {
    return *(a3 + 68) == 0;
  }

  bzero(v9, 8 * v8);
  v12 = *(a3 + 68);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(a3 + 72) + 8 * i);
      if (v14)
      {
        do
        {
          if (a2)
          {
            v15 = *v14 == 9;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = sub_181A130E4(a3, v16, *(v14 + 16), v8);
          v18 = *(v14 + 24);
          *(v14 + 24) = *(v9 + v17);
          *(v9 + v17) = v14;
          v14 = v18;
        }

        while (v18);
        v12 = *(a3 + 68);
      }
    }
  }

  v19 = *(a3 + 72);
  if (a1)
  {
    if (v19)
    {
      v20 = xmmword_1ED452EC0(*(a3 + 72));
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 56) -= v20;
  }

  if (!v19)
  {
    goto LABEL_41;
  }

  v21 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
    --qword_1ED456A90;
    off_1ED452EB0(v19);
    v19 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_41;
    }

    v21 = &xmmword_1ED452F28;
  }

  (*v21)(v19);
LABEL_41:
  result = 0;
  *(a3 + 68) = v8;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_181A12008(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v9 = 0;
  result = (*(a1 + 16))(*a1, a2, &v9);
  v7 = v9;
  if (v4 == 1 && !result)
  {
    if (v9)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v9 + 20)))
      {
        v7 = *(*(a1 + 40) + 72);
      }
    }

    else
    {
      v8 = result;
      sub_1819012D0(99877);
      result = v8;
      v7 = v9;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_181A120A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v9 = 0;
  result = (*(a1 + 8))(*a1, a2, &v9);
  v7 = v9;
  if (v4 == 1 && !result)
  {
    if (v9)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v9 + 20)))
      {
        v7 = *(*(a1 + 40) + 72);
      }
    }

    else
    {
      v8 = result;
      sub_1819012D0(99877);
      result = v8;
      v7 = v9;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_181A1214C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5, _DWORD *a6)
{
  if (!*(a3 + 28))
  {
    v10 = *(a3 + 16);
    if (v10 < 1)
    {
      v8 = 0;
      goto LABEL_3;
    }

    v13 = 0;
    v8 = 0;
    if (a4)
    {
      v14 = 112;
    }

    else
    {
      v14 = 104;
    }

    while (1)
    {
      if (!*(*(a3 + 56) + v13))
      {
        goto LABEL_13;
      }

      v31 = 0;
      result = (*(a1 + v14))(*(a1 + 96), *(*(a3 + 48) + 4 * v13), &v31);
      if (result)
      {
        return result;
      }

      if (v31)
      {
        v19 = *(v31 + 10);
        v20 = v19 & 0x3F;
        v21 = byte_181A203AA[v19 & 0x3F];
        v8 ^= (8 * v8) ^ v21;
        if ((v21 - 1) <= 1)
        {
          if ((0x50505050uLL >> v20))
          {
            if ((v19 & 0x24) != 0)
            {
              v16 = *v31;
            }

            else if ((v19 & 8) != 0)
            {
              v28 = *v31;
              if (*v31 > 9.22337204e18)
              {
                v28 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (*v31 >= -9.22337204e18)
              {
                v16 = v28;
              }

              else
              {
                v16 = 0x8000000000000000;
              }
            }

            else if ((v19 & 0x12) != 0 && *(v31 + 1))
            {
              v16 = sub_18193CFCC(v31);
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            if ((v19 & 8) != 0)
            {
              v15 = *v31;
            }

            else if ((v19 & 0x24) != 0)
            {
              v15 = *v31;
            }

            else if ((v19 & 0x12) != 0)
            {
              v15 = sub_18193CF90(v31);
            }

            else
            {
              v15 = 0.0;
            }

            v16 = *&v15;
          }

          v8 ^= HIDWORD(v16) ^ (8 * (v16 ^ (8 * v8) ^ v8)) ^ v16 ^ (8 * v8);
          goto LABEL_12;
        }

        if ((v21 - 3) <= 1)
        {
          if (((0x4000000040004uLL >> v20) & 1) == 0)
          {
            v22 = sqlite3_value_blob(v31);
            goto LABEL_38;
          }

          if ((~v19 & 0x202) == 0 && *(v31 + 22) == 1)
          {
            v23 = *(v31 + 1);
            v24 = v31;
            goto LABEL_39;
          }

          if (v19)
          {
            v23 = 0;
            v24 = v31;
            goto LABEL_39;
          }

          v22 = sub_18193CB70(v31, 1, v17, v18);
LABEL_38:
          v23 = v22;
          v24 = v31;
          if (v31)
          {
LABEL_39:
            v25 = *(v24 + 10);
            if ((v25 & 2) != 0 && *(v24 + 22) == 1)
            {
              v26 = *(v24 + 4);
              if (!v23)
              {
                goto LABEL_42;
              }

LABEL_62:
              if (v26 >= 1)
              {
                v29 = v26;
                do
                {
                  v30 = *v23++;
                  v8 ^= v30 ^ (8 * v8);
                  --v29;
                }

                while (v29);
              }

              goto LABEL_12;
            }

            if ((v25 & 0x10) == 0)
            {
              if (v25)
              {
                v26 = 0;
                if (!v23)
                {
LABEL_42:
                  if ((0xFFFEFFFFFFFEFFFELL >> v20))
                  {
                    return 7;
                  }

                  v27 = v26 <= 0;
                  result = 7;
                  if (!v27)
                  {
                    return result;
                  }

                  goto LABEL_12;
                }
              }

              else
              {
                v26 = sub_18193CB44(v24, 1, v17, v18);
                if (!v23)
                {
                  goto LABEL_42;
                }
              }

              goto LABEL_62;
            }

            v26 = *(v24 + 4);
            if ((*(v24 + 10) & 0x400) != 0)
            {
              v26 += *v24;
              if (!v23)
              {
                goto LABEL_42;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_1819012D0(93690);
            v26 = 0;
          }

          if (!v23)
          {
            goto LABEL_42;
          }

          goto LABEL_62;
        }
      }

      else
      {
        sub_1819012D0(99877);
        v8 ^= 8 * v8;
      }

      *a6 = 1;
LABEL_12:
      v10 = *(a3 + 16);
LABEL_13:
      if (++v13 >= v10)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = HIDWORD(a2) ^ a2 ^ (8 * a2);
LABEL_3:
  result = 0;
  *a5 = v8 % *(a3 + 68);
  return result;
}

uint64_t sub_181A12484(uint64_t a1, sqlite3_value *a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    if (a1)
    {
      *a1 = 0;
    }

LABEL_13:
    v8 = 1;
    v9 = 0;
    if (!a3)
    {
      return v9;
    }

    goto LABEL_64;
  }

  v4 = *(a2 + 10) & 0x3F;
  v5 = byte_181A203AA[v4];
  if (a1)
  {
    *a1 = v5;
  }

  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      goto LABEL_13;
    }

    if ((0x4000000040004uLL >> v4))
    {
      v15 = *(a2 + 10);
      if ((~v15 & 0x202) == 0 && *(a2 + 22) == 1)
      {
        v16 = *(a2 + 1);
        v17 = *(a2 + 10);
        if ((v17 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      if (v15)
      {
        v16 = 0;
        v17 = *(a2 + 10);
        if ((v17 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v10 = a1;
      v18 = a2;
      v19 = a3;
      v13 = sub_18193CB70(a2, 1, a3, a4);
      a2 = v18;
      a3 = v19;
    }

    else
    {
      v10 = a1;
      v11 = a3;
      v12 = a2;
      v13 = sqlite3_value_blob(a2);
      a2 = v12;
      a3 = v11;
    }

    v16 = v13;
    a1 = v10;
    v17 = *(a2 + 10);
    if ((v17 & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_37:
    if (*(a2 + 22) == 1)
    {
      v23 = *(a2 + 4);
      if (v16)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

LABEL_40:
    if ((v17 & 0x10) != 0)
    {
      v23 = *(a2 + 4);
      if ((v17 & 0x400) != 0)
      {
        v23 += *a2;
      }

      if (v16)
      {
        goto LABEL_51;
      }
    }

    else if (v17)
    {
      v23 = 0;
      if (v16)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v24 = a1;
      v25 = a3;
      v26 = sub_18193CB44(a2, 1, a3, a4);
      a3 = v25;
      v23 = v26;
      a1 = v24;
      if (v16)
      {
        goto LABEL_51;
      }
    }

LABEL_47:
    v9 = 7;
    if (((0xFFFEFFFFFFFEFFFELL >> v4) & 1) != 0 || v23 > 0)
    {
      return v9;
    }

LABEL_51:
    if (v23 >= 0x80)
    {
      v27 = 1;
      v28 = v23;
      do
      {
        v29 = v28 >> 14;
        v28 >>= 7;
        ++v27;
      }

      while (v29);
      if (!a1)
      {
        goto LABEL_63;
      }

      if (v23 >> 14)
      {
        v30 = a1;
        v31 = a3;
        sub_1819436D0((a1 + 1), v23);
        a1 = v30;
        a3 = v31;
        if (v23 < 1)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a1 + 1) = (v23 >> 7) | 0x80;
        *(a1 + 2) = v23 & 0x7F;
      }
    }

    else
    {
      if (!a1)
      {
        v27 = 1;
        goto LABEL_63;
      }

      *(a1 + 1) = v23;
      v27 = 1;
      if (v23 < 1)
      {
LABEL_63:
        v8 = v23 + v27 + 1;
        v9 = 0;
        if (!a3)
        {
          return v9;
        }

LABEL_64:
        *a3 += v8;
        return v9;
      }
    }

    v32 = v16;
    v33 = a3;
    memcpy((a1 + v27 + 1), v32, v23);
    a3 = v33;
    goto LABEL_63;
  }

  if (a1)
  {
    v6 = *(a2 + 10);
    if ((0x50505050uLL >> v4))
    {
      if ((v6 & 0x24) != 0)
      {
        v14 = *a2;
      }

      else if ((v6 & 8) != 0)
      {
        v37 = *a2;
        if (*a2 >= -9.22337204e18)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
          if (v37 <= 9.22337204e18)
          {
            v14 = v37;
          }
        }

        else
        {
          v14 = 0x8000000000000000;
        }
      }

      else if ((v6 & 0x12) != 0)
      {
        v14 = *(a2 + 1);
        if (v14)
        {
          v20 = a1;
          v21 = a3;
          v22 = sub_18193CFCC(a2);
          a3 = v21;
          v14 = v22;
          a1 = v20;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      if ((v6 & 8) != 0)
      {
        v7 = *a2;
      }

      else if ((v6 & 0x24) != 0)
      {
        v7 = *a2;
      }

      else if ((v6 & 0x12) != 0)
      {
        v35 = a1;
        v36 = a3;
        v7 = sub_18193CF90(a2);
        a1 = v35;
        a3 = v36;
      }

      else
      {
        v7 = 0.0;
      }

      v14 = *&v7;
    }

    *(a1 + 1) = bswap64(v14);
  }

  v8 = 9;
  v9 = 0;
  if (a3)
  {
    goto LABEL_64;
  }

  return v9;
}

uint64_t sub_181A12800(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = 2;
  if (*a4 == 18)
  {
    if (*(a3 + 28))
    {
      v42 = 11;
    }

    if (a1 != 9 && *(a3 + 16) >= 1)
    {
      v7 = 0;
      do
      {
        v43 = 0;
        (*(a2 + 112))(*(a2 + 96), *(*(a3 + 48) + 4 * v7), &v43);
        sub_181A12484(0, v43, &v42, v8);
        ++v7;
      }

      while (v7 < *(a3 + 16));
    }

    goto LABEL_88;
  }

  if (a1 == 9)
  {
    v9 = *(a4 + 8);
    v42 = v9 + 2;
    if (*a2)
    {
      v10 = *(*a2 + 368);
      if (v10)
      {
        if ((*(v10 + 60) & 0x80000000) == 0)
        {
          v11 = v9 + 2 + v9;
          goto LABEL_87;
        }
      }
    }

    goto LABEL_88;
  }

  v12 = *(a4 + 16);
  v13 = *(a3 + 28);
  if (v13)
  {
    v42 = 12;
    v12 += 9;
  }

  if (v13 >= *(a3 + 16))
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = *(*(a3 + 48) + 4 * v13);
    v41 = 0;
    (*(a2 + 112))(*(a2 + 96), v15, &v41);
    v18 = v41;
    if (!v41)
    {
      return 7;
    }

    v19 = v12 + 1;
    v20 = *v12;
    if ((v20 - 1) >= 2)
    {
      if (v20 == 5)
      {
        v24 = 0;
        v25 = (0x5555555555555555uLL >> *(v41 + 10)) & 1;
        ++v12;
        goto LABEL_75;
      }

      v26 = *v19;
      if (v26 < 0)
      {
        v29 = v12[2];
        if (v12[2] < 0)
        {
          v30 = v12[3];
          if (v30 < 0)
          {
            v43 = 0;
            v32 = v41;
            v27 = sub_1818C7200(v12 + 1, &v43);
            v18 = v32;
            if (v43 >> 32)
            {
              v26 = -1;
            }

            else
            {
              v26 = v43;
            }
          }

          else
          {
            v26 = ((v26 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v30;
            v27 = 3;
          }
        }

        else
        {
          v26 = v29 | ((v26 & 0x7F) << 7);
          v27 = 2;
        }
      }

      else
      {
        v27 = 1;
      }

      v33 = &v19[v27];
      v34 = *(v18 + 10);
      if (byte_181A203AA[v34 & 0x3F] != v20)
      {
        goto LABEL_73;
      }

      if ((v34 & 2) != 0 && *(v18 + 22) == 1)
      {
        if (v26 != *(v18 + 4))
        {
          goto LABEL_73;
        }
      }

      else if ((v34 & 0x10) != 0)
      {
        v35 = *(v18 + 4);
        if ((*(v18 + 10) & 0x400) != 0)
        {
          v35 += *v18;
        }

        if (v26 != v35)
        {
          goto LABEL_73;
        }
      }

      else if (v34)
      {
        if (v26)
        {
          goto LABEL_73;
        }
      }

      else if (v26 != sub_18193CB44(v18, 1, v16, v17))
      {
        goto LABEL_73;
      }

      if (!v26 || (v36 = sqlite3_value_blob(v41), !memcmp(v33, v36, v26)))
      {
        LODWORD(v25) = 0;
LABEL_74:
        v24 = v27 + v26;
        v12 = &v33[v26];
        goto LABEL_75;
      }

LABEL_73:
      LODWORD(v25) = 1;
      goto LABEL_74;
    }

    v21 = *(v41 + 10);
    if (byte_181A203AA[v21 & 0x3F] == v20)
    {
      v22 = COERCE_DOUBLE(bswap64(*(v12 + 1)));
      if (v20 == 1)
      {
        if ((v21 & 0x24) != 0)
        {
          v23 = *&v22 == *v41;
        }

        else if ((v21 & 8) != 0)
        {
          v31 = *v41;
          if (*v41 >= -9.22337204e18)
          {
            v37 = v31 <= 9.22337204e18 ? v31 : 0x7FFFFFFFFFFFFFFFLL;
            v23 = *&v22 == v37;
          }

          else
          {
            v23 = *&v22 == 0x8000000000000000;
          }
        }

        else
        {
          v23 = (v21 & 0x12) != 0 && *(v41 + 1) ? *&v22 == sub_18193CFCC(v41) : *&v22 == 0;
        }
      }

      else
      {
        if ((v21 & 8) != 0)
        {
          v28 = *v41;
        }

        else if ((v21 & 0x24) != 0)
        {
          v28 = *v41;
        }

        else
        {
          v28 = (v21 & 0x12) != 0 ? sub_18193CF90(v41) : 0.0;
        }

        v23 = v28 == v22;
      }

      LODWORD(v25) = !v23;
    }

    else
    {
      LODWORD(v25) = 1;
    }

    v12 += 9;
    v24 = 8;
LABEL_75:
    if (!v25)
    {
      if (*(*(a3 + 56) + v13))
      {
        v14 = v42 + v24 + 2;
      }

      else
      {
        v14 = v42 + 2;
      }

      v42 = v14;
      goto LABEL_20;
    }

    if (*(*(a3 + 56) + v13))
    {
      break;
    }

    v42 += v24 + 1;
    sub_181A12484(0, v41, &v42, v17);
LABEL_20:
    if (++v13 >= *(a3 + 16))
    {
      goto LABEL_88;
    }
  }

  v11 = *(a4 + 8) + 2;
LABEL_87:
  v42 = v11;
LABEL_88:
  v39 = *(a4 + 4);
  result = 0;
  if (v42 > v39)
  {
    v40 = v42 - v39;
    *(a4 + 4) = v42;
    *(a2 + 64) += v40;
  }

  return result;
}

uint64_t sub_181A12C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = 0;
  *a3 = 0;
  sub_181A12E14(v14, &v13, "SELECT");
  if (*(a2 + 16) >= 1)
  {
    v6 = **(a2 + 40);
    if (!v6)
    {
      v6 = "NULL";
    }

    sub_181A12E14(v14, &v13, "%s%s", " ", v6);
    if (*(a2 + 16) >= 2)
    {
      v7 = 1;
      do
      {
        v8 = *(*(a2 + 40) + 8 * v7);
        if (!v8)
        {
          v8 = "NULL";
        }

        sub_181A12E14(v14, &v13, "%s%s", ", ", v8);
        ++v7;
      }

      while (v7 < *(a2 + 16));
    }
  }

  v9 = v13;
  v10 = v14[0];
  if (!v13)
  {
    v9 = sub_1818954B4(a1, v14[0], 0xFFFFFFFFLL, 128, 0, a3, 0);
  }

  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_17:
      (*v11)(v10);
      return v9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
      goto LABEL_17;
    }
  }

  return v9;
}

char *sub_181A12E14(char *result, _DWORD *a2, char *a3, ...)
{
  va_start(va, a3);
  if (*a2)
  {
    return result;
  }

  v4 = result;
  result = sqlite3_vmprintf(a3, va);
  if (!result)
  {
    *a2 = 7;
    return result;
  }

  v5 = result;
  v6 = strlen(result);
  if (!*a2)
  {
    v7 = v6 & 0x3FFFFFFF;
    v8 = *(v4 + 2);
    v9 = *(v4 + 3);
    v10 = (v6 & 0x3FFFFFFFu) + 1 + v8;
    if (v10 <= v9)
    {
      v13 = v6;
      v16 = *v4;
      goto LABEL_18;
    }

    if (v9)
    {
      v11 = *(v4 + 3);
    }

    else
    {
      v11 = 128;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v11 < v10);
    if (v12 >= 1073741696 && (v11 = 2147483391, v10 > 2147483391) || (v13 = v6, v14 = *v4, v15 = sqlite3_initialize(), !v11) || v15 || (v16 = sub_18190287C(v14, v11, 0x100004077774924)) == 0)
    {
      *a2 = 7;
      goto LABEL_20;
    }

    *v4 = v16;
    *(v4 + 3) = v11;
    if (!*a2)
    {
      v8 = *(v4 + 2);
LABEL_18:
      memcpy((v16 + v8), v5, v13 & 0x3FFFFFFF);
      v17 = *(v4 + 2) + v7;
      *(v4 + 2) = v17;
      *(*v4 + v17) = 0;
    }
  }

LABEL_20:
  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v18)(v5);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
  --qword_1ED456A90;
  result = off_1ED452EB0(v5);
  v5 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v18 = &xmmword_1ED452F28;
    return (*v18)(v5);
  }

  return result;
}

BOOL sub_181A12FF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3)
  {
    return 1;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 8) + a2;
  if (v5 <= v4)
  {
    return 0;
  }

  if (v4)
  {
    v6 = *(a1 + 12);
  }

  else
  {
    v6 = 128;
  }

  do
  {
    v7 = v6;
    v6 *= 2;
  }

  while (v6 < v5);
  if (v7 < 1073741696 || (v6 = 2147483391, v5 <= 2147483391))
  {
    v10 = *a1;
    v11 = sqlite3_initialize();
    if (v6)
    {
      if (!v11)
      {
        v12 = sub_18190287C(v10, v6, 0x100004077774924);
        if (v12)
        {
          *a1 = v12;
          *(a1 + 12) = v6;
          return *a3 != 0;
        }
      }
    }

    *a3 = 7;
  }

  else
  {
    *a3 = 7;
  }

  return 1;
}

uint64_t sub_181A130E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 56);
    do
    {
      v9 = *a3;
      if (!a2 || *(v7 + v5))
      {
        if (*(v7 + v5))
        {
          v11 = a3 + 1;
          v10 = a3[1];
          v6 ^= v9 ^ (8 * v6);
          if ((v9 - 1) > 1)
          {
            if ((v10 & 0x80) != 0)
            {
              v17 = a3[2];
              if (a3[2] < 0)
              {
                v18 = a3[3];
                if (v18 < 0)
                {
                  v33 = 0;
                  v20 = a2;
                  v21 = a4;
                  v22 = sub_1818C7200(a3 + 1, &v33);
                  a2 = v20;
                  a4 = v21;
                  if (HIDWORD(v33))
                  {
                    v10 = -1;
                  }

                  else
                  {
                    v10 = v33;
                  }

                  v16 = v22;
                }

                else
                {
                  v10 = ((v10 & 0x7F) << 14) | ((v17 & 0x7F) << 7) | v18;
                  v16 = 3;
                }
              }

              else
              {
                v10 = v17 | ((v10 & 0x7F) << 7);
                v16 = 2;
              }
            }

            else
            {
              v16 = 1;
            }

            v23 = &v11[v16];
            if (v10 >= 1)
            {
              v24 = v10;
              v25 = v23;
              do
              {
                v26 = *v25++;
                v6 ^= v26 ^ (8 * v6);
                --v24;
              }

              while (v24);
            }

            a3 = &v23[v10];
          }

          else
          {
            v12 = bswap32(*(a3 + 5)) ^ (8 * v6) ^ v6;
            v6 = _byteswap_ulong(*(a3 + 1)) ^ (8 * v12) ^ v12;
            a3 += 9;
          }
        }

        else
        {
          v8 = 1;
          if (*a3)
          {
            v13 = v9 == 5;
          }

          else
          {
            v13 = 1;
          }

          if (!v13 && v9 != 255)
          {
            if ((v9 - 1) < 2)
            {
              v8 = 9;
            }

            else
            {
              v14 = a3[1];
              if (v14 < 0)
              {
                v19 = a3[2];
                if (a3[2] < 0)
                {
                  v27 = a3[3];
                  if (v27 < 0)
                  {
                    v33 = 0;
                    v28 = a2;
                    v29 = a4;
                    v30 = a3;
                    v31 = sub_1818C7200(a3 + 1, &v33);
                    a3 = v30;
                    a2 = v28;
                    a4 = v29;
                    if (HIDWORD(v33))
                    {
                      v14 = -1;
                    }

                    else
                    {
                      v14 = v33;
                    }

                    v15 = (v31 + 1);
                  }

                  else
                  {
                    v14 = ((v14 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v27;
                    v15 = 4;
                  }
                }

                else
                {
                  v14 = v19 | ((v14 & 0x7F) << 7);
                  v15 = 3;
                }
              }

              else
              {
                v15 = 2;
              }

              v8 = v15 + v14;
            }
          }

          a3 += v8;
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return v6 % a4;
}

uint64_t sub_181A13338(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*(v1 + 32) + 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181A13358(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*v1 + 368);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t sub_181A13378(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2)
  {
    v7 = 80;
  }

  else
  {
    v7 = 84;
  }

  sub_181A141F4(a1, v7, a4);
  sub_181A14770(a1, *(a3 + 16), a4);
  v8 = *(a3 + 16);
  if (v8 >= 1 && !*a4)
  {
    v9 = *(a3 + 56);
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = v10 + v8;
    if ((v10 + v8) <= v11)
    {
      v17 = *a1;
      goto LABEL_19;
    }

    if (v11)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = 128;
    }

    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v13 < v12);
    if (v14 > 1073741695 && (v13 = 2147483391, v12 > 2147483391) || (v15 = *a1, v16 = sqlite3_initialize(), !v13) || v16 || (v17 = sub_18190287C(v15, v13, 0x100004077774924)) == 0)
    {
      *a4 = 7;
      goto LABEL_21;
    }

    *a1 = v17;
    *(a1 + 12) = v13;
    if (!*a4)
    {
      v10 = *(a1 + 8);
LABEL_19:
      memcpy((v17 + v10), v9, v8);
      *(a1 + 8) += v8;
    }
  }

LABEL_21:
  v18 = *(a3 + 8);
  result = strlen(v18);
  if ((result & 0x80000000) == 0 && !*a4)
  {
    v20 = (result + 1);
    v21 = *(a1 + 8);
    v22 = *(a1 + 12);
    v23 = v21 + v20;
    if ((v21 + v20) <= v22)
    {
      result = *a1;
LABEL_36:
      result = memcpy((result + v21), v18, v20);
      *(a1 + 8) += v20;
      return result;
    }

    if (v22)
    {
      v24 = *(a1 + 12);
    }

    else
    {
      v24 = 128;
    }

    do
    {
      v25 = v24;
      v24 *= 2;
    }

    while (v24 < v23);
    if (v25 <= 1073741695 || (v24 = 2147483391, v23 <= 2147483391))
    {
      v26 = *a1;
      result = sqlite3_initialize();
      if (v24)
      {
        if (!result)
        {
          result = sub_18190287C(v26, v24, 0x100004077774924);
          if (result)
          {
            *a1 = result;
            *(a1 + 12) = v24;
            if (*a4)
            {
              return result;
            }

            v21 = *(a1 + 8);
            goto LABEL_36;
          }
        }
      }
    }

    *a4 = 7;
  }

  return result;
}

uint64_t sub_181A13594(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v112[0] = 0;
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  if (sqlite3_initialize() || (v13 = sub_18190287C(0, 0x100uLL, 0x100004077774924)) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 7;
    v112[0] = 7;
    v18 = 128;
  }

  else
  {
    v17 = 0;
    v110 = v13;
    *v13 = 3219500;
    v111 = 0x10000000003;
    v16 = 3;
    v15 = 1;
    v18 = 256;
    v14 = 256;
  }

  if (a4)
  {
    v19 = "sqlite_stat1";
    for (i = a4; ; ++i)
    {
      if (*v19 == *i)
      {
        if (!*v19)
        {
          if (!v15)
          {
            goto LABEL_23;
          }

          v21 = v16 | 0x18;
          if (v21 <= v14)
          {
            goto LABEL_22;
          }

          v98 = a2;
          v22 = v13;
          do
          {
            v23 = v18;
            v18 *= 2;
          }

          while (v18 < v21);
          if (v23 <= 1073741695)
          {
            v24 = v18;
          }

          else
          {
            v24 = 2147483391;
          }

          v25 = sqlite3_initialize();
          v26 = 0;
          v17 = 7;
          if (v24 && !v25)
          {
            v13 = sub_18190287C(v22, v24, 0x100004077774924);
            if (!v13)
            {
              goto LABEL_23;
            }

            v110 = v13;
            a2 = v98;
LABEL_22:
            strcpy(&v13[v16], " AND (?6 OR ?3 IS stat)");
            v17 = v112[0];
            if (v112[0])
            {
LABEL_23:
              v26 = 0;
              goto LABEL_24;
            }

            if (sqlite3_initialize())
            {
              v26 = 0;
            }

            else
            {
              v88 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
              v26 = v88;
              if (v88)
              {
                strcpy(v88, "tbl, idx");
                v89 = v109;
                if (v109 + 45 <= SHIDWORD(v109))
                {
                  v93 = v108;
                }

                else
                {
                  if (HIDWORD(v109))
                  {
                    v90 = SHIDWORD(v109);
                  }

                  else
                  {
                    v90 = 128;
                  }

                  do
                  {
                    v91 = v90;
                    v90 *= 2;
                  }

                  while (v90 < v109 + 45);
                  if (v91 > 1073741695)
                  {
                    if (v109 > 2147483346)
                    {
                      goto LABEL_174;
                    }

                    v90 = 2147483391;
                  }

                  v92 = sqlite3_initialize();
                  v17 = 7;
                  if (!v90)
                  {
                    goto LABEL_24;
                  }

                  if (v92)
                  {
                    goto LABEL_24;
                  }

                  v93 = sub_18190287C(v108, v90, 0x100004077774924);
                  if (!v93)
                  {
                    goto LABEL_24;
                  }

                  v108 = v93;
                }

                qmemcpy((v93 + v109), "?1, (CASE WHEN ?2=X'' THEN NULL ELSE ?2 END)", 44);
                LODWORD(v109) = v109 + 44;
                *(v93 + v89 + 44) = 0;
                if (!sqlite3_initialize())
                {
                  v94 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
                  if (v94)
                  {
                    v31 = v94;
                    strcpy(v94, "tbl, ?2, stat");
                    v27 = v110;
                    goto LABEL_158;
                  }
                }

                v17 = 7;
                goto LABEL_24;
              }
            }

LABEL_174:
            v17 = 7;
          }

LABEL_24:
          v27 = v110;
          v28 = 0;
          if (!v110)
          {
            goto LABEL_137;
          }

LABEL_131:
          v78 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v27);
            --qword_1ED456A90;
            off_1ED452EB0(v27);
            v27 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_137;
            }

            v78 = &xmmword_1ED452F28;
          }

          (*v78)(v27);
          goto LABEL_137;
        }
      }

      else if (byte_181A20298[*v19] != byte_181A20298[*i])
      {
        break;
      }

      ++v19;
    }
  }

  if (a5 < 1)
  {
    v31 = 0;
    v26 = 0;
    v27 = v110;
    if (!v17)
    {
      goto LABEL_158;
    }

LABEL_130:
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v99 = a2;
  v95 = a3;
  v96 = a1;
  v97 = a8;
  v29 = 0;
  v103 = 0;
  v104 = 0;
  v26 = 0;
  v30 = 0;
  v31 = 0;
  v32 = &byte_181A2878D;
  v101 = a5;
  v105 = 0;
  v106 = a5;
  v33 = a7;
  do
  {
    if (v30 && !v112[0])
    {
      v34 = v30;
      v35 = v30 + 3;
      if (v35 <= v104)
      {
        goto LABEL_44;
      }

      if (v104)
      {
        v36 = v104;
      }

      else
      {
        v36 = 128;
      }

      do
      {
        v37 = v36;
        v36 *= 2;
      }

      while (v36 < v35);
      if (v37 <= 1073741695 || (v36 = 2147483391, v30 <= 2147483388))
      {
        v38 = sqlite3_initialize();
        if (v36)
        {
          if (!v38)
          {
            v39 = sub_18190287C(v31, v36, 0x100004077774924);
            if (v39)
            {
              v104 = v36;
              v31 = v39;
LABEL_44:
              *(v31 + v30) = 8236;
              v30 += 2;
              *(v31 + v34 + 2) = 0;
              goto LABEL_46;
            }
          }
        }
      }

      v112[0] = 7;
    }

LABEL_46:
    v40 = *(a6 + 8 * v29);
    if (v40)
    {
      v41 = 2 * (strlen(*(a6 + 8 * v29)) & 0x3FFFFFFF) + 4;
      if (v112[0])
      {
        goto LABEL_48;
      }
    }

    else
    {
      v41 = 4;
      if (v112[0])
      {
LABEL_48:
        if (*(v33 + v29))
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }
    }

    v45 = v41 + v30;
    v46 = v104;
    if (v45 <= v104)
    {
      goto LABEL_66;
    }

    if (v104)
    {
      v47 = v104;
    }

    else
    {
      v47 = 128;
    }

    do
    {
      v48 = v47;
      v47 *= 2;
    }

    while (v47 < v45);
    if (v48 <= 1073741695 || (v47 = 2147483391, v45 <= 2147483391))
    {
      v49 = sqlite3_initialize();
      if (v47)
      {
        if (!v49)
        {
          v50 = sub_18190287C(v31, v47, 0x100004077774924);
          if (v50)
          {
            v46 = v47;
            v31 = v50;
LABEL_66:
            *(v31 + v30) = 34;
            v51 = (v31 + v30 + 1);
            v104 = v46;
            if (v40)
            {
              while (1)
              {
                v52 = *v40;
                if (v52 == 34)
                {
                  *v51++ = 34;
                  LOBYTE(v52) = *v40;
                }

                else if (!*v40)
                {
                  break;
                }

                ++v40;
                *v51++ = v52;
              }
            }

            *v51 = 34;
            v30 = v51 - v31 + 1;
            *(v31 + v30) = 0;
            if (!*(v33 + v29))
            {
              goto LABEL_73;
            }

LABEL_49:
            if (v32)
            {
              v42 = strlen(v32) & 0x3FFFFFFF;
              if (v112[0])
              {
                goto LABEL_51;
              }

LABEL_75:
              v53 = v42 + 1 + v105;
              if (v53 <= v103)
              {
LABEL_86:
                memcpy((v26 + v105), v32, v42);
                *(v26 + v42 + v105) = 0;
                v105 += v42;
                if (!v32)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                if (v103)
                {
                  v54 = v103;
                }

                else
                {
                  v54 = 128;
                }

                do
                {
                  v55 = v54;
                  v54 *= 2;
                }

                while (v54 < v53);
                if (v55 <= 1073741695 || (v54 = 2147483391, v53 <= 2147483391))
                {
                  v56 = sqlite3_initialize();
                  if (v54)
                  {
                    if (!v56)
                    {
                      v57 = sub_18190287C(v26, v54, 0x100004077774924);
                      if (v57)
                      {
                        v103 = v54;
                        v26 = v57;
                        goto LABEL_86;
                      }
                    }
                  }
                }

                v112[0] = 7;
                if (!v32)
                {
LABEL_87:
                  v43 = 0;
                  if (!v112[0])
                  {
LABEL_88:
                    v58 = v31;
                    v59 = v26;
                    v60 = v109;
                    v61 = v109 + (v43 + 1);
                    if (v61 <= SHIDWORD(v109))
                    {
                      v67 = v108;
LABEL_102:
                      memcpy((v67 + v60), v32, v43);
                      LODWORD(v109) = v60 + v43;
                      *(v67 + (v60 + v43)) = 0;
                      v44 = 1;
                    }

                    else
                    {
                      if (HIDWORD(v109))
                      {
                        v62 = SHIDWORD(v109);
                      }

                      else
                      {
                        v62 = 128;
                      }

                      do
                      {
                        v63 = v62;
                        v62 *= 2;
                      }

                      while (v62 < v61);
                      if (v63 <= 1073741695 || (v62 = 2147483391, v61 <= 2147483391))
                      {
                        v64 = v108;
                        v65 = sqlite3_initialize();
                        if (v62)
                        {
                          if (!v65)
                          {
                            v66 = sub_18190287C(v64, v62, 0x100004077774924);
                            if (v66)
                            {
                              v67 = v66;
                              v108 = v66;
                              HIDWORD(v109) = v62;
                              goto LABEL_102;
                            }
                          }
                        }
                      }

                      v44 = 0;
                      v112[0] = 7;
                    }

                    v26 = v59;
                    v31 = v58;
                    v33 = a7;
LABEL_107:
                    v68 = *(a6 + 8 * v29);
                    if (v68)
                    {
                      v69 = 2 * (strlen(*(a6 + 8 * v29)) & 0x3FFFFFFF) + 4;
                      if (v44)
                      {
LABEL_111:
                        v70 = v69 + v105;
                        v71 = v103;
                        if (v70 <= v103)
                        {
                          goto LABEL_122;
                        }

                        if (v103)
                        {
                          v71 = v103;
                        }

                        else
                        {
                          v71 = 128;
                        }

                        do
                        {
                          v72 = v71;
                          v71 *= 2;
                        }

                        while (v71 < v70);
                        if ((v72 <= 1073741695 || (v71 = 2147483391, v70 <= 2147483391)) && (v73 = sqlite3_initialize(), v71) && !v73 && (v74 = sub_18190287C(v26, v71, 0x100004077774924)) != 0)
                        {
                          v26 = v74;
LABEL_122:
                          *(v26 + v105) = 34;
                          v75 = (v26 + v105 + 1);
                          v103 = v71;
                          if (v68)
                          {
                            while (1)
                            {
                              v76 = *v68;
                              if (v76 == 34)
                              {
                                *v75++ = 34;
                                LOBYTE(v76) = *v68;
                              }

                              else if (!*v68)
                              {
                                break;
                              }

                              ++v68;
                              *v75++ = v76;
                            }
                          }

                          *v75 = 34;
                          v77 = v75 - v26 + 1;
                          *(v26 + v77) = 0;
                          v105 = v77;
                        }

                        else
                        {
                          v112[0] = 7;
                        }
                      }
                    }

                    else
                    {
                      v69 = 4;
                      if (v44)
                      {
                        goto LABEL_111;
                      }
                    }

                    sub_181A12E14(&v108, v112, "?%d", ++v29);
                    v32 = ", ";
                    continue;
                  }

LABEL_53:
                  v44 = 0;
                  goto LABEL_107;
                }
              }
            }

            else
            {
              v42 = 0;
              if (!v112[0])
              {
                goto LABEL_75;
              }

LABEL_51:
              if (!v32)
              {
                goto LABEL_87;
              }
            }

            v43 = strlen(v32) & 0x3FFFFFFF;
            if (!v112[0])
            {
              goto LABEL_88;
            }

            goto LABEL_53;
          }
        }
      }
    }

    v112[0] = 7;
    if (*(v33 + v29))
    {
      goto LABEL_49;
    }

LABEL_73:
    sub_181A12E14(&v110, v112, " AND (?%d OR ?%d IS %w.%w)", v29 + v101 + 1, v29 + 1, a4, *(a6 + 8 * v29));
    ++v29;
  }

  while (v29 != v106);
  v17 = v112[0];
  a1 = v96;
  a8 = v97;
  a3 = v95;
  a2 = v99;
  v27 = v110;
  if (v112[0])
  {
    goto LABEL_130;
  }

LABEL_158:
  v83 = &byte_181A2878D;
  if (a2)
  {
    v83 = v27;
  }

  v84 = sqlite3_mprintf("SELECT %s%s FROM %Q.%Q WHERE (%s) IS (%s)", v31, v83, a3, a4, v26, v108);
  if (!v84)
  {
    v17 = 7;
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v85 = v84;
  v17 = sub_1818954B4(a1, v84, 0xFFFFFFFFLL, 128, 0, a8, 0);
  v86 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_166;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v85);
  --qword_1ED456A90;
  off_1ED452EB0(v85);
  v85 = xmmword_1ED456AF0;
  if (!xmmword_1ED456AF0)
  {
    v28 = v31;
    if (!v27)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v86 = &xmmword_1ED452F28;
LABEL_166:
  (*v86)(v85);
  v28 = v31;
  if (v27)
  {
    goto LABEL_131;
  }

LABEL_137:
  if (v26)
  {
    v79 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_143;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
    --qword_1ED456A90;
    off_1ED452EB0(v26);
    v26 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v79 = &xmmword_1ED452F28;
LABEL_143:
      (*v79)(v26);
    }
  }

  v80 = v108;
  if (v108)
  {
    v81 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_150;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v80);
    --qword_1ED456A90;
    off_1ED452EB0(v80);
    v80 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v81 = &xmmword_1ED452F28;
LABEL_150:
      (*v81)(v80);
    }
  }

  if (v28)
  {
    v82 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_168;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
    --qword_1ED456A90;
    off_1ED452EB0(v28);
    if (xmmword_1ED456AF0)
    {
      v82 = &xmmword_1ED452F28;
LABEL_168:
      (*v82)();
    }
  }

  return v17;
}

uint64_t sub_181A141F4(uint64_t result, char a2, _DWORD *a3)
{
  if (!*a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v5 = v4;
    if (v4 < v3)
    {
      v6 = *result;
LABEL_4:
      *(result + 8) = v4 + 1;
      *(v6 + v5) = a2;
      return result;
    }

    if (!v3)
    {
      v3 = 128;
    }

    v7 = v3;
    do
    {
      v8 = v7;
      v7 *= 2;
    }

    while (v7 <= v4);
    if (v8 < 1073741696 || (v7 = 2147483391, v4 < 2147483391))
    {
      v10 = a2;
      v11 = result;
      v12 = *result;
      result = sqlite3_initialize();
      if (v7 && !result && (result = sub_18190287C(v12, v7, 0x100004077774924)) != 0)
      {
        v6 = result;
        *v11 = result;
        *(v11 + 12) = v7;
        if (!*a3)
        {
          result = v11;
          a2 = v10;
          v4 = *(v11 + 8);
          v5 = v4;
          goto LABEL_4;
        }
      }

      else
      {
        *a3 = 7;
      }
    }

    else
    {
      *a3 = 7;
    }
  }

  return result;
}

unint64_t sub_181A14308(unint64_t result, sqlite3_stmt *a2, int iCol, _DWORD *a4)
{
  if (*a4)
  {
    return result;
  }

  v7 = result;
  result = sqlite3_column_type(a2, iCol);
  v8 = result;
  if (*a4)
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 8);
  v10 = *(v7 + 12);
  v11 = v9;
  if (v9 < v10)
  {
    result = *v7;
LABEL_5:
    *(v7 + 8) = v9 + 1;
    *(result + v11) = v8;
    goto LABEL_19;
  }

  if (!v10)
  {
    v10 = 128;
  }

  v12 = v10;
  do
  {
    v13 = v12;
    v12 *= 2;
  }

  while (v12 <= v9);
  if (v13 > 1073741695)
  {
    if (v9 > 2147483390)
    {
LABEL_18:
      *a4 = 7;
      goto LABEL_19;
    }

    v12 = 2147483391;
  }

  v14 = *v7;
  result = sqlite3_initialize();
  if (!v12)
  {
    goto LABEL_18;
  }

  if (result)
  {
    goto LABEL_18;
  }

  result = sub_18190287C(v14, v12, 0x100004077774924);
  if (!result)
  {
    goto LABEL_18;
  }

  *v7 = result;
  *(v7 + 12) = v12;
  if (!*a4)
  {
    v9 = *(v7 + 8);
    v11 = v9;
    goto LABEL_5;
  }

LABEL_19:
  if ((v8 - 1) > 1)
  {
    goto LABEL_40;
  }

  if (v8 == 1)
  {
    result = sqlite3_column_int64(a2, iCol);
    if (*a4)
    {
      goto LABEL_40;
    }
  }

  else
  {
    result = sqlite3_column_double(a2, iCol);
    if (*a4)
    {
      goto LABEL_40;
    }
  }

  v15 = *(v7 + 8);
  v16 = *(v7 + 12);
  if (v15 + 8 <= v16)
  {
    v21 = *v7;
LABEL_38:
    *(v21 + v15) = bswap64(result);
    *(v7 + 8) += 8;
    goto LABEL_40;
  }

  if (v16)
  {
    v17 = *(v7 + 12);
  }

  else
  {
    v17 = 128;
  }

  do
  {
    v18 = v17;
    v17 *= 2;
  }

  while (v17 < v15 + 8);
  if (v18 > 1073741695)
  {
    if (v15 > 2147483383)
    {
      goto LABEL_39;
    }

    v17 = 2147483391;
  }

  v19 = result;
  v20 = *v7;
  result = sqlite3_initialize();
  if (v17)
  {
    if (!result)
    {
      result = sub_18190287C(v20, v17, 0x100004077774924);
      if (result)
      {
        v21 = result;
        *v7 = result;
        *(v7 + 12) = v17;
        if (*a4)
        {
          goto LABEL_40;
        }

        result = v19;
        v15 = *(v7 + 8);
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  *a4 = 7;
LABEL_40:
  if ((v8 - 3) > 1)
  {
    return result;
  }

  if (v8 == 4)
  {
    v22 = sqlite3_column_blob(a2, iCol);
  }

  else
  {
    v22 = sqlite3_column_text(a2, iCol);
  }

  v23 = v22;
  result = sqlite3_column_bytes(a2, iCol);
  v24 = result;
  v26 = v8 == 4 && result == 0;
  if (!v23 && !v26)
  {
    goto LABEL_52;
  }

  if (!*a4)
  {
    v27 = *(v7 + 8);
    v28 = *(v7 + 12);
    if (v27 + 9 <= v28)
    {
      result = *v7;
LABEL_68:
      result += v27;
      if (v24 > 0x7F)
      {
        if (v24 >> 14)
        {
          result = sub_1819436D0(result, v24);
          v32 = result;
        }

        else
        {
          *result = (v24 >> 7) | 0x80;
          *(result + 1) = v24 & 0x7F;
          v32 = 2;
        }
      }

      else
      {
        *result = v24;
        v32 = 1;
      }

      *(v7 + 8) += v32;
      goto LABEL_75;
    }

    if (v28)
    {
      v29 = *(v7 + 12);
    }

    else
    {
      v29 = 128;
    }

    do
    {
      v30 = v29;
      v29 *= 2;
    }

    while (v29 < v27 + 9);
    if (v30 > 1073741695)
    {
      if (v27 > 2147483382)
      {
        goto LABEL_70;
      }

      v29 = 2147483391;
    }

    v31 = *v7;
    result = sqlite3_initialize();
    if (v29)
    {
      if (!result)
      {
        result = sub_18190287C(v31, v29, 0x100004077774924);
        if (result)
        {
          *v7 = result;
          *(v7 + 12) = v29;
          if (*a4)
          {
            goto LABEL_75;
          }

          v27 = *(v7 + 8);
          goto LABEL_68;
        }
      }
    }

LABEL_70:
    *a4 = 7;
  }

LABEL_75:
  if (v24 >= 1 && !*a4)
  {
    v33 = *(v7 + 8);
    v34 = *(v7 + 12);
    v35 = v33 + v24;
    if (v35 <= v34)
    {
      result = *v7;
      goto LABEL_90;
    }

    if (v34)
    {
      v36 = *(v7 + 12);
    }

    else
    {
      v36 = 128;
    }

    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v36 < v35);
    if (v37 > 1073741695 && (v36 = 2147483391, v35 > 2147483391) || (v38 = *v7, result = sqlite3_initialize(), !v36) || result || (result = sub_18190287C(v38, v36, 0x100004077774924)) == 0)
    {
LABEL_52:
      *a4 = 7;
      return result;
    }

    *v7 = result;
    *(v7 + 12) = v36;
    if (!*a4)
    {
      v33 = *(v7 + 8);
LABEL_90:
      result = memcpy((result + v33), v23, v24);
      *(v7 + 8) += v24;
    }
  }

  return result;
}

uint64_t sub_181A14770(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  result = sub_181A12FF4(a1, 9, a3);
  if (!result)
  {
    result = *a1 + *(a1 + 8);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        result = sub_1819436D0(result, a2);
        v6 = result;
      }

      else
      {
        *result = (a2 >> 7) | 0x80;
        *(result + 1) = a2 & 0x7F;
        v6 = 2;
      }
    }

    else
    {
      *result = a2;
      v6 = 1;
    }

    *(a1 + 8) += v6;
  }

  return result;
}

uint64_t sub_181A147FC(uint64_t a1, int a2)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (!*(a1 + 64))
  {
    result = 0;
    v5 = *(a1 + 24);
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7 + a2 < v5 || result != 0)
      {
        return result;
      }

      v9 = dword_1EA8315B8;
      v20 = dword_1EA8315B8;
      if (!*a1)
      {
        if (*(a1 + 48))
        {
          v18 = *(a1 + 4);
          if (v18 >= dword_1EA8315B8)
          {
            v19 = (*(a1 + 40) - v18);
            if (v19 >= 1)
            {
              memmove(*(a1 + 32), (*(a1 + 32) + v18), v19);
              LODWORD(v18) = *(a1 + 4);
              v7 = *(a1 + 8);
              LODWORD(v19) = *(a1 + 40) - v18;
              v9 = v20;
            }

            *(a1 + 40) = v19;
            *(a1 + 4) = 0;
            *(a1 + 8) = v7 - v18;
            *(a1 + 24) = v19;
          }
        }
      }

      v10 = *(a1 + 40);
      v11 = *(a1 + 44);
      v12 = v10 + v9;
      if (v12 <= v11)
      {
        v17 = *(a1 + 32);
      }

      else
      {
        if (v11)
        {
          v13 = *(a1 + 44);
        }

        else
        {
          v13 = 128;
        }

        do
        {
          v14 = v13;
          v13 *= 2;
        }

        while (v13 < v12);
        if (v14 >= 1073741696)
        {
          v13 = 2147483391;
          if (v12 > 2147483391)
          {
            goto LABEL_7;
          }
        }

        v15 = *(a1 + 32);
        v16 = sqlite3_initialize();
        result = 7;
        if (!v13 || v16)
        {
          goto LABEL_8;
        }

        v17 = sub_18190287C(v15, v13, 0x100004077774924);
        if (!v17)
        {
LABEL_7:
          result = 7;
          goto LABEL_8;
        }

        *(a1 + 32) = v17;
        *(a1 + 44) = v13;
        v10 = *(a1 + 40);
      }

      result = (*(a1 + 48))(*(a1 + 56), v17 + v10, &v20);
      if (!v20)
      {
        *(a1 + 64) = 1;
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 24) = *(a1 + 40);
        return result;
      }

      *(a1 + 40) += v20;
LABEL_8:
      v6 = *(a1 + 64);
      *(a1 + 16) = *(a1 + 32);
      v5 = *(a1 + 40);
      *(a1 + 24) = v5;
      if (v6)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_181A149F4(uint64_t a1, int a2, int *a3)
{
  if (a2 < 1)
  {
    result = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = sub_181A147FC(a1, v6 + 10);
      if (result)
      {
        break;
      }

      v9 = *(a1 + 16);
      v10 = *(a1 + 8);
      v11 = v6 + 1;
      v12 = *(v9 + v10 + v6);
      if ((v12 - 3) > 1)
      {
        result = 0;
        if ((v12 - 1) >= 2)
        {
          ++v6;
        }

        else
        {
          v6 += 9;
        }
      }

      else
      {
        v13 = (v9 + v10 + v11);
        v14 = *v13;
        if (v14 < 0)
        {
          v16 = v13[1];
          if (v13[1] < 0)
          {
            v17 = v13[2];
            if (v17 < 0)
            {
              v19 = 0;
              v15 = sub_1818C7200(v13, &v19);
              if (HIDWORD(v19))
              {
                v14 = -1;
              }

              else
              {
                v14 = v19;
              }
            }

            else
            {
              v14 = ((v14 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v17;
              v15 = 3;
            }
          }

          else
          {
            v14 = v16 | ((v14 & 0x7F) << 7);
            v15 = 2;
          }
        }

        else
        {
          v15 = 1;
        }

        v6 = v14 + v11 + v15;
        result = sub_181A147FC(a1, v6);
        if (result)
        {
          break;
        }
      }
    }

    while (v7++ < a2);
  }

  *a3 = v6;
  return result;
}

uint64_t sub_181A14B3C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = a5;
  if (a5)
  {
    *a5 = 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a2;
  v33 = a2;
  while (1)
  {
    if (!a3 || *(a3 + v9))
    {
      result = sub_181A147FC(a1, 9);
      if (result)
      {
        return result;
      }

      v12 = *(a1 + 8);
      if (v12 >= *(a1 + 24))
      {
        v31 = 242657;
        goto LABEL_55;
      }

      v13 = *(a1 + 16);
      *(a1 + 8) = v12 + 1;
      v14 = *(v13 + v12);
      if (*(v13 + v12))
      {
        if (v5)
        {
          *v5 = 0;
        }

        v15 = sub_181902484(64, 0x10F2040695A4BFELL);
        if (!v15)
        {
          *(a4 + 8 * v9) = 0;
          return 7;
        }

        *(v15 + 32) = 0u;
        *(v15 + 48) = 0u;
        *v15 = 0u;
        *(v15 + 16) = 0u;
        *(v15 + 24) = 0;
        *(a4 + 8 * v9) = v15;
        *(v15 + 20) = 1;
        v16 = *(a1 + 8);
        v17 = (*(a1 + 16) + v16);
        if (v14 - 3 <= 1)
        {
          v18 = *v17;
          if ((v18 & 0x80000000) != 0)
          {
            v21 = v17[1];
            if (v17[1] < 0)
            {
              v23 = v17[2];
              if (v23 < 0)
              {
                v34 = 0;
                v19 = sub_1818C7200(v17, &v34);
                if (HIDWORD(v34))
                {
                  v18 = -1;
                }

                else
                {
                  v18 = v34;
                }
              }

              else
              {
                v18 = ((v18 & 0x7F) << 14) | ((v21 & 0x7F) << 7) | v23;
                v19 = 3;
              }
            }

            else
            {
              v18 = v21 | ((v18 & 0x7F) << 7);
              v19 = 2;
            }
          }

          else
          {
            v19 = 1;
          }

          *(a1 + 8) = v19 + v16;
          result = sub_181A147FC(a1, v18);
          if (result)
          {
            return result;
          }

          if ((v18 & 0x80000000) != 0 || (v25 = *(a1 + 8), v18 > *(a1 + 24) - v25))
          {
            v31 = 242677;
            goto LABEL_55;
          }

          v26 = v14 == 3;
          v27 = *(a4 + 8 * v9);
          v28 = *(a1 + 16);
          if (sqlite3_initialize())
          {
            result = 7;
          }

          else
          {
            v32 = v5;
            v29 = sub_181902484(v18 + 1, 2881293954);
            if (v29)
            {
              v30 = v29;
              memcpy(v29, (v28 + v25), v18);
              if (v27)
              {
                sub_1818900D0(v27, v30, v18, v26, sqlite3_free);
              }

              result = 0;
            }

            else
            {
              result = 7;
            }

            v5 = v32;
          }

          goto LABEL_46;
        }

        if (v14 <= 2)
        {
          break;
        }
      }
    }

    result = 0;
LABEL_47:
    if (++v9 >= v10)
    {
      return result;
    }
  }

  if (*(a1 + 24) - v16 > 7)
  {
    v20 = bswap64(*v17);
    if (v14 == 1)
    {
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v15, v20);
        result = 0;
      }

      else
      {
        v24 = v15;
        result = 0;
        *v24 = v20;
        *(v24 + 20) = 4;
      }

      v18 = 8;
    }

    else
    {
      v22 = v15;
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v15);
      }

      else
      {
        *(v15 + 20) = 1;
      }

      v18 = 8;
      result = 0;
      *v22 = v20;
      *(v22 + 20) = 8;
    }

LABEL_46:
    *(a1 + 8) += v18;
    v10 = v33;
    if (result)
    {
      return result;
    }

    goto LABEL_47;
  }

  v31 = 242687;
LABEL_55:

  return sub_18190EDA8(v31);
}

uint64_t sub_181A14ECC(uint64_t a1, _DWORD *a2)
{
  result = sub_181A147FC(a1, 9);
  if (result)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v6 = (*(a1 + 16) + *(a1 + 8));
  v7 = *v6;
  if ((v7 & 0x80000000) == 0)
  {
    v5 = 1;
    goto LABEL_8;
  }

  v8 = v6[1];
  if ((v6[1] & 0x80000000) == 0)
  {
    v7 = v8 | ((v7 & 0x7F) << 7);
    v5 = 2;
    goto LABEL_8;
  }

  v12 = v6[2];
  if (v12 < 0)
  {
    v13 = 0;
    v5 = sub_1818C7200(v6, &v13);
    v7 = v13;
    if (HIDWORD(v13))
    {
LABEL_20:
      result = sub_18190EDA8(242735);
      goto LABEL_3;
    }
  }

  else
  {
    v7 = ((v7 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | v12;
    v5 = 3;
  }

  if (v7 > 0x10000)
  {
    goto LABEL_20;
  }

LABEL_8:
  v5 += v7;
LABEL_9:
  while (1)
  {
    result = sub_181A147FC(a1, v5 + 100);
    if (result)
    {
      break;
    }

    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    if (v9 + v5 < v10)
    {
      v11 = v9 + v5;
      while (*(*(a1 + 16) + v9 + v5))
      {
        ++v5;
        if (++v11 >= v10)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      break;
    }
  }

LABEL_3:
  *a2 = v5 + 1;
  return result;
}

uint64_t sub_181A14FF8(sqlite3 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a4 + 96);
  if (v6)
  {
    v10 = a3;
    v12 = &unk_1ED456000;
    while (1)
    {
      v13 = *(a4 + 88);
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      v14 = *(a4 + 80);
      if (!sqlite3_initialize())
      {
        break;
      }

      v15 = 7;
      if (!v13)
      {
        goto LABEL_35;
      }

LABEL_29:
      v28 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v29 = v12[350];
        if (v29)
        {
          xmmword_1ED452F18(v29);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
        --qword_1ED456A90;
        off_1ED452EB0(v13);
        v13 = v12[350];
        if (!v13)
        {
          goto LABEL_35;
        }

        v28 = &xmmword_1ED452F28;
      }

      (*v28)(v13);
LABEL_35:
      if (v15)
      {
        return v15;
      }

      v30 = *(a4 + 96);
      if (v30 >= v6)
      {
        *(a4 + 76) = 0;
      }

      v6 = v30;
      if (!v30)
      {
        return 0;
      }
    }

    v16 = sub_181902484(152, 0x10B00400C7E3458);
    if (!v16)
    {
      v15 = 7;
      goto LABEL_28;
    }

    v17 = v16;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 144) = 0;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 16) = v13;
    *(v16 + 24) = v6;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 1;
    *(v16 + 96) = 1;
    v18 = *(a4 + 32);
    v19 = 16 * v18;
    *(v16 + 88) = a2;
    *(v16 + 92) = v14;
    *(v16 + 120) = v18;
    *(v16 + 136) = *(a4 + 48);
    v20 = *(v16 + 84);
    v21 = 16 * v18 + *(v16 + 80);
    *(v16 + 112) = v10;
    if (v21 <= v20)
    {
      v26 = *(v16 + 72);
    }

    else
    {
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 128;
      }

      do
      {
        v23 = v22;
        v22 *= 2;
      }

      while (v22 < v21);
      if (v23 >= 1073741696 && (v22 = 2147483391, v21 > 2147483391) || (v24 = *(v16 + 72), v25 = sqlite3_initialize(), !v22) || v25 || (v26 = sub_18190287C(v24, v22, 0x100004077774924)) == 0)
      {
        *(v17 + 144) = *(v17 + 72);
        v15 = 7;
        v10 = a3;
LABEL_26:
        sqlite3changeset_finalize(v17);
LABEL_28:
        v12 = &unk_1ED456000;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      *(v17 + 72) = v26;
      *(v17 + 84) = v22;
      v10 = a3;
    }

    *(v17 + 144) = v26;
    bzero(v26, v19);
    while (sub_181921A00(v17, 0, 0, 0) == 100)
    {
      v27 = sub_181A16A3C(a1, v17, a4, a5, a6);
      if (v27)
      {
        v15 = v27;
        goto LABEL_26;
      }
    }

    v15 = sqlite3changeset_finalize(v17);
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_181A152C0(uint64_t a1, uint64_t a2)
{
  result = sub_181A13594(a1, *(a2 + 122), "main", "sqlite_stat1", *(a2 + 32), *(a2 + 40), *(a2 + 48), (a2 + 24));
  if (!result)
  {
    result = sub_1818954B4(a1, "INSERT INTO main.sqlite_stat1 VALUES(?1, CASE WHEN length(?2)=0 AND typeof(?2)='blob' THEN NULL ELSE ?2 END, ?3)", 0xFFFFFFFFLL, 128, 0, (a2 + 16), 0);
    if (!result)
    {

      return sub_1818954B4(a1, "DELETE FROM main.sqlite_stat1 WHERE tbl=?1 AND idx IS CASE WHEN length(?2)=0 AND typeof(?2)='blob' THEN NULL ELSE ?2 END AND (?4 OR stat IS ?3)", 0xFFFFFFFFLL, 128, 0, (a2 + 8), 0);
    }
  }

  return result;
}

uint64_t sub_181A15370(uint64_t a1, const char *a2, uint64_t a3)
{
  v136 = *MEMORY[0x1E69E9840];
  if (sqlite3_initialize())
  {
    v134 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v17 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
  v5 = v17;
  if (!v17)
  {
    v134 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    v8 = 7;
    v9 = 1;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v9 = 0;
  v8 = 0;
  strcpy(v17, "DELETE FROM main.");
  v7 = 17;
  v6 = 1;
  v134 = 256;
  if (a2)
  {
LABEL_4:
    v10 = 2 * (strlen(a2) & 0x3FFFFFFF) + 4;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_19:
    LODWORD(v12) = v134;
    if (!v8)
    {
      goto LABEL_29;
    }

LABEL_20:
    v15 = v8;
    goto LABEL_43;
  }

LABEL_18:
  v10 = 4;
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_5:
  v11 = v10 + v7;
  v12 = v134;
  if (v11 <= v134)
  {
    v8 = 0;
  }

  else
  {
    if (v9)
    {
      v12 = 128;
    }

    else
    {
      v12 = v134;
    }

    do
    {
      v13 = v12;
      v12 *= 2;
    }

    while (v12 < v11);
    if (v13 > 1073741695)
    {
      v12 = 2147483391;
      if (v11 > 2147483391)
      {
        goto LABEL_36;
      }
    }

    v14 = sqlite3_initialize();
    v15 = 7;
    if (!v12)
    {
      goto LABEL_43;
    }

    if (v14)
    {
      goto LABEL_43;
    }

    v16 = sub_18190287C(v5, v12, 0x100004077774924);
    if (!v16)
    {
      goto LABEL_43;
    }

    v5 = v16;
  }

  v5[v7] = 34;
  v18 = &v5[v7 + 1];
  if (a2)
  {
    while (1)
    {
      v19 = *a2;
      if (v19 == 34)
      {
        *v18++ = 34;
        LOBYTE(v19) = *a2;
      }

      else if (!*a2)
      {
        break;
      }

      ++a2;
      *v18++ = v19;
    }
  }

  *v18 = 34;
  v20 = v18 - v5;
  v7 = v20 + 1;
  v5[v20 + 1] = 0;
  v134 = v12;
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_29:
  v21 = v7;
  v22 = v7 + 8;
  if (v22 <= v12)
  {
LABEL_42:
    v15 = 0;
    v27 = &v5[v7];
    *(v27 + 3) = 541413957;
    *v27 = 1162368800;
    v7 = v7 + 7;
    v5[v21 + 7] = 0;
    goto LABEL_43;
  }

  if (v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = 128;
  }

  do
  {
    v24 = v23;
    v23 *= 2;
  }

  while (v23 < v22);
  if (v24 > 1073741695)
  {
    v23 = 2147483391;
    if (v7 > 2147483383)
    {
LABEL_36:
      v15 = 7;
      goto LABEL_43;
    }
  }

  v25 = sqlite3_initialize();
  v15 = 7;
  if (v23)
  {
    if (!v25)
    {
      v26 = sub_18190287C(v5, v23, 0x100004077774924);
      if (v26)
      {
        v134 = v23;
        v5 = v26;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  v28 = *(a3 + 32);
  v133 = a3;
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = &byte_181A2878D;
    while (1)
    {
      while (!*(*(a3 + 48) + v29))
      {
        if (++v29 >= v28)
        {
          goto LABEL_121;
        }
      }

      if (v31)
      {
        v32 = strlen(v31) & 0x3FFFFFFF;
        if (v15)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v32 = 0;
        if (v15)
        {
          goto LABEL_70;
        }
      }

      v33 = v7;
      v34 = v32 + 1 + v7;
      if (v34 <= v134)
      {
        goto LABEL_68;
      }

      v35 = v5;
      if (v134)
      {
        v36 = v134;
      }

      else
      {
        v36 = 128;
      }

      do
      {
        v37 = v36;
        v36 *= 2;
      }

      while (v36 < v34);
      if (v37 <= 1073741695 || (v36 = 2147483391, v34 <= 2147483391))
      {
        v38 = sqlite3_initialize();
        v15 = 7;
        if (v36)
        {
          if (!v38)
          {
            v39 = sub_18190287C(v35, v36, 0x100004077774924);
            if (v39)
            {
              v134 = v36;
              v5 = v39;
              a3 = v133;
LABEL_68:
              memcpy(&v5[v7], v31, v32);
              v15 = 0;
              v7 = v32 + v7;
              v5[v32 + v33] = 0;
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        v15 = 7;
      }

      v5 = v35;
      a3 = v133;
LABEL_70:
      v40 = *(a3 + 40);
      v41 = *(v40 + 8 * v29);
      if (v41)
      {
        v42 = 2 * (strlen(*(v40 + 8 * v29)) & 0x3FFFFFFF) + 4;
        v43 = v7;
        if (v15)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v42 = 4;
        v43 = v7;
        if (v15)
        {
          goto LABEL_106;
        }
      }

      v44 = v42 + v43;
      v45 = v134;
      if (v44 > v134)
      {
        v46 = v5;
        if (v134)
        {
          v47 = v134;
        }

        else
        {
          v47 = 128;
        }

        do
        {
          v48 = v47;
          v47 *= 2;
        }

        while (v47 < v44);
        if (v48 > 1073741695)
        {
          v47 = 2147483391;
          if (v44 > 2147483391)
          {
            v15 = 7;
            v5 = v46;
            goto LABEL_106;
          }
        }

        v49 = sqlite3_initialize();
        v15 = 7;
        if (!v47 || v49 || (v50 = sub_18190287C(v46, v47, 0x100004077774924)) == 0)
        {
          v5 = v46;
          goto LABEL_106;
        }

        v45 = v47;
        v5 = v50;
      }

      v5[v43] = 34;
      v51 = &v5[v43 + 1];
      if (v41)
      {
        while (1)
        {
          v52 = *v41;
          if (v52 == 34)
          {
            *v51++ = 34;
            LOBYTE(v52) = *v41;
          }

          else if (!*v41)
          {
            break;
          }

          ++v41;
          *v51++ = v52;
        }
      }

      *v51 = 34;
      v7 = v51 - v5 + 1;
      v43 = v7;
      v5[v7] = 0;
      v53 = v7 + 5;
      v134 = v45;
      if (v53 <= v45)
      {
        goto LABEL_105;
      }

      if (v45)
      {
        v54 = v45;
      }

      else
      {
        v54 = 128;
      }

      do
      {
        v55 = v54;
        v54 *= 2;
      }

      while (v54 < v53);
      if (v55 > 1073741695)
      {
        v54 = 2147483391;
        if (v7 > 2147483386)
        {
          v15 = 7;
          goto LABEL_106;
        }
      }

      v56 = sqlite3_initialize();
      v15 = 7;
      if (v54)
      {
        if (!v56)
        {
          v57 = sub_18190287C(v5, v54, 0x100004077774924);
          if (v57)
          {
            v134 = v54;
            v5 = v57;
LABEL_105:
            v15 = 0;
            *&v5[v7] = 1059077408;
            v43 = v7 + 4;
            v5[v43] = 0;
            v7 = v43;
          }
        }
      }

LABEL_106:
      sqlite3_snprintf(23, __s, "%d", ++v29);
      v58 = strlen(__s);
      if (v15)
      {
        goto LABEL_48;
      }

      v59 = v5;
      v60 = v58 & 0x3FFFFFFF;
      v61 = v43 + (v58 & 0x3FFFFFFFu) + 1;
      if (v61 <= v134)
      {
        v64 = v58;
        goto LABEL_119;
      }

      if (v134)
      {
        v62 = v134;
      }

      else
      {
        v62 = 128;
      }

      do
      {
        v63 = v62;
        v62 *= 2;
      }

      while (v62 < v61);
      if (v63 > 1073741695 && (v62 = 2147483391, v61 > 2147483391))
      {
        v15 = 7;
      }

      else
      {
        v64 = v58;
        v65 = sqlite3_initialize();
        v15 = 7;
        if (v62)
        {
          if (!v65)
          {
            v66 = sub_18190287C(v59, v62, 0x100004077774924);
            if (v66)
            {
              v134 = v62;
              v59 = v66;
LABEL_119:
              memcpy((v59 + v43), __s, v64 & 0x3FFFFFFF);
              v15 = 0;
              v7 = (v60 + v7);
              v5 = v59;
              *(v59 + v7) = 0;
              goto LABEL_47;
            }
          }
        }
      }

      v5 = v59;
LABEL_47:
      a3 = v133;
LABEL_48:
      ++v30;
      v28 = *(a3 + 32);
      v31 = " AND ";
      if (v29 >= v28)
      {
        goto LABEL_121;
      }
    }
  }

  v30 = 0;
LABEL_121:
  if (v30 >= v28)
  {
    if (v15)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v67 = v7;
  if (!v15)
  {
    if (v7 + 8 <= v134)
    {
LABEL_137:
      v15 = 0;
      v72 = &v5[v7];
      *(v72 + 3) = 1059594308;
      *v72 = 1145979168;
      v67 = v7 + 7;
      v5[v67] = 0;
      LODWORD(v7) = v7 + 7;
      goto LABEL_138;
    }

    if (v134)
    {
      v68 = v134;
    }

    else
    {
      v68 = 128;
    }

    do
    {
      v69 = v68;
      v68 *= 2;
    }

    while (v68 < v7 + 8);
    if (v69 > 1073741695)
    {
      v68 = 2147483391;
      if (v7 > 2147483383)
      {
        v15 = 7;
        goto LABEL_138;
      }
    }

    v70 = sqlite3_initialize();
    v15 = 7;
    if (v68)
    {
      if (!v70)
      {
        v71 = sub_18190287C(v5, v68, 0x100004077774924);
        if (v71)
        {
          LODWORD(v134) = v68;
          v5 = v71;
          goto LABEL_137;
        }
      }
    }
  }

LABEL_138:
  sqlite3_snprintf(23, __s, "%d", *(a3 + 32) + 1);
  v73 = strlen(__s);
  if (!v15)
  {
    v74 = v73 & 0x3FFFFFFF;
    v75 = v67 + (v73 & 0x3FFFFFFFu) + 1;
    LODWORD(v76) = v134;
    if (v75 <= v134)
    {
      v78 = v73;
    }

    else
    {
      if (v134)
      {
        v76 = v134;
      }

      else
      {
        v76 = 128;
      }

      do
      {
        v77 = v76;
        v76 *= 2;
      }

      while (v76 < v75);
      if (v77 > 1073741695)
      {
        v76 = 2147483391;
        if (v75 > 2147483391)
        {
          v15 = 7;
          goto LABEL_165;
        }
      }

      v78 = v73;
      v81 = sqlite3_initialize();
      v15 = 7;
      if (!v76)
      {
        goto LABEL_165;
      }

      if (v81)
      {
        goto LABEL_165;
      }

      v82 = sub_18190287C(v5, v76, 0x100004077774924);
      if (!v82)
      {
        goto LABEL_165;
      }

      v5 = v82;
    }

    memcpy(&v5[v67], __s, v78 & 0x3FFFFFFF);
    v7 = v74 + v7;
    v5[v7] = 0;
    LODWORD(v134) = v76;
    if (v7 + 5 > v76)
    {
      if (v76)
      {
        v79 = v76;
      }

      else
      {
        v79 = 128;
      }

      do
      {
        v80 = v79;
        v79 *= 2;
      }

      while (v79 < v7 + 5);
      if (v80 > 1073741695)
      {
        v79 = 2147483391;
        if (v7 > 2147483386)
        {
          v15 = 7;
          goto LABEL_165;
        }
      }

      v83 = sqlite3_initialize();
      v15 = 7;
      if (!v79)
      {
        goto LABEL_165;
      }

      if (v83)
      {
        goto LABEL_165;
      }

      v84 = sub_18190287C(v5, v79, 0x100004077774924);
      if (!v84)
      {
        goto LABEL_165;
      }

      LODWORD(v134) = v79;
      v5 = v84;
    }

    v15 = 0;
    *&v5[v7] = 542265120;
    v7 += 4;
    v5[v7] = 0;
  }

LABEL_165:
  v85 = *(a3 + 32);
  if (v85 < 1)
  {
    LODWORD(v89) = v7;
    v88 = v134;
    if (!v15)
    {
      goto LABEL_241;
    }

    goto LABEL_252;
  }

  v86 = 0;
  v87 = &byte_181A2878D;
  v88 = v134;
  LODWORD(v89) = v7;
  do
  {
    while (*(*(a3 + 48) + v86))
    {
      if (++v86 >= v85)
      {
        goto LABEL_238;
      }
    }

    if (v87)
    {
      v90 = strlen(v87) & 0x3FFFFFFF;
      if (v15)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v90 = 0;
      if (v15)
      {
        goto LABEL_187;
      }
    }

    v91 = v5;
    v92 = v90 + 1 + v89;
    if (v92 <= v88)
    {
      goto LABEL_185;
    }

    if (v88)
    {
      v93 = v88;
    }

    else
    {
      v93 = 128;
    }

    do
    {
      v94 = v93;
      v93 *= 2;
    }

    while (v93 < v92);
    if (v94 <= 1073741695 || (v93 = 2147483391, v92 <= 2147483391))
    {
      v95 = sqlite3_initialize();
      v15 = 7;
      if (!v93)
      {
        goto LABEL_186;
      }

      if (v95)
      {
        goto LABEL_186;
      }

      v96 = sub_18190287C(v5, v93, 0x100004077774924);
      if (!v96)
      {
        goto LABEL_186;
      }

      v88 = v93;
      v91 = v96;
LABEL_185:
      memcpy(&v91[v89], v87, v90);
      v15 = 0;
      v89 = v90 + v89;
      v5 = v91;
      v91[v89] = 0;
      goto LABEL_186;
    }

    v15 = 7;
LABEL_186:
    a3 = v133;
LABEL_187:
    v97 = *(a3 + 40);
    v98 = *(v97 + 8 * v86);
    if (v98)
    {
      v99 = 2 * (strlen(*(v97 + 8 * v86)) & 0x3FFFFFFF) + 4;
      v100 = v89;
      if (v15)
      {
        goto LABEL_221;
      }
    }

    else
    {
      v99 = 4;
      v100 = v89;
      if (v15)
      {
        goto LABEL_221;
      }
    }

    v101 = v99 + v100;
    if (v101 > v88)
    {
      if (v88)
      {
        v102 = v88;
      }

      else
      {
        v102 = 128;
      }

      do
      {
        v103 = v102;
        v102 *= 2;
      }

      while (v102 < v101);
      if (v103 > 1073741695)
      {
        v102 = 2147483391;
        if (v101 > 2147483391)
        {
LABEL_215:
          v15 = 7;
          goto LABEL_221;
        }
      }

      v104 = sqlite3_initialize();
      v15 = 7;
      if (!v102)
      {
        goto LABEL_221;
      }

      if (v104)
      {
        goto LABEL_221;
      }

      v105 = sub_18190287C(v5, v102, 0x100004077774924);
      if (!v105)
      {
        goto LABEL_221;
      }

      v88 = v102;
      v5 = v105;
    }

    v5[v100] = 34;
    v106 = &v5[v100 + 1];
    if (v98)
    {
      while (1)
      {
        v107 = *v98;
        if (v107 == 34)
        {
          *v106++ = 34;
          LOBYTE(v107) = *v98;
        }

        else if (!*v98)
        {
          break;
        }

        ++v98;
        *v106++ = v107;
      }
    }

    *v106 = 34;
    LODWORD(v89) = v106 - v5 + 1;
    v100 = v89;
    v5[v89] = 0;
    v108 = v89 + 6;
    if (v108 <= v88)
    {
      goto LABEL_220;
    }

    if (v88)
    {
      v109 = v88;
    }

    else
    {
      v109 = 128;
    }

    do
    {
      v110 = v109;
      v109 *= 2;
    }

    while (v109 < v108);
    if (v110 > 1073741695)
    {
      v109 = 2147483391;
      if (v89 > 2147483385)
      {
        goto LABEL_215;
      }
    }

    v111 = sqlite3_initialize();
    v15 = 7;
    if (v109)
    {
      if (!v111)
      {
        v112 = sub_18190287C(v5, v109, 0x100004077774924);
        if (v112)
        {
          v88 = v109;
          v5 = v112;
LABEL_220:
          v15 = 0;
          v113 = &v5[v89];
          v113[4] = 63;
          *v113 = 542329120;
          v100 = v89 + 5;
          v5[v100] = 0;
          LODWORD(v89) = v89 + 5;
        }
      }
    }

LABEL_221:
    sqlite3_snprintf(23, __s, "%d", ++v86);
    v114 = strlen(__s);
    if (v15)
    {
      goto LABEL_237;
    }

    v115 = v114 & 0x3FFFFFFF;
    v116 = v100 + (v114 & 0x3FFFFFFFu) + 1;
    if (v116 <= v88)
    {
      v120 = v5;
      v121 = v114;
      goto LABEL_231;
    }

    v117 = v5;
    if (v88)
    {
      v118 = v88;
    }

    else
    {
      v118 = 128;
    }

    do
    {
      v119 = v118;
      v118 *= 2;
    }

    while (v118 < v116);
    if (v119 <= 1073741695 || (v118 = 2147483391, v116 <= 2147483391))
    {
      v121 = v114;
      v123 = sqlite3_initialize();
      v15 = 7;
      if (!v118)
      {
        goto LABEL_236;
      }

      if (v123)
      {
        goto LABEL_236;
      }

      v124 = sub_18190287C(v117, v118, 0x100004077774924);
      if (!v124)
      {
        goto LABEL_236;
      }

      v88 = v118;
      v120 = v124;
      a3 = v133;
LABEL_231:
      v122 = v121 & 0x3FFFFFFF;
      v5 = v120;
      memcpy(&v120[v100], __s, v122);
      v15 = 0;
      LODWORD(v89) = v115 + v89;
      v5[v89] = 0;
      goto LABEL_237;
    }

    v15 = 7;
LABEL_236:
    v5 = v117;
    a3 = v133;
LABEL_237:
    v85 = *(a3 + 32);
    v87 = "AND ";
  }

  while (v86 < v85);
LABEL_238:
  if (v15)
  {
    goto LABEL_252;
  }

LABEL_241:
  v125 = v89 + 2;
  if (v125 <= v88)
  {
    v128 = v5;
LABEL_250:
    *(v128 + v89) = 41;
    v7 = (v89 + 1);
    v5 = v128;
LABEL_251:
    v15 = sub_1818954B4(a1, v5, v7, 128, 0, (a3 + 8), 0);
    goto LABEL_252;
  }

  if (v88)
  {
    v126 = v88;
  }

  else
  {
    v126 = 128;
  }

  do
  {
    v127 = v126;
    v126 *= 2;
  }

  while (v126 < v125);
  if (v127 > 1073741695)
  {
    v126 = 2147483391;
    if (v89 > 2147483389)
    {
      v15 = 7;
      goto LABEL_252;
    }
  }

  v131 = sqlite3_initialize();
  v15 = 7;
  if (v126)
  {
    if (!v131)
    {
      v128 = sub_18190287C(v5, v126, 0x100004077774924);
      if (v128)
      {
        goto LABEL_250;
      }
    }
  }

LABEL_252:
  if (v5)
  {
    v129 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_258;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v129 = &xmmword_1ED452F28;
LABEL_258:
      (*v129)(v5);
    }
  }

  return v15;
}

uint64_t sub_181A162B4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v18 = sub_18190287C(0, 0x100uLL, 0x100004077774924);
  v6 = v18;
  if (!v18)
  {
    v5 = 0;
LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = 7;
    v10 = 1;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v10 = 0;
  v9 = 0;
  strcpy(v18, "INSERT INTO main.");
  v8 = 17;
  v7 = 1;
  v5 = 256;
  if (a2)
  {
LABEL_4:
    v11 = 2 * (strlen(a2) & 0x3FFFFFFF) + 4;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:
    if (!v9)
    {
      goto LABEL_29;
    }

LABEL_20:
    v16 = v9;
    goto LABEL_43;
  }

LABEL_18:
  v11 = 4;
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v12 = v11 + v8;
  if (v12 <= v5)
  {
    v9 = 0;
  }

  else
  {
    if (v10)
    {
      v13 = 128;
    }

    else
    {
      v13 = v5;
    }

    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v13 < v12);
    if (v14 > 1073741695)
    {
      v13 = 2147483391;
      if (v12 > 2147483391)
      {
        goto LABEL_36;
      }
    }

    v15 = sqlite3_initialize();
    v16 = 7;
    if (!v13)
    {
      goto LABEL_43;
    }

    if (v15)
    {
      goto LABEL_43;
    }

    v17 = sub_18190287C(v6, v13, 0x100004077774924);
    if (!v17)
    {
      goto LABEL_43;
    }

    v5 = v13;
    v6 = v17;
  }

  *(v6 + v8) = 34;
  v19 = (v6 + v8 + 1);
  if (a2)
  {
    while (1)
    {
      v20 = *a2;
      if (v20 == 34)
      {
        *v19++ = 34;
        LOBYTE(v20) = *a2;
      }

      else if (!*a2)
      {
        break;
      }

      ++a2;
      *v19++ = v20;
    }
  }

  *v19 = 34;
  v8 = v19 - v6 + 1;
  *(v6 + v8) = 0;
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_29:
  v21 = v8 + 2;
  if (v21 <= v5)
  {
LABEL_42:
    v16 = 0;
    *(v6 + v8++) = 40;
    goto LABEL_43;
  }

  if (v5)
  {
    v22 = v5;
  }

  else
  {
    v22 = 128;
  }

  do
  {
    v23 = v22;
    v22 *= 2;
  }

  while (v22 < v21);
  if (v23 > 1073741695)
  {
    v22 = 2147483391;
    if (v8 > 2147483389)
    {
LABEL_36:
      v16 = 7;
      goto LABEL_43;
    }
  }

  v24 = sqlite3_initialize();
  v16 = 7;
  if (v22)
  {
    if (!v24)
    {
      v25 = sub_18190287C(v6, v22, 0x100004077774924);
      if (v25)
      {
        v5 = v22;
        v6 = v25;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (*(a3 + 32) >= 1)
  {
    v26 = 0;
    while (1)
    {
      if (v26 && !v16)
      {
        v28 = v8;
        v29 = v8 + 3;
        if (v29 <= v5)
        {
          goto LABEL_61;
        }

        if (v5)
        {
          v30 = v5;
        }

        else
        {
          v30 = 128;
        }

        do
        {
          v31 = v30;
          v30 *= 2;
        }

        while (v30 < v29);
        if (v31 > 1073741695)
        {
          v30 = 2147483391;
          if (v8 > 2147483388)
          {
            v16 = 7;
            goto LABEL_62;
          }
        }

        v32 = sqlite3_initialize();
        v16 = 7;
        if (v30)
        {
          if (!v32)
          {
            v33 = sub_18190287C(v6, v30, 0x100004077774924);
            if (v33)
            {
              break;
            }
          }
        }
      }

LABEL_62:
      v34 = *(a3 + 40);
      v35 = *(v34 + 8 * v26);
      if (v35)
      {
        v27 = 2 * (strlen(*(v34 + 8 * v26)) & 0x3FFFFFFF) + 4;
        if (v16)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v27 = 4;
        if (v16)
        {
          goto LABEL_46;
        }
      }

      v36 = v27 + v8;
      if (v36 <= v5)
      {
        goto LABEL_76;
      }

      if (v5)
      {
        v37 = v5;
      }

      else
      {
        v37 = 128;
      }

      do
      {
        v38 = v37;
        v37 *= 2;
      }

      while (v37 < v36);
      if (v38 <= 1073741695 || (v37 = 2147483391, v36 <= 2147483391))
      {
        v39 = sqlite3_initialize();
        v16 = 7;
        if (v37)
        {
          if (!v39)
          {
            v40 = sub_18190287C(v6, v37, 0x100004077774924);
            if (v40)
            {
              v5 = v37;
              v6 = v40;
LABEL_76:
              *(v6 + v8) = 34;
              v41 = (v6 + v8 + 1);
              if (v35)
              {
                while (1)
                {
                  v42 = *v35;
                  if (v42 == 34)
                  {
                    *v41++ = 34;
                    LOBYTE(v42) = *v35;
                  }

                  else if (!*v35)
                  {
                    break;
                  }

                  ++v35;
                  *v41++ = v42;
                }
              }

              v16 = 0;
              *v41 = 34;
              v8 = v41 - v6 + 1;
              *(v6 + v8) = 0;
            }
          }
        }
      }

      else
      {
        v16 = 7;
      }

LABEL_46:
      if (++v26 >= *(a3 + 32))
      {
        goto LABEL_83;
      }
    }

    v5 = v30;
    v6 = v33;
LABEL_61:
    v16 = 0;
    *(v6 + v8) = 8236;
    v8 += 2;
    *(v6 + v28 + 2) = 0;
    goto LABEL_62;
  }

LABEL_83:
  if (!v16)
  {
    v43 = v8;
    v44 = v8 + 11;
    if (v44 <= v5)
    {
LABEL_96:
      v16 = 0;
      v49 = v6 + v8;
      *v49 = *") VALUES(?";
      *(v49 + 8) = 16168;
      v8 += 10;
      *(v6 + v43 + 10) = 0;
      goto LABEL_97;
    }

    if (v5)
    {
      v45 = v5;
    }

    else
    {
      v45 = 128;
    }

    do
    {
      v46 = v45;
      v45 *= 2;
    }

    while (v45 < v44);
    if (v46 > 1073741695)
    {
      v45 = 2147483391;
      if (v8 > 2147483380)
      {
        v16 = 7;
        goto LABEL_97;
      }
    }

    v47 = sqlite3_initialize();
    v16 = 7;
    if (v45)
    {
      if (!v47)
      {
        v48 = sub_18190287C(v6, v45, 0x100004077774924);
        if (v48)
        {
          v5 = v45;
          v6 = v48;
          goto LABEL_96;
        }
      }
    }
  }

LABEL_97:
  if (*(a3 + 32) >= 2)
  {
    for (i = 1; i < *(a3 + 32); ++i)
    {
      if (!v16)
      {
        v51 = v8 + 4;
        if (v51 > v5)
        {
          if (v5)
          {
            v52 = v5;
          }

          else
          {
            v52 = 128;
          }

          do
          {
            v53 = v52;
            v52 *= 2;
          }

          while (v52 < v51);
          if (v53 > 1073741695)
          {
            v52 = 2147483391;
            if (v8 > 2147483387)
            {
              v16 = 7;
              continue;
            }
          }

          v54 = sqlite3_initialize();
          v16 = 7;
          if (!v52)
          {
            continue;
          }

          if (v54)
          {
            continue;
          }

          v55 = sub_18190287C(v6, v52, 0x100004077774924);
          if (!v55)
          {
            continue;
          }

          v5 = v52;
          v6 = v55;
        }

        v16 = 0;
        *(v6 + v8) = 4137004;
        v8 += 3;
      }
    }
  }

  if (v16)
  {
    goto LABEL_116;
  }

  v56 = v8 + 2;
  if (v56 <= v5)
  {
    v59 = v6;
    goto LABEL_127;
  }

  if (v5)
  {
    v57 = v5;
  }

  else
  {
    v57 = 128;
  }

  do
  {
    v58 = v57;
    v57 *= 2;
  }

  while (v57 < v56);
  if (v58 > 1073741695)
  {
    v57 = 2147483391;
    if (v8 > 2147483389)
    {
      v16 = 7;
      goto LABEL_116;
    }
  }

  v62 = sqlite3_initialize();
  v16 = 7;
  if (v57)
  {
    if (!v62)
    {
      v59 = sub_18190287C(v6, v57, 0x100004077774924);
      if (v59)
      {
LABEL_127:
        *&v59[v8] = 41;
        v16 = sub_1818954B4(a1, v59, (v8 + 1), 128, 0, (a3 + 16), 0);
        v6 = v59;
        goto LABEL_128;
      }
    }
  }

LABEL_116:
  if (!v6)
  {
    return v16;
  }

LABEL_128:
  v60 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_133:
    (*v60)(v6);
    return v16;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
  --qword_1ED456A90;
  off_1ED452EB0(v6);
  v6 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v60 = &xmmword_1ED452F28;
    goto LABEL_133;
  }

  return v16;
}

uint64_t sub_181A16A3C(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v22 = 0;
  result = sub_181A16C5C(a2, a3, a4, a5, &v22 + 1, &v22);
  if (!result)
  {
    if (v22)
    {
      return sub_181A16C5C(a2, a3, a4, a5, 0, 0);
    }

    if (!HIDWORD(v22))
    {
      return 0;
    }

    result = sqlite3_exec(a1, "SAVEPOINT replace_op", 0, 0, 0);
    if (!result)
    {
      v11 = *(a3 + 32);
      v12 = *(a3 + 8);
      if (v11 <= 0)
      {
        sqlite3_bind_int64(*(a3 + 8), v11 + 1, 1);
        goto LABEL_29;
      }

      v13 = 0;
      v14 = *(a3 + 48);
      while (1)
      {
        if (v14 && !*(v14 + v13))
        {
          v19 = 0;
        }

        else
        {
          v15 = *(a2 + 124);
          v16 = v15 == 23 || v15 == 18;
          if (!v16 || (v17 = *(a2 + 120), v17 <= v13) || (v18 = *(*(a2 + 144) + 8 * (v13 + v17))) == 0)
          {
            v19 = sub_18190EDA8(243806);
            v20 = 0;
            goto LABEL_28;
          }

          if (byte_181A203AA[*(v18 + 20) & 0x3F] - 3 <= 1 && !*(v18 + 8))
          {
            v20 = 0;
            v19 = 7;
LABEL_28:
            v21 = v19;
            sqlite3_bind_int64(*(a3 + 8), *(a3 + 32) + 1, 1);
            result = v21;
            if (v20)
            {
LABEL_29:
              sqlite3_step(*(a3 + 8));
              result = sqlite3_reset(*(a3 + 8));
              if (!result)
              {
                result = sub_181A16C5C(a2, a3, a4, a5, 0, 0);
                if (!result)
                {
                  return sqlite3_exec(a1, "RELEASE replace_op", 0, 0, 0);
                }
              }
            }

            return result;
          }

          v19 = sqlite3_bind_value(v12, v13 + 1, v18);
        }

        v20 = v19 == 0;
        if (!v19 && ++v13 < v11)
        {
          continue;
        }

        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t sub_181A16C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v231 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 120);
  v10 = *(a1 + 124);
  if (v10 == 23)
  {
    if (a6)
    {
      v229 = *(a1 + 88) == 0;
    }

    else
    {
      v229 = 0;
    }

    v32 = v11 + 33;
    if (v11 < -33)
    {
      v32 = v11 + 64;
    }

    v33 = v32 >> 5;
    v34 = *(a2 + 56);
    if (!v34)
    {
      v56 = a6;
      v57 = sqlite3_initialize();
      if (v11 < -1 || v57)
      {
        *(a2 + 56) = 0;
        return 7;
      }

      v34 = sub_181902484((4 * v33), 0x100004052888210);
      *(a2 + 56) = v34;
      a6 = v56;
      if (!v34)
      {
        return 7;
      }
    }

    v223 = a6;
    v35 = 4 * v33;
    bzero(v34, v35);
    v36 = *(a1 + 120);
    if (v36 < 1)
    {
      return 11;
    }

    LODWORD(v37) = 0;
    v38 = 0;
    v39 = *(a1 + 144);
    result = 11;
    v222 = a4;
    do
    {
      v37 = v37;
      v40 = v36;
      v41 = v39 + 8 * v36;
      while (!*(v41 + 8 * v37))
      {
        if (++v37 >= v40)
        {
          if (v38)
          {
            goto LABEL_68;
          }

          v47 = 0;
LABEL_391:
          v201 = result == 0;
          if (!result && v11 >= 1)
          {
            v202 = 0;
            v203 = 2;
            while (1)
            {
              v204 = *(a1 + 144);
              v205 = *(v204 + 8 * v202);
              v206 = *(v204 + 8 * (v202 + *(a1 + 120)));
              if (*(*(a2 + 48) + v202))
              {
                break;
              }

              v208 = v229;
              if (!v205)
              {
                v208 = 0;
              }

              v207 = v203;
              if (v208)
              {
                goto LABEL_400;
              }

              result = 0;
LABEL_405:
              if (v206)
              {
                if (byte_181A203AA[*(v206 + 20) & 0x3F] - 3 <= 1 && !*(v206 + 8))
                {
                  return 7;
                }

                result = sqlite3_bind_value(v47, v203 - 1, v206);
              }

LABEL_409:
              v201 = result == 0;
              if (!result)
              {
                ++v202;
                v203 += 2;
                if (v202 < v11)
                {
                  continue;
                }
              }

              goto LABEL_413;
            }

            if (v205)
            {
              v207 = 2 * v202 + 2;
LABEL_400:
              if (byte_181A203AA[*(v205 + 20) & 0x3F] - 3 <= 1 && !*(v205 + 8))
              {
                return 7;
              }
            }

            else
            {
              sub_1819012D0(99877);
              v205 = 0;
              v207 = v203;
            }

            result = sqlite3_bind_value(v47, v207, v205);
            if (result)
            {
              goto LABEL_409;
            }

            goto LABEL_405;
          }

LABEL_413:
          if (!v201)
          {
            return result;
          }

          sqlite3_step(v47);
          result = sqlite3_reset(v47);
          if (result)
          {
            if (result != 19)
            {
              return result;
            }

            v209 = 3;
            v210 = a2;
            v211 = a1;
            v212 = a3;
            v213 = v222;
            v214 = 0;
            return sub_181A18474(v209, v210, v211, v212, v213, v214);
          }

          v215 = *a2;
          if (*a2)
          {
            v216 = *(v215 + 113);
            v217 = v223;
            if (v216 == 186)
            {
              goto LABEL_422;
            }

            if (v216 == 118)
            {
              if (*(v215 + 120))
              {
                return 0;
              }
            }

            else
            {
              if (v216 == 109)
              {
LABEL_422:
                v218 = "unopened";
              }

              else
              {
                v218 = "invalid";
              }

LABEL_427:
              sqlite3_log(21, "API call with %s database connection pointer", v218);
              sub_1819012D0(192814);
            }

            v209 = 1;
            v210 = a2;
            v211 = a1;
            v212 = a3;
            v213 = v222;
            v214 = v217;
            return sub_181A18474(v209, v210, v211, v212, v213, v214);
          }

          v218 = "NULL";
          v217 = v223;
          goto LABEL_427;
        }
      }

      result = 0;
      v38 = 1;
      *(*(a2 + 56) + 4 * (v37 >> 5)) |= 1 << v37;
      v36 = *(a1 + 120);
      LODWORD(v37) = v37 + 1;
    }

    while (v37 < v36);
LABEL_68:
    if (!v229)
    {
      *(*(a2 + 56) + 4 * (v11 / 32)) |= 1 << v11;
    }

    v42 = *(a2 + 64);
    v221 = (a2 + 64);
    if (!v42)
    {
      goto LABEL_83;
    }

    v43 = *(a2 + 56);
    v44 = -1;
    v45 = (a2 + 64);
    while (2)
    {
      v46 = v45;
      v47 = v42;
      result = memcmp(v43, v42[1], 4 * v33);
      if (!result)
      {
        *v46 = *(v47 + 2);
        *(v47 + 2) = *v221;
        *v221 = v47;
        goto LABEL_390;
      }

      v45 = (v47 + 16);
      v42 = *(v47 + 2);
      ++v44;
      if (v42)
      {
        continue;
      }

      break;
    }

    if (v44 >= 0xB)
    {
      sqlite3_finalize(*v47);
      v48 = *v46;
      if (*v46)
      {
        v49 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_81;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
        --qword_1ED456A90;
        off_1ED452EB0(v48);
        v48 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v49 = &xmmword_1ED452F28;
LABEL_81:
          (*v49)(v48);
        }
      }

      *v46 = 0;
    }

LABEL_83:
    v50 = (96 * v33);
    v51 = *(a1 + 112);
    if (v51)
    {
      for (i = "sqlite_stat1"; ; ++i)
      {
        v53 = *v51;
        v54 = *i;
        v55 = v53 == v54;
        if (v53 == v54)
        {
          if (!*v51)
          {
            goto LABEL_127;
          }
        }

        else if (byte_181A20298[*v51] != byte_181A20298[*i])
        {
          goto LABEL_127;
        }

        ++v51;
      }
    }

    v55 = 0;
LABEL_127:
    v71 = sqlite3_initialize();
    result = 7;
    if (v50 < 1 || v71)
    {
      return result;
    }

    v72 = sub_181902484(v50, 0x30040275E93A9);
    if (!v72)
    {
      return 7;
    }

    v47 = v72;
    v73 = (v72 + 24);
    *(v47 + 1) = v73;
    memcpy(v73, *(a2 + 56), v35);
    v224 = v55;
    if (sqlite3_initialize() || (v77 = sub_181902484(256, 2663054284)) == 0)
    {
      v219 = 0;
      v228 = 0;
      v74 = 0;
      v75 = 0;
      result = 7;
      v76 = 1;
    }

    else
    {
      v76 = 0;
      v78 = v77;
      result = 0;
      strcpy(v78, "UPDATE main.");
      v228 = v78;
      v75 = 12;
      v74 = 1;
      v219 = 256;
    }

    v79 = *(a1 + 112);
    if (v79)
    {
      v80 = result;
      v81 = strlen(*(a1 + 112));
      result = v80;
      v82 = 2 * (v81 & 0x3FFFFFFF) + 4;
    }

    else
    {
      v82 = 4;
    }

    if (!v74)
    {
      goto LABEL_182;
    }

    v83 = v75;
    v84 = v75;
    v85 = v82 + v75;
    v86 = v219;
    if (v85 <= v219)
    {
      v89 = v228;
      goto LABEL_158;
    }

    if (v76)
    {
      v86 = 128;
    }

    else
    {
      v86 = v219;
    }

    do
    {
      v87 = v86;
      v86 *= 2;
    }

    while (v86 < v85);
    if (v87 <= 1073741695 || (v86 = 2147483391, v85 <= 2147483391))
    {
      v88 = sqlite3_initialize();
      result = 7;
      if (!v86 || v88)
      {
        goto LABEL_178;
      }

      v89 = sub_18190287C(v228, v86, 0x100004077774924);
      if (v89)
      {
LABEL_158:
        *(v89 + v84) = 34;
        v90 = (v89 + v84 + 1);
        if (v79)
        {
          while (1)
          {
            v91 = *v79;
            if (v91 == 34)
            {
              *v90++ = 34;
              LOBYTE(v91) = *v79;
            }

            else if (!*v79)
            {
              break;
            }

            ++v79;
            *v90++ = v91;
          }
        }

        *v90 = 34;
        v92 = &v90[-v89 + 1];
        v93 = v92;
        v94 = v92;
        *(v89 + v92) = 0;
        v95 = v92 + 6;
        v228 = v89;
        if (v95 <= v86)
        {
          v219 = v86;
LABEL_176:
          result = 0;
          v100 = &v228[v93];
          v100[4] = 32;
          *v100 = 1413829408;
          v228[v94 + 5] = 0;
          v75 = v94 + 5;
        }

        else
        {
          if (v86)
          {
            v96 = v86;
          }

          else
          {
            v96 = 128;
          }

          do
          {
            v97 = v96;
            v96 *= 2;
          }

          while (v96 < v95);
          if (v97 > 1073741695)
          {
            v96 = 2147483391;
            if (v94 > 2147483385)
            {
              goto LABEL_179;
            }
          }

          v98 = sqlite3_initialize();
          result = 7;
          if (!v96 || v98)
          {
            v219 = v86;
          }

          else
          {
            v99 = sub_18190287C(v228, v96, 0x100004077774924);
            if (v99)
            {
              v219 = v96;
              v228 = v99;
              goto LABEL_176;
            }

LABEL_179:
            v219 = v86;
            result = 7;
          }

          v75 = v94;
        }

LABEL_182:
        v101 = *(a1 + 120);
        v227 = a3;
        if (v101 >= 1)
        {
          v102 = 0;
          v103 = &byte_181A2878D;
          v104 = v219;
          while (1)
          {
            if (*(*(a2 + 48) + v102) || !*(*(a1 + 144) + 8 * (v101 + v102)))
            {
              goto LABEL_187;
            }

            if (v103)
            {
              v105 = result;
              v106 = strlen(v103);
              result = v105;
              v107 = v106 & 0x3FFFFFFF;
              if (result)
              {
                goto LABEL_208;
              }
            }

            else
            {
              v107 = 0;
              if (result)
              {
                goto LABEL_208;
              }
            }

            v108 = v107 + 1 + v75;
            if (v108 <= v104)
            {
              break;
            }

            if (v104)
            {
              v109 = v104;
            }

            else
            {
              v109 = 128;
            }

            do
            {
              v110 = v109;
              v109 *= 2;
            }

            while (v109 < v108);
            if (v110 <= 1073741695 || (v109 = 2147483391, v108 <= 2147483391))
            {
              v111 = sqlite3_initialize();
              result = 7;
              if (!v109 || v111)
              {
                goto LABEL_208;
              }

              v112 = sub_18190287C(v228, v109, 0x100004077774924);
              if (v112)
              {
                v104 = v109;
LABEL_206:
                v113 = v107;
                v114 = v112;
                memcpy((v112 + v75), v103, v113);
                result = 0;
                v228 = v114;
                v114[v113 + v75] = 0;
                v75 = v113 + v75;
                goto LABEL_208;
              }
            }

            result = 7;
LABEL_208:
            v115 = *(a2 + 40);
            v116 = *(v115 + 8 * v102);
            if (v116)
            {
              v117 = result;
              v118 = strlen(*(v115 + 8 * v102));
              result = v117;
              v119 = 2 * (v118 & 0x3FFFFFFF) + 4;
            }

            else
            {
              v119 = 4;
            }

            v225 = v75;
            v75 = v75;
            if (result)
            {
              v120 = result;
              goto LABEL_244;
            }

            v121 = v119 + v75;
            if (v121 <= v104)
            {
              v125 = v228;
            }

            else
            {
              if (v104)
              {
                v122 = v104;
              }

              else
              {
                v122 = 128;
              }

              do
              {
                v123 = v122;
                v122 *= 2;
              }

              while (v122 < v121);
              if (v123 > 1073741695)
              {
                v122 = 2147483391;
                if (v121 > 2147483391)
                {
                  goto LABEL_243;
                }
              }

              v124 = sqlite3_initialize();
              if (!v122)
              {
                goto LABEL_243;
              }

              if (v124)
              {
                goto LABEL_243;
              }

              v125 = sub_18190287C(v228, v122, 0x100004077774924);
              if (!v125)
              {
                goto LABEL_243;
              }

              v104 = v122;
            }

            *(v125 + v75) = 34;
            v126 = (v125 + v75 + 1);
            if (v116)
            {
              while (1)
              {
                v127 = *v116;
                if (v127 == 34)
                {
                  *v126++ = 34;
                  LOBYTE(v127) = *v116;
                }

                else if (!*v116)
                {
                  break;
                }

                ++v116;
                *v126++ = v127;
              }
            }

            *v126 = 34;
            v128 = &v126[-v125 + 1];
            v75 = v128;
            v225 = v128;
            *(v125 + v128) = 0;
            v129 = v128 + 5;
            if (v129 <= v104)
            {
              goto LABEL_242;
            }

            if (v104)
            {
              v130 = v104;
            }

            else
            {
              v130 = 128;
            }

            do
            {
              v131 = v130;
              v130 *= 2;
            }

            while (v130 < v129);
            v228 = v125;
            if (v131 <= 1073741695 || (v130 = 2147483391, v225 <= 2147483386))
            {
              v132 = sqlite3_initialize();
              if (v130)
              {
                if (!v132)
                {
                  v125 = sub_18190287C(v228, v130, 0x100004077774924);
                  if (v125)
                  {
                    v104 = v130;
LABEL_242:
                    v120 = 0;
                    *(v125 + v75) = 1059077408;
                    v75 = v225 + 4;
                    v228 = v125;
                    *(v125 + v75) = 0;
                    v225 = v75;
                    goto LABEL_244;
                  }
                }
              }
            }

LABEL_243:
            v120 = 7;
LABEL_244:
            sqlite3_snprintf(23, __s, "%d", (2 * v102) | 1);
            v133 = strlen(__s);
            if (v120)
            {
              result = v120;
            }

            else
            {
              v134 = v133;
              v135 = v133 & 0x3FFFFFFF;
              v136 = v75 + (v133 & 0x3FFFFFFFu) + 1;
              if (v136 <= v104)
              {
                v220 = v104;
                a3 = v227;
                v141 = v228;
                goto LABEL_257;
              }

              if (v104)
              {
                v137 = v104;
              }

              else
              {
                v137 = 128;
              }

              do
              {
                v138 = v137;
                v137 *= 2;
              }

              while (v137 < v136);
              if (v138 <= 1073741695 || (v137 = 2147483391, v136 <= 2147483391))
              {
                v139 = sqlite3_initialize();
                result = 7;
                if (!v137 || v139)
                {
                  goto LABEL_185;
                }

                v140 = sub_18190287C(v228, v137, 0x100004077774924);
                if (v140)
                {
                  v220 = v137;
                  v141 = v140;
                  a3 = v227;
LABEL_257:
                  memcpy(&v141[v75], __s, v134 & 0x3FFFFFFF);
                  result = 0;
                  v75 = (v135 + v225);
                  v228 = v141;
                  v141[v75] = 0;
                  v104 = v220;
                  goto LABEL_186;
                }
              }

              result = 7;
            }

LABEL_185:
            v75 = v225;
            a3 = v227;
LABEL_186:
            v101 = *(a1 + 120);
            v103 = ", ";
LABEL_187:
            if (++v102 >= v101)
            {
              goto LABEL_260;
            }
          }

          v112 = v228;
          goto LABEL_206;
        }

        LODWORD(v104) = v219;
LABEL_260:
        if (!result)
        {
          v142 = v75 + 8;
          if (v142 <= v104)
          {
LABEL_272:
            result = 0;
            v147 = &v228[v75];
            *(v147 + 3) = 541413957;
            *v147 = 1162368800;
            v228[v75 + 7] = 0;
            v75 = v75 + 7;
            goto LABEL_274;
          }

          if (v104)
          {
            v143 = v104;
          }

          else
          {
            v143 = 128;
          }

          do
          {
            v144 = v143;
            v143 *= 2;
          }

          while (v143 < v142);
          if (v144 > 1073741695)
          {
            v143 = 2147483391;
            if (v75 > 2147483383)
            {
              goto LABEL_273;
            }
          }

          v145 = sqlite3_initialize();
          result = 7;
          if (v143 && !v145)
          {
            v146 = sub_18190287C(v228, v143, 0x100004077774924);
            if (v146)
            {
              LODWORD(v104) = v143;
              v228 = v146;
              goto LABEL_272;
            }

LABEL_273:
            result = 7;
          }
        }

LABEL_274:
        if (*(a1 + 120) >= 1)
        {
          v148 = v104;
          v149 = 0;
          v150 = &byte_181A2878D;
          v226 = v148;
          v151 = v75;
          while (1)
          {
            if (!*(*(a2 + 48) + v149) && (!v229 || !*(*(a1 + 144) + 8 * v149)))
            {
              goto LABEL_278;
            }

            if (v150)
            {
              v152 = result;
              v153 = strlen(v150);
              result = v152;
              v154 = v153 & 0x3FFFFFFF;
              if (v152)
              {
                goto LABEL_316;
              }
            }

            else
            {
              v154 = 0;
              if (result)
              {
                goto LABEL_316;
              }
            }

            v155 = v151;
            v156 = v154 + 1 + v151;
            if (v156 <= v226)
            {
              v160 = v228;
            }

            else
            {
              if (v226)
              {
                v157 = v226;
              }

              else
              {
                v157 = 128;
              }

              do
              {
                v158 = v157;
                v157 *= 2;
              }

              while (v157 < v156);
              if (v158 > 1073741695)
              {
                v157 = 2147483391;
                if (v156 > 2147483391)
                {
LABEL_315:
                  result = 7;
LABEL_316:
                  v168 = v224;
                  if (v149 != 1)
                  {
                    v168 = 0;
                  }

                  v150 = " AND ";
                  a3 = v227;
                  if (v168)
                  {
                    goto LABEL_278;
                  }

                  goto LABEL_319;
                }
              }

              v159 = sqlite3_initialize();
              result = 7;
              if (!v157 || v159)
              {
                goto LABEL_316;
              }

              v160 = sub_18190287C(v228, v157, 0x100004077774924);
              if (!v160)
              {
                goto LABEL_315;
              }

              v226 = v157;
            }

            v161 = v154;
            v162 = v160;
            memcpy((v160 + v151), v150, v161);
            v151 = v161 + v151;
            v228 = v162;
            v162[v161 + v155] = 0;
            v163 = !v224;
            if (v149 != 1)
            {
              v163 = 1;
            }

            if ((v163 & 1) == 0)
            {
              a3 = v227;
              if (v151 + 75 <= v226)
              {
                goto LABEL_313;
              }

              if (v226)
              {
                v164 = v226;
              }

              else
              {
                v164 = 128;
              }

              do
              {
                v165 = v164;
                v164 *= 2;
              }

              while (v164 < v151 + 75);
              if (v165 > 1073741695)
              {
                v164 = 2147483391;
                if (v151 > 2147483316)
                {
                  goto LABEL_370;
                }
              }

              v166 = sqlite3_initialize();
              result = 7;
              if (!v164 || v166)
              {
                goto LABEL_371;
              }

              v167 = sub_18190287C(v228, v164, 0x100004077774924);
              if (v167)
              {
                v226 = v164;
                v228 = v167;
LABEL_313:
                result = 0;
                qmemcpy(&v228[v151], "idx IS CASE WHEN length(?4)=0 AND typeof(?4)='blob' THEN NULL ELSE ?4 END ", 74);
                v151 = v151 + 74;
                v228[v151] = 0;
              }

              else
              {
LABEL_370:
                result = 7;
              }

LABEL_371:
              v150 = " AND ";
              goto LABEL_278;
            }

            result = 0;
LABEL_319:
            v169 = *(a2 + 40);
            v170 = *(v169 + 8 * v149);
            if (v170)
            {
              v171 = result;
              v172 = strlen(*(v169 + 8 * v149));
              result = v171;
              v173 = 2 * (v172 & 0x3FFFFFFF) + 4;
            }

            else
            {
              v173 = 4;
            }

            v174 = v151;
            if (result)
            {
              v175 = result;
              goto LABEL_355;
            }

            v176 = v173 + v151;
            if (v176 <= v226)
            {
              v180 = v228;
            }

            else
            {
              if (v226)
              {
                v177 = v226;
              }

              else
              {
                v177 = 128;
              }

              do
              {
                v178 = v177;
                v177 *= 2;
              }

              while (v177 < v176);
              if (v178 > 1073741695)
              {
                v177 = 2147483391;
                if (v176 > 2147483391)
                {
                  goto LABEL_354;
                }
              }

              v179 = sqlite3_initialize();
              if (!v177)
              {
                goto LABEL_354;
              }

              if (v179)
              {
                goto LABEL_354;
              }

              v180 = sub_18190287C(v228, v177, 0x100004077774924);
              if (!v180)
              {
                goto LABEL_354;
              }

              v226 = v177;
            }

            *(v180 + v151) = 34;
            v181 = (v180 + v151 + 1);
            if (v170)
            {
              while (1)
              {
                v182 = *v170;
                if (v182 == 34)
                {
                  *v181++ = 34;
                  LOBYTE(v182) = *v170;
                }

                else if (!*v170)
                {
                  break;
                }

                ++v170;
                *v181++ = v182;
              }
            }

            *v181 = 34;
            v151 = &v181[-v180 + 1];
            v174 = v151;
            *(v180 + v151) = 0;
            v183 = v151 + 6;
            if (v183 <= v226)
            {
              goto LABEL_353;
            }

            if (v226)
            {
              v184 = v226;
            }

            else
            {
              v184 = 128;
            }

            do
            {
              v185 = v184;
              v184 *= 2;
            }

            while (v184 < v183);
            v228 = v180;
            if (v185 <= 1073741695 || (v184 = 2147483391, v151 <= 2147483385))
            {
              v186 = sqlite3_initialize();
              if (v184)
              {
                if (!v186)
                {
                  v180 = sub_18190287C(v228, v184, 0x100004077774924);
                  if (v180)
                  {
                    v226 = v184;
LABEL_353:
                    v175 = 0;
                    v187 = v180 + v151;
                    *(v187 + 4) = 63;
                    *v187 = 542329120;
                    v174 = v151 + 5;
                    v228 = v180;
                    *(v180 + v174) = 0;
                    v151 = v174;
                    goto LABEL_355;
                  }
                }
              }
            }

LABEL_354:
            v175 = 7;
LABEL_355:
            sqlite3_snprintf(23, __s, "%d", 2 * v149 + 2);
            v188 = strlen(__s);
            if (v175)
            {
              result = v175;
            }

            else
            {
              v189 = v188;
              v190 = v188 & 0x3FFFFFFF;
              v191 = v174 + (v188 & 0x3FFFFFFFu) + 1;
              if (v191 <= v226)
              {
                v195 = v228;
              }

              else
              {
                if (v226)
                {
                  v192 = v226;
                }

                else
                {
                  v192 = 128;
                }

                do
                {
                  v193 = v192;
                  v192 *= 2;
                }

                while (v192 < v191);
                if (v193 > 1073741695)
                {
                  v192 = 2147483391;
                  if (v191 > 2147483391)
                  {
                    goto LABEL_369;
                  }
                }

                v194 = sqlite3_initialize();
                result = 7;
                if (!v192 || v194)
                {
                  goto LABEL_277;
                }

                v195 = sub_18190287C(v228, v192, 0x100004077774924);
                if (!v195)
                {
LABEL_369:
                  result = 7;
                  goto LABEL_277;
                }

                v226 = v192;
              }

              v196 = v195;
              memcpy((v195 + v174), __s, v189 & 0x3FFFFFFF);
              result = 0;
              v151 = (v190 + v151);
              v228 = v196;
              v196[v151] = 0;
            }

LABEL_277:
            v150 = " AND ";
            a3 = v227;
LABEL_278:
            if (++v149 >= *(a1 + 120))
            {
              goto LABEL_373;
            }
          }
        }

        v151 = v75;
LABEL_373:
        if (!result)
        {
          result = sub_1818954B4(*a2, v228, v151, 128, 0, v47, 0);
          if (!result)
          {
            *(v47 + 2) = *v221;
            *v221 = v47;
            if (!v228)
            {
              goto LABEL_389;
            }

            goto LABEL_383;
          }
        }

        v197 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v198 = result;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v47);
          --qword_1ED456A90;
          off_1ED452EB0(v47);
          v47 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_382:
            result = v198;
            if (!v228)
            {
              goto LABEL_389;
            }

LABEL_383:
            v199 = &off_1ED452EB0;
            v200 = result;
            if (!dword_1ED452E80)
            {
LABEL_388:
              (*v199)(v228);
              result = v200;
              goto LABEL_389;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v228);
            --qword_1ED456A90;
            off_1ED452EB0(v228);
            result = v200;
            v228 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v199 = &xmmword_1ED452F28;
              goto LABEL_388;
            }

LABEL_389:
            if (!v47)
            {
              goto LABEL_391;
            }

LABEL_390:
            v47 = *v47;
            goto LABEL_391;
          }

          v197 = &xmmword_1ED452F28;
        }

        else
        {
          v198 = result;
        }

        (*v197)(v47);
        v47 = 0;
        goto LABEL_382;
      }
    }

    result = 7;
LABEL_178:
    v75 = v83;
    goto LABEL_182;
  }

  if (v10 != 9)
  {
    if (*(a2 + 72) && (result = sub_181A18DC0(a1, a2), result))
    {
      if (result == 100)
      {
        sqlite3_reset(*(a2 + 24));
LABEL_121:
        v62 = 3;
        v63 = a2;
        v64 = a1;
        v65 = a3;
        v66 = a4;
        v67 = a5;
        goto LABEL_122;
      }
    }

    else
    {
      v15 = *(a2 + 16);
      if (v11 >= 1)
      {
        v16 = 1;
        do
        {
          v18 = *(a1 + 124);
          v19 = v18 == 23 || v18 == 18;
          if (!v19 || (v20 = *(a1 + 120), v20 <= v16 - 1) || (v21 = *(*(a1 + 144) + 8 * (v16 + v20 - 1))) == 0)
          {
LABEL_52:

            return sub_18190EDA8(243806);
          }

          if (byte_181A203AA[*(v21 + 20) & 0x3F] - 3 <= 1 && !*(v21 + 8))
          {
            return 7;
          }

          result = sqlite3_bind_value(v15, v16, v21);
          if (result)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 >= v11;
          }

          ++v16;
        }

        while (!v17);
        if (result)
        {
          return result;
        }

        v15 = *(a2 + 16);
      }

      sqlite3_step(v15);
      result = sqlite3_reset(*(a2 + 16));
    }

    if (result != 19)
    {
      return result;
    }

    goto LABEL_121;
  }

  if (*(a1 + 88))
  {
    v12 = *(a2 + 48);
  }

  else
  {
    v12 = 0;
  }

  v22 = *(a2 + 8);
  if (v11 < 1)
  {
LABEL_47:
    if (v22)
    {
      v28 = *(*v22 + 24);
      if (v28)
      {
        v29 = a6;
        xmmword_1ED452F18(v28);
        v30 = *(*v22 + 24);
        v31 = *(v22 + 8);
        if (v30)
        {
          xmmword_1ED452F28(v30);
        }

        a6 = v29;
      }

      else
      {
        v31 = *(v22 + 8);
      }
    }

    else
    {
      v31 = 0;
    }

    v58 = *(a2 + 8);
    if (v31 <= v11)
    {
      v59 = a6;
    }

    else
    {
      v59 = a6;
      if (a6)
      {
        v60 = v12 == 0;
      }

      else
      {
        v60 = 0;
      }

      v61 = !v60;
      result = sqlite3_bind_int64(v58, v11 + 1, v61);
      if (result)
      {
        return result;
      }

      v58 = *(a2 + 8);
    }

    sqlite3_step(v58);
    result = sqlite3_reset(*(a2 + 8));
    if (result)
    {
      if (result != 19)
      {
        return result;
      }

      v62 = 3;
      v63 = a2;
      v64 = a1;
      v65 = a3;
      v66 = a4;
      v67 = 0;
      goto LABEL_122;
    }

    v68 = *a2;
    if (*a2)
    {
      v69 = *(v68 + 113);
      switch(v69)
      {
        case 186:
          goto LABEL_116;
        case 118:
          if (*(v68 + 120))
          {
            return 0;
          }

          goto LABEL_154;
        case 109:
LABEL_116:
          v70 = "unopened";
          break;
        default:
          v70 = "invalid";
          break;
      }
    }

    else
    {
      v70 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v70);
    sub_1819012D0(192814);
LABEL_154:
    if (*(a2 + 122))
    {
      return 0;
    }

    v62 = 1;
    v63 = a2;
    v64 = a1;
    v65 = a3;
    v66 = a4;
    v67 = v59;
LABEL_122:

    return sub_181A18474(v62, v63, v64, v65, v66, v67);
  }

  v23 = a6;
  v24 = 0;
  while (v12 && !*(v12 + v24))
  {
    result = 0;
LABEL_31:
    if (++v24 >= v11)
    {
      goto LABEL_45;
    }
  }

  v25 = *(a1 + 124);
  if (v25 != 23 && v25 != 9)
  {
    goto LABEL_52;
  }

  if (*(a1 + 120) <= v24)
  {
    goto LABEL_52;
  }

  v27 = *(*(a1 + 144) + 8 * v24);
  if (!v27)
  {
    goto LABEL_52;
  }

  if (byte_181A203AA[*(v27 + 20) & 0x3F] - 3 <= 1 && !*(v27 + 8))
  {
    return 7;
  }

  result = sqlite3_bind_value(v22, v24 + 1, v27);
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_45:
  if (!result)
  {
    v22 = *(a2 + 8);
    a6 = v23;
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_181A18474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, _DWORD *a6)
{
  if (a6 && (result = sub_181A18DC0(a3, a2), result))
  {
    if (result != 100)
    {
      return result;
    }

    if (!*(a2 + 122))
    {
      goto LABEL_31;
    }

    v13 = *(a2 + 24);
    if (v13)
    {
      v14 = *(*v13 + 24);
      if (v14)
      {
        xmmword_1ED452F18(v14);
        v15 = *(*v13 + 24);
        v16 = v13[130];
        if (v15)
        {
          xmmword_1ED452F28(v15);
        }
      }

      else
      {
        v16 = v13[130];
      }
    }

    else
    {
      v16 = 0;
    }

    if (sqlite3_column_int(v13, v16 - 1))
    {
      v28 = 0;
    }

    else
    {
LABEL_31:
      *(a3 + 104) = *(a2 + 24);
      v28 = a4(a5, a1, a3);
      *(a3 + 104) = 0;
    }

    result = sqlite3_reset(*(a2 + 24));
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (a1 == 3 && *(a2 + 76))
    {
      v17 = *(a3 + 4);
      v18 = (*(a3 + 8) - v17);
      if (v18 >= 1)
      {
        v19 = *(a3 + 16);
        v20 = *(a2 + 96);
        v21 = *(a2 + 100);
        v22 = v20 + v18;
        if ((v20 + v18) <= v21)
        {
          result = *(a2 + 88);
        }

        else
        {
          if (v21)
          {
            v23 = *(a2 + 100);
          }

          else
          {
            v23 = 128;
          }

          do
          {
            v24 = v23;
            v23 *= 2;
          }

          while (v23 < v22);
          if (v24 > 1073741695)
          {
            v23 = 2147483391;
            if (v22 > 2147483391)
            {
              return 0;
            }
          }

          v25 = *(a2 + 88);
          v26 = sqlite3_initialize();
          result = 0;
          if (!v23)
          {
            return result;
          }

          if (v26)
          {
            return result;
          }

          result = sub_18190287C(v25, v23, 0x100004077774924);
          if (!result)
          {
            return result;
          }

          *(a2 + 88) = result;
          *(a2 + 100) = v23;
          v20 = *(a2 + 96);
        }

        memcpy((result + v20), (v19 + v17), v18);
        result = 0;
        *(a2 + 96) += v18;
        return result;
      }

      return 0;
    }

    v28 = a4(a5, (a1 + 1), a3);
    if (v28 == 1)
    {
      return 21;
    }
  }

  if (!v28)
  {
    goto LABEL_37;
  }

  if (v28 == 2)
  {
    return 4;
  }

  if (v28 != 1)
  {
    return 21;
  }

  *a6 = 1;
LABEL_37:
  if (!*(a2 + 121))
  {
    return 0;
  }

  v29 = *(a3 + 124);
  if (!*(a2 + 120))
  {
    __s = *(a3 + 112);
    v30 = a2 + 104;
    v42 = *(a2 + 112);
    v43 = *(a2 + 116);
    v44 = v42;
    if (v42 >= v43)
    {
      if (!v43)
      {
        v43 = 128;
      }

      v65 = v43;
      do
      {
        v66 = v65;
        v65 *= 2;
      }

      while (v65 <= v42);
      if (v66 > 1073741695)
      {
        v65 = 2147483391;
        if (v42 > 2147483390)
        {
          goto LABEL_90;
        }
      }

      v67 = *v30;
      v68 = sqlite3_initialize();
      v53 = 0;
      v54 = 7;
      if (!v65 || v68)
      {
        goto LABEL_118;
      }

      v45 = sub_18190287C(v67, v65, 0x100004077774924);
      if (!v45)
      {
        goto LABEL_114;
      }

      *(a2 + 104) = v45;
      *(a2 + 116) = v65;
      v42 = *(a2 + 112);
      v44 = v42;
    }

    else
    {
      v45 = *v30;
    }

    *(a2 + 112) = v42 + 1;
    *(v45 + v44) = 84;
    v46 = *(a2 + 32);
    v47 = *(a2 + 112);
    v48 = *(a2 + 116);
    if (v47 + 9 <= v48)
    {
      v55 = *v30;
    }

    else
    {
      if (v48)
      {
        v49 = *(a2 + 116);
      }

      else
      {
        v49 = 128;
      }

      do
      {
        v50 = v49;
        v49 *= 2;
      }

      while (v49 < v47 + 9);
      if (v50 > 1073741695)
      {
        v49 = 2147483391;
        if (v47 > 2147483382)
        {
          goto LABEL_90;
        }
      }

      v51 = *v30;
      v52 = sqlite3_initialize();
      v53 = 0;
      v54 = 7;
      if (!v49 || v52)
      {
        goto LABEL_118;
      }

      v55 = sub_18190287C(v51, v49, 0x100004077774924);
      if (!v55)
      {
        goto LABEL_114;
      }

      *(a2 + 104) = v55;
      *(a2 + 116) = v49;
      v47 = *(a2 + 112);
    }

    v69 = (v55 + v47);
    if (v46 > 0x7F)
    {
      if (v46 >> 14)
      {
        v70 = sub_1819436D0(v69, v46);
      }

      else
      {
        v69->i8[0] = (v46 >> 7) | 0x80;
        v69->i8[1] = v46 & 0x7F;
        v70 = 2;
      }
    }

    else
    {
      v69->i8[0] = v46;
      v70 = 1;
    }

    v71 = *(a2 + 112) + v70;
    *(a2 + 112) = v71;
    v72 = *(a2 + 32);
    if (v72 < 1)
    {
      v54 = 0;
LABEL_117:
      v53 = 1;
      goto LABEL_118;
    }

    v73 = *(a2 + 48);
    v74 = v72 + v71;
    v75 = *(a2 + 116);
    if ((v72 + v71) <= v75)
    {
      v79 = *v30;
      goto LABEL_116;
    }

    if (v75)
    {
      v76 = *(a2 + 116);
    }

    else
    {
      v76 = 128;
    }

    do
    {
      v77 = v76;
      v76 *= 2;
    }

    while (v76 < v74);
    if (v77 <= 1073741695 || (v76 = 2147483391, v74 <= 2147483391))
    {
      v108 = *v30;
      v78 = sqlite3_initialize();
      v53 = 0;
      v54 = 7;
      if (v76 && !v78)
      {
        v79 = sub_18190287C(v108, v76, 0x100004077774924);
        if (v79)
        {
          *(a2 + 104) = v79;
          *(a2 + 116) = v76;
          v71 = *(a2 + 112);
LABEL_116:
          memcpy((v79 + v71), v73, v72);
          v54 = 0;
          *(a2 + 112) += v72;
          goto LABEL_117;
        }

LABEL_114:
        v53 = 0;
      }

LABEL_118:
      v80 = strlen(__s);
      if (v80 < 0)
      {
        goto LABEL_135;
      }

      if (v53)
      {
        v81 = (v80 + 1);
        v82 = *(a2 + 112);
        v83 = *(a2 + 116);
        v84 = v82 + v81;
        if ((v82 + v81) <= v83)
        {
          v54 = 0;
          v90 = *v30;
          goto LABEL_134;
        }

        if (v83)
        {
          v85 = *(a2 + 116);
        }

        else
        {
          v85 = 128;
        }

        do
        {
          v86 = v85;
          v85 *= 2;
        }

        while (v85 < v84);
        if (v86 <= 1073741695 || (v85 = 2147483391, v84 <= 2147483391))
        {
          v87 = *v30;
          v88 = sqlite3_initialize();
          v89 = 7;
          if (!v85 || v88)
          {
            goto LABEL_132;
          }

          v90 = sub_18190287C(v87, v85, 0x100004077774924);
          if (v90)
          {
            *(a2 + 104) = v90;
            *(a2 + 116) = v85;
            v82 = *(a2 + 112);
LABEL_134:
            memcpy((v90 + v82), __s, v81);
            *(a2 + 112) += v81;
LABEL_135:
            result = v54;
            *(a2 + 120) = 1;
            v31 = v29 == 9;
            if (v29 == 9)
            {
              v32 = 9;
            }

            else
            {
              v32 = 18;
            }

            if (v54)
            {
              goto LABEL_139;
            }

            goto LABEL_42;
          }
        }

        v89 = 7;
      }

      else
      {
        v89 = v54;
      }

LABEL_132:
      *(a2 + 120) = 1;
      v31 = v29 == 9;
      result = v89;
      goto LABEL_139;
    }

LABEL_90:
    v53 = 0;
    v54 = 7;
    goto LABEL_118;
  }

  v30 = a2 + 104;
  v31 = v29 == 9;
  if (v29 == 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = 18;
  }

LABEL_42:
  v33 = *(a2 + 112);
  v34 = *(a2 + 116);
  v35 = v33;
  if (v33 >= v34)
  {
    if (!v34)
    {
      v34 = 128;
    }

    v56 = v34;
    do
    {
      v57 = v56;
      v56 *= 2;
    }

    while (v56 <= v33);
    if (v57 > 1073741695)
    {
      v56 = 2147483391;
      if (v33 > 2147483390)
      {
        goto LABEL_83;
      }
    }

    v58 = *v30;
    v59 = sqlite3_initialize();
    result = 7;
    if (!v56 || v59)
    {
      goto LABEL_139;
    }

    v36 = sub_18190287C(v58, v56, 0x100004077774924);
    if (!v36)
    {
LABEL_83:
      result = 7;
      goto LABEL_139;
    }

    *(a2 + 104) = v36;
    *(a2 + 116) = v56;
    v33 = *(a2 + 112);
    v35 = v33;
  }

  else
  {
    v36 = *v30;
  }

  *(a2 + 112) = v33 + 1;
  *(v36 + v35) = v32;
  v37 = v28 == 1;
  v39 = *(a2 + 112);
  v38 = *(a2 + 116);
  v40 = v39;
  if (v39 < v38)
  {
    v41 = *v30;
LABEL_46:
    result = 0;
    *(a2 + 112) = v39 + 1;
    *(v41 + v40) = v37;
    goto LABEL_139;
  }

  if (!v38)
  {
    v38 = 128;
  }

  v60 = v38;
  do
  {
    v61 = v60;
    v60 *= 2;
  }

  while (v60 <= v39);
  if (v61 > 1073741695)
  {
    v60 = 2147483391;
    if (v39 > 2147483390)
    {
      goto LABEL_83;
    }
  }

  v62 = *v30;
  v63 = sqlite3_initialize();
  result = 7;
  if (v60 && !v63)
  {
    v64 = sub_18190287C(v62, v60, 0x100004077774924);
    if (v64)
    {
      v41 = v64;
      *(a2 + 104) = v64;
      *(a2 + 116) = v60;
      v39 = *(a2 + 112);
      v40 = v39;
      goto LABEL_46;
    }

    goto LABEL_83;
  }

LABEL_139:
  v91 = *(a2 + 32);
  if (v91 >= 1)
  {
    for (i = 0; i < v91; ++i)
    {
      if (v31 || v29 == 23 && *(*(a2 + 48) + i))
      {
        v93 = *(a3 + 124);
        v94 = v93 == 23 || v93 == 9;
        if (!v94 || i >= *(a3 + 120))
        {
          goto LABEL_163;
        }

        v95 = (*(a3 + 144) + 8 * i);
      }

      else
      {
        v96 = *(a3 + 124);
        v97 = v96 == 23 || v96 == 18;
        if (!v97 || (v98 = *(a3 + 120), i >= v98))
        {
LABEL_163:
          v99 = 0;
          if (result)
          {
            continue;
          }

          goto LABEL_164;
        }

        v95 = (*(a3 + 144) + 8 * i + 8 * v98);
      }

      v99 = *v95;
      if (result)
      {
        continue;
      }

LABEL_164:
      v110 = 0;
      result = sub_181A12484(0, v99, &v110, v27);
      if (!result)
      {
        v100 = *(a2 + 112);
        v101 = v110 + v100;
        v102 = *(v30 + 12);
        if (v110 + v100 <= v102)
        {
          v107 = *v30;
          goto LABEL_177;
        }

        if (v102)
        {
          v103 = *(v30 + 12);
        }

        else
        {
          v103 = 128;
        }

        do
        {
          v104 = v103;
          v103 *= 2;
        }

        while (v103 < v101);
        if (v104 <= 1073741695 || (v103 = 2147483391, v101 <= 2147483391))
        {
          v105 = *v30;
          v106 = sqlite3_initialize();
          result = 7;
          if (!v103 || v106)
          {
            goto LABEL_142;
          }

          v107 = sub_18190287C(v105, v103, 0x100004077774924);
          if (v107)
          {
            *(a2 + 104) = v107;
            *(v30 + 12) = v103;
            v100 = *(a2 + 112);
LABEL_177:
            sub_181A12484(v107 + v100, v99, 0, v27);
            result = 0;
            *(a2 + 112) += v110;
            goto LABEL_142;
          }
        }

        result = 7;
      }

LABEL_142:
      v91 = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_181A18DC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(*v4 + 24);
    if (v5)
    {
      xmmword_1ED452F18(*(*v4 + 24));
    }

    v6 = *(v4 + 8);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(v4 + 16);
      do
      {
        v10 = (v9 + v7);
        if ((*(v9 + v7 + 20) & 0x9000) != 0 || v10[8])
        {
          sub_18193CA00(v10);
          v9 = *(v4 + 16);
          v6 = *(v4 + 8);
        }

        *(v9 + v7 + 20) = 1;
        ++v8;
        v7 += 64;
      }

      while (v8 < v6);
    }

    if (*(v4 + 93))
    {
      *(v4 + 134) = *(v4 + 134) & 0xFFFC | 1;
    }

    if (v5)
    {
      xmmword_1ED452F28(v5);
    }
  }

  v12 = *(a1 + 120);
  v11 = *(a1 + 124);
  if (v11 == 18)
  {
    v13 = sqlite3changeset_new;
  }

  else
  {
    v13 = sqlite3changeset_old;
  }

  if (v12 < 1)
  {
    result = 0;
    if (v11 == 9)
    {
      goto LABEL_55;
    }

    goto LABEL_34;
  }

  v14 = 0;
  v15 = *(a2 + 48);
  while (1)
  {
    if (v15 && !*(v15 + v14))
    {
      result = 0;
      goto LABEL_21;
    }

    v22 = 0;
    v13(a1, v14, &v22);
    if (v22)
    {
      break;
    }

    result = sub_18190EDA8(243806);
    if (result)
    {
      goto LABEL_31;
    }

LABEL_21:
    if (++v14 >= v12)
    {
      goto LABEL_31;
    }
  }

  if (byte_181A203AA[*(v22 + 10) & 0x3F] - 3 > 1 || *(v22 + 1))
  {
    result = sqlite3_bind_value(v4, v14 + 1, v22);
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  result = 7;
LABEL_31:
  if (v11 != 9)
  {
LABEL_34:
    if (!result && *(a2 + 122) && v12 >= 1)
    {
      v17 = 0;
      do
      {
        if (*(*(a2 + 48) + v17))
        {
          result = 0;
          ++v17;
        }

        else
        {
          v18 = *(a1 + 124);
          v19 = v18 == 23 || v18 == 18;
          if (v19 && (v20 = *(a1 + 120), v17 < v20))
          {
            v21 = *(*(a1 + 144) + 8 * v17 + 8 * v20);
          }

          else
          {
            v21 = 0;
          }

          sqlite3_bind_int64(v4, v12 + ++v17, v21 == 0);
          if (v21)
          {
            if (byte_181A203AA[*(v21 + 20) & 0x3F] - 3 <= 1 && !*(v21 + 8))
            {
              return 7;
            }

            result = sqlite3_bind_value(v4, v17, v21);
            if (result)
            {
              break;
            }
          }

          else
          {
            result = 0;
          }
        }
      }

      while (v17 < v12);
    }
  }

LABEL_55:
  if (!result)
  {
    result = sqlite3_step(v4);
    if (result != 100)
    {
      return sqlite3_reset(v4);
    }
  }

  return result;
}

uint64_t sub_181A190A0(uint64_t a1, int a2, char *__s1, int a4, char *__s2)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    return 1;
  }

  v10 = *(a1 + 56);
  while (!*v10++)
  {
    if (a2)
    {
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v16 = *__s1;
    v17 = 1;
    if (*__s1)
    {
      v18 = v16 == 5;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || v16 == 255)
    {
      goto LABEL_24;
    }

    if ((v16 - 1) < 2)
    {
      v17 = 9;
LABEL_24:
      __s1 += v17;
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v23 = __s1[1];
    if (v23 < 0)
    {
      v28 = __s1[2];
      if (__s1[2] < 0)
      {
        v39 = __s1[3];
        if (v39 < 0)
        {
          v44 = 0;
          v41 = sub_1818C7200(__s1 + 1, &v44);
          if (HIDWORD(v44))
          {
            v23 = -1;
          }

          else
          {
            v23 = v44;
          }

          v24 = (v41 + 1);
        }

        else
        {
          v23 = ((v23 & 0x7F) << 14) | ((v28 & 0x7F) << 7) | v39;
          v24 = 4;
        }
      }

      else
      {
        v23 = v28 | ((v23 & 0x7F) << 7);
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
    }

    __s1 += v24 + v23;
    if (!a4)
    {
LABEL_25:
      v19 = *__s2;
      if (*__s2)
      {
        v11 = 1;
        if (v19 != 5 && v19 != 255)
        {
          if ((v19 - 1) >= 2)
          {
            v25 = __s2[1];
            if (v25 < 0)
            {
              v29 = __s2[2];
              if (__s2[2] < 0)
              {
                v40 = __s2[3];
                if (v40 < 0)
                {
                  v44 = 0;
                  v42 = sub_1818C7200(__s2 + 1, &v44);
                  if (HIDWORD(v44))
                  {
                    v25 = -1;
                  }

                  else
                  {
                    v25 = v44;
                  }

                  v26 = (v42 + 1);
                }

                else
                {
                  v25 = ((v25 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v40;
                  v26 = 4;
                }
              }

              else
              {
                v25 = v29 | ((v25 & 0x7F) << 7);
                v26 = 3;
              }
            }

            else
            {
              v26 = 2;
            }

            v11 = v26 + v25;
          }

          else
          {
            v11 = 9;
          }
        }
      }

      else
      {
        v11 = 1;
      }

      __s2 += v11;
    }

LABEL_5:
    if (!--v5)
    {
      return 1;
    }
  }

  v13 = *__s1;
  v14 = 1;
  if (*__s1)
  {
    v15 = v13 == 5;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v13 != 255)
  {
    if ((v13 - 1) >= 2)
    {
      v20 = __s1[1];
      if (v20 < 0)
      {
        v22 = __s1[2];
        if (__s1[2] < 0)
        {
          v27 = __s1[3];
          if (v27 < 0)
          {
            v44 = 0;
            v30 = sub_1818C7200(__s1 + 1, &v44);
            if (HIDWORD(v44))
            {
              v20 = -1;
            }

            else
            {
              v20 = v44;
            }

            v21 = (v30 + 1);
          }

          else
          {
            v20 = ((v20 & 0x7F) << 14) | ((v22 & 0x7F) << 7) | v27;
            v21 = 4;
          }
        }

        else
        {
          v20 = v22 | ((v20 & 0x7F) << 7);
          v21 = 3;
        }
      }

      else
      {
        v21 = 2;
      }

      v14 = v21 + v20;
    }

    else
    {
      v14 = 9;
    }
  }

  v31 = *__s2;
  v32 = 1;
  if (*__s2)
  {
    v33 = v31 == 5;
  }

  else
  {
    v33 = 1;
  }

  if (v33 || v31 == 255)
  {
    goto LABEL_56;
  }

  if ((v31 - 1) < 2)
  {
    v32 = 9;
LABEL_56:
    if (v14 != v32)
    {
      return 0;
    }

LABEL_57:
    if (memcmp(__s1, __s2, v14))
    {
      return 0;
    }

    __s1 += v14;
    __s2 += v14;
    goto LABEL_5;
  }

  v34 = __s2[1];
  if (v34 < 0)
  {
    v36 = __s2[2];
    if (__s2[2] < 0)
    {
      v37 = __s2[3];
      if (v37 < 0)
      {
        v44 = 0;
        v38 = sub_1818C7200(__s2 + 1, &v44);
        if (HIDWORD(v44))
        {
          v34 = -1;
        }

        else
        {
          v34 = v44;
        }

        v35 = (v38 + 1);
      }

      else
      {
        v34 = ((v34 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v37;
        v35 = 4;
      }
    }

    else
    {
      v34 = v36 | ((v34 & 0x7F) << 7);
      v35 = 3;
    }
  }

  else
  {
    v35 = 2;
  }

  if (v14 == v35 + v34)
  {
    goto LABEL_57;
  }

  return 0;
}

unsigned __int8 **sub_181A19420(unsigned __int8 **result, int a2)
{
  v2 = result;
  v3 = *result;
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      while (1)
      {
        v6 = v3 + 1;
        v5 = *v3;
        if ((v5 - 3) > 1)
        {
          break;
        }

        v7 = *v6;
        if (v7 < 0)
        {
          v9 = v3[2];
          if (v3[2] < 0)
          {
            v10 = v3[3];
            if (v10 < 0)
            {
              v11 = 0;
              result = sub_1818C7200(v6, &v11);
              if (HIDWORD(v11))
              {
                v7 = -1;
              }

              else
              {
                v7 = v11;
              }

              v8 = result;
            }

            else
            {
              v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
              v8 = 3;
            }
          }

          else
          {
            v7 = v9 | ((v7 & 0x7F) << 7);
            v8 = 2;
          }
        }

        else
        {
          v8 = 1;
        }

        v3 = &v6[v8 + v7];
        if (!--v4)
        {
          goto LABEL_18;
        }
      }

      v3 += 9;
      if ((v5 - 1) >= 2)
      {
        v3 = v6;
      }

      --v4;
    }

    while (v4);
  }

LABEL_18:
  *v2 = v3;
  return result;
}

void **sub_181A19514(void **result, int a2, char *__src, char *a4)
{
  v4 = result;
  v5 = *result;
  if (a2 >= 1)
  {
    v8 = a2;
    while (1)
    {
      v11 = *__src;
      v12 = 1;
      if (*__src)
      {
        v13 = v11 == 5;
      }

      else
      {
        v13 = 1;
      }

      if (v13 || v11 == 255)
      {
        goto LABEL_13;
      }

      if ((v11 - 1) < 2)
      {
        break;
      }

      v17 = __src[1];
      if (v17 < 0)
      {
        v19 = __src[2];
        if (__src[2] < 0)
        {
          v21 = __src[3];
          if (v21 < 0)
          {
            v25 = 0;
            v23 = sub_1818C7200(__src + 1, &v25);
            if (HIDWORD(v25))
            {
              v17 = -1;
            }

            else
            {
              v17 = v25;
            }

            v18 = (v23 + 1);
          }

          else
          {
            v17 = ((v17 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v21;
            v18 = 4;
          }
        }

        else
        {
          v17 = v19 | ((v17 & 0x7F) << 7);
          v18 = 3;
        }
      }

      else
      {
        v18 = 2;
      }

      v12 = v18 + v17;
      v14 = *a4;
      if (*a4)
      {
LABEL_14:
        v9 = 1;
        if (v14 != 5 && v14 != 255)
        {
          if ((v14 - 1) < 2)
          {
            v9 = 9;
          }

          else
          {
            v15 = a4[1];
            if (v15 < 0)
            {
              v20 = a4[2];
              if (a4[2] < 0)
              {
                v22 = a4[3];
                if (v22 < 0)
                {
                  v25 = 0;
                  v24 = sub_1818C7200(a4 + 1, &v25);
                  if (HIDWORD(v25))
                  {
                    v15 = -1;
                  }

                  else
                  {
                    v15 = v25;
                  }

                  v16 = (v24 + 1);
                }

                else
                {
                  v15 = ((v15 & 0x7F) << 14) | ((v20 & 0x7F) << 7) | v22;
                  v16 = 4;
                }
              }

              else
              {
                v15 = v20 | ((v15 & 0x7F) << 7);
                v16 = 3;
              }
            }

            else
            {
              v16 = 2;
            }

            v9 = v16 + v15;
          }
        }

        result = memcpy(v5, a4, v9);
        v10 = v9;
        goto LABEL_5;
      }

LABEL_34:
      result = memcpy(v5, __src, v12);
      v9 = 1;
      v10 = v12;
LABEL_5:
      v5 += v10;
      __src += v12;
      a4 += v9;
      if (!--v8)
      {
        goto LABEL_40;
      }
    }

    v12 = 9;
LABEL_13:
    v14 = *a4;
    if (*a4)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_40:
  *v4 = v5;
  return result;
}

uint64_t sub_181A19714(_BYTE **a1, uint64_t a2, int a3, unsigned __int8 *a4, char *__src, unsigned __int8 *a6, char *a7)
{
  v7 = a6;
  v8 = a4;
  v9 = *a1;
  LODWORD(v10) = *(a2 + 16);
  if (a3)
  {
    goto LABEL_2;
  }

  if (v10 < 1)
  {
    return 0;
  }

  v82 = 0;
  v171 = 0;
  v166 = __src;
  v168 = a7;
  v83 = a7;
  v84 = a6;
  v85 = __src;
  v86 = a4;
  do
  {
    if (!v85)
    {
      v93 = *v86;
      v94 = 1;
      if (*v86)
      {
        v95 = v93 == 5;
      }

      else
      {
        v95 = 1;
      }

      if (!v95 && v93 != 255)
      {
        if ((v93 - 1) >= 2)
        {
          v98 = v86[1];
          if (v98 < 0)
          {
            v101 = v86[2];
            if (v86[2] < 0)
            {
              v103 = v86[3];
              if (v103 < 0)
              {
                v177 = 0;
                v158 = v84;
                v159 = v82;
                v160 = sub_1818C7200(v86 + 1, &v177);
                v82 = v159;
                v84 = v158;
                if (HIDWORD(v177))
                {
                  v98 = -1;
                }

                else
                {
                  v98 = v177;
                }

                v99 = (v160 + 1);
              }

              else
              {
                v98 = ((v98 & 0x7F) << 14) | ((v101 & 0x7F) << 7) | v103;
                v99 = 4;
              }
            }

            else
            {
              v98 = v101 | ((v98 & 0x7F) << 7);
              v99 = 3;
            }
          }

          else
          {
            v99 = 2;
          }

          v85 = 0;
          v94 = v99 + v98;
        }

        else
        {
          v85 = 0;
          v94 = 9;
        }
      }

LABEL_190:
      v107 = v94;
      v108 = v86;
      goto LABEL_191;
    }

    v89 = v9;
    v90 = *v85;
    v91 = 1;
    if (*v85)
    {
      v92 = v90 == 5;
    }

    else
    {
      v92 = 1;
    }

    if (!v92 && v90 != 255)
    {
      if ((v90 - 1) < 2)
      {
        v91 = 9;
        goto LABEL_171;
      }

      v96 = v85[1];
      if (v96 < 0)
      {
        v100 = v85[2];
        if (v85[2] < 0)
        {
          v102 = v85[3];
          if (v102 < 0)
          {
            v177 = 0;
            v104 = v84;
            v105 = v82;
            v106 = sub_1818C7200(v85 + 1, &v177);
            v82 = v105;
            v84 = v104;
            if (HIDWORD(v177))
            {
              v96 = -1;
            }

            else
            {
              v96 = v177;
            }

            v97 = (v106 + 1);
          }

          else
          {
            v96 = ((v96 & 0x7F) << 14) | ((v100 & 0x7F) << 7) | v102;
            v97 = 4;
          }
        }

        else
        {
          v96 = v100 | ((v96 & 0x7F) << 7);
          v97 = 3;
        }

        v90 = *v85;
      }

      else
      {
        v97 = 2;
      }

      v91 = v97 + v96;
    }

    if (!v90)
    {
      v107 = 0;
      v108 = 0;
      goto LABEL_173;
    }

LABEL_171:
    v107 = v91;
    v108 = v85;
LABEL_173:
    v109 = *v86;
    v94 = 1;
    if (*v86 && v109 != 5 && v109 != 255)
    {
      if ((v109 - 1) >= 2)
      {
        v110 = (v86 + 1);
        v111 = v86[1];
        if (v111 < 0)
        {
          v113 = v86[2];
          if (v86[2] < 0)
          {
            v114 = v86[3];
            if (v114 < 0)
            {
              v177 = 0;
              v115 = v86;
              v116 = v84;
              v117 = v82;
              v118 = v108;
              v119 = sub_1818C7200(v110, &v177);
              v108 = v118;
              v82 = v117;
              v84 = v116;
              v86 = v115;
              if (HIDWORD(v177))
              {
                v111 = -1;
              }

              else
              {
                v111 = v177;
              }

              v112 = (v119 + 1);
            }

            else
            {
              v111 = ((v111 & 0x7F) << 14) | ((v113 & 0x7F) << 7) | v114;
              v112 = 4;
            }
          }

          else
          {
            v111 = v113 | ((v111 & 0x7F) << 7);
            v112 = 3;
          }
        }

        else
        {
          v112 = 2;
        }

        v94 = v112 + v111;
      }

      else
      {
        v94 = 9;
      }
    }

    v85 += v91;
    v9 = v89;
    if (!v108)
    {
      goto LABEL_190;
    }

LABEL_191:
    v173 = v86;
    __dst = v9;
    v172 = v94;
    if (!v83)
    {
      v122 = *v84;
      v123 = 1;
      if (*v84 && v122 != 5 && v122 != 255)
      {
        if ((v122 - 1) >= 2)
        {
          v126 = v84[1];
          if (v126 < 0)
          {
            v129 = v84[2];
            if (v84[2] < 0)
            {
              v131 = v84[3];
              if (v131 < 0)
              {
                v177 = 0;
                v161 = v84;
                v162 = v82;
                v163 = v108;
                v164 = sub_1818C7200(v84 + 1, &v177);
                v108 = v163;
                v82 = v162;
                v84 = v161;
                if (HIDWORD(v177))
                {
                  v126 = -1;
                }

                else
                {
                  v126 = v177;
                }

                v127 = (v164 + 1);
              }

              else
              {
                v126 = ((v126 & 0x7F) << 14) | ((v129 & 0x7F) << 7) | v131;
                v127 = 4;
              }
            }

            else
            {
              v126 = v129 | ((v126 & 0x7F) << 7);
              v127 = 3;
            }
          }

          else
          {
            v127 = 2;
          }

          v83 = 0;
          v123 = v127 + v126;
        }

        else
        {
          v83 = 0;
          v123 = 9;
        }
      }

      goto LABEL_229;
    }

    v120 = *v83;
    v121 = 1;
    if (*v83 && v120 != 5 && v120 != 255)
    {
      if ((v120 - 1) < 2)
      {
        v121 = 9;
        goto LABEL_221;
      }

      v124 = v83[1];
      if (v124 < 0)
      {
        v128 = v83[2];
        if (v83[2] < 0)
        {
          v130 = v83[3];
          if (v130 < 0)
          {
            v177 = 0;
            v132 = v84;
            v133 = v82;
            v134 = v108;
            v135 = sub_1818C7200(v83 + 1, &v177);
            v108 = v134;
            v82 = v133;
            v84 = v132;
            if (HIDWORD(v177))
            {
              v124 = -1;
            }

            else
            {
              v124 = v177;
            }

            v125 = (v135 + 1);
          }

          else
          {
            v124 = ((v124 & 0x7F) << 14) | ((v128 & 0x7F) << 7) | v130;
            v125 = 4;
          }
        }

        else
        {
          v124 = v128 | ((v124 & 0x7F) << 7);
          v125 = 3;
        }

        v120 = *v83;
      }

      else
      {
        v125 = 2;
      }

      v121 = v125 + v124;
    }

    if (!v120)
    {
      v136 = 0;
      v137 = 0;
      goto LABEL_223;
    }

LABEL_221:
    v136 = v121;
    v137 = v83;
LABEL_223:
    v138 = *v84;
    v123 = 1;
    if (!*v84 || v138 == 5 || v138 == 255)
    {
      goto LABEL_228;
    }

    if ((v138 - 1) < 2)
    {
      v123 = 9;
LABEL_228:
      v83 += v121;
      if (v137)
      {
        goto LABEL_230;
      }

LABEL_229:
      v136 = v123;
      v137 = v84;
      goto LABEL_230;
    }

    v149 = v84[1];
    if (v149 < 0)
    {
      v151 = v84[2];
      if (v84[2] < 0)
      {
        v152 = v84[3];
        if (v152 < 0)
        {
          v177 = 0;
          v153 = v137;
          v154 = v84;
          v155 = v82;
          v156 = v108;
          v157 = sub_1818C7200(v84 + 1, &v177);
          v108 = v156;
          v82 = v155;
          v84 = v154;
          v137 = v153;
          if (HIDWORD(v177))
          {
            v149 = -1;
          }

          else
          {
            v149 = v177;
          }

          v150 = (v157 + 1);
        }

        else
        {
          v149 = ((v149 & 0x7F) << 14) | ((v151 & 0x7F) << 7) | v152;
          v150 = 4;
        }
      }

      else
      {
        v149 = v151 | ((v149 & 0x7F) << 7);
        v150 = 3;
      }
    }

    else
    {
      v150 = 2;
    }

    v123 = v150 + v149;
    v83 += v121;
    if (!v137)
    {
      goto LABEL_229;
    }

LABEL_230:
    v139 = v85;
    v140 = v84;
    v141 = *(a2 + 56);
    v142 = v82;
    v143 = *(v141 + v82);
    v144 = v107;
    if (*(v141 + v82))
    {
      v145 = 0;
    }

    else
    {
      v145 = v107 == v136;
    }

    if (!v145 || (v146 = v107, v147 = v108, v148 = memcmp(v108, v137, v146), v108 = v147, v148))
    {
      v87 = v171;
      if (!v143)
      {
        v87 = 1;
      }

      v171 = v87;
      memcpy(__dst, v108, v144);
      v9 = &__dst[v144];
    }

    else
    {
      *__dst = 0;
      v9 = __dst + 1;
    }

    v86 = &v173[v172];
    v84 = &v140[v123];
    v82 = v142 + 1;
    v10 = *(a2 + 16);
    v88 = v142 + 1 < v10;
    v85 = v139;
    v7 = a6;
  }

  while (v88);
  __src = v166;
  a7 = v168;
  if (v171)
  {
LABEL_2:
    if (v10 < 1)
    {
LABEL_129:
      *a1 = v9;
      return 1;
    }

    v11 = 0;
    while (1)
    {
      if (!__src)
      {
        v16 = *v8;
        v17 = 1;
        if (*v8)
        {
          v18 = v16 == 5;
        }

        else
        {
          v18 = 1;
        }

        if (!v18 && v16 != 255)
        {
          if ((v16 - 1) >= 2)
          {
            v21 = v8[1];
            if (v21 < 0)
            {
              v24 = v8[2];
              if (v8[2] < 0)
              {
                v26 = v8[3];
                if (v26 < 0)
                {
                  v177 = 0;
                  v65 = a7;
                  v66 = sub_1818C7200(v8 + 1, &v177);
                  a7 = v65;
                  if (HIDWORD(v177))
                  {
                    v21 = -1;
                  }

                  else
                  {
                    v21 = v177;
                  }

                  v22 = (v66 + 1);
                }

                else
                {
                  v21 = ((v21 & 0x7F) << 14) | ((v24 & 0x7F) << 7) | v26;
                  v22 = 4;
                }
              }

              else
              {
                v21 = v24 | ((v21 & 0x7F) << 7);
                v22 = 3;
              }
            }

            else
            {
              v22 = 2;
            }

            __src = 0;
            v17 = v22 + v21;
          }

          else
          {
            __src = 0;
            v17 = 9;
          }
        }

        goto LABEL_105;
      }

      v13 = *__src;
      v14 = 1;
      if (*__src)
      {
        v15 = v13 == 5;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && v13 != 255)
      {
        if ((v13 - 1) < 2)
        {
          v14 = 9;
          goto LABEL_40;
        }

        v19 = __src[1];
        if (v19 < 0)
        {
          v23 = __src[2];
          if (__src[2] < 0)
          {
            v25 = __src[3];
            if (v25 < 0)
            {
              v177 = 0;
              v27 = a7;
              v28 = __src;
              v29 = sub_1818C7200(__src + 1, &v177);
              __src = v28;
              a7 = v27;
              if (HIDWORD(v177))
              {
                v19 = -1;
              }

              else
              {
                v19 = v177;
              }

              v20 = (v29 + 1);
            }

            else
            {
              v19 = ((v19 & 0x7F) << 14) | ((v23 & 0x7F) << 7) | v25;
              v20 = 4;
            }
          }

          else
          {
            v19 = v23 | ((v19 & 0x7F) << 7);
            v20 = 3;
          }

          v13 = *__src;
        }

        else
        {
          v20 = 2;
        }

        v14 = v20 + v19;
      }

      if (!v13)
      {
        v30 = 0;
        v31 = 0;
        goto LABEL_42;
      }

LABEL_40:
      v30 = v14;
      v31 = __src;
LABEL_42:
      v32 = *v8;
      v17 = 1;
      if (!*v8 || v32 == 5 || v32 == 255)
      {
        goto LABEL_47;
      }

      if ((v32 - 1) < 2)
      {
        v17 = 9;
LABEL_47:
        __src += v14;
        if (v31)
        {
          goto LABEL_48;
        }

        goto LABEL_105;
      }

      v35 = v8[1];
      if (v35 < 0)
      {
        v39 = v8[2];
        if (v8[2] < 0)
        {
          v41 = v8[3];
          if (v41 < 0)
          {
            v177 = 0;
            v43 = v31;
            v44 = a7;
            v45 = __src;
            v46 = sub_1818C7200(v8 + 1, &v177);
            __src = v45;
            a7 = v44;
            v47 = v46;
            v31 = v43;
            if (HIDWORD(v177))
            {
              v35 = -1;
            }

            else
            {
              v35 = v177;
            }

            v36 = (v47 + 1);
          }

          else
          {
            v35 = ((v35 & 0x7F) << 14) | ((v39 & 0x7F) << 7) | v41;
            v36 = 4;
          }
        }

        else
        {
          v35 = v39 | ((v35 & 0x7F) << 7);
          v36 = 3;
        }
      }

      else
      {
        v36 = 2;
      }

      v17 = v36 + v35;
      __src += v14;
      if (v31)
      {
LABEL_48:
        if (!a7)
        {
          goto LABEL_106;
        }

        goto LABEL_49;
      }

LABEL_105:
      v30 = v17;
      v31 = v8;
      if (!a7)
      {
LABEL_106:
        v67 = *v7;
        v56 = 1;
        if (*v7 && v67 != 5 && v67 != 255)
        {
          if ((v67 - 1) >= 2)
          {
            v68 = v7[1];
            if (v68 < 0)
            {
              v70 = v7[2];
              if (v7[2] < 0)
              {
                v71 = v7[3];
                if (v71 < 0)
                {
                  v177 = 0;
                  v72 = v31;
                  v73 = __src;
                  v74 = sub_1818C7200(v7 + 1, &v177);
                  __src = v73;
                  v75 = v74;
                  v31 = v72;
                  if (HIDWORD(v177))
                  {
                    v68 = -1;
                  }

                  else
                  {
                    v68 = v177;
                  }

                  v69 = (v75 + 1);
                }

                else
                {
                  v68 = ((v68 & 0x7F) << 14) | ((v70 & 0x7F) << 7) | v71;
                  v69 = 4;
                }
              }

              else
              {
                v68 = v70 | ((v68 & 0x7F) << 7);
                v69 = 3;
              }
            }

            else
            {
              v69 = 2;
            }

            a7 = 0;
            v56 = v69 + v68;
          }

          else
          {
            a7 = 0;
            v56 = 9;
          }
        }

        goto LABEL_122;
      }

LABEL_49:
      v33 = *a7;
      v34 = 1;
      if (*a7 && v33 != 5 && v33 != 255)
      {
        if ((v33 - 1) < 2)
        {
          v34 = 9;
LABEL_79:
          v53 = v34;
          v54 = a7;
          goto LABEL_81;
        }

        v37 = a7[1];
        if (v37 < 0)
        {
          v40 = a7[2];
          if (a7[2] < 0)
          {
            v42 = a7[3];
            if (v42 < 0)
            {
              v177 = 0;
              v48 = v31;
              v49 = a7;
              v50 = __src;
              v51 = sub_1818C7200(a7 + 1, &v177);
              __src = v50;
              a7 = v49;
              v52 = v51;
              v31 = v48;
              if (HIDWORD(v177))
              {
                v37 = -1;
              }

              else
              {
                v37 = v177;
              }

              v38 = (v52 + 1);
            }

            else
            {
              v37 = ((v37 & 0x7F) << 14) | ((v40 & 0x7F) << 7) | v42;
              v38 = 4;
            }
          }

          else
          {
            v37 = v40 | ((v37 & 0x7F) << 7);
            v38 = 3;
          }

          v33 = *a7;
        }

        else
        {
          v38 = 2;
        }

        v34 = v38 + v37;
      }

      if (v33)
      {
        goto LABEL_79;
      }

      v53 = 0;
      v54 = 0;
LABEL_81:
      v55 = *v7;
      v56 = 1;
      if (!*v7 || v55 == 5 || v55 == 255)
      {
        goto LABEL_86;
      }

      if ((v55 - 1) < 2)
      {
        v56 = 9;
LABEL_86:
        a7 += v34;
        if (v54)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      v57 = v7[1];
      if (v57 < 0)
      {
        v59 = v7[2];
        if (v7[2] < 0)
        {
          v60 = v7[3];
          if (v60 < 0)
          {
            v177 = 0;
            v165 = __src;
            v167 = a7;
            v61 = v54;
            v62 = v31;
            v63 = sub_1818C7200(v7 + 1, &v177);
            v54 = v61;
            __src = v165;
            a7 = v167;
            v64 = v63;
            v31 = v62;
            if (HIDWORD(v177))
            {
              v57 = -1;
            }

            else
            {
              v57 = v177;
            }

            v58 = (v64 + 1);
          }

          else
          {
            v57 = ((v57 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v60;
            v58 = 4;
          }
        }

        else
        {
          v57 = v59 | ((v57 & 0x7F) << 7);
          v58 = 3;
        }
      }

      else
      {
        v58 = 2;
      }

      v56 = v58 + v57;
      a7 += v34;
      if (v54)
      {
        goto LABEL_123;
      }

LABEL_122:
      v53 = v56;
      v54 = v7;
LABEL_123:
      v76 = a7;
      if (a3 || !*(*(a2 + 56) + v11) && (v30 != v53 || (v77 = v30, v78 = __src, v79 = v54, v80 = memcmp(v31, v54, v77), v54 = v79, __src = v78, v80)))
      {
        v12 = __src;
        memcpy(v9, v54, v53);
        v9 += v53;
        __src = v12;
      }

      else
      {
        *v9++ = 0;
      }

      v8 += v17;
      v7 += v56;
      ++v11;
      a7 = v76;
      if (v11 >= *(a2 + 16))
      {
        goto LABEL_129;
      }
    }
  }

  return 0;
}

uint64_t sub_181A1A314(uint64_t result, int a2, char *__src, int a4, char *a5, int a6, _DWORD *a7)
{
  if (!*a7)
  {
    v39[9] = v7;
    v39[10] = v8;
    v12 = result;
    v13 = *(result + 12);
    v14 = *(result + 8) + (a6 + a4);
    if (v14 > v13)
    {
      if (v13)
      {
        v15 = *(result + 12);
      }

      else
      {
        v15 = 128;
      }

      do
      {
        v16 = v15;
        v15 *= 2;
      }

      while (v15 < v14);
      if (v16 >= 1073741696)
      {
        v15 = 2147483391;
        if (v14 > 2147483391)
        {
          *a7 = 7;
          return result;
        }
      }

      v18 = *result;
      result = sqlite3_initialize();
      if (!v15 || result || (result = sub_18190287C(v18, v15, 0x100004077774924)) == 0)
      {
        *a7 = 7;
        return result;
      }

      *v12 = result;
      *(v12 + 12) = v15;
      if (*a7)
      {
        return result;
      }
    }

    v19 = *v12;
    v20 = (*v12 + *(v12 + 8));
    if (a2 >= 1)
    {
      do
      {
        v23 = *__src;
        v24 = 1;
        if (*__src)
        {
          v25 = v23 == 5;
        }

        else
        {
          v25 = 1;
        }

        if (!v25 && v23 != 255)
        {
          if ((v23 - 1) >= 2)
          {
            v27 = __src[1];
            if (v27 < 0)
            {
              v29 = __src[2];
              if (__src[2] < 0)
              {
                v30 = __src[3];
                if (v30 < 0)
                {
                  v39[0] = 0;
                  v31 = sub_1818C7200(__src + 1, v39);
                  if (HIDWORD(v39[0]))
                  {
                    v27 = -1;
                  }

                  else
                  {
                    v27 = v39[0];
                  }

                  v28 = (v31 + 1);
                }

                else
                {
                  v27 = ((v27 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v30;
                  v28 = 4;
                }
              }

              else
              {
                v27 = v29 | ((v27 & 0x7F) << 7);
                v28 = 3;
              }
            }

            else
            {
              v28 = 2;
            }

            v24 = v28 + v27;
          }

          else
          {
            v24 = 9;
          }
        }

        v32 = *a5;
        v21 = 1;
        if (*a5)
        {
          v33 = v32 == 5;
        }

        else
        {
          v33 = 1;
        }

        if (!v33 && v32 != 255)
        {
          if ((v32 - 1) < 2)
          {
            v21 = 9;
          }

          else
          {
            v34 = a5[1];
            if (v34 < 0)
            {
              v36 = a5[2];
              if (a5[2] < 0)
              {
                v37 = a5[3];
                if (v37 < 0)
                {
                  v39[0] = 0;
                  v38 = sub_1818C7200(a5 + 1, v39);
                  if (HIDWORD(v39[0]))
                  {
                    v34 = -1;
                  }

                  else
                  {
                    v34 = v39[0];
                  }

                  v35 = (v38 + 1);
                }

                else
                {
                  v34 = ((v34 & 0x7F) << 14) | ((v36 & 0x7F) << 7) | v37;
                  v35 = 4;
                }
              }

              else
              {
                v34 = v36 | ((v34 & 0x7F) << 7);
                v35 = 3;
              }
            }

            else
            {
              v35 = 2;
            }

            v21 = v35 + v34;
          }
        }

        if (v23 == 255 || v23 == 0)
        {
          result = memcpy(v20, a5, v21);
          v26 = v21;
        }

        else
        {
          result = memcpy(v20, __src, v24);
          v26 = v24;
        }

        v20 += v26;
        __src += v24;
        a5 += v21;
        --a2;
      }

      while (a2);
      v19 = *v12;
    }

    *(v12 + 8) = v20 - v19;
  }

  return result;
}

uint64_t sub_181A1A5DC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(value,pointer hidden,count hidden,ctype hidden)");
  if (!result)
  {
    if (sqlite3_initialize())
    {
      *a5 = 0;
      return 7;
    }

    v7 = sub_181902484(24, 0x1070040037824BELL);
    *a5 = v7;
    if (!v7)
    {
      return 7;
    }

    v8 = v7;
    result = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  return result;
}

uint64_t sub_181A1A650(uint64_t a1, uint64_t a2)
{
  if (*a2 < 1)
  {
    goto LABEL_19;
  }

  v2 = 0;
  v3 = (*(a2 + 8) + 5);
  v4 = -1;
  v5 = -1;
  v6 = -1;
  do
  {
    if (*v3 && *(v3 - 1) == 2)
    {
      v7 = *(v3 - 5);
      if (v7 == 1)
      {
        v8 = v2;
      }

      else
      {
        v8 = v6;
      }

      if (v7 == 2)
      {
        v8 = v6;
        v9 = v2;
      }

      else
      {
        v9 = v5;
      }

      if (v7 == 3)
      {
        v4 = v2;
      }

      else
      {
        v6 = v8;
        v5 = v9;
      }
    }

    ++v2;
    v3 += 12;
  }

  while (*a2 != v2);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_19:
    *(a2 + 64) = 0x41DFFFFFFFC00000;
    *(a2 + 72) = 0x7FFFFFFFLL;
    *(a2 + 40) = 0;
  }

  else
  {
    v10 = *(a2 + 32);
    v11 = v10 + 8 * v6;
    *v11 = 1;
    *(v11 + 4) = 1;
    *(a2 + 64) = 0x3FF0000000000000;
    *(a2 + 72) = 100;
    *(a2 + 40) = 1;
    if ((v5 & 0x80000000) == 0)
    {
      v12 = v10 + 8 * v5;
      *v12 = 2;
      *(v12 + 4) = 1;
      *(a2 + 40) = 2;
      if ((v4 & 0x80000000) == 0)
      {
        v13 = v10 + 8 * v4;
        *v13 = 3;
        *(v13 + 4) = 1;
        *(a2 + 40) = 3;
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_181A1A748(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

double sub_181A1A800(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v4 = sub_181902484(40, 0x10A0040C8C54D62);
    if (v4)
    {
      *(v4 + 32) = 0;
      result = 0.0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t sub_181A1A864(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A1A91C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 16);
  if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v15 = *a5;
      if (*a5)
      {
        if ((*(v15 + 20) & 0xFBF) == 0xA01 && *(v15 + 23) == 112 && !strcmp(*v15, "carray-bind"))
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v17 = *(v16 + 8);
            *(a1 + 16) = *v16;
            *(a1 + 24) = v17;
            v18 = *(v16 + 12) & 7;
            goto LABEL_71;
          }
        }
      }

      else
      {
        sub_1819012D0(99775);
      }
    }

    goto LABEL_72;
  }

  v7 = *a5;
  if (!*a5)
  {
    v19 = a5;
    v20 = a2;
    sub_1819012D0(99775);
    a2 = v20;
    a5 = v19;
LABEL_18:
    v14 = 0;
    *v6 = 0;
    goto LABEL_19;
  }

  if ((*(v7 + 20) & 0xFBF) != 0xA01)
  {
    goto LABEL_18;
  }

  if (*(v7 + 23) != 112)
  {
    goto LABEL_18;
  }

  v8 = a2;
  v9 = a5;
  v10 = strcmp(*v7, "carray");
  a2 = v8;
  a5 = v9;
  if (v10)
  {
    goto LABEL_18;
  }

  v11 = *(v7 + 8);
  *v6 = v11;
  if (!v11)
  {
LABEL_54:
    v14 = 0;
    goto LABEL_19;
  }

  v12 = v9[1];
  if (!v12)
  {
    sub_1819012D0(92237);
    a5 = v9;
    v14 = 0;
    a2 = v8;
    goto LABEL_19;
  }

  v13 = *(v12 + 20);
  if ((v13 & 0x24) != 0)
  {
    v14 = *v12;
    a2 = v8;
    goto LABEL_19;
  }

  if ((v13 & 8) == 0)
  {
    a2 = v8;
    if ((v13 & 0x12) != 0 && *(v12 + 8))
    {
      v14 = sub_18193CFCC(v12);
      a2 = v8;
      a5 = v9;
      goto LABEL_19;
    }

    goto LABEL_54;
  }

  v28 = *v12;
  a2 = v8;
  if (*v12 >= -9.22337204e18)
  {
    if (v28 <= 9.22337204e18)
    {
      v14 = v28;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0x8000000000000000;
  }

LABEL_19:
  *(a1 + 24) = v14;
  if (a2 <= 2)
  {
    *(a1 + 32) = 0;
    goto LABEL_72;
  }

  v21 = a5[2];
  if (!v21)
  {
    goto LABEL_36;
  }

  v22 = *(v21 + 20);
  if ((~v22 & 0x202) == 0 && *(v21 + 22) == 1)
  {
    v21 = *(v21 + 8);
    if (!v21)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v22)
  {
    v21 = 0;
    goto LABEL_36;
  }

  v21 = sub_18193CB70(v21, 1, a3, a4);
  if (!v21)
  {
LABEL_36:
    *(*a1 + 16) = sqlite3_mprintf("unknown datatype: %Q", v21);
    return 1;
  }

LABEL_28:
  for (i = 0; *(v21 + i) == aInt32[i]; ++i)
  {
    if (!*(v21 + i))
    {
      v18 = 0;
      goto LABEL_71;
    }

LABEL_30:
    ;
  }

  if (byte_181A20298[*(v21 + i)] == byte_181A20298[aInt32[i]])
  {
    goto LABEL_30;
  }

  for (j = 0; *(v21 + j) == aInt64_0[j]; ++j)
  {
    if (!*(v21 + j))
    {
      v18 = 1;
      goto LABEL_71;
    }

LABEL_39:
    ;
  }

  if (byte_181A20298[*(v21 + j)] == byte_181A20298[aInt64_0[j]])
  {
    goto LABEL_39;
  }

  for (k = 0; *(v21 + k) == aDouble[k]; ++k)
  {
    if (!*(v21 + k))
    {
      v18 = 2;
      goto LABEL_71;
    }

LABEL_45:
    ;
  }

  if (byte_181A20298[*(v21 + k)] == byte_181A20298[aDouble[k]])
  {
    goto LABEL_45;
  }

  for (m = 0; *(v21 + m) == aChar_0[m]; ++m)
  {
    if (!*(v21 + m))
    {
      v18 = 3;
      goto LABEL_71;
    }

LABEL_57:
    ;
  }

  if (byte_181A20298[*(v21 + m)] == byte_181A20298[aChar_0[m]])
  {
    goto LABEL_57;
  }

  for (n = 0; *(v21 + n) != aStructIovec[n]; ++n)
  {
    if (byte_181A20298[*(v21 + n)] != byte_181A20298[aStructIovec[n]])
    {
      goto LABEL_36;
    }

LABEL_67:
    ;
  }

  if (*(v21 + n))
  {
    goto LABEL_67;
  }

  v18 = 4;
LABEL_71:
  *(a1 + 32) = v18;
LABEL_72:
  result = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_181A1AD14(uint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 1:
      return 0;
    case 3:
      if (!a2)
      {
        return 0;
      }

      v5 = off_1E6A28488[*(a1 + 32)];
      v6 = a2;
      v7 = v5;
      v8 = -1;
      v9 = 1;
      v10 = 0;
LABEL_28:
      sub_18190B23C(v6, v7, v8, v9, v10);
      return 0;
    case 2:
      v3 = *(a1 + 24);
      goto LABEL_5;
  }

  v3 = 0;
  v11 = *(a1 + 32);
  if (v11 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v11 != 1)
      {
        goto LABEL_5;
      }

      if (!a2)
      {
        return 0;
      }

      v3 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
    }

    else
    {
      if (!a2)
      {
        return 0;
      }

      v3 = *(*(a1 + 16) + 4 * *(a1 + 8) - 4);
    }

LABEL_6:
    v4 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v4, v3);
    }

    else
    {
      *v4 = v3;
      *(v4 + 20) = 4;
    }

    return 0;
  }

  if (v11 == 2)
  {
    if (a2)
    {
      v13 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
      v14 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(*a2);
      }

      else
      {
        *(v14 + 20) = 1;
      }

      *v14 = v13;
      *(v14 + 20) = 8;
    }

    else
    {
      sub_1819012D0(100067);
    }

    return 0;
  }

  if (v11 == 3)
  {
    if (!a2)
    {
      return 0;
    }

    v15 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
    v6 = a2;
    v7 = v15;
    v8 = -1;
    v9 = 1;
    goto LABEL_27;
  }

  if (v11 != 4)
  {
LABEL_5:
    if (!a2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (a2)
  {
    v12 = *(a1 + 16) + 16 * *(a1 + 8);
    v8 = *(v12 - 8);
    if ((v8 & 0x80000000) == 0)
    {
      v6 = a2;
      v7 = *(v12 - 16);
      v9 = 0;
LABEL_27:
      v10 = -1;
      goto LABEL_28;
    }
  }

  if (a2)
  {
    *(a2 + 36) = 18;
    sub_1818900D0(*a2, "string or blob too big", -1, 1, 0);
  }

  return 0;
}

uint64_t sub_181A1AF04(sqlite3 *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v6 = a6;
  v139 = *MEMORY[0x1E69E9840];
  *v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  memset(v137, 0, sizeof(v137));
  v138 = 0;
  v131 = 0;
  v132 = 0;
  zSQL = 0;
  if (a3 < 4)
  {
    goto LABEL_142;
  }

  v8 = a3;
  v9 = 4294967197;
  v10 = -1;
  v11 = 3;
  v12 = MEMORY[0x1E69E9830];
  while (2)
  {
    v129 = v10;
    v13 = *(a4 + 8 * v11);
    v14 = v13 - 1;
    v15 = v13 - 1;
    do
    {
      while (1)
      {
        v17 = *(v15 + 1);
        if ((v17 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!__maskrune(*++v15, 0x4000uLL))
        {
          goto LABEL_10;
        }
      }

      ++v15;
    }

    while ((*(v12 + 4 * v17 + 60) & 0x4000) != 0);
LABEL_10:
    v18 = v13 - 1;
    if (strncmp("filename", v15, 8uLL))
    {
      goto LABEL_18;
    }

    v19 = (v15 + 8);
    do
    {
      while (1)
      {
        v21 = *v19;
        if ((v21 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!__maskrune(*v19++, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      ++v19;
    }

    while ((*(v12 + 4 * v21 + 60) & 0x4000) != 0);
LABEL_15:
    v18 = v13 - 1;
    if (*(v19 - 1) == 61)
    {
      p_zSQL = &v132;
LABEL_38:
      v28 = (v19 - 1);
      do
      {
        while (1)
        {
          v30 = v28[1];
          if ((v30 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!__maskrune(*++v28, 0x4000uLL))
          {
            goto LABEL_42;
          }
        }

        ++v28;
      }

      while ((*(v12 + 4 * v30 + 60) & 0x4000) != 0);
LABEL_42:
      LOBYTE(v137[0]) = 0;
      if (*p_zSQL)
      {
        sub_181A1C95C(v133, "more than one '%s' parameter");
      }

      else
      {
        v31 = sqlite3_mprintf("%s", v28);
        *p_zSQL = v31;
        if (v31)
        {
          v32 = v31;
          for (i = strlen(v31); i; --i)
          {
            v46 = v32[i];
            if (v46 < 0)
            {
              if (!__maskrune(v32[i], 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v12 + 4 * v46 + 60) & 0x4000) == 0)
            {
              break;
            }
          }

          v32[i] = 0;
          v47 = *v32;
          if (v47 == 39 || v47 == 34)
          {
            v48 = strlen(v32);
            if (v48 >= 2)
            {
              v49 = v48 - 1;
              if (v32[v48 - 1] == v47)
              {
                if (v49 < 2)
                {
                  *v32 = 0;
                }

                else
                {
                  v50 = 0;
                  for (j = 1; j < v49; ++j)
                  {
                    v53 = v32[j];
                    if (v53 == v47)
                    {
                      if (v32[j + 1] == v47)
                      {
                        ++j;
                      }

                      LOBYTE(v53) = v32[j];
                    }

                    v52 = v50 + 1;
                    v32[v50++] = v53;
                  }

                  v32[v52] = 0;
                }
              }
            }
          }
        }

        else
        {
          sub_181A1C95C(v133, "out of memory");
        }
      }

      v10 = v129;
      if (!LOBYTE(v137[0]))
      {
        goto LABEL_5;
      }

LABEL_155:
      v87 = 0;
      v6 = a6;
      v88 = v132;
      if (!v132)
      {
        goto LABEL_162;
      }

      goto LABEL_156;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v23 = *(v18 + 1);
        if ((*(v18 + 1) & 0x80000000) == 0)
        {
          break;
        }

        ++v18;
        if (!__maskrune(v23, 0x4000uLL))
        {
          goto LABEL_20;
        }
      }

      ++v18;
    }

    while ((*(v12 + 4 * v23 + 60) & 0x4000) != 0);
LABEL_20:
    if (!strncmp("data", v18, 4uLL))
    {
      v19 = (v18 + 4);
      do
      {
        while (1)
        {
          v24 = *v19;
          if ((*v19 & 0x80000000) == 0)
          {
            break;
          }

          ++v19;
          if (!__maskrune(v24, 0x4000uLL))
          {
            goto LABEL_25;
          }
        }

        ++v19;
      }

      while ((*(v12 + 4 * v24 + 60) & 0x4000) != 0);
LABEL_25:
      if (*(v19 - 1) == 61)
      {
        p_zSQL = &v131;
        goto LABEL_38;
      }
    }

    v25 = v13 - 1;
    do
    {
      while (1)
      {
        v26 = *(v25 + 1);
        if ((*(v25 + 1) & 0x80000000) == 0)
        {
          break;
        }

        ++v25;
        if (!__maskrune(v26, 0x4000uLL))
        {
          goto LABEL_31;
        }
      }

      ++v25;
    }

    while ((*(v12 + 4 * v26 + 60) & 0x4000) != 0);
LABEL_31:
    if (!strncmp("schema", v25, 6uLL))
    {
      v19 = (v25 + 6);
      do
      {
        while (1)
        {
          v27 = *v19;
          if ((*v19 & 0x80000000) == 0)
          {
            break;
          }

          ++v19;
          if (!__maskrune(v27, 0x4000uLL))
          {
            goto LABEL_36;
          }
        }

        ++v19;
      }

      while ((*(v12 + 4 * v27 + 60) & 0x4000) != 0);
LABEL_36:
      if (*(v19 - 1) == 61)
      {
        p_zSQL = &zSQL;
        goto LABEL_38;
      }
    }

    v34 = (v13 + 8);
    v35 = v13 - 1;
    do
    {
      v37 = v34;
      v38 = *(v35 + 1);
      if (v38 < 0)
      {
        v36 = __maskrune(*(v35 + 1), 0x4000uLL);
      }

      else
      {
        v36 = *(v12 + 4 * v38 + 60) & 0x4000;
      }

      ++v35;
      v34 = v37 + 1;
    }

    while (v36);
    if (strncmp("header", v35, 6uLL))
    {
      while (1)
      {
LABEL_126:
        v76 = *(v14 + 1);
        if (v76 < 0)
        {
          if (!__maskrune(*++v14, 0x4000uLL))
          {
            goto LABEL_128;
          }
        }

        else
        {
          ++v14;
          if ((*(v12 + 4 * v76 + 60) & 0x4000) == 0)
          {
LABEL_128:
            if (strncmp("columns", v14, 7uLL))
            {
              goto LABEL_145;
            }

            v77 = (v14 + 7);
            do
            {
              while (1)
              {
                v79 = v77;
                v80 = *v77;
                if ((v80 & 0x8000000000000000) == 0)
                {
                  break;
                }

                v78 = __maskrune(v80, 0x4000uLL);
                v77 = v79 + 1;
                if (!v78)
                {
                  goto LABEL_133;
                }
              }

              v81 = *(v12 + 4 * v80 + 60) & 0x4000;
              v77 = v79 + 1;
            }

            while (v81);
LABEL_133:
            if (*(v77 - 1) != 61)
            {
LABEL_145:
              sub_181A1C95C(v133, "bad parameter: '%s'");
              goto LABEL_155;
            }

            do
            {
              while (1)
              {
                v83 = v79[1];
                if ((v83 & 0x8000000000000000) == 0)
                {
                  break;
                }

                if (!__maskrune(*++v79, 0x4000uLL))
                {
                  goto LABEL_138;
                }
              }

              ++v79;
            }

            while ((*(v12 + 4 * v83 + 60) & 0x4000) != 0);
LABEL_138:
            if (v9 >= 1)
            {
              sub_181A1C95C(v133, "more than one 'columns' parameter", v125);
              goto LABEL_155;
            }

            v9 = atoi(v79);
            v10 = v129;
            if (v9 <= 0)
            {
              sub_181A1C95C(v133, "column= value must be positive", v125);
              goto LABEL_155;
            }

            goto LABEL_5;
          }
        }
      }
    }

    v39 = v8;
    v40 = v9;
    v9 = a4;
    v41 = (v35 + 6);
    do
    {
      v43 = v41;
      v44 = v37;
      v45 = *v41;
      if (v45 < 0)
      {
        v42 = __maskrune(v45, 0x4000uLL);
      }

      else
      {
        v42 = *(v12 + 4 * v45 + 60) & 0x4000;
      }

      v41 = (v43 + 1);
      ++v37;
    }

    while (v42);
    if (!*v43)
    {
      v10 = 1;
      a4 = v9;
      v9 = v40;
      v8 = v39;
      if ((v129 & 0x80000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_5;
    }

    if (*v43 != 61)
    {
      a4 = v9;
      LODWORD(v9) = v40;
      v8 = v39;
      goto LABEL_126;
    }

    do
    {
      v55 = v44;
      v56 = v43[1];
      if (v56 < 0)
      {
        v54 = __maskrune(v43[1], 0x4000uLL);
      }

      else
      {
        v54 = *(v12 + 4 * v56 + 60) & 0x4000;
      }

      ++v43;
      ++v44;
    }

    while (v54);
    v57 = "yes";
    v58 = v43;
    a4 = v9;
    v9 = v40;
    v8 = v39;
    while (*v57 == *v58)
    {
      if (!*v57)
      {
        goto LABEL_99;
      }

LABEL_81:
      ++v57;
      ++v58;
    }

    if (byte_181A20298[*v57] == byte_181A20298[*v58])
    {
      goto LABEL_81;
    }

    v59 = "on";
    for (k = v43; *v59 == *k; ++k)
    {
      if (!*v59)
      {
        goto LABEL_99;
      }

LABEL_90:
      ++v59;
    }

    if (byte_181A20298[*v59] == byte_181A20298[*k])
    {
      goto LABEL_90;
    }

    v61 = "true";
    for (m = v43; *v61 == *m; ++m)
    {
      if (!*v61)
      {
        goto LABEL_99;
      }

LABEL_96:
      ++v61;
    }

    if (byte_181A20298[*v61] == byte_181A20298[*m])
    {
      goto LABEL_96;
    }

    v63 = *v43;
    if (v63 == 49 && !v43[1])
    {
LABEL_99:
      v10 = 1;
      if ((v129 & 0x80000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_5;
    }

    v64 = v55;
    v65 = *v43;
    v66 = "no";
    while (2)
    {
      if (*v66 == v65)
      {
        if (!v65)
        {
          goto LABEL_120;
        }

        goto LABEL_107;
      }

      if (byte_181A20298[*v66] == byte_181A20298[v65])
      {
LABEL_107:
        ++v66;
        v67 = *v64++;
        v65 = v67;
        continue;
      }

      break;
    }

    v68 = v55;
    v69 = *v43;
    for (n = "off"; *n == v69; ++n)
    {
      if (!v69)
      {
        goto LABEL_120;
      }

LABEL_112:
      v71 = *v68++;
      v69 = v71;
    }

    if (byte_181A20298[*n] == byte_181A20298[v69])
    {
      goto LABEL_112;
    }

    v72 = *v43;
    for (ii = "false"; *ii == v72; ++ii)
    {
      if (!v72)
      {
        goto LABEL_120;
      }

LABEL_117:
      v74 = *v55++;
      v72 = v74;
    }

    if (byte_181A20298[*ii] == byte_181A20298[v72])
    {
      goto LABEL_117;
    }

    if (v63 != 48 || v43[1])
    {
      goto LABEL_126;
    }

LABEL_120:
    v10 = 0;
    if ((v129 & 0x80000000) == 0)
    {
LABEL_154:
      sub_181A1C95C(v133, "more than one 'header' parameter", v125);
      goto LABEL_155;
    }

LABEL_5:
    if (++v11 != v8)
    {
      continue;
    }

    break;
  }

  v84 = v131;
  v85 = v132;
  v86 = a1;
  v6 = a6;
  if ((v132 == 0) != (v131 != 0))
  {
LABEL_142:
    sub_181A1C95C(v133, "must specify either filename= or data= but not both");
    goto LABEL_143;
  }

  if ((v9 < 1 || v10 == 1) && sub_181A1C9CC(v133, v132, v131))
  {
LABEL_143:
    v87 = 0;
    v88 = v132;
    if (!v132)
    {
      goto LABEL_162;
    }

LABEL_156:
    v89 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_161:
      (*v89)(v88);
      goto LABEL_162;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v88);
    --qword_1ED456A90;
    off_1ED452EB0(v88);
    v88 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v89 = &xmmword_1ED452F28;
      goto LABEL_161;
    }

LABEL_162:
    v90 = v131;
    if (!v131)
    {
      goto LABEL_169;
    }

    v91 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
      --qword_1ED456A90;
      off_1ED452EB0(v90);
      v90 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_169:
        v92 = zSQL;
        if (!zSQL)
        {
          goto LABEL_176;
        }

        v93 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v92);
          --qword_1ED456A90;
          off_1ED452EB0(v92);
          v92 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_176:
            if (!LOBYTE(v137[0]))
            {
LABEL_185:
              if (v133[0])
              {
                fclose(v133[0]);
                v96 = *(&v136 + 1);
                if (*(&v136 + 1))
                {
                  v97 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
LABEL_192:
                    (*v97)(v96);
                    goto LABEL_193;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v96);
                  --qword_1ED456A90;
                  off_1ED452EB0(v96);
                  v96 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v97 = &xmmword_1ED452F28;
                    goto LABEL_192;
                  }
                }
              }

LABEL_193:
              v98 = v133[1];
              if (v133[1])
              {
                v99 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v98);
                  --qword_1ED456A90;
                  off_1ED452EB0(v98);
                  v98 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_200;
                  }

                  v99 = &xmmword_1ED452F28;
                }

                (*v99)(v98);
              }

LABEL_200:
              if (v87 <= 1)
              {
                return 1;
              }

              else
              {
                return v87;
              }
            }

            v94 = *v6;
            if (*v6)
            {
              v95 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v94);
                --qword_1ED456A90;
                off_1ED452EB0(v94);
                v94 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_184;
                }

                v95 = &xmmword_1ED452F28;
              }

              (*v95)(v94);
            }

LABEL_184:
            *v6 = sqlite3_mprintf("%s", v137);
            goto LABEL_185;
          }

          v93 = &xmmword_1ED452F28;
        }

        (*v93)(v92);
        goto LABEL_176;
      }

      v91 = &xmmword_1ED452F28;
    }

    (*v91)(v90);
    goto LABEL_169;
  }

  if (sqlite3_initialize())
  {
    *a5 = 0;
    goto LABEL_151;
  }

  v101 = sub_181902484(56, 0x107004058A477ACLL);
  *a5 = v101;
  if (!v101)
  {
LABEL_151:
    sub_181A1C95C(v133, "out of memory");
    v87 = 7;
    v88 = v132;
    if (!v132)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

  v102 = v101;
  *(v101 + 48) = 0;
  *(v101 + 16) = 0u;
  *(v101 + 32) = 0u;
  *v101 = 0u;
  v103 = zSQL;
  if (!zSQL)
  {
    if (sqlite3_initialize() || (v105 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
    {
      v104 = &unk_1EA831560;
    }

    else
    {
      v104 = v105;
      *(v105 + 16) = 0;
      *v105 = 0u;
      *(v105 + 20) = 2147483645;
      *(v105 + 28) = 0;
    }

    sqlite3_str_appendf(v104, "CREATE TABLE x(");
    if ((v9 & 0x80000000) != 0 && v10 <= 0)
    {
      LODWORD(v9) = 0;
      do
      {
        sub_181A1CC3C(v133);
        LODWORD(v9) = v9 + 1;
      }

      while (v135 == 44);
    }

    if (v9 < 1 || v10 > 0)
    {
      v106 = 0;
      v108 = v9 < 0 && v10 != 0;
      v109 = &byte_181A2878D;
      do
      {
        v110 = sub_181A1CC3C(v133);
        v112 = v9 > 0 && v106 < v9;
        if (v112 || v108)
        {
          sqlite3_str_appendf(v104, "%s%w TEXT", v109, v110);
          ++v106;
          v109 = ",";
        }
      }

      while (v135 == 44);
      if ((v9 & 0x80000000) != 0)
      {
        v86 = a1;
        v6 = a6;
        goto LABEL_248;
      }

      v6 = a6;
      if (v106 >= v9 || (v113 = v106 + 1, sqlite3_str_appendf(v104, "%sc%d TEXT", v109, v106 + 1), v106 + 1 == v9))
      {
        v106 = v9;
        v86 = a1;
        goto LABEL_248;
      }

      v86 = a1;
      do
      {
        sqlite3_str_appendf(v104, "%sc%d TEXT", ",", ++v113);
      }

      while (v9 != v113);
    }

    else
    {
      sqlite3_str_appendf(v104, "%sc%d TEXT", &byte_181A2878D, 0);
      if (v9 == 1)
      {
        v106 = 1;
LABEL_248:
        *(v102 + 48) = v106;
        sqlite3_str_appendf(v104, ")");
        v115 = sqlite3_str_finish(v104);
        zSQL = v115;
        if (v115)
        {
          v103 = v115;
          v84 = v131;
          v85 = v132;
          goto LABEL_250;
        }

        sub_181A1C95C(v133, "out of memory");
        v87 = 7;
LABEL_279:
        sub_181A1C034(v102);
        v88 = v132;
        if (!v132)
        {
          goto LABEL_162;
        }

        goto LABEL_156;
      }

      v114 = 1;
      do
      {
        sqlite3_str_appendf(v104, "%sc%d TEXT", ",", v114++);
      }

      while (v9 != v114);
    }

    v106 = v9;
    goto LABEL_248;
  }

  if ((v9 & 0x80000000) != 0)
  {
    do
    {
      sub_181A1CC3C(v133);
      ++*(v102 + 48);
    }

    while (v135 == 44);
  }

  else
  {
    *(v101 + 48) = v9;
  }

LABEL_250:
  v116 = 0;
  v131 = 0;
  v132 = 0;
  *(v102 + 24) = v85;
  *(v102 + 32) = v84;
  if (v10 == 1)
  {
    if (v84)
    {
      v116 = SDWORD2(v135);
    }

    else
    {
      v117 = MEMORY[0x1865D8110](v133[0]);
      v116 = v117 - v136 + DWORD2(v135);
    }
  }

  *(v102 + 40) = v116;
  if (v133[0])
  {
    fclose(v133[0]);
    v118 = *(&v136 + 1);
    if (*(&v136 + 1))
    {
      v119 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_261;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v118);
      --qword_1ED456A90;
      off_1ED452EB0(v118);
      v118 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v119 = &xmmword_1ED452F28;
LABEL_261:
        (*v119)(v118);
      }
    }
  }

  v120 = v133[1];
  if (v133[1])
  {
    v121 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_268;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v120);
    --qword_1ED456A90;
    off_1ED452EB0(v120);
    v120 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v121 = &xmmword_1ED452F28;
LABEL_268:
      (*v121)(v120);
    }
  }

  *v133 = 0u;
  v134 = 0u;
  v136 = 0uLL;
  LOBYTE(v137[0]) = 0;
  v122 = sqlite3_declare_vtab(v86, v103);
  if (v122)
  {
    v87 = v122;
    v123 = sqlite3_errmsg(v86);
    sub_181A1C95C(v133, "bad schema: '%s' - %s", v103, v123);
    goto LABEL_279;
  }

  v124 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v103);
    --qword_1ED456A90;
    off_1ED452EB0(v103);
    v103 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v124 = &xmmword_1ED452F28;
      goto LABEL_276;
    }
  }

  else
  {
LABEL_276:
    (*v124)(v103);
  }

  sqlite3_vtab_config(v86, 3);
  return 0;
}

uint64_t sub_181A1C034(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v4 = *(v1 + 32);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_14;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
  --qword_1ED456A90;
  off_1ED452EB0(v4);
  v4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
LABEL_14:
    (*v5)(v4);
  }

LABEL_15:
  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_20:
    (*v6)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_181A1C1C8(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 48);
  if (sqlite3_initialize())
  {
    return 7;
  }

  v6 = 12 * v4;
  v7 = sub_181902484(v6 + 296, 3272603629);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  bzero(v7, v6 + 296);
  v9 = &v8[8 * *(a1 + 48) + 296];
  *(v8 + 34) = v8 + 296;
  *(v8 + 35) = v9;
  *a2 = v8;
  result = sub_181A1C9CC((v8 + 8), *(a1 + 24), *(a1 + 32));
  if (result)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
        --qword_1ED456A90;
        off_1ED452EB0(v10);
        v10 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_13;
        }

        v11 = &xmmword_1ED452F28;
      }

      (*v11)(v10);
    }

LABEL_13:
    *(a1 + 16) = sqlite3_mprintf("%s", v8 + 72);
    return 1;
  }

  return result;
}

uint64_t sub_181A1C308(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*(*a1 + 48) >= 1)
  {
    for (i = 0; i < *(v2 + 48); ++i)
    {
      v4 = *(v1[34] + 8 * i);
      if (v4)
      {
        v5 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
          --qword_1ED456A90;
          off_1ED452EB0(v4);
          v4 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_4;
          }

          v5 = &xmmword_1ED452F28;
        }

        (*v5)(v4);
      }

LABEL_4:
      *(v1[34] + 8 * i) = 0;
      *(v1[35] + 4 * i) = 0;
    }
  }

  v6 = v1[1];
  if (v6)
  {
    fclose(v6);
    v7 = v1[8];
    if (v7)
    {
      v8 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_18:
        (*v8)(v7);
        goto LABEL_19;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
      --qword_1ED456A90;
      off_1ED452EB0(v7);
      v7 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v8 = &xmmword_1ED452F28;
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v9 = v1[2];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_25;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
  --qword_1ED456A90;
  off_1ED452EB0(v9);
  v9 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v10 = &xmmword_1ED452F28;
LABEL_25:
    (*v10)(v9);
  }

LABEL_26:
  *(v1 + 1) = 0u;
  *(v1 + 3) = 0u;
  v1[7] = 0;
  v1[8] = 0;
  *(v1 + 72) = 0;
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_31:
    (*v11)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_181A1C5B8(uint64_t *a1)
{
  v2 = *a1;
  a1[36] = 0;
  v3 = *(a1 + 6);
  if (v3 >= *(a1 + 7) - 1)
  {
    if (sub_181A1D13C((a1 + 1), 0))
    {
      return 7;
    }
  }

  else
  {
    v4 = a1[2];
    *(a1 + 6) = v3 + 1;
    *(v4 + v3) = 0;
  }

  v6 = a1[1];
  v7 = *(v2 + 40);
  if (v6)
  {
    fseek(v6, v7, 0);
    v7 = 0;
    a1[7] = 0;
  }

  a1[6] = v7;
  sub_181A1C64C(a1);
  return 0;
}

uint64_t sub_181A1C64C(uint64_t *a1)
{
  v2 = 0;
  v3 = a1 + 1;
  v4 = *a1;
  while (1)
  {
    v5 = sub_181A1CC3C(v3);
    if (!v5)
    {
      if (v2)
      {
        goto LABEL_21;
      }

      a1[36] = -1;
      return 0;
    }

    if (v2 >= *(v4 + 48))
    {
      goto LABEL_3;
    }

    v6 = v5;
    v7 = *(a1 + 6);
    if (*(a1[35] + 4 * v2) <= v7)
    {
      break;
    }

LABEL_2:
    memcpy(*(a1[34] + 8 * v2++), v6, v7 + 1);
LABEL_3:
    if (*(a1 + 10) != 44)
    {
      goto LABEL_21;
    }
  }

  v8 = v7 + 1;
  v9 = v7 == -1;
  v10 = *(a1[34] + 8 * v2);
  v11 = sqlite3_initialize();
  if (!v9 && !v11)
  {
    v12 = sub_18190287C(v10, v8, 1251237504);
    if (v12)
    {
      *(a1[34] + 8 * v2) = v12;
      *(a1[35] + 4 * v2) = *(a1 + 6) + 1;
      v7 = *(a1 + 6);
      goto LABEL_2;
    }
  }

  sub_181A1C95C(v3, "out of memory");
  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_19;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v14 = &xmmword_1ED452F28;
LABEL_19:
      (*v14)(v13);
    }
  }

  *(v4 + 16) = sqlite3_mprintf("%s", a1 + 72);
LABEL_21:
  ++a1[36];
  if (v2 < *(v4 + 48))
  {
    for (i = v2; i < *(v4 + 48); ++i)
    {
      v16 = *(a1[34] + 8 * i);
      if (v16)
      {
        v17 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
          --qword_1ED456A90;
          off_1ED452EB0(v16);
          v16 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_24;
          }

          v17 = &xmmword_1ED452F28;
        }

        (*v17)(v16);
      }

LABEL_24:
      *(a1[34] + 8 * i) = 0;
      *(a1[35] + 4 * i) = 0;
    }
  }

  return 0;
}

uint64_t sub_181A1C8F4(void *a1, uint64_t a2, signed int a3)
{
  if ((a3 & 0x80000000) == 0 && *(*a1 + 48) > a3)
  {
    if (a2)
    {
      v3 = *(a1[34] + 8 * a3);
      if (v3)
      {
        sub_18190B23C(a2, v3, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return 0;
}

void sub_181A1C95C(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v2 = (a1 + 64);
  if (a2)
  {
    v3[0] = 0;
    v3[1] = a1 + 64;
    v4 = 200;
    v5 = 0;
    v6 = 0;
    sqlite3_str_vappendf(v3, a2, va);
    v2 += HIDWORD(v5);
  }

  else
  {
    sub_1819012D0(34608);
  }

  *v2 = 0;
}

uint64_t sub_181A1C9CC(uint64_t a1, const char *a2, char *__s)
{
  if (!a2)
  {
    *(a1 + 56) = __s;
    v6 = strlen(__s);
    result = 0;
    *(a1 + 48) = v6;
    return result;
  }

  if (sqlite3_initialize())
  {
    *(a1 + 56) = 0;
LABEL_4:
    sub_181A1C95C(a1, "out of memory");
    return 1;
  }

  v7 = sub_181902484(1024, 1979283964);
  *(a1 + 56) = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = fopen(a2, "rb");
  *a1 = v8;
  if (!v8)
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
      --qword_1ED456A90;
      off_1ED452EB0(v9);
      v9 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_17:
        if (*a1)
        {
          fclose(*a1);
          v11 = *(a1 + 56);
          if (v11)
          {
            v12 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
LABEL_24:
              (*v12)(v11);
              goto LABEL_25;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
            --qword_1ED456A90;
            off_1ED452EB0(v11);
            v11 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v12 = &xmmword_1ED452F28;
              goto LABEL_24;
            }
          }
        }

LABEL_25:
        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
            --qword_1ED456A90;
            off_1ED452EB0(v13);
            v13 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_32;
            }

            v14 = &xmmword_1ED452F28;
          }

          (*v14)(v13);
        }

LABEL_32:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        sub_181A1C95C(a1, "cannot open '%s' for reading");
        return 1;
      }

      v10 = &xmmword_1ED452F28;
    }

    (*v10)(v9);
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_181A1CC3C(uint64_t a1)
{
  while (1)
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 40);
    if (v2 >= *(a1 + 48))
    {
      break;
    }

    v3 = *(a1 + 56);
    *(a1 + 40) = v2 + 1;
    v4 = *(v3 + v2);
    if (v4 == 34)
    {
      goto LABEL_27;
    }

LABEL_6:
    if (v4 == -1)
    {
LABEL_26:
      result = 0;
      *(a1 + 32) = -1;
      return result;
    }

    if (v4 != 239 || *(a1 + 28))
    {
      while (1)
      {
LABEL_74:
        if (v4 <= 44)
        {
          switch(v4)
          {
            case -1:
              goto LABEL_87;
            case 10:
              ++*(a1 + 24);
              v34 = *(a1 + 16);
              if (v34 >= 1 && *(*(a1 + 8) + v34 - 1) == 13)
              {
                *(a1 + 16) = v34 - 1;
              }

LABEL_87:
              *(a1 + 32) = v4;
              goto LABEL_88;
            case 44:
              goto LABEL_87;
          }
        }

        v31 = *(a1 + 16);
        if (v31 >= *(a1 + 20) - 1)
        {
          if (sub_181A1D13C(a1, v4))
          {
            return 0;
          }
        }

        else
        {
          v32 = *(a1 + 8);
          *(a1 + 16) = v31 + 1;
          *(v32 + v31) = v4;
        }

        v33 = *(a1 + 40);
        if (v33 < *(a1 + 48))
        {
          v30 = *(a1 + 56);
          *(a1 + 40) = v33 + 1;
          v4 = *(v30 + v33);
        }

        else
        {
          v4 = -1;
          if (*a1)
          {
            v4 = sub_181A1D0EC(a1);
          }
        }
      }
    }

    v5 = *(a1 + 16);
    if (v5 >= *(a1 + 20) - 1)
    {
      sub_181A1D13C(a1, -17);
    }

    else
    {
      v6 = *(a1 + 8);
      *(a1 + 16) = v5 + 1;
      *(v6 + v5) = -17;
    }

    v7 = *(a1 + 40);
    if (v7 >= *(a1 + 48))
    {
      if (!*a1)
      {
        goto LABEL_72;
      }

      v4 = sub_181A1D0EC(a1);
    }

    else
    {
      v8 = *(a1 + 56);
      *(a1 + 40) = v7 + 1;
      v4 = *(v8 + v7);
    }

    if (v4 != 187)
    {
      goto LABEL_74;
    }

    v9 = *(a1 + 16);
    if (v9 >= *(a1 + 20) - 1)
    {
      sub_181A1D13C(a1, -69);
    }

    else
    {
      v10 = *(a1 + 8);
      *(a1 + 16) = v9 + 1;
      *(v10 + v9) = -69;
    }

    v11 = *(a1 + 40);
    if (v11 >= *(a1 + 48))
    {
      if (!*a1)
      {
LABEL_72:
        v4 = -1;
        goto LABEL_74;
      }

      v4 = sub_181A1D0EC(a1);
    }

    else
    {
      v12 = *(a1 + 56);
      *(a1 + 40) = v11 + 1;
      v4 = *(v12 + v11);
    }

    if (v4 != 191)
    {
      goto LABEL_74;
    }

    *(a1 + 28) = 1;
    *(a1 + 16) = 0;
  }

  if (!*a1)
  {
    goto LABEL_26;
  }

  v4 = sub_181A1D0EC(a1);
  if (v4 != 34)
  {
    goto LABEL_6;
  }

LABEL_27:
  v14 = 0;
  v15 = 0;
  v16 = *(a1 + 24);
  while (1)
  {
    v18 = *(a1 + 40);
    if (v18 >= *(a1 + 48))
    {
      if (!*a1)
      {
        goto LABEL_48;
      }

      v20 = sub_181A1D0EC(a1);
    }

    else
    {
      v19 = *(a1 + 56);
      *(a1 + 40) = v18 + 1;
      v20 = *(v19 + v18);
    }

    v21 = v14 == 34;
    if (v14 != 34 && v20 > 34)
    {
      v21 = v14;
      goto LABEL_69;
    }

    if (v20 == 10)
    {
      goto LABEL_37;
    }

    v22 = 0;
    if (v14 != 34 || v20 != 34)
    {
      goto LABEL_49;
    }

    v23 = *(a1 + 40);
    if (v23 < *(a1 + 48))
    {
      v24 = *(a1 + 56);
      *(a1 + 40) = v23 + 1;
      v20 = *(v24 + v23);
      if (v20 > 0x22)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (!*a1)
    {
      break;
    }

    v20 = sub_181A1D0EC(a1);
    if (v20 > 34)
    {
LABEL_46:
      v21 = 0;
      goto LABEL_69;
    }

LABEL_42:
    v21 = 0;
    if (v20 == 10)
    {
      v14 = 0;
LABEL_37:
      ++*(a1 + 24);
      v22 = 1;
      v20 = 10;
      goto LABEL_49;
    }

LABEL_68:
    if (v20 == -1)
    {
      sub_181A1C95C(a1, "line %d: unterminated %c-quoted field\n", v16, 34);
      *(a1 + 32) = -1;
      goto LABEL_88;
    }

LABEL_69:
    v29 = *(a1 + 16);
    if (v29 < *(a1 + 20) - 1)
    {
      v17 = *(a1 + 8);
      *(a1 + 16) = v29 + 1;
      *(v17 + v29) = v20;
      v14 = v20;
      v15 = v21;
    }

    else
    {
      v14 = v20;
      v15 = v21;
      if (sub_181A1D13C(a1, v20))
      {
        return 0;
      }
    }
  }

  v14 = 0;
LABEL_48:
  v22 = 0;
  v21 = v14 == 34;
  v20 = -1;
LABEL_49:
  if (v20 == 44)
  {
    v25 = 1;
  }

  else
  {
    v25 = v22;
  }

  if (v21 && (v25 & 1) != 0)
  {
    goto LABEL_93;
  }

  if (v14 != 13 || v15 != 34)
  {
    v22 = 0;
  }

  if (v22)
  {
    goto LABEL_93;
  }

  v27 = !v21;
  v28 = v20 != -1 || !v21;
  if (v28)
  {
    if (v20 == 13)
    {
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      sub_181A1C95C(a1, "line %d: unescaped %c character", *(a1 + 24), 34);
      goto LABEL_88;
    }

    v21 = v14;
    goto LABEL_68;
  }

  LOBYTE(v20) = -1;
LABEL_93:
  v36 = *(a1 + 16);
  v37 = (v36 + *(a1 + 8) - 1);
  v38 = v36 - 1;
  do
  {
    *(a1 + 16) = v38;
    v39 = *v37--;
    --v38;
  }

  while (v39 != 34);
  *(a1 + 32) = v20;
LABEL_88:
  v35 = *(a1 + 8);
  if (v35)
  {
    *(v35 + *(a1 + 16)) = 0;
    result = *(a1 + 8);
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = 1;
  return result;
}

uint64_t sub_181A1D0EC(uint64_t a1)
{
  v2 = fread(*(a1 + 56), 1uLL, 0x400uLL, *a1);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = 1;
  *(a1 + 48) = v2;
  return **(a1 + 56);
}

uint64_t sub_181A1D13C(uint64_t a1, char a2)
{
  v4 = 2 * *(a1 + 20) + 100;
  v5 = *(a1 + 8);
  v6 = sqlite3_initialize();
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && (v8 = sub_18190287C(v5, v4, 1686398205)) != 0)
  {
    v9 = v8;
    result = 0;
    *(a1 + 8) = v9;
    v11 = *(a1 + 16);
    *(a1 + 16) = v11 + 1;
    *(a1 + 20) = v4;
    *(v9 + v11) = a2;
  }

  else
  {
    sub_181A1C95C(a1, "out of memory");
    return 1;
  }

  return result;
}

int8x16_t *sub_181A1D1D4(uint64_t a1, int8x16_t *a2, int a3, int a4)
{
  v4 = a4;
  *&v80[12] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (*(a1 + 68))
    {
      return a2;
    }

    if (*(a1 + 96))
    {
      goto LABEL_8;
    }

LABEL_11:
    if (*(a1 + 70))
    {
      return 0;
    }

    v61 = (3 * *(a1 + 76));
    v62 = sqlite3_initialize();
    if (v61 >= 1 && v62 == 0)
    {
      v64 = sub_181902484(v61, 3280485494);
      *(a1 + 96) = v64;
      if (v64)
      {
        v65 = *(a1 + 76);
        *(a1 + 104) = v64 + v65;
        v66 = (v64 + v65 + v65);
        *(a1 + 88) = v66;
        bzero(v66, v65);
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 96) = 0;
    }

    a2 = 0;
    *(a1 + 70) = 1;
    return a2;
  }

  if (*(a1 + 34 * (a4 & 1) + 1))
  {
    *(a1 + 68) = 1;
    return a2;
  }

  *(a1 + 68) = 0;
  if (!*(a1 + 96))
  {
    goto LABEL_11;
  }

LABEL_8:
  iv = a3;
  v8 = *(a1 + 69);
  if (*(a1 + 69))
  {
    if ((v4 & 4) != 0)
    {
      sqlite3_initialize();
      arc4random_buf(v80, v8);
      memcpy(&a2->i8[*(a1 + 80)], v80, *(a1 + 69));
    }

    else
    {
      __memcpy_chk();
    }
  }

  v9 = *(a1 + 72);
  if (v9 >= 1)
  {
    bzero(&v80[-v9 + 12], v9);
  }

  dataOut = *(a1 + 96);
  if ((v4 & 2) != 0)
  {
    v11 = (a1 + 34 * (v4 & 1));
    v13 = *v11;
    v12 = v11 + 2;
    if (v13 == 32)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    CCCrypt(0, 0, 0, v12, v14, &iv, *(a1 + 88), *(a1 + 76), dataOut, *(a1 + 76), 0);
    dataOut = *(a1 + 96);
  }

  v15 = a2;
  if ((v4 & 4) != 0)
  {
    v15 = *(a1 + 104);
  }

  v16 = *(a1 + 80);
  v17 = v16 - 9;
  if (v16 < 9)
  {
    v18 = dataOut;
    v19 = a2;
    v20 = v15;
    v21 = *(a1 + 80);
  }

  else
  {
    v18 = dataOut;
    v19 = a2;
    v20 = v15;
    v21 = *(a1 + 80);
    if ((((a2 | v15) | dataOut) & 7) == 0)
    {
      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if (v17 < 0x28)
      {
        goto LABEL_26;
      }

      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if ((v15 - dataOut) < 0x20)
      {
        goto LABEL_26;
      }

      v18 = dataOut;
      v19 = a2;
      v20 = v15;
      v21 = *(a1 + 80);
      if ((v15 - a2) < 0x20)
      {
        goto LABEL_26;
      }

      v54 = (v17 >> 3) + 1;
      v55 = v54 & 0x3FFFFFFC;
      v18 = &dataOut->i64[v55];
      v19 = (a2 + v55 * 8);
      v20 = &v15->i64[v55];
      v21 = v16 - 8 * (v54 & 0x3FFFFFFC);
      v56 = v15 + 1;
      v57 = a2 + 1;
      v58 = dataOut + 1;
      v59 = v54 & 0x3FFFFFFC;
      do
      {
        v60 = veorq_s8(*v58, *v57);
        v56[-1] = veorq_s8(v58[-1], v57[-1]);
        *v56 = v60;
        v56 += 2;
        v57 += 2;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if ((v54 & 0x3FFFFFFC) != v54)
      {
LABEL_26:
        v22 = v21;
        do
        {
          v24 = v19->i64[0];
          v19 = (v19 + 8);
          v23 = v24;
          v25 = *v18++;
          *v20++ = v25 ^ v23;
          v21 = v22 - 8;
          v26 = v22 > 0x10;
          v22 -= 8;
        }

        while (v26);
      }
    }
  }

  if ((v19 & 3) == 0 && (v18 & 3) == 0)
  {
    v27 = v21 - 5;
    if (v21 >= 5)
    {
      if (v27 < 0x1C || (v20 - v18) < 0x20 || (v20 - v19) < 0x20)
      {
        v28 = v18;
        v29 = v19;
        v30 = v20;
      }

      else
      {
        v47 = (v27 >> 2) + 1;
        v48 = 4 * (v47 & 0x7FFFFFF8);
        v28 = (v18 + v48);
        v29 = (v19 + v48);
        v30 = (v20 + v48);
        v21 -= 4 * (v47 & 0x7FFFFFF8);
        v49 = (v20 + 2);
        v50 = v19 + 1;
        v51 = (v18 + 2);
        v52 = v47 & 0x7FFFFFF8;
        do
        {
          v53 = veorq_s8(*v51, *v50);
          v49[-1] = veorq_s8(v51[-1], v50[-1]);
          *v49 = v53;
          v49 += 2;
          v50 += 2;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        if ((v47 & 0x7FFFFFF8) == v47)
        {
LABEL_39:
          v35 = v21 - (v21 != 0);
          if (v35 < 7 || (v20 - v18) < 0x20 || (v20 - v19) < 0x20)
          {
            v36 = v18;
            v37 = v19;
            v38 = v20;
          }

          else
          {
            v45 = v35 + 1;
            if (v35 < 0x1F)
            {
              v46 = 0;
              goto LABEL_78;
            }

            v46 = v45 & 0x1FFFFFFE0;
            v67 = (v20 + 2);
            v68 = v19 + 1;
            v69 = (v18 + 2);
            v70 = v45 & 0x1FFFFFFE0;
            do
            {
              v71 = veorq_s8(*v69, *v68);
              v67[-1] = veorq_s8(v69[-1], v68[-1]);
              *v67 = v71;
              v67 += 2;
              v68 += 2;
              v69 += 2;
              v70 -= 32;
            }

            while (v70);
            if (v45 == v46)
            {
              goto LABEL_43;
            }

            if ((v45 & 0x18) != 0)
            {
LABEL_78:
              v21 -= v45 & 0xFFFFFFF8;
              v36 = (v18 + (v45 & 0x1FFFFFFF8));
              v37 = &v19->i8[v45 & 0x1FFFFFFF8];
              v38 = (v20 + (v45 & 0x1FFFFFFF8));
              v72 = (v20 + v46);
              v73 = &v19->i8[v46];
              v74 = (v18 + v46);
              v75 = v46 - (v45 & 0x1FFFFFFF8);
              do
              {
                v76 = *v73++;
                v77 = v76;
                v78 = *v74++;
                *v72++ = veor_s8(v78, v77);
                v75 += 8;
              }

              while (v75);
              if (v45 == (v45 & 0x1FFFFFFF8))
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            }

            v38 = (v20 + v46);
            v37 = &v19->i8[v46];
            v36 = (v18 + v46);
            v21 -= v46;
          }

LABEL_41:
          v39 = v21 + 1;
          do
          {
            v41 = *v37++;
            v40 = v41;
            v42 = *v36;
            v36 = (v36 + 1);
            *v38 = v42 ^ v40;
            v38 = (v38 + 1);
            --v39;
          }

          while (v39 > 1);
LABEL_43:
          v16 = *(a1 + 80);
          goto LABEL_44;
        }
      }

      v18 = v28;
      v19 = v29;
      v20 = v30;
      v31 = v21;
      do
      {
        v33 = v19->i32[0];
        v19 = (v19 + 4);
        v32 = v33;
        v34 = *v18;
        v18 = (v18 + 4);
        *v20 = v34 ^ v32;
        v20 = (v20 + 4);
        v21 = v31 - 4;
        v26 = v31 > 8;
        v31 -= 4;
      }

      while (v26);
      goto LABEL_39;
    }
  }

  if (v21 >= 1)
  {
    goto LABEL_39;
  }

LABEL_44:
  v43 = *(a1 + 76);
  if (v43 > v16)
  {
    memmove(&v15->i8[v16], &a2->i8[v16], v43 - v16);
  }

  if (a3 == 1)
  {
    v15[1].i8[0] ^= dataOut[1].u8[0];
    v15[1].i8[1] ^= dataOut[1].u8[1];
    v15[1].i8[2] ^= dataOut[1].u8[2];
    v15[1].i8[3] ^= dataOut[1].u8[3];
    v15[1].i8[4] ^= dataOut[1].u8[4];
    v15[1].i8[5] ^= dataOut[1].u8[5];
    v15[1].i8[6] ^= dataOut[1].u8[6];
    v15[1].i8[7] ^= dataOut[1].u8[7];
  }

  return v15;
}

uint64_t sub_181A1D794(uint64_t result, int a2, int a3)
{
  if (a3 >= 12)
  {
    v3 = 12;
  }

  else
  {
    v3 = a3;
  }

  *(result + 69) = v3;
  *(result + 76) = a2;
  *(result + 80) = a2 - a3;
  *(result + 72) = 12 - v3;
  return result;
}

uint64_t sub_181A1D7B8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v1[5] = 0u;
  v1[6] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    v6 = *v4;

    return v6(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_181A1D90C(void *a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v11 = 0;
  result = (*(*a1 + 56))(*a1, a1[44], 0, &v11);
  if (!result)
  {
    if (!v11)
    {
      if (*(a1 + 9) == 5)
      {
        result = 0;
        *(a1 + 9) = 0;
        return result;
      }

      return 0;
    }

    v5 = a1;
    v6 = a1[43];
    if (!v6 || *(v6 + 60) < 0 || (LODWORD(v6) = *(v6 + 92), !v6))
    {
      v7 = *a1[9];
      if (!v7)
      {
LABEL_19:
        v8 = *(*v5 + 48);
        if (v8)
        {
          return v8();
        }

        return 0;
      }

      v12 = 0;
      result = (*(v7 + 48))();
      if (result)
      {
        return result;
      }

      v5 = a1;
      v6 = (v12 + a1[25] - 1) / a1[25];
    }

    if (v6 > *(v5 + 47))
    {
      *(v5 + 47) = v6;
LABEL_17:
      if (*(v5 + 17))
      {
        return 14;
      }

      if (!*(v5 + 8))
      {
        v10 = *v5[9];
        if (*v10 < 2 || !*(v10 + 104))
        {
          return 14;
        }
      }

      v9 = v5[10];
      if (*v9)
      {
        (*(*v9 + 8))(v9);
        v5 = a1;
        *v9 = 0;
      }

      result = sub_1819339AC(v5);
      if (!result)
      {
        *(a1 + 9) = 5;
        *(a1 + 21) = 0;
      }

      return result;
    }

    if (v6)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_181A1DA9C(sqlite3 *a1)
{
  result = sqlite3_create_function(a1, "uuid", 0, 2097153, 0, sub_181A1DB84, 0, 0);
  if (!result)
  {
    result = sqlite3_create_function(a1, "uuid_str", 1, 2099201, 0, sub_181A1DC78, 0, 0);
    if (!result)
    {

      return sqlite3_create_function(a1, "uuid_blob", 1, 2099201, 0, sub_181A1DD4C, 0, 0);
    }
  }

  return result;
}

void sub_181A1DB84(sqlite3_context *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  sqlite3_randomness(16, P);
  v2 = 0;
  v9 = v9 & 0xF | 0x40;
  v10 = v10 & 0x3F | 0x80;
  v3 = v7;
  v4 = 1360;
  do
  {
    if (v4)
    {
      *v3++ = 45;
    }

    v5 = P[v2];
    v6 = a0123456789abcd_1[v5 >> 4];
    LOBYTE(v5) = a0123456789abcd_1[v5 & 0xF];
    *v3 = v6;
    v3[1] = v5;
    v3 += 2;
    ++v2;
    v4 >>= 1;
  }

  while (v2 != 16);
  *v3 = 0;
  sqlite3_result_text(a1, v7, 36, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_181A1DC78(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = sub_181A1DDC4(*a3, v11);
  if (v4)
  {
    v5 = 0;
    v6 = v10;
    v7 = 1360;
    do
    {
      if (v7)
      {
        *v6++ = 45;
      }

      v8 = v4[v5];
      v9 = a0123456789abcd_1[v8 >> 4];
      LOBYTE(v8) = a0123456789abcd_1[v8 & 0xF];
      *v6 = v9;
      v6[1] = v8;
      v6 += 2;
      ++v5;
      v7 >>= 1;
    }

    while (v5 != 16);
    *v6 = 0;
    sqlite3_result_text(a1, v10, 36, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_181A1DD4C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = sub_181A1DDC4(*a3, v5);
  if (v4)
  {
    sqlite3_result_blob(a1, v4, 16, 0xFFFFFFFFFFFFFFFFLL);
  }
}

const void *sub_181A1DDC4(sqlite3_value *a1, uint64_t a2)
{
  v4 = sqlite3_value_type(a1);
  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = sqlite3_value_text(a1);
      v6 = 0;
      if (*v5 == 123)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = v5;
      }

      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        if (*v7 == 45)
        {
          ++v7;
        }

        v9 = *v7;
        if ((*(v8 + 4 * v9 + 60) & 0x10000) == 0)
        {
          break;
        }

        v10 = v7[1];
        if ((*(v8 + 4 * v10 + 60) & 0x10000) == 0)
        {
          break;
        }

        *(a2 + v6) = ((((2 * v10) >> 7) & 0xF9) + v10) & 0xF | (16 * ((((2 * v9) >> 7) & 0xF9) + v9));
        v7 += 2;
        if (++v6 == 16)
        {
          v11 = v7 + 1;
          if (*v7 != 125)
          {
            v11 = v7;
          }

          if (*v11)
          {
            return 0;
          }

          else
          {
            return a2;
          }
        }
      }
    }

    return 0;
  }

  if (sqlite3_value_bytes(a1) != 16)
  {
    return 0;
  }

  return sqlite3_value_blob(a1);
}

void sub_181A1DEE4()
{
  if (getenv("SQLITE_SQLLOG_DIR"))
  {
    if (os_variant_allows_internal_security_policies())
    {
      if (!sqlite3_config(21, sub_181A1DFCC, 0))
      {
        bzero(qword_1EA831B30, 0x2428uLL);
        dword_1EA831B40 = 1;
        if (getenv("SQLITE_SQLLOG_CONDITIONAL"))
        {
          dword_1EA831B3C = 1;
        }
      }
    }

    else if (qword_1EA831B28 != -1)
    {
      sub_181A1EEE0();
    }
  }
}

void sub_181A1DFCC(uint64_t a1, sqlite3 *a2, const char *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = sqlite3_mutex_alloc(2);
  v8 = v7;
  if (!a4)
  {
    sqlite3_mutex_enter(v7);
    if (!qword_1EA831B30[0])
    {
      qword_1EA831B30[0] = sqlite3_mutex_alloc(1);
    }

    sqlite3_mutex_leave(v8);
    sqlite3_mutex_enter(qword_1EA831B30[0]);
    if (dword_1EA831F4C)
    {
      goto LABEL_17;
    }

    if (dword_1EA831B3C && !sub_181A1E808(a2, "main", 0, __s))
    {
      v26 = strlen(__s);
      if (v26 >= 505)
      {
        sqlite3_log(10, "sqllogTraceDb(): database name too long (%d bytes)", v26);
        goto LABEL_17;
      }

      *&__s[v26] = 0x676F6C6C71732DLL;
      if (access(__s, 0))
      {
        goto LABEL_17;
      }
    }

    sqlite3_mutex_enter(v8);
    v13 = dword_1EA831B38++;
    v14 = &qword_1EA831B30[4 * v13];
    v14[136] = 0;
    v14[134] = a2;
    LODWORD(v13) = dword_1EA831F44++;
    *(v14 + 270) = v13;
    sqlite3_mutex_leave(v8);
    if (v14[136])
    {
      goto LABEL_16;
    }

    if (!byte_1EA831B44)
    {
      v27 = getenv("SQLITE_SQLLOG_DIR");
      if (!v27)
      {
        goto LABEL_17;
      }

      v28 = v27;
      if (strlen(v27) - 502 < 0xFFFFFFFFFFFFFE00)
      {
        goto LABEL_17;
      }

      v29 = getpid();
      sqlite3_snprintf(512, &byte_1EA831B44, "%s/sqllog_%05d", v28, v29);
      sqlite3_snprintf(512, byte_1EA831D44, "%s.idx", &byte_1EA831B44);
      v30 = getenv("SQLITE_SQLLOG_REUSE_FILES");
      if (v30)
      {
        dword_1EA831B40 = atoi(v30);
      }

      v31 = fopen(byte_1EA831D44, "w");
      if (v31)
      {
        fclose(v31);
      }
    }

    v15 = sqlite3_mprintf("%s_%05d.sql", &byte_1EA831B44, *(v14 + 270));
    v14[136] = fopen(v15, "w");
    sqlite3_free(v15);
    if (v14[136] || (sqlite3_log(10, "sqllogOpenlog(): Failed to open log file"), v14[136]))
    {
LABEL_16:
      sub_181A1E474((v14 + 133), "main", 0);
    }

LABEL_17:
    sqlite3_mutex_leave(qword_1EA831B30[0]);
    return;
  }

  v9 = dword_1EA831B38;
  if (dword_1EA831B38 >= 1)
  {
    v10 = 0;
    v11 = &unk_1EA831F58;
    v12 = &unk_1EA831F58 + 32 * (dword_1EA831B38 - 1);
    while (*(v11 + 1) != a2)
    {
      ++v10;
      v11 += 32;
      if (dword_1EA831B38 == v10)
      {
        goto LABEL_19;
      }
    }

    if (a4 != 2)
    {
      if (!*(v11 + 3))
      {
        return;
      }

      sqlite3_mutex_enter(qword_1EA831B30[0]);
      if (!dword_1EA831F4C)
      {
        for (i = a3; ; ++i)
        {
          v21 = *i;
          if ((v21 - 9) >= 5 && v21 != 32)
          {
            break;
          }
        }

        v22 = 0;
        do
        {
          v23 = (i[v22++] & 0xDF) - 65;
        }

        while (v23 < 0x1A);
        if (v22 == 7 && !sqlite3_strnicmp("ATTACH", i, 6))
        {
          sub_181A1E474(v11, 0, 1);
        }

        else
        {
          v24 = *(v11 + 3);
          v25 = dword_1EA831F50++;
          fprintf(v24, "%s; -- clock=%d\n", a3, v25);
        }
      }

      v19 = qword_1EA831B30[0];
      goto LABEL_33;
    }

    v9 = v10;
LABEL_23:
    sqlite3_mutex_enter(v7);
    v16 = dword_1EA831B38;
    if (v9 < dword_1EA831B38)
    {
      v17 = *(v11 + 3);
      if (v17)
      {
        fclose(v17);
        v16 = dword_1EA831B38;
      }

      *(v11 + 1) = 0;
      *(v11 + 3) = 0;
      dword_1EA831B38 = --v16;
    }

    if (v16)
    {
      if (v9 < v16)
      {
        v18 = &qword_1EA831B30[4 * v16] - v11 + 1064;
        if ((v18 >> 5) >= 1)
        {
          memmove(v11, v11 + 32, v18 & 0xFFFFFFFE0);
        }
      }
    }

    else
    {
      sqlite3_mutex_free(qword_1EA831B30[0]);
      qword_1EA831B30[0] = 0;
    }

    v19 = v8;
LABEL_33:

    sqlite3_mutex_leave(v19);
    return;
  }

  v9 = 0;
  v12 = 0;
LABEL_19:
  v11 = v12;
  if (a4 == 2)
  {
    goto LABEL_23;
  }
}

void sub_181A1E474(uint64_t a1, const char *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (sub_181A1E808(*(a1 + 8), a2, zSourceName, __s))
  {
    return;
  }

  if (__s[0])
  {
    if (dword_1EA831B40)
    {
      v5 = fopen(byte_1EA831D44, "r");
      if (v5)
      {
        v6 = v5;
        if (feof(v5))
        {
LABEL_6:
          v7 = 0;
        }

        else
        {
          while (1)
          {
            if (fgets(ppDb, 1029, v6))
            {
              v37 = 0;
              v13 = &v35 + 7;
              do
              {
                v15 = *++v13;
                v14 = v15;
              }

              while ((v15 - 48) < 0xA);
              while (v14 == 32)
              {
                v16 = *++v13;
                v14 = v16;
              }

              LODWORD(v17) = strlen(v13);
              if (v17 >= 1)
              {
                v17 &= 0x7FFFFFFFu;
                while (1)
                {
                  v18 = v13[v17 - 1];
                  if ((v18 - 9) >= 5 && v18 != 32)
                  {
                    break;
                  }

                  if (v17-- <= 1)
                  {
                    LODWORD(v17) = 0;
                    break;
                  }
                }
              }

              v19 = v17;
              if (strlen(__s) == v17 && !memcmp(__s, v13, v19))
              {
                break;
              }
            }

            if (feof(v6))
            {
              goto LABEL_6;
            }
          }

          v35 = 0;
          v34 = 0;
          v20 = ppDb[0];
          if (LOBYTE(ppDb[0]) - 48 <= 9)
          {
            v21 = ppDb + 1;
            v22 = &v34;
            do
            {
              *v22 = v20;
              v22 = (v22 + 1);
              v23 = *v21++;
              v20 = v23;
            }

            while ((v23 - 48) < 0xA);
          }

          v7 = sqlite3_mprintf("%s_%s.db", &byte_1EA831B44, &v34);
        }

        if (ferror(v6))
        {
          sqlite3_log(10, "sqllogFindFile(): error reading index file");
        }

        fclose(v6);
        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sqlite3_log(10, "sqllogFindFile(): error in fopen()");
      }
    }

    ppDb[0] = 0;
    v8 = dword_1EA831F48++;
    v7 = sqlite3_mprintf("%s_%02d.db", &byte_1EA831B44, v8);
    dword_1EA831F4C = 1;
    v9 = sqlite3_open(v7, ppDb);
    if (v9)
    {
      dword_1EA831F4C = 0;
    }

    else
    {
      sqlite3_exec(ppDb[0], "PRAGMA synchronous = 0", 0, 0, 0);
      v10 = sqlite3_backup_init(ppDb[0], "main", *(a1 + 8), zSourceName);
      if (v10)
      {
        v11 = v10;
        sqlite3_backup_step(v10, -1);
        v12 = sqlite3_backup_finish(v11);
      }

      else
      {
        v12 = sqlite3_errcode(ppDb[0]);
      }

      v24 = v12;
      sqlite3_close(ppDb[0]);
      dword_1EA831F4C = 0;
      v9 = v24;
      if (!v24)
      {
        v29 = fopen(byte_1EA831D44, "a");
        if (v29)
        {
          v30 = v29;
          fprintf(v29, "%d %s\n", v8, __s);
          fclose(v30);
        }

        goto LABEL_41;
      }
    }

    sqlite3_log(v9, "sqllogCopydb(): error backing up database");
  }

  else
  {
    v7 = sqlite3_mprintf(&byte_181A2878D);
  }

LABEL_41:
  if (a3)
  {
    v25 = dword_1EA831F50++;
    v26 = sqlite3_mprintf("ATTACH '%q' AS '%q'; -- clock=%d\n", v7, zSourceName, v25);
  }

  else
  {
    v26 = sqlite3_mprintf("-- Main database is '%q'\n", v7, v31);
  }

  v27 = *(a1 + 24);
  v28 = v26;
  fputs(v26, v27);
  sqlite3_free(v28);
  sqlite3_free(v7);
}

uint64_t sub_181A1E808(sqlite3 *a1, const char *a2, void *a3, void *a4)
{
  ppStmt = 0;
  dword_1EA831F4C = 1;
  result = sqlite3_prepare_v2(a1, "PRAGMA database_list", -1, &ppStmt, 0);
  if (result)
  {
    dword_1EA831F4C = 0;
LABEL_10:
    v13 = result;
    sqlite3_log(result, "sqllogFindAttached(): error in PRAGMA database_list");
    return v13;
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v8 = sqlite3_column_text(ppStmt, 1);
    v9 = sqlite3_column_bytes(ppStmt, 1);
    v10 = v9;
    if (a3)
    {
      memcpy(a3, v8, v9 + 1);
    }

    v11 = sqlite3_column_text(ppStmt, 2);
    v12 = sqlite3_column_bytes(ppStmt, 2);
    memcpy(a4, v11, v12 + 1);
    if (a2)
    {
      if (strlen(a2) == v10 && !sqlite3_strnicmp(a2, v8, v10))
      {
        break;
      }
    }
  }

  result = sqlite3_finalize(ppStmt);
  dword_1EA831F4C = 0;
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_181A1E998()
{
  v0 = __error();
  strerror(*v0);
  sub_181A1DA90();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_181A1ED14(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 70);
  v4 = *(a1 + 66);
  v5[0] = 67109632;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_18188D000, log, OS_LOG_TYPE_ERROR, "locking protocol: lockstate:%d, bShmUnreliable:%d, readOnly:%d", v5, 0x14u);
}