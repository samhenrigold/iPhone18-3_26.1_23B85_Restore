uint64_t statpos_updatePOSLingdbWithDisambiguatedPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v81[33] = *MEMORY[0x1E69E9840];
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  __s = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v13 = a4 + 8;
  v12 = *a4;
  v14 = (*(a1 + 104))(a2, a3, 1, 0, &v79);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = (*(a1 + 184))(a2, a3, v79, 0, &v79 + 2);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (HIWORD(v79) != 1)
  {
    return v15;
  }

  v15 = (*(a1 + 176))(a2, a3, v79, 0, &v73, &v77 + 2);
  if ((v15 & 0x80000000) != 0 || HIWORD(v77) < 2u)
  {
    return v15;
  }

  v14 = (*(a1 + 104))(a2, a3, 2, v79, &v78 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v65 = a5;
  v67 = v12;
  v16 = (a4 + 648);
  v74 = 0;
  **(a4 + 728) = 0;
  while (HIWORD(v78))
  {
    WordIdx_0 = (*(a1 + 168))(a2, a3);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (v76 > 0xA || ((1 << v76) & 0x610) == 0)
    {
      goto LABEL_44;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 1, 1, &v75, &v77 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 2, 1, &v75 + 2, &v77 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (v75 == HIWORD(v75))
    {
      goto LABEL_44;
    }

    WordIdx_0 = getWordIdx_0(*a4, v16, v75, HIWORD(v75), &v74);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v19 = *(a4 + 1436);
    v20 = v74;
    if (!v19)
    {
      if (subsumedWordRec(v16, v74))
      {
        goto LABEL_44;
      }
    }

    v69 = 0;
    v21 = HIWORD(v78);
    if (!(checkWordRecPOS(v16, v20, HIWORD(v78), &v69) | v19))
    {
      goto LABEL_44;
    }

    WordIdx_0 = (*(a1 + 176))(a2, a3, v21, 5, &__s, &v77 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v22 = v67;
    if (a6 == 1 && v76 == 4)
    {
      updated = updateNLUField_0(v67, a1, a2, a3, HIWORD(v78), v13, v16, v20, __s, 0, 0, 0);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_139;
      }

      v24 = v67;
      v25 = v16;
      log_OutText(*(v67 + 32), "FE_POS", 5, 0, "SET DCT WORD Word[%d] %s POS %s to NLU POS", v20, **(*v16 + 160 * v20 + 48), __s);
    }

    else
    {
      if (v69 == 1)
      {
        updated = getNewPOS(v67, v16, v20, HIWORD(v78), &v70);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        log_OutText(*(v67 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v20, **(*v16 + 160 * v20 + 48), __s);
        v26 = v70;
        log_OutText(*(v67 + 32), "FE_POS", 5, 0, "\twith %s", v70);
        v27 = strlen(v26);
        v28 = (*(a1 + 160))(a2, a3, HIWORD(v78), 5, (v27 + 1), v26, &v77);
        if ((v28 & 0x80000000) != 0)
        {
          v15 = v28;
          v22 = v67;
          goto LABEL_47;
        }

        heap_Free(*(v67 + 8), v26);
        v70 = 0;
        v22 = v67;
      }

      else if (*(a4 + 1440))
      {
        if (*__s == 42 && !__s[1])
        {
          log_OutText(*(v67 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v20, **(*v16 + 160 * v20 + 48), __s);
          log_OutText(*(v67 + 32), "FE_POS", 5, 0, "\twith %s", *(*v16 + 160 * v20 + 88));
          v29 = strlen(*(*v16 + 160 * v20 + 88));
          v22 = v67;
          updated = (*(a1 + 160))(a2, a3, HIWORD(v78), 5, (v29 + 1), *(*v16 + 160 * v20 + 88), &v77);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }
      }

      updated = updateNLUField_0(v22, a1, a2, a3, HIWORD(v78), v13, v16, v20, *(*v16 + 160 * v20 + 88), 0, 0, 0);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_139;
      }

      if (a6 != 1)
      {
        goto LABEL_44;
      }

      log_OutText(*(v67 + 32), "FE_POS", 5, 0, "set Word[%d] POS to %s", v20, *(*v16 + 160 * v20 + 88));
      v30 = strlen(*(*v16 + 160 * v20 + 88));
      v24 = v67;
      v25 = v16;
      v31 = (*(a1 + 160))(a2, a3, HIWORD(v78), 5, (v30 + 1), *(*v16 + 160 * v20 + 88), &v77);
      if ((v31 & 0x80000000) != 0)
      {
        v15 = v31;
        v22 = v67;
        goto LABEL_47;
      }
    }

    if (*(*v25 + 160 * v20 + 24))
    {
      log_OutText(*(v24 + 32), "FE_POS", 5, 0, "keep Word[%d] PHON", v20);
      v16 = v25;
    }

    else
    {
      v32 = (*(a1 + 176))(a2, a3, HIWORD(v78), 3, &v71, &v77 + 2);
      if ((v32 & 0x80000000) != 0)
      {
        v15 = v32;
        v22 = v24;
        goto LABEL_47;
      }

      v16 = v25;
      v33 = strlen(*(*v25 + 160 * v20 + 32));
      v34 = (*(a1 + 160))(a2, a3, HIWORD(v78), 3, (v33 + 1), *(*v25 + 160 * v20 + 32), &v77);
      if ((v34 & 0x80000000) != 0)
      {
        v15 = v34;
        v22 = v67;
        goto LABEL_47;
      }

      log_OutText(*(v67 + 32), "FE_POS", 5, 0, "set Word[%d] PHON to %s", v20, *(*v25 + 160 * v20 + 32));
    }

    a6 = 1;
LABEL_44:
    WordIdx_0 = (*(a1 + 120))(a2, a3, HIWORD(v78), &v78 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }
  }

  v15 = (*(a1 + 104))(a2, a3, 2, v79, &v78 + 2);
  v22 = v67;
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  v36 = HIWORD(v78);
  if (!HIWORD(v78))
  {
LABEL_73:
    if (v65 != 1)
    {
      goto LABEL_47;
    }

    v68 = 0;
    log_OutText(*(v22 + 32), "FE_POS", 5, 0, "No SGRAM : removing duplicate tags on lingdb words", 0);
    memset(v80, 0, sizeof(v80));
    memset(v81, 0, 256);
    v74 = 0;
    WordIdx_0 = (*(a1 + 104))(a2, a3, 2, v79, &v78 + 2);
    if ((WordIdx_0 & 0x80000000) == 0)
    {
      v66 = v16;
      v45 = HIWORD(v78);
      if (HIWORD(v78))
      {
        LODWORD(v46) = 0;
        v47 = 0xFFFFLL;
        while (1)
        {
          WordIdx_0 = (*(a1 + 120))(a2, a3, v45, &v78);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 0, 1, &v76, &v77 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v76 > 0xA || ((1 << v76) & 0x610) == 0)
          {
            goto LABEL_86;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 1, 1, &v75, &v77 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 2, 1, &v75 + 2, &v77 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v75 == HIWORD(v75))
          {
LABEL_86:
            v49 = v47;
          }

          else
          {
            WordIdx_0 = getWordIdx_0(*a4, v66, v75, HIWORD(v75), &v74);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            v49 = v74;
            if (subsumedWordRec(v66, v74))
            {
              WordIdx_0 = (*(a1 + 192))(a2, a3, HIWORD(v78));
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_45;
              }

              goto LABEL_112;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v78), 5, &__s, &v77 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v78), 3, &v71, &v77 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v78), 7, 1, &v68, &v77 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            if (v47 == 0xFFFF || v49 == v47)
            {
              if (v46 > 0x7F)
              {
                goto LABEL_112;
              }
            }

            else
            {
              if (v46 >= 2)
              {
                v50 = 0;
                v51 = -1;
                v52 = -1;
                v46 = v46;
                do
                {
                  v53 = *(v80 + v50);
                  if (v53 <= v51)
                  {
                    v52 = v50;
                  }

                  if (v53 < v51)
                  {
                    v51 = *(v80 + v50);
                  }

                  ++v50;
                }

                while (v46 != v50);
                v54 = v52;
                v55 = v81;
                while (1)
                {
                  if (v54)
                  {
                    WordIdx_0 = (*(a1 + 192))(a2, a3, *v55);
                    if ((WordIdx_0 & 0x80000000) != 0)
                    {
                      goto LABEL_45;
                    }
                  }

                  v55 = (v55 + 2);
                  --v54;
                  if (!--v46)
                  {
                    goto LABEL_111;
                  }
                }
              }

              LODWORD(v46) = 0;
            }

LABEL_111:
            *(v81 + v46) = HIWORD(v78);
            *(v80 + v46) = v68;
            LODWORD(v46) = v46 + 1;
          }

LABEL_112:
          v45 = v78;
          HIWORD(v78) = v78;
          v47 = v49;
          if (!v78)
          {
            if (v46 < 2)
            {
              break;
            }

            v56 = 0;
            v57 = -1;
            v58 = -1;
            v46 = v46;
            do
            {
              v59 = *(v80 + v56);
              if (v59 <= v57)
              {
                v58 = v56;
              }

              if (v59 < v57)
              {
                v57 = *(v80 + v56);
              }

              ++v56;
            }

            while (v46 != v56);
            v60 = v58;
            v61 = v81;
            while (1)
            {
              if (v60)
              {
                WordIdx_0 = (*(a1 + 192))(a2, a3, *v61);
                if ((WordIdx_0 & 0x80000000) != 0)
                {
                  goto LABEL_45;
                }
              }

              v61 = (v61 + 2);
              --v60;
              if (!--v46)
              {
                goto LABEL_124;
              }
            }
          }
        }
      }

LABEL_124:
      v15 = (*(a1 + 104))(a2, a3, 2, v79, &v78 + 2);
      if ((v15 & 0x80000000) != 0 || (v62 = HIWORD(v78)) == 0)
      {
LABEL_46:
        v22 = v67;
        goto LABEL_47;
      }

      v63 = 0;
      while (1)
      {
        WordIdx_0 = (*(a1 + 168))(a2, a3, v62, 0, 1, &v76, &v77 + 2);
        if ((WordIdx_0 & 0x80000000) != 0)
        {
          break;
        }

        if (v76 <= 0xA && ((1 << v76) & 0x610) != 0)
        {
          WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v78), 5, &__s, &v77 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v78), 3, &v71, &v77 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          if (v63 < *(a4 + 656))
          {
            log_OutText(*(v67 + 32), "FE_POS", 5, 0, "(no sgram) word %d %s POS=%s PHON=%s recId=%d", v63, **(*v66 + 160 * v63 + 48), __s, v71, HIWORD(v78));
            ++v63;
          }
        }

        v15 = (*(a1 + 120))(a2, a3, HIWORD(v78), &v78);
        if ((v15 & 0x80000000) == 0)
        {
          v62 = v78;
          HIWORD(v78) = v78;
          if (v78)
          {
            continue;
          }
        }

        goto LABEL_46;
      }
    }

LABEL_45:
    v15 = WordIdx_0;
    goto LABEL_46;
  }

  while (1)
  {
    updated = (*(a1 + 120))(a2, a3, v36, &v78);
    if ((updated & 0x80000000) != 0)
    {
      break;
    }

    v15 = (*(a1 + 168))(a2, a3, HIWORD(v78), 0, 1, &v76, &v77 + 2);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    if (v76 <= 0xA && ((1 << v76) & 0x610) != 0)
    {
      updated = (*(a1 + 176))(a2, a3, HIWORD(v78), 5, &__s, &v77 + 2);
      if ((updated & 0x80000000) != 0)
      {
        break;
      }

      v38 = __s;
      v39 = strlen(__s);
      v40 = *__s;
      v41 = __s;
      while (v40 == 92)
      {
        --v39;
        v42 = *++v41;
        v40 = v42;
      }

      memmove(__s, v41, (v39 + 1));
      v43 = strchr(v38, 92);
      if (v43)
      {
        *v43 = 0;
      }

      v44 = strlen(__s);
      WordIdx_0 = (*(a1 + 160))(a2, a3, HIWORD(v78), 5, (v44 + 1), __s, &v77);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      updated = (*(a1 + 184))(a2, a3, HIWORD(v78), 14, &v79 + 2);
      v22 = v67;
      if ((updated & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v79) != 1)
      {
        goto LABEL_146;
      }

      v81[0] = 0;
      *&v80[0] = 0;
      v68 = 0;
      v15 = (*(a1 + 176))(a2, a3, HIWORD(v78), 14, v81, &v77 + 2);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_47;
      }

      if (HIWORD(v77) < 2u || !hlp_NLUStrFind(v81[0], "POS", v80, &v68))
      {
LABEL_146:
        v15 = (*(a1 + 192))(a2, a3, HIWORD(v78));
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_47;
        }
      }
    }

    v36 = v78;
    HIWORD(v78) = v78;
    if (!v78)
    {
      goto LABEL_73;
    }
  }

LABEL_139:
  v15 = updated;
LABEL_47:
  **(a4 + 728) = 0;
  if (v70)
  {
    heap_Free(*(v22 + 8), v70);
  }

  return v15;
}

uint64_t subsumedWordRec(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    if (160 * a2 != v2)
    {
      v3 = (*a1 + 160 * a2);
      if (*v3 >= *(*a1 + v2) && v3[1] <= *(*a1 + v2 + 2))
      {
        break;
      }
    }

    v2 += 160;
    if (160 * *(a1 + 8) == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_disambiguatePOSTags(uint64_t a1)
{
  v2 = *a1;
  v3 = heap_Calloc(*(*a1 + 8), 1, 1024);
  *(a1 + 776) = v3;
  if (!v3)
  {
    log_OutPublic(*(v2 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  if (*(a1 + 1336) == 1)
  {
    v4 = statpos_crf_label(v2, a1 + 1320, (a1 + 648), (a1 + 8), 1);
LABEL_7:
    v5 = v4;
    goto LABEL_9;
  }

  if (*(a1 + 804) == 1)
  {
    v4 = statpos_igtrees_label(v2, a1 + 8, (a1 + 648), (a1 + 784));
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:
  v6 = *(a1 + 776);
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    *(a1 + 776) = 0;
  }

  return v5;
}

uint64_t statpos_setMorphemePRON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 656))
  {
    v6 = 0;
    v7 = (a4 + 728);
    v8 = 120;
    v9 = *a4;
    while (1)
    {
      **(a4 + 728) = 0;
      v10 = *(a4 + 648);
      v11 = *(v10 + v8);
      if (!v11)
      {
        v11 = **(v10 + v8 - 72);
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), v11);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v13 = *(a4 + 648) + v8;
      if (*(v13 - 96) == 1)
      {
        break;
      }

      if (!*(v13 - 32))
      {
        goto LABEL_14;
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), "/");
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), *(*(a4 + 648) + v8 - 32));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      info_from_dct = statpos_get_info_from_dct(v9, *(a4 + 752), *(a4 + 760), *(a4 + 768), "morph_pos", *(a4 + 728), (*(a4 + 648) + v8 - 88), 0, "STR");
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v15 = *(*(a4 + 648) + v8 - 88);
      v16 = *(v9 + 32);
      if (v15)
      {
        log_OutText(v16, "FE_POS", 5, 0, "lookup %s ; transcription %s", *(a4 + 728), v15);
      }

      else
      {
        v17 = a3;
        log_OutText(v16, "FE_POS", 5, 0, "lookup %s ; FAILED", *(a4 + 728));
        v18 = strlen(v11);
        v19 = Utf8_LengthInUtf8chars(v11, v18);
        v20 = strlen(*(*(a4 + 648) + v8 - 32));
        if (Utf8_LengthInUtf8chars(*(*(a4 + 648) + v8 - 32), v20) > v19)
        {
          v21 = strlen(*(*(a4 + 648) + v8 - 32));
          v19 = Utf8_LengthInUtf8chars(*(*(a4 + 648) + v8 - 32), v21);
        }

        v12 = statpos_growAndSetLayer(v9, (a4 + 1384), (a4 + 1400), v11, v19);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = statpos_growAndSetLayer(v9, (a4 + 1392), (a4 + 1408), *(*(a4 + 648) + v8 - 32), v19);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        a3 = v17;
        info_from_dct = statPOS_call_one_word(v9, a1, a2, v17, (a4 + 1384), (a4 + 1392), (*(a4 + 648) + v8 - 88));
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        log_OutText(*(v9 + 32), "FE_POS", 5, 0, "%s ; one_word transcription %s", v11, *(*(a4 + 648) + v8 - 88));
      }

LABEL_15:
      ++v6;
      v8 += 160;
      if (v6 >= *(a4 + 656))
      {
        goto LABEL_24;
      }
    }

    log_OutText(*(v9 + 32), "FE_POS", 5, 0, "SKIP DCT LOOKUP WORD %s", *v7);
LABEL_14:
    info_from_dct = 0;
    goto LABEL_15;
  }

  info_from_dct = 0;
LABEL_24:
  **(a4 + 728) = 0;
  return info_from_dct;
}

uint64_t statpos_growAndSetLayer(uint64_t a1, char **a2, void *a3, char *__src, unsigned int a5)
{
  v8 = *a2;
  if (*a3 < a5)
  {
    v11 = heap_Realloc(*(a1 + 8), v8, a5 + 2);
    if (!v11)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }

    v8 = v11;
    *a2 = v11;
    *a3 = a5 + 2;
  }

  strcpy(v8, __src);
  for (i = strlen(__src); i < a5; ++i)
  {
    *&(*a2)[strlen(*a2)] = 126;
  }

  return 0;
}

uint64_t statpos_getUniqDynamicPOS(uint64_t a1, uint64_t a2, char *__s, _DWORD *a4)
{
  *a4 = -1;
  v8 = *(a2 + 312);
  if (!*(a2 + 312))
  {
LABEL_5:
    v12 = strlen(__s);
    v13 = v12;
    v14 = v12;
    v15 = *(a2 + 316);
    if (*(a2 + 324) + v12 >= v15)
    {
      if (v12 >= 0x80u)
      {
        v16 = (v12 + 32);
      }

      else
      {
        v16 = 128;
      }

      v17 = heap_Realloc(*(a1 + 8), *(a2 + 296), (v16 + v15));
      if (!v17)
      {
        goto LABEL_17;
      }

      *(a2 + 296) = v17;
      *(a2 + 316) += v16;
      LODWORD(v8) = *(a2 + 312);
    }

    v18 = *(a2 + 320);
    if (v8 < v18)
    {
LABEL_14:
      v20 = *(a2 + 296);
      if (*(a2 + 324))
      {
        strcat(&v20[*(a2 + 324)], __s);
      }

      else
      {
        strcpy(v20, __s);
      }

      v21 = 0;
      *(*(a2 + 296) + v14 + *(a2 + 324) + 1) = 0;
      v22 = *(a2 + 324);
      v23 = *(a2 + 312);
      *(*(a2 + 304) + 4 * *(a2 + 312)) = v22;
      *(a2 + 324) = v13 + v22 + 1;
      *a4 = v23;
      *(a2 + 312) = v23 + 1;
      return v21;
    }

    v19 = heap_Realloc(*(a1 + 8), *(a2 + 304), 4 * (v18 + 16));
    if (v19)
    {
      *(a2 + 304) = v19;
      *(a2 + 320) += 16;
      goto LABEL_14;
    }

LABEL_17:
    v21 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v21;
  }

  v9 = 0;
  v10 = *(a2 + 296);
  v11 = *(a2 + 304);
  while (strcmp(__s, (v10 + *(v11 + 4 * v9))))
  {
    if (v8 == ++v9)
    {
      goto LABEL_5;
    }
  }

  v21 = 0;
  *a4 = v9;
  return v21;
}

uint64_t addPOSandPHR(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, const char *a6, unsigned int a7, const char *a8, unsigned __int16 a9)
{
  v11 = a4;
  if (a4 == a5)
  {
    if (a4 + 1 == *(a3 + 4))
    {
      LOWORD(a5) = a4 + 1;
    }

    else
    {
      LOWORD(a5) = a4;
    }
  }

  if (a4 >= a5)
  {
    return 0;
  }

  v14 = a7;
  v15 = a4;
  v24 = a5;
  v16 = *a3;
  for (i = 160 * a4 + 104; ; i += 160)
  {
    v18 = *(*(v16 + i - 56) + 24);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      v19 = (*a3 + i);
      *(*(v19 - 7) + 24) = 0;
      heap_Free(*(a1 + 8), *v19);
      *(*a3 + i) = 0;
    }

    v20 = heap_Calloc(*(a1 + 8), 1, v14 + 1);
    *(*(*a3 + i - 56) + 24) = v20;
    if (!v20)
    {
      break;
    }

    if (a6)
    {
      strncat(v20, a6, v14);
      v20 = *(*(*a3 + i - 56) + 24);
    }

    a3[6] = v20;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag REF POS %s", v20);
    v21 = statpos_retagREFPOS(a1, a2, a3, v15);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v22 = heap_Calloc(*(a1 + 8), 1, a9 + 1);
    v16 = *a3;
    *(*a3 + i) = v22;
    if (!v22)
    {
      break;
    }

    if (a8)
    {
      strncat(v22, a8, a9);
      v16 = *a3;
    }

    *(v16 + i - 100) = v11;
    if (v24 == ++v15)
    {
      return v21;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t checkSpan_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v6 = heap_Calloc(*(a1 + 8), 1, (24 * *(a2 + 376)) | 1);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a3 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t checkAllocAndZero(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = a3;
  if (v5)
  {
    v8 = heap_Realloc(v6, v5, a3);
    if (v8)
    {
      v9 = v8;
      bzero(v8, v7);
LABEL_5:
      result = 0;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    v9 = heap_Calloc(v6, 1, a3);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t loc_CopyValue(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2313166855;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 5);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2313166858;
    }
  }

  return v3;
}

void *loc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t logSTATPOSRULE_TRule(uint64_t result, char **a2, _WORD *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = statcomp_add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = statcomp_add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logSTATPOSCONTEXT_TRule(char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (*(v13 + 4))
      {
        break;
      }

LABEL_17:
      result = statcomp_add2Str(*a4, a1, a2, "[");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, (a4[37] + *(a4[38] + 4 * *v13)));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      sprintf(__s, " %d(", *(v12 + v10 + 2));
      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, (a4[32] + *(a4[33] + 4 * *(v12 + v10 + 2))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, ")] ");
LABEL_22:
      if ((result & 0x80000000) == 0)
      {
        ++v11;
        v10 += 6;
        if (v11 < *(a5 + 4))
        {
          continue;
        }
      }

      return result;
    }

    if (v13[2])
    {
      *__s = 33;
    }

    else
    {
      if ((v13[2] & 2) != 0)
      {
        v14 = 0;
        strcpy(__s, "HASCOMMA ");
        goto LABEL_15;
      }

      if ((v13[2] & 4) != 0)
      {
        v14 = 0;
        strcpy(__s, "DIRECTIVE_MOVE2NEXT ");
        goto LABEL_15;
      }

      if ((v13[2] & 8) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISLASTINPHR ");
        goto LABEL_15;
      }

      if ((v13[2] & 0x10) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISFIRSTINPHR ");
LABEL_15:
        result = statcomp_add2Str(*a4, a1, a2, __s);
        if (!v14 || (result & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }
    }

    v14 = 1;
    goto LABEL_15;
  }

  return 0;
}

uint64_t statpos_rules_unload(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[33];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[33] = 0;
  }

  v4 = a1[35];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[35] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[38];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[38] = 0;
  }

  v7 = a1[41];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[41] = 0;
  }

  v8 = a1[28];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[28] = 0;
  }

  v9 = a1[30];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[30] = 0;
  }

  v10 = a1[42];
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    a1[42] = 0;
  }

  v11 = a1[43];
  if (v11)
  {
    heap_Free(*(v2 + 8), v11);
    a1[43] = 0;
  }

  v12 = a1[44];
  if (v12)
  {
    heap_Free(*(v2 + 8), v12);
    a1[44] = 0;
  }

  v13 = a1[45];
  if (v13)
  {
    heap_Free(*(v2 + 8), v13);
    a1[45] = 0;
  }

  v14 = a1[46];
  if (v14)
  {
    heap_Free(*(v2 + 8), v14);
    a1[46] = 0;
  }

  v15 = a1[6];
  if (v15)
  {
    if (*(a1 + 28))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        freeMAPRULE2STR_TRule(v2, (a1[6] + v16));
        ++v17;
        v16 += 32;
      }

      while (v17 < *(a1 + 28));
      v15 = a1[6];
    }

    heap_Free(*(v2 + 8), v15);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v18 = a1[8];
  if (v18)
  {
    if (*(a1 + 36))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        freeMAPRULE2STR_TRule(v2, (a1[8] + v19));
        ++v20;
        v19 += 32;
      }

      while (v20 < *(a1 + 36));
      v18 = a1[8];
    }

    heap_Free(*(v2 + 8), v18);
    a1[8] = 0;
  }

  *(a1 + 36) = 0;
  v21 = a1[10];
  if (v21)
  {
    v22 = *(a1 + 44);
    if (*(a1 + 44))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*(v21 + v23 + 16))
        {
          heap_Free(*(v2 + 8), *(v21 + v23 + 8));
          v21 = a1[10];
          v25 = v21 + v23;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          v22 = *(a1 + 44);
        }

        ++v24;
        v23 += 24;
      }

      while (v24 < v22);
    }

    heap_Free(*(v2 + 8), v21);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    heap_Free(*(v2 + 8), a1[12]);
    a1[12] = 0;
    *(a1 + 52) = 0;
    ssftmap_ObjClose(a1[14]);
  }

  if (a1[18])
  {
    v26 = 0;
    v27 = a1 + 48;
    do
    {
      heap_Free(*(v2 + 8), v27[v26]);
      v27[v26++] = 0;
    }

    while (v26 != 32);
    v28 = a1[18];
    if (v28)
    {
      ssftmap_ObjClose(v28);
      a1[18] = 0;
    }
  }

  v29 = a1[4];
  if (v29)
  {
    heap_Free(*(v2 + 8), v29);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  return v5;
}

void *freeMAPRULE2STR_TRule(void *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  if (v4)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = a2[1];
    }

    result = heap_Free(v3[1], v4);
    a2[1] = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[2];
    }

    result = heap_Free(v3[1], v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[3];
    }

    result = heap_Free(v3[1], v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t matchSTATPOSCONTEXT_TRule(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int *a6, _WORD *a7, uint64_t a8)
{
  v8 = a8;
  v22 = 1;
  v15 = *a2;
  *a6 = 0;
  *(a5 + 6) = 0;
  if (*(a2 + 8))
  {
    matched = logSTATPOSCONTEXT_TRule((a3 + 80), (a3 + 96), *(a3 + 88), a2, a4);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "         %s %s", a1, *(a3 + 80));
    **(a3 + 80) = 0;
  }

  else
  {
    matched = 0;
  }

  if (*(a4 + 8))
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      matched = matchREGEX_TRule_0(a2, a3, (*a4 + v18), a5, &v22, a7, v8);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v20 = v22;
      if (v22 != 1)
      {
        goto LABEL_11;
      }

      ++v19;
      v18 += 6;
      if (v19 >= *(a4 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v20 = 1;
LABEL_11:
    *a6 = v20;
  }

  return matched;
}

uint64_t matchREGEX_TRule_0(uint64_t *a1, uint64_t *a2, unsigned __int16 *a3, unsigned int *a4, int *a5, _WORD *a6, int a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v14 = *(a4 + 2);
  v15 = *a1;
  *a5 = 0;
  if (*(a1 + 4))
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           regex %d", a3[1]);
  }

  v16 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v16 & 4) != 0)
    {
      if (a7 == 2)
      {
        ++*(a4 + 4);
      }

      else if (a7 == 1)
      {
        ++*(a4 + 3);
      }

      if (*(a1 + 4))
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", *(a4 + 3), *(a4 + 4));
      }

      v20 = 0;
      goto LABEL_33;
    }

    v48 = a6;
    v17 = (v16 >> 1) & 1;
    v18 = v16 & 1;
    v16 = v18;
  }

  else
  {
    v48 = a6;
    v18 = 0;
    v17 = 0;
  }

  if (*(a1 + 4) >= 2u)
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", STATPOSDOMAIN2STRING[*a4], *a4, *(a4 + 2), *(a4 + 3), *(a4 + 4), (a1[37] + *(a1[38] + 4 * *a3)), *a3, v16, v17);
  }

  if (!v17)
  {
    v22 = *a4;
    if (*a4 - 1 <= 2 && a7 != 0)
    {
      if (a7 == 2)
      {
        v14 += *(a4 + 4) + 1;
        if (v14 >= *(a2 + 4))
        {
          goto LABEL_48;
        }
      }

      else if (a7 != 1 || (v14 += ~*(a4 + 3), v14 < 0))
      {
LABEL_48:
        if (*(a1 + 4))
        {
          log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", v45);
        }

        goto LABEL_138;
      }
    }

    if (v22 <= 3)
    {
      switch(v22)
      {
        case 1:
          v25 = *(*(*a2 + 160 * v14 + 48) + 8 * *a3);
          break;
        case 2:
          v25 = *(*(*a2 + 160 * v14 + 56) + 24 * *a3 + 16);
          break;
        case 3:
          v24 = *a3;
          if (v24 == *(a1 + 9))
          {
            v25 = (a2[2] + *(a2[3] + 2 * v14));
            break;
          }

          goto LABEL_42;
        default:
          goto LABEL_70;
      }

LABEL_63:
      if (v25)
      {
        goto LABEL_64;
      }

LABEL_70:
      *a5 = 0;
      if (!*(a1 + 4))
      {
        v20 = 0;
LABEL_127:
        if (!v18)
        {
          if (*(a1 + 4))
          {
            log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           return LH_FALSE");
          }

          goto LABEL_139;
        }

        *v48 = a3[1];
        if (*(a1 + 4))
        {
          log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           negate match - return LH_TRUE");
        }

        goto LABEL_33;
      }

      log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match");
      goto LABEL_72;
    }

    if (v22 != 4)
    {
      if (v22 == 5)
      {
        if (*a3 == *(a1 + 9))
        {
          v25 = a2[2];
        }

        else
        {
          v25 = a2[4];
        }

        goto LABEL_63;
      }

      if (v22 != 6)
      {
        goto LABEL_70;
      }

      v25 = a2[6];
      if (v25)
      {
        v24 = *a3;
        if (v24 == *(a1 + 9))
        {
          goto LABEL_64;
        }

        if (v24 == *(a1 + 8))
        {
LABEL_42:
          v25 = *(*(*a2 + 160 * v14 + 48) + 8 * v24);
          goto LABEL_63;
        }

        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ERROR : unknown DEF index for POS/ORT rule");
      }

      else
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           ERROR : no POS string to match");
      }

LABEL_124:
      v20 = 0;
      *a5 = 0;
LABEL_125:
      if (*(a1 + 4))
      {
        log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           REGEX FAILED");
      }

      goto LABEL_127;
    }

    v27 = *a2;
    v28 = *(a4 + 2);
    v29 = *(*a2 + 160 * *(a4 + 2) + 56);
    if (v29 && *(v29 + 24 * *(a1 + 12)))
    {
      v30 = *a1;
      if (a7 == 2)
      {
        v38 = *(a2 + 4);
        if (v28 + 1 != v38)
        {
          v41 = *(a4 + 4) + 1;
          if ((v41 & 0x10000) != 0)
          {
            v42 = *(a4 + 2);
LABEL_117:
            v44 = *(a1 + 4);
            if (v38 > v42)
            {
              if (v44 >= 2)
              {
                log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [3] _RIGHT wordIdx=%d", *(a4 + 2));
              }

              LOWORD(v28) = v42;
              goto LABEL_121;
            }
          }

          else
          {
            v42 = *(a4 + 2);
            while (v38 > v42)
            {
              v42 = *(*(v27 + 160 * v42 + 56) + 24 * *(a1 + 12) + 10) + 1;
              if (!--v41)
              {
                goto LABEL_117;
              }
            }

            v44 = *(a1 + 4);
          }

          if (v44 >= 2)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [2] _RIGHT doesnt exist, return LH_FALSE", v45);
          }

          goto LABEL_138;
        }

        if (*(a1 + 4) >= 2u)
        {
          v39 = *(v30 + 32);
          v40 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
LABEL_113:
          log_OutText(v39, "FE_POS", 5, 0, v40, 0);
        }
      }

      else
      {
        if (a7 != 1)
        {
          if (!a7 && *(a1 + 4) >= 2u)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           _CUR wordIdx=%d", *(a4 + 2));
            LOWORD(v28) = *(a4 + 2);
          }

LABEL_121:
          v25 = *(*(*a2 + 160 * v28 + 144) + 8 * *a3);
          if (v25)
          {
LABEL_64:
            if (*(a1 + 4))
            {
              log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           STR=%s", v25);
            }

            v31 = a3[1];
            v32 = strlen(v25);
            if (!v32)
            {
              log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "invalid arg for regex");
              return 2313166855;
            }

            *a5 = 0;
            v33 = nuance_pcre_exec(a1[24], a1[25], a1[27] + *(a1[28] + 4 * v31), 0, v25, v32, 0, 0, v49, 30);
            if ((v33 & 0x80000000) != 0)
            {
              v34 = nuance_pcre_ErrorToLhError(v33);
              v20 = v34;
              if ((v34 & 0xFFF00000) != 0x8A500000)
              {
                if ((v34 & 0x80000000) != 0)
                {
                  return v20;
                }

LABEL_73:
                if (*a5 == 1)
                {
                  if (*(a1 + 4))
                  {
                    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           REGEX FIRED");
                  }

                  if (v18)
                  {
                    if (*(a1 + 4))
                    {
                      log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           negate match - return LH_FALSE");
                    }

                    goto LABEL_139;
                  }

                  *v48 = a3[1];
                  if (*(a1 + 4))
                  {
                    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           return LH_TRUE");
                  }

LABEL_33:
                  v21 = 1;
                  goto LABEL_34;
                }

                goto LABEL_125;
              }

              if ((v34 & 0x1FFF) != 0x14)
              {
                if ((v34 & 0x1FFF) == 0xA)
                {
                  log_OutPublic(*(*a1 + 32), "FE_POS", 11002, 0, v46, v47);
                }

                else
                {
                  log_OutPublic(*(*a1 + 32), "FE_POS", 11027, "%s%x");
                }

                return v20;
              }
            }

            else if (v33)
            {
              *a5 = 1;
            }

LABEL_72:
            v20 = 0;
            goto LABEL_73;
          }

          if (*(a1 + 4))
          {
            log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match");
          }

          goto LABEL_124;
        }

        if (*(a4 + 2))
        {
          v35 = *(a4 + 3) + 1;
          if ((v35 & 0x10000) == 0)
          {
            v37 = *(a4 + 2);
            do
            {
              v43 = *(v27 + 160 * (v37 - 1) + 56) + 24 * *(a1 + 12);
              if (!*(v43 + 4))
              {
                v20 = 2313166848;
                log_OutText(*(v30 + 32), "FE_POS", 5, 0, "wordindex=%d does not end previous phrase", (v37 - 1));
                return v20;
              }

              v37 = *(v43 + 8);
              --v35;
            }

            while (v35 && *(v43 + 8));
            v36 = *(a1 + 4);
            if (!v35)
            {
              goto LABEL_96;
            }

            if (v36 >= 2)
            {
              v39 = *(v30 + 32);
              v40 = "           [2] _LEFT doesnt exist, return LH_FALSE";
              goto LABEL_113;
            }

            goto LABEL_138;
          }

          v36 = *(a1 + 4);
          v37 = *(a4 + 2);
LABEL_96:
          if (v36 >= 2)
          {
            log_OutText(*(v30 + 32), "FE_POS", 5, 0, "           [3] _LEFT wordIdx=%d", *(a4 + 2));
          }

          LOWORD(v28) = v37;
          goto LABEL_121;
        }

        if (*(a1 + 4) >= 2u)
        {
          v39 = *(v30 + 32);
          v40 = "           [1] _LEFT doesnt exist, return LH_FALSE";
          goto LABEL_113;
        }
      }
    }

LABEL_138:
    v20 = 0;
LABEL_139:
    *a5 = 0;
    return v20;
  }

  v19 = *(a4 + 2);
  if (*(a1 + 4))
  {
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "           pSent->words[%d].bHasComma = %d", *(a4 + 2), *(*a2 + 160 * *(a4 + 2) + 12));
    v19 = *(a4 + 2);
  }

  if (*(*a2 + 160 * v19 + 12) == 1)
  {
    v20 = 0;
    v21 = v18 ^ 1;
LABEL_34:
    *a5 = v21;
    return v20;
  }

  v20 = 0;
  *a5 = v18;
  return v20;
}

uint64_t matchSTATPOSRULE_TRule(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int *a4, int *a5)
{
  v17 = 1;
  if (*(a1 + 8))
  {
    v10 = *a1;
    matched = logSTATPOSRULE_TRule(*(a2 + 100), (a2 + 80), (a2 + 96), *(a2 + 88), a1, a3);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v10 + 32), "FE_POS", 5, 0, "       <%s>", *(a2 + 80));
    **(a2 + 80) = 0;
  }

  else
  {
    matched = 0;
  }

  *a5 = 0;
  if (*a3)
  {
    matched = matchSTATPOSCONTEXT_TRule("LEFT", a1, a2, *a3, a4, &v17, &v16, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v12 = v17;
    if (v17 != 1)
    {
      goto LABEL_15;
    }
  }

  v13 = a3[1];
  if (v13)
  {
    v17 = 0;
    matched = matchSTATPOSCONTEXT_TRule("CUR", a1, a2, v13, a4, &v17, &v16, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v12 = v17;
    if (v17 != 1)
    {
LABEL_15:
      *a5 = v12;
      return matched;
    }
  }

  v14 = a3[2];
  if (!v14)
  {
    v12 = 1;
    goto LABEL_15;
  }

  v17 = 0;
  matched = matchSTATPOSCONTEXT_TRule("RIGHT", a1, a2, v14, a4, &v17, &v16, 2);
  if ((matched & 0x80000000) == 0)
  {
    v12 = v17;
    goto LABEL_15;
  }

  return matched;
}

uint64_t getBrokerString_0(uint64_t a1, char *a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  __s = 0;
  memset(v13, 0, sizeof(v13));
  *__s2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = __s;
    if (*__s)
    {
      v8 = 0;
      do
      {
        v9 = v8;
        __s2[v8] = __tolower(v7[v8]);
        ++v8;
        v7 = __s;
        v10 = strlen(__s);
      }

      while (v9 <= 1 && v8 < v10);
    }

    else
    {
      v8 = 0;
    }

    __s2[v8] = 0;
    if (strcmp(v7, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    __strcpy_chk();
    __strcat_chk();
    __strcat_chk();
    return brokeraux_ComposeBrokerString(a1, v13, 0, 1, __s, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statpos_setParams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statposdetailtrace", &v4) & 0x80000000) == 0)
  {
    *(a2 + 8) = v4;
  }

  return 0;
}

uint64_t statPOSAddUniqueTagOffset2Word(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  v5 = a5;
  v7 = a3;
  v10 = *a2;
  v11 = *a2 + 160 * a3;
  v12 = *(v11 + 72);
  if (!*(v11 + 72))
  {
LABEL_6:
    v16 = a3;
    if (*(v11 + 74))
    {
      if (v12 + 2 <= *(v11 + 74))
      {
        goto LABEL_17;
      }

      v17 = heap_Realloc(*(a1 + 8), *(v11 + 64), 24 * *(v11 + 74) + 144);
      if (v17)
      {
        v18 = *a2 + 160 * v7;
        *(v18 + 64) = v17;
        v19 = v17 + 24 * *(v18 + 74);
        *(v19 + 112) = 0;
        *(v19 + 80) = 0u;
        *(v19 + 96) = 0u;
        *(v19 + 48) = 0u;
        *(v19 + 64) = 0u;
        *(v19 + 16) = 0u;
        *(v19 + 32) = 0u;
        *v19 = 0u;
        v10 = *a2;
        v20 = *a2 + 160 * v7;
        v21 = *(v20 + 74) + 5;
LABEL_16:
        *(v20 + 74) = v21;
LABEL_17:
        v25 = v10 + 160 * v16;
        v26 = *(v25 + 72);
        *(*(v25 + 64) + 24 * *(v25 + 72)) = a4;
        v27 = statPOSAddWordRec(a1, a2, v7, v26, v5);
        if ((v27 & 0x80000000) != 0)
        {
          return v27;
        }

        v22 = 0;
        ++*(*a2 + 160 * v16 + 72);
        return v22;
      }
    }

    else
    {
      v24 = heap_Calloc(*(a1 + 8), 1, 241);
      v10 = *a2;
      *(*a2 + 160 * v16 + 64) = v24;
      if (v24)
      {
        v20 = v10 + 160 * v16;
        v21 = 10;
        goto LABEL_16;
      }
    }

    v22 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v22;
  }

  v13 = 0;
  v14 = *(v11 + 64);
  while (1)
  {
    v15 = *v14;
    v14 += 6;
    if (v15 == a4)
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_6;
    }
  }

  return statPOSAddWordRec(a1, a2, a3, v13, a5);
}

uint64_t statPOSAddWordRec(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v8 = a3;
  v9 = *(*a2 + 160 * a3 + 64);
  v10 = a4;
  v11 = v9 + 24 * a4;
  if (!*(v11 + 18))
  {
    v17 = heap_Calloc(*(a1 + 8), 1, 121);
    v9 = *(*a2 + 160 * v8 + 64);
    *(v9 + 24 * v10 + 8) = v17;
    if (v17)
    {
      v15 = v9 + 24 * v10;
      v16 = 5;
      goto LABEL_7;
    }

LABEL_10:
    v21 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v21;
  }

  if (*(v11 + 16) + 2 <= *(v11 + 18))
  {
    goto LABEL_8;
  }

  v12 = heap_Realloc(*(a1 + 8), *(v11 + 8), 24 * *(v11 + 18) + 144);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(v13 + 8) = v12;
  v14 = v12 + 24 * *(v13 + 18);
  *(v14 + 112) = 0;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  v9 = *(*a2 + 160 * v8 + 64);
  v15 = v9 + 24 * v10;
  v16 = *(v15 + 18) + 5;
LABEL_7:
  *(v15 + 18) = v16;
LABEL_8:
  *(*(v9 + 24 * v10 + 8) + 24 * *(v9 + 24 * v10 + 16)) = a5;
  v18 = strlen(*(a2 + 56));
  v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
  v20 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(*(v20 + 8) + 24 * *(v20 + 16) + 16) = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  strcpy(v19, *(a2 + 56));
  v21 = 0;
  v22 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  ++*(v22 + 16);
  return v21;
}

uint64_t statpos_initCache(uint64_t result)
{
  *(result + 72) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t statpos_freeCache(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 64);
    do
    {
      heap_Free(*(a1 + 8), *(v6 + v4));
      v6 = *(a2 + 64);
      *(v6 + v4) = 0;
      ++v5;
      v4 += 16;
    }

    while (v5 < *(a2 + 72));
  }

  heap_Free(*(a1 + 8), *(a2 + 64));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return 0;
}

uint64_t statpos_retagPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _WORD *a6, const char **a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v8 = *(a2 + 80);
  if (!v8)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing statpos data => must be included in CLC to train a POS model", a6, a7);
    return 2313166848;
  }

  v10 = a4;
  memset(v62, 0, 12);
  v13 = *(v8 + 16);
  if (!*(v8 + 16))
  {
LABEL_7:
    v58 = a5;
    v59 = a1;
    if (*(a2 + 88))
    {
      v19 = 0;
      while (**(a3 + 48) != *(*(a2 + 80) + 24 * v19))
      {
LABEL_34:
        if (++v19 >= *(a2 + 88))
        {
          goto LABEL_35;
        }
      }

      if (v13)
      {
        v20 = 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        do
        {
          v22 = *(a2 + 80) + 24 * v19;
          if (v20 >= *(v22 + 16))
          {
            break;
          }

          v23 = *(v22 + 8);
          if (*(v23 + v21 + 4))
          {
            break;
          }

          v24 = *(v23 + v21);
          WORD2(v62[0]) = v10;
          LODWORD(v62[0]) = 6;
          *(v62 + 6) = 0;
          v25 = *(a2 + 64);
          v64 = 0;
          matched = matchSTATPOSRULE_TRule(a2, a3, (v25 + 32 * v24 + 8), v62, &v64);
          if ((matched & 0x80000000) != 0)
          {
            return matched;
          }

          if (v64 == 1)
          {
            if (*(*(*(a2 + 80) + 24 * v19 + 8) + v21 + 4) == 1)
            {
              v56 = "(CACHEABLE)";
            }

            else
            {
              v56 = "(NONCACHEABLE)";
            }

            v36 = 32 * v24;
            log_OutText(*(v59 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v24, v56, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
            *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24));
            v37 = v59;
            goto LABEL_75;
          }

          ++v20;
          v21 += 8;
        }

        while (!v64);
        v20 = v20;
      }

      v64 = 0;
      if (!*(a3 + 72) || (statpos_getBracketlessString(__s1, *(a3 + 48)), v26 = *(a3 + 72), !*(a3 + 72)))
      {
LABEL_24:
        v28 = -1;
        v29 = 4;
        while (1)
        {
          v30 = *(a2 + 80) + 24 * v19;
          if (++v28 >= *(v30 + 16))
          {
            v13 = 0;
            goto LABEL_34;
          }

          v31 = (*(v30 + 8) + v29);
          if (*v31 == 1)
          {
            v24 = *(v31 - 2);
            WORD2(v62[0]) = v10;
            LODWORD(v62[0]) = 6;
            *(v62 + 6) = 0;
            v32 = *(a2 + 64);
            v64 = 0;
            matched = matchSTATPOSRULE_TRule(a2, a3, (v32 + 32 * v24 + 8), v62, &v64);
            if ((matched & 0x80000000) != 0)
            {
              return matched;
            }

            v13 = v64;
            if (v64 == 1)
            {
              if (*(*(*(a2 + 80) + 24 * v19 + 8) + v29) == 1)
              {
                v50 = "(CACHEABLE)";
              }

              else
              {
                v50 = "(NONCACHEABLE)";
              }

              v36 = 32 * v24;
              log_OutText(*(v59 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v24, v50, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
              if (*(*(*(a2 + 80) + 24 * v19 + 8) + v29) == 1)
              {
                statpos_addToCache(v59, a3, v24);
                if (*a6 <= 0xEu)
                {
                  statpos_getBracketlessString(__s1, *(a3 + 48));
                  v51 = *a6;
                  if (!*a6)
                  {
                    goto LABEL_69;
                  }

                  v52 = 0;
                  v53 = *a6;
                  v54 = a7;
                  do
                  {
                    v55 = *v54++;
                    if (!strcmp(__s1, v55))
                    {
                      v52 = 1;
                    }

                    --v53;
                  }

                  while (v53);
                  if (!v52)
                  {
LABEL_69:
                    strncpy(a7[v51], __s1, 0x10uLL);
                    ++*a6;
                  }
                }
              }

              *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24));
              v37 = v59;
              goto LABEL_75;
            }
          }

          else
          {
            v13 = 0;
          }

          v29 += 8;
          if (v13)
          {
            goto LABEL_34;
          }
        }
      }

      v27 = (*(a3 + 64) + 8);
      while (strcmp(__s1, *(v27 - 1)))
      {
        v27 += 2;
        if (!--v26)
        {
          goto LABEL_24;
        }
      }

      v24 = *v27;
      v36 = 32 * v24;
      log_OutText(*(v59 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE FROM CACHE %d RETAG POS %s to %s on word[%d]=%s", v24, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
      if (*(*(*(a2 + 80) + 24 * v19 + 8) + 8 * v20 + 4) == 1 && *a6 <= 0xEu)
      {
        statpos_getBracketlessString(__s1, *(a3 + 48));
        v45 = *a6;
        if (!*a6)
        {
          goto LABEL_54;
        }

        v46 = 0;
        v47 = *a6;
        v48 = a7;
        do
        {
          v49 = *v48++;
          if (!strcmp(__s1, v49))
          {
            v46 = 1;
          }

          --v47;
        }

        while (v47);
        if (!v46)
        {
LABEL_54:
          strncpy(a7[v45], __s1, 0x10uLL);
          ++*a6;
        }
      }

      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v24));
      v37 = v59;
LABEL_75:
      v38 = a2;
      v39 = a3;
      v40 = v10;
      v41 = v58;
      v42 = v58;
      v43 = v24;
    }

    else
    {
LABEL_35:
      v33 = *(a2 + 90);
      WORD2(v62[0]) = v10;
      LODWORD(v62[0]) = 6;
      *(v62 + 6) = 0;
      v34 = *(a2 + 64);
      v64 = 0;
      v35 = matchSTATPOSRULE_TRule(a2, a3, (v34 + 32 * v33 + 8), v62, &v64);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      if (v64 != 1)
      {
        if (!*(a2 + 104))
        {
          log_OutText(*(v59 + 32), "FE_POS", 5, 0, "ERROR? NO MS1 RETAGGING OF %s", *(a3 + 48));
        }

        return v35;
      }

      v36 = 32 * v33;
      log_OutText(*(v59 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v33, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v33))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v33));
      v37 = v59;
      v38 = a2;
      v39 = a3;
      v40 = v10;
      v41 = a5;
      v42 = a5;
      v43 = v33;
    }

    v35 = statpos_doFurtherRetagging(v37, v38, v39, v40, v42, v43, &v63);
    if ((v35 & 0x80000000) == 0 && v63 != 1)
    {
      *v41 = *(*(a2 + 64) + v36);
    }

    return v35;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(*(v8 + 8) + v14);
    WORD2(v62[0]) = v10;
    LODWORD(v62[0]) = 6;
    *(v62 + 6) = 0;
    v17 = *(a2 + 64);
    v64 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, (v17 + 32 * v16 + 8), v62, &v64);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v13 = v64;
    if (v64 == 1)
    {
      break;
    }

    ++v15;
    v8 = *(a2 + 80);
    v14 += 8;
    if (v15 >= *(v8 + 16))
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(a2 + 80) + 8) + v14 + 4) == 1)
  {
    v44 = "(CACHEABLE)";
  }

  else
  {
    v44 = "(NONCACHEABLE)";
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v16, v44, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16))), v10, *(*(*a3 + 160 * v10 + 48) + 8 * *(a2 + 16)));
  *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v16));
  v35 = statpos_doFurtherRetagging(a1, a2, a3, v10, a5, v16, &v63);
  if ((v35 & 0x80000000) == 0 && v63 != 1)
  {
    *a5 = *(*(a2 + 64) + 32 * v16);
  }

  return v35;
}

uint64_t statpos_doFurtherRetagging(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int a6, int *a7)
{
  v9 = a4;
  *a7 = 0;
  v13 = *(*a3 + 160 * a4 + 8);
  if (v13)
  {
    if (v13 != 1)
    {
      return 0;
    }

    v14 = *(a2 + 124);
  }

  else
  {
    v14 = *(a2 + 128);
  }

  if (v14 != 1)
  {
    return 0;
  }

  *&v24[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v15 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v23 = v9;
    v22 = 6;
    *v24 = 0;
    v17 = *(a2 + 48);
    *a7 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, (v17 + v15 + 8), &v22, a7);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (*a7)
    {
      if (*a7 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "RETAGGING MS1 %s to %s", (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * a6))), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v15))));
        v20 = *(*(a2 + 48) + v15);
        a3[6] = *(a2 + 296) + *(*(a2 + 304) + 4 * v20);
        *a5 = v20;
      }

      return matched;
    }

    v15 += 32;
  }

  return matched;
}

char *statpos_getBracketlessString(char *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 <= 0x10uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = 16;
  }

  result = strncpy(a1, __s, v5);
  if (v5)
  {
    v7 = 0;
    do
    {
      if (a1[v7] == 40)
      {
        a1[v7] = 0;
        v7 = v5;
      }

      ++v7;
    }

    while (v7 < v5);
  }

  return result;
}

char *statpos_addToCache(uint64_t a1, uint64_t a2, __int16 a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 74);
  if (!*(a2 + 74))
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 801);
    *(a2 + 64) = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = 50;
    *(a2 + 74) = 50;
  }

  if (*(a2 + 72) + 1 < v6)
  {
    goto LABEL_7;
  }

  v8 = heap_Realloc(*(a1 + 8), *(a2 + 64), 16 * v6 + 320);
  if (v8)
  {
    *(a2 + 64) = v8;
    *(a2 + 74) += 20;
LABEL_7:
    statpos_getBracketlessString(__s, *(a2 + 48));
    v9 = strlen(__s);
    v10 = heap_Calloc(*(a1 + 8), 1, v9 + 1);
    *(*(a2 + 64) + 16 * *(a2 + 72)) = v10;
    if (!v10)
    {
      return log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    }

    result = strcpy(v10, __s);
    v12 = *(a2 + 72);
    *(*(a2 + 64) + 16 * v12 + 8) = a3;
    *(a2 + 72) = v12 + 1;
    return result;
  }

LABEL_9:
  v13 = *(a1 + 32);

  return log_OutPublic(v13, "FE_POS", 35000, 0);
}

uint64_t statpos_retagREFPOS(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *&v17[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v16 = a4;
    v15 = 6;
    *v17 = 0;
    v10 = *(a2 + 48);
    v18 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, (v10 + v8 + 8), &v15, &v18);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "REFRETAG : FIRED RETAGGING RULE %d RETAG REF POS %s to %s on word[%d]=%s", i, *(a3 + 48), (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))), a4, *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16)));
        v12 = strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        v13 = heap_Calloc(*(a1 + 8), 1, (v12 + 1));
        *(*a3 + 160 * a4 + 112) = v13;
        if (v13)
        {
          strcpy(v13, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        }

        else
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
          return 2313166858;
        }
      }

      return matched;
    }

    v8 += 32;
  }

  return matched;
}

uint64_t statpos_getPOSOffset(uint64_t a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v8 = 0;
  *a4 = -1;
  if (!*(a2 + 104))
  {
    return 0;
  }

  result = ssftmap_FindReadOnly(*(a2 + 112), a3, &v8);
  if ((result & 0x1FFF) == 0x14)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "ERROR? NO LISTOFPOS RETAGGING OF %s", a3);
    return 0;
  }

  *a4 = *v8;
  return result;
}

uint64_t statpos_getStrSetting(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v4 + *(v5 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return v4 + *(v5 + 4 * *i);
}

uint64_t statpos_splitMSMappingRulesIntoTables(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v4 = a2;
  v6 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a3 + 8)) | 1);
  *(v4 + 80) = v6;
  if (!v6 || (*(v4 + 88) = 655294464, *v6 = 33, *(*(v4 + 80) + 16) = 0, v7 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1), v8 = *(v4 + 80), (*(v8 + 8) = v7) == 0))
  {
LABEL_59:
    v47 = 2313166858;
    v48 = *(*v4 + 32);
LABEL_109:
    log_OutPublic(v48, "FE_POS", 35000, 0, v84);
    return v47;
  }

  *(v4 + 88) = 1;
  v9 = *(a3 + 8);
  if (!*(a3 + 8))
  {
    v49 = 1;
    goto LABEL_92;
  }

  v10 = 0;
  v84 = 1;
  v85 = a1;
  v87 = v4;
  do
  {
    v11 = *a3 + 32 * v10;
    v13 = *(v11 + 8);
    v12 = v11 + 8;
    if (!v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        __s2[0] = 0;
        v15 = *(v14 + 4);
        if (!*(v14 + 4))
        {
          goto LABEL_52;
        }

        v86 = v9;
        v91 = 0;
        v16 = 0;
        v88 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = *(v4 + 256);
        v22 = *(v4 + 264);
        v23 = *v14;
        v89 = v22;
        v90 = v21;
        do
        {
          v24 = (v23 + 6 * v16);
          if (*v24 == 3)
          {
            v19 = 1;
          }

          else
          {
            v18 = 1;
          }

          if (v19 == 1 && v20 == 0)
          {
            v26 = (v21 + *(v22 + 4 * v24[1]));
            v27 = *v26;
            if (v27 == 94)
            {
              v28 = strlen((v21 + *(v22 + 4 * v24[1])));
              if (v28 < 2u)
              {
                v20 = 0;
              }

              else
              {
                v91 = v26[1];
                __s2[0] = v26[1];
                __s2[1] = 0;
                v29 = v28;
                v30 = 1;
                do
                {
                  v32 = *v26++;
                  v31 = v32;
                  if (v30 < v28 && v31 == 40)
                  {
                    v17 = 1;
                  }

                  ++v30;
                  --v29;
                }

                while (v29);
                v20 = v91;
              }

              v22 = v89;
              v21 = v90;
            }

            else if (v27 == 92 && v26[1] == 83 && (v20 = v26[2]) == 0)
            {
              *(v87 + 90) = v10;
              v88 = 1;
            }

            else
            {
              v20 = 0;
            }
          }

          ++v16;
        }

        while (v16 < v15);
        v35 = v18 != 1 && v17 != 1;
        if (v19 != 1 || (v91 - 65) > 0x19)
        {
          v4 = v87;
          a1 = v85;
          v9 = v86;
          if (v88)
          {
            goto LABEL_7;
          }

LABEL_52:
          v37 = *(v8 + 16);
          v38 = *(v8 + 8) + 8 * v37;
          *v38 = v10;
          *(v38 + 4) = 0;
          *(v8 + 16) = v37 + 1;
          goto LABEL_7;
        }

        a1 = v85;
        v39 = v8;
        v40 = 1;
        v4 = v87;
        while (v84 + v40 != 1)
        {
          v41 = strcmp(v39, __s2);
          --v40;
          v39 += 24;
          if (!v41)
          {
            v42 = -v40;
            goto LABEL_58;
          }
        }

        __strcpy_chk();
        *(*(v87 + 80) + 24 * *(v87 + 88) + 16) = 0;
        v43 = heap_Calloc(*(*v87 + 8), 1, (8 * *(a3 + 8)) | 1);
        v8 = *(v87 + 80);
        v42 = *(v87 + 88);
        *(v8 + 24 * v42 + 8) = v43;
        if (!v43)
        {
          goto LABEL_59;
        }

        v84 = (v42 + 1);
        *(v87 + 88) = v42 + 1;
LABEL_58:
        v44 = v8 + 24 * v42;
        v45 = *(v44 + 16);
        v46 = *(v44 + 8) + 8 * v45;
        *v46 = v10;
        *(v46 + 4) = v35;
        *(v44 + 16) = v45 + 1;
        v9 = *(a3 + 8);
      }
    }

LABEL_7:
    ++v10;
  }

  while (v10 < v9);
  v49 = v84;
  if (v84 < 2u)
  {
LABEL_92:
    v67 = v49;
    goto LABEL_93;
  }

  v50 = 1;
  do
  {
    v51 = *(v8 + 24 * v50 + 16);
    if (*(v8 + 24 * v50 + 16))
    {
      v52 = 0;
      do
      {
        v53 = 0;
        do
        {
          if (v52 != v53)
          {
            v54 = *(v8 + 24 * v50 + 8);
            v55 = *(*a3 + 32 * *(v54 + 8 * v52) + 16);
            v56 = *(v55 + 8);
            if (*(v55 + 8))
            {
              v57 = 0;
              v58 = *(*a3 + 32 * *(v54 + 8 * v53) + 16);
              v59 = *(v58 + 8);
              v60 = v54 + 8 * v52;
              v61 = v54 + 8 * v53;
              do
              {
                if (v59)
                {
                  v62 = (*v55 + 6 * v57);
                  v63 = *v62;
                  v64 = v59;
                  v65 = 2;
                  do
                  {
                    if (v63 == 3 && v62[1] == *(*v58 + v65))
                    {
                      if (*(v60 + 4) == 1)
                      {
                        *(v60 + 4) = 0;
                      }

                      if (*(v61 + 4) == 1)
                      {
                        *(v61 + 4) = 0;
                      }
                    }

                    v65 += 6;
                    --v64;
                  }

                  while (v64);
                }

                ++v57;
              }

              while (v57 != v56);
            }
          }

          ++v53;
        }

        while (v53 != v51);
        ++v52;
      }

      while (v52 != v51);
    }

    ++v50;
  }

  while (v50 != v84);
  v66 = 1;
  v67 = v84;
  do
  {
    if (*(v8 + 24 * v66 + 16))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      do
      {
        if (v68)
        {
          v71 = *(v8 + 24 * v66 + 8);
          if (!*(v71 + v68 + 4))
          {
            v72 = *(v71 + v68);
            memmove((v71 + 8 * v70 + 8), (v71 + 8 * v70), v68 - 8 * v70);
            v8 = *(v4 + 80);
            v73 = *(v8 + 24 * v66 + 8) + 8 * v70;
            *(v73 + 4) = 0;
            *v73 = v72;
            ++v70;
          }
        }

        ++v69;
        v68 += 8;
      }

      while (v69 < *(v8 + 24 * v66 + 16));
      v67 = *(v4 + 88);
    }

    ++v66;
  }

  while (v66 < v67);
LABEL_93:
  v74 = heap_Realloc(*(*v4 + 8), v8, (24 * v67) | 1);
  if (!v74)
  {
LABEL_108:
    v47 = 2313166858;
    v48 = *(a1 + 32);
    goto LABEL_109;
  }

  v75 = v74;
  *(v4 + 80) = v74;
  if (!*(v4 + 88))
  {
    if (*(v4 + 90) == 9999)
    {
      goto LABEL_111;
    }

    return 0;
  }

  v76 = 0;
  v77 = 0;
  do
  {
    v78 = v75 + v76;
    if (*(v75 + v76 + 16))
    {
      v79 = heap_Realloc(*(*v4 + 8), *(v78 + 8), (8 * *(v75 + v76 + 16)) | 1);
      if (!v79)
      {
        goto LABEL_108;
      }
    }

    else
    {
      heap_Free(*(a1 + 8), *(v78 + 8));
      v79 = 0;
    }

    v75 = *(v4 + 80);
    *(v75 + v76 + 8) = v79;
    ++v77;
    v80 = *(v4 + 88);
    v76 += 24;
  }

  while (v77 < v80);
  if (*(v4 + 90) != 9999)
  {
    return 0;
  }

  if (*(v4 + 88))
  {
    v81 = 0;
    v82 = 0;
    do
    {
      if (*(v75 + v81 + 16))
      {
        heap_Free(*(a1 + 8), *(v75 + v81 + 8));
        v75 = *(v4 + 80);
        v80 = v75 + v81;
        *(v80 + 8) = 0;
        *(v80 + 16) = 0;
        LOWORD(v80) = *(v4 + 88);
      }

      ++v82;
      v81 += 24;
    }

    while (v82 < v80);
  }

LABEL_111:
  heap_Free(*(a1 + 8), v75);
  v47 = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  return v47;
}

uint64_t statpos_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v107 = *MEMORY[0x1E69E9840];
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  memset(v106, 0, sizeof(v106));
  v95 = 0;
  *a7 = a3;
  *(a7 + 188) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading MS StatPOS rules");
  BrokerString_0 = getBrokerString_0(a3, v106, 0x80uLL);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataOpenEx(*(a3 + 24), v106, 1, &v96);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataClose(*(a3 + 24), v96);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = ssftriff_reader_ObjOpen(a1, a2, 0, v106, "PANP", 1031, &v101);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  while (1)
  {
    LODWORD(info_from_dct) = ssftriff_reader_OpenChunk(v101, &v99, &v98, &v97);
    if ((info_from_dct & 0x80000000) != 0)
    {
LABEL_67:
      if ((info_from_dct & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      ssftriff_reader_ObjClose(v101);
      v101 = 0;
      if (*(a7 + 52))
      {
        v69 = 0;
        v70 = 0;
        do
        {
          BrokerString_0 = ssftmap_Insert(a7[14], a7[37] + *(a7[38] + 4 * *(a7[12] + v69)), a7[12] + v69);
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v70;
          v69 += 4;
        }

        while (v70 < *(a7 + 52));
      }

      *(a7 + 44) = 0;
      v71 = statpos_splitMSMappingRulesIntoTables(a3, a7, (a7 + 8));
      if ((v71 & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      info_from_dct = v71;
      a7[2] = 0x2000100030000;
      *(a7 + 12) = 4;
      StrSetting = statpos_getStrSetting(a7, "POSsep");
      if (StrSetting)
      {
        v73 = *StrSetting;
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : POSsep not defined in data file, using default '/'");
        v73 = 47;
      }

      *(a7 + 120) = v73;
      v74 = statpos_getStrSetting(a7, "HYPHEN_CHAR");
      if (!v74)
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : HYPHEN_CHAR not defined in data file, using default '-'");
        v74 = "-";
      }

      a7[20] = v74;
      v75 = statpos_getStrSetting(a7, "PUNCT_CHAR");
      if (v75)
      {
        v76 = v75;
      }

      else
      {
        v76 = "";
      }

      a7[21] = v76;
      v77 = statpos_getStrSetting(a7, "TERMPUNCT_CHAR");
      if (v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = "";
      }

      a7[22] = v78;
      *(a7 + 31) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToOOV") == 1;
      *(a7 + 32) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToKnownAmbiguous") == 1;
      *(a7 + 38) = statpos_getStrSettingAsNumber(a7, "NOOOVMODEL") == 1;
      *(a7 + 46) = statpos_getStrSettingAsNumber(a7, "DOMSMAPPINGBEFORELISTOFPOS") == 1;
      *(a7 + 47) = statpos_getStrSettingAsNumber(a7, "ReEstimateEachWord") == 1;
      v79 = statpos_getStrSetting(a7, "POITOPOS_ns");
      a7[42] = v79;
      if (v79)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v79, a7 + 42);
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          return BrokerString_0;
        }

        info_from_dct = 0;
      }

      v80 = statpos_getStrSetting(a7, "POITOPOS_nt");
      a7[43] = v80;
      if (v80)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v80, a7 + 43);
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          return BrokerString_0;
        }

        info_from_dct = 0;
      }

      v81 = statpos_getStrSetting(a7, "POITOPOS_nz");
      a7[44] = v81;
      if (v81)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v81, a7 + 44);
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          return BrokerString_0;
        }

        info_from_dct = 0;
      }

      v82 = statpos_getStrSetting(a7, "POITOPOS_nx");
      a7[45] = v82;
      if (v82)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v82, a7 + 45);
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          return BrokerString_0;
        }

        info_from_dct = 0;
      }

      v83 = statpos_getStrSetting(a7, "POITOPOS_nr");
      a7[46] = v83;
      if (v83)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v83, a7 + 46);
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          return BrokerString_0;
        }

        info_from_dct = 0;
      }

      *(a7 + 34) = statpos_getStrSettingAsNumber(a7, "lexMismatchUseStringMatch") == 1;
      StrSettingAsNumber = statpos_getStrSettingAsNumber(a7, "mapTagsetFromDctMappingFile");
      *(a7 + 33) = StrSettingAsNumber == 1;
      if (StrSettingAsNumber == 1)
      {
        info_from_dct = statpos_get_info_from_dct(a3, a4, a5, a6, "fecfg", "mde_tag_mappings_dic", &v95, 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        if (v95)
        {
          v94 = 0;
          info_from_dct = (*(a6 + 72))(a4, a5, v95, &v94);
          if ((info_from_dct & 0x80000000) != 0)
          {
            goto LABEL_126;
          }

          if (v94)
          {
            *&__c[1] = 0;
            __c[0] = 0;
            v85 = *(*a7 + 8);
            *&v102 = ssftmap_ElemCopyString;
            *(&v102 + 1) = ssftmap_ElemFreeString;
            v103 = ssftmap_ElemCompareKeysString;
            v104 = ssftmap_ElemCopyString;
            v105 = ssftmap_ElemFreeString;
            info_from_dct = ssftmap_ObjOpen(v85, 0, &v102, a7 + 18);
            if ((info_from_dct & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            if (*(a7 + 52))
            {
              v86 = 0;
              do
              {
                v93 = -1;
                info_from_dct = (*(a6 + 96))(a4, a5, v95, a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v86)), &__c[1], &v93, __c);
                if ((info_from_dct & 0x80000000) != 0)
                {
                  return info_from_dct;
                }

                if (v93 == 1)
                {
                  v87 = **&__c[1];
                  v88 = strchr(**&__c[1], __c[0]);
                  if (v88)
                  {
                    *v88 = 0;
                    v87 = **&__c[1];
                  }

                  info_from_dct = ssftmap_Insert(a7[18], a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v86)), v87);
                  if ((info_from_dct & 0x80000000) != 0)
                  {
                    goto LABEL_126;
                  }

                  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "POS mapping %s->%s", (a7[37] + *(a7[38] + 4 * *(a7[12] + 4 * v86))), **&__c[1]);
                }
              }

              while (++v86 < *(a7 + 52));
            }
          }

          else
          {
            log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary %s does not exist");
          }
        }

        else
        {
          log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary does not exist");
        }
      }

      if (a7[18])
      {
        v90 = 0;
        while (1)
        {
          v91 = heap_Calloc(*(a3 + 8), 1, 32);
          a7[v90 + 48] = v91;
          if (!v91)
          {
            break;
          }

          if (++v90 == 32)
          {
            goto LABEL_125;
          }
        }

        log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }

LABEL_125:
      log_OutText(*(a3 + 32), "FE_POS", 5, 0, "statpos data file : ambigPOSSep=%c ApplyRetaggingToOOV=%d ApplyRetaggingToKnownAmbiguous=%d NOOOVMODEL=%d ReEstimateEachWord=%d, poi_ns=%s,poi_nt=%s,poi_nz=%s,poi_nx=%s,poi_nr=%s", *(a7 + 120), *(a7 + 31), *(a7 + 32), *(a7 + 38), *(a7 + 47), a7[42], a7[43], a7[44], a7[45], a7[46]);
LABEL_126:
      if (v95)
      {
        heap_Free(*(a3 + 8), v95);
      }

      return info_from_dct;
    }

    if (!(v99 ^ 0x47494643 | v100))
    {
      LODWORD(info_from_dct) = 0;
      v21 = v97;
      *(a7 + 5) = *v97;
      *(a7 + 6) = v21[1];
      *(a7 + 7) = v21[2];
      goto LABEL_64;
    }

    if (!(v99 ^ 0x45535453 | v100))
    {
      v22 = v97;
      v23 = *v97;
      *(a7 + 20) = v23;
      v24 = heap_Calloc(*(*a7 + 8), 1, (8 * v23) | 1);
      a7[4] = v24;
      if (!v24)
      {
        goto LABEL_74;
      }

      if (*(a7 + 20))
      {
        v25 = 0;
        v26 = 0;
        v27 = 2;
        do
        {
          *(a7[4] + v25) = *(v22 + v27);
          v28 = v27 + 4;
          *(a7[4] + v25 + 4) = *(v22 + v28);
          v27 = v28 + 4;
          ++v26;
          v25 += 8;
        }

        while (v26 < *(a7 + 20));
      }

LABEL_21:
      LODWORD(info_from_dct) = 0;
      goto LABEL_64;
    }

    if (!(v99 ^ 0x47415452 | v100))
    {
      break;
    }

    if (!(v99 ^ 0x4754524D | v100))
    {
      v35 = v97;
      v36 = *v97;
      *(a7 + 36) = v36;
      LODWORD(v102) = 2;
      v37 = heap_Calloc(*(*a7 + 8), 1, (32 * v36) | 1);
      a7[8] = v37;
      if (!v37)
      {
        goto LABEL_74;
      }

      if (*(a7 + 36))
      {
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v40 = v102;
          *(a7[8] + v38) = *(v35 + v102);
          LODWORD(v102) = v40 + 4;
          BrokerString_0 = readRULE_0(*a7, v35, &v102, (a7[8] + v38 + 8));
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v39;
          v38 += 32;
          if (v39 >= *(a7 + 36))
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_33;
    }

    if (v99 ^ 0x5053494C | v100)
    {
      if (!(v99 ^ 0x58474552 | v100))
      {
        v16 = v101;
        v47 = v97;
        *&v102 = v97;
        v48 = *v97;
        *(a7 + 52) = *v97;
        if (v48)
        {
          v49 = (*(v47 + 1) + 8);
          a7[27] = v47 + v49;
          v50 = (v49 + v48);
        }

        else
        {
          v50 = 4;
        }

        v55 = *(v47 + v50);
        *(a7 + 116) = v55;
        v56 = heap_Calloc(*(*a7 + 8), 1, (4 * v55) | 1);
        a7[28] = v56;
        if (!v56)
        {
          goto LABEL_74;
        }

        if (*(a7 + 116))
        {
          v57 = 0;
          v58 = v50 + 2;
          do
          {
            *(a7[28] + 4 * v57) = *(v47 + v58);
            v58 += 4;
            ++v57;
          }

          while (v57 < *(a7 + 116));
        }

        v59 = a7 + 30;
        goto LABEL_63;
      }

      if (!(v99 ^ 0x53525453 | v100))
      {
        v16 = v101;
        v51 = v97;
        *&v102 = v97;
        v52 = *v97;
        *(a7 + 72) = *v97;
        if (v52)
        {
          v53 = (*(v51 + 1) + 8);
          a7[37] = v51 + v53;
          v54 = (v53 + v52);
        }

        else
        {
          v54 = 4;
        }

        v60 = *(v51 + v54);
        *(a7 + 156) = v60;
        v61 = heap_Calloc(*(*a7 + 8), 1, (4 * v60) | 1);
        a7[38] = v61;
        if (!v61)
        {
          goto LABEL_74;
        }

        if (*(a7 + 156))
        {
          v62 = 0;
          v63 = v54 + 2;
          do
          {
            *(a7[38] + 4 * v62) = *(v51 + v63);
            v63 += 4;
            ++v62;
          }

          while (v62 < *(a7 + 156));
        }

        v59 = a7 + 41;
        goto LABEL_63;
      }

      if (!(v99 ^ 0x54534552 | v100))
      {
        v16 = v101;
        v17 = v97;
        *&v102 = v97;
        v18 = *v97;
        *(a7 + 62) = *v97;
        if (v18)
        {
          v19 = (*(v17 + 1) + 8);
          a7[32] = v17 + v19;
          v20 = (v19 + v18);
        }

        else
        {
          v20 = 4;
        }

        v64 = *(v17 + v20);
        *(a7 + 136) = v64;
        v65 = heap_Calloc(*(*a7 + 8), 1, (4 * v64) | 1);
        a7[33] = v65;
        if (!v65)
        {
          goto LABEL_74;
        }

        if (*(a7 + 136))
        {
          v66 = 0;
          v67 = v20 + 2;
          do
          {
            *(a7[33] + 4 * v66) = *(v17 + v67);
            v67 += 4;
            ++v66;
          }

          while (v66 < *(a7 + 136));
        }

        v59 = a7 + 35;
LABEL_63:
        info_from_dct = ssftriff_reader_DetachChunkData(v16, v59, &v102);
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }
      }
    }

    else
    {
      v41 = v97;
      v42 = *v97;
      *(a7 + 52) = v42;
      if (!v42)
      {
        goto LABEL_21;
      }

      v43 = *(*a7 + 8);
      *&v102 = ssftmap_ElemCopyString;
      *(&v102 + 1) = ssftmap_ElemFreeString;
      v103 = ssftmap_ElemCompareKeysString;
      v104 = loc_CopyValue;
      v105 = loc_FreeValue;
      info_from_dct = ssftmap_ObjOpen(v43, 0, &v102, a7 + 14);
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v44 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 52)) | 1);
      a7[12] = v44;
      if (!v44)
      {
LABEL_74:
        info_from_dct = 2313166858;
        log_OutPublic(*(*a7 + 32), "FE_POS", 35000, 0);
        return info_from_dct;
      }

      if (*(a7 + 52))
      {
        v45 = 0;
        v46 = 1;
        do
        {
          *(a7[12] + 4 * v45) = *&v41[v46];
          v46 += 2;
          ++v45;
        }

        while (v45 < *(a7 + 52));
      }
    }

LABEL_64:
    v68 = ssftriff_reader_CloseChunk(v101);
    if (v68 < 0)
    {
      LODWORD(info_from_dct) = v68;
    }

    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_67;
    }
  }

  v29 = v97;
  v30 = *v97;
  *(a7 + 28) = v30;
  LODWORD(v102) = 2;
  v31 = heap_Calloc(*(*a7 + 8), 1, (32 * v30) | 1);
  a7[6] = v31;
  if (!v31)
  {
    goto LABEL_74;
  }

  if (!*(a7 + 28))
  {
LABEL_33:
    LODWORD(info_from_dct) = 0;
    goto LABEL_64;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = v102;
    *(a7[6] + v32) = *(v29 + v102);
    LODWORD(v102) = v34 + 4;
    BrokerString_0 = readRULE_0(*a7, v29, &v102, (a7[6] + v32 + 8));
    if ((BrokerString_0 & 0x80000000) != 0)
    {
      return BrokerString_0;
    }

    ++v33;
    v32 += 32;
    if (v33 >= *(a7 + 28))
    {
      goto LABEL_33;
    }
  }
}

uint64_t statpos_getStrSettingAsNumber(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 296);
    v6 = *(a1 + 304);
    v7 = (*(a1 + 32) + 4);
    while (strcmp(__s1, (v5 + *(v6 + 4 * *(v7 - 1)))))
    {
      v7 += 2;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v9 = (v5 + *(v6 + 4 * *v7));

    return atoi(v9);
  }

  else
  {
LABEL_5:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "Warning : key=%s not defined, setting to 0", __s1);
    return 0;
  }
}

uint64_t statpos_format_POI_param(uint64_t a1, char *__s, char **a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v7 = heap_Calloc(*(a1 + 8), 1, v6 + 3);
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      *v7 = 44;
      v9 = 1;
      v10 = 1;
      while (1)
      {
        if (v10)
        {
          v11 = v10;
          if (v7[v10 - 1] == 44 && *v4 == 44)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v11 = 0;
        }

        v7[v11] = *v4;
        ++v10;
LABEL_10:
        ++v4;
        if (v6 <= v9++)
        {
          v7[v10] = 0;
          *&v7[strlen(v7)] = 44;
          goto LABEL_14;
        }
      }
    }

    *v7 = 0;
LABEL_14:
    result = 0;
    *a3 = v8;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t readRULE_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT_1(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT_1(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT_1(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT_1(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *(a2 + v4);
  *a3 = v4 + 2;
  if (!v5)
  {
    return 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 17);
  if (v10 && (v11 = v10, *(v10 + 8) = v5, v12 = heap_Calloc(*(a1 + 8), 1, (6 * v5) | 1), (*v11 = v12) != 0))
  {
    if (*(v11 + 8))
    {
      v13 = 0;
      v14 = 0;
      v15 = *a3;
      do
      {
        *(v12 + v13) = *(a2 + v15);
        v16 = *a3 + 2;
        *a3 = v16;
        *(*v11 + v13 + 2) = *(a2 + v16);
        v17 = *a3;
        v18 = *a3 + 2;
        *a3 = v18;
        LOBYTE(v18) = *(a2 + v18);
        v15 = v17 + 4;
        *a3 = v15;
        v12 = *v11;
        *(*v11 + v13 + 4) = v18;
        ++v14;
        v13 += 6;
      }

      while (v14 < *(v11 + 8));
    }

    v19 = 0;
    *a4 = v11;
  }

  else
  {
    v19 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  }

  return v19;
}

uint64_t _statpos_char_check(char *a1, const char *a2, unsigned int a3)
{
  v6 = strlen(a1);
  v7 = Utf8_LengthInUtf8chars(a1, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7;
  while (1)
  {
    v11 = &a1[v8];
    v12 = utf8_determineUTF8CharLength(*v11);
    if (v12 >= a3 && !strncmp(&a1[v8], a2, v12))
    {
      break;
    }

    v8 += utf8_determineUTF8CharLength(*v11);
    if (++v9 >= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v10 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v10;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = heap_Calloc(*(a1 + 8), 1, 65);
      v9 = *a3;
      *(*a3 + v7) = v8;
      if (!v8)
      {
        goto LABEL_7;
      }

      *(v9 + v7 + 8) = 65;
      *v8 = 61;
      v7 += 16;
    }

    while (16 * a2 != v7);
  }

  v10 = 0;
  *(a3 + 2) = a2;
  return v10;
}

uint64_t statpos_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 0;
    v2 = 0;
    do
    {
      **(*a1 + v1) = 61;
      ++v2;
      v1 += 16;
    }

    while (v2 < *(a1 + 8));
  }

  return 0;
}

uint64_t statpos_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s, char *a5, uint64_t a6)
{
  if (a6)
  {
    v10 = *(a6 + 1336);
    if (v10)
    {
      v11 = strlen(a5);
      v12 = 0;
      v13 = *(a6 + 1328);
      v14 = *(*(a6 + 1312) + 8 * a3);
      while (1)
      {
        v15 = v12;
        if (!strncmp(*(v13 + 16 * v12), v14, v11))
        {
          break;
        }

        v12 = v15 + 1;
        if (v10 <= (v15 + 1))
        {
          goto LABEL_21;
        }
      }

      v16 = *(v13 + 16 * v15 + 8);
      v17 = strstr(v16, __s);
      if (v17)
      {
        v18 = v17;
        v19 = strlen(__s);
        v20 = strlen(v16);
        v21 = v20;
        v22 = &v16[v20];
        while (v18 != v16 || v21 != v19 && (v21 <= v19 + 1 || v18[v19] != 32))
        {
          if (v18 > v16)
          {
            v23 = &v18[v19];
            if (v22 > (v23 + 1) && *v23 == 32)
            {
              if (*(v18 - 1) == 32)
              {
                break;
              }
            }

            else if (v22 == v23)
            {
              break;
            }
          }

          v18 = strstr(&v18[v19], __s);
          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        *__s = 61;
      }
    }
  }

LABEL_21:
  v24 = strlen(__s);
  v25 = *a2 + 16 * a3;
  if (*(v25 + 8) > v24)
  {
    v26 = *v25;
LABEL_25:
    strcpy(v26, __s);
    return 0;
  }

  v27 = v24 + 1;
  v26 = heap_Realloc(*(a1 + 8), *v25, v27);
  if (v26)
  {
    v28 = *a2 + 16 * a3;
    *v28 = v26;
    *(v28 + 8) = v27;
    goto LABEL_25;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_get_features(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  if (a6)
  {
    v13 = 0;
    v14 = a6;
    while (2)
    {
      v15 = *(a5 + 8 * v13);
      v16 = &byte_1F42D3130;
      v17 = "PREVPOS";
      while (strcmp(v15, v17))
      {
        v17 = *(v16 + 1);
        v16 += 24;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      result = (*(v16 - 1))(a1, a2, a3, a4, *v16, *(a2 + 128));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statpos_fv_add(a1, a7, v13, *(a2 + 128), *(a5 + 8 * v13), a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v13 != v14)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t statpos_dumpFeatureVectorAndResult(uint64_t a1, int a2, char **a3, _WORD *a4, char *__s, char *a6, uint64_t a7, void *a8, char *a9, int a10, char *a11, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v18 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v19 = 0;
    do
    {
      v18 = statcomp_add2Str(a1, a3, a4, *(*a8 + 16 * v19));
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }
    }

    while (*(a7 + 1296) - 1 > ++v19);
  }

  if (!a11)
  {
    v18 = statcomp_add2Str(a1, a3, a4, "PRED=");
    if ((v18 & 0x80000000) == 0)
    {
      v18 = statcomp_add2Str(a1, a3, a4, a9);
      if ((v18 & 0x80000000) == 0)
      {
        v21 = " ";
LABEL_26:
        v20 = statcomp_add2Str(a1, a3, a4, v21);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        goto LABEL_27;
      }
    }

    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, "REF=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a11);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a9);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v20 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (strcmp(a11, a9) && (!__s1 || strcmp(__s1, a9)))
  {
    v21 = "*TAGERROR ";
    goto LABEL_26;
  }

LABEL_27:
  if (a10 || (v20 = statcomp_add2Str(a1, a3, a4, "*BADTAG "), (v20 & 0x80000000) == 0))
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    **a3 = 0;
  }

  return v20;
}

uint64_t initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

_WORD **clearFeatureVector(_WORD **result, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *result++;
      *v3 = 61;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statpos_get_features_for_igtree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v8 = 16 * v6;
    v9 = *(*a3 + v8);
    if (strlen(v9) <= 0x40)
    {
      v11 = *(a2 + 8 * v7);
      goto LABEL_7;
    }

    v10 = strlen(v9);
    v11 = heap_Realloc(*(a1 + 8), *(a2 + 8 * v7), v10 + 1);
    if (!v11)
    {
      break;
    }

    *(a2 + 8 * v7) = v11;
    v9 = *(*a3 + v8);
LABEL_7:
    strcpy(v11, v9);
    v6 = v7 + 1;
    if (*(a3 + 8) <= (v7 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_fe_prdctd_pos(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 == -1)
  {
    __dst[2] = 0;
    v7 = 16979;
    goto LABEL_7;
  }

  if ((v6 & 0x80000000) != 0 || v6 >= *(a2 + 8))
  {
    v7 = 61;
LABEL_7:
    *__dst = v7;
    return 0;
  }

  strcpy(__dst, *(*a2 + 160 * v6 + 88));
  return 0;
}

uint64_t statpos_fe_pssbl_tags(int a1, uint64_t a2, uint64_t a3, int a4, int a5, char *__dst)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && (v9 = *(*a2 + 160 * v7 + 80)) != 0 && v7 < *(a2 + 8))
  {
    if (*(a3 + 144))
    {
      v25 = 0;
      v24 = 0;
      v11 = __s;
      __strcpy_chk();
      __s2[0] = *(a3 + 120);
      __s2[1] = 0;
      v12 = strchr(__s, 47);
      if (v12)
      {
        v13 = v12;
        v11 = __s;
        do
        {
          *v13 = 0;
          if ((ssftmap_FindReadOnly(*(a3 + 144), v11, &v25) & 0x1FFF) == 0x14)
          {
            v14 = (a3 + 384);
            v15 = v11;
          }

          else
          {
            v15 = v25;
            v14 = (a3 + 384);
          }

          statpos_getPOSTags(v15, v14, &v24);
          v11 = v13 + 1;
          v13 = strchr(v13 + 1, 47);
        }

        while (v13);
      }

      if ((ssftmap_FindReadOnly(*(a3 + 144), v11, &v25) & 0x1FFF) == 0x14)
      {
        v16 = (a3 + 384);
        v17 = v11;
      }

      else
      {
        v17 = v25;
        v16 = (a3 + 384);
      }

      statpos_getPOSTags(v17, v16, &v24);
      v19 = v24;
      ssft_qsort(a3 + 384, v24, 8, string_cmp_0);
      strcpy(__dst, *(a3 + 384));
      if (v19 >= 2)
      {
        v20 = v19 - 1;
        v21 = (a3 + 392);
        do
        {
          v22 = strcat(__dst, __s2);
          v23 = *v21++;
          strcat(v22, v23);
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      strcpy(__dst, v9);
    }
  }

  else
  {
    *__dst = 61;
  }

  return 0;
}

uint64_t statpos_fe_word(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    strcpy(__dst, **(*a2 + 160 * v6 + 48));
  }

  return 0;
}

uint64_t statpos_fe_cword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    v7 = *a2 + 160 * v6;
    v8 = *(v7 + 120);
    if (!v8)
    {
      v8 = **(v7 + 48);
    }

    strcpy(__dst, v8);
  }

  return 0;
}

uint64_t statpos_fe_token(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 >= 0 && v6 < *(a2 + 8) && (v7 = *(*(*a2 + 160 * v6 + 48) + 16)) != 0)
  {
    strcpy(__dst, v7);
  }

  else
  {
    *__dst = 61;
  }

  return 0;
}

uint64_t statpos_fe_ends_in_aposs(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v12 = "=";
    goto LABEL_13;
  }

  v8 = **(*a2 + 160 * v7 + 48);
  v9 = strlen(v8);
  if (v9 < 3)
  {
    goto LABEL_12;
  }

  v10 = &v8[v9];
  v11 = v8[v9 - 2];
  if (v11 != 39)
  {
    v13 = 39;
    goto LABEL_11;
  }

  v11 = *(v10 - 1);
  if (v11 != 115)
  {
    v13 = 115;
LABEL_11:
    if (v13 == v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = "0";
    goto LABEL_13;
  }

  if (*v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = "1";
LABEL_13:
  *a6 = *v12;
  return 0;
}

uint64_t statpos_fe_wrd_len(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    *a6 = 61;
  }

  else
  {
    v8 = Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * v7 + 48));
    sprintf(a6, "%d", v8 - 1);
  }

  return 0;
}

uint64_t statpos_fe_prefix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  if (a5 >= (Utf8_Utf8NbrOfSymbols(v9) - 1))
  {
    *a6 = 61;
  }

  else
  {
    v10 = Utf8_LengthInBytes(v9, a5);
    strncpy(a6, v9, v10);
    a6[v10] = 0;
  }

  return 0;
}

uint64_t statpos_fe_suffix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  v10 = (Utf8_Utf8NbrOfSymbols(v9) - 1);
  if (v10 <= a5)
  {
    *a6 = 61;
  }

  else
  {
    v11 = Utf8_LengthInBytes(v9, v10 - a5);
    strcpy(a6, &v9[v11]);
  }

  return 0;
}

uint64_t statpos_fe_fllw_by_punc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v14 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = &v9[v11], v13 = strlen(v12), _statpos_char_check(*(a3 + 168), v12, v13)))
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }
  }

  *a6 = *v14;
  return 0;
}

uint64_t statpos_fe_fllw_by_termpunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v14 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = &v9[v11], v13 = strlen(v12), _statpos_char_check(*(a3 + 176), v12, v13)))
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }
  }

  *a6 = *v14;
  return 0;
}

uint64_t statpos_fe_has_hyphen(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 48;
  v8 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v9 = Utf8_Utf8NbrOfSymbols(v8) - 1;
  if (v9 >= 2)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v8[v10]);
      if (_statpos_char_check(*(a3 + 160), &v8[v10], v11))
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 49;
  }

  return 0;
}

uint64_t statpos_fe_allupper(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 49;
  v7 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v8 = Utf8_Utf8NbrOfSymbols(v7);
  v9 = v8 - 1;
  if (v8 != 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v7[v10]);
      if (utf8_BelongsToSet(0x12u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x15u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x18u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x1Bu, v7, v10, v11) != 1 && utf8_BelongsToSet(0x1Eu, v7, v10, v11) != 1)
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 48;
  }

  return 0;
}

uint64_t statpos_fe_leadingcap(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v8 = *(*a2 + 160 * (a5 + a4) + 48);
  v9 = *v8;
  v10 = utf8_determineUTF8CharLength(**v8);
  if (a4 && ((v11 = v10, utf8_BelongsToSet(0x12u, v9, 0, v10) == 1) || utf8_BelongsToSet(0x15u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x18u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Bu, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Eu, v9, 0, v11) == 1))
  {
    v12 = "1";
  }

  else
  {
    v12 = "0";
  }

  *a6 = *v12;
  return 0;
}

uint64_t statpos_fe_single_char(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, __int16 *a6)
{
  if (Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * a4 + 160 * a5 + 48)) == 2)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  *a6 = v7;
  return 0;
}

uint64_t statpos_fe_contains_digit(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 48;
  v7 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v8 = Utf8_Utf8NbrOfSymbols(v7);
  v9 = v8 - 1;
  if (v8 != 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v7[v10]);
      if (utf8_BelongsToSet(6u, v7, v10, v11) == 1)
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 49;
  }

  return 0;
}

uint64_t statpos_fe_hphn_wrd(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v9 = *a2 + 160 * a4;
  v10 = *(v9 + 120);
  if (!v10)
  {
    v10 = **(v9 + 48);
  }

  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_20;
  }

  v26 = a5;
  __dst = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v11 - 1;
  do
  {
    v18 = utf8_determineUTF8CharLength(v10[v16]);
    if (v12 != 1)
    {
      v19 = _statpos_char_check(*(a3 + 160), &v10[v16], v18);
      v20 = v15 ? v15 : v16;
      if (v19)
      {
        v15 = v20;
        v14 = v18 + v16;
        v13 = 1;
      }
    }

    v16 += v18;
    --v17;
  }

  while (v17);
  a6 = __dst;
  if (v13 && v15)
  {
    if (v26 == -1)
    {
      v23 = strlen(v10);
      if (v23 - v14 > 0x10)
      {
        v23 = v14 + 16;
      }

      v24 = &v10[v14];
      v25 = v23 - v14;
      strncpy(__dst, v24, v23 - v14);
      __dst[v25] = 0;
    }

    else if (v26 == 1)
    {
      if (v15 >= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = v15;
      }

      strncpy(__dst, v10, v21);
      __dst[v21] = 0;
    }
  }

  else
  {
LABEL_20:
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_char(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _BYTE *a6)
{
  LOBYTE(v7) = a5;
  if (a5 <= 0)
  {
    v14 = -1;
    if (a5 && a4)
    {
      v15 = ~a4;
      v16 = 160 * (a4 - 1) + 48;
      do
      {
        LOBYTE(v7) = v7 + Utf8_Utf8NbrOfSymbols(**(*a2 + v16)) - 1;
        --v14;
        if ((v7 & 0x80) == 0)
        {
          break;
        }

        v16 -= 160;
      }

      while (v14 > v15);
    }

    v12 = v14 + ((v7 & 0x80) == 0);
  }

  else
  {
    v10 = 160 * a4 + 208;
    v11 = a4 + 1;
    v12 = 1;
    while (v11 < *(a2 + 8))
    {
      v13 = Utf8_Utf8NbrOfSymbols(**(*a2 + v10));
      v7 = (v7 - v13 + 1);
      ++v12;
      v10 += 160;
      ++v11;
      if (v7 <= 0)
      {
        --v12;
        LOBYTE(v7) = v13 + v7 - 2;
        break;
      }
    }
  }

  v17 = v12 + a4;
  if ((v12 + a4) < 0 || v17 >= *(a2 + 8))
  {
    *a6 = 61;
  }

  else
  {
    v18 = **(*a2 + 160 * v17 + 48);
    v19 = Utf8_LengthInBytes(v18, v7);
    v20 = strlen(v18) - v19;
    if (v20 >= Utf8_LengthInBytes(&v18[v19], 1))
    {
      utf8_getUTF8Char(v18, v19, a6);
    }
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _BYTE *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    utf8_getUTF8Char(v8, 0, a6);
  }

  else
  {
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), (Utf8_Utf8NbrOfSymbols(v8) - 1) < 3u))
  {
    *a6 = 61;
  }

  else
  {
    v9 = Utf8_LengthInBytes(v8, 2);
    strncpy(a6, v8, v9);
    a6[v9] = 0;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    v9 = strlen(v8);
    utf8_GetUtf8Symbol(v8, v9 - 1, v9, a6);
  }

  else
  {
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), v9 = (Utf8_Utf8NbrOfSymbols(v8) - 1), v9 < 3))
  {
    *a6 = 61;
  }

  else
  {
    v10 = Utf8_LengthInBytes(v8, v9 - 2);
    strcpy(a6, &v8[v10]);
  }

  return 0;
}

uint64_t statpos_fe_startofword(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = "1";
    if (v6 && *(*a2 + 160 * v6 - 140) != 1)
    {
      v7 = "0";
    }
  }

  *a6 = *v7;
  return 0;
}

uint64_t statpos_fe_fllw_by_sp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, __int16 *a6)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = 61;
  }

  else if (*(*a2 + 160 * v6 + 20) == 1)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  *a6 = v7;
  return 0;
}

uint64_t statpos_fe_fllw_by_anypunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v17 = "=";
  }

  else
  {
    v11 = **(*a2 + 160 * v7 + 48);
    v12 = Utf8_Utf8NbrOfSymbols(v11);
    v13 = Utf8_LengthInBytes(v11, v12 - 2);
    if (a4 + 1 == *(a2 + 8) || (v12 - 3) <= 0xFFFFFFFD && ((v14 = &v11[v13], v15 = strlen(v14), _statpos_char_check(*(a3 + 168), v14, v15)) || (v16 = strlen(v14), _statpos_char_check(*(a3 + 176), v14, v16))))
    {
      v17 = "1";
    }

    else
    {
      v17 = "0";
    }
  }

  *a6 = *v17;
  return 0;
}

uint64_t statpos_fe_cword_ambig(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    v7 = *a2 + 160 * v6;
    if (*(v7 + 72) == 1)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = **(v7 + 48);
    }

    strcpy(__dst, v8);
  }

  return 0;
}

char *statpos_getPOSTags(char *a1, const char **a2, unsigned __int16 *a3)
{
  v5 = a1;
  result = strchr(a1, 92);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    do
    {
      v9 = a2;
      v10 = v8;
      while (v10)
      {
        v11 = *v9++;
        --v10;
        if (!strncmp(v11, v5, v7 - v5))
        {
          goto LABEL_8;
        }
      }

      strncpy(a2[v8], v5, v7 - v5);
      a2[*a3][v7 - v5] = 0;
      v8 = *a3 + 1;
      *a3 = v8;
LABEL_8:
      v5 = v7 + 1;
      v7 = strchr(v7 + 1, 92);
    }

    while (v7);
  }

  else if (!v5)
  {
    return result;
  }

  v12 = *a3;
  v13 = a2;
  for (i = v12; i; --i)
  {
    v15 = *v13++;
    result = strcmp(v15, v5);
    if (!result)
    {
      return result;
    }
  }

  result = strcpy(a2[v12], v5);
  ++*a3;
  return result;
}

uint64_t statpunc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 1296);
  if (v5 < 2)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a1 + 1312);
  v12 = (v5 - 1);
  while (1)
  {
    v13 = v10;
    if (!strcmp(__s1, *(v11 + 8 * v10)))
    {
      break;
    }

    v10 = v13 + 1;
    if (v12 <= (v13 + 1))
    {
      return 0;
    }
  }

  if (!*a5)
  {
    result = 0;
    **(a4 + 8 * v13) = 95;
    return result;
  }

  if (strlen(a5) <= 0x40)
  {
    v16 = *(a4 + 8 * v13);
    goto LABEL_13;
  }

  v15 = strlen(a5);
  v16 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v13), v15 + 1);
  if (v16)
  {
    *(a4 + 8 * v13) = v16;
LABEL_13:
    strcpy(v16, a5);
    return 0;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0);
  return 2311069706;
}

uint64_t statpunc_initFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 8 * a4 - 8;
  while (1)
  {
    if (!*(a3 + v7))
    {
      v9 = heap_Calloc(*(a2 + 8), 1, 65);
      *(a3 + v7) = v9;
      if (!v9)
      {
        break;
      }
    }

    result = statpunc_setFeature(a1, a2, *(*(a1 + 1312) + v7), a3, "_");
    if ((result & 0x80000000) == 0)
    {
      v11 = v8 == v7;
      v7 += 8;
      if (!v11)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0);
  return 2311069706;
}

uint64_t statpunc_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, uint64_t a3, char *__src)
{
  v11 = *MEMORY[0x1E69E9840];
  strncpy(__dst, __src, 0x100uLL);
  __dst[255] = 0;
  if (*(a1 + 1296) >= 2u)
  {
    v7 = 0;
    do
    {
      v8 = strlen(*(a3 + 8 * v7));
      if (v8 + strlen(__dst) + 2 > 0xFF)
      {
        break;
      }

      __strcat_chk();
      __strcat_chk();
      ++v7;
    }

    while (*(a1 + 1296) - 1 > v7);
  }

  return log_OutText(*(a2 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", __dst);
}

uint64_t statpunc_getIgtreeBrkStr(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  *v8 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v8);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v9, "statpunc_");
    __strcat_chk();
    LODWORD(result) = brokeraux_ComposeBrokerString(a1, v9, 0, 1, *v8, 0, 0, a3, a4);
    if (result >= 0)
    {
      return result;
    }

    else
    {
      return result | 0x89C02000;
    }
  }

  return result;
}

uint64_t statpunc_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  *v19 = 0;
  IgtreeBrkStr = statpunc_getIgtreeBrkStr(a3, a4, v20, 0x100uLL);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  IgtreeBrkStr = ssftriff_reader_ObjOpen(a1, a2, 2, v20, "IGTR", 1031, v19);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v10 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v10;
  if (!v10)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN", 35000, 0);
    return 2311069706;
  }

  IgtreeBrkStr = igtree_Init(a1, a2, *v19, v10);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v11 = ssftriff_reader_ObjClose(*v19);
  if ((v11 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v12 = *(a5 + 8);
    v13 = *(v12 + 1336);
    if (v13)
    {
      v14 = 0;
      v15 = *(v12 + 1328);
      do
      {
        v16 = (v15 + 16 * v14);
        v17 = *v16;
        if (!strcmp(*v16, "leftcollocation"))
        {
          *(a5 + 16) = v16[1];
        }

        else if (!strcmp(v17, "rightcollocation"))
        {
          *(a5 + 24) = v16[1];
        }

        else if (!strcmp(v17, "dist2endmaxshort"))
        {
          *(a5 + 32) = atoi(v16[1]);
        }

        else if (!strcmp(v17, "dist2endminlong"))
        {
          *(a5 + 34) = atoi(v16[1]);
        }

        else if (!strcmp(v17, "punctuation"))
        {
          *(a5 + 40) = v16[1];
        }

        ++v14;
      }

      while (v13 > v14);
    }
  }

  return v11;
}

uint64_t statpunc_freeIGTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = igtree_Deinit(a1, a2);
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v4;
}

uint64_t bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v5 = a3 - 1;
  v6 = a3 - 1;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = strchr(__s, v8);
    if (v5 <= a2)
    {
      break;
    }

    v5 = v6;
  }

  while (v9);
  v11 = v6 + 1 == a2 && v9 != 0;
  return v7 == 32 || v11;
}

uint64_t statpunc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 && (v11 = strchr(*(a1 + 16), 124)) != 0)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      *v12 = 0;
      v14 = strstr(a3, v10);
      if (v14 && v14 < a4)
      {
        v13 = statpunc_setFeature(v9, a2, "collocation", a6, "left");
      }

      *v12 = 124;
      v10 = v12 + 1;
      v12 = strchr(v12 + 1, 124);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      do
      {
        *v17 = 0;
        if (strstr(a3, v15) > a4)
        {
          v13 = statpunc_setFeature(v9, a2, "collocation", a6, "right");
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = strchr(v17 + 1, 124);
      }

      while (v17);
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  v19 = *v18;
  if (strchr(*(a1 + 40), v19))
  {
    v20 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v19, 0xBuLL))
    {
      goto LABEL_30;
    }

    v20 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "lwordendchar", a6, v20);
LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

    ;
  }

  do
  {
    v23 = *i++;
    v22 = v23;
  }

  while (v23 == 32);
  if (strchr(*(a1 + 40), v22))
  {
    v24 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v22, 0xBuLL))
    {
      goto LABEL_40;
    }

    v24 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rwordbegchar", a6, v24);
LABEL_40:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v25 = *(a1 + 40);
  if (a4 > a3)
  {
    v26 = *(a4 - 1);
    if (strchr(*(a1 + 40), v26))
    {
      v27 = "punc";
    }

    else
    {
      if (!memchr("0123456789", v26, 0xBuLL))
      {
        goto LABEL_48;
      }

      v27 = "digit";
    }

    v13 = statpunc_setFeature(v9, a2, "lchar", a6, v27);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v25 = *(a1 + 40);
  }

LABEL_48:
  v28 = a4[1];
  if (strchr(v25, v28))
  {
    v29 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v28, 0xBuLL))
    {
      goto LABEL_54;
    }

    v29 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rchar", a6, v29);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v25 = *(a1 + 40);
LABEL_54:
  if (a4 == a3)
  {
    goto LABEL_60;
  }

  v30 = a4 - 1;
  v31 = a4 - 1;
  do
  {
    v32 = *v31--;
    v33 = strchr(v25, v32);
    if (v30 <= a3)
    {
      break;
    }

    v30 = v31;
  }

  while (v33);
  if (v31 + 1 == a3 && v33)
  {
LABEL_60:
    v34 = a4 + 1;
    v35 = "isolated";
    while (1)
    {
      v37 = *v34++;
      v36 = v37;
      if (!v37)
      {
        goto LABEL_80;
      }

      v38 = strchr(v25, v36);
      if (v36 != 32 && v38 == 0)
      {
        if (strcmp(a5, a1))
        {
          goto LABEL_81;
        }

        v13 = statpunc_setFeature(v9, a2, "sentpos", a6, "start");
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

        return v13;
      }
    }
  }

  v40 = a4 + 1;
  while (1)
  {
    v42 = *v40++;
    v41 = v42;
    if (!v42)
    {
      break;
    }

    v43 = strchr(v25, v41);
    if (v41 != 32 && v43 == 0)
    {
      goto LABEL_81;
    }
  }

  if (!strcmp(a5, (a1 + 4)))
  {
    v35 = "end";
LABEL_80:
    v13 = statpunc_setFeature(v9, a2, "sentpos", a6, v35);
  }

LABEL_81:
  v45 = *(a1 + 40);
  if (bstartword(v45, a3, a4))
  {
    v46 = 1;
    do
    {
      v47 = a4[v46];
      if (!a4[v46])
      {
        goto LABEL_101;
      }
    }

    while (strchr(v45, a4[v46++]));
    if ((v47 & 0xFFFFFFDF) == 0)
    {
LABEL_101:
      v57 = "pos";
      v58 = "isolated";
      goto LABEL_102;
    }

    if (!strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "pos", a6, "start");
      if ((v13 & 0x80000000) == 0)
      {
        v49 = strstr(a4 + 1, (a1 + 4));
        if (v49)
        {
          v50 = v49;
          v51 = *(a1 + 40);
          if (!bstartword(v51, a3, v49))
          {
            v52 = 1;
            while (1)
            {
              v53 = *(v50 + v52);
              if (!*(v50 + v52))
              {
                break;
              }

              if (!strchr(v51, *(v50 + v52++)))
              {
                if ((v53 & 0xFFFFFFDF) != 0)
                {
                  return v13;
                }

                break;
              }
            }

            if (v50 <= a4)
            {
              v55 = 0;
            }

            else
            {
              v55 = 0;
              do
              {
                if (*a4 == 32)
                {
                  ++v55;
                  do
                  {
                    v56 = *++a4;
                  }

                  while (v56 == 32);
                }

                ++a4;
              }

              while (a4 < v50);
            }

            if (*(a1 + 32) <= v55)
            {
              v57 = "dist2end";
              if (*(a1 + 34) <= v55)
              {
                v58 = "long";
              }

              else
              {
                v58 = "medium";
              }
            }

            else
            {
              v57 = "dist2end";
              v58 = "short";
            }

            goto LABEL_102;
          }
        }
      }
    }

    return v13;
  }

  v60 = a4 + 1;
  while (1)
  {
    v62 = *v60++;
    v61 = v62;
    if (!v62)
    {
      break;
    }

    if (!strchr(v45, v61))
    {
      if ((v61 & 0xFFFFFFDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (strcmp(a5, (a1 + 4)))
  {
    return v13;
  }

  v57 = "pos";
  v58 = "end";
LABEL_102:

  return statpunc_setFeature(v9, a2, v57, a6, v58);
}

uint64_t statpunc_insertMarker(uint64_t a1, unsigned int a2, char *a3, uint64_t *a4, unsigned __int16 *a5, uint64_t *a6, _WORD *a7, void *a8)
{
  v8 = a8;
  v11 = a5;
  v15 = a1;
  v16 = *(*a8 + 12);
  v17 = *a5;
  if ((((((-13107 * v17) & 0xFFFCu) >> 1) | (v17 << 15)) >> 1) < 0xCCDu)
  {
    v27 = heap_Realloc(*(a1 + 8), *a4, 8 * *a5 + 80);
    if (!v27 || (*a4 = v27, (v18 = heap_Realloc(*(v15 + 8), *a6, 20 * (*v11 / 0xAu + 1))) == 0))
    {
LABEL_36:
      v41 = 2311069706;
      v50 = *(v15 + 32);
LABEL_37:
      log_OutPublic(v50, "FE_PUNCSPTN", 33000, 0, v52);
      return v41;
    }

    v57 = a4;
    *a6 = v18;
    LOWORD(v17) = *v11;
  }

  else
  {
    v57 = a4;
    v18 = *a6;
  }

  *(v18 + 2 * v17) = a2;
  v19 = *a7;
  v56 = a7;
  if (!*a7)
  {
    LOWORD(v22) = 0;
    goto LABEL_34;
  }

  v52 = v15;
  v53 = v11;
  v54 = a3;
  v55 = v8;
  v20 = *v8;
  v21 = v20[3];
  if (v21 - v16 <= a2)
  {
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v28 = 0;
    v29 = v20;
    do
    {
      v30 = *v29;
      if (*v29 == 1)
      {
        LOWORD(v22) = v28;
      }

      if (v30 == 1)
      {
        v24 = v21;
      }

      if (v30 == 51)
      {
        v31 = *(v29 + 3);
        v32 = strstr(v31, "PUNC");
        v26 = !v32 || v32 != v31 && *(v32 - 1) == 95;
        v23 = v28;
        v25 = v21;
      }

      else
      {
        v26 = 1;
      }

      if (v19 <= ++v28)
      {
        break;
      }

      v21 = v20[8 * v28 + 3];
      v29 += 8;
    }

    while (v21 - v16 <= a2);
  }

  else
  {
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  v11 = v53;
  if (!v23)
  {
    a3 = v54;
    v8 = v55;
    v15 = v52;
    goto LABEL_34;
  }

  v33 = v24 == v25;
  a3 = v54;
  v8 = v55;
  v15 = v52;
  if (!v33)
  {
LABEL_34:
    v22 = v22;
    v42 = v22 + 1;
    memmove((*v8 + 32 * v22 + 64), (*v8 + 32 * v42), 32 * (v19 + ~v22));
    v43 = *v8;
    v44 = *v8 + 32 * v42;
    *v44 = 51;
    v45 = &v43[8 * v22];
    *(v44 + 4) = *(v45 + 1);
    *(v44 + 12) = v45[3];
    v46 = strlen(a3);
    *(*v8 + 32 * v42 + 24) = heap_Alloc(*(v15 + 8), (v46 + 1));
    v47 = *(*v8 + 32 * v42 + 24);
    if (v47)
    {
      v48 = *v57;
      v49 = *v11;
      *v11 = v49 + 1;
      *(v48 + 8 * v49) = v47;
      strcpy(*(*v8 + 32 * v42 + 24), a3);
      v41 = 0;
      ++*v56;
      return v41;
    }

    goto LABEL_36;
  }

  if (!v26 && !strstr(v54, "S_PUNC") && !strstr(v54, "E_PUNC"))
  {
    return 0;
  }

  v34 = strlen(v54);
  v35 = strlen(*(*v55 + 32 * v23 + 24));
  v36 = heap_Alloc(*(v52 + 8), (v34 + v35 + 2));
  if (!v36)
  {
    v41 = 2311069706;
    v50 = *(v52 + 32);
    goto LABEL_37;
  }

  v37 = v36;
  v38 = *v57;
  v39 = *v53;
  *v53 = v39 + 1;
  *(v38 + 8 * v39) = v36;
  v40 = strcpy(v36, *(*v55 + 32 * v23 + 24));
  *&v37[strlen(v40)] = 59;
  strcat(v37, v54);
  v41 = 0;
  *(*v55 + 32 * v23 + 24) = v37;
  return v41;
}

char *statpunc_Strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = strstr(a1, a2);
  result = strstr(a1, a3);
  if (v8)
  {
    if (v8 <= result)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (v8 <= result)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (result)
    {
      a3 = v10;
    }

    else
    {
      a3 = a2;
    }

    if (result)
    {
      result = v11;
    }

    else
    {
      result = v8;
    }
  }

  else if (!result)
  {
    return result;
  }

  *a4 = a3;
  return result;
}

uint64_t statpunc_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v10 = a4;
  v11 = a2;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v81 = 0;
  __src = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v13 = (*(a2 + 104))(a3, a4, 1, 0, &v87);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v14 = 0;
  if (((*(v11 + 184))(a3, v10, v87, 0, &v87 + 2) & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  if (HIWORD(v87) != 1)
  {
    goto LABEL_59;
  }

  v13 = (*(v11 + 176))(a3, v10, v87, 0, &v85, &v86 + 2);
  v14 = 0;
  if ((v13 & 0x80000000) != 0 || HIWORD(v86) < 2u)
  {
    goto LABEL_59;
  }

  v13 = (*(v11 + 176))(a3, v10, v87, 1, &__src, &v80 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v73 = *(__src + 3);
  v15 = statpunc_Strpunc(v85, a5, (a5 + 4), &v83);
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = 0;
  do
  {
    ++v16;
    v15 = statpunc_Strpunc(v15 + 1, a5, (a5 + 4), &v83);
  }

  while (v15);
  if (!v16)
  {
LABEL_58:
    v14 = 0;
    goto LABEL_59;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 32 * (HIWORD(v80) + v16));
  v81 = v17;
  if (!v17)
  {
LABEL_57:
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_58;
  }

  v74 = a7;
  memcpy(v17, __src, 32 * HIWORD(v80));
  v18 = v85;
  v19 = statpunc_Strpunc(v85, a5, (a5 + 4), &v83);
  v69 = v11;
  if (!v19)
  {
    v64 = 0;
LABEL_66:
    v39 = strlen(v18);
    v40 = heap_Calloc(*(a1 + 8), 1, (v39 + 1));
    v14 = v40;
    if (v40)
    {
      strcpy(v40, v85);
      v41 = v69;
      if (v8 && v80)
      {
        v76 = 0;
        v72 = 0;
        v8 = v8;
        v42 = v74;
        v67 = v10;
        v68 = a1;
        v66 = v8;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            v44 = (v42 + (i << 9));
            if (!strcmp(v79[v76], v44))
            {
              v45 = strlen(v44 + 256);
              v46 = strlen(v14);
              v47 = heap_Realloc(*(a1 + 8), v14, v45 + v46 + 1);
              if (!v47)
              {
                goto LABEL_92;
              }

              v48 = v47;
              v49 = v78;
              v50 = *(v78 + 2 * v76);
              v51 = v50 + v72;
              v70 = &v47[v51];
              v71 = v51 + v45;
              v52 = strlen(v47);
              v53 = v50 + v72;
              v10 = v67;
              memmove(&v48[v71], v70 + 1, v52 - v53);
              memcpy(&v48[*(v49 + 2 * v76) + v72], v44 + 256, v45);
              v54 = HIWORD(v80);
              v41 = v69;
              v42 = v74;
              if (HIWORD(v80))
              {
                v55 = *(v49 + 2 * v76) + v72;
                v56 = v81 + 12;
                do
                {
                  if (v55 < (*v56 - v73))
                  {
                    *v56 += v45 - 1;
                  }

                  v56 += 8;
                  --v54;
                }

                while (v54);
              }

              v72 = v72 + v45 - 1;
              v14 = v48;
              a1 = v68;
              v8 = v66;
            }

            else
            {
              v42 = v74;
            }
          }

          ++v76;
        }

        while (v76 < v80);
      }

      v57 = (*(v41 + 160))(a3, v10, v87, 1, HIWORD(v80), v81, &v86);
      if ((v57 & 0x80000000) != 0)
      {
        v13 = v57;
      }

      else
      {
        v58 = strlen(v14);
        v13 = (*(v41 + 160))(a3, v10, v87, 0, (v58 + 1), v14, &v86);
        if ((v13 & 0x80000000) == 0)
        {
          v59 = v80;
          v30 = v64;
          if (v80)
          {
            v60 = v79;
            do
            {
              v61 = *v60++;
              heap_Free(*(a1 + 8), v61);
              --v59;
            }

            while (v59);
          }

          if (v78)
          {
            heap_Free(*(a1 + 8), v78);
          }

          if (v79)
          {
            heap_Free(*(a1 + 8), v79);
            if (v64)
            {
              goto LABEL_95;
            }

            goto LABEL_59;
          }

          goto LABEL_94;
        }
      }
    }

    else
    {
LABEL_92:
      v13 = 2311069706;
      log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0);
    }

LABEL_93:
    v30 = v64;
LABEL_94:
    if (v30)
    {
      goto LABEL_95;
    }

    goto LABEL_59;
  }

  v20 = v19;
  v21 = 0;
  v64 = 0;
  while (1)
  {
    v22 = v85;
    v89 = 0;
    v90[0] = 0;
    v88 = 0;
    v23 = (*(v11 + 104))(a3, v10, 3, v87, &v89 + 2);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_64;
    }

    v75 = v21;
    v24 = HIWORD(v89);
    if (HIWORD(v89))
    {
      v25 = 0;
      v26 = (v20 - v22);
      while (1)
      {
        v23 = (*(v11 + 168))(a3, v10, v24, 0, 1, v90, &v89);
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        v23 = (*(v11 + 168))(a3, v10, HIWORD(v89), 1, 1, &v88 + 2, &v89);
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        v23 = (*(v11 + 168))(a3, v10, HIWORD(v89), 2, 1, &v88, &v89);
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        if (v88 > v26 && HIWORD(v88) <= v26 && (v90[0] & 0xFFFFFFFD) == 4)
        {
          v25 = 1;
        }

        v29 = (*(v11 + 120))(a3, v10, HIWORD(v89), &v89 + 2);
        v13 = v29;
        if ((v29 & 0x80000000) == 0)
        {
          v24 = HIWORD(v89);
          if (HIWORD(v89))
          {
            continue;
          }
        }

        v30 = v64;
        if ((v29 & 0x80000000) == 0)
        {
          if (v25)
          {
            goto LABEL_54;
          }

          goto LABEL_35;
        }

        v14 = 0;
        if (v64)
        {
          goto LABEL_95;
        }

        goto LABEL_59;
      }

LABEL_64:
      v13 = v23;
      v14 = 0;
      goto LABEL_93;
    }

    v30 = v64;
LABEL_35:
    if (!v30)
    {
      log_OutText(*(a1 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v85);
      v30 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a5 + 8) + 1296) - 8);
      if (!v30)
      {
        goto LABEL_57;
      }
    }

    inited = statpunc_initFeatureVector(*(a5 + 8), a1, v30, (*(*(a5 + 8) + 1296) - 1));
    if ((inited & 0x80000000) != 0 || (inited = statpunc_extractFeatures(a5, a1, v85, v20, v83, v30), (inited & 0x80000000) != 0) || (v21 = v75) != 0 && (inited = statpunc_setFeature(*(a5 + 8), a1, "startpred", v30, v75), (inited & 0x80000000) != 0) || (inited = igtree_Process(*(a5 + 8), v30, &v84), (inited & 0x80000000) != 0))
    {
      v13 = inited;
      v14 = 0;
      goto LABEL_95;
    }

    if (!strcmp(*v30, "start"))
    {
      v21 = v84;
    }

    statpunc_dumpFeatureVectorAndResult(*(a5 + 8), a1, v30, v84);
    v32 = v84;
    if (!strstr(v84, "IGNORE"))
    {
      break;
    }

LABEL_55:
    v64 = v30;
    v20 = statpunc_Strpunc(v20 + 1, a5, (a5 + 4), &v83);
    if (!v20)
    {
      v18 = v85;
      goto LABEL_66;
    }
  }

  v75 = v21;
  v65 = v30;
  v33 = v85;
  v34 = v20 - v85;
  if (!strstr(v32, "S_PUNC"))
  {
    v35 = v34;
    if (v34)
    {
      while (1)
      {
        v36 = v33[v35 - 1];
        if (v36 != 32 && !strchr(*(a5 + 40), v36))
        {
          break;
        }

        if (!--v35)
        {
          v34 = 0;
          goto LABEL_52;
        }
      }

      v34 = v35;
    }
  }

LABEL_52:
  inserted = statpunc_insertMarker(a1, v34, v32, &v79, &v80, &v78, &v80 + 1, &v81);
  if ((inserted & 0x80000000) == 0)
  {
    v30 = v65;
    v11 = v69;
LABEL_54:
    v21 = v75;
    goto LABEL_55;
  }

  v13 = inserted;
  v14 = 0;
  v30 = v65;
LABEL_95:
  if (*(*(a5 + 8) + 1296) != 1)
  {
    v62 = (*(*(a5 + 8) + 1296) - 1);
    v63 = v30;
    do
    {
      if (*v63)
      {
        heap_Free(*(a1 + 8), *v63);
      }

      ++v63;
      --v62;
    }

    while (v62);
  }

  heap_Free(*(a1 + 8), v30);
LABEL_59:
  if (v81)
  {
    heap_Free(*(a1 + 8), v81);
  }

  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  return v13;
}

uint64_t fe_puncsptn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v5 = 2311069703;
  v17 = 0;
  v18 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v20[6], "LINGDB", &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v20[6], "FE_DEPES", &v18);
  v11 = v20[6];
  if ((Object & 0x80000000) != 0)
  {
LABEL_11:
    objc_ReleaseObject(v11, "LINGDB");
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v17);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(v20[6], "FE_DEPES");
    v11 = v20[6];
    goto LABEL_11;
  }

  v13 = heap_Alloc(v20[1], 168);
  if (v13)
  {
    *(v13 + 160) = 0;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *a5 = v13;
    *(a5 + 8) = 62339;
    *v13 = v20;
    *(v13 + 8) = a3;
    *(v13 + 16) = a4;
    *(v13 + 24) = *(v19 + 8);
    v14 = v17;
    v15 = v18;
    *(v13 + 48) = *(v18 + 8);
    *(v13 + 32) = *(v15 + 16);
    *(v13 + 72) = *(v14 + 8);
    *(v13 + 56) = *(v14 + 16);
    *(v13 + 112) = 0;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    v5 = hlp_open(v13);
    if ((v5 & 0x80000000) != 0)
    {
      fe_puncsptn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    log_OutPublic(v20[4], "FE_PUNCSPTN", 33000, 0);
    objc_ReleaseObject(v20[6], "LINGDB");
    objc_ReleaseObject(v20[6], "FE_DEPES");
    objc_ReleaseObject(v20[6], "FE_DCTLKP");
    return 2311069706;
  }

  return v5;
}

uint64_t hlp_open(void *a1)
{
  v1 = 2311069706;
  v36 = 0;
  v33 = -1;
  v32 = 0;
  if (!a1)
  {
    return 2311069702;
  }

  v34 = 0;
  v35 = 0;
  v3 = (*(a1[9] + 88))(a1[7], a1[8], &v36 + 4, &v36);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v5 = v36 == 1 && HIDWORD(v36) == 1;
  a1[15] = 0;
  *(a1 + 29) = v5;
  if ((paramc_ParamGet(*(*a1 + 40), "fecfg", &v35, 0) & 0x80000000) == 0 && (!LH_stricmp(v35, "mpthree") || !LH_stricmp(v35, "vadvde")))
  {
    *(a1 + 30) = 1;
  }

  v33 = -1;
  v3 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "puncsptneos", &v34, &v33, &v32);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (v33 == 1 && v34 && **v34 == 49)
  {
    *(a1 + 31) = 1;
  }

  LOBYTE(v39) = 0;
  LOWORD(__s1) = -1;
  v6 = a1[16];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  v40 = 0;
  a1[16] = 0;
  v7 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "esctn", &v40, &__s1, &v39);
  IGTree = v7;
  if ((v7 & 0x80000000) != 0 || !__s1)
  {
    if ((v7 & 0x80000000) != 0)
    {
      return IGTree;
    }
  }

  else
  {
    v9 = strlen(*v40);
    v10 = heap_Calloc(*(*a1 + 8), 1, (v9 + 1));
    a1[16] = v10;
    if (!v10)
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0);
      return 2311069706;
    }

    strcpy(v10, *v40);
    *(a1[16] + strlen(*v40) - 1) = 124;
  }

  v39 = 0;
  v40 = 0;
  v38 = 0;
  v11 = a1[17];
  if (*(a1 + 72))
  {
    v12 = 0;
    v13 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v11 + v13));
      v11 = a1[17];
      *(v11 + v13) = 0;
      ++v12;
      v13 += 48;
    }

    while (v12 < *(a1 + 72));
  }

  else if (!v11)
  {
    goto LABEL_33;
  }

  heap_Free(*(*a1 + 8), v11);
LABEL_33:
  a1[17] = 0;
  *(a1 + 72) = 0;
  IGTree = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpunc", &v40, &v39, &v38);
  if ((IGTree & 0x80000000) == 0 && v39)
  {
    __s1 = 0;
    paramc_ParamGetStr(*(*a1 + 40), "fevoice", &__s1);
    v14 = heap_Alloc(*(*a1 + 8), 48 * v39);
    a1[17] = v14;
    if (!v14)
    {
      goto LABEL_63;
    }

    if (v39)
    {
      for (i = 0; i < v39; ++i)
      {
        if (__s1)
        {
          v16 = strstr(__s1, "uni");
          v17 = v40;
          if (v16)
          {
            v18 = v40[i];
LABEL_43:
            v19 = strchr(v18, 124);
            if (v19)
            {
              *v19 = 0;
              v20 = v19 + 1;
              __strcpy_chk();
              v21 = strchr(v20, 124);
              if (v21)
              {
                *v21 = 0;
                v22 = v21 + 1;
                __strcpy_chk();
                v23 = strchr(v22, 124);
                if (v23)
                {
                  *v23 = 0;
                  IGTree = statpunc_readIGTree(a1[1], a1[2], *a1, v22, a1[17] + 48 * *(a1 + 72));
                  if ((IGTree & 0x80000000) != 0)
                  {
                    return IGTree;
                  }

                  ++*(a1 + 72);
                }
              }
            }

            continue;
          }
        }

        else
        {
          v17 = v40;
        }

        v18 = v17[i];
        if (!strstr(v18, "extended"))
        {
          goto LABEL_43;
        }
      }
    }
  }

  if ((IGTree & 0x80000000) == 0)
  {
    LOBYTE(v39) = 0;
    LOWORD(__s1) = 0;
    v24 = a1[19];
    if (v24)
    {
      heap_Free(*(*a1 + 8), v24);
    }

    v40 = 0;
    a1[19] = 0;
    *(a1 + 80) = 0;
    v25 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpuncorthmap", &v40, &__s1, &v39);
    if ((v25 & 0x80000000) != 0 || !__s1)
    {
      return v25;
    }

    v26 = heap_Alloc(*(*a1 + 8), __s1 << 9);
    a1[19] = v26;
    if (v26)
    {
      if (__s1)
      {
        v27 = 0;
        do
        {
          v28 = strchr(v40[v27], 124);
          if (v28)
          {
            *v28 = 0;
            v29 = v28 + 1;
            __strcpy_chk();
            v30 = strchr(v29, 124);
            if (v30)
            {
              *v30 = 0;
              strcpy((a1[19] + (*(a1 + 80) << 9) + 256), v29);
              ++*(a1 + 80);
            }
          }

          ++v27;
        }

        while (v27 < __s1);
      }

      return v25;
    }

LABEL_63:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0);
    return v1;
  }

  return IGTree;
}

uint64_t fe_puncsptn_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 168);
  if ((result & 0x80000000) != 0)
  {
    return 2311069704;
  }

  if (!a1)
  {
    return result;
  }

  v4 = a1[13];
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  a1[13] = 0;
  v5 = a1[10];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  a1[10] = 0;
  v6 = a1[11];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  a1[11] = 0;
  v7 = a1[12];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  a1[12] = 0;
  v8 = a1[16];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[16] = 0;
  v9 = a1[17];
  if (*(a1 + 72))
  {
    v10 = 0;
    v11 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v9 + v11));
      v9 = a1[17];
      *(v9 + v11) = 0;
      ++v10;
      v11 += 48;
    }

    while (v10 < *(a1 + 72));
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_19:
    heap_Free(*(*a1 + 8), v9);
    a1[17] = 0;
  }

  v12 = a1[19];
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
    a1[19] = 0;
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_puncsptn_ObjReopen(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  return hlp_open(a1);
}

uint64_t fe_puncsptn_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v85 = 0;
  v84 = 0;
  __s1 = 0;
  v80 = 0;
  v78 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v83 = 0;
  v81 = 0;
  v79 = 0;
  *a5 = 1;
  v9 = *(a1 + 24);
  LOWORD(v77) = 0;
  v92 = 0;
  v91 = 0;
  *__src = 0;
  updated = (*(v9 + 104))(a3, a4, 1, 0, &v92 + 2);
  if ((updated & 0x80000000) != 0)
  {
    return updated;
  }

  v11 = (*(v9 + 184))(a3, a4, HIWORD(v92), 0, &v91);
  if ((v11 & 0x80000000) == 0 && v91 == 1)
  {
    v11 = (*(v9 + 104))(a3, a4, 3, HIWORD(v92), &v92);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v92;
      if (v92)
      {
        v13 = 0;
        while (1)
        {
          updated = (*(v9 + 168))(a3, a4, v12, 0, 1, __src, &v77);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (*__src > 3u)
          {
            v14 = v92;
          }

          else
          {
            updated = (*(v9 + 192))(a3, a4, v92);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v92) = v13;
            v14 = v13;
          }

          if (v14)
          {
            updated = (*(v9 + 120))(a3, a4, v14, &v92);
            v13 = v14;
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          else
          {
            updated = (*(v9 + 104))(a3, a4, 3, HIWORD(v92), &v92);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v12 = v92;
          if (!v92)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

LABEL_21:
  if (*(a1 + 144))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      updated = statpunc_Process(*a1, *(a1 + 24), a3, a4, *(a1 + 136) + v15, *(a1 + 160), *(a1 + 152));
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      ++v16;
      v15 += 48;
    }

    while (v16 < *(a1 + 144));
  }

  v11 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v89 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v89), 0, &v78) & 0x80000000) == 0 && v78 == 1)
  {
    v11 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v89), 0, &v90, &v88);
    if ((v11 & 0x80000000) == 0 && v88 >= 2u)
    {
      v17 = (a1 + 104);
      v18 = strlen(v90);
      v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (v18 + 101));
      if (!v19)
      {
        log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
        return 2311069706;
      }

      *(a1 + 104) = v19;
      strcpy(v19, v90);
      updated = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v89), 1, &v81, &v80);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v20 = (v81 + 12);
      v21 = *(v81 + 12);
      *(a1 + 112) = 0;
      v22 = v80;
      if (v80)
      {
        v23 = 0;
        while (1)
        {
          v24 = *v20;
          v20 += 8;
          if (v24 != v21)
          {
            break;
          }

          if (v80 == ++v23)
          {
            goto LABEL_39;
          }
        }

        v22 = v23;
      }

LABEL_39:
      HIWORD(v92) = v22;
      updated = (*(*(a1 + 48) + 112))(*(a1 + 32), *(a1 + 40), &v79, 0);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      __src[0] = 0;
      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v89), &v89);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v25 = v89;
      if (v89)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          updated = (*(*(a1 + 24) + 168))(a3, a4, v25, 0, 1, &v83, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v89, 1, 1, &v85, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v89, 2, 1, &v84, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v83 == 5)
          {
            if (v85 <= v26 || (v28 = __src[0], v85 >= __src[0]))
            {
              v32 = 0;
              v27 = v89;
            }

            else
            {
              v29 = v27;
              v30 = v84;
              v75 = v29;
              v31 = (*(*(a1 + 24) + 160))(a3, a4, v29, 2, 1, __src, &v87);
              v11 = v31;
              if (v30 > v28)
              {
                if ((v31 & 0x80000000) != 0)
                {
                  return v11;
                }

                updated = (*(*(a1 + 24) + 160))(a3, a4, v89, 1, 1, __src, &v87);
                v27 = v75;
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

LABEL_56:
                v32 = 0;
                goto LABEL_57;
              }

              if ((v31 & 0x80000000) != 0)
              {
                return v11;
              }

              v32 = v89;
              v27 = v75;
            }
          }

          else
          {
            if ((v83 & 0xFFFFFFFD) != 4)
            {
              goto LABEL_56;
            }

            v32 = 0;
            v26 = v85;
            __src[0] = v84;
          }

LABEL_57:
          updated = (*(*(a1 + 24) + 120))(a3, a4, v89, &v89);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v32)
          {
            updated = (*(*(a1 + 24) + 192))(a3, a4, v32);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v25 = v89;
        }

        while (v89);
      }

      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v89), &v89);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v86 = v89;
      v33 = v89;
      if (!v89)
      {
        goto LABEL_81;
      }

      while (1)
      {
        updated = (*(*(a1 + 24) + 168))(a3, a4, v33, 0, 1, &v83, &v88);
        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

        v34 = *(a1 + 24);
        if (v83 == 5)
        {
          updated = (*(v34 + 168))(a3, a4, v86, 1, 1, &v85, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v86, 2, 1, &v84, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 176))(a3, a4, v86, 4, &__s1, &v88);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v84 >= v85)
          {
            updated = hlp_Normalize(a1, (a1 + 104), v90, v85, v84, __s1, a3, a4, &v89, v81, &v92 + 1, &v80, v21);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v86 = v89;
            goto LABEL_78;
          }

          updated = (*(*(a1 + 24) + 120))(a3, a4, v86, &v86);
        }

        else
        {
          updated = (*(v34 + 120))(a3, a4, v86, &v86);
        }

        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

LABEL_78:
        if (v89)
        {
          v33 = v86;
          if (v86)
          {
            continue;
          }
        }

        v22 = HIWORD(v92);
LABEL_81:
        v35 = v80;
        if (v22 < v80)
        {
          v36 = strlen(*v17);
          v37 = 0;
          v38 = v21 + v36;
          v39 = v80 - v22;
          v40 = vdupq_n_s64(v39 - 1);
          v41 = (v39 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v42 = (v81 + 32 * v22 + 76);
          do
          {
            v43 = vdupq_n_s64(v37);
            v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1C378AF00)));
            if (vuzp1_s16(v44, *v40.i8).u8[0])
            {
              *(v42 - 16) = v38;
            }

            if (vuzp1_s16(v44, *&v40).i8[2])
            {
              *(v42 - 8) = v38;
            }

            if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1C378AEF0)))).i32[1])
            {
              *v42 = v38;
              v42[8] = v38;
            }

            v37 += 4;
            v42 += 32;
          }

          while (v41 != v37);
          LOWORD(v22) = v35;
        }

        HIWORD(v92) = v22;
        updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v89), &v89);
        if ((updated & 0x80000000) == 0)
        {
          for (i = v89; v89; i = v89)
          {
            updated = (*(*(a1 + 24) + 168))(a3, a4, i, 0, 1, &v83, &v88);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v46 = v89;
            if (v83 != 5)
            {
LABEL_130:
              v58 = 0;
              goto LABEL_131;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v89, 1, 1, &v85, &v88);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v89, 2, 1, &v84, &v88);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v47 = v85;
            if (v85)
            {
              v48 = *v17;
              if (v85 < strlen(*v17))
              {
                do
                {
                  v49 = v48[v47 - 1];
                  if (v49 == 32)
                  {
                    break;
                  }

                  if (v49 == 95)
                  {
                    break;
                  }

                  v85 = ++v47;
                }

                while (v47 < strlen(v48));
              }
            }

            v50 = v84;
            if (v84)
            {
              v51 = *v17;
              if (v84 < strlen(*v17))
              {
                do
                {
                  v52 = v51[v50 - 1];
                  if (v52 == 32)
                  {
                    break;
                  }

                  if (v52 == 95)
                  {
                    break;
                  }

                  v84 = ++v50;
                }

                while (v50 < strlen(v51));
              }

              if (v50 < strlen(v51) && (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), &v51[v50]))
              {
                v53 = v84;
                LOWORD(v92) = 0;
                v77 = 0;
                updated = (*(*(a1 + 24) + 120))(a3, a4, v89, &v92);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (!v92)
                {
                  v77 = 2;
LABEL_119:
                  v54 = strlen(*v17);
                  Utf8Symbol = utf8_GetUtf8Symbol(*v17, v84, v54, __src);
                  do
                  {
                    v56 = v53--;
                  }

                  while (v53 && (*v17)[v53] == 32);
                  if (v84 > v56)
                  {
                    v57 = Utf8Symbol;
                    memmove(&(*v17)[v56 + Utf8Symbol], &(*v17)[v56], v84 - v56);
                    strncpy(&(*v17)[v56], __src, v57);
                  }

                  goto LABEL_124;
                }

                updated = (*(*(a1 + 24) + 168))(a3, a4);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v77 != 5)
                {
                  goto LABEL_119;
                }

                updated = (*(*(a1 + 24) + 176))(a3, a4, v92, 4, &__s1, &v88);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v77 != 5 || !__s1 || strcmp(__s1, "phon"))
                {
                  goto LABEL_119;
                }
              }
            }

LABEL_124:
            updated = (*(*(a1 + 24) + 160))(a3, a4, v89, 1, 1, &v85, &v87);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 160))(a3, a4, v89, 2, 1, &v84, &v87);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v46 = v89;
            if (v83 != 5)
            {
              goto LABEL_130;
            }

            if (v85 == v84)
            {
              v58 = v89;
            }

            else
            {
              v58 = 0;
            }

LABEL_131:
            updated = (*(*(a1 + 24) + 120))(a3, a4, v46, &v89);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v58)
            {
              updated = (*(*(a1 + 24) + 192))(a3, a4, v58);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }
          }

          if (*(a1 + 116) != 1 || (updated = updateTokenDomainLanguageTags(a1, a3, a4, HIWORD(v89), *(a1 + 104)), (updated & 0x80000000) == 0))
          {
            hlp_AdjustMarkersToWordBoundaries(*(a1 + 104), v81, v80);
            hlp_AdjustUserTnToWordBoundaries(*(a1 + 104), a3, a4, *(a1 + 24));
            v59 = *(a1 + 104);
            if (strlen(v59))
            {
              v60 = 0;
              v61 = 1;
              v62 = 1;
              while (1)
              {
                v63 = v61 - 1;
                v64 = v59[v63];
                if (v64 == 44)
                {
                  if (v59[v62] != 44)
                  {
                    goto LABEL_157;
                  }

                  v59[v62] = 32;
                  v59 = *v17;
                  v64 = (*v17)[v63];
                }

                if (v64 && v64 != 95 && v64 != 32 || v62 != 1 && v62 != strlen(v59) && (v66 = v59[v62], v59[v62]) && v66 != 95 && v66 != 32)
                {
LABEL_157:
                  ++v62;
                  goto LABEL_158;
                }

                if (v62 != strlen(v59))
                {
                  if (v64 == 32 && v59[v62] == 95)
                  {
                    v59[v62] = 32;
                    v59 = *v17;
                  }

                  v65 = strlen(v59);
                  memmove(&v59[v62 - 1], &v59[v62], v65 - v62);
                  v59 = *v17;
                }

                v59[strlen(v59) - 1] = 0;
                updated = hlp_UpdateLingDBTokensForDeletion(a3, a4, *(a1 + 24), v63);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                hlp_UpdateMarkersForDeletion(v81, v80, v63);
                --v60;
                v59 = *v17;
LABEL_158:
                v61 = v62;
                if (v62 > strlen(v59))
                {
                  goto LABEL_161;
                }
              }
            }

            v60 = 0;
LABEL_161:
            v67 = *(a1 + 112) + v60;
            *(a1 + 112) = v67;
            v79 += v67;
            updated = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40));
            if ((updated & 0x80000000) == 0)
            {
              v68 = *(a1 + 104);
              *(v81 + 16) = strlen(v68);
              log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Space normalization: |%s|", v68);
              hlp_AdjustPuncMarkers(*(a1 + 104), v81, v80);
              v69 = strlen(*(a1 + 104));
              v11 = (*(*(a1 + 24) + 160))(a3, a4, HIWORD(v89), 0, (v69 + 1), *(a1 + 104), &v87);
              if ((v11 & 0x80000000) == 0)
              {
                v78 = 0;
                if (((*(*(a1 + 24) + 152))(a3, a4, 3, HIWORD(v89), &v78) & 0x80000000) == 0)
                {
                  if (v78)
                  {
                    v11 = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v89), &v89);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v70 = v89;
                      if (v89)
                      {
                        v71 = 0;
                        while (1)
                        {
                          updated = (*(*(a1 + 24) + 168))(a3, a4, v70, 0, 1, &v83, &v88);
                          if ((updated & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v83 == 4)
                          {
                            updated = (*(*(a1 + 24) + 192))(a3, a4, v89);
                            if ((updated & 0x80000000) != 0)
                            {
                              return updated;
                            }

                            LOWORD(v89) = v71;
                            v72 = v71;
                          }

                          else
                          {
                            v72 = v89;
                          }

                          v73 = *(a1 + 24);
                          if (v72)
                          {
                            v11 = (*(v73 + 120))(a3, a4, v72, &v89);
                            v71 = v72;
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          else
                          {
                            v11 = (*(v73 + 104))(a3, a4, 3, HIWORD(v89), &v89);
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          v70 = v89;
                          if (!v89)
                          {
                            return v11;
                          }
                        }

                        return updated;
                      }
                    }
                  }
                }
              }

              return v11;
            }
          }
        }

        return updated;
      }
    }
  }

  return v11;
}

uint64_t hlp_Normalize(uint64_t a1, const char **a2, const char *a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, _WORD *a11, unsigned __int16 *a12, int a13)
{
  v16 = a4;
  v17 = a2;
  v236 = *MEMORY[0x1E69E9840];
  v234 = 0;
  v233 = a4;
  v232 = a4;
  v230 = 0;
  v226 = 0;
  v225 = *a9;
  v224 = a4;
  v19 = strlen(*a2);
  v222 = 0;
  v20 = a5 - v16;
  v220 = 0;
  v221 = 0;
  v219 = 0;
  strcpy(__s, "disambiguate_punctuation");
  v215 = strlen(__s);
  v21 = (a5 - v16 + 129);
  v22 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v21);
  if (!v22)
  {
    goto LABEL_109;
  }

  *(a1 + 80) = v22;
  *v22 = 0;
  v23 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v21);
  if (!v23)
  {
    goto LABEL_109;
  }

  *(a1 + 88) = v23;
  *v23 = 0;
  v24 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v21);
  if (!v24)
  {
    goto LABEL_109;
  }

  __s1 = a6;
  v213 = a8;
  v207 = v19;
  v214 = a5;
  v25 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v227 = 0;
  v223 = 0;
  *(a1 + 96) = v24;
  v26 = 128;
  v27 = *a9;
  if (!*a9)
  {
    v28 = v16;
    v29 = 0;
    v30 = 0;
    goto LABEL_53;
  }

  v28 = v16;
  v29 = 0;
  v30 = 0;
  if (v214 > v16)
  {
    v210 = v17;
    v31 = 0;
    v25 = 0;
    v208 = v20 + 1;
    v209 = 1;
    v28 = v16;
    v32 = v214;
    v33 = v213;
    v34 = a7;
    while (1)
    {
      v35 = (*(*(a1 + 24) + 168))(v34, v33, v27, 0, 1, &v230, &v234);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      v30 = (*(*(a1 + 24) + 168))(v34, v33, *a9, 1, 1, &v233, &v234);
      if ((v30 & 0x80000000) != 0)
      {
        return v30;
      }

      v36 = v233;
      if (v233 >= v32 || (v230 & 0xFFFFFFFD) != 4)
      {
        goto LABEL_46;
      }

      (*(*(a1 + 24) + 168))(v34, v33, *a9, 2, 1, &v232, &v234);
      if (v230 == 6)
      {
        v35 = (*(*(a1 + 24) + 176))(v34, v33, *a9, 4, &v231, &v234);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }
      }

      else
      {
        v231 = "_DT_";
      }

      v30 = (*(*(a1 + 24) + 176))(v34, v33, *a9, 3, &v223, &v234);
      if ((v30 & 0x80000000) != 0)
      {
        return v30;
      }

      v37 = v232;
      v25 = v25 + strlen(v223) - v232 + v233;
      v38 = strstr(v223, "▲");
      if (v38)
      {
        v39 = v209;
        do
        {
          v40 = v38[3];
          if (!v38[3])
          {
            goto LABEL_246;
          }

          v41 = v25 - 3;
          v42 = v38 + 6;
          while (v40 != 226 || *(v42 - 2) != 150 || *(v42 - 1) != 188)
          {
            --v41;
            v40 = *(v42 - 2);
            ++v42;
            if (!v40)
            {
              goto LABEL_246;
            }
          }

          v25 = v41 - 3;
          v223 = v42;
          v38 = strstr(v42, "▲");
        }

        while (v38);
      }

      else
      {
        v39 = v209;
      }

      strncat(*(a1 + 80), &(*v210)[v28 + *(a1 + 112)], v37 - v28);
      if (v233 > v28)
      {
        for (i = Utf8_LengthInUtf8chars(&(*v210)[v28 + *(a1 + 112)], v233 - v28); i; --i)
        {
          *(*(a1 + 88) + strlen(*(a1 + 88))) = 32;
        }
      }

      v44 = Utf8_LengthInUtf8chars(&(*v210)[v233 + *(a1 + 112)], v232 - v233);
      v45 = strlen(v231);
      if (v44 >= (2 * v45 - 2))
      {
        *(*(a1 + 88) + strlen(*(a1 + 88))) = 88;
        v53 = strlen(v231);
        strncat(*(a1 + 88), v231 + 1, v53 - 2);
        v54 = v44 + 2;
        if (v54 != 2 * strlen(v231))
        {
          v55 = 0;
          v34 = a7;
          do
          {
            *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
            ++v55;
          }

          while (v54 - 2 * strlen(v231) > v55);
          goto LABEL_45;
        }
      }

      else
      {
        v46 = -2 - v44;
        if (v46 + 2 * v45)
        {
          for (j = 0; v46 + 2 * strlen(v231) > j; ++j)
          {
            if (v39 << 7 == v31)
            {
              v39 = (v39 + 1);
              v48 = v208 + (v39 << 7);
              v49 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v48);
              if (!v49)
              {
                goto LABEL_109;
              }

              *(a1 + 80) = v49;
              v50 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v48);
              if (!v50)
              {
                goto LABEL_109;
              }

              *(a1 + 88) = v50;
              v51 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v48);
              if (!v51)
              {
                goto LABEL_109;
              }

              *(a1 + 96) = v51;
            }

            *(*(a1 + 80) + strlen(*(a1 + 80))) = 126;
            ++v31;
          }
        }

        v209 = v39;
        *(*(a1 + 88) + strlen(*(a1 + 88))) = 88;
        v52 = strlen(v231);
        strncat(*(a1 + 88), v231 + 1, v52 - 2);
      }

      v34 = a7;
LABEL_45:
      *(*(a1 + 88) + strlen(*(a1 + 88))) = 89;
      v56 = strlen(v231);
      strncat(*(a1 + 88), v231 + 1, v56 - 2);
      v28 = v232;
      v224 = v232;
      v36 = v233;
      v32 = v214;
      v33 = v213;
LABEL_46:
      if (v36 < v32)
      {
        v30 = (*(*(a1 + 24) + 120))(v34, v33, *a9, a9);
        if ((v30 & 0x80000000) != 0)
        {
          return v30;
        }

        v36 = v233;
      }

      v27 = *a9;
      if (!*a9 || v36 >= v32)
      {
        v29 = v31;
        v17 = v210;
        v26 = v209 << 7;
        break;
      }
    }
  }

LABEL_53:
  v57 = v214 - v28;
  if (v214 > v28)
  {
    strncat(*(a1 + 80), &(*v17)[v28 + *(a1 + 112)], v57);
    for (k = Utf8_LengthInUtf8chars(&(*v17)[v28 + *(a1 + 112)], v57); k; --k)
    {
      *(*(a1 + 88) + strlen(*(a1 + 88))) = 32;
    }
  }

  if (strstr(__s1, "spell"))
  {
    v59 = strlen(*(a1 + 80));
    if (v59)
    {
      do
      {
        v60 = *(a1 + 80);
        v61 = (v59 - 1);
        if (*(v60 + v61) != 32)
        {
          break;
        }

        *(v60 + v61) = 0;
        *(*(a1 + 88) + Utf8_LengthInUtf8chars(*(a1 + 80), v61)) = 0;
        --v25;
        v59 = v61;
      }

      while (v61);
    }
  }

  if (v26 < v29)
  {
    goto LABEL_61;
  }

  v64 = strlen(*(a1 + 80));
  v65 = Utf8_LengthInUtf8chars(*(a1 + 80), v64);
  v66 = v65;
  if (v65)
  {
    v67 = 0;
    do
    {
      *(*(a1 + 96) + v67++) = 1;
    }

    while (v65 != v67);
  }

  v211 = v17;
  v68 = *(a1 + 88);
  v69 = strlen(v68);
  v70 = v69;
  if (v69)
  {
    v71 = 0;
    v72 = 0;
    v73 = *(a1 + 88);
    do
    {
      v75 = *v73++;
      v74 = v75;
      if (v75 == 88)
      {
        ++v72;
      }

      if (v74 == 89)
      {
        ++v71;
      }

      --v70;
    }

    while (v70);
  }

  else
  {
    v69 = 0;
    v72 = 0;
    v71 = 0;
  }

  v224 = v69;
  if (*(a1 + 124))
  {
    if (!v16 && *v68 == 32)
    {
      *v68 = 40;
    }

    if (v214 == strlen(a3))
    {
      v76 = *(a1 + 88) + strlen(*(a1 + 88));
      if (*(v76 - 1) == 32)
      {
        *(v76 - 1) = 41;
      }
    }
  }

  if (!strcmp(__s1, "internal-nuance-system-norm") || !strcmp(__s1, "phon"))
  {
    goto LABEL_87;
  }

  if (*(a1 + 120))
  {
    v77 = strcmp(__s1, "spell");
    v78 = *(a1 + 80);
    if (v77 && !ToNorm(*(a1 + 80)))
    {
LABEL_87:
      v79 = *(a1 + 80);
      v228 = *(a1 + 88);
      v229 = v79;
      v227 = *(a1 + 96);
      goto LABEL_88;
    }
  }

  else
  {
    v78 = *(a1 + 80);
  }

  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L1: %s", __s, v78);
  v180 = strlen(*(a1 + 80));
  v35 = (*(*(a1 + 48) + 120))(*(a1 + 32), *(a1 + 40), 0, *(a1 + 80), v180);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L2: %s", __s, *(a1 + 88));
  v181 = strlen(*(a1 + 88));
  v35 = (*(*(a1 + 48) + 120))(*(a1 + 32), *(a1 + 40), 1, *(a1 + 88), v181);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  v35 = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), *(a1 + 96), v66);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  if (strcmp(__s1, "normal") && strlen(__s1) + v215 + 2 <= 0x7F)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __s) & 0x80000000) != 0)
  {
    __s[v215] = 0;
    v35 = (*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __s);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }
  }

  v35 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 0, &v229, &v226);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  if (strstr(__s1, "spell"))
  {
    v182 = v226++;
    v229[v182] = 32;
  }

  v229[v226] = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s O1: %s", __s, v229);
  v35 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 1, &v228, &v226);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  if (strstr(__s1, "spell"))
  {
    v183 = v226++;
    v228[v183] = 32;
  }

  v228[v226] = 0;
  v184 = strlen(v229);
  v185 = Utf8_LengthInUtf8chars(v229, v184);
  v186 = strlen(v228);
  v187 = Utf8_LengthInUtf8chars(v228, v186) ^ v185;
  v62 = *(*a1 + 32);
  if (v187)
  {
    v30 = 2311069696;
    goto LABEL_62;
  }

  log_OutText(v62, "FE_PUNCSPTN", 5, 0, "%s O2: %s", __s, v228);
  v189 = strlen(v228);
  if (v189)
  {
    v190 = 0;
    v191 = v189;
    v192 = v228;
    do
    {
      v193 = *v192++;
      if (v193 == 88)
      {
        ++v190;
      }

      --v191;
    }

    while (v191);
    v224 = v189;
    if (v190 != v72)
    {
      goto LABEL_61;
    }

    v194 = 0;
    v195 = 0;
    do
    {
      if (v228[v194] == 89)
      {
        ++v195;
      }

      ++v194;
    }

    while (v189 != v194);
  }

  else
  {
    if (v72)
    {
LABEL_61:
      v30 = 2311069696;
      v62 = *(*a1 + 32);
LABEL_62:
      v63 = 33002;
      goto LABEL_247;
    }

    LOWORD(v194) = 0;
    v195 = 0;
  }

  v224 = v194;
  if (v195 != v71)
  {
    goto LABEL_61;
  }

  v30 = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), &v227, &v226);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  if (strstr(__s1, "spell"))
  {
    v196 = v226++;
    v227[v196] = 0;
  }

LABEL_88:
  v80 = *(a1 + 80);
  v81 = v214;
  v82 = a7;
  if (*v80 != 32)
  {
    v83 = 0;
    v84 = 0;
    while (v229[v83] == 32)
    {
      v83 = ++v84;
      if (v80[v84] == 32)
      {
        goto LABEL_94;
      }
    }

    LODWORD(v83) = v84;
LABEL_94:
    if (v83)
    {
      v85 = *a12;
      if (v85 >= 2)
      {
        v86 = *(a10 + 12) + v16 + *(a1 + 112);
        v87 = v86 + v83;
        v88 = (a10 + 44);
        v89 = v85 - 1;
        do
        {
          v90 = v86 > *v88 || *v88 >= v87;
          if (!v90)
          {
            *v88 = v87;
          }

          v88 += 8;
          --v89;
        }

        while (v89);
      }
    }
  }

  v91 = v25 + strlen(v229);
  v92 = (v91 - strlen(v80));
  if (v92 <= 0)
  {
    if (v92 < 0)
    {
      for (m = *(a1 + 112) + v214; m <= strlen(*v211); ++m)
      {
        (*v211)[m + v92] = (*v211)[m];
      }
    }

    goto LABEL_112;
  }

  v93 = heap_Realloc(*(*a1 + 8), *v211, (v207 + v92 + 101));
  if (!v93)
  {
LABEL_109:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
    return 2311069706;
  }

  *v211 = v93;
  bzero((v93 + v207), (v92 + 101));
  v94 = strlen(*v211);
  if ((*(a1 + 112) + v214) <= v94)
  {
    v95 = v94;
    do
    {
      (*v211)[v95 + v92] = (*v211)[v94--];
      v95 = v94;
    }

    while ((*(a1 + 112) + v214) <= v94);
  }

LABEL_112:
  v206 = v92;
  v97 = 0;
  v98 = 0;
  v233 = v16;
  v224 = 0;
  LOWORD(v219) = 0;
  v99 = *(a1 + 112) + v16;
  v100 = v225;
  if (!v225 || v214 <= v16)
  {
    v170 = 0;
    LODWORD(v101) = 0;
    goto LABEL_249;
  }

  v203 = *(a1 + 112) + v16;
  v101 = 0;
  v201 = 0;
  v200 = a10 + 12;
  v102 = v206;
  v103 = v211;
  while (1)
  {
    v35 = (*(*(a1 + 24) + 168))(v82, v213, v100, 0, 1, &v230, &v234);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    if (v230 != 7)
    {
      v35 = (*(*(a1 + 24) + 168))(v82, v213, v225, 1, 1, &v233, &v234);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      v35 = (*(*(a1 + 24) + 168))(v82, v213, v225, 2, 1, &v232, &v234);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }
    }

    if (v233 >= v81)
    {
      goto LABEL_242;
    }

    if ((v230 & 0xFFFFFFFD) == 4)
    {
      break;
    }

    if (v230 == 5)
    {
      v107 = *(a1 + 112);
      HIWORD(v221) = v107 + v233;
      LOWORD(v221) = v107 + v102 + v232;
      v108 = v213;
      v35 = (*(*(a1 + 24) + 160))(v82, v213, v225, 1, 1, &v221 + 2, &v220 + 2);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

LABEL_239:
      v35 = (*(*(a1 + 24) + 160))(v82, v108, v225, 2, 1, &v221, &v220 + 2);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }
    }

LABEL_242:
    v30 = (*(*(a1 + 24) + 120))(v82, v213, v225, &v225);
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }

    v100 = v225;
    if (!v225 || v233 >= v81)
    {
      v97 = v224;
      v98 = v219;
      v170 = v201;
      v99 = v203;
LABEL_249:
      v171 = v101;
      do
      {
        v172 = v171;
      }

      while (v228[v171++]);
      hlp_updateBytePositions(v172, v229, v227, *(a1 + 80), &v224, &v219);
      if ((v224 - v97 + v99) <= v206 + v207 + 100)
      {
        memcpy(&(*v211)[v99], &v229[v97], v224 - v97);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Normalizing to: |%s|", *v211);
        v174 = *a11;
        if (v174 < *a12)
        {
          v175 = a13 + v16;
          v176 = v172 - v101;
          do
          {
            v177 = a10 + 32 * v174;
            v179 = *(v177 + 12);
            v178 = (v177 + 12);
            if (v214 < (v179 - a13))
            {
              break;
            }

            hlp_updateMarkerPosition((*(a1 + 80) + v98), &v227[v101], &v229[v97], v175, v176, v170 + *(a1 + 112), v178);
            LOWORD(v174) = *a11 + 1;
            *a11 = v174;
          }

          while (*a12 > v174);
        }

        *(a1 + 112) += v206;
        return v30;
      }

      goto LABEL_61;
    }
  }

  v104 = v224;
  v105 = v219;
    ;
  }

  hlp_updateBytePositions(n, v229, v227, *(a1 + 80), &v224, &v219);
  v109 = v224;
  memcpy(&(*v103)[v203], &v229[v104], v224 - v104);
  v110 = *a11;
  if (v110 < *a12)
  {
    v111 = v101;
    v112 = n - v101;
    do
    {
      v113 = a10 + 32 * v110;
      v115 = *(v113 + 12);
      v114 = (v113 + 12);
      if (v233 <= (v115 - a13))
      {
        break;
      }

      hlp_updateMarkerPosition((*(a1 + 80) + v105), &v227[v111], &v229[v104], a13 + v16, v112, *(a1 + 112) + v201, v114);
      LOWORD(v110) = *a11 + 1;
      *a11 = v110;
    }

    while (*a12 > v110);
  }

  v116 = 0;
  v117 = v109 - v104 + v203;
  v118 = v16 + v201 + v109 - v104 - v233;
  v16 = v232;
  v81 = v214;
  v82 = a7;
  while (2)
  {
    v119 = v228[n];
    if (v119 == 88)
    {
      v116 = n;
LABEL_138:
      n = (n + 1);
      continue;
    }

    break;
  }

  if (v228[n] && v119 != 89)
  {
    goto LABEL_138;
  }

  v120 = 2 * n;
  if (v119 != 89)
  {
    v120 = 0;
  }

  v121 = v120 - v116;
  v101 = n;
  v103 = v211;
  do
  {
    if (v119 == 41 && *(a1 + 124))
    {
      break;
    }

    if (!v119)
    {
      break;
    }

    if (v119 == 32)
    {
      break;
    }

    if (v119 == 126)
    {
      break;
    }

    if (v121 == v101)
    {
      break;
    }

    v101 = (v101 + 1);
    v119 = v228[v101];
  }

  while (v119 != 88);
  v202 = v117;
  hlp_updateBytePositions(v101, v229, v227, *(a1 + 80), &v224, &v219);
  v35 = (*(*(a1 + 24) + 176))(a7, v213, v225, 3, &v223, &v234);
  if ((v35 & 0x80000000) != 0)
  {
    return v35;
  }

  LOWORD(v220) = 0;
  HIWORD(v219) = 0;
  if (v230 == 6 && ((*(*(a1 + 24) + 184))(a7, v213, v225, 5, &v220) & 0x80000000) == 0 && v220 == 1)
  {
    v35 = (*(*(a1 + 24) + 176))(a7, v213, v225, 5, &v222, &v219 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }
  }

  v122 = strstr(v223, "▲");
  if (!v122)
  {
LABEL_202:
    v35 = (*(*(a1 + 24) + 168))(v82, v213, v225, 0, 1, &v230, &v234);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    LOWORD(v220) = 0;
    if (v230 == 6 && ((*(*(a1 + 24) + 184))(v82, v213, v225, 5, &v220) & 0x80000000) == 0 && v220 == 1)
    {
      v35 = (*(*(a1 + 24) + 176))(v82, v213, v225, 5, &v222, &v234);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      v143 = v233;
      v144 = &a3[v233];
      v145 = strchr(v144, 32);
      v146 = 0;
      v147 = *a11;
      LODWORD(v148) = *a12;
      v197 = v143;
      if (v145 && v234 >= 2u)
      {
        v146 = 0;
        v205 = v234 - 1;
        v199 = v143 - v144;
        v149 = v222;
        v150 = a13 + v118 + v143;
        do
        {
          if (v147 < v148 && &v145[v199] > (*(a10 + 32 * v147 + 12) - a13))
          {
            v151 = (a10 + 44 + 32 * v147);
            v152 = v147 + 1;
            do
            {
              *(v151 - 8) = v150 + *(a1 + 112) + *(v149 + 2 * v146);
              v147 = v152;
              *a11 = v152;
              v148 = *a12;
              if (v152 >= v148)
              {
                break;
              }

              v153 = *v151;
              v151 += 8;
              ++v152;
            }

            while (&v145[v199] > (v153 - a13));
          }

          v154 = v145 - 1;
          do
          {
            v155 = *++v154;
          }

          while (v155 == 32);
          v145 = strchr(v154, 32);
          ++v146;
        }

        while (v145 && v205 > v146);
      }

      v90 = v147 >= v148;
      v81 = v214;
      v82 = a7;
      if (!v90)
      {
        v156 = v232;
        v157 = v222;
        v158 = v147;
        v159 = (v200 + 32 * v147);
        do
        {
          if (v156 <= (*v159 - a13))
          {
            break;
          }

          *v159 = a13 + v118 + v197 + *(a1 + 112) + *(v157 + 2 * v146);
          v159 += 16;
          *a11 = ++v158;
        }

        while (v158 < *a12);
      }
    }

    else if (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm"))
    {
      v164 = *a11;
      if (v164 < *a12)
      {
        v165 = v232;
        v166 = (v200 + 32 * v164);
        do
        {
          if (v165 <= (*v166 - a13))
          {
            break;
          }

          *v166 += v118 + *(a1 + 112);
          v166 += 8;
          *a11 = ++v164;
        }

        while (v164 < *a12);
      }
    }

    else
    {
      v160 = *a11;
      if (v160 < *a12)
      {
        v161 = v232;
        v162 = a13 + v118 + v233;
        v163 = (v200 + 32 * v160);
        do
        {
          if (v161 <= (*v163 - a13))
          {
            break;
          }

          *v163 = v162 + *(a1 + 112);
          v163 += 16;
          *a11 = ++v160;
        }

        while (v160 < *a12);
      }
    }

    v167 = strlen(v223);
    memcpy(&(*v103)[v202], v223, v167);
    v168 = strlen(v223);
    if (v230 == 6)
    {
      HIWORD(v221) = v233 + v118 + *(a1 + 112);
    }

    v203 = v202 + v168;
    v169 = v118 + strlen(v223);
    v201 = v169 - v232 + v233;
    if (v230 != 6)
    {
      v102 = v206;
      goto LABEL_242;
    }

    LOWORD(v221) = v169 + v233 + *(a1 + 112);
    v108 = v213;
    v35 = (*(*(a1 + 24) + 160))(v82, v213, v225, 1, 1, &v221 + 2, &v220 + 2);
    v102 = v206;
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    goto LABEL_239;
  }

  v123 = v122;
  v124 = 0;
  while (1)
  {
    v218 = 0;
    v123[2] = 0;
    *v123 = 0;
    v126 = v123 + 3;
    v125 = v123[3];
    if (!v123[3])
    {
      break;
    }

    v127 = v123 + 6;
    v128 = -3 - v123;
    v129 = -6;
    while (v125 != 226 || *(v127 - 2) != 150 || *(v127 - 1) != 188)
    {
      v125 = *(v127++ - 2);
      --v129;
      --v128;
      if (!v125)
      {
        goto LABEL_246;
      }
    }

    v204 = v124;
    *(v127 - 3) = 0;
    *(v127 - 1) = 0;
    v130 = HIWORD(v219);
    if (HIWORD(v219))
    {
      v131 = 0;
      v132 = v222;
      v133 = -v128 - v223;
      do
      {
        if (v132)
        {
          v134 = *(v132 + 2 * v131);
          if (v133 < v134)
          {
            *(v132 + 2 * v131) = v134 + v129;
            v130 = HIWORD(v219);
          }
        }

        ++v131;
      }

      while (v131 < v130);
    }

    LOWORD(v218) = v225;
    v35 = (*(*(a1 + 24) + 168))(v82, v213);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    v198 = v123;
    v135 = v218;
    if (HIWORD(v218) == v233 && v218 != 0)
    {
      while (1)
      {
        v137 = v135;
        v35 = (*(*(a1 + 24) + 120))(v82, v213, v135, &v218);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }

        if (!v218)
        {
          goto LABEL_176;
        }

        v35 = (*(*(a1 + 24) + 168))(v82, v213);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }

        v135 = v218;
        if (HIWORD(v218) != v233 || v218 == 0)
        {
          goto LABEL_176;
        }
      }
    }

    v137 = 0;
LABEL_176:
    LOWORD(v218) = v137;
    v138 = v137;
    if (v204)
    {
      v35 = (*(*(a1 + 24) + 120))(v82, v213, v137, &v218);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      v138 = v218;
    }

    if (v138)
    {
      v35 = (*(*(a1 + 24) + 168))(v82, v213, v138, 0, 1, &v230, &v234);
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      while (v218 && v230 == 7)
      {
        v137 = v218;
        v35 = (*(*(a1 + 24) + 120))(v82, v213, v218, &v218);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }

        if (!v218)
        {
          break;
        }

        v35 = (*(*(a1 + 24) + 168))(v82, v213);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }
      }
    }

    LOWORD(v218) = v137;
    v35 = (*(*(a1 + 24) + 80))(v82, v213, v137, &v218);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    v230 = 7;
    v35 = (*(*(a1 + 24) + 160))(v82, v213, v218, 0, 1, &v230, &v220 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    HIWORD(v218) = v233 + v118 + *(a1 + 112) + v198 - v223;
    v35 = (*(*(a1 + 24) + 160))(v82, v213, v218, 1, 1, &v218 + 2, &v220 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    v35 = (*(*(a1 + 24) + 160))(v82, v213, v218, 2, 1, &v218 + 2, &v220 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    v140 = strlen(v126);
    v35 = (*(*(a1 + 24) + 160))(v82, v213, v218, 4, (v140 + 1), v126, &v220 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      return v35;
    }

    v141 = strlen(v223);
    v142 = strlen(v127);
    memmove(&v223[v141], v127, v142 + 1);
    v123 = strstr(v223, "▲");
    v124 = 1;
    v82 = a7;
    v103 = v211;
    if (!v123)
    {
      goto LABEL_202;
    }
  }

LABEL_246:
  v30 = 2311069696;
  v62 = *(*a1 + 32);
  v63 = 33003;
LABEL_247:
  log_OutPublic(v62, "FE_PUNCSPTN", v63, 0);
  return v30;
}

uint64_t updateTokenDomainLanguageTags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v228 = 0;
  v229[0] = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  LogLevel = log_GetLogLevel(*(*a1 + 32));
  v224 = 0;
  v223 = 0;
  v222 = -1;
  v221 = 0;
  v220 = 0;
  v11 = (*(a1[3] + 152))(a2, a3, 3, a4, &v220);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v220)
  {
    if (LogLevel >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "no tokens to process for langmaps");
    }

    return v11;
  }

  v11 = (*(a1[3] + 104))(a2, a3, 3, a4, v229 + 2);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_22:
    v19 = 0;
LABEL_23:
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_24;
  }

  v12 = HIWORD(v229[0]);
  if (!HIWORD(v229[0]))
  {
    goto LABEL_37;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    if (v14)
    {
      v14 = 1;
    }

    else
    {
      v11 = (*(a1[3] + 168))(a2, a3, v12, 0, 1, &v224, v229);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v12 = HIWORD(v229[0]);
      if (v224 == 6)
      {
        v11 = (*(a1[3] + 184))(a2, a3, HIWORD(v229[0]), 6, &v228 + 2);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_39:
          v19 = 0;
          LOWORD(v20) = 0;
          v21 = 0;
          v22 = 0;
          v226 = v13;
          goto LABEL_24;
        }

        v14 = HIWORD(v228) == 1;
        v12 = HIWORD(v229[0]);
      }

      else
      {
        v14 = 0;
      }
    }

    ++v13;
    v15 = (*(a1[3] + 120))(a2, a3, v12, v229 + 2);
    v12 = HIWORD(v229[0]);
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = HIWORD(v229[0]) == 0;
    }
  }

  while (!v16);
  v226 = v13;
  if (!v14)
  {
LABEL_37:
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "No LangMaps to process");
    return v11;
  }

  v17 = strlen(a5);
  if (LogLevel < 5)
  {
    v19 = 0;
  }

  else
  {
    v18 = heap_Calloc(*(*a1 + 8), 1, v17 + 2);
    v19 = v18;
    if (!v18)
    {
      v11 = 2311069706;
      v28 = *a1;
      goto LABEL_55;
    }

    strcpy(v18, a5);
    dumpLingDB(a1, a2, a3, a4, a5, v19, "lingdb at start of langmap expansion");
  }

  v213 = v17;
  v26 = v17 + 1;
  v27 = heap_Calloc(*(*a1 + 8), 1, v26);
  v28 = *a1;
  if (!v27)
  {
    v11 = 2311069706;
LABEL_55:
    log_OutPublic(*(v28 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_23;
  }

  v217 = v27;
  v29 = heap_Calloc(*(v28 + 8), 1, 2 * v26);
  v30 = *a1;
  if (!v29)
  {
    v11 = 2311069706;
    log_OutPublic(*(v30 + 32), "FE_PUNCSPTN", 33000, 0);
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_127;
  }

  v211 = v29;
  v31 = heap_Calloc(*(v30 + 8), 1, 4 * v26);
  v32 = *a1;
  v210 = v31;
  if (!v31 || (v227 = heap_Calloc(*(v32 + 8), 1, 28 * v13 + 28), v32 = *a1, !v227))
  {
    v11 = 2311069706;
    log_OutPublic(*(v32 + 32), "FE_PUNCSPTN", 33000, 0);
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_125;
  }

  v204 = LogLevel;
  v22 = heap_Calloc(*(v32 + 8), 1, 48);
  v33 = *a1;
  if (!v22)
  {
    v11 = 2311069706;
    log_OutPublic(*(v33 + 32), "FE_PUNCSPTN", 33000, 0);
    LOWORD(v20) = 0;
    v21 = 0;
    goto LABEL_125;
  }

  __s = a5;
  v21 = heap_Calloc(*(v33 + 8), 1, 1024);
  if (!v21)
  {
    goto LABEL_123;
  }

  v222 = -1;
  v34 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "normal", &v223, &v222, &v221);
  if ((v34 & 0x80000000) != 0)
  {
    v11 = v34;
LABEL_124:
    LOWORD(v20) = 0;
    goto LABEL_125;
  }

  if (v222)
  {
    v35 = *v223;
    v36 = strchr(*v223, v221);
    if (v36)
    {
      *v36 = 0;
      v35 = *v223;
    }
  }

  else
  {
    v35 = "normal";
  }

  v37 = strlen(v35);
  v38 = heap_Calloc(*(*a1 + 8), 1, (v37 + 1));
  if (!v38)
  {
LABEL_123:
    v11 = 2311069706;
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
    goto LABEL_124;
  }

  *v22 = strcpy(v38, v35);
  v39 = (*(a1[3] + 104))(a2, a3, 3, a4, v229 + 2);
  if ((v39 & 0x80000000) != 0)
  {
    v11 = v39;
    LOWORD(v20) = 1;
    goto LABEL_125;
  }

  v226 = 0;
  v40 = HIWORD(v229[0]);
  v41 = 0;
  if (!HIWORD(v229[0]))
  {
    LOWORD(v20) = 1;
LABEL_130:
    LOWORD(v199) = v20;
    v202 = v41;
    if (v204 < 5)
    {
      __dstb = v227;
      v11 = modifyTokenLangMaps(a1, a2, a3, v227, v41, __s);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before processing");
      __dstb = v227;
      dumpTokDB(a1, a2, a3, v227, v41);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      v11 = modifyTokenLangMaps(a1, a2, a3, __dstb, v41, __s);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after langmap realign");
      dumpTokDB(a1, a2, a3, __dstb, v41);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
    }

    v82 = v41;
    if (v41)
    {
      v83 = 0;
      v84 = __dstb;
      while (1)
      {
        v85 = &v84[28 * v83];
        if (*(v85 + 3) != 3 && *(v85 + 2) == 6)
        {
          v195 = v83;
          v11 = (*(a1[3] + 184))(a2, a3, *v85, 6, &v228 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_338;
          }

          v82 = v202;
          v84 = __dstb;
          if (HIWORD(v228) == 1)
          {
            v11 = (*(a1[3] + 176))(a2, a3, *v85, 6, &v225, v229);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_338;
            }

            v86 = strlen(v225);
            v87 = heap_Calloc(*(*a1 + 8), 1, v86 + 1);
            if (!v87)
            {
LABEL_334:
              v11 = 2311069706;
              goto LABEL_337;
            }

            v88 = v87;
            strcpy(v87, v225);
            v89 = *&__dstb[28 * v195 + 2];
            v90 = *(v85 + 2);
            if (v89 < v90)
            {
              v91 = *v88;
              v92 = &v88[v89];
              do
              {
                if (v92[-*(v85 + 1)] != 32)
                {
                  v91 = v92[-*(v85 + 1)];
                }

                if (v91 != 32)
                {
                  v217[v89] = v91;
                  LOWORD(v90) = *(v85 + 2);
                }

                ++v92;
                ++v89;
              }

              while (v89 < v90);
            }

            v93 = *v85;
            heap_Free(*(*a1 + 8), v88);
            v84 = __dstb;
            v83 = 0;
            v82 = v202;
            while (*&__dstb[28 * v83] != v93)
            {
              if (++v83 >= v202)
              {
                v83 = v202;
                break;
              }
            }
          }
        }

        if (++v83 >= v82)
        {
          goto LABEL_157;
        }
      }
    }

    v84 = __dstb;
LABEL_157:
    if (v204 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after inserting langMaps");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
      v84 = __dstb;
      v82 = v202;
    }

    if (v82)
    {
      v94 = 0;
      v95 = v82;
      v96 = v84 + 36;
      v97 = 2;
      v98 = v213;
      v196 = v82;
      do
      {
        v99 = &v84[28 * v94];
        if (*(v99 + 2) != 6 || *(v99 + 5))
        {
          goto LABEL_200;
        }

        v100 = v99[2];
        v101 = v100;
        v102 = v100;
        if (v98 > v100)
        {
          v102 = v99[2];
          do
          {
            if (__s[v102] == 32)
            {
              break;
            }

            ++v102;
          }

          while (v98 > v102);
          v101 = v102;
        }

        if (__s[v102] == 32 && v98 > v101)
        {
          do
          {
            if (__s[v102] != 32)
            {
              break;
            }

            ++v102;
          }

          while (v98 > v102);
          v101 = v102;
        }

        if (v98 < v101)
        {
          goto LABEL_200;
        }

        v187 = v97;
        *__ca = v96;
        if (v100 != v102)
        {
          v179 = v101;
          v182 = &v84[28 * v94];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting pTokDB[%d].to %d -> %d, as not end of word (u16SentLen=%d)", v94, v100, v101, v213);
          v101 = v179;
          v99 = v182;
          v95 = v196;
          v84 = __dstb;
        }

        if (v94 + 1 >= v95)
        {
          goto LABEL_193;
        }

        v104 = v187;
        for (i = *__ca; ; i += 28)
        {
          v106 = *(i - 3);
          v107 = v102 <= v106 || *i != 6 || *(i + 1) == 3 || v211[v102] == v211[v106];
          if (v104 >= v95)
          {
            if (!v107)
            {
              goto LABEL_198;
            }

            goto LABEL_193;
          }

          if (v102 <= *(i + 11))
          {
            break;
          }

          if (!v107)
          {
            goto LABEL_198;
          }

LABEL_190:
          ++v104;
        }

        if (*(i + 7) != 6 && v107)
        {
          goto LABEL_190;
        }

        if (!v107)
        {
LABEL_198:
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", *&v84[28 * v104], *&v84[28 * v104 + 2], *&v84[28 * v104 + 4]);
          v95 = v196;
          v84 = __dstb;
          v98 = v213;
          goto LABEL_199;
        }

LABEL_193:
        v108 = &v84[28 * v94];
        v109 = *(v108 + 2);
        if (v109 < v102)
        {
          v110 = &v217[v109];
          v111 = v102 - v109;
          do
          {
            *v110++ = v217[*&v84[28 * v94 + 2]];
            --v111;
          }

          while (v111);
        }

        *(v108 + 2) = v102;
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", *v99, v99[1], v101);
        v84 = __dstb;
        v98 = v213;
        v95 = v196;
LABEL_199:
        v97 = v187;
        v96 = *__ca;
LABEL_200:
        ++v94;
        v96 += 28;
        ++v97;
      }

      while (v94 != v95);
      v112 = 0;
      while (1)
      {
        v113 = &v84[28 * v112];
        if (*(v113 + 2) != 6)
        {
          goto LABEL_235;
        }

        v114 = *(v113 + 1);
        v115 = *(v113 + 1);
        if (v114 >= 1)
        {
          break;
        }

        if (v114 < 0)
        {
          goto LABEL_235;
        }

LABEL_209:
        if (*__s == 32)
        {
          v116 = 0;
          v117 = 0;
LABEL_211:
          if ((v116 + 1) != v114)
          {
            v214 = &v84[28 * v112];
            __cd = v116 + 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v115, (v116 + 1));
            v119 = __cd;
            goto LABEL_218;
          }

          if (!v116)
          {
            goto LABEL_217;
          }

          goto LABEL_235;
        }

        if (*(v113 + 1))
        {
          v117 = 0;
LABEL_217:
          v214 = &v84[28 * v112];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v115, 0);
          v119 = 0;
LABEL_218:
          v120 = 0;
          v121 = &__dstb[28 * v112];
          v124 = *(v121 + 1);
          v122 = (v121 + 2);
          v123 = v124;
          do
          {
            v125 = &__dstb[28 * v120];
            v126 = v125[1];
            if (v126 > v123)
            {
              break;
            }

            if (v112 != v120)
            {
              v127 = *(v125 + 2);
              if (v126 <= v119 && v127 == 6)
              {
                if (v125[2] > v119)
                {
                  goto LABEL_237;
                }
              }

              else if (v127 == 5 && *(v125 + 3) != 3 && v211[v117] != v211[v126])
              {
LABEL_237:
                log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", *v125, v125[1], v125[2]);
                v84 = __dstb;
                v95 = v196;
                goto LABEL_235;
              }
            }

            ++v120;
          }

          while (v120 < v202);
          if (v123 > v119)
          {
            v129 = v217[v123];
            v130 = v119;
            do
            {
              v217[v130++] = v129;
            }

            while (v130 < *v122);
          }

          *v122 = v119;
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", *v214, v119, v214[2]);
          v84 = __dstb;
          v95 = v196;
        }

LABEL_235:
        if (++v112 == v95)
        {
          goto LABEL_238;
        }
      }

      v116 = *(v113 + 1);
      while (1)
      {
        v117 = v116;
        if (__s[v116] == 32)
        {
          goto LABEL_211;
        }

        v118 = v116--;
        if (v118 <= 1)
        {
          goto LABEL_209;
        }
      }
    }

LABEL_238:
    if (v204 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Adjusting End Check");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
    }

    v131 = strlen(__s);
    v132 = v131;
    v133 = v217;
    v134 = v202;
    v197 = v131;
    v215 = v131;
    if (v131)
    {
      v135 = 0;
      v136 = 0;
      v137 = *v217;
      do
      {
        v138 = v133[v136];
        if (v138 == v137 || __s[v136] != 32)
        {
          ++v136;
          v137 = v138;
        }

        else
        {
          v139 = 0;
          v140 = v136;
          do
          {
            v141 = v140;
            v142 = v139;
            if (++v140 >= v131)
            {
              break;
            }

            if (v133[v140] != v138)
            {
              break;
            }

            ++v139;
          }

          while (__s[v140] == 32);
          if (v137 != 80)
          {
            __cb = v137;
            v180 = v136;
            v183 = &v133[v136];
            v188 = v141;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Append region %d..%d to previous %c region", v135, v140, v137);
            v141 = v188;
            v137 = __cb;
            v131 = v197;
            v134 = v202;
            v133 = v217;
            if (v180 < v140)
            {
              memset(v183, __cb, v142 + 1);
              v141 = v188;
              v137 = __cb;
              v131 = v197;
              v134 = v202;
              v133 = v217;
            }
          }

          v136 = v141 + 2;
          v132 = v215;
        }

        v135 = v136;
      }

      while (v132 > v136);
    }

    if (v204 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Region Check");
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
      v132 = v215;
      v134 = v202;
      v133 = v217;
    }

    if (v134)
    {
      v143 = v134;
      v144 = (__dstb + 16);
      do
      {
        if (*(v144 - 2) == 5)
        {
          v145 = strcmp(v22[*v144], "phon");
          v132 = v215;
          v133 = v217;
          if (v145)
          {
            *(v144 - 1) = 3;
          }
        }

        v144 += 14;
        --v143;
      }

      while (v143);
    }

    if (v132)
    {
      v146 = 0;
      v147 = v211;
      v148 = *v211;
      v149 = *v133;
      v150 = v197;
      do
      {
        if (v132 <= v146)
        {
          v151 = v146;
        }

        else
        {
          v151 = v146;
          while (v133[v151] == v149 && v147[v151] == v148)
          {
            v151 = (v151 + 1);
            if (v132 <= v151)
            {
              v152 = 0;
              goto LABEL_272;
            }
          }

          v152 = 1;
LABEL_272:
          if (v151 != v146)
          {
            v219 = 0;
            v218 = 0;
            v153 = v133[v146];
            if (v153 != 80)
            {
              __dstd = v152;
              v154 = v148;
              insertDomainAndLang(a1, &v227, &v226, v147[v146], v153, *(v210 + 4 * v146), v146, v151, v22, &v219 + 1, &v219, &v218);
              LOBYTE(v152) = __dstd;
              v148 = v154;
              v132 = v215;
              v133 = v217;
              v11 = v155;
              v150 = v197;
              v147 = v211;
            }

            if ((v152 & 1) == 0)
            {
              goto LABEL_284;
            }

LABEL_278:
            if (v147[v151] != v148 || v133[v151] != v149)
            {
              v149 = v133[v151];
            }

            v148 = v147[v151];
            goto LABEL_284;
          }

          if (v152)
          {
            goto LABEL_278;
          }
        }

LABEL_284:
        v146 = v151;
      }

      while (v151 < v150);
    }

    if (v204 <= 4)
    {
      v157 = v226;
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before update lingdb");
      v157 = v226;
      dumpTokDB(a1, a2, a3, v227, v226);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
    }

    if (!v157)
    {
LABEL_330:
      if (v204 >= 5)
      {
        dumpLingDB(a1, a2, a3, a4, __s, v19, "lingdb at end of langmap expansion");
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v217);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", __s);
      }

      goto LABEL_338;
    }

    v158 = 0;
    v159 = v227;
    __dstc = v157;
    v216 = v227;
    __cc = v157;
    while (1)
    {
      v160 = (v159 + 28 * v158);
      v161 = *(v160 + 3);
      if (v161 == 1)
      {
        break;
      }

      if (v161 == 3)
      {
        if (*v160)
        {
          v163 = (*(a1[3] + 192))(a2, a3);
          goto LABEL_303;
        }
      }

      else if (v161 == 2)
      {
        v162 = v158;
        v203 = v159 + 28 * v158;
        do
        {
          if (--v162 < 0)
          {
            for (j = v158 + 1; v157 > j; ++j)
            {
              v165 = v159 + 28 * j;
              if (*(v165 + 12) != 3 && *v165)
              {
                v47 = (*(a1[3] + 88))(a2, a3);
                goto LABEL_298;
              }
            }

            v47 = (*(a1[3] + 72))(a2, a3, 3, a4, v229 + 2);
            if ((v47 & 0x80000000) != 0)
            {
              goto LABEL_332;
            }

            goto LABEL_311;
          }
        }

        while (*(v159 + 28 * v162 + 12) == 3);
        if (!*(v159 + 28 * v162))
        {
          log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33004, 0);
          v11 = 2311069696;
          goto LABEL_338;
        }

        v47 = (*(a1[3] + 80))(a2, a3);
LABEL_298:
        if ((v47 & 0x80000000) != 0)
        {
LABEL_332:
          v11 = v47;
          goto LABEL_338;
        }

LABEL_311:
        v47 = (*(a1[3] + 160))(a2, a3, HIWORD(v229[0]), 0, 1, v216 + 28 * v158 + 8, &v228);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_332;
        }

        v198 = v216 + 28 * v158;
        v47 = (*(a1[3] + 160))(a2, a3, HIWORD(v229[0]), 1, 1, v198 + 2, &v228);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_332;
        }

        v47 = (*(a1[3] + 160))(a2, a3, HIWORD(v229[0]), 2, 1, v216 + 28 * v158 + 4, &v228);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_332;
        }

        *v203 = HIWORD(v229[0]);
        if (*(v216 + 28 * v158 + 24))
        {
          v47 = (*(a1[3] + 160))(a2, a3);
          if ((v47 & 0x80000000) != 0)
          {
            goto LABEL_332;
          }
        }

        v166 = strlen(v22[v211[*(v198 + 2)]]);
        v167 = heap_Calloc(*(*a1 + 8), 1, (v166 + 7) + 1);
        if (!v167)
        {
          goto LABEL_334;
        }

        v168 = v167;
        if (v211[*(v203 + 2)])
        {
          strcpy(v167, v22[v211[*(v203 + 2)]]);
          v169 = v216 + 28 * v158;
          v171 = *(v169 + 18);
          v170 = (v169 + 18);
          if (v171 != 78)
          {
            *&v168[strlen(v168)] = 95;
            v172 = *(v21 + 8 * *v170);
            if (v172)
            {
              strcat(v168, v172);
            }

            else
            {
              strcat(v168, "latin");
            }
          }

LABEL_328:
          v175 = strlen(v168);
          v11 = (*(a1[3] + 160))(a2, a3, HIWORD(v229[0]), 4, (v175 + 1), v168, &v228);
          heap_Free(*(*a1 + 8), v168);
          v157 = __cc;
          v159 = v216;
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_338;
          }

          goto LABEL_329;
        }

        v173 = *(v203 + 18);
        if (v173 == 78)
        {
          v174 = *v22;
        }

        else
        {
          v174 = *(v21 + 8 * v173);
          if (!v174)
          {
            strcpy(v167, "latin");
            goto LABEL_328;
          }
        }

        strcpy(v167, v174);
        goto LABEL_328;
      }

LABEL_329:
      if (++v158 == __dstc)
      {
        goto LABEL_330;
      }
    }

    v163 = (*(a1[3] + 160))(a2, a3, *v160, 2, 1, v160 + 2, &v228);
LABEL_303:
    v159 = v216;
    v11 = v163;
    if ((v163 & 0x80000000) != 0)
    {
      goto LABEL_338;
    }

    goto LABEL_329;
  }

  v11 = 2311069706;
  v177 = v17;
  v178 = 5;
  v42 = v227;
  v20 = 1;
  while (1)
  {
    v200 = v41;
    v43 = v42 + 28 * v41;
    *v43 = v40;
    *(v43 + 12) = 0;
    *(v43 + 16) = 0;
    v181 = (v43 + 16);
    *(v43 + 18) = 32;
    *__c = v43;
    v194 = (v43 + 18);
    *(v43 + 24) = 0;
    v184 = (v43 + 24);
    *(v43 + 20) = 0;
    v44 = v42;
    v45 = (*(a1[3] + 168))(a2, a3, HIWORD(v229[0]), 1, 1, v43 + 2, v229);
    if ((v45 & 0x80000000) != 0 || (v45 = (*(a1[3] + 168))(a2, a3, HIWORD(v229[0]), 2, 1, &v44[28 * v200 + 4], v229), (v45 & 0x80000000) != 0))
    {
      v11 = v45;
      goto LABEL_125;
    }

    v199 = v20;
    __dst = v44;
    v46 = &v44[28 * v200];
    v47 = (*(a1[3] + 168))(a2, a3, HIWORD(v229[0]), 0, 1, v46 + 8, v229);
    if ((v47 & 0x80000000) != 0)
    {
      goto LABEL_332;
    }

    if (*(v46 + 2) == 5)
    {
      break;
    }

    v58 = v226;
LABEL_117:
    v20 = v199;
    v41 = v58 + 1;
    v226 = v58 + 1;
    v80 = (*(a1[3] + 120))(a2, a3, HIWORD(v229[0]), v229 + 2);
    v40 = HIWORD(v229[0]);
    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v81 = HIWORD(v229[0]) == 0;
    }

    v42 = __dst;
    if (v81)
    {
      goto LABEL_130;
    }
  }

  HIWORD(v219) = 0;
  if (((*(a1[3] + 184))(a2, a3, HIWORD(v229[0]), 6, &v219 + 2) & 0x80000000) == 0 && HIWORD(v219) == 1)
  {
    *v184 = 1;
  }

  v47 = (*(a1[3] + 176))(a2, a3, HIWORD(v229[0]), 4, &v225, v229);
  if ((v47 & 0x80000000) != 0)
  {
    goto LABEL_332;
  }

  v48 = a1[16];
  if (!v48)
  {
    goto LABEL_338;
  }

  v49 = v225;
  v185 = strstr(v48, v225);
  v50 = strlen(v49);
  v51 = strlen(*v22);
  if (v51 <= v50)
  {
    v52 = v50 + 1;
  }

  else
  {
    v52 = (v51 + 1);
  }

  __dsta = heap_Calloc(*(*a1 + 8), 1, v52);
  if (!__dsta)
  {
    goto LABEL_337;
  }

  v53 = v225;
  if (strcmp(v225, "phon") && strcmp(v53, "internal-nuance-system-norm") && strcmp(v53, "prompt") && (!strcmp(v53, "latin") || (!v185 || v185[strlen(v53)] != 124) && !strchr(v53, 95)))
  {
    strcpy(__dsta, *v22);
    v61 = __toupper(*v225);
    *v194 = v61;
    *(v21 + 8 * v61) = v225;
LABEL_92:
    v55 = v217;
    goto LABEL_93;
  }

  strcpy(__dsta, v53);
  *v194 = 78;
  v54 = v50;
  v55 = v217;
  if (!v50)
  {
    goto LABEL_93;
  }

  if (*v225 == 95)
  {
    LODWORD(v56) = 0;
    v57 = 0;
LABEL_90:
    v176 = v56 + 1;
    v186 = v54;
    v60 = __toupper(v225[v176]);
    *v194 = v60;
    *(v21 + 8 * v60) = &v225[v176];
    bzero(&__dsta[v57], v186 - v56);
    goto LABEL_92;
  }

  LODWORD(v56) = 0;
  v59 = v50;
  while (1)
  {
    v56 = v56 + 1;
    if (v56 >= v59)
    {
      break;
    }

    v57 = v56;
    if (v225[v56] == 95)
    {
      goto LABEL_90;
    }
  }

LABEL_93:
  v62 = *(*__c + 4);
  if (v62 > v177)
  {
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 0, 0, "Conflicting depes rules in fe_puncsptn - possible FE data error");
    heap_Free(*(*a1 + 8), __dsta);
    v11 = 2311069962;
    goto LABEL_338;
  }

  v63 = *(*__c + 2);
  v64 = v199;
  if (v63 < v62)
  {
    v65 = *(*__c + 18);
    do
    {
      v55[v63++] = v65;
    }

    while (v63 < *(*__c + 4));
  }

  if (v199)
  {
    v66 = 0;
    while (LH_stricmp(v22[v66], __dsta))
    {
      if (v199 == ++v66)
      {
        v67 = v210;
        v64 = v199;
        v68 = v200;
        goto LABEL_105;
      }
    }

    *v181 = v66;
    heap_Free(*(*a1 + 8), __dsta);
    __dsta = 0;
    v64 = v199;
  }

  else
  {
    LOWORD(v66) = 0;
  }

  v67 = v210;
  v68 = v200;
  if (v66 != v64)
  {
    v70 = v227;
    v71 = v226;
LABEL_111:
    v73 = (v70 + 28 * v71);
    v74 = v73[1];
    LODWORD(v75) = v73[2];
    if (v74 < v75)
    {
      v76 = v73[8];
      v77 = *(v70 + 28 * v71 + 24);
      do
      {
        v211[v74] = v76;
        *(v67 + 4 * v74++) = v77;
        v75 = v73[2];
      }

      while (v74 < v75);
    }

    __dst = v70;
    v201 = v71;
    v78 = strcmp(v22[v73[8]], "phon");
    v58 = v201;
    if (!v78)
    {
      v79 = v73[1];
      if (v79 < v75)
      {
        do
        {
          v217[v79++] = 80;
        }

        while (v79 < *&__dst[28 * v201 + 4]);
      }
    }

    goto LABEL_117;
  }

LABEL_105:
  v69 = v178;
  if (v64 < v178)
  {
    v22[v64] = __dsta;
    v70 = v227;
    *&v227[28 * v68 + 16] = v64;
LABEL_110:
    v178 = v69;
    v71 = v226;
    *(v70 + 28 * v226 + 16) = v64;
    v199 = (v64 + 1);
    goto LABEL_111;
  }

  v72 = heap_Realloc(*(*a1 + 8), v22, 8 * v178 + 48);
  if (v72)
  {
    v69 = (v178 + 5);
    v67 = v210;
    *(v72 + 8 * v64) = __dsta;
    v70 = v227;
    v22 = v72;
    goto LABEL_110;
  }

  if (__dsta)
  {
    heap_Free(*(*a1 + 8), __dsta);
  }

LABEL_337:
  log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
LABEL_338:
  LOWORD(v20) = v199;
LABEL_125:
  heap_Free(*(*a1 + 8), v211);
  if (v210)
  {
    heap_Free(*(*a1 + 8), v210);
  }

LABEL_127:
  heap_Free(*(*a1 + 8), v217);
LABEL_24:
  if (v227)
  {
    heap_Free(*(*a1 + 8), v227);
    v227 = 0;
    v226 = 0;
  }

  if (v22)
  {
    if (v20)
    {
      v23 = v20;
      v24 = v22;
      do
      {
        heap_Free(*(*a1 + 8), *v24);
        *v24++ = 0;
        --v23;
      }

      while (v23);
    }

    heap_Free(*(*a1 + 8), v22);
  }

  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  return v11;
}