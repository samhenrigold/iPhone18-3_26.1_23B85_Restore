uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 21, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

int *SIPommesDBOScoredTopicFieldIterator(int *result, uint64_t *a2, int *a3, int *a4, int *a5, int *a6, uint64_t a7, int a8, uint64_t a9)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  v11 = *a3;
  if (v11 > a8)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(14);
    v14 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_6:
      result = __error();
      *result = v12;
      return result;
    }

    v15 = *a3;
    *buf = 67109376;
    v77 = v15;
    v78 = 1024;
    LODWORD(v79) = a8;
LABEL_5:
    _os_log_impl(&dword_1C278D000, v13, v14, "%d index greater than fetched attribute count %d", buf, 0xEu);
    goto LABEL_6;
  }

  if (!a4)
  {
    return result;
  }

  v18 = *(a7 + 8 * v11);
  if (!v18)
  {
    return result;
  }

  v19 = *a4;
  if (v19 > a8)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(14);
    v14 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_6;
    }

    v20 = *a4;
    *buf = 67109376;
    v77 = v20;
    v78 = 1024;
    LODWORD(v79) = a8;
    goto LABEL_5;
  }

  if (!*(a7 + 8 * v19))
  {
    return result;
  }

  v24 = result;
  if (a5)
  {
    v25 = *a5;
    if (v25 > a8)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(14);
      v14 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_6;
      }

      v26 = *a5;
      *buf = 67109376;
      v77 = v26;
      v78 = 1024;
      LODWORD(v79) = a8;
      goto LABEL_5;
    }

    if (!*(a7 + 8 * v25))
    {
      return result;
    }
  }

  if (a6)
  {
    v27 = *a6;
    if (v27 > a8)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(14);
      v30 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_24:
        result = __error();
        *result = v28;
        return result;
      }

      v31 = *a6;
      *buf = 67109376;
      v77 = v31;
      v78 = 1024;
      LODWORD(v79) = a8;
      v32 = "%d index greater than fetched attribute count %d";
      v33 = v29;
      v34 = v30;
      v35 = 14;
LABEL_23:
      _os_log_impl(&dword_1C278D000, v33, v34, v32, buf, v35);
      goto LABEL_24;
    }

    if (!*(a7 + 8 * v27))
    {
      return result;
    }
  }

  v74 = 0;
  __s = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  if (db_get_field_by_id(result, a2, v18, &v74, &__s) || a3[2] != *v74)
  {
    v40 = *__error();
    v41 = _SILogForLogForCategory(14);
    v42 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_52:
      result = __error();
      *result = v40;
      return result;
    }

    v43 = *a3;
    v44 = *a2;
    *buf = 67109376;
    v77 = v43;
    v78 = 2048;
    v79 = v44;
LABEL_51:
    _os_log_impl(&dword_1C278D000, v41, v42, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
    goto LABEL_52;
  }

  result = db_get_field_by_id(v24, a2, *(a7 + 8 * *a4), &v72, &v73);
  if (result || a4[2] != *v72)
  {
    v40 = *__error();
    v41 = _SILogForLogForCategory(14);
    v42 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_52;
    }

    v45 = *a4;
    v46 = *a2;
    *buf = 67109376;
    v77 = v45;
    v78 = 2048;
    v79 = v46;
    goto LABEL_51;
  }

  if (a5)
  {
    result = db_get_field_by_id(v24, a2, *(a7 + 8 * *a5), &v70, &v71);
    if (result || a5[2] != *v70)
    {
      v40 = *__error();
      v41 = _SILogForLogForCategory(14);
      v42 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_52;
      }

      v47 = *a5;
      v48 = *a2;
      *buf = 67109376;
      v77 = v47;
      v78 = 2048;
      v79 = v48;
      goto LABEL_51;
    }
  }

  if (a6)
  {
    result = db_get_field_by_id(v24, a2, *(a7 + 8 * *a6), &v68, &v69);
    if (result || a6[2] != *v68)
    {
      v28 = *__error();
      v49 = _SILogForLogForCategory(14);
      v50 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_24;
      }

      v51 = *a6;
      v52 = *a2;
      *buf = 67109376;
      v77 = v51;
      v78 = 2048;
      v79 = v52;
      v32 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
      v33 = v49;
      v34 = v50;
      v35 = 18;
      goto LABEL_23;
    }
  }

  if (v74)
  {
    if ((v74[1] & 0x20) != 0)
    {
      if (v72)
      {
        if ((v72[1] & 0x20) != 0)
        {
          v36 = v71;
          if (!v71 || (v70[1] & 0x20) != 0)
          {
            v66 = v69;
            if (!v69 || (v68[1] & 0x20) != 0)
            {
              buf[0] = 0;
              v37 = *(v74 + 2);
              if (v37)
              {
                if (*v74 == 11 && *v72 == 10)
                {
                  v38 = __s;
                  v39 = v73;
                  v64 = v71 ? &v71[*(v70 + 2)] : 0;
                  v65 = 0;
                  v67 = &__s[v37];
                  while (2)
                  {
                    v53 = !v36 || v66 == 0;
                    v54 = v53 || v36 >= v64;
                    v55 = !v54;
                    if (v38 < v67)
                    {
                      v39 += 8;
                      for (i = v65; ; ++i)
                      {
                        v57 = *(v39 - 8);
                        if ((v74[1] & 0x10) != 0)
                        {
                          result = db_get_string_for_id_locked(v24, *v38);
                          if (!result)
                          {
                            return result;
                          }

                          v60 = result;
                          v58 = strlen(result);
                          v59 = 4;
                        }

                        else
                        {
                          v58 = strlen(v38);
                          v59 = v58 + 1;
                          v60 = v38;
                        }

                        result = (*(a9 + 16))(a9, v60, v58, 0, 0, i, buf, v57);
                        if (buf[0])
                        {
                          return result;
                        }

                        v38 += v59;
                        if (v55)
                        {
                          break;
                        }

                        v39 += 8;
                        if (v38 >= v67)
                        {
                          return result;
                        }
                      }

                      if (*v66 >= 1)
                      {
                        if ((v70[1] & 0x10) != 0)
                        {
                          result = db_get_string_for_id_locked(v24, *v36);
                          if (!result)
                          {
                            goto LABEL_86;
                          }

                          v63 = result;
                          v61 = strlen(result);
                          v62 = 4;
                        }

                        else
                        {
                          v61 = strlen(v36);
                          v62 = v61 + 1;
                          v63 = v36;
                        }

                        v36 += v62;
                        result = (*(a9 + 16))(a9, v60, v58, v63, v61, v65, buf, v57);
                      }

LABEL_86:
                      ++v65;
                      ++v66;
                      if ((buf[0] & 1) == 0)
                      {
                        continue;
                      }
                    }

                    break;
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

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 22, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

int *SIPommesDBOGetIntValue(int *result, uint64_t *a2, int *a3, uint64_t a4, int a5, _DWORD *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 || (v8 = *a3, v8 > a5))
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(14);
    v11 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v10, v11))
    {
LABEL_6:
      result = __error();
      *result = v9;
      return result;
    }

    v12 = *a3;
    *buf = 67109376;
    v27 = v12;
    v28 = 1024;
    LODWORD(v29) = a5;
    v13 = "%d index greater than fetched attribute count %d";
    v14 = v10;
    v15 = v11;
    v16 = 14;
LABEL_5:
    _os_log_impl(&dword_1C278D000, v14, v15, v13, buf, v16);
    goto LABEL_6;
  }

  v17 = *(a4 + 8 * v8);
  if (v17)
  {
    v24 = 0;
    v25 = 0;
    result = db_get_field_by_id(result, a2, v17, &v24, &v25);
    if (result || *v24 != 7)
    {
      v9 = *__error();
      v20 = _SILogForLogForCategory(14);
      v21 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_6;
      }

      v22 = *a3;
      v23 = *a2;
      *buf = 67109376;
      v27 = v22;
      v28 = 2048;
      v29 = v23;
      v13 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
      v14 = v20;
      v15 = v21;
      v16 = 18;
      goto LABEL_5;
    }

    if (a6)
    {
      *a6 = *v25;
    }
  }

  return result;
}

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, double a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 == -1 || v10 < a6)
  {
    v25 = v7;
    v26 = v8;
    *(v9 + 24) = a6;
    v16 = *(result + 120);
    v15 = *(result + 128);
    v17 = *(result + 136);
    v18 = *(result + 144);
    v19 = *(result + 152);
    v20 = *(result + 160);
    v21 = *(result + 184);
    v22 = *(result + 80);
    v24[2] = *(result + 64);
    v24[3] = v22;
    v24[4] = *(result + 96);
    v23 = *(result + 48);
    v24[0] = *(result + 32);
    v24[1] = v23;
    v23.n128_u64[0] = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v23, v16 + 304, v15, v17, v18, v19, a2, a3, a4, a5, v20, v21, 0, 23, v24, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, _BYTE *a8)
{
  if (!a4)
  {
    v25 = v8;
    v26 = v9;
    v12 = result;
    if (a3 * 0.3 <= *(result + 120))
    {
      v15 = *(result + 128);
      v14 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 168);
      v20 = *(result + 192);
      v21 = *(result + 80);
      v24[2] = *(result + 64);
      v24[3] = v21;
      v24[4] = *(result + 96);
      v22 = *(result + 48);
      v24[0] = *(result + 32);
      v24[1] = v22;
      v22.n128_u64[0] = *(result + 176);
      result = _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 224, v14, v16, v17, v18, a2, a3, 0, a5, v19, v20, 0, 8, v24, *(result + 188), *(result + 193), HIBYTE(*(result + 193)));
    }

    if ((*(v12 + 195) & 1) == 0)
    {
      v23 = *(v12 + 120);
      if (v23 <= 5 && v23 == *(*(*(v12 + 112) + 8) + 24) + 1)
      {
        *a8 = 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 21, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 22, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, double a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 == -1 || v10 < a6)
  {
    v25 = v7;
    v26 = v8;
    *(v9 + 24) = a6;
    v16 = *(result + 120);
    v15 = *(result + 128);
    v17 = *(result + 136);
    v18 = *(result + 144);
    v19 = *(result + 152);
    v20 = *(result + 160);
    v21 = *(result + 184);
    v22 = *(result + 80);
    v24[2] = *(result + 64);
    v24[3] = v22;
    v24[4] = *(result + 96);
    v23 = *(result + 48);
    v24[0] = *(result + 32);
    v24[1] = v23;
    v23.n128_u64[0] = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v23, v16 + 304, v15, v17, v18, v19, a2, a3, a4, a5, v20, v21, 0, 23, v24, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

void SIPommesDBOFieldIterator(uint64_t a1, unsigned int a2, const void *a3, int *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v71 = a4;
  v72 = a8;
  v74 = a3;
  v75 = a5;
  v68[1] = v68;
  v83 = *MEMORY[0x1E69E9840];
  __s = 0;
  v79 = 0;
  bzero(v80, 0x3E8uLL);
  v12 = 0;
  v13 = 0;
  v76 = a2;
  *&v14 = 67109376;
  v73 = v14;
  *&v14 = 134217984;
  v69 = v14;
  v70 = a1;
  do
  {
    v15 = (a1 + 16 * v12);
    v16 = *v15;
    if (*v15 > a7)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(14);
      v19 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = v73;
        *v82 = v16;
        *&v82[4] = 1024;
        *&v82[6] = a7;
        _os_log_impl(&dword_1C278D000, v18, v19, "%d index greater than fetched attribute count %d", buf, 0xEu);
      }

      *__error() = v17;
      goto LABEL_26;
    }

    v20 = v16;
    v21 = *(a6 + 8 * v16);
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = v15[2];
    v23 = *(v15 + 12);
    if (!v74 || (v15[1] & 1) == 0)
    {
      goto LABEL_11;
    }

    v77 = 0;
    __s = v80;
    if (!doc_store_get_document(v74, *v75, v80, &v77))
    {
      if (!v77 || (v80[v77 - 1] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      v42 = v80[v77 - 1];
      if (v42 - 194 > 0x32)
      {
        if (v42 > 0xBF)
        {
          goto LABEL_60;
        }

        v57 = v80[v77 - 2];
        if ((v57 - 224) > 0x14)
        {
          if (v57 > -65)
          {
            goto LABEL_60;
          }

          v43 = v77 - 3;
          v63 = v80[v77 - 3];
          if ((v63 - 240) > 4 || ((byte_1C2BFF1EA[v57 >> 4] >> (v63 & 7)) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v56 = v57 > 0xEF;
          v58 = v57 & 7;
          v59 = &a00000000000000[v57 & 0xF];
          v60 = v42 >> 5;
          if (v56)
          {
            LOBYTE(v60) = v58;
            v59 = &byte_1C2BFF1EA[v80[v77 - 1] >> 4];
          }

          if (((*v59 >> v60) & 1) == 0)
          {
            goto LABEL_60;
          }

          v43 = v77 - 2;
        }
      }

      else
      {
        v43 = v77 - 1;
      }

      v77 = v43;
LABEL_60:
      v64 = *__error();
      v65 = _SILogForLogForCategory(8);
      v66 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = *v75;
        *buf = v69;
        *v82 = v67;
        _os_log_impl(&dword_1C278D000, v65, v66, "Get snippet from doc store for oid %lld", buf, 0xCu);
      }

      *__error() = v64;
      std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v72 + 24), __s, v77, v20, 0);
      goto LABEL_26;
    }

    v21 = *(a6 + 8 * v16);
LABEL_11:
    v24 = a6;
    if (db_get_field_by_id(v71, v75, v21, &v79, &__s) || (v25 = v79, v22 != *v79))
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(14);
      v34 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *v75;
        *buf = v73;
        *v82 = v16;
        *&v82[4] = 2048;
        *&v82[6] = v35;
        v36 = v33;
        v37 = v34;
        v38 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
        goto LABEL_21;
      }

LABEL_22:
      *__error() = v32;
      if (v23)
      {
        v39 = *(v72 + 24);
        v40 = v13;
        v41 = 0;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v26 = strlen(__s);
    if (!v26)
    {
      v32 = *__error();
      v44 = _SILogForLogForCategory(14);
      v45 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = *v75;
        *buf = v73;
        *v82 = v16;
        *&v82[4] = 2048;
        *&v82[6] = v46;
        v36 = v44;
        v37 = v45;
        v38 = "[Pommes_Suggestions]debug: Cannot get attribute %d for oid %lld.";
LABEL_21:
        _os_log_impl(&dword_1C278D000, v36, v37, v38, buf, 0x12u);
      }

      goto LABEL_22;
    }

    v27 = v26;
    if (v16 == 5)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(8);
      v30 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *v75;
        *buf = v69;
        *v82 = v31;
        _os_log_impl(&dword_1C278D000, v29, v30, "Get snippet from SDB for oid %lld", buf, 0xCu);
      }

      *__error() = v28;
      v13 = __s;
      v25 = v79;
      if (!v79)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __s;
    }

    v47 = v25[1];
    if ((v47 & 0x20) == 0)
    {
      if ((v47 & 0x10) == 0)
      {
LABEL_38:
        v39 = *(v72 + 24);
        v40 = v13;
        v41 = v27;
        goto LABEL_24;
      }

      string_for_id_locked = db_get_string_for_id_locked(v71, *(v25 + 13));
      if (string_for_id_locked)
      {
        v62 = string_for_id_locked;
        v41 = strlen(string_for_id_locked);
        v39 = *(v72 + 24);
        v40 = v62;
LABEL_24:
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(v39, v40, v41, v20, 0);
      }

LABEL_25:
      a6 = v24;
      a1 = v70;
      goto LABEL_26;
    }

    v48 = *(v25 + 2);
    if (!v48)
    {
      goto LABEL_25;
    }

    v49 = 0;
    v50 = &v13[v48];
    a6 = v24;
    a1 = v70;
    do
    {
      if ((v79[1] & 0x10) != 0)
      {
        v53 = db_get_string_for_id_locked(v71, *v13);
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v55 = strlen(v53);
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v72 + 24), v54, v55, v20, v49);
        v52 = 4;
      }

      else
      {
        v51 = strlen(v13);
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v72 + 24), v13, v51, v20, v49);
        v52 = v51 + 1;
      }

      v13 += v52;
      if (v13 >= v50)
      {
        break;
      }

      v56 = v49++ > 0x63;
    }

    while (!v56);
LABEL_26:
    ++v12;
  }

  while (v12 != v76);
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void _SIPommesSuggestionsAddPeopleCandidate(uint64_t a1, os_unfair_lock_t lock, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a3)
  {
    v8 = a5;
    if (a6 != a5)
    {
      v13 = *(a3 + 32);
      do
      {
        v14 = *(v8 + 47);
        if (v14 < 0)
        {
          if (*(v8 + 32))
          {
            goto LABEL_16;
          }
        }

        else if (*(v8 + 47))
        {
          goto LABEL_16;
        }

        if ((*(v8 + 71) & 0x8000000000000000) != 0)
        {
          if (*(v8 + 56))
          {
            goto LABEL_16;
          }
        }

        else if (*(v8 + 71))
        {
          goto LABEL_16;
        }

        if ((*(v8 + 95) & 0x8000000000000000) != 0)
        {
          if (!*(v8 + 80))
          {
            goto LABEL_56;
          }
        }

        else if (!*(v8 + 95))
        {
          goto LABEL_56;
        }

LABEL_16:
        *(v8 + 176) = 0;
        *(v8 + 171) = 0;
        v15 = 0;
        if (v13)
        {
          v16 = (*(v8 + 128) + 8);
          v17 = (*(v8 + 104) + 8);
          while (1)
          {
            v19 = *v17;
            v17 += 2;
            v18 = v19;
            v20 = *v16;
            v16 += 2;
            if (v20 <= 0 && v18 < 1)
            {
              break;
            }

            if (v13 == ++v15)
            {
              v15 = v13;
              goto LABEL_26;
            }
          }

          *(v8 + 176) = v15;
          if (v15)
          {
            *(v8 + 171) = 1;
          }
        }

LABEL_26:
        v22 = *(v8 + 96);
        v23 = v22 >= 1.0 || v15 >= v13;
        if (!v23 || (a4 & 1) != 0)
        {
          goto LABEL_56;
        }

        v24 = v22;
        v25 = *(v8 + 100);
        if (a7)
        {
          v26 = v25 + v24 * 0.9;
          if (v26 < 0.1)
          {
            return;
          }
        }

        else
        {
          v26 = v25 * 0.05 + v24 * 0.1;
          if (v26 < 0.05)
          {
            return;
          }
        }

        if (v26 == 0.0)
        {
          goto LABEL_56;
        }

        if (v14 < 0)
        {
          v14 = *(v8 + 32);
        }

        if (v14)
        {
          v27 = *(a1 + 88);
        }

        else
        {
          if (*(v8 + 71) >= 0)
          {
            v28 = *(v8 + 71);
          }

          else
          {
            v28 = *(v8 + 56);
          }

          v27 = *(a1 + 88);
          if (!v28)
          {
            v29 = *(v8 + 95);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(v8 + 80);
            }

            if (!v29)
            {
              goto LABEL_56;
            }
          }
        }

        if (v27 <= 0x3E8)
        {
          os_unfair_lock_lock(lock);
          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 72))
          {
            operator new();
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 24))
          {
            operator new();
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 48))
          {
            operator new();
          }

          os_unfair_lock_unlock(lock);
        }

LABEL_56:
        v8 += 184;
      }

      while (v8 != a6);
    }
  }
}

void std::vector<_peopleMatchInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 184;
        std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void SIPommesSpotlightMailSuggestionsProcessDBO(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned __int8 **a8, int a9, __int128 *a10, uint64_t a11)
{
  if (!a7 || !a4 || !*(a7 + 24))
  {
    return;
  }

  if (a8)
  {
    v18 = *a8;
    if (*a8)
    {
      v19 = *v18;
      if (v19 == 106)
      {
        v19 = v18[1];
        v20 = 97;
      }

      else
      {
        v20 = 106;
      }

      v21 = v20 == v19;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = 0;
LABEL_12:
  if (*(a7 + 16))
  {
    v22 = icu_search_context_create();
    if (v22)
    {
      v30 = v22;
      v82[0] = 0;
      v81 = 0;
      v23 = (*(a11 + 16))(a11, v82, &v81, &v81 + 1);
      v77 = 0;
      v78 = &v77;
      v79 = 0x2000000000;
      v80 = -1;
      v75 = xmmword_1C2BFA850;
      v76 = xmmword_1C2BFA840;
      v73 = xmmword_1C2BFA870;
      v74 = xmmword_1C2BFA860;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 0x40000000;
      v54[2] = ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
      v54[3] = &unk_1E8190D70;
      v60 = &v77;
      v61 = a3;
      v62 = a3 + 4;
      v63 = a4;
      v64 = a7;
      v65 = v30;
      v66 = v18;
      v70 = v21;
      v24 = *a10;
      v25 = a10[1];
      v26 = a10[4];
      v58 = a10[3];
      v59 = v26;
      v27 = a10[2];
      v56 = v25;
      v57 = v27;
      v55 = v24;
      v68 = a9;
      v69 = v82[0];
      v71 = HIBYTE(v81);
      v72 = v81;
      v67 = v23;
      SIPommesDBOScoredTopicFieldIterator(a1, a2, &v76, &v75, &v74, &v73, a5, a6, v54);
      v52 = xmmword_1C2BFA890;
      v53 = xmmword_1C2BFA880;
      v50 = xmmword_1C2BFA8B0;
      v51 = xmmword_1C2BFA8A0;
      v78[3] = -1;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
      v31[3] = &unk_1E8190D98;
      v37 = &v77;
      v38 = a3;
      v39 = a3 + 4;
      v40 = a4;
      v41 = a7;
      v42 = v30;
      v43 = v18;
      v47 = v21;
      v28 = a10[3];
      v34 = a10[2];
      v35 = v28;
      v36 = a10[4];
      v29 = a10[1];
      v32 = *a10;
      v33 = v29;
      v45 = a9;
      v46 = v82[0];
      v48 = HIBYTE(v81);
      v49 = v81;
      v44 = v23;
      SIPommesDBOScoredTopicFieldIterator(a1, a2, &v53, &v52, &v51, &v50, a5, a6, v31);
      icu_ctx_release();
      _Block_object_dispose(&v77, 8);
    }
  }
}

uint64_t ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 21, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

uint64_t ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(*(result + 112) + 8);
  v10 = *(v9 + 24);
  if (v10 != -1 && v10 >= a7)
  {
    if (a6)
    {
      v24 = v7;
      v25 = v8;
      v15 = *(result + 120);
      v14 = *(result + 128);
      v16 = *(result + 136);
      v17 = *(result + 144);
      v18 = *(result + 152);
      v19 = *(result + 160);
      v20 = *(result + 184);
      v21 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v21;
      v23[4] = *(result + 96);
      v22 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v22;
      v22.n128_u64[0] = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 264, v14, v16, v17, v18, a5, a6, 0, 0, v19, v20, 0, 22, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v9 + 24) = a7;
  }

  return result;
}

uint64_t _SIPommesSuggestionsProcessTopicAttribute(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, int a14, __int128 *a15, unsigned int a16, char a17, char a18)
{
  v26 = MEMORY[0x1EEE9AC00](a1);
  v27 = v25;
  v28 = v24;
  v29 = v23;
  v30 = v21;
  v32 = v31;
  v34 = v33;
  v35 = v26;
  v36 = v19;
  v83 = *MEMORY[0x1E69E9840];
  if (a13)
  {
    if (v24 && a10)
    {
      v37 = v18;
      std::string::basic_string[abi:nn200100]<0>(v61, v23);
      std::string::basic_string[abi:nn200100]<0>(__p, v27);
      v38 = a15[3];
      v79 = a15[2];
      v80 = v38;
      v81 = a15[4];
      v39 = a15[1];
      v77 = *a15;
      v78 = v39;
      _AccumulateTopicCandidates(v37, v36, v61, __p, a14, &v77, *(v30 + 24), a16, v35, v34, v32, a17, a18, 1);
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v62 & 0x80000000) == 0)
      {
        return 1;
      }

      v40 = v61[0];
    }

    else
    {
      if (!v24)
      {
        return 1;
      }

      v46 = v18;
      std::string::basic_string[abi:nn200100]<0>(v57, v23);
      std::string::basic_string[abi:nn200100]<0>(v55, "");
      v47 = a15[3];
      v79 = a15[2];
      v80 = v47;
      v81 = a15[4];
      v48 = a15[1];
      v77 = *a15;
      v78 = v48;
      _AccumulateTopicCandidates(v46, v36, v57, v55, a14, &v77, *(v30 + 24), a16, v35, v34, v32, a17, a18, 1);
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      if ((v58 & 0x80000000) == 0)
      {
        return 1;
      }

      v40 = v57[0];
    }

LABEL_22:
    operator delete(v40);
    return 1;
  }

  if (*(v21 + 32))
  {
    v41 = v22;
    v42 = v20;
    v53 = v25;
    v54 = v19;
    v52 = v18;
    v76[0] = 0;
    bzero(&v78 + 8, 0xF278uLL);
    *&v77 = *(v30 + 88);
    *(&v77 + 1) = a11;
    *&v78 = 0;
    v82 = a12;
    pommesSuggestionsTokenizeString(v42, v29, v28, v76 + 1, v76, &v77, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
    if (HIWORD(v76[0]))
    {
      *&v67 = 0;
      *&v76[1] = 0;
      if (v41 && icu_search_match())
      {
        std::string::basic_string[abi:nn200100]<0>(v74, v29);
        std::string::basic_string[abi:nn200100]<0>(v72, "");
        v43 = a15[3];
        v69 = a15[2];
        v70 = v43;
        v71 = a15[4];
        v44 = a15[1];
        v67 = *a15;
        v68 = v44;
        _AccumulateTopicCandidates(v52, v54, v74, v72, a14, &v67, *(v30 + 24), a16, v35, v34, v32, a17, a18, HIWORD(v76[0]));
        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if ((v75 & 0x80000000) == 0)
        {
          return 1;
        }

        v45 = v74;
        goto LABEL_16;
      }

      if (v53)
      {
        if (a10)
        {
          pommesSuggestionsTokenizeString(v42, v53, a10, v76 + 1, v76, &v77, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
          if (HIWORD(v76[0]))
          {
            *&v67 = 0;
            *&v76[1] = 0;
            if (v41)
            {
              if (icu_search_match())
              {
                std::string::basic_string[abi:nn200100]<0>(v65, v29);
                std::string::basic_string[abi:nn200100]<0>(v63, v53);
                v50 = a15[3];
                v69 = a15[2];
                v70 = v50;
                v71 = a15[4];
                v51 = a15[1];
                v67 = *a15;
                v68 = v51;
                _AccumulateTopicCandidates(v52, v54, v65, v63, a14, &v67, *(v30 + 24), a16, v35, v34, v32, a17, a18, HIWORD(v76[0]));
                if (v64 < 0)
                {
                  operator delete(v63[0]);
                }

                if ((v66 & 0x80000000) == 0)
                {
                  return 1;
                }

                v45 = v65;
LABEL_16:
                v40 = *v45;
                goto LABEL_22;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void _AccumulateTopicCandidates(uint64_t *a1, os_unfair_lock_t lock, uint64_t a3, uint64_t a4, int a5, unint64_t *a6, uint64_t a7, unsigned int a8, float64_t a9, float64_t a10, double a11, char a12, char a13, uint64_t a14)
{
  v52 = a8;
  os_unfair_lock_lock(lock);
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v17, v18);
  v20 = a1[1];
  if (!*&v20)
  {
    goto LABEL_24;
  }

  v21 = v19;
  v22 = vcnt_s8(v20);
  v22.i16[0] = vaddlv_u8(v22);
  v23 = v22.u32[0];
  if (v22.u32[0] > 1uLL)
  {
    v24 = v19;
    if (v19 >= *&v20)
    {
      v24 = v19 % *&v20;
    }
  }

  else
  {
    v24 = (*&v20 - 1) & v19;
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v24);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_24:
    operator new();
  }

  v44 = *&v20 - 1;
  while (1)
  {
    v28 = v27[1];
    if (v28 == v21)
    {
      break;
    }

    if (v23 > 1)
    {
      if (v28 >= *&v20)
      {
        v28 %= *&v20;
      }
    }

    else
    {
      v28 &= v44;
    }

    if (v28 != v24)
    {
      goto LABEL_24;
    }

LABEL_23:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v27 + 2, a3))
  {
    goto LABEL_23;
  }

  v29 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v17, v18);
  v30 = v29;
  if (v23 > 1)
  {
    v31 = v29;
    if (v29 >= *&v20)
    {
      v31 = v29 % *&v20;
    }
  }

  else
  {
    v31 = v44 & v29;
  }

  v32 = *(v25 + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v34 = v33[1];
    if (v34 != v30)
    {
      if (v23 > 1)
      {
        if (v34 >= *&v20)
        {
          v34 %= *&v20;
        }
      }

      else
      {
        v34 &= v44;
      }

      if (v34 != v31)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v33 + 2, a3))
    {
LABEL_39:
      v33 = *v33;
      if (!v33)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v35 = v33[5];
  ++*(v35 + 112);
  v36.f64[0] = a9;
  v36.f64[1] = a10;
  *(v35 + 88) = vbslq_s8(vcgtq_f64(v36, *(v35 + 88)), v36, *(v35 + 88));
  if (a12)
  {
    *(v35 + 80) = a12;
  }

  if (a13)
  {
    *(v35 + 81) = a13;
  }

  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v35 + 144), a8, &v52);
  v37 = *(a4 + 23);
  if (v37 < 0)
  {
    v37 = *(a4 + 8);
  }

  if (v37)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v35 + 168), a4, a4);
  }

  if (*(v35 + 136) != a5)
  {
    *(v35 + 136) = 1;
  }

  v38 = log(a6[1]);
  v39 = log(*(v35 + 8));
  if (v39 + log(*v35) >= 2 * v38)
  {
    v40 = v35;
  }

  else
  {
    v40 = a6;
  }

  v41 = *(v40 + 4);
  v43 = *(v40 + 1);
  v42 = *(v40 + 2);
  *(v35 + 48) = *(v40 + 3);
  *(v35 + 64) = v41;
  *(v35 + 16) = v43;
  *(v35 + 32) = v42;
  *v35 = *v40;
  os_unfair_lock_unlock(lock);
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t *result, unsigned int a2, _DWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    result = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (result)
    {
      v18 = result < 0;
    }

    if (!v18)
    {
      return result;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, __n128 a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *(a1 + 8);
  if (!(*a4 | *a3) && v11[1] == *v11)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    *__p = 0u;
    v40 = 0u;
    *v41 = 0u;
    *v38 = 0u;
    *v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    *buf = 0u;
    _peopleMatchInfo::_peopleMatchInfo(buf, *(**(a1 + 16) + 32));
    MEMORY[0x1C691FAE0](buf, "");
    v25 = *(a1 + 8);
    v26 = *(v25 + 8);
    if (v26 >= *(v25 + 16))
    {
      matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(v25, buf);
    }

    else
    {
      _peopleMatchInfo::_peopleMatchInfo(v26, buf);
      matched = (v27 + 184);
    }

    *(v25 + 8) = matched;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v41[1])
    {
      *&v42 = v41[1];
      operator delete(v41[1]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[1]);
    }

    if (SHIBYTE(v39[0]) < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[1]);
    }

    if (SHIBYTE(v36[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v12 = **(a1 + 40);
    v13 = *(**(a1 + 88) + 8 * v9);
    v14 = **(a1 + 16);
    v15 = **(a1 + 96);
    v16 = **(a1 + 112);
    a6.n128_u64[0] = **(a1 + 128);
    v17 = **(a1 + 136);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        _SIPommesSuggestionsProcessEmailAddress(**(a1 + 40), **(a1 + 16), v7, v8, v10, *(a1 + 120), v17, **(a1 + 112), a6);
      }

      else
      {
        v19 = **(a1 + 24);
        v20 = **(a1 + 32);
        v21 = **(a1 + 48);
        v22 = **(a1 + 56);
        v23 = ***(a1 + 72);
        v24 = **(a1 + 144);
        if (v9 == 4)
        {
          _SIPommesSuggestionsProcessRawText(v19, v20, v12, v14, v21, v22, v7, v8, 0.8, v23, v15, 0, v24, v11, 0, **(a1 + 152));
        }

        else
        {
          if (v9 != 5)
          {
LABEL_16:
            if (dword_1EBF46B04 >= 5)
            {
              v33 = *__error();
              v34 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v13;
                _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Pommes Suggestions cannot handle field %s.", buf, 0xCu);
              }

              *__error() = v33;
            }

            goto LABEL_22;
          }

          _SIPommesSuggestionsProcessRawText(v19, v20, v12, v14, v21, v22, v7, v8, 0.2, v23, v15, v8 > 0x118, v24, v11, 0, **(a1 + 152));
        }
      }

LABEL_22:
      if ((**(a1 + 160) & 1) == 0)
      {
        _SIPommesSuggestionsAddMailPeopleCandidate(**(a1 + 24), **(a1 + 32), **(a1 + 16), **(a1 + 112), **(a1 + 8), *(*(a1 + 8) + 8), 1);
        _SIPommesSuggestionsAddMailPeopleCandidate(**(a1 + 24), **(a1 + 32), **(a1 + 16), **(a1 + 112), **(a1 + 120), *(*(a1 + 120) + 8), 0);
        **(a1 + 160) = 1;
      }

      return;
    }

    v18 = **(a1 + 104);
    if (!v9)
    {
      _SIPommesSuggestionsProcessName(v12, v14, v7, v8, v15, v18, v16, v11, a6.n128_f64[0], v17, **(a1 + 152));
      return;
    }

    if (v9 != 1)
    {
      if (v9 == 2)
      {
        _SIPommesSuggestionsProcessName(v12, v14, v7, v8, v15, v18, v16, *(a1 + 120), a6.n128_f64[0], v17, **(a1 + 152));
        return;
      }

      goto LABEL_16;
    }

    v29 = **(a1 + 40);
    v30 = **(a1 + 16);
    v31 = v11;
    v32 = **(a1 + 112);

    _SIPommesSuggestionsProcessEmailAddress(v29, v30, v7, v8, v10, v31, v17, v32, a6);
  }
}

void _peopleMatchInfo::_peopleMatchInfo(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
  std::vector<CFRange>::vector[abi:nn200100](&this[4].__r_.__value_.__l.__size_, a2 + 13);
  std::vector<CFRange>::vector[abi:nn200100](&this[5].__r_.__value_.__l.__size_, a2 + 16);
  v8 = *(a2 + 152);
  *&this[7].__r_.__value_.__l.__data_ = *(a2 + 168);
  *&this[6].__r_.__value_.__r.__words[1] = v8;
}

std::string::value_type *std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(void **a1, __int128 *a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v5 = 0x1642C8590B21642;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1642C8590B21642)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  _peopleMatchInfo::_peopleMatchInfo(v6, a2);
  v7 = (184 * v2 + 184);
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 5) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v15 = *(v11 + 3);
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 3) = v15;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      *(v11 + 6) = 0;
      v16 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v16;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      v17 = *(v11 + 12);
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      *(v12 + 12) = v17;
      *(v12 + 13) = 0;
      *(v12 + 104) = *(v11 + 104);
      *(v12 + 15) = *(v11 + 15);
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v12 + 16) = 0;
      *(v12 + 17) = 0;
      *(v12 + 18) = 0;
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 18) = *(v11 + 18);
      *(v11 + 16) = 0;
      *(v11 + 17) = 0;
      *(v11 + 18) = 0;
      v18 = *(v11 + 152);
      *(v12 + 168) = *(v11 + 168);
      *(v12 + 152) = v18;
      v11 += 184;
      v12 += 184;
    }

    while (v11 != v9);
    do
    {
      std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(v8);
      v8 += 184;
    }

    while (v8 != v9);
  }

  v19 = *a1;
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v7;
}

void _SIPommesSuggestionsProcessName(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, double a9, char a10, CFArrayRef theArray)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  *v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  *__p = 0u;
  _peopleMatchInfo::_peopleMatchInfo(__p, a2[4]);
  if (a3 && *a3)
  {
    std::string::basic_string[abi:nn200100]<0>(&v17, a3);
    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v17;
    v20[0] = v18;
    if (a2[4])
    {
      operator new();
    }
  }

  else
  {
    MEMORY[0x1C691FAE0](__p, "");
  }

  v14 = *(a8 + 8);
  if (v14 >= *(a8 + 16))
  {
    matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(a8, __p);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v14, __p);
    matched = (v15 + 184);
  }

  *(a8 + 8) = matched;
  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (*(&v25 + 1))
  {
    *&v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void _SIPommesSuggestionsProcessEmailAddress(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, unint64_t a5, uint64_t *a6, char a7, int a8, __n128 a9)
{
  v19 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a6[1] - *a6) >> 3) <= a5)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a5;
        _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", buf, 0xCu);
      }

      *__error() = v14;
    }
  }

  else if (__s && *__s)
  {
    std::string::basic_string[abi:nn200100]<0>(buf, __s);
    v12 = *a6 + 184 * a5;
    if (*(v12 + 47) < 0)
    {
      operator delete(*(v12 + 24));
    }

    v13 = *buf;
    *(v12 + 40) = v18;
    *(v12 + 24) = v13;
    *(*a6 + 184 * a5 + 100) = 0;
    if (a2)
    {
      if (*(a2 + 32))
      {
        CFStringCreateWithCString(*MEMORY[0x1E695E480], "en-US", 0x8000100u);
        operator new();
      }
    }
  }

  else
  {
    v16 = 184 * a5;
    MEMORY[0x1C691FAE0](*a6 + 184 * a5 + 24, "", a9);
    *(*a6 + v16 + 100) = 0;
  }
}

void _SIPommesSuggestionsAddMailPeopleCandidate(uint64_t a1, os_unfair_lock_t lock, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a3)
  {
    return;
  }

  v8 = a5;
  if (a5 == a6)
  {
    return;
  }

  v9 = a7;
  v10 = a4;
  v11 = lock;
  v12 = a1;
  v13 = *(a3 + 32);
  v59 = (a1 + 64);
  do
  {
    v14 = *(v8 + 47);
    if (v14 < 0)
    {
      if (!*(v8 + 32))
      {
        goto LABEL_91;
      }
    }

    else if (!*(v8 + 47))
    {
      goto LABEL_91;
    }

    *(v8 + 176) = 0;
    *(v8 + 171) = 0;
    v15 = 0;
    if (v13)
    {
      v16 = (*(v8 + 128) + 8);
      v17 = (*(v8 + 104) + 8);
      while (1)
      {
        v19 = *v17;
        v17 += 2;
        v18 = v19;
        v20 = *v16;
        v16 += 2;
        if (v20 <= 0 && v18 < 1)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v22 = *(v8 + 96);
          goto LABEL_20;
        }
      }

      *(v8 + 176) = v15;
      if (v15)
      {
        *(v8 + 171) = 1;
      }
    }

    v22 = *(v8 + 96);
    if (v15 < v13 && v22 < 1.0)
    {
      goto LABEL_91;
    }

LABEL_20:
    v23 = 0.0;
    if ((v10 & 1) == 0)
    {
      v24 = v22;
      v25 = *(v8 + 100);
      if (v9)
      {
        v23 = v25 + v24 * 0.9;
        if (v23 < 0.1)
        {
          return;
        }
      }

      else
      {
        v23 = v25 * 0.05 + v24 * 0.1;
        if (v23 < 0.05)
        {
          return;
        }
      }
    }

    if (v14 < 0)
    {
      v14 = *(v8 + 32);
    }

    if (!v14 || *(v12 + 88) > 0x3E8uLL)
    {
      goto LABEL_91;
    }

    os_unfair_lock_lock(v11);
    if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>(v59, v8 + 24))
    {
      operator new();
    }

    v26 = *(v8 + 47);
    if (v26 >= 0)
    {
      v27 = (v8 + 24);
    }

    else
    {
      v27 = *(v8 + 24);
    }

    if (v26 >= 0)
    {
      v28 = *(v8 + 47);
    }

    else
    {
      v28 = *(v8 + 32);
    }

    v29 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v27, v28);
    v30 = v29;
    v31 = *(v12 + 72);
    if (!*&v31)
    {
      goto LABEL_54;
    }

    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    if (v32.u32[0] > 1uLL)
    {
      v34 = v29;
      if (v29 >= *&v31)
      {
        v34 = v29 % *&v31;
      }
    }

    else
    {
      v34 = (*&v31 - 1) & v29;
    }

    v35 = *(*v59 + 8 * v34);
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_54:
      memset(v60, 0, sizeof(v60));
      operator new();
    }

    while (1)
    {
      v37 = v36[1];
      if (v37 == v30)
      {
        break;
      }

      if (v33 > 1)
      {
        if (v37 >= *&v31)
        {
          v37 %= *&v31;
        }
      }

      else
      {
        v37 &= *&v31 - 1;
      }

      if (v37 != v34)
      {
        goto LABEL_54;
      }

LABEL_53:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v36 + 2, (v8 + 24)))
    {
      goto LABEL_53;
    }

    v38 = v36[5];
    v39 = *(v8 + 23);
    if (v39 >= 0)
    {
      v40 = v8;
    }

    else
    {
      v40 = *v8;
    }

    if (v39 >= 0)
    {
      v41 = *(v8 + 23);
    }

    else
    {
      v41 = *(v8 + 8);
    }

    v42 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v40, v41);
    v43 = *(v38 + 120);
    if (v43)
    {
      v44 = v42;
      v45 = vcnt_s8(v43);
      v45.i16[0] = vaddlv_u8(v45);
      v46 = v45.u32[0];
      if (v45.u32[0] > 1uLL)
      {
        v47 = v42;
        if (v42 >= *&v43)
        {
          v47 = v42 % *&v43;
        }
      }

      else
      {
        v47 = (*&v43 - 1) & v42;
      }

      v48 = *(*(v38 + 112) + 8 * v47);
      if (v48)
      {
        v49 = *v48;
        if (*v48)
        {
          do
          {
            v50 = v49[1];
            if (v50 == v44)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v49 + 2, v8))
              {
                v60[0] = v8;
                v54 = *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8, v60) + 10) + v23;
                v60[0] = v8;
                *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8, v60) + 10) = v54;
                v10 = a4;
                v9 = a7;
                v11 = lock;
                v12 = a1;
                if (v54 > *(v38 + 8))
                {
                  *(v38 + 8) = v54;
                  *v38 = *(v8 + 96);
                  std::string::operator=((v38 + 64), v8);
LABEL_79:
                  *(v38 + 26) = 0;
                }

                goto LABEL_80;
              }
            }

            else
            {
              if (v46 > 1)
              {
                if (v50 >= *&v43)
                {
                  v50 %= *&v43;
                }
              }

              else
              {
                v50 &= *&v43 - 1;
              }

              if (v50 != v47)
              {
                break;
              }
            }

            v49 = *v49;
          }

          while (v49);
        }
      }
    }

    v60[0] = v8;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8, v60) + 10) = v23;
    v10 = a4;
    v9 = a7;
    v11 = lock;
    v12 = a1;
    if (*(v38 + 8) < v23)
    {
      *(v38 + 8) = v23;
      *v38 = *(v8 + 96);
      goto LABEL_79;
    }

LABEL_80:
    v51 = *(v8 + 152);
    if (v51 > 0.000000100000001)
    {
      v52 = *(v38 + 16);
      if (v52 <= 0.000000100000001 || v51 < v52)
      {
        *(v38 + 16) = v51;
        std::string::operator=((v38 + 64), v8);
      }
    }

    *(v38 + 24) = (*(v38 + 24) | *(v8 + 168)) & 1;
    *(v38 + 25) = (*(v38 + 25) | *(v8 + 170)) & 1;
    if (v9)
    {
      *(v38 + 27) = 1;
    }

    else
    {
      *(v38 + 28) = 1;
    }

    os_unfair_lock_unlock(v11);
LABEL_91:
    v8 += 184;
  }

  while (v8 != a6);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::__emplace_unique_key_args<std::string,std::string&,std::unique_ptr<_peopleCandidate>>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  v10 = v9;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_24;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *&v11)
    {
      v14 = v9 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v9;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_peopleCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _matchOnce(uint64_t a1, char *__s, int a3, void *a4)
{
  if (a3)
  {
    *a4 = 0;
    v5 = strlen(__s);
    result = 1;
  }

  else
  {
    result = icu_search_match();
    v5 = 0;
    *a4 = 0;
  }

  a4[1] = v5;
  return result;
}

void std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

uint64_t *std::vector<CFRange>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CFRange>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 4);
  }

  return a1;
}

__n128 std::__function::__func<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ADF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  result = *(a1 + 104);
  v7 = *(a1 + 120);
  v8 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = v8;
  *(a2 + 120) = v7;
  *(a2 + 104) = result;
  return result;
}

void std::__function::__func<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0,std::allocator<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, const char **a2, uint64_t *a3, void *a4, __n128 a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(**(a1 + 72) + 8 * *a4);
  v6 = *a2;
  v7 = *a3;
  v8 = **(a1 + 8);
  v9 = **(a1 + 16);
  v10 = **(a1 + 24);
  v11 = **(a1 + 32);
  v12 = **(a1 + 40);
  v13 = **(a1 + 80);
  v14 = **(a1 + 88);
  switch(*a4)
  {
    case 5:
      v23 = ***(a1 + 56);
      memset(buffer, 0, 24);
      _SIPommesSuggestionsProcessRawText(v8, v9, v10, v11, 0, v12, v6, v7, 0.2, v23, v13, 0, 0, buffer, 1, 0);
      *at = buffer;
      std::vector<_peopleMatchInfo>::__destroy_vector::operator()[abi:nn200100](at);
      return;
    case 0xALL:
      v16 = 11;
      goto LABEL_14;
    case 0xBLL:
      v16 = 12;
LABEL_14:
      v49 = v16;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 1061997773;
      goto LABEL_17;
    case 0xCLL:
      v49 = 16;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 1063675494;
      goto LABEL_17;
    case 0xELL:
      v15 = 17;
      goto LABEL_3;
    case 0x11:
      v49 = 18;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 1050253722;
      goto LABEL_17;
    case 0x15:
      v15 = 13;
      goto LABEL_3;
    case 0x16:
      v49 = 15;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 1.0;
      goto LABEL_17;
    case 0x17:
    case 0x19:
    case 0x1ALL:
      v49 = 9;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 0.5;
      goto LABEL_17;
    case 0x18:
      v15 = 14;
      goto LABEL_3;
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
      v15 = 9;
LABEL_3:
      v49 = v15;
      v48 = **(a1 + 88);
      a5.n128_u32[0] = 1058642330;
LABEL_17:
      _SIPommesSuggestionsProcessPhotoAttribute(a5, v8, v9, v10, v11, v12, v6, v7, v13, v48, v49);
      return;
    case 0x29:
      bzero(buffer, 0x3E8uLL);
      v32 = *v6;
      v33 = CFLocaleCopyCurrent();
      if (!v33)
      {
        goto LABEL_47;
      }

      v34 = v33;
      v35 = CFDateFormatterCreate(0, v33, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
      if (v35)
      {
        v36 = v35;
        v37 = CFDateFormatterCopyProperty(v35, *MEMORY[0x1E695E5C0]);
        if (v37)
        {
          theArraya = v37;
          Count = CFArrayGetCount(v37);
          v54 = 0;
          if (v32 && Count >= v32)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArraya, (v32 - 1));
            if (ValueAtIndex)
            {
              v40 = ValueAtIndex;
              CString = CFStringGetCString(ValueAtIndex, buffer, 1000, 0x8000100u);
              v42 = buffer;
              if (!CString)
              {
                v42 = 0;
              }

              v54 = v42;
              CFRelease(v40);
            }

            else
            {
              v54 = 0;
            }
          }

          CFRelease(theArraya);
          v28 = v54;
        }

        else
        {
          v28 = 0;
        }

        CFRelease(v36);
        CFRelease(v34);
        if (v28)
        {
          v43 = strlen(v28);
          v45 = 19;
          goto LABEL_55;
        }
      }

      else
      {
        CFRelease(v34);
      }

LABEL_47:
      v17 = *__error();
      v46 = _SILogForLogForCategory(14);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *at = 136315394;
      *&at[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
      v58 = 1024;
      v59 = 1910;
      v19 = "%s:%d: converting month to string returned null";
      v20 = at;
      v21 = v46;
      v22 = 18;
      goto LABEL_59;
    case 0x2ALL:
      bzero(buffer, 0x3E8uLL);
      theArray = *v6;
      v24 = CFLocaleCopyCurrent();
      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = v24;
      v26 = CFDateFormatterCreate(0, v24, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
      if (v26)
      {
        v27 = v26;
        v28 = CFStringCreateWithCString(0, "y", 0x8000100u);
        CFDateFormatterSetFormat(v27, v28);
        if (v28)
        {
          *at = 0;
          v29 = CFCalendarCopyCurrent();
          v53 = v28;
          if (v29)
          {
            v52 = v29;
            if (CFCalendarComposeAbsoluteTime(v29, at, "y", theArray) && (v30 = CFDateCreate(0, *at)) != 0)
            {
              v51 = v30;
              StringWithDate = CFDateFormatterCreateStringWithDate(0, v27, v30);
              if (StringWithDate)
              {
                v28 = buffer;
                cf = StringWithDate;
                if (!CFStringGetCString(StringWithDate, buffer, 1000, 0x8000100u))
                {
                  v28 = 0;
                }

                CFRelease(cf);
              }

              else
              {
                v28 = 0;
              }

              CFRelease(v51);
            }

            else
            {
              v28 = 0;
            }

            CFRelease(v52);
          }

          else
          {
            v28 = 0;
          }

          CFRelease(v53);
        }

        CFRelease(v27);
        CFRelease(v25);
        if (v28)
        {
          v43 = strlen(v28);
          v45 = 20;
LABEL_55:
          v44.n128_u32[0] = 1058642330;
          _SIPommesSuggestionsProcessPhotoAttribute(v44, v8, v9, v10, v11, v12, v28, v43, v13, v14, v45);
          return;
        }
      }

      else
      {
        CFRelease(v25);
      }

LABEL_56:
      v17 = *__error();
      v47 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *at = 136315650;
        *&at[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
        v58 = 1024;
        v59 = 1920;
        v60 = 1024;
        v61 = theArray;
        v19 = "%s:%d: converting year to string returned null for %d";
        v20 = at;
        v21 = v47;
        v22 = 24;
LABEL_59:
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, v19, v20, v22);
      }

LABEL_57:
      *__error() = v17;
      return;
    default:
      v17 = *__error();
      v18 = _SILogForLogForCategory(14);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buffer = 136315650;
      *&buffer[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
      *&buffer[12] = 1024;
      *&buffer[14] = 1945;
      *&buffer[18] = 2080;
      *&buffer[20] = v5;
      v19 = "%s:%d: Pommes Photos Suggestions cannot handle field %s";
      v20 = buffer;
      v21 = v18;
      v22 = 28;
      goto LABEL_59;
  }
}

void _SIPommesSuggestionsProcessPhotoAttribute(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11)
{
  v19 = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  if (*(v14 + 32))
  {
    v20 = *&v19;
    v21 = v18;
    v22 = v17;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v28 = v11;
    v31 = 0;
    bzero(v35, 0xF278uLL);
    v34[0] = *(v25 + 88);
    v34[1] = v21;
    v34[2] = 0;
    v35[62064] = a10;
    pommesSuggestionsTokenizeString(v26, v23, v22, &v31 + 1, &v31, v34, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
    if (HIWORD(v31))
    {
      v32 = 0;
      v33 = 0;
      if (v24)
      {
        if (icu_search_match())
        {
          std::string::basic_string[abi:nn200100]<0>(__p, v23);
          _AccumulatePhotosCandidates((v28 + 104), v27, __p, a11, v20);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

__n128 std::__function::__func<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0,std::allocator<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ADB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, __n128 a6)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = *a2;
    v9 = *a4;
    if (*a4 > 20)
    {
      if (v9 == 21)
      {
        v16 = **(a1 + 40);
        a6.n128_u64[0] = **(a1 + 112);
        v17 = *(a1 + 16);
        v18 = **(a1 + 104);
        v19 = **(a1 + 128);
        v20 = **(a1 + 32);
        v21 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v20, v16, v8, v7, v21, v17, v18, v19, a6);
      }

      else if (v9 == 22)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 19)
    {
      a6.n128_u64[0] = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(a6, *(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v8, v7, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 20)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

void _SIPommesSuggestionsProcessContactAttribute(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10;
  v25 = v24;
  v27 = v26;
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *v46 = 0u;
  v43 = 0u;
  *v44 = 0u;
  *v41 = 0u;
  *v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  *__p = 0u;
  _peopleMatchInfo::_peopleMatchInfo(__p, *(v21 + 32));
  if (v18 && *v18)
  {
    v28 = *(v22 + 32);
    if (v28)
    {
      v37 = 0;
      bzero(&v52, 0xF278uLL);
      v51[0] = *(v22 + 88);
      v51[1] = v14;
      v51[2] = 0;
      v53[20022] = v12;
      pommesSuggestionsTokenizeString(v25, v18, v16, &v37 + 1, &v37, v51, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
      if (!HIWORD(v37))
      {
        goto LABEL_19;
      }

      *&v35 = 0;
      v50 = 0;
      if (!v20 || !icu_search_match())
      {
        goto LABEL_19;
      }

      std::string::basic_string[abi:nn200100]<0>(&v35, v18);
      if (SHIBYTE(v39[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v35;
      v39[0] = v36;
      if (!HIWORD(v37))
      {
        std::vector<_peopleMatchInfo>::emplace_back<_peopleMatchInfo const&>(v27, __p);
        goto LABEL_19;
      }

      v29 = unigramsMatch(v22, v14, v53, 0, 0, &v44[1], 0, 0, 0);
      *&v35 = 0;
      v50 = 0;
      if (icu_search_match())
      {
        v31 = 1.0;
        if (v28 == HIWORD(v37))
        {
          v31 = 2.0;
        }

        *v44 = v31;
      }

      else
      {
        LOWORD(v30) = HIWORD(v37);
        *v44 = v29 / fmaxf(v28, v30);
        if (*v44 < 1.0)
        {
LABEL_35:
          *(&v47 + 1) = v23;
          BYTE8(v48) = a10;
          goto LABEL_15;
        }
      }

      BYTE10(v48) = 1;
      goto LABEL_35;
    }
  }

  else
  {
    MEMORY[0x1C691FAE0](__p, "");
  }

LABEL_15:
  v32 = *(v27 + 8);
  if (v32 >= *(v27 + 16))
  {
    matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(v27, __p);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v32, __p);
    matched = (v33 + 184);
  }

  *(v27 + 8) = matched;
LABEL_19:
  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44[1])
  {
    *&v45 = v44[1];
    operator delete(v44[1]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  if (SHIBYTE(v42[0]) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  if (SHIBYTE(v39[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void _SIPommesSuggestionsProcessPhoneNumber(char *__s, unint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3) <= a2)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v7 = *__error();
      v8 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v9) = 134217984;
        *(&v9 + 4) = a2;
        _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", &v9, 0xCu);
      }

      *__error() = v7;
    }
  }

  else
  {
    if (!__s || !*__s)
    {

      JUMPOUT(0x1C691FAE0);
    }

    std::string::basic_string[abi:nn200100]<0>(&v9, __s);
    v5 = *a3 + 184 * a2;
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    v6 = v9;
    *(v5 + 64) = v10;
    *(v5 + 48) = v6;
  }
}

void _SIPommesSuggestionsProcessContactIdentifier(char *__s, unint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3) <= a2)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v7 = *__error();
      v8 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v9) = 134217984;
        *(&v9 + 4) = a2;
        _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", &v9, 0xCu);
      }

      *__error() = v7;
    }
  }

  else
  {
    if (!__s || !*__s)
    {

      JUMPOUT(0x1C691FAE0);
    }

    std::string::basic_string[abi:nn200100]<0>(&v9, __s);
    v5 = *a3 + 184 * a2;
    if (*(v5 + 95) < 0)
    {
      operator delete(*(v5 + 72));
    }

    v6 = v9;
    *(v5 + 88) = v10;
    *(v5 + 72) = v6;
  }
}

std::string::value_type *std::vector<_peopleMatchInfo>::emplace_back<_peopleMatchInfo const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(a1, a2);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v3, a2);
    result = (v4 + 184);
  }

  *(a1 + 8) = result;
  return result;
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AD68;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, __n128 a6)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = *a2;
    v9 = *a4;
    if (*a4 > 16)
    {
      if (v9 == 17)
      {
        v16 = **(a1 + 40);
        a6.n128_u64[0] = **(a1 + 112);
        v17 = *(a1 + 16);
        v18 = **(a1 + 104);
        v19 = **(a1 + 128);
        v20 = **(a1 + 32);
        v21 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v20, v16, v8, v7, v21, v17, v18, v19, a6);
      }

      else if (v9 == 18)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 15)
    {
      a6.n128_u64[0] = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(a6, *(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v8, v7, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 16)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AD20;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

void std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v5 = a5;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v8, &v7, &v6, &v5);
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_function_call[abi:nn200100]();
  }
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, __n128 a6)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = *a2;
    v9 = *a4;
    if (*a4 > 12)
    {
      if (v9 == 13)
      {
        v16 = **(a1 + 40);
        a6.n128_u64[0] = **(a1 + 112);
        v17 = *(a1 + 16);
        v18 = **(a1 + 104);
        v19 = **(a1 + 128);
        v20 = **(a1 + 32);
        v21 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v20, v16, v8, v7, v21, v17, v18, v19, a6);
      }

      else if (v9 == 14)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 11)
    {
      a6.n128_u64[0] = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(a6, *(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v8, v7, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 12)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ACD8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

uint64_t ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = result;
  v10 = *(*(result + 112) + 8);
  v11 = *(v10 + 24);
  if (v11 != -1 && v11 >= a6)
  {
    if (a5 && (*(*(*(result + 120) + 8) + 24) & 1) != 0)
    {
      v23 = *(result + 144);
      v22 = *(result + 152);
      v24 = *(result + 160);
      v25 = *(result + 168);
      v26 = *(result + 176);
      v27 = *(result + 184);
      v28 = *(result + 212);
      v29 = *(result + 80);
      v33 = *(result + 64);
      v34 = v29;
      v35 = *(result + 96);
      v30 = *(result + 48);
      v31 = *(result + 32);
      v32 = v30;
      v30.n128_u64[0] = *(result + 192);
      return _SIPommesSuggestionsProcessTopicAttribute(v30, v23 + 144, v22, v24, v25, v26, a2, a3, a4, a5, v27, v28, 1, 6, &v31, *(result + 208), *(result + 213), HIBYTE(*(result + 213)));
    }
  }

  else
  {
    *(v10 + 24) = a6;
    if (a3 * 0.3 <= *(result + 136))
    {
      v14 = *(result + 144);
      v13 = *(result + 152);
      v15 = *(result + 160);
      v16 = *(result + 168);
      v17 = *(result + 176);
      v18 = *(result + 184);
      v19 = *(result + 212);
      v20 = *(result + 80);
      v33 = *(result + 64);
      v34 = v20;
      v35 = *(result + 96);
      v21 = *(result + 48);
      v31 = *(result + 32);
      v32 = v21;
      v21.n128_u64[0] = *(result + 192);
      result = _SIPommesSuggestionsProcessTopicAttribute(v21, v14 + 144, v13, v15, v16, v17, a2, a3, a4, a5, v18, v19, 0, 6, &v31, *(result + 208), *(result + 213), HIBYTE(*(result + 213)));
      *(*(*(v9 + 120) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 == -1 || v9 < a6)
  {
    v24 = v6;
    v25 = v7;
    *(v8 + 24) = a6;
    v15 = *(result + 120);
    v14 = *(result + 128);
    v16 = *(result + 136);
    v17 = *(result + 144);
    v18 = *(result + 152);
    v19 = *(result + 160);
    v20 = *(result + 184);
    v21 = *(result + 80);
    v23[2] = *(result + 64);
    v23[3] = v21;
    v23[4] = *(result + 96);
    v22 = *(result + 48);
    v23[0] = *(result + 32);
    v23[1] = v22;
    v22.n128_u64[0] = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v22, v15 + 304, v14, v16, v17, v18, a2, a3, a4, a5, v19, v20, 0, 23, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

uint64_t std::__function::__func<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = **(result + 8);
  if (v5 >= 5)
  {
    v6 = *a3;
    if (*a3 * 0.3 <= v5)
    {
      v19 = v3;
      v20 = v4;
      v7 = *a2;
      v8 = **(result + 32);
      v9 = **(result + 40);
      v10 = **(result + 48);
      v11 = **(result + 56);
      v12 = **(result + 64);
      v13 = **(result + 72);
      v14 = *(result + 88);
      v15 = **(result + 80);
      v16 = v14[3];
      v18[2] = v14[2];
      v18[3] = v16;
      v18[4] = v14[4];
      v17 = v14[1];
      v18[0] = *v14;
      v18[1] = v17;
      v17.n128_u64[0] = **(result + 128);
      return _SIPommesSuggestionsProcessTopicAttribute(v17, v8 + 184, v9, v10, v11, v12, v7, v6, 0, 0, v13, v15, 0, 6, v18, **(result + 104), **(result + 112), **(result + 120));
    }
  }

  return result;
}

__n128 std::__function::__func<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AC90;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

void *std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x1C691FBF0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    ++v6;
    std::string::push_back(a2, v7);
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void joinStringArrayWithDelim(uint64_t *a1, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::string::append(this, v7, v8);
    v4 = a1[1];
    if (v5 != v4 - 24)
    {
      std::string::push_back(this, 32);
      v4 = a1[1];
    }

    v5 += 24;
  }
}

BOOL std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  if (a3 != a4 && a1 != a2)
  {
    while (1)
    {
      v5 = a3[4];
      v6 = a1[4];
      if (v5 < v6)
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = a3[1];
        if (v8)
        {
          do
          {
            v7 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v7 = a3[2];
            v9 = *v7 == a3;
            a3 = v7;
          }

          while (!v9);
        }
      }

      else
      {
        v7 = a3;
      }

      v10 = a1[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = a1[2];
          v9 = *v11 == a1;
          a1 = v11;
        }

        while (!v9);
      }

      v4 = v7 == a4;
      if (v7 != a4)
      {
        a1 = v11;
        a3 = v7;
        if (v11 != a2)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

double std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v12, v7 + 4);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

uint64_t std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(*a1, *(a1 + 8), *a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void dedupSuggestions(void ***a1, uint64_t a2)
{
  v169 = *MEMORY[0x1E69E9840];
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    do
    {
      std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v150, v2);
      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(*a1, a1[1], (a1[1] - *a1) >> 5);
      v4 = a1[1];
      v5 = v4 - 4;
      if (*(v4 - 9) < 0)
      {
        operator delete(*v5);
      }

      a1[1] = v5;
      v2 = *a1;
    }

    while (*a1 != v5);
    v6 = v150;
    v7 = v151;
    v8 = (v151 - 2);
    if (v150 != v151 && v8 > v150)
    {
      do
      {
        v10 = *(v6 + 2);
        v11 = *v6;
        v12 = *(v8 + 16);
        *v6 = *v8;
        *(v6 + 2) = v12;
        *v8 = v11;
        *(v8 + 16) = v10;
        v13 = *(v6 + 3);
        *(v6 + 3) = *(v8 + 24);
        *(v8 + 24) = v13;
        v6 += 2;
        v8 -= 32;
      }

      while (v6 < v8);
      v6 = v150;
      v7 = v151;
    }
  }

  v147 = 0;
  v148 = 0;
  v149 = 0;
  v14 = 0uLL;
  v144 = 0u;
  v145 = 0u;
  v146 = 1065353216;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  if (v7 == v6)
  {
    memset(&v154, 0, 32);
    v154.__end_cap_.__value_ = 1065353216;
    goto LABEL_187;
  }

  v15 = 0;
  v120 = MEMORY[0x1E69E5568] + 24;
  v119 = MEMORY[0x1E69E5568] + 64;
  v116 = *MEMORY[0x1E69E54E0];
  v115 = *(MEMORY[0x1E69E54E0] + 24);
  v117 = *(MEMORY[0x1E69E54E0] + 16);
  v118 = *(MEMORY[0x1E69E54E0] + 8);
  do
  {
    v16 = *(&v6[2 * v15 + 1] + 1);
    memset(&v137, 0, sizeof(v137));
    v122 = v16;
    v123 = v15;
    v17 = (v16 + 16);
    memset(&v136, 0, sizeof(v136));
    v168 = 0;
    v167 = v14;
    v166 = v14;
    v165 = v14;
    v164 = v14;
    v163 = v14;
    v162 = v14;
    v161 = v14;
    v160 = v14;
    v159[1] = *(&v14 + 1);
    *&v158[80] = v14;
    *&v158[64] = v14;
    *&v158[48] = v14;
    *&v158[32] = v14;
    *&v158[16] = v14;
    *v158 = v14;
    *&buf.__r_.__value_.__r.__words[1] = v14;
    v159[0] = v119;
    buf.__r_.__value_.__r.__words[0] = v118;
    *(buf.__r_.__value_.__r.__words + *(v118 - 24)) = v117;
    buf.__r_.__value_.__l.__size_ = 0;
    v18 = (&buf + *(buf.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v18, &buf.__r_.__value_.__r.__words[2]);
    v18[1].__vftable = 0;
    v18[1].__fmtflags_ = -1;
    buf.__r_.__value_.__r.__words[0] = v120;
    v159[0] = v119;
    v19 = MEMORY[0x1E69E5538] + 16;
    buf.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
    MEMORY[0x1C691FE40](v158);
    memset(&v158[8], 0, 80);
    v20 = MEMORY[0x1E69E5548] + 16;
    buf.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    *&v158[88] = 8;
    std::string::operator=(&v158[56], v17);
    std::stringbuf::__init_buf_ptrs[abi:nn200100](&buf.__r_.__value_.__r.__words[2]);
    v155 = 0uLL;
    v156 = 0;
    while (1)
    {
      std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, &v155, 0x20u);
      if ((v158[*(buf.__r_.__value_.__r.__words[0] - 24) + 8] & 5) != 0)
      {
        break;
      }

      if (v156 >= 0)
      {
        v21 = &v155;
      }

      else
      {
        v21 = v155;
      }

      v22 = PRPommesStemWordWithCString(v21, 100, 1);
      if (v22)
      {
        v23 = v22;
        std::string::basic_string[abi:nn200100]<0>(&__p, v22);
        size = v136.__r_.__value_.__l.__size_;
        if (v136.__r_.__value_.__l.__size_ >= v136.__r_.__value_.__r.__words[2])
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3);
          v27 = v26 + 1;
          if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_197;
          }

          if (0x5555555555555556 * ((v136.__r_.__value_.__r.__words[2] - v136.__r_.__value_.__r.__words[0]) >> 3) > v27)
          {
            v27 = 0x5555555555555556 * ((v136.__r_.__value_.__r.__words[2] - v136.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v136.__r_.__value_.__r.__words[2] - v136.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v28 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v28 = v27;
          }

          v154.__end_cap_.__value_ = &v136;
          if (v28)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v28);
          }

          v29 = 8 * ((v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3);
          v30 = *&__p.__r_.__value_.__l.__data_;
          *(v29 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v29 = v30;
          memset(&__p, 0, sizeof(__p));
          v31 = (24 * v26 - (v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]));
          memcpy(v31, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]);
          v32 = v136.__r_.__value_.__r.__words[0];
          v33 = v136.__r_.__value_.__r.__words[2];
          v136.__r_.__value_.__r.__words[0] = v31;
          *&v136.__r_.__value_.__r.__words[1] = 24 * v26 + 24;
          v154.__end_ = v32;
          v154.__end_cap_.__value_ = v33;
          v154.__begin_ = v32;
          v154.__first_ = v32;
          std::__split_buffer<std::string>::~__split_buffer(&v154);
          v136.__r_.__value_.__l.__size_ = 24 * v26 + 24;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v25 = *&__p.__r_.__value_.__l.__data_;
          *(v136.__r_.__value_.__l.__size_ + 16) = *(&__p.__r_.__value_.__l + 2);
          *size = v25;
          v136.__r_.__value_.__l.__size_ = size + 24;
        }

        free(v23);
      }

      else
      {
        std::vector<std::string>::push_back[abi:nn200100](&v136, &v155);
      }
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    buf.__r_.__value_.__r.__words[0] = v116;
    *(buf.__r_.__value_.__r.__words + *(v116 - 24)) = v115;
    buf.__r_.__value_.__r.__words[2] = v20;
    if ((v158[79] & 0x80000000) != 0)
    {
      operator delete(*&v158[56]);
    }

    buf.__r_.__value_.__r.__words[2] = v19;
    std::locale::~locale(v158);
    std::istream::~istream();
    MEMORY[0x1C691FE80](v159);
    joinStringArrayWithDelim(&v136, &v137);
    v34 = *__error();
    v35 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v122 + 39) < 0)
      {
        v17 = v17->__r_.__value_.__r.__words[0];
      }

      v36 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v137.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v36;
      _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: stemmed '%s' -> '%s'", &buf, 0x16u);
    }

    *__error() = v34;
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v137;
    }

    else
    {
      v37 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v137.__r_.__value_.__l.__size_;
    }

    v39 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v37, v38);
    v40 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v41 = v39;
      v42 = vcnt_s8(*(&v144 + 8));
      v42.i16[0] = vaddlv_u8(v42);
      v43 = v42.u32[0];
      if (v42.u32[0] > 1uLL)
      {
        v44 = v39;
        if (v39 >= *(&v144 + 1))
        {
          v44 = v39 % *(&v144 + 1);
        }
      }

      else
      {
        v44 = (*(&v144 + 1) - 1) & v39;
      }

      v114 = v144;
      v45 = *(v144 + 8 * v44);
      if (v45)
      {
        v46 = *v45;
        if (*v45)
        {
          v121 = *(&v144 + 1) - 1;
          do
          {
            v47 = v46[1];
            if (v47 == v41)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v46 + 2, &v137))
              {
                v51 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v37, v38);
                v52 = v51;
                if (v43 > 1)
                {
                  v53 = v51;
                  if (v51 >= v40)
                  {
                    v53 = v51 % v40;
                  }
                }

                else
                {
                  v53 = v121 & v51;
                }

                v54 = *(v114 + 8 * v53);
                if (!v54 || (v55 = *v54) == 0)
                {
LABEL_92:
                  operator new();
                }

                while (1)
                {
                  v56 = v55[1];
                  if (v56 == v52)
                  {
                    if (std::equal_to<std::string>::operator()[abi:nn200100](v55 + 2, &v137))
                    {
                      v57 = v55[5];
                      v58 = *(v122 + 39);
                      v48 = v123;
                      if ((v58 & 0x8000000000000000) != 0)
                      {
                        v58 = *(v122 + 24);
                      }

                      v59 = v147[4 * v57 + 3];
                      v60 = *(v59 + 39);
                      if ((v60 & 0x8000000000000000) != 0)
                      {
                        v60 = v59[3];
                      }

                      if (v58 < v60)
                      {
                        std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v147, &v150[2 * v123]);
                        std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v141, &v136);
                        std::vector<std::string>::push_back[abi:nn200100](&v138, &v137);
                        v62 = v147;
                        v61 = v148;
                        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&buf, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          buf = v137;
                        }

                        *v158 = ((v61 - v62) >> 5) - 1;
                        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(&v144, &buf, &buf);
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        v63 = v148;
                        v64 = &v147[4 * v57];
                        if (v64 + 4 != v148)
                        {
                          do
                          {
                            if (*(v64 + 23) < 0)
                            {
                              operator delete(*v64);
                            }

                            *v64 = *(v64 + 2);
                            v65 = v64[6];
                            v66 = v64[7];
                            *(v64 + 32) = 0;
                            v67 = v64 + 4;
                            *(v64 + 55) = 0;
                            v64[2] = v65;
                            v64[3] = v66;
                            v68 = v64 + 8;
                            v64 += 4;
                          }

                          while (v68 != v63);
                          v63 = v148;
                          v64 = v67;
                        }

                        while (v63 != v64)
                        {
                          v69 = *(v63 - 9);
                          v63 -= 4;
                          if (v69 < 0)
                          {
                            operator delete(*v63);
                          }
                        }

                        v148 = v64;
                        v70 = 3 * v57;
                        v71 = v142;
                        v72 = (v141 + 24 * v57);
                        if (&v72[1] != v142)
                        {
                          v73 = v72;
                          do
                          {
                            std::vector<std::string>::__vdeallocate(v72);
                            v74 = *&v73[1].__begin_;
                            ++v73;
                            *&v72->__begin_ = v74;
                            v72->__end_cap_.__value_ = v72[1].__end_cap_.__value_;
                            v72[1].__end_ = 0;
                            v72[1].__end_cap_.__value_ = 0;
                            v73->__begin_ = 0;
                            v75 = v72 + 2;
                            v72 = v73;
                          }

                          while (v75 != v71);
                          v72 = v73;
                          v48 = v123;
                        }

                        while (v71 != v72)
                        {
                          v71 -= 24;
                          buf.__r_.__value_.__r.__words[0] = v71;
                          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
                        }

                        v76 = 8 * v70;
                        v142 = v72;
                        v77 = v139;
                        v78 = v138 + v76;
                        if ((v138 + v76 + 24) != v139)
                        {
                          do
                          {
                            if (*(v78 + 23) < 0)
                            {
                              operator delete(*v78);
                            }

                            *v78 = *(v78 + 24);
                            *(v78 + 16) = *(v78 + 40);
                            *(v78 + 47) = 0;
                            v79 = (v78 + 48);
                            *(v78 + 24) = 0;
                            v78 += 24;
                          }

                          while (v79 != v77);
                          v77 = v139;
                        }

                        while (v77 != v78)
                        {
                          v80 = *(v77 - 1);
                          v77 -= 3;
                          if (v80 < 0)
                          {
                            operator delete(*v77);
                          }
                        }

                        v139 = v78;
                      }

                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    if (v43 > 1)
                    {
                      if (v56 >= v40)
                      {
                        v56 %= v40;
                      }
                    }

                    else
                    {
                      v56 &= v121;
                    }

                    if (v56 != v53)
                    {
                      goto LABEL_92;
                    }
                  }

                  v55 = *v55;
                  if (!v55)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }

            else
            {
              if (v43 > 1)
              {
                if (v47 >= v40)
                {
                  v47 %= v40;
                }
              }

              else
              {
                v47 &= v121;
              }

              if (v47 != v44)
              {
                break;
              }
            }

            v46 = *v46;
          }

          while (v46);
        }
      }
    }

    v48 = v123;
    std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v147, &v150[2 * v123]);
    std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v141, &v136);
    std::vector<std::string>::push_back[abi:nn200100](&v138, &v137);
    v50 = v147;
    v49 = v148;
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v137;
    }

    *v158 = ((v49 - v50) >> 5) - 1;
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(&v144, &buf, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_73:
    buf.__r_.__value_.__r.__words[0] = &v136;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    v15 = v48 + 1;
    v6 = v150;
    v14 = 0uLL;
  }

  while (v15 < (v151 - v150) >> 5);
  v81 = v147;
  memset(&v154, 0, 32);
  v154.__end_cap_.__value_ = 1065353216;
  if (v148 == v147)
  {
    goto LABEL_187;
  }

  v82 = 0;
  do
  {
    v83 = v81[4 * v82 + 3];
    memset(&__p, 0, sizeof(__p));
    v84 = (v138 + 24 * v82);
    if (*(v84 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v84, *(v84 + 1));
    }

    else
    {
      v85 = *v84;
      __p.__r_.__value_.__r.__words[2] = *(v84 + 2);
      *&__p.__r_.__value_.__l.__data_ = v85;
    }

    memset(&v137, 0, sizeof(v137));
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v137, *(v141 + 24 * v82), *(v141 + 24 * v82 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v141 + 24 * v82 + 8) - *(v141 + 24 * v82)) >> 3));
    if (std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v154.__first_, v154.__begin_, &__p))
    {
      v133[0] = 0;
      v133[1] = 0;
      v132 = v133;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v132, v83[5], v83 + 6);
      buf.__r_.__value_.__r.__words[0] = &__p;
      v86 = std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, &__p, &buf);
      v131[0] = 0;
      v131[1] = 0;
      v130 = v131;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v130, v86[5], v86 + 6);
      v87 = v130;
      v88 = v132;
      if (std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(v130, v131, v132, v133) || std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(v88, v133, v87, v131))
      {
        std::__tree<unsigned int>::destroy(v131[0]);
        std::__tree<unsigned int>::destroy(v133[0]);
      }

      else
      {
        v91 = &v155;
        v128 = 0;
        v129 = 0;
        v127 = &v128;
        std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v127, v83[5], v83 + 6);
        buf.__r_.__value_.__r.__words[0] = &__p;
        v92 = std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, &__p, &buf);
        v125 = 0;
        v126 = 0;
        v124 = &v125;
        std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v124, v92[5], v92 + 6);
        *(&v155 + 1) = 0;
        v156 = 0;
        *&v155 = &v155 + 8;
        v93 = v127;
        v94 = v124;
        v136.__r_.__value_.__r.__words[0] = &v155;
        v136.__r_.__value_.__l.__size_ = &v155 + 8;
        if (v127 == &v128)
        {
          v104 = &v155 + 8;
LABEL_171:
          std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(&buf, v94, &v125, v91, v104);
        }

        else
        {
          while (v94 != &v125)
          {
            v95 = v93[4];
            v96 = v94[4];
            if (v95 >= v96)
            {
              if (v96 >= v95)
              {
                v100 = v93[1];
                if (v100)
                {
                  do
                  {
                    v99 = v100;
                    v100 = *v100;
                  }

                  while (v100);
                }

                else
                {
                  do
                  {
                    v99 = v93[2];
                    v101 = *v99 == v93;
                    v93 = v99;
                  }

                  while (!v101);
                }
              }

              else
              {
                std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v136, v94 + 4);
                v99 = v93;
              }

              v102 = v94[1];
              if (v102)
              {
                do
                {
                  v94 = v102;
                  v102 = *v102;
                }

                while (v102);
              }

              else
              {
                do
                {
                  v103 = v94;
                  v94 = v94[2];
                }

                while (*v94 != v103);
              }

              v93 = v99;
            }

            else
            {
              std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v136, v93 + 4);
              v97 = v93[1];
              if (v97)
              {
                do
                {
                  v93 = v97;
                  v97 = *v97;
                }

                while (v97);
              }

              else
              {
                do
                {
                  v98 = v93;
                  v93 = v93[2];
                }

                while (*v93 != v98);
              }
            }

            if (v93 == &v128)
            {
              v104 = v136.__r_.__value_.__l.__size_;
              v91 = v136.__r_.__value_.__r.__words[0];
              goto LABEL_171;
            }
          }

          std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(&buf, v93, &v128, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
        }

        if (v129 + v126)
        {
          v106 = v156 / (v126 + v129);
          v105 = v106 > 0.3;
        }

        else
        {
          v105 = 1;
        }

        std::__tree<unsigned int>::destroy(*(&v155 + 1));
        std::__tree<unsigned int>::destroy(v125);
        std::__tree<unsigned int>::destroy(v128);
        std::__tree<unsigned int>::destroy(v131[0]);
        std::__tree<unsigned int>::destroy(v133[0]);
        if (v105)
        {
          std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](a2, &v147[4 * v82]);
        }
      }
    }

    else
    {
      *(&v155 + 1) = 0;
      v156 = 0;
      *&v155 = &v155 + 8;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v155, v83[5], v83 + 6);
      std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(&buf, &__p, &v155);
      std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(&v154, &buf, &buf);
      std::__tree<unsigned int>::destroy(*&v158[8]);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      std::__tree<unsigned int>::destroy(*(&v155 + 1));
      std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](a2, &v147[4 * v82]);
      if (0xAAAAAAAAAAAAAAABLL * ((v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]) >> 3) >= 3)
      {
        v155 = 0uLL;
        v156 = 0;
        v89 = v137.__r_.__value_.__l.__size_ - 24 - v137.__r_.__value_.__r.__words[0];
        if (v89)
        {
          v90 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
          if (v90 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v90);
          }

LABEL_197:
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        memset(&v136, 0, sizeof(v136));
        joinStringArrayWithDelim(&v155, &v136);
        if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v154.__first_, v154.__begin_, &v136))
        {
          v135[0] = 0;
          v135[1] = 0;
          v134 = v135;
          std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v134, v83[5], v83 + 6);
          std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(&buf, &v136, &v134);
          std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(&v154, &buf, &buf);
          std::__tree<unsigned int>::destroy(*&v158[8]);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::__tree<unsigned int>::destroy(v135[0]);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        buf.__r_.__value_.__r.__words[0] = &v155;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
      }
    }

    buf.__r_.__value_.__r.__words[0] = &v137;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v82;
    v81 = v147;
  }

  while (v82 < (v148 - v147) >> 5);
  if (v154.__end_cap_.__value_)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(v154.__end_->__r_.__value_.__r.__words);
    v154.__end_ = 0;
    begin = v154.__begin_;
    if (v154.__begin_)
    {
      v108 = 0;
      do
      {
        v154.__first_->__r_.__value_.__r.__words[v108] = 0;
        v108 = (v108 + 1);
      }

      while (begin != v108);
    }

    v154.__end_cap_.__value_ = 0;
  }

LABEL_187:
  if (*(&v145 + 1))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v145);
    *&v145 = 0;
    v109 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v110 = 0;
      do
      {
        *(v144 + 8 * v110++) = 0;
      }

      while (v109 != v110);
    }

    *(&v145 + 1) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(v154.__end_->__r_.__value_.__r.__words);
  first = v154.__first_;
  v154.__first_ = 0;
  if (first)
  {
    operator delete(first);
  }

  buf.__r_.__value_.__r.__words[0] = &v138;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
  buf.__r_.__value_.__r.__words[0] = &v141;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](&buf);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v145);
  v112 = v144;
  *&v144 = 0;
  if (v112)
  {
    operator delete(v112);
  }

  buf.__r_.__value_.__r.__words[0] = &v147;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](&buf);
  buf.__r_.__value_.__r.__words[0] = &v150;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](&buf);
}

void std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v18[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v10);
    }

    v12 = (32 * v7);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *a2, *(a2 + 1));
    }

    else
    {
      v13 = *a2;
      v12->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    v12[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
    v11 = &v12[1].__r_.__value_.__s.__data_[8];
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12 + 32;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(v18);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 24) = *(a2 + 3);
    v11 = (v5 + 32);
  }

  *(a1 + 8) = v11;
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = *a1;
    *v19 = a1[1];
    *&v19[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v9 = a1[3];
    v10 = (a3 - 2) >> 1;
    v11 = a1;
    do
    {
      v12 = v11 + 32 * v6 + 32;
      v13 = 2 * v6;
      v6 = (2 * v6) | 1;
      v14 = v13 + 2;
      if (v14 < a3 && *(*(v12 + 24) + 4) > *(*(v12 + 56) + 4))
      {
        v12 += 32;
        v6 = v14;
      }

      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      *(v12 + 23) = 0;
      *v12 = 0;
      *(v11 + 24) = *(v12 + 24);
      v11 = v12;
    }

    while (v6 <= v10);
    v16 = (a2 - 32);
    v17 = *(v12 + 23);
    if (a2 - 32 == v12)
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      *v12 = v7;
      *(v12 + 8) = *v19;
      *(v12 + 15) = *&v19[7];
      *(v12 + 23) = v8;
      *(v12 + 24) = v9;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      v18 = *v16;
      *(v12 + 16) = *(a2 - 16);
      *v12 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v12 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v19;
      *(a2 - 17) = *&v19[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(a1, v12 + 32, (v12 + 32 - a1) >> 5);
    }
  }
}

void std::vector<std::vector<std::string>>::push_back[abi:nn200100](uint64_t a1, __int128 **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = (24 * v6);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = v10 + 3;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = v10 - v12;
    memcpy(v13, *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = v4 + 3;
  }

  *(a1 + 8) = v5;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(v5, v5 + 1, v4[4], v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

std::string *std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  v6 = a3 + 1;
  v7 = a3[1];
  this[1].__r_.__value_.__l.__size_ = v7;
  v8 = &this[1].__r_.__value_.__s.__data_[8];
  v9 = a3[2];
  this[1].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *a3 = v6;
    *v6 = 0;
    a3[2] = 0;
  }

  else
  {
    this[1].__r_.__value_.__r.__words[0] = v8;
  }

  return this;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<long long>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>(uint64_t a1)
{
  std::__tree<unsigned int>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 32 * (v3 >> 1));
    v7 = *(a2 - 8);
    if (*(*(v6 + 3) + 4) > *(v7 + 4))
    {
      v9 = *(a2 - 32);
      v8 = (a2 - 32);
      *v13 = *(a2 - 24);
      *&v13[7] = *(a2 - 17);
      v10 = *(a2 - 9);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      do
      {
        v11 = v6;
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v12 = *v11;
        *(v8 + 2) = *(v11 + 2);
        *v8 = v12;
        *(v11 + 23) = 0;
        *v11 = 0;
        *(v8 + 3) = *(v11 + 3);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
        v8 = v11;
      }

      while (*(*(v6 + 3) + 4) > *(v7 + 4));
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v9;
      *(v11 + 1) = *v13;
      *(v11 + 15) = *&v13[7];
      *(v11 + 23) = v10;
      *(v11 + 3) = v7;
    }
  }
}

void SIPommesEnumerateSuggestions(uint64_t a1, uint64_t a2, int a3, char a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v362 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !*(a2 + 16))
  {
    return;
  }

  if (!*(a1 + 128))
  {
    v72 = *(a1 + 168);
    if (v72 || *(a1 + 208) || *(a1 + 248) || *(a1 + 288) || *(a1 + 328))
    {
      v73 = a6;
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 160), v72, 1uLL, a8);
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 200), *(a1 + 208), 1uLL, a8);
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 240), *(a1 + 248), 3uLL, a8);
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 280), *(a1 + 288), 3uLL, a8);
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 320), *(a1 + 328), 0xAuLL, a8);
      a6 = v73;
    }

    if ((*(a1 + 9) & 0x10) == 0)
    {
      allocator = a3;
      v302 = a4;
      v301 = a6;
      memset(v327, 0, 24);
      std::string::basic_string[abi:nn200100]<0>(v327, *(a2 + 16));
      memset(&v326, 0, sizeof(v326));
      if ((SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v327[0].__r_.__value_.__l.__size_ < 2)
        {
          goto LABEL_176;
        }

        v75 = v327[0].__r_.__value_.__r.__words[0];
        if (*(v327[0].__r_.__value_.__r.__words[0] + v327[0].__r_.__value_.__l.__size_ - 1) != 42)
        {
          goto LABEL_176;
        }

        v74 = --v327[0].__r_.__value_.__l.__size_;
      }

      else
      {
        if (SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) < 2 || v327[0].__r_.__value_.__s.__data_[SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) - 1] != 42)
        {
          goto LABEL_176;
        }

        v74 = SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) - 1;
        *(&v327[0].__r_.__value_.__s + 23) = (*(&v327[0].__r_.__value_.__s + 23) - 1) & 0x7F;
        v75 = v327;
      }

      v75->__r_.__value_.__s.__data_[v74] = 0;
      if (SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v325, v327[0].__r_.__value_.__l.__data_, v327[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v325 = v327[0];
      }

      v120 = stringToLowerCase(&v325, &v326, 1);
      if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v325.__r_.__value_.__l.__data_);
      }

      if (!v120)
      {
        goto LABEL_477;
      }

LABEL_176:
      v121 = *__error();
      v122 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]----------New Request----------", buf, 2u);
      }

      *__error() = v121;
      v123 = *__error();
      v124 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        size = HIBYTE(v327[0].__r_.__value_.__r.__words[2]);
        if ((v327[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v327[0].__r_.__value_.__l.__size_;
        }

        v126 = *(a2 + 32);
        *buf = 134218498;
        *&buf[4] = size;
        *&buf[12] = 2048;
        *&buf[14] = v126;
        *&buf[22] = 2080;
        *&buf[24] = a7;
        _os_log_impl(&dword_1C278D000, v124, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_query_info: ss_len:%ld sc_qf_count:%ld lang:%s ", buf, 0x20u);
      }

      *__error() = v123;
      v322 = 0;
      v323 = 0;
      v324 = 0;
      memset(v320, 0, sizeof(v320));
      v321 = 1065353216;
      *v317 = 0u;
      *__p = 0u;
      v319 = 1065353216;
      if (!*(a1 + 88))
      {
        v310 = 0;
        v311 = 0;
        v312 = 0;
LABEL_353:
        *buf = &v310;
        std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
        v205 = *__error();
        v206 = _SILogForLogForCategory(14);
        if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_impl(&dword_1C278D000, v206, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: intent_is_people: %d.", buf, 8u);
        }

        *__error() = v205;
        v207 = *__error();
        v208 = _SILogForLogForCategory(14);
        if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          v209 = *(a1 + 48);
          *buf = 134217984;
          *&buf[4] = v209;
          _os_log_impl(&dword_1C278D000, v208, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: FT candidates size: %ld.", buf, 0xCu);
        }

        *__error() = v207;
        v307 = 0;
        v308 = 0;
        v309 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_427;
        }

        memset(__src, 0, sizeof(__src));
        if ((a5 ^ 1) == 1)
        {
          v210 = *__error();
          v211 = _SILogForLogForCategory(14);
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            v212 = *(a1 + 48);
            *buf = 134218242;
            *&buf[4] = v212;
            *&buf[12] = 2080;
            *&buf[14] = "free-text are not included";
            _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: %ld FT suggestion candidates are thresholded. Reason: %s.", buf, 0x16u);
          }

          *__error() = v210;
LABEL_426:
          *buf = __src;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_427:
          __str.__r_.__value_.__s.__data_[0] = 0;
          v252 = v322;
          v253 = v323;
          if (v322 != v323)
          {
            v254 = 0;
            while (1)
            {
              v255 = v252;
              if (SHIBYTE(v252->__r_.__value_.__r.__words[2]) < 0)
              {
                v255 = v252->__r_.__value_.__r.__words[0];
              }

              data = v252[1].__r_.__value_.__l.__data_;
              v258 = *(data + 19);
              v257 = *(data + 20);
              v259 = 0xAAAAAAAAAAAAAAABLL * ((v257 - v258) >> 3);
              v260 = CFStringCreateWithCString(0, v255, 0x8000100u);
              Mutable = CFArrayCreateMutable(0, v259, MEMORY[0x1E695E9C0]);
              if (v257 != v258)
              {
                v262 = 0;
                if (v259 <= 1)
                {
                  v263 = 1;
                }

                else
                {
                  v263 = v259;
                }

                do
                {
                  v264 = (*(v252[1].__r_.__value_.__r.__words[0] + 152) + v262);
                  if (v264[23] < 0)
                  {
                    v264 = *v264;
                  }

                  v265 = CFStringCreateWithCString(0, v264, 0x8000100u);
                  if (v265)
                  {
                    v266 = v265;
                    CFArrayAppendValue(Mutable, v265);
                    CFRelease(v266);
                  }

                  v262 += 24;
                  --v263;
                }

                while (v263);
              }

              v267 = v252[1].__r_.__value_.__l.__data_;
              if ((v267[27] & 1) == 0)
              {
                break;
              }

              *(v267 + 8) = 0;
              if (v260)
              {
                goto LABEL_446;
              }

LABEL_453:
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v252 = (v252 + 32);
              if (v252 == v253)
              {
                goto LABEL_458;
              }
            }

            v268 = v267[28];
            if (v268 != 1)
            {
              v268 = 2;
            }

            *(v267 + 8) = v268;
            if (!v260)
            {
              goto LABEL_453;
            }

LABEL_446:
            if (Mutable)
            {
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v350 = 0u;
              v351 = 0u;
              v349 = 0u;
              memset(buf, 0, sizeof(buf));
              v269 = v252[1].__r_.__value_.__l.__data_;
              *(&v349 + 1) = *(v269 + 2);
              *&v356 = v260;
              *(&v358 + 1) = Mutable;
              *&v360 = *(v269 + 2);
              HIDWORD(v360) = 10;
              BYTE2(v361) = v269[24];
              BYTE3(v361) = v269[26];
              DWORD1(v361) = *(v269 + 8);
              v270 = *__error();
              v271 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
              {
                v272 = v252[1].__r_.__value_.__l.__data_;
                v273 = v272[87];
                if (v273 < 0)
                {
                  v273 = *(v272 + 9);
                }

                v274 = *(v272 + 2);
                v275 = *v272;
                v276 = *(v272 + 1);
                v277 = *(v272 + 17);
                v278 = 0xAAAAAAAAAAAAAAABLL * ((*(v272 + 20) - *(v272 + 19)) >> 3);
                v279 = *(v272 + 2);
                v280 = v272[24];
                v281 = v272[25];
                v282 = v272[26];
                v283 = *(v272 + 8);
                LODWORD(__src[0]) = 134220800;
                *(__src + 4) = v254;
                WORD2(__src[1]) = 2048;
                *(&__src[1] + 6) = *&v274;
                HIWORD(__src[2]) = 2048;
                __src[3] = *&v275;
                v330 = 2048;
                v331 = v276;
                v332 = 2048;
                v333 = v277;
                v334 = 2048;
                v335 = v278;
                v336 = 2048;
                v337 = v279;
                v338 = 1024;
                v339 = v280;
                v340 = 1024;
                v341 = v281;
                v342 = 2048;
                v343 = v273;
                v344 = 1024;
                v345 = v282;
                v346 = 1024;
                v347 = v283;
                _os_log_impl(&dword_1C278D000, v271, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ppl: pos:%ld sc_final:%f sc_best_name:%f sc_email_address:%f n_names:%ld n_emailaddresses:%ld t_since_use_creation:%f item_used:%d strong_name:%d len_best_name:%ld missing_name:%d default_scope:%d ", __src, 0x6Au);
              }

              *__error() = v270;
              (*(a8 + 16))(a8, buf, &__str);
              ++v254;
            }

            CFRelease(v260);
            goto LABEL_453;
          }

          v254 = 0;
LABEL_458:
          v284 = v307;
          for (i = v308; v284 != i; v284 += 2)
          {
            v286 = v284;
            if (*(v284 + 23) < 0)
            {
              v286 = *v284;
            }

            v287 = CFStringCreateWithCString(0, v286, 0x8000100u);
            if (v287)
            {
              v288 = v287;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v350 = 0u;
              v351 = 0u;
              v349 = 0u;
              memset(buf, 0, sizeof(buf));
              v356 = v287;
              *&v360 = *(*(v284 + 3) + 4);
              HIDWORD(v360) = 9;
              v289 = *__error();
              v290 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
              {
                *&v291 = *(v284 + 23);
                if ((*&v291 & 0x8000000000000000) != 0)
                {
                  v291 = *(v284 + 1);
                }

                v292 = *(v284 + 3);
                v293 = *(v292 + 4);
                v294 = *v292;
                v295 = *(v292 + 8);
                LODWORD(__src[0]) = 134219008;
                *(__src + 4) = v254;
                WORD2(__src[1]) = 2048;
                *(&__src[1] + 6) = *&v293;
                HIWORD(__src[2]) = 2048;
                __src[3] = *&v294;
                v330 = 2048;
                v331 = v291;
                v332 = 2048;
                v333 = v295;
                _os_log_impl(&dword_1C278D000, v290, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ft: pos:%ld sc_final:%f sc_topicality:%f len_ft:%ld match_type:%ld ", __src, 0x34u);
              }

              *__error() = v289;
              (*(a8 + 16))(a8, buf, &__str);
              ++v254;
              CFRelease(v288);
            }
          }

          *buf = &v307;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
          v296 = __p[0];
          if (__p[0])
          {
            do
            {
              v297 = *v296;
              if (*(v296 + 39) < 0)
              {
                operator delete(v296[2]);
              }

              operator delete(v296);
              v296 = v297;
            }

            while (v297);
          }

          v298 = v317[0];
          v317[0] = 0;
          if (v298)
          {
            operator delete(v298);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v320[16]);
          v299 = *v320;
          *v320 = 0;
          if (v299)
          {
            operator delete(v299);
          }

          *buf = &v322;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_477:
          if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v326.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v327[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v327[0].__r_.__value_.__l.__data_);
          }

          return;
        }

        v213 = *(a1 + 40);
        if (!v213)
        {
LABEL_413:
          if (!_os_feature_enabled_impl() || v301)
          {
            v243 = __src[0];
            if (__src[0] != __src[1])
            {
              do
              {
                std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v307, v243);
                std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
                v244 = (__src[1] - 32);
                if (*(__src[1] - 9) < 0)
                {
                  operator delete(*v244);
                }

                __src[1] = v244;
                v243 = __src[0];
              }

              while (__src[0] != v244);
            }

            v245 = v307;
            v246 = (v308 - 2);
            if (v307 != v308 && v246 > v307)
            {
              do
              {
                v248 = *(v245 + 2);
                v249 = *v245;
                v250 = *(v246 + 16);
                *v245 = *v246;
                *(v245 + 2) = v250;
                *v246 = v249;
                *(v246 + 16) = v248;
                v251 = *(v245 + 3);
                *(v245 + 3) = *(v246 + 24);
                *(v246 + 24) = v251;
                v245 += 2;
                v246 -= 32;
              }

              while (v245 < v246);
            }
          }

          else
          {
            memset(v328, 0, 24);
            std::vector<std::pair<std::string,_freeTextCandidate *>>::__init_with_size[abi:nn200100]<std::pair<std::string,_freeTextCandidate *>*,std::pair<std::string,_freeTextCandidate *>*>(v328, __src[0], __src[1], (__src[1] - __src[0]) >> 5);
            dedupSuggestions(v328, &v307);
            *buf = v328;
            std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
          }

          goto LABEL_426;
        }

        while (1)
        {
          v214 = (v213 + 2);
          if ((v326.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v215 = HIBYTE(v326.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v215 = v326.__r_.__value_.__l.__size_;
          }

          v216 = *(v213 + 39);
          v217 = v216;
          v218 = v213[3];
          if ((v216 & 0x80u) != 0)
          {
            v216 = v213[3];
          }

          if (v215 == v216)
          {
            v219 = (v326.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v326 : v326.__r_.__value_.__r.__words[0];
            v220 = v217 >= 0 ? (v213 + 2) : *v214;
            if (!memcmp(v219, v220, v215))
            {
              break;
            }
          }

          v221 = __src[1];
          v222 = __src[0];
          if ((__src[1] - __src[0]) != 96)
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v320, *&v320[8], (v213 + 2)))
            {
              v228 = v213[5];
              if (v217 < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *v214, v218);
                v221 = __src[1];
              }

              else
              {
                *&__str.__r_.__value_.__l.__data_ = *v214;
                __str.__r_.__value_.__r.__words[2] = v213[4];
              }

              v315 = v228;
              v230 = __src[2];
              if (v221 < __src[2])
              {
                *v221 = __str;
                v221[1].__r_.__value_.__r.__words[0] = v228;
                memset(&__str, 0, sizeof(__str));
                p_size = &v221[1].__r_.__value_.__l.__size_;
LABEL_411:
                __src[1] = p_size;
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(__src[0], p_size, (p_size - __src[0]) >> 5);
                goto LABEL_412;
              }

              v232 = __src[0];
              v233 = v221 - __src[0];
LABEL_402:
              v234 = v233 >> 5;
              v235 = (v233 >> 5) + 1;
              if (v235 >> 59)
              {
                std::vector<long long>::__throw_length_error[abi:nn200100]();
              }

              v236 = v230 - v232;
              v237 = v236 >> 4;
              if (v236 >> 4 <= v235)
              {
                v237 = v235;
              }

              if (v236 >= 0x7FFFFFFFFFFFFFE0)
              {
                v238 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v238 = v237;
              }

              *&v349 = __src;
              if (v238)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v238);
              }

              v239 = (32 * v234);
              *v239 = __str;
              memset(&__str, 0, sizeof(__str));
              v239[1].__r_.__value_.__r.__words[0] = v228;
              p_size = (32 * v234 + 32);
              v240 = (32 * v234 - (__src[1] - __src[0]));
              memcpy(v240, __src[0], __src[1] - __src[0]);
              v241 = __src[0];
              v242 = __src[2];
              __src[0] = v240;
              __src[1] = p_size;
              __src[2] = 0;
              *&buf[16] = v241;
              *&buf[24] = v242;
              *&buf[8] = v241;
              *buf = v241;
              std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
              goto LABEL_411;
            }

            v223 = *__error();
            v224 = _SILogForLogForCategory(14);
            if (!os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_387;
            }

LABEL_380:
            *buf = 0;
            v225 = v224;
            v226 = "[Pommes_Suggestions]mail_debug: 1 FT suggestion thresholded. Reason: same as people candidate.";
            goto LABEL_386;
          }

          if (*(*(__src[0] + 3) + 4) <= *(v213[5] + 4))
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v320, *&v320[8], (v213 + 2)))
            {
              std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(v222, v221, 3);
              v229 = (__src[1] - 32);
              if (*(__src[1] - 9) < 0)
              {
                operator delete(*v229);
              }

              __src[1] = v229;
              v228 = v213[5];
              if (*(v213 + 39) < 0)
              {
                std::string::__init_copy_ctor_external(&__str, v213[2], v213[3]);
                v229 = __src[1];
              }

              else
              {
                *&__str.__r_.__value_.__l.__data_ = *v214;
                __str.__r_.__value_.__r.__words[2] = v213[4];
              }

              v315 = v228;
              v230 = __src[2];
              if (v229 < __src[2])
              {
                *v229 = __str;
                v229[3] = v228;
                memset(&__str, 0, sizeof(__str));
                p_size = (v229 + 4);
                goto LABEL_411;
              }

              v232 = __src[0];
              v233 = v229 - __src[0];
              goto LABEL_402;
            }

            v223 = *__error();
            v224 = _SILogForLogForCategory(14);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_380;
            }

LABEL_387:
            *__error() = v223;
          }

LABEL_412:
          v213 = *v213;
          if (!v213)
          {
            goto LABEL_413;
          }
        }

        v223 = *__error();
        v227 = _SILogForLogForCategory(14);
        if (!os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_387;
        }

        *buf = 0;
        v225 = v227;
        v226 = "[Pommes_Suggestions]mail_debug: 1 FT suggestion thresholded. Reason: same as query.";
LABEL_386:
        _os_log_impl(&dword_1C278D000, v225, OS_LOG_TYPE_DEFAULT, v226, buf, 2u);
        goto LABEL_387;
      }

      v300 = a5;
      v127 = *(a1 + 80);
      if (v127)
      {
        while (1)
        {
          v128 = *(v127 + 5);
          if (v128)
          {
            break;
          }

LABEL_221:
          v127 = *v127;
          if (!v127)
          {
            goto LABEL_243;
          }
        }

        v129 = *(v128 + 87);
        if (v129 < 0)
        {
          if (*(v128 + 72))
          {
            goto LABEL_188;
          }
        }

        else if (*(v128 + 87))
        {
LABEL_188:
          memset(buf, 0, 24);
          if ((v129 & 0x80) != 0)
          {
            std::string::__init_copy_ctor_external(&v316, *(v128 + 64), *(v128 + 72));
          }

          else
          {
            v316 = *(v128 + 64);
          }

          v130 = stringToLowerCase(&v316, buf, 0);
          if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v316.__r_.__value_.__l.__data_);
          }

          if (v130)
          {
            if (buf[23] >= 0)
            {
              v131 = buf;
            }

            else
            {
              v131 = *buf;
            }

            if (buf[23] >= 0)
            {
              v132 = buf[23];
            }

            else
            {
              v132 = *&buf[8];
            }

            v133 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v131, v132);
            v134 = v317[1];
            if (!v317[1])
            {
              goto LABEL_218;
            }

            v135 = v133;
            v136 = vcnt_s8(v317[1]);
            v136.i16[0] = vaddlv_u8(v136);
            v137 = v136.u32[0];
            if (v136.u32[0] > 1uLL)
            {
              v138 = v133;
              if (v133 >= v317[1])
              {
                v138 = v133 % v317[1];
              }
            }

            else
            {
              v138 = (v317[1] - 1) & v133;
            }

            v139 = *(v317[0] + v138);
            if (!v139 || (v140 = *v139) == 0)
            {
LABEL_218:
              std::vector<std::string>::push_back[abi:nn200100](v128 + 152, v127 + 1);
              __src[0] = buf;
              std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v317, buf, __src)[5] = v128;
              goto LABEL_219;
            }

            while (1)
            {
              v141 = v140[1];
              if (v141 == v135)
              {
                if (std::equal_to<std::string>::operator()[abi:nn200100](v140 + 2, buf))
                {
                  __src[0] = buf;
                  v142 = std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v317, buf, __src)[5];
                  if (v142)
                  {
                    std::vector<std::string>::push_back[abi:nn200100](v142 + 152, v127 + 1);
                    v143 = *(v128 + 8);
                    if (v143 > *(v142 + 8))
                    {
                      *(v142 + 8) = v143;
                      std::string::operator=((v142 + 88), (v128 + 88));
                    }

                    v144 = *(v128 + 16);
                    if (v144 > 0.000000100000001)
                    {
                      v145 = *(v142 + 16);
                      if (v145 <= 0.000000100000001 || v144 < v145)
                      {
                        *(v142 + 16) = v144;
                        std::string::operator=((v142 + 64), (v128 + 64));
                      }
                    }

                    if (*(v142 + 24))
                    {
                      v147 = 1;
                    }

                    else
                    {
                      v147 = *(v128 + 24);
                    }

                    *(v142 + 24) = v147 & 1;
                    if (*(v142 + 27))
                    {
                      v148 = 1;
                    }

                    else
                    {
                      v148 = *(v128 + 27);
                    }

                    *(v142 + 27) = v148 & 1;
                    if (*(v142 + 28))
                    {
                      v149 = 1;
                    }

                    else
                    {
                      v149 = *(v128 + 28);
                    }

                    *(v142 + 28) = v149 & 1;
                  }

                  break;
                }
              }

              else
              {
                if (v137 > 1)
                {
                  if (v141 >= v134)
                  {
                    v141 %= v134;
                  }
                }

                else
                {
                  v141 &= v134 - 1;
                }

                if (v141 != v138)
                {
                  goto LABEL_218;
                }
              }

              v140 = *v140;
              if (!v140)
              {
                goto LABEL_218;
              }
            }
          }

LABEL_219:
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_221;
        }

        std::string::operator=((v128 + 64), (v127 + 1));
        *(v128 + 26) = 1;
        LOBYTE(v129) = *(v128 + 87);
        goto LABEL_188;
      }

LABEL_243:
      v150 = *__error();
      v151 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = __p[1];
        _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: PPL candidates size: %ld.", buf, 0xCu);
      }

      v152 = 0;
      *__error() = v150;
      memset(__src, 0, sizeof(__src));
      if (allocator)
      {
        v153 = 0;
        if (__p[1] >= 3)
        {
          v154 = __p[0];
          if (__p[0])
          {
            do
            {
              memset(buf, 0, sizeof(buf));
              if (v154[39] < 0)
              {
                std::string::__init_copy_ctor_external(buf, *(v154 + 2), *(v154 + 3));
              }

              else
              {
                *buf = *(v154 + 1);
                *&buf[16] = *(v154 + 4);
              }

              v152 = *(*(v154 + 5) + 27);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v152)
              {
                break;
              }

              v154 = *v154;
            }

            while (v154);
            v155 = __p[0];
            if (__p[0])
            {
              v153 = 0;
              do
              {
                memset(buf, 0, sizeof(buf));
                if (v155[39] < 0)
                {
                  std::string::__init_copy_ctor_external(buf, *(v155 + 2), *(v155 + 3));
                }

                else
                {
                  *buf = *(v155 + 1);
                  *&buf[16] = *(v155 + 4);
                }

                v156 = *(v155 + 5);
                if (*(v156 + 24) == 1 && *(v156 + 16) <= 47304000.0)
                {
                  v157 = 0;
                  v153 = 1;
                }

                else
                {
                  v157 = 1;
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (!v157)
                {
                  break;
                }

                v155 = *v155;
              }

              while (v155);
              goto LABEL_273;
            }
          }

          else
          {
            v152 = 0;
          }

          v153 = 0;
        }
      }

      else
      {
        v153 = 0;
      }

LABEL_273:
      v158 = __p[0];
      if (__p[0])
      {
        v159 = v302 ^ 1 | allocator;
        v160 = allocator ^ 1 | v302;
        allocatorb = v153;
        while (1)
        {
          if (v152)
          {
            v161 = v158[5];
            if (*(v161 + 28) == 1 && (*(v161 + 27) & 1) == 0)
            {
              v163 = *__error();
              v173 = _SILogForLogForCategory(14);
              if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_302;
              }

              *buf = 0;
              v166 = v173;
              v167 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion thresholded. Reason: is recipient and we have author candidates.";
              goto LABEL_300;
            }
          }

          if ((v159 & 1) == 0 && (*(v158[5] + 28) & 1) == 0)
          {
            v163 = *__error();
            v171 = _SILogForLogForCategory(14);
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v166 = v171;
              v167 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion skipped. Reason: scope is recipientOnly and candidate is not a recipient.";
              goto LABEL_300;
            }

LABEL_302:
            *__error() = v163;
            goto LABEL_316;
          }

          if ((v160 & 1) == 0 && (*(v158[5] + 27) & 1) == 0)
          {
            break;
          }

          if ((v153 & (__p[1] > 2)) == 1)
          {
            v162 = v158[5];
            if ((*(v162 + 24) & 1) == 0 && *(v162 + 16) > 47304000.0)
            {
              v163 = *__error();
              v164 = _SILogForLogForCategory(14);
              if (!os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_302;
              }

              v165 = *(v158[5] + 16);
              *buf = 134217984;
              *&buf[4] = v165;
              v166 = v164;
              v167 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion thresholded. Reason: not used and age %f.";
              v168 = 12;
              goto LABEL_301;
            }
          }

          v169 = __src[1];
          if ((__src[1] - __src[0]) != 160)
          {
            goto LABEL_292;
          }

          if (*(*(__src[0] + 3) + 8) <= *(v158[5] + 8))
          {
            std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], __src[1], 5);
            v169 = (__src[1] - 32);
            if (*(__src[1] - 9) < 0)
            {
              operator delete(*v169);
            }

            __src[1] = v169;
LABEL_292:
            v170 = v158[5];
            if (*(v170 + 87) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, *(v170 + 64), *(v170 + 72));
              v170 = v158[5];
              v169 = __src[1];
            }

            else
            {
              __str = *(v170 + 64);
            }

            v315 = v170;
            if (v169 >= __src[2])
            {
              v176 = (v169 - __src[0]) >> 5;
              if ((v176 + 1) >> 59)
              {
                goto LABEL_482;
              }

              v177 = (__src[2] - __src[0]) >> 4;
              if (v177 <= v176 + 1)
              {
                v177 = v176 + 1;
              }

              if ((__src[2] - __src[0]) >= 0x7FFFFFFFFFFFFFE0)
              {
                v178 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v178 = v177;
              }

              *&v349 = __src;
              if (v178)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v178);
              }

              v179 = (32 * v176);
              *v179 = __str;
              memset(&__str, 0, sizeof(__str));
              v179[1].__r_.__value_.__r.__words[0] = v170;
              v175 = (32 * v176 + 32);
              v180 = (32 * v176 - (__src[1] - __src[0]));
              memcpy(v179 - (__src[1] - __src[0]), __src[0], __src[1] - __src[0]);
              v181 = __src[0];
              v182 = __src[2];
              __src[0] = v180;
              __src[1] = v175;
              __src[2] = 0;
              *&buf[16] = v181;
              *&buf[24] = v182;
              *&buf[8] = v181;
              *buf = v181;
              std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
              v153 = allocatorb;
            }

            else
            {
              v174 = *&__str.__r_.__value_.__l.__data_;
              v169[2] = __str.__r_.__value_.__r.__words[2];
              *v169 = v174;
              memset(&__str, 0, sizeof(__str));
              v169[3] = v315;
              v175 = v169 + 4;
            }

            __src[1] = v175;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], v175, (v175 - __src[0]) >> 5);
          }

LABEL_316:
          v158 = *v158;
          if (!v158)
          {
            goto LABEL_317;
          }
        }

        v163 = *__error();
        v172 = _SILogForLogForCategory(14);
        if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_302;
        }

        *buf = 0;
        v166 = v172;
        v167 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion skipped. Reason: scope is authorsOnly and candidate is not an author.";
LABEL_300:
        v168 = 2;
LABEL_301:
        _os_log_impl(&dword_1C278D000, v166, OS_LOG_TYPE_DEFAULT, v167, buf, v168);
        goto LABEL_302;
      }

LABEL_317:
      v183 = __src[0];
      if (__src[0] != __src[1])
      {
        do
        {
          v184 = v323;
          if (v323 >= v324)
          {
            v186 = (v323 - v322) >> 5;
            if ((v186 + 1) >> 59)
            {
              goto LABEL_482;
            }

            v187 = (v324 - v322) >> 4;
            if (v187 <= v186 + 1)
            {
              v187 = v186 + 1;
            }

            if (v324 - v322 >= 0x7FFFFFFFFFFFFFE0)
            {
              v188 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v188 = v187;
            }

            *&v349 = &v322;
            if (v188)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v188);
            }

            v190 = 32 * v186;
            if (v183[23] < 0)
            {
              std::string::__init_copy_ctor_external((32 * v186), *v183, *(v183 + 1));
            }

            else
            {
              v191 = *v183;
              *(32 * v186 + 0x10) = *(v183 + 2);
              *v190 = v191;
            }

            *(32 * v186 + 0x18) = *(v183 + 3);
            v189 = (v190 + 32);
            v192 = (v190 - (v323 - v322));
            memcpy(v192, v322, v323 - v322);
            v193 = v322;
            v194 = v324;
            v322 = v192;
            v323 = (v190 + 32);
            v324 = 0;
            *&buf[16] = v193;
            *&buf[24] = v194;
            *&buf[8] = v193;
            *buf = v193;
            std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
          }

          else
          {
            if (v183[23] < 0)
            {
              std::string::__init_copy_ctor_external(v323, *v183, *(v183 + 1));
            }

            else
            {
              v185 = *v183;
              v323->__r_.__value_.__r.__words[2] = *(v183 + 2);
              *&v184->__r_.__value_.__l.__data_ = v185;
            }

            v184[1].__r_.__value_.__r.__words[0] = *(v183 + 3);
            v189 = (v184 + 32);
          }

          v323 = v189;
          memset(buf, 0, 24);
          if (*(__src[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v313, *__src[0], *(__src[0] + 1));
          }

          else
          {
            v195 = *__src[0];
            v313.__r_.__value_.__r.__words[2] = *(__src[0] + 2);
            *&v313.__r_.__value_.__l.__data_ = v195;
          }

          v196 = stringToLowerCase(&v313, buf, 0);
          if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v313.__r_.__value_.__l.__data_);
          }

          if (v196)
          {
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v320, buf, buf);
          }

          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
          v197 = (__src[1] - 32);
          if (*(__src[1] - 9) < 0)
          {
            operator delete(*v197);
          }

          __src[1] = v197;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
            v197 = __src[1];
          }

          v183 = __src[0];
        }

        while (__src[0] != v197);
      }

      v198 = v322;
      if (v322 != v323)
      {
        v199 = (v323 - 32);
        if (&v323[-2].__r_.__value_.__r.__words[2] > v322)
        {
          do
          {
            v200 = v198->__r_.__value_.__r.__words[2];
            v201 = *&v198->__r_.__value_.__l.__data_;
            v202 = v199->__r_.__value_.__r.__words[2];
            *&v198->__r_.__value_.__l.__data_ = *&v199->__r_.__value_.__l.__data_;
            v198->__r_.__value_.__r.__words[2] = v202;
            *&v199->__r_.__value_.__l.__data_ = v201;
            v199->__r_.__value_.__r.__words[2] = v200;
            v203 = v198[1].__r_.__value_.__l.__data_;
            v198[1].__r_.__value_.__r.__words[0] = v199[1].__r_.__value_.__r.__words[0];
            v199[1].__r_.__value_.__r.__words[0] = v203;
            v198 = (v198 + 32);
            v199 = (v199 - 32);
          }

          while (v198 < v199);
        }
      }

      *buf = __src;
      std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
      v311 = 0;
      v312 = 0;
      v310 = 0;
      v204 = v323 - v322;
      a5 = v300;
      if (v323 != v322)
      {
        if (!((v204 >> 5) >> 59))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v204 >> 5);
        }

LABEL_482:
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      goto LABEL_353;
    }

    if (!*(a1 + 88))
    {
      return;
    }

    v320[0] = 0;
    v76 = *(a1 + 80);
    if (!v76)
    {
      return;
    }

    v77 = 0;
    allocatora = *MEMORY[0x1E695E480];
    v78 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v79 = v76[5];
      v80 = (v79 + 64);
      if (*(v79 + 87) < 0)
      {
        if (!*(v79 + 72))
        {
          goto LABEL_165;
        }

        v80 = *v80;
      }

      else if (!*(v79 + 87))
      {
        goto LABEL_165;
      }

      v81 = (v76 + 2);
      v82 = CFStringCreateWithCString(0, v80, 0x8000100u);
      if (*(v76 + 39) < 0)
      {
        v81 = *v81;
      }

      v83 = CFStringCreateWithCString(0, v81, 0x8000100u);
      v84 = CFArrayCreateMutable(allocatora, 0, v78);
      CFArrayAppendValue(v84, v83);
      v85 = *(v76[5] + 160) - *(v76[5] + 152);
      if (v85)
      {
        v86 = 0xAAAAAAAAAAAAAAABLL * (v85 >> 3);
        v87 = CFArrayCreateMutable(0, v86, v78);
        if (v87)
        {
          v88 = v87;
          v89 = 0;
          if (v86 <= 1)
          {
            v90 = 1;
          }

          else
          {
            v90 = v86;
          }

          do
          {
            v91 = (*(v76[5] + 152) + v89);
            if (v91[23] < 0)
            {
              v91 = *v91;
            }

            v92 = CFStringCreateWithCString(0, v91, 0x8000100u);
            if (v92)
            {
              v93 = v92;
              CFArrayAppendValue(v84, v92);
              CFRelease(v93);
            }

            v89 += 24;
            --v90;
          }

          while (v90);
          CFRelease(v88);
          v78 = MEMORY[0x1E695E9C0];
        }
      }

      v94 = *(v76[5] + 184) - *(v76[5] + 176);
      if (v94)
      {
        v95 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
        v96 = CFArrayCreateMutable(0, v95, v78);
        if (v96)
        {
          v97 = v96;
          v98 = 0;
          if (v95 <= 1)
          {
            v99 = 1;
          }

          else
          {
            v99 = v95;
          }

          do
          {
            v100 = (*(v76[5] + 176) + v98);
            if (v100[23] < 0)
            {
              v100 = *v100;
            }

            v101 = CFStringCreateWithCString(0, v100, 0x8000100u);
            if (v101)
            {
              v102 = v101;
              CFArrayAppendValue(v84, v101);
              CFRelease(v102);
            }

            v98 += 24;
            --v99;
          }

          while (v99);
          CFRelease(v97);
          v78 = MEMORY[0x1E695E9C0];
        }
      }

      v103 = v76[5];
      if (*(v103 + 27) == 1)
      {
        *(v103 + 32) = 0;
      }

      else
      {
        v104 = *(v103 + 28);
        if (v104 != 1)
        {
          v104 = 2;
        }

        *(v103 + 32) = v104;
      }

      v360 = 0u;
      v361 = 0u;
      v358 = 0u;
      v359 = 0u;
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
      v349 = 0u;
      memset(buf, 0, sizeof(buf));
      v105 = v76[5];
      *(&v349 + 1) = *(v105 + 16);
      *&v356 = v82;
      *(&v358 + 1) = v84;
      *&v360 = *(v105 + 8);
      HIDWORD(v360) = 24;
      BYTE2(v361) = *(v105 + 24);
      BYTE3(v361) = *(v105 + 26);
      DWORD1(v361) = *(v105 + 32);
      v106 = *__error();
      v107 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v76[5];
        v109 = *(v108 + 87);
        if (v109 < 0)
        {
          v109 = *(v108 + 72);
        }

        v110 = *(v108 + 8);
        v111 = *v108;
        v112 = *(v108 + 4);
        v113 = *(v108 + 136);
        v114 = 0xAAAAAAAAAAAAAAABLL * ((*(v108 + 160) - *(v108 + 152)) >> 3);
        v115 = *(v108 + 16);
        v116 = *(v108 + 24);
        v117 = *(v108 + 25);
        v118 = *(v108 + 26);
        v119 = *(v108 + 32);
        LODWORD(__src[0]) = 134220800;
        *(__src + 4) = v77;
        WORD2(__src[1]) = 2048;
        *(&__src[1] + 6) = *&v110;
        HIWORD(__src[2]) = 2048;
        __src[3] = *&v111;
        v330 = 2048;
        v331 = v112;
        v332 = 2048;
        v333 = v113;
        v334 = 2048;
        v335 = v114;
        v336 = 2048;
        v337 = v115;
        v338 = 1024;
        v339 = v116;
        v340 = 1024;
        v341 = v117;
        v342 = 2048;
        v343 = v109;
        v344 = 1024;
        v345 = v118;
        v346 = 1024;
        v347 = v119;
        _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ppl: pos:%ld sc_final:%f sc_best_name:%f sc_email_address:%f n_names:%ld n_emailaddresses:%ld t_since_use_creation:%f item_used:%d strong_name:%d len_best_name:%ld missing_name:%d default_scope:%d ", __src, 0x6Au);
      }

      *__error() = v106;
      (*(a8 + 16))(a8, buf, v320);
      if (v82)
      {
        CFRelease(v82);
      }

      if (v83)
      {
        CFRelease(v83);
      }

      if (v84)
      {
        CFRelease(v84);
      }

      if (v320[0])
      {
        return;
      }

      ++v77;
LABEL_165:
      v76 = *v76;
      if (!v76)
      {
        return;
      }
    }
  }

  memset(__src, 0, sizeof(__src));
  v10 = *(a1 + 120);
  if (!v10)
  {
    memset(v320, 0, 24);
    goto LABEL_114;
  }

  do
  {
    v11 = __src[1];
    if ((__src[1] - __src[0]) == 320)
    {
      if (**(__src[0] + 3) > *v10[5])
      {
        goto LABEL_26;
      }

      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], __src[1], 10);
      v11 = (__src[1] - 32);
      if (*(__src[1] - 9) < 0)
      {
        operator delete(*v11);
      }

      __src[1] = v11;
    }

    v12 = v10[5];
    if (*(v10 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(v320, v10[2], v10[3]);
      v11 = __src[1];
    }

    else
    {
      *v320 = *(v10 + 1);
      *&v320[16] = v10[4];
    }

    *&v320[24] = v12;
    if (v11 >= __src[2])
    {
      v15 = (v11 - __src[0]) >> 5;
      if ((v15 + 1) >> 59)
      {
LABEL_481:
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = (__src[2] - __src[0]) >> 4;
      if (v16 <= v15 + 1)
      {
        v16 = v15 + 1;
      }

      if ((__src[2] - __src[0]) >= 0x7FFFFFFFFFFFFFE0)
      {
        v17 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      *&v349 = __src;
      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v17);
      }

      v18 = 32 * v15;
      *v18 = *v320;
      *(v18 + 16) = *&v320[16];
      memset(v320, 0, 24);
      *(v18 + 24) = v12;
      v14 = (32 * v15 + 32);
      v19 = (v18 - (__src[1] - __src[0]));
      memcpy(v19, __src[0], __src[1] - __src[0]);
      v20 = __src[0];
      v21 = __src[2];
      __src[0] = v19;
      __src[1] = v14;
      __src[2] = 0;
      *&buf[16] = v20;
      *&buf[24] = v21;
      *&buf[8] = v20;
      *buf = v20;
      std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
    }

    else
    {
      v13 = *v320;
      v11[2] = *&v320[16];
      *v11 = v13;
      memset(v320, 0, 24);
      v11[3] = *&v320[24];
      v14 = v11 + 4;
    }

    __src[1] = v14;
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], v14, (v14 - __src[0]) >> 5);
LABEL_26:
    v10 = *v10;
  }

  while (v10);
  v22 = __src[0];
  memset(v320, 0, 24);
  if (__src[0] != __src[1])
  {
    do
    {
      v23 = *&v320[8];
      if (*&v320[8] >= *&v320[16])
      {
        v25 = (*&v320[8] - *v320) >> 5;
        if ((v25 + 1) >> 59)
        {
          goto LABEL_481;
        }

        v26 = (*&v320[16] - *v320) >> 4;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (*&v320[16] - *v320 >= 0x7FFFFFFFFFFFFFE0uLL)
        {
          v27 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        *&v349 = v320;
        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v27);
        }

        v29 = (32 * v25);
        if (v22[23] < 0)
        {
          std::string::__init_copy_ctor_external((32 * v25), *v22, *(v22 + 1));
        }

        else
        {
          v30 = *v22;
          *(32 * v25 + 0x10) = *(v22 + 2);
          *v29 = v30;
        }

        *(32 * v25 + 0x18) = *(v22 + 3);
        v28 = v29 + 2;
        v31 = v29 - (*&v320[8] - *v320);
        memcpy(v31, *v320, *&v320[8] - *v320);
        v32 = *v320;
        v33 = *&v320[16];
        *v320 = v31;
        *&v320[8] = v29 + 2;
        *&v320[16] = 0;
        *&buf[16] = v32;
        *&buf[24] = v33;
        *&buf[8] = v32;
        *buf = v32;
        std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
      }

      else
      {
        if (v22[23] < 0)
        {
          std::string::__init_copy_ctor_external(*&v320[8], *v22, *(v22 + 1));
        }

        else
        {
          v24 = *v22;
          *(*&v320[8] + 16) = *(v22 + 2);
          *v23 = v24;
        }

        *(v23 + 24) = *(v22 + 3);
        v28 = (v23 + 32);
      }

      *&v320[8] = v28;
      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
      v34 = (__src[1] - 32);
      if (*(__src[1] - 9) < 0)
      {
        operator delete(*v34);
      }

      __src[1] = v34;
      v22 = __src[0];
    }

    while (__src[0] != v34);
    v35 = *v320;
    v36 = *&v320[8];
    if (*v320 != *&v320[8])
    {
      v37 = *&v320[8] - 32;
      if ((*&v320[8] - 32) > *v320)
      {
        do
        {
          v38 = *(v35 + 16);
          v39 = *v35;
          v40 = *(v37 + 16);
          *v35 = *v37;
          *(v35 + 16) = v40;
          *v37 = v39;
          *(v37 + 16) = v38;
          v41 = *(v35 + 24);
          *(v35 + 24) = *(v37 + 24);
          *(v37 + 24) = v41;
          v35 += 32;
          v37 -= 32;
        }

        while (v35 < v37);
        v35 = *v320;
        v36 = *&v320[8];
      }
    }

    LOBYTE(v317[0]) = 0;
    if (v35 != v36)
    {
      v42 = 0;
      v43 = 0;
      while (1)
      {
        v44 = v35;
        if (*(v35 + 23) < 0)
        {
          v44 = *v35;
        }

        v45 = CFStringCreateWithCString(0, v44, 0x8000100u);
        if (v45)
        {
          v46 = v45;
          v47 = *v320;
          v48 = *(*(*v320 + 32 * v42 + 24) + 8);
          if ((v48 == 18 || v48 == 9) && v42 != 0)
          {
            for (j = 0; j != v42; ++j)
            {
              v52 = v47 + 32 * v42;
              v53 = *(v52 + 23);
              if ((v53 & 0x8000000000000000) != 0)
              {
                v54 = *(v52 + 8);
              }

              else
              {
                v54 = *(v52 + 23);
              }

              v55 = v47 + 32 * j;
              v56 = *(v55 + 23);
              if ((v56 & 0x8000000000000000) != 0)
              {
                v57 = *(v55 + 8);
              }

              else
              {
                v57 = *(v55 + 23);
              }

              if (v57 >= v54)
              {
                v58 = v54;
              }

              else
              {
                v58 = v57;
              }

              if ((v53 & 0x80000000) != 0)
              {
                v53 = *(v52 + 8);
                if ((v56 & 0x80000000) == 0)
                {
                  goto LABEL_76;
                }
              }

              else if ((v56 & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

              v56 = *(v55 + 8);
LABEL_76:
              if (v53 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v53;
              }

              if (v58)
              {
                v60 = 0;
                v61 = 0.0;
                do
                {
                  v62 = *v320 + 32 * v42;
                  if (*(v62 + 23) < 0)
                  {
                    v62 = *v62;
                  }

                  v63 = __tolower(*(v62 + v60));
                  v64 = *v320 + 32 * j;
                  if (*(v64 + 23) < 0)
                  {
                    v64 = *v64;
                  }

                  if (v63 != __tolower(*(v64 + v60)))
                  {
                    break;
                  }

                  v61 = v61 + 1.0;
                  ++v60;
                }

                while (v58 != v60);
                v47 = *v320;
              }

              else
              {
                v61 = 0.0;
              }

              if (*(*(v47 + 32 * v42 + 24) + 4) == *(*(v47 + 32 * j + 24) + 4))
              {
                v65 = v58;
              }

              else
              {
                v65 = v59;
              }

              if ((v61 / v65) >= 0.75)
              {
                goto LABEL_99;
              }
            }
          }

          v66 = *(v35 + 24);
          if ((*(v66 + 8) - 17) <= 1)
          {
            *(v66 + 8) = 9;
          }

          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v349 = 0u;
          memset(buf, 0, sizeof(buf));
          v356 = v46;
          v67 = *(v35 + 24);
          *&v360 = *v67;
          HIDWORD(v360) = *(v67 + 8);
          (*(a8 + 16))(a8, buf, v317);
          CFRelease(v46);
          ++v43;
        }

LABEL_99:
        v35 += 32;
        if (v35 != v36)
        {
          ++v42;
          if (v43 < 7)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_114:
  *buf = v320;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = __src;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = *a1;
    *v19 = a1[1];
    *&v19[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v9 = a1[3];
    v10 = (a3 - 2) >> 1;
    v11 = a1;
    do
    {
      v12 = v11 + 32 * v6 + 32;
      v13 = 2 * v6;
      v6 = (2 * v6) | 1;
      v14 = v13 + 2;
      if (v14 < a3 && **(v12 + 24) > **(v12 + 56))
      {
        v12 += 32;
        v6 = v14;
      }

      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      *(v12 + 23) = 0;
      *v12 = 0;
      *(v11 + 24) = *(v12 + 24);
      v11 = v12;
    }

    while (v6 <= v10);
    v16 = (a2 - 32);
    v17 = *(v12 + 23);
    if (a2 - 32 == v12)
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      *v12 = v7;
      *(v12 + 8) = *v19;
      *(v12 + 15) = *&v19[7];
      *(v12 + 23) = v8;
      *(v12 + 24) = v9;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      v18 = *v16;
      *(v12 + 16) = *(a2 - 16);
      *v12 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v12 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v19;
      *(a2 - 17) = *&v19[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(a1, v12 + 32, (v12 + 32 - a1) >> 5);
    }
  }
}

void std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _SIPommesSpotlightEnumerateTopicSuggestions(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = 0;
  if (a2 && a1)
  {
    v4 = a1[5];
    if (*(a1 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(v5, a1[2], a1[3]);
    }

    else
    {
      *v5 = *(a1 + 1);
      *&v5[16] = a1[4];
    }

    *&v5[24] = v4;
    operator new();
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = *(a1 + 2);
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v19 = *a1;
    *v21 = a1[1];
    *&v21[7] = *(a1 + 15);
    v20 = *(a1 + 23);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v7 = a1[3];
    v8 = (a3 - 2) >> 1;
    v9 = a1;
    do
    {
      v10 = v9 + 32 * v6 + 32;
      v11 = 2 * v6;
      v6 = (2 * v6) | 1;
      v12 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v13 = _comparePeople::operator()(v10, (v10 + 32));
        v14 = v13 ? 32 : 0;
        v10 += v14;
        if (v13)
        {
          v6 = v12;
        }
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v15 = *v10;
      *(v9 + 16) = *(v10 + 16);
      *v9 = v15;
      *(v10 + 23) = 0;
      *v10 = 0;
      *(v9 + 24) = *(v10 + 24);
      v9 = v10;
    }

    while (v6 <= v8);
    v16 = (a2 - 32);
    v17 = *(v10 + 23);
    if (a2 - 32 == v10)
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      *v10 = v19;
      *(v10 + 8) = *v21;
      *(v10 + 15) = *&v21[7];
      *(v10 + 23) = v20;
      *(v10 + 24) = v7;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      v18 = *v16;
      *(v10 + 16) = *(a2 - 16);
      *v10 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v19;
      *(a2 - 24) = *v21;
      *(a2 - 17) = *&v21[7];
      *(a2 - 9) = v20;
      *(a2 - 8) = v7;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(a1, v10 + 32, (v10 + 32 - a1) >> 5);
    }
  }
}

void std::vector<std::pair<std::string,_freeTextCandidate *>>::__init_with_size[abi:nn200100]<std::pair<std::string,_freeTextCandidate *>*,std::pair<std::string,_freeTextCandidate *>*>(std::string **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(a4);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v3;
    v21 = v4;
    v8 = v5 >> 1;
    v9 = (a1 + 32 * (v5 >> 1));
    v10 = (a2 - 32);
    if (_comparePeople::operator()(v9, (a2 - 32)))
    {
      v17 = *v10;
      v12 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      v13 = *(a2 - 8);
      v18 = v12;
      v19 = v13;
      do
      {
        v14 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v15 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v15;
        *(v9 + 23) = 0;
        *v9 = 0;
        *(v10 + 3) = *(v9 + 3);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 32 * v8);
        v10 = v14;
      }

      while (_comparePeople::operator()(v9, &v17));
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      result = *&v17;
      *v14 = v17;
      v16 = v19;
      *(v14 + 2) = v18;
      *(v14 + 3) = v16;
    }
  }

  return result;
}

BOOL _comparePeople::operator()(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = *(v2 + 8);
  v4 = a2[3];
  v5 = *(v4 + 8);
  if (v3 != v5)
  {
    return v3 > v5;
  }

  v7 = *(v2 + 24);
  v8 = *(v4 + 24);
  if (v7 != v8)
  {
    return v7 > v8;
  }

  v9 = *(v2 + 16);
  if (v9 > 0.000000100000001)
  {
    v10 = *(v4 + 16);
    if (v10 > 0.000000100000001)
    {
      return v9 < v10;
    }
  }

  v11 = *(a2 + 23);
  v12 = *(a1 + 23);
  if (v12 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  if (v12 < 0)
  {
    a1 = *a1;
  }

  if (v11 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (v11 < 0)
  {
    a2 = *a2;
  }

  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(a1, a2, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v13 < v14;
  }
}

double _topicCandidate::computedScore(_topicCandidate *this)
{
  v3 = *this;
  v2 = *(this + 1);
  v4 = 0.0;
  v5 = 0.0;
  if (v2)
  {
    v5 = log(v2) * 18.9648897;
  }

  if (v3)
  {
    v4 = log(v3);
  }

  v6 = *(this + 29);
  v7 = 0.0;
  v8 = *(this + 13);
  v9 = (v5 + v4) * 0.25 + 0.0 + *(this + 28) * 2.5 + v6 * 2.5 + *(this + 12) * 0.25;
  if (v8 != 0.0)
  {
    v10 = fabs(v8);
    v11 = v9 - v10 * 0.25;
    v9 = v9 + v10 * 0.25;
    if (v10 < 5.0)
    {
      v9 = v11;
    }

    v12 = *(this + 15);
    if ((v6 - v12) < 4 && v6 != v12)
    {
      v9 = v9 + (v6 - v12) * 5.0;
    }
  }

  v14 = *(this + 11);
  if (v14 > 40996800.0)
  {
    v9 = v9 + v14;
  }

  v15 = v9 - *(this + 20);
  v16 = 0.5;
  if (!*(this + 80))
  {
    v16 = 0.0;
  }

  v17 = v15 + v16;
  if (*(this + 81))
  {
    v7 = 2.0;
  }

  return -(v17 + v7);
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v6 = 0;
    v19 = *a1;
    *v21 = a1[1];
    *&v21[7] = *(a1 + 15);
    v20 = *(a1 + 23);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v7 = a1[3];
    v8 = (a3 - 2) >> 1;
    v9 = a1;
    do
    {
      v10 = v9 + 32 * v6 + 32;
      v11 = 2 * v6;
      v6 = (2 * v6) | 1;
      v12 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v13 = _compareTopic::operator()(*(v10 + 24), *(v10 + 56));
        v14 = v13 ? 32 : 0;
        v10 += v14;
        if (v13)
        {
          v6 = v12;
        }
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v15 = *v10;
      *(v9 + 16) = *(v10 + 16);
      *v9 = v15;
      *(v10 + 23) = 0;
      *v10 = 0;
      *(v9 + 24) = *(v10 + 24);
      v9 = v10;
    }

    while (v6 <= v8);
    v16 = (a2 - 32);
    v17 = *(v10 + 23);
    if (a2 - 32 == v10)
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      *v10 = v19;
      *(v10 + 8) = *v21;
      *(v10 + 15) = *&v21[7];
      *(v10 + 23) = v20;
      *(v10 + 24) = v7;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      v18 = *v16;
      *(v10 + 16) = *(a2 - 16);
      *v10 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v19;
      *(a2 - 24) = *v21;
      *(a2 - 17) = *&v21[7];
      *(a2 - 9) = v20;
      *(a2 - 8) = v7;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic &,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(a1, v10 + 32, (v10 + 32 - a1) >> 5);
    }
  }
}

__n128 std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic &,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v3 >> 1;
    v7 = (a1 + 32 * (v3 >> 1));
    v8 = *(a2 - 8);
    if (_compareTopic::operator()(*(v7 + 3), v8))
    {
      v10 = (a2 - 32);
      v13 = *(a2 - 32);
      v14 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 32) = 0;
      do
      {
        v11 = v7;
        if (v10[1].n128_i8[7] < 0)
        {
          operator delete(v10->n128_u64[0]);
        }

        v12 = *v7;
        v10[1].n128_u64[0] = *(v7 + 2);
        *v10 = v12;
        *(v7 + 23) = 0;
        *v7 = 0;
        v10[1].n128_u64[1] = *(v7 + 3);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 32 * v6);
        v10 = v11;
      }

      while (_compareTopic::operator()(*(v7 + 3), v8));
      if (v11[1].n128_i8[7] < 0)
      {
        operator delete(v11->n128_u64[0]);
      }

      result = v13;
      *v11 = v13;
      v11[1].n128_u64[0] = v14;
      v11[1].n128_u64[1] = v8;
    }
  }

  return result;
}

BOOL _compareTopic::operator()(_topicCandidate *a1, _topicCandidate *a2)
{
  v2 = *(a1 + 34);
  v3 = *(a2 + 34);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v5 = _topicCandidate::computedScore(a1);
  return v5 > _topicCandidate::computedScore(a2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 32 * (v3 >> 1));
    v7 = *(a2 - 8);
    if (*v6[3] > *v7)
    {
      v9 = *(a2 - 32);
      v8 = (a2 - 32);
      *v13 = *(a2 - 24);
      *&v13[7] = *(a2 - 17);
      v10 = *(a2 - 9);
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      do
      {
        v11 = v6;
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v12 = *v11;
        v8[2] = v11[2];
        *v8 = v12;
        *(v11 + 23) = 0;
        *v11 = 0;
        v8[3] = v11[3];
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
        v8 = v11;
      }

      while (*v6[3] > *v7);
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v9;
      v11[1] = *v13;
      *(v11 + 15) = *&v13[7];
      *(v11 + 23) = v10;
      v11[3] = v7;
    }
  }
}

unsigned __int16 *normalizePunctuations(unsigned __int16 *result, unsigned int a2)
{
  if (result && a2 >= 1)
  {
    v2 = a2;
    while (1)
    {
      v3 = *result;
      v4 = 39;
      if (v3 <= 0x200F)
      {
        if (v3 - 697 <= 0xF && ((1 << (v3 + 71)) & 0x8009) != 0)
        {
          goto LABEL_17;
        }

        if (v3 != 173)
        {
          if (v3 != 180)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        goto LABEL_7;
      }

      v5 = v3 - 16;
      if (v3 - 8208 > 0x22)
      {
        goto LABEL_20;
      }

      if (((1 << v5) & 0x1F) == 0)
      {
        break;
      }

LABEL_7:
      v4 = 45;
LABEL_17:
      *result = v4;
LABEL_18:
      ++result;
      if (!--v2)
      {
        return result;
      }
    }

    if (((1 << v5) & 0x400000B00) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    if (v3 != 8722)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  return result;
}

void pommesSuggestionsTokenizeString(uint64_t a1, const char *a2, int32_t a3, _WORD *a4, unsigned __int16 *a5, uint64_t a6, char a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v71 = *MEMORY[0x1E69E9840];
  v19 = *(a6 + 62088);
  if (_normalizeUnicodeString_onceToken != -1)
  {
    dispatch_once(&_normalizeUnicodeString_onceToken, &__block_literal_global_320);
  }

  pErrorCode[0] = U_ZERO_ERROR;
  *(a6 + 16) = 0;
  bzero(dest, 0x7D0uLL);
  pDestLength = 0;
  v20 = 1000;
  u_strFromUTF8(dest, 1000, &pDestLength, a2, a3, pErrorCode);
  if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
  {
    pDestLength = 1000;
    pErrorCode[0] = U_ZERO_ERROR;
  }

  else
  {
    v20 = pDestLength;
    if (!pDestLength)
    {
      goto LABEL_17;
    }
  }

  if (_normalizeUnicodeString_norm2 && ((v19 & 1) != 0 || (v21 = unorm2_quickCheck(), v20 = pDestLength, v21 != 1)))
  {
    v25 = unorm2_normalize();
    if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      v23 = 1000;
    }

    else
    {
      v23 = v25;
    }
  }

  else
  {
    v22 = u_strToLower((a6 + 40064), 1000, dest, v20, 0, pErrorCode);
    v23 = v22;
    pDestLength = v22;
    v24 = v22;
    if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      memcpy((a6 + 40064), dest, 2 * v22);
    }

    *(a6 + 40064 + 2 * v24) = 0;
  }

  *(a6 + 16) = v23;
  if (a8)
  {
    normalizePunctuations((a6 + 40064), pDestLength);
  }

LABEL_17:
  v26 = *(a6 + 16);
  if (v26 && (v27 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], (a6 + 40064), v26, *MEMORY[0x1E695E498])) != 0)
  {
    v69 = 0u;
    v70 = 0u;
    *dest = a1;
    v65 = a6 + 40064;
    v28 = *(a6 + 16);
    v29 = v27;
    v66 = a6 + 40064 + 2 * v28;
    v67 = a6 + 16040;
    v68 = a6 + 32056;
    LOWORD(v69) = 1000;
    *&v70 = a6 + 24;
    BYTE10(v70) = a7;
    v30 = SIStringContainsNewlineCharacters((a6 + 40064), v28);
    if (v30)
    {
      a10 = 0;
    }

    if (v30)
    {
      v33 = a11;
    }

    else
    {
      v33 = 0;
    }

    cf = v29;
    CITokenizerGetTokensNew(v31, a1, v29, *a6, a12, 0, a10, 0, v33, dest);
    v34 = WORD1(v69);
    v58 = a5;
    if (a10)
    {
      v35 = WORD4(v70);
      if (*(&v69 + 1) < WORD1(v69))
      {
        v36 = WORD2(v69);
        if (WORD2(v69))
        {
          v37 = (v70 + 16 * WORD4(v70));
          *v37 = *(&v69 + 1);
          v37[1] = v36;
          WORD4(v70) = ++v35;
        }
      }
    }

    else
    {
      v35 = WORD4(v70);
    }

    v39 = a6 + 42066;
    if (v34 > 1u)
    {
      v40 = a9;
    }

    else
    {
      v40 = 0;
    }

    v38 = v34 - v40;
    if (v35 < 2u)
    {
      v41 = 1;
    }

    else
    {
      v41 = a7;
    }

    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v70 + 8) - 1;
    }

    if (v34 == v40)
    {
      v48 = (a6 + 42066);
    }

    else
    {
      v43 = 0;
      v44 = 0;
      v55 = v34 - v40;
      v56 = v35;
      v59 = v35;
      v61 = (v34 - v40);
      v45 = (a6 + 46080);
      v46 = 4001;
      v47 = a6;
      v48 = (a6 + 42066);
      do
      {
        v49 = *(v47 + 16048);
        if (v46 <= 4 * v49)
        {
          break;
        }

        v50 = (a6 + 40064 + 2 * *(v47 + 16040));
        *pErrorCode = 0;
        if (utf8_encodestr(v50, 2 * v49, v48, pErrorCode, v46))
        {
          v51 = 0;
        }

        else
        {
          v51 = *pErrorCode;
        }

        *(v45 - 1) = &v48[-v39];
        *v45 = v51;
        v52 = v46 - v51;
        v53 = &v48[v51];
        if (v52 < 2)
        {
          v48 = v53;
          break;
        }

        *v53 = 32;
        v48 = v53 + 1;
        v46 = v52 - 1;
        if (v43 == v42)
        {
          v54 = v41;
        }

        else
        {
          v54 = 1;
        }

        if ((v54 & 1) == 0)
        {
          if (v46 < 3)
          {
            break;
          }

          *(v53 + 1) = 8238;
          v48 = v53 + 3;
          v46 = v52 - 3;
          if (++v44 >= v59)
          {
            v42 = v43;
          }

          else
          {
            v42 = *(v70 + 16 * v44 + 8) + v43;
          }
        }

        ++v43;
        v45 += 2;
        v47 += 16;
      }

      while (v61 != v43);
      v38 = v55;
      v35 = v56;
    }

    *v48 = 0;
    *(a6 + 20) = v48 - v39;
    CFRelease(cf);
    a5 = v58;
  }

  else
  {
    v35 = 0;
    v38 = 0;
  }

  if (a4)
  {
    *a4 = v38;
  }

  if (a5)
  {
    *a5 = v35;
  }
}

uint64_t ___normalizeUnicodeString_block_invoke()
{
  result = unorm2_getNFCInstance();
  _normalizeUnicodeString_norm2 = result;
  return result;
}

BOOL pommesSuggestionsGetTokenCallback(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 <= a1 && a1 + 2 * a2 <= *(a4 + 16))
  {
    if ((a3 & 0x10) != 0)
    {
      if (a2 >= 1)
      {
        v6 = 0;
        v5 = (a1 - v4) >> 1;
        do
        {
          v7 = 0;
          while (*(a1 + 2 * v6 + 2 * v7) != 45)
          {
            ++v7;
            if (!(v6 - a2 + v7))
            {
              a3 = 0;
              a2 -= v6;
              goto LABEL_16;
            }
          }

          v8 = *(a4 + 42);
          v10 = *(a4 + 24);
          v9 = *(a4 + 32);
          v11 = *(a4 + 44);
          if (v7)
          {
            v12 = (v10 + 16 * v8);
            *v12 = v5;
            v12[1] = v7;
            *(v9 + 8 * v8) = 0;
            LOWORD(v8) = v8 + 1;
            ++v11;
          }

          v13 = v6 + v7;
          v14 = v5 + v7;
          v15 = (v10 + 16 * v8);
          *v15 = v14;
          v15[1] = 1;
          *(v9 + 8 * v8) = 32;
          *(a4 + 42) = v8 + 1;
          *(a4 + 44) = v11 + 1;
          v5 = v14 + 1;
          v6 = v13 + 1;
        }

        while (v6 != a2);
      }
    }

    else if ((a3 & 0x20000800) == 0)
    {
      v5 = (a1 - v4) >> 1;
LABEL_16:
      v16 = *(a4 + 42);
      v17 = *(a4 + 32);
      v18 = (*(a4 + 24) + 16 * v16);
      *v18 = v5;
      v18[1] = a2;
      *(v17 + 8 * v16) = a3;
      *(a4 + 42) = v16 + 1;
      ++*(a4 + 44);
    }
  }

  return *(a4 + 42) >= *(a4 + 40) || *(a4 + 64) > 0x3E7u;
}

BOOL pommesSuggestionsEmailAddressGetTokenCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 > a1 || &a1[a2] > *(a4 + 16))
  {
    return *(a4 + 42) >= *(a4 + 40);
  }

  v5 = (a1 - v4) >> 1;
  if ((a3 & 0x30) != 0)
  {
    if (a2 < 1)
    {
      return *(a4 + 42) >= *(a4 + 40);
    }

    v6 = 0;
    while (1)
    {
      v8 = *a1++;
      v7 = v8;
      v9 = (v8 - 33);
      if (v9 <= 0x3F)
      {
        if (((1 << v9) & 0xE00000005000767DLL) != 0)
        {
          goto LABEL_8;
        }

        if (v9 == 31)
        {
          v14 = *(a4 + 42);
          v16 = *(a4 + 24);
          v15 = *(a4 + 32);
          v17 = *(a4 + 44);
          if (v6)
          {
            v18 = (v16 + 16 * v14);
            *v18 = v5;
            v18[1] = v6;
            *(v15 + 8 * v14) = 0;
            LOWORD(v14) = v14 + 1;
            ++v17;
          }

          v19 = v5 + v6;
          v20 = (v16 + 16 * v14);
          *v20 = v19;
          v20[1] = 1;
          *(v15 + 8 * v14) = 32;
          *(a4 + 42) = v14 + 1;
          *(a4 + 44) = v17 + 1;
          v5 = v19 + 1;
          v6 = 0;
          goto LABEL_11;
        }
      }

      if ((v7 - 123) < 4)
      {
LABEL_8:
        if (v6)
        {
          v10 = *(a4 + 42);
          v11 = *(a4 + 32);
          v12 = (*(a4 + 24) + 16 * v10);
          *v12 = v5;
          v12[1] = v6;
          *(v11 + 8 * v10) = 0;
          *(a4 + 42) = v10 + 1;
          ++*(a4 + 44);
        }

        v13 = v6 + v5;
        v6 = 0;
        v5 = v13 + 1;
        goto LABEL_11;
      }

      ++v6;
LABEL_11:
      if (!--a2)
      {
        if (v6)
        {
          a3 = 0;
          goto LABEL_22;
        }

        return *(a4 + 42) >= *(a4 + 40);
      }
    }
  }

  v6 = a2;
LABEL_22:
  v21 = *(a4 + 42);
  v22 = *(a4 + 32);
  v23 = (*(a4 + 24) + 16 * v21);
  *v23 = v5;
  v23[1] = v6;
  *(v22 + 8 * v21) = a3;
  *(a4 + 42) = v21 + 1;
  ++*(a4 + 44);
  return *(a4 + 42) >= *(a4 + 40);
}

BOOL pommesSuggestionsLiteralGetTokenCallback(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 <= a1 && a1 + 2 * a2 <= *(a4 + 16))
  {
    v5 = *(a4 + 42);
    v6 = *(a4 + 32);
    v7 = (*(a4 + 24) + 16 * v5);
    *v7 = (a1 - v4) >> 1;
    v7[1] = a2;
    *(v6 + 8 * v5) = a3;
    *(a4 + 42) = v5 + 1;
    ++*(a4 + 44);
  }

  return *(a4 + 42) >= *(a4 + 40);
}

BOOL pommesSuggestionsGetSentenceCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 1)
  {
LABEL_18:
    if ((*(a5 + 66) & 1) == 0)
    {
      v23 = *(a5 + 44);
      if (*(a5 + 44))
      {
        v24 = *(a5 + 64);
        v25 = (*(a5 + 56) + 16 * v24);
        *v25 = *(a5 + 48);
        v25[1] = v23;
        *(a5 + 64) = v24 + 1;
        *(a5 + 48) = *(a5 + 42);
        *(a5 + 44) = 0;
      }
    }

    if (*(a5 + 42) < *(a5 + 40))
    {
      return *(a5 + 64) > 0x3E7u;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a5 + 40);
    v7 = *(a5 + 42);
    while (1)
    {
      v8 = (a2 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a3 + 8 * v5);
      if ((v11 & 0x10) != 0)
      {
        if (v9 >= 1)
        {
          v12 = 0;
          do
          {
            v13 = 0;
            v14 = v12;
            while (*(a1 + 2 * v14) != 45)
            {
              ++v13;
              if (v9 == ++v14)
              {
                v11 = 0;
                v9 -= v12;
                goto LABEL_14;
              }
            }

            v16 = *(a5 + 24);
            v15 = *(a5 + 32);
            v17 = *(a5 + 44);
            if (v13)
            {
              v18 = (v16 + 16 * v7);
              *v18 = v10;
              v18[1] = v13;
              *(v15 + 8 * v7++) = 0;
              ++v17;
            }

            v19 = v13 + v10;
            v20 = (v16 + 16 * v7);
            *v20 = v19;
            v20[1] = 1;
            *(v15 + 8 * v7++) = 32;
            *(a5 + 42) = v7;
            *(a5 + 44) = v17 + 1;
            v10 = v19 + 1;
            v12 = v14 + 1;
          }

          while (v14 + 1 != v9);
        }
      }

      else
      {
LABEL_14:
        v21 = *(a5 + 32);
        v22 = (*(a5 + 24) + 16 * v7);
        *v22 = v10;
        v22[1] = v9;
        *(v21 + 8 * v7++) = v11;
        *(a5 + 42) = v7;
        ++*(a5 + 44);
      }

      if (v6 <= v7 || *(a5 + 64) >= 0x3E8u)
      {
        break;
      }

      if (++v5 == a4)
      {
        goto LABEL_18;
      }
    }
  }

  return 1;
}

void freeOverlayDir(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(a1 + 8) = 0;
    v2 = malloc_size(v1);
    if (v2 >= 0x10 && v2 >= ((32 * *v1) | 0x10) && *v1 != 0)
    {
      v4 = 0;
      v5 = (v1 + 2);
      do
      {
        freeOverlayDir(v5);
        ++v4;
        v5 += 32;
      }

      while (v4 < *v1);
    }

    free(v1);
  }
}