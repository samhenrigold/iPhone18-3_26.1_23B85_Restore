uint64_t sub_255ED68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255ED69B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_255ED6A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255ED6BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255ED6D34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_255ED6ED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_255ED7060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_255ED7188(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t LIGHTHOUSE_BITACORA_PROTOTaskEventReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v106 = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v106, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v106 & 0x7F) << v13;
        if ((v106 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v40 = v14++ >= 9;
        if (v40)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        break;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) == 3)
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v108 = 0;
          v76 = objc_msgSend_position(a2, v42, v12, v11) + 1;
          if (v76 >= objc_msgSend_position(a2, v77, v79, v78) && (v83 = objc_msgSend_position(a2, v80, v82, v81) + 1, v83 <= objc_msgSend_length(a2, v84, v86, v85)))
          {
            v87 = objc_msgSend_data(a2, v80, v82, v81);
            v91 = objc_msgSend_position(a2, v88, v90, v89);
            objc_msgSend_getBytes_range_(v87, v92, v93, &v108, v91, 1);

            v97 = objc_msgSend_position(a2, v94, v96, v95);
            objc_msgSend_setPosition_(a2, v98, v99, v97 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v80, v82, v81);
          }

          v75 |= (v108 & 0x7F) << v73;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v40 = v74++ >= 9;
          if (v40)
          {
            v100 = 0;
            goto LABEL_44;
          }
        }

        v100 = objc_msgSend_hasError(a2, v42, v12, v11) ? 0 : v75;
LABEL_44:
        *(a1 + 8) = v100;
      }

      else if (v42 == 2)
      {
        v71 = PBReaderReadString();
        v72 = *(a1 + 16);
        *(a1 + 16) = v71;
      }

      else if (v42 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v107 = 0;
          v46 = objc_msgSend_position(a2, v42, v12, v11) + 1;
          if (v46 >= objc_msgSend_position(a2, v47, v49, v48) && (v53 = objc_msgSend_position(a2, v50, v52, v51) + 1, v53 <= objc_msgSend_length(a2, v54, v56, v55)))
          {
            v57 = objc_msgSend_data(a2, v50, v52, v51);
            v61 = objc_msgSend_position(a2, v58, v60, v59);
            objc_msgSend_getBytes_range_(v57, v62, v63, &v107, v61, 1);

            v67 = objc_msgSend_position(a2, v64, v66, v65);
            objc_msgSend_setPosition_(a2, v68, v69, v67 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v50, v52, v51);
          }

          v45 |= (v107 & 0x7F) << v43;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v40 = v44++ >= 9;
          if (v40)
          {
            LOBYTE(v70) = 0;
            goto LABEL_46;
          }
        }

        v70 = (v45 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_46:
        *(a1 + 24) = v70;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v102 = objc_msgSend_position(a2, v42, v12, v11);
    }

    while (v102 < objc_msgSend_length(a2, v103, v105, v104));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

void sub_255EDA4B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_255EDF598(uint64_t a1, void *a2, void *a3, void *a4)
{
  v143 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_bmltIdentifiers(v7, v9, v11, v10);

  if (v12)
  {
    v16 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v21 = objc_msgSend_bmltIdentifiers(v7, v18, v20, v19);
      v25 = objc_msgSend_trialTaskID(v21, v22, v24, v23);
      v29 = objc_msgSend_bmltIdentifiers(v7, v26, v28, v27);
      v33 = objc_msgSend_trialDeploymentID(v29, v30, v32, v31);
      *buf = 138412546;
      v138 = v25;
      v139 = 2112;
      v140 = v33;
      _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "bmltIdentifiers: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v34 = objc_msgSend_experimentIdentifiers(v7, v13, v15, v14);

    if (v34)
    {
      v35 = LBFLogContextAggregator;
      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
      {
        v36 = v35;
        v130 = objc_msgSend_experimentIdentifiers(v7, v37, v39, v38);
        v43 = objc_msgSend_trialExperimentID(v130, v40, v42, v41);
        v47 = objc_msgSend_experimentIdentifiers(v7, v44, v46, v45);
        v51 = objc_msgSend_trialDeploymentID(v47, v48, v50, v49);
        objc_msgSend_experimentIdentifiers(v7, v52, v54, v53);
        v56 = v55 = v8;
        v60 = objc_msgSend_trialTreatmentID(v56, v57, v59, v58);
        *buf = 138412802;
        v138 = v43;
        v139 = 2112;
        v140 = v51;
        v141 = 2112;
        v142 = v60;
        _os_log_impl(&dword_255ED5000, v36, OS_LOG_TYPE_INFO, "bmltIdentifiers: %@ %@ %@", buf, 0x20u);

        v8 = v55;
      }
    }
  }

  v128 = v7;
  v61 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v62 = *(a1 + 32);
    v63 = v61;
    v67 = objc_msgSend_startTime(v6, v64, v66, v65, v7);
    v70 = objc_msgSend_dateToStringInUTCAndLocal_(v62, v68, v69, v67);
    *buf = 138412290;
    v138 = v70;
    _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Bucket Start Time: %@", buf, 0xCu);
  }

  v71 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v72 = *(a1 + 32);
    v73 = v71;
    v77 = objc_msgSend_endTime(v6, v74, v76, v75);
    v80 = objc_msgSend_dateToStringInUTCAndLocal_(v72, v78, v79, v77);
    *buf = 138412290;
    v138 = v80;
    _os_log_impl(&dword_255ED5000, v73, OS_LOG_TYPE_INFO, "Bucket End Time:   %@", buf, 0xCu);
  }

  v129 = v6;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v81 = v8;
  v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, v83, &v132, v136, 16);
  if (v84)
  {
    v85 = v84;
    v86 = *v133;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v133 != v86)
        {
          objc_enumerationMutation(v81);
        }

        v88 = *(*(&v132 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v89 = v88;
          v90 = LBFLogContextAggregator;
          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
          {
            v91 = *(a1 + 32);
            v92 = v90;
            v96 = objc_msgSend_timestamp(v89, v93, v95, v94);
            v99 = objc_msgSend_dateToStringInUTCAndLocal_(v91, v97, v98, v96);
            *buf = 138412290;
            v138 = v99;
            v100 = v92;
            v101 = "BMLighthouseLedgerMlruntimedEvent %@";
LABEL_28:
            _os_log_impl(&dword_255ED5000, v100, OS_LOG_TYPE_INFO, v101, buf, 0xCu);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v102 = v88;
            v103 = LBFLogContextAggregator;
            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
            {
              v104 = *(a1 + 32);
              v92 = v103;
              v96 = objc_msgSend_timestamp(v102, v105, v107, v106);
              v99 = objc_msgSend_dateToStringInUTCAndLocal_(v104, v108, v109, v96);
              *buf = 138412290;
              v138 = v99;
              v100 = v92;
              v101 = "BMLighthouseLedgerLighthousePluginEvent %@";
              goto LABEL_28;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v110 = v88;
              v111 = LBFLogContextAggregator;
              if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
              {
                v112 = *(a1 + 32);
                v92 = v111;
                v96 = objc_msgSend_timestamp(v110, v113, v115, v114);
                v99 = objc_msgSend_dateToStringInUTCAndLocal_(v112, v116, v117, v96);
                *buf = 138412290;
                v138 = v99;
                v100 = v92;
                v101 = "BMLighthouseLedgerTrialdEvent %@";
                goto LABEL_28;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v120 = v88;
              v121 = LBFLogContextAggregator;
              if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
              {
                v122 = *(a1 + 32);
                v92 = v121;
                v96 = objc_msgSend_timestamp(v120, v123, v125, v124);
                v99 = objc_msgSend_dateToStringInUTCAndLocal_(v122, v126, v127, v96);
                *buf = 138412290;
                v138 = v99;
                v100 = v92;
                v101 = "BMLighthouseLedgerDediscoPrivacyEvent %@";
                goto LABEL_28;
              }
            }
          }
        }
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v118, v119, &v132, v136, 16);
    }

    while (v85);
  }
}

_BYTE *sub_255EDFCDC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_255EDFCEC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_255EE12D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_255EE7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_255EE831C(uint64_t a1)
{
  if (!qword_27F817DF8)
  {
    qword_27F817DF8 = _sl_dlopen();
  }

  result = objc_getClass("FedStatsDataEncoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27F817DF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_255EE841C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27F817DF8 = result;
  return result;
}

void sub_255EE84B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 8u);
}

id sub_255EE84E4(uint64_t a1, void *a2)
{

  return a2;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v55 = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v55, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v55 & 0x7F) << v13;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        break;
      }

      v42 = (v41 >> 3) - 1;
      if (v42 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v43 = off_279813B58[v42];
        v44 = PBReaderReadString();
        v45 = *v43;
        v46 = *(a1 + v45);
        *(a1 + v45) = v44;
      }

      v50 = objc_msgSend_position(a2, v47, v49, v48);
    }

    while (v50 < objc_msgSend_length(a2, v51, v53, v52));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t sub_255EE8D10(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  qword_281536D20 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a3, a1, a4);

  return MEMORY[0x2821F96F8]();
}

void sub_255EE8EC0(uint64_t a1, const char *a2, uint64_t a3, __n128 a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 16))
  {
    v6 = LBFLogContextBiomeManager;
    if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B514(v6);
    }

    v5 = *(a1 + 32);
  }

  v7 = objc_msgSend_source(*(v5 + 8), a2, a4, a3);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;
}

void sub_255EE9174(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v8 = 134217984;
    v9 = objc_msgSend_count(v3, v5, v7, v6);
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "Completed with %ld events.", &v8, 0xCu);
  }
}

void sub_255EE9230(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 32);
  v7 = objc_msgSend_eventBody(a2, a2, a4, a3);
  objc_msgSend_addObject_(v4, v5, v6, v7);
}

void sub_255EE93B0()
{
  v0 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255ED5000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

uint64_t sub_255EE9418(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_eventBody(a2, a2, a4, a3);
  v6 = (*(v4 + 16))(v4, v5);

  return v6;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOEventStatusReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v106 = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v106, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v106 & 0x7F) << v13;
        if ((v106 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v40 = v14++ >= 9;
        if (v40)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        break;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) == 3)
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v108 = 0;
          v76 = objc_msgSend_position(a2, v42, v12, v11) + 1;
          if (v76 >= objc_msgSend_position(a2, v77, v79, v78) && (v83 = objc_msgSend_position(a2, v80, v82, v81) + 1, v83 <= objc_msgSend_length(a2, v84, v86, v85)))
          {
            v87 = objc_msgSend_data(a2, v80, v82, v81);
            v91 = objc_msgSend_position(a2, v88, v90, v89);
            objc_msgSend_getBytes_range_(v87, v92, v93, &v108, v91, 1);

            v97 = objc_msgSend_position(a2, v94, v96, v95);
            objc_msgSend_setPosition_(a2, v98, v99, v97 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v80, v82, v81);
          }

          v75 |= (v108 & 0x7F) << v73;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v40 = v74++ >= 9;
          if (v40)
          {
            v100 = 0;
            goto LABEL_44;
          }
        }

        v100 = objc_msgSend_hasError(a2, v42, v12, v11) ? 0 : v75;
LABEL_44:
        *(a1 + 8) = v100;
      }

      else if (v42 == 2)
      {
        v71 = PBReaderReadString();
        v72 = *(a1 + 16);
        *(a1 + 16) = v71;
      }

      else if (v42 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v107 = 0;
          v46 = objc_msgSend_position(a2, v42, v12, v11) + 1;
          if (v46 >= objc_msgSend_position(a2, v47, v49, v48) && (v53 = objc_msgSend_position(a2, v50, v52, v51) + 1, v53 <= objc_msgSend_length(a2, v54, v56, v55)))
          {
            v57 = objc_msgSend_data(a2, v50, v52, v51);
            v61 = objc_msgSend_position(a2, v58, v60, v59);
            objc_msgSend_getBytes_range_(v57, v62, v63, &v107, v61, 1);

            v67 = objc_msgSend_position(a2, v64, v66, v65);
            objc_msgSend_setPosition_(a2, v68, v69, v67 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v50, v52, v51);
          }

          v45 |= (v107 & 0x7F) << v43;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v40 = v44++ >= 9;
          if (v40)
          {
            LOBYTE(v70) = 0;
            goto LABEL_46;
          }
        }

        v70 = (v45 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_46:
        *(a1 + 24) = v70;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v102 = objc_msgSend_position(a2, v42, v12, v11);
    }

    while (v102 < objc_msgSend_length(a2, v103, v105, v104));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEventReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        LOBYTE(v83) = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11, v83) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v83, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v83 & 0x7F) << v13;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) > 100)
      {
        switch(v42)
        {
          case 'e':
            v57 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v58 = 24;
            goto LABEL_36;
          case 'f':
            v57 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v58 = 32;
LABEL_36:
            objc_storeStrong((a1 + v58), v57);
            v83 = 0;
            v84 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOEventStatusReadFrom(v57, a2, v63, v64))
            {
LABEL_43:

              return 0;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_41;
          case 'g':
            v57 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v58 = 40;
            goto LABEL_36;
        }
      }

      else
      {
        switch(v42)
        {
          case 1:
            v57 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
            objc_storeStrong((a1 + 48), v57);
            v83 = 0;
            v84 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v57, a2, v59, v60))
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 2:
            v61 = PBReaderReadString();
            v62 = *(a1 + 16);
            *(a1 + 16) = v61;

            goto LABEL_41;
          case 3:
            *(a1 + 56) |= 1u;
            v83 = 0;
            v43 = objc_msgSend_position(a2, v42, v12, v11) + 8;
            if (v43 >= objc_msgSend_position(a2, v44, v46, v45) && (v50 = objc_msgSend_position(a2, v47, v49, v48) + 8, v50 <= objc_msgSend_length(a2, v51, v53, v52)))
            {
              v65 = objc_msgSend_data(a2, v47, v49, v48);
              v69 = objc_msgSend_position(a2, v66, v68, v67);
              objc_msgSend_getBytes_range_(v65, v70, v71, &v83, v69, 8);

              v75 = objc_msgSend_position(a2, v72, v74, v73);
              objc_msgSend_setPosition_(a2, v76, v77, v75 + 8);
            }

            else
            {
              objc_msgSend__setError(a2, v47, v49, v48);
            }

            v56.n128_u64[0] = v83;
            *(a1 + 8) = v83;
            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v78 = objc_msgSend_position(a2, v54, v56, v55);
    }

    while (v78 < objc_msgSend_length(a2, v79, v81, v80));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEventReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        LOBYTE(v133[0]) = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11, v133[0]) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, v133, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v133[0] & 0x7F) << v13;
        if ((v133[0] & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v40 = v14++ >= 9;
        if (v40)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) > 2)
      {
        break;
      }

      if (v42 != 1)
      {
        if (v42 == 2)
        {
          v71 = PBReaderReadString();
          v72 = *(a1 + 16);
          *(a1 + 16) = v71;

          goto LABEL_58;
        }

        goto LABEL_48;
      }

      v112 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
      objc_storeStrong((a1 + 32), v112);
      v133[0] = 0;
      v133[1] = 0;
      if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v112, a2, v113, v114))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_58:
      v128 = objc_msgSend_position(a2, v42, v12, v11);
      if (v128 >= objc_msgSend_length(a2, v129, v131, v130))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }
    }

    switch(v42)
    {
      case 3:
        *(a1 + 44) |= 1u;
        v133[0] = 0;
        v73 = objc_msgSend_position(a2, v42, v12, v11) + 8;
        if (v73 >= objc_msgSend_position(a2, v74, v76, v75) && (v80 = objc_msgSend_position(a2, v77, v79, v78) + 8, v80 <= objc_msgSend_length(a2, v81, v83, v82)))
        {
          v115 = objc_msgSend_data(a2, v77, v79, v78);
          v119 = objc_msgSend_position(a2, v116, v118, v117);
          objc_msgSend_getBytes_range_(v115, v120, v121, v133, v119, 8);

          v125 = objc_msgSend_position(a2, v122, v124, v123);
          objc_msgSend_setPosition_(a2, v126, v127, v125 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v77, v79, v78);
        }

        v12.n128_u64[0] = v133[0];
        *(a1 + 8) = v133[0];
        goto LABEL_58;
      case 4:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v133[0]) = 0;
          v87 = objc_msgSend_position(a2, v42, v12, v11, v133[0]) + 1;
          if (v87 >= objc_msgSend_position(a2, v88, v90, v89) && (v94 = objc_msgSend_position(a2, v91, v93, v92) + 1, v94 <= objc_msgSend_length(a2, v95, v97, v96)))
          {
            v98 = objc_msgSend_data(a2, v91, v93, v92);
            v102 = objc_msgSend_position(a2, v99, v101, v100);
            objc_msgSend_getBytes_range_(v98, v103, v104, v133, v102, 1);

            v108 = objc_msgSend_position(a2, v105, v107, v106);
            objc_msgSend_setPosition_(a2, v109, v110, v108 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v91, v93, v92);
          }

          v86 |= (v133[0] & 0x7F) << v84;
          if ((v133[0] & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v40 = v85++ >= 9;
          if (v40)
          {
            v111 = 0;
            goto LABEL_53;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v111 = 0;
        }

        else
        {
          v111 = v86;
        }

LABEL_53:
        *(a1 + 24) = v111;
        goto LABEL_58;
      case 5:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v133[0]) = 0;
          v46 = objc_msgSend_position(a2, v42, v12, v11, v133[0]) + 1;
          if (v46 >= objc_msgSend_position(a2, v47, v49, v48) && (v53 = objc_msgSend_position(a2, v50, v52, v51) + 1, v53 <= objc_msgSend_length(a2, v54, v56, v55)))
          {
            v57 = objc_msgSend_data(a2, v50, v52, v51);
            v61 = objc_msgSend_position(a2, v58, v60, v59);
            objc_msgSend_getBytes_range_(v57, v62, v63, v133, v61, 1);

            v67 = objc_msgSend_position(a2, v64, v66, v65);
            objc_msgSend_setPosition_(a2, v68, v69, v67 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v50, v52, v51);
          }

          v45 |= (v133[0] & 0x7F) << v43;
          if ((v133[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v40 = v44++ >= 9;
          if (v40)
          {
            LOBYTE(v70) = 0;
            goto LABEL_55;
          }
        }

        v70 = (v45 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_55:
        *(a1 + 40) = v70;
        goto LABEL_58;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_58;
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

void sub_255EED7FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void LBFLoggingUtilsInit(uint64_t result, uint64_t a2)
{
  if (qword_281536D28 != -1)
  {
    sub_255F0BEB8();
  }
}

uint64_t sub_255EED850()
{
  v0 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventManager);
  v1 = LBFLogContextEventManager;
  LBFLogContextEventManager = v0;

  v2 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryAggregator);
  v3 = LBFLogContextAggregator;
  LBFLogContextAggregator = v2;

  v4 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventFiltering);
  v5 = LBFLogContextEventFiltering;
  LBFLogContextEventFiltering = v4;

  v6 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBiomeManager);
  v7 = LBFLogContextBiomeManager;
  LBFLogContextBiomeManager = v6;

  v8 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventsHolder);
  v9 = LBFLogContextEventsHolder;
  LBFLogContextEventsHolder = v8;

  v10 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBiomeConverter);
  v11 = LBFLogContextBiomeConverter;
  LBFLogContextBiomeConverter = v10;

  v12 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryProtoConverter);
  v13 = LBFLogContextProtoConverter;
  LBFLogContextProtoConverter = v12;

  v14 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBitacoraStateInfo);
  v15 = LBFLogContextBitacoraStateInfo;
  LBFLogContextBitacoraStateInfo = v14;

  v16 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryTrialStatusDetector);
  v17 = LBFLogContextTrialStatusDetector;
  LBFLogContextTrialStatusDetector = v16;

  v18 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBitacoraStateTransition);
  v19 = LBFLogContextBitacoraStateTransition;
  LBFLogContextBitacoraStateTransition = v18;

  v20 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryStateDetector);
  v21 = LBFLogContextStateDetector;
  LBFLogContextStateDetector = v20;

  LBFLogContextTrialIdentifires = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryTrialIdentifires);

  return MEMORY[0x2821F96F8]();
}

uint64_t LIGHTHOUSE_BITACORA_PROTOBitacoraStateReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        LOBYTE(v545[0]) = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11, v545[0]) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, v545, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v545[0] & 0x7F) << v13;
        if ((v545[0] & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v40 = v14++ >= 9;
        if (v40)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) > 302)
      {
        if (v42 <= 402)
        {
          if (v42 > 305)
          {
            switch(v42)
            {
              case 0x132:
                v456 = 0;
                v457 = 0;
                v458 = 0;
                *(a1 + 140) |= 0x100u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v459 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v459 >= objc_msgSend_position(a2, v460, v462, v461) && (v466 = objc_msgSend_position(a2, v463, v465, v464) + 1, v466 <= objc_msgSend_length(a2, v467, v469, v468)))
                  {
                    v470 = objc_msgSend_data(a2, v463, v465, v464);
                    v474 = objc_msgSend_position(a2, v471, v473, v472);
                    objc_msgSend_getBytes_range_(v470, v475, v476, v545, v474, 1);

                    v480 = objc_msgSend_position(a2, v477, v479, v478);
                    objc_msgSend_setPosition_(a2, v481, v482, v480 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v463, v465, v464);
                  }

                  v458 |= (v545[0] & 0x7F) << v456;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v456 += 7;
                  v40 = v457++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_278;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v458;
                }

LABEL_278:
                v538 = 56;
                goto LABEL_291;
              case 0x191:
                v402 = 0;
                v403 = 0;
                v404 = 0;
                *(a1 + 140) |= 0x20u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v405 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v405 >= objc_msgSend_position(a2, v406, v408, v407) && (v412 = objc_msgSend_position(a2, v409, v411, v410) + 1, v412 <= objc_msgSend_length(a2, v413, v415, v414)))
                  {
                    v416 = objc_msgSend_data(a2, v409, v411, v410);
                    v420 = objc_msgSend_position(a2, v417, v419, v418);
                    objc_msgSend_getBytes_range_(v416, v421, v422, v545, v420, 1);

                    v426 = objc_msgSend_position(a2, v423, v425, v424);
                    objc_msgSend_setPosition_(a2, v427, v428, v426 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v409, v411, v410);
                  }

                  v404 |= (v545[0] & 0x7F) << v402;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v402 += 7;
                  v40 = v403++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_262;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v404;
                }

LABEL_262:
                v538 = 44;
                goto LABEL_291;
              case 0x192:
                v155 = 0;
                v156 = 0;
                v157 = 0;
                *(a1 + 140) |= 0x10u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v158 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v158 >= objc_msgSend_position(a2, v159, v161, v160) && (v165 = objc_msgSend_position(a2, v162, v164, v163) + 1, v165 <= objc_msgSend_length(a2, v166, v168, v167)))
                  {
                    v169 = objc_msgSend_data(a2, v162, v164, v163);
                    v173 = objc_msgSend_position(a2, v170, v172, v171);
                    objc_msgSend_getBytes_range_(v169, v174, v175, v545, v173, 1);

                    v179 = objc_msgSend_position(a2, v176, v178, v177);
                    objc_msgSend_setPosition_(a2, v180, v181, v179 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v162, v164, v163);
                  }

                  v157 |= (v545[0] & 0x7F) << v155;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v155 += 7;
                  v40 = v156++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_270;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v157;
                }

LABEL_270:
                v538 = 40;
                goto LABEL_291;
            }
          }

          else
          {
            switch(v42)
            {
              case 0x12F:
                v429 = 0;
                v430 = 0;
                v431 = 0;
                *(a1 + 140) |= 0x2000u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v432 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v432 >= objc_msgSend_position(a2, v433, v435, v434) && (v439 = objc_msgSend_position(a2, v436, v438, v437) + 1, v439 <= objc_msgSend_length(a2, v440, v442, v441)))
                  {
                    v443 = objc_msgSend_data(a2, v436, v438, v437);
                    v447 = objc_msgSend_position(a2, v444, v446, v445);
                    objc_msgSend_getBytes_range_(v443, v448, v449, v545, v447, 1);

                    v453 = objc_msgSend_position(a2, v450, v452, v451);
                    objc_msgSend_setPosition_(a2, v454, v455, v453 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v436, v438, v437);
                  }

                  v431 |= (v545[0] & 0x7F) << v429;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v429 += 7;
                  v40 = v430++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_274;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v431;
                }

LABEL_274:
                v538 = 76;
                goto LABEL_291;
              case 0x130:
                v375 = 0;
                v376 = 0;
                v377 = 0;
                *(a1 + 140) |= 0x1000u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v378 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v378 >= objc_msgSend_position(a2, v379, v381, v380) && (v385 = objc_msgSend_position(a2, v382, v384, v383) + 1, v385 <= objc_msgSend_length(a2, v386, v388, v387)))
                  {
                    v389 = objc_msgSend_data(a2, v382, v384, v383);
                    v393 = objc_msgSend_position(a2, v390, v392, v391);
                    objc_msgSend_getBytes_range_(v389, v394, v395, v545, v393, 1);

                    v399 = objc_msgSend_position(a2, v396, v398, v397);
                    objc_msgSend_setPosition_(a2, v400, v401, v399 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v382, v384, v383);
                  }

                  v377 |= (v545[0] & 0x7F) << v375;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v375 += 7;
                  v40 = v376++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_258;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v377;
                }

LABEL_258:
                v538 = 72;
                goto LABEL_291;
              case 0x131:
                v73 = 0;
                v74 = 0;
                v75 = 0;
                *(a1 + 140) |= 0x200u;
                while (1)
                {
                  LOBYTE(v545[0]) = 0;
                  v76 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                  if (v76 >= objc_msgSend_position(a2, v77, v79, v78) && (v83 = objc_msgSend_position(a2, v80, v82, v81) + 1, v83 <= objc_msgSend_length(a2, v84, v86, v85)))
                  {
                    v87 = objc_msgSend_data(a2, v80, v82, v81);
                    v91 = objc_msgSend_position(a2, v88, v90, v89);
                    objc_msgSend_getBytes_range_(v87, v92, v93, v545, v91, 1);

                    v97 = objc_msgSend_position(a2, v94, v96, v95);
                    objc_msgSend_setPosition_(a2, v98, v99, v97 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v80, v82, v81);
                  }

                  v75 |= (v545[0] & 0x7F) << v73;
                  if ((v545[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v73 += 7;
                  v40 = v74++ >= 9;
                  if (v40)
                  {
                    v72 = 0;
                    goto LABEL_266;
                  }
                }

                if (objc_msgSend_hasError(a2, v42, v12, v11))
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v75;
                }

LABEL_266:
                v538 = 60;
                goto LABEL_291;
            }
          }
        }

        else if (v42 <= 501)
        {
          switch(v42)
          {
            case 0x193:
              v511 = 0;
              v512 = 0;
              v513 = 0;
              *(a1 + 140) |= 0x80u;
              while (1)
              {
                LOBYTE(v545[0]) = 0;
                v514 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                if (v514 >= objc_msgSend_position(a2, v515, v517, v516) && (v521 = objc_msgSend_position(a2, v518, v520, v519) + 1, v521 <= objc_msgSend_length(a2, v522, v524, v523)))
                {
                  v525 = objc_msgSend_data(a2, v518, v520, v519);
                  v529 = objc_msgSend_position(a2, v526, v528, v527);
                  objc_msgSend_getBytes_range_(v525, v530, v531, v545, v529, 1);

                  v535 = objc_msgSend_position(a2, v532, v534, v533);
                  objc_msgSend_setPosition_(a2, v536, v537, v535 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v518, v520, v519);
                }

                v513 |= (v545[0] & 0x7F) << v511;
                if ((v545[0] & 0x80) == 0)
                {
                  break;
                }

                v511 += 7;
                v40 = v512++ >= 9;
                if (v40)
                {
                  v72 = 0;
                  goto LABEL_290;
                }
              }

              if (objc_msgSend_hasError(a2, v42, v12, v11))
              {
                v72 = 0;
              }

              else
              {
                v72 = v513;
              }

LABEL_290:
              v538 = 52;
              goto LABEL_291;
            case 0x194:
              v484 = 0;
              v485 = 0;
              v486 = 0;
              *(a1 + 140) |= 0x40u;
              while (1)
              {
                LOBYTE(v545[0]) = 0;
                v487 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                if (v487 >= objc_msgSend_position(a2, v488, v490, v489) && (v494 = objc_msgSend_position(a2, v491, v493, v492) + 1, v494 <= objc_msgSend_length(a2, v495, v497, v496)))
                {
                  v498 = objc_msgSend_data(a2, v491, v493, v492);
                  v502 = objc_msgSend_position(a2, v499, v501, v500);
                  objc_msgSend_getBytes_range_(v498, v503, v504, v545, v502, 1);

                  v508 = objc_msgSend_position(a2, v505, v507, v506);
                  objc_msgSend_setPosition_(a2, v509, v510, v508 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v491, v493, v492);
                }

                v486 |= (v545[0] & 0x7F) << v484;
                if ((v545[0] & 0x80) == 0)
                {
                  break;
                }

                v484 += 7;
                v40 = v485++ >= 9;
                if (v40)
                {
                  v72 = 0;
                  goto LABEL_282;
                }
              }

              if (objc_msgSend_hasError(a2, v42, v12, v11))
              {
                v72 = 0;
              }

              else
              {
                v72 = v486;
              }

LABEL_282:
              v538 = 48;
              goto LABEL_291;
            case 0x1F5:
              v182 = 0;
              v183 = 0;
              v184 = 0;
              *(a1 + 140) |= 0x4000u;
              while (1)
              {
                LOBYTE(v545[0]) = 0;
                v185 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
                if (v185 >= objc_msgSend_position(a2, v186, v188, v187) && (v192 = objc_msgSend_position(a2, v189, v191, v190) + 1, v192 <= objc_msgSend_length(a2, v193, v195, v194)))
                {
                  v196 = objc_msgSend_data(a2, v189, v191, v190);
                  v200 = objc_msgSend_position(a2, v197, v199, v198);
                  objc_msgSend_getBytes_range_(v196, v201, v202, v545, v200, 1);

                  v206 = objc_msgSend_position(a2, v203, v205, v204);
                  objc_msgSend_setPosition_(a2, v207, v208, v206 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v189, v191, v190);
                }

                v184 |= (v545[0] & 0x7F) << v182;
                if ((v545[0] & 0x80) == 0)
                {
                  break;
                }

                v182 += 7;
                v40 = v183++ >= 9;
                if (v40)
                {
                  v72 = 0;
                  goto LABEL_286;
                }
              }

              if (objc_msgSend_hasError(a2, v42, v12, v11))
              {
                v72 = 0;
              }

              else
              {
                v72 = v184;
              }

LABEL_286:
              v538 = 104;
LABEL_291:
              *(a1 + v538) = v72;
              goto LABEL_292;
          }
        }

        else
        {
          if (v42 <= 503)
          {
            if (v42 == 502)
            {
              v43 = PBReaderReadString();
              v44 = 96;
            }

            else
            {
              v43 = PBReaderReadString();
              v44 = 88;
            }

            goto LABEL_201;
          }

          if (v42 == 504)
          {
            v43 = PBReaderReadString();
            v44 = 128;
            goto LABEL_201;
          }

          if (v42 == 505)
          {
            v43 = PBReaderReadString();
            v44 = 120;
            goto LABEL_201;
          }
        }

        goto LABEL_220;
      }

      if (v42 > 200)
      {
        break;
      }

      if (v42 > 3)
      {
        switch(v42)
        {
          case 4:
            v320 = 0;
            v321 = 0;
            v322 = 0;
            while (1)
            {
              LOBYTE(v545[0]) = 0;
              v323 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
              if (v323 >= objc_msgSend_position(a2, v324, v326, v325) && (v330 = objc_msgSend_position(a2, v327, v329, v328) + 1, v330 <= objc_msgSend_length(a2, v331, v333, v332)))
              {
                v334 = objc_msgSend_data(a2, v327, v329, v328);
                v338 = objc_msgSend_position(a2, v335, v337, v336);
                objc_msgSend_getBytes_range_(v334, v339, v340, v545, v338, 1);

                v344 = objc_msgSend_position(a2, v341, v343, v342);
                objc_msgSend_setPosition_(a2, v345, v346, v344 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v327, v329, v328);
              }

              v322 |= (v545[0] & 0x7F) << v320;
              if ((v545[0] & 0x80) == 0)
              {
                break;
              }

              v320 += 7;
              v40 = v321++ >= 9;
              if (v40)
              {
                v347 = 0;
                goto LABEL_250;
              }
            }

            if (objc_msgSend_hasError(a2, v42, v12, v11))
            {
              v347 = 0;
            }

            else
            {
              v347 = v322;
            }

LABEL_250:
            *(a1 + 8) = v347;
            goto LABEL_292;
          case 0x65:
            v239 = 0;
            v240 = 0;
            v241 = 0;
            *(a1 + 140) |= 0x10000u;
            while (1)
            {
              LOBYTE(v545[0]) = 0;
              v242 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
              if (v242 >= objc_msgSend_position(a2, v243, v245, v244) && (v249 = objc_msgSend_position(a2, v246, v248, v247) + 1, v249 <= objc_msgSend_length(a2, v250, v252, v251)))
              {
                v253 = objc_msgSend_data(a2, v246, v248, v247);
                v257 = objc_msgSend_position(a2, v254, v256, v255);
                objc_msgSend_getBytes_range_(v253, v258, v259, v545, v257, 1);

                v263 = objc_msgSend_position(a2, v260, v262, v261);
                objc_msgSend_setPosition_(a2, v264, v265, v263 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v246, v248, v247);
              }

              v241 |= (v545[0] & 0x7F) << v239;
              if ((v545[0] & 0x80) == 0)
              {
                break;
              }

              v239 += 7;
              v40 = v240++ >= 9;
              if (v40)
              {
                LOBYTE(v127) = 0;
                goto LABEL_227;
              }
            }

            v127 = (v241 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_227:
            v539 = 137;
            goto LABEL_238;
          case 0x66:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 140) |= 0x8000u;
            while (1)
            {
              LOBYTE(v545[0]) = 0;
              v103 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
              if (v103 >= objc_msgSend_position(a2, v104, v106, v105) && (v110 = objc_msgSend_position(a2, v107, v109, v108) + 1, v110 <= objc_msgSend_length(a2, v111, v113, v112)))
              {
                v114 = objc_msgSend_data(a2, v107, v109, v108);
                v118 = objc_msgSend_position(a2, v115, v117, v116);
                objc_msgSend_getBytes_range_(v114, v119, v120, v545, v118, 1);

                v124 = objc_msgSend_position(a2, v121, v123, v122);
                objc_msgSend_setPosition_(a2, v125, v126, v124 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v107, v109, v108);
              }

              v102 |= (v545[0] & 0x7F) << v100;
              if ((v545[0] & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v40 = v101++ >= 9;
              if (v40)
              {
                LOBYTE(v127) = 0;
                goto LABEL_237;
              }
            }

            v127 = (v102 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_237:
            v539 = 136;
LABEL_238:
            *(a1 + v539) = v127;
            goto LABEL_292;
        }

        goto LABEL_220;
      }

      if (v42 == 1)
      {
        v43 = PBReaderReadString();
        v44 = 80;
        goto LABEL_201;
      }

      if (v42 != 2)
      {
        if (v42 == 3)
        {
          v43 = PBReaderReadString();
          v44 = 16;
LABEL_201:
          v483 = *(a1 + v44);
          *(a1 + v44) = v43;

          goto LABEL_292;
        }

        goto LABEL_220;
      }

      v209 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
      objc_storeStrong((a1 + 112), v209);
      v545[0] = 0;
      v545[1] = 0;
      if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v209, a2, v210, v211))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_292:
      v540 = objc_msgSend_position(a2, v42, v12, v11);
      if (v540 >= objc_msgSend_length(a2, v541, v543, v542))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }
    }

    if (v42 <= 203)
    {
      if (v42 == 201)
      {
        v293 = 0;
        v294 = 0;
        v295 = 0;
        *(a1 + 140) |= 4u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v296 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v296 >= objc_msgSend_position(a2, v297, v299, v298) && (v303 = objc_msgSend_position(a2, v300, v302, v301) + 1, v303 <= objc_msgSend_length(a2, v304, v306, v305)))
          {
            v307 = objc_msgSend_data(a2, v300, v302, v301);
            v311 = objc_msgSend_position(a2, v308, v310, v309);
            objc_msgSend_getBytes_range_(v307, v312, v313, v545, v311, 1);

            v317 = objc_msgSend_position(a2, v314, v316, v315);
            objc_msgSend_setPosition_(a2, v318, v319, v317 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v300, v302, v301);
          }

          v295 |= (v545[0] & 0x7F) << v293;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v40 = v294++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_246;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v295;
        }

LABEL_246:
        v538 = 32;
      }

      else if (v42 == 202)
      {
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 140) |= 8u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v215 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v215 >= objc_msgSend_position(a2, v216, v218, v217) && (v222 = objc_msgSend_position(a2, v219, v221, v220) + 1, v222 <= objc_msgSend_length(a2, v223, v225, v224)))
          {
            v226 = objc_msgSend_data(a2, v219, v221, v220);
            v230 = objc_msgSend_position(a2, v227, v229, v228);
            objc_msgSend_getBytes_range_(v226, v231, v232, v545, v230, 1);

            v236 = objc_msgSend_position(a2, v233, v235, v234);
            objc_msgSend_setPosition_(a2, v237, v238, v236 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v219, v221, v220);
          }

          v214 |= (v545[0] & 0x7F) << v212;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v40 = v213++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_225;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v214;
        }

LABEL_225:
        v538 = 36;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 140) |= 1u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v48 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v48 >= objc_msgSend_position(a2, v49, v51, v50) && (v55 = objc_msgSend_position(a2, v52, v54, v53) + 1, v55 <= objc_msgSend_length(a2, v56, v58, v57)))
          {
            v59 = objc_msgSend_data(a2, v52, v54, v53);
            v63 = objc_msgSend_position(a2, v60, v62, v61);
            objc_msgSend_getBytes_range_(v59, v64, v65, v545, v63, 1);

            v69 = objc_msgSend_position(a2, v66, v68, v67);
            objc_msgSend_setPosition_(a2, v70, v71, v69 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v52, v54, v53);
          }

          v47 |= (v545[0] & 0x7F) << v45;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v40 = v46++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_235;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v47;
        }

LABEL_235:
        v538 = 24;
      }

      goto LABEL_291;
    }

    switch(v42)
    {
      case 0xCC:
        v348 = 0;
        v349 = 0;
        v350 = 0;
        *(a1 + 140) |= 2u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v351 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v351 >= objc_msgSend_position(a2, v352, v354, v353) && (v358 = objc_msgSend_position(a2, v355, v357, v356) + 1, v358 <= objc_msgSend_length(a2, v359, v361, v360)))
          {
            v362 = objc_msgSend_data(a2, v355, v357, v356);
            v366 = objc_msgSend_position(a2, v363, v365, v364);
            objc_msgSend_getBytes_range_(v362, v367, v368, v545, v366, 1);

            v372 = objc_msgSend_position(a2, v369, v371, v370);
            objc_msgSend_setPosition_(a2, v373, v374, v372 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v355, v357, v356);
          }

          v350 |= (v545[0] & 0x7F) << v348;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v348 += 7;
          v40 = v349++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_254;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v350;
        }

LABEL_254:
        v538 = 28;
        goto LABEL_291;
      case 0x12D:
        v266 = 0;
        v267 = 0;
        v268 = 0;
        *(a1 + 140) |= 0x800u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v269 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v269 >= objc_msgSend_position(a2, v270, v272, v271) && (v276 = objc_msgSend_position(a2, v273, v275, v274) + 1, v276 <= objc_msgSend_length(a2, v277, v279, v278)))
          {
            v280 = objc_msgSend_data(a2, v273, v275, v274);
            v284 = objc_msgSend_position(a2, v281, v283, v282);
            objc_msgSend_getBytes_range_(v280, v285, v286, v545, v284, 1);

            v290 = objc_msgSend_position(a2, v287, v289, v288);
            objc_msgSend_setPosition_(a2, v291, v292, v290 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v273, v275, v274);
          }

          v268 |= (v545[0] & 0x7F) << v266;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v266 += 7;
          v40 = v267++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_231;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v268;
        }

LABEL_231:
        v538 = 68;
        goto LABEL_291;
      case 0x12E:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 140) |= 0x400u;
        while (1)
        {
          LOBYTE(v545[0]) = 0;
          v131 = objc_msgSend_position(a2, v42, v12, v11, v545[0]) + 1;
          if (v131 >= objc_msgSend_position(a2, v132, v134, v133) && (v138 = objc_msgSend_position(a2, v135, v137, v136) + 1, v138 <= objc_msgSend_length(a2, v139, v141, v140)))
          {
            v142 = objc_msgSend_data(a2, v135, v137, v136);
            v146 = objc_msgSend_position(a2, v143, v145, v144);
            objc_msgSend_getBytes_range_(v142, v147, v148, v545, v146, 1);

            v152 = objc_msgSend_position(a2, v149, v151, v150);
            objc_msgSend_setPosition_(a2, v153, v154, v152 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v135, v137, v136);
          }

          v130 |= (v545[0] & 0x7F) << v128;
          if ((v545[0] & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v40 = v129++ >= 9;
          if (v40)
          {
            v72 = 0;
            goto LABEL_242;
          }
        }

        if (objc_msgSend_hasError(a2, v42, v12, v11))
        {
          v72 = 0;
        }

        else
        {
          v72 = v130;
        }

LABEL_242:
        v538 = 64;
        goto LABEL_291;
    }

LABEL_220:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_292;
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t sub_255EF21A0()
{
  qword_281536D08 = objc_alloc_init(LBFEventManager);

  return MEMORY[0x2821F96F8]();
}

void sub_255EF22FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BF64();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v7 = objc_msgSend_Lighthouse(v3, v4, v6, v5);
  v11 = objc_msgSend_Ledger(v7, v8, v10, v9);
  v15 = objc_msgSend_LighthousePluginEvent(v11, v12, v14, v13);
  v18 = objc_msgSend_init_(v2, v16, v17, v15);
  v19 = *(a1 + 32);
  v20 = *(v19 + 8);
  *(v19 + 8) = v18;
}

void sub_255EF246C(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BF98();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v7 = objc_msgSend_Lighthouse(v3, v4, v6, v5);
  v11 = objc_msgSend_Ledger(v7, v8, v10, v9);
  v15 = objc_msgSend_TrialdEvent(v11, v12, v14, v13);
  v18 = objc_msgSend_init_(v2, v16, v17, v15);
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  *(v19 + 16) = v18;
}

void sub_255EF25DC(uint64_t a1)
{
  if (*(*(a1 + 32) + 24) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BFCC();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v7 = objc_msgSend_Lighthouse(v3, v4, v6, v5);
  v11 = objc_msgSend_Ledger(v7, v8, v10, v9);
  v15 = objc_msgSend_MlruntimedEvent(v11, v12, v14, v13);
  v18 = objc_msgSend_init_(v2, v16, v17, v15);
  v19 = *(a1 + 32);
  v20 = *(v19 + 24);
  *(v19 + 24) = v18;
}

void sub_255EF274C(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0C000();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v7 = objc_msgSend_Lighthouse(v3, v4, v6, v5);
  v11 = objc_msgSend_Ledger(v7, v8, v10, v9);
  v15 = objc_msgSend_DediscoPrivacyEvent(v11, v12, v14, v13);
  v18 = objc_msgSend_init_(v2, v16, v17, v15);
  v19 = *(a1 + 32);
  v20 = *(v19 + 32);
  *(v19 + 32) = v18;
}

uint64_t sub_255EF3544(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1[4] && (v8 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v6, v5), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend_isEqualIdentifiers_identifiers_(v8, v10, v11, v9, a1[4]), v9, !v8))
  {
    v55 = 1;
  }

  else
  {
    v12 = a1[5];
    v13 = objc_msgSend_trialIdentifiers(v7, v4, v6, v5);
    v16 = objc_msgSend_convertToLBFTrialIdentifiers_(v12, v14, v15, v13);

    if (objc_msgSend_eventType(v7, v17, v19, v18) == 1)
    {
      v23 = [LBFTrialEvent alloc];
      v27 = objc_msgSend_eventSucceeded(v7, v24, v26, v25);
      v30 = objc_msgSend_initWithAllocation_(v23, v28, v29, v27);
    }

    else
    {
      v30 = 0;
    }

    if (objc_msgSend_eventType(v7, v20, v22, v21) == 2)
    {
      v34 = [LBFTrialEvent alloc];
      v38 = objc_msgSend_eventSucceeded(v7, v35, v37, v36);
      v41 = objc_msgSend_initWithActivation_(v34, v39, v40, v38);

      v30 = v41;
    }

    if (objc_msgSend_eventType(v7, v31, v33, v32) == 3)
    {
      v45 = [LBFTrialEvent alloc];
      v49 = objc_msgSend_eventSucceeded(v7, v46, v48, v47);
      v52 = objc_msgSend_initWithDeactivation_(v45, v50, v51, v49);

      v30 = v52;
    }

    v53 = a1[6];
    v54 = objc_msgSend_timestamp(v7, v42, v44, v43);
    v55 = (*(v53 + 16))(v53, v16, v30, v54);
  }

  return v55;
}

void sub_255EF37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF3810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_255EF3988(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1[4] && (v8 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v6, v5), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend_isEqualIdentifiers_identifiers_(v8, v10, v11, v9, a1[4]), v9, !v8))
  {
    v88 = 1;
  }

  else
  {
    v12 = a1[5];
    v13 = objc_msgSend_trialIdentifiers(v7, v4, v6, v5);
    v16 = objc_msgSend_convertToLBFTrialIdentifiers_(v12, v14, v15, v13);

    v20 = objc_msgSend_performTaskStatus(v7, v17, v19, v18);

    if (v20)
    {
      v24 = objc_msgSend_performTaskStatus(v7, v21, v23, v22);
      v28 = objc_msgSend_errorDomain(v24, v25, v27, v26);

      if (v28)
      {
        v29 = objc_alloc(MEMORY[0x277CCA9B8]);
        v33 = objc_msgSend_performTaskStatus(v7, v30, v32, v31);
        v37 = objc_msgSend_errorDomain(v33, v34, v36, v35);
        v41 = objc_msgSend_performTaskStatus(v7, v38, v40, v39);
        v45 = objc_msgSend_errorCode(v41, v42, v44, v43);
        v28 = objc_msgSend_initWithDomain_code_userInfo_(v29, v46, v47, v37, v45, 0);
      }

      v48 = [LBFLighthouseEvent alloc];
      v52 = objc_msgSend_performTaskStatus(v7, v49, v51, v50);
      v56 = objc_msgSend_succeeded(v52, v53, v55, v54);
      v20 = objc_msgSend_initWithPerformTaskStatus_error_(v48, v57, v58, v56, v28);
    }

    v59 = objc_msgSend_performTrialTaskStatus(v7, v21, v23, v22);

    if (v59)
    {
      v63 = objc_msgSend_performTrialTaskStatus(v7, v60, v62, v61);
      v67 = objc_msgSend_errorDomain(v63, v64, v66, v65);

      if (v67)
      {
        v68 = objc_alloc(MEMORY[0x277CCA9B8]);
        v72 = objc_msgSend_performTrialTaskStatus(v7, v69, v71, v70);
        v76 = objc_msgSend_errorDomain(v72, v73, v75, v74);
        v80 = objc_msgSend_performTrialTaskStatus(v7, v77, v79, v78);
        v84 = objc_msgSend_errorCode(v80, v81, v83, v82);
        v87 = objc_msgSend_initWithDomain_code_userInfo_(v68, v85, v86, v76, v84, 0);
      }

      else
      {
        v87 = 0;
      }

      v89 = [LBFLighthouseEvent alloc];
      v93 = objc_msgSend_performTrialTaskStatus(v7, v90, v92, v91);
      v97 = objc_msgSend_succeeded(v93, v94, v96, v95);
      v100 = objc_msgSend_initWithPerformTrialTaskStatus_error_(v89, v98, v99, v97, v87);

      v20 = v100;
    }

    v101 = objc_msgSend_stop(v7, v60, v62, v61);

    if (v101)
    {
      v105 = objc_msgSend_stop(v7, v102, v104, v103);
      v109 = objc_msgSend_errorDomain(v105, v106, v108, v107);

      if (v109)
      {
        v110 = objc_alloc(MEMORY[0x277CCA9B8]);
        v114 = objc_msgSend_stop(v7, v111, v113, v112);
        v118 = objc_msgSend_errorDomain(v114, v115, v117, v116);
        v122 = objc_msgSend_stop(v7, v119, v121, v120);
        v126 = objc_msgSend_errorCode(v122, v123, v125, v124);
        v129 = objc_msgSend_initWithDomain_code_userInfo_(v110, v127, v128, v118, v126, 0);
      }

      else
      {
        v129 = 0;
      }

      v130 = [LBFLighthouseEvent alloc];
      v134 = objc_msgSend_stop(v7, v131, v133, v132);
      v138 = objc_msgSend_succeeded(v134, v135, v137, v136);
      v141 = objc_msgSend_initWithStop_error_(v130, v139, v140, v138, v129);

      v20 = v141;
    }

    v142 = a1[6];
    v143 = objc_msgSend_timestamp(v7, v102, v104, v103);
    v88 = (*(v142 + 16))(v142, v16, v20, v143);
  }

  return v88;
}

void sub_255EF3E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF3FD0(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1[4] && (v8 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v6, v5), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend_isEqualIdentifiers_identifiers_(v8, v10, v11, v9, a1[4]), v9, !v8))
  {
    v64 = 1;
  }

  else
  {
    v12 = a1[5];
    v13 = objc_msgSend_trialIdentifiers(v7, v4, v6, v5);
    v16 = objc_msgSend_convertToLBFTrialIdentifiers_(v12, v14, v15, v13);

    v20 = objc_msgSend_activityScheduleStatus(v7, v17, v19, v18);

    if (v20)
    {
      v24 = [LBFMLRuntimedEvent alloc];
      v28 = objc_msgSend_activityScheduleStatus(v7, v25, v27, v26);
      v32 = objc_msgSend_scheduled(v28, v29, v31, v30);
      v20 = objc_msgSend_initWithScheduleStatus_(v24, v33, v34, v32);
    }

    v35 = objc_msgSend_taskFetched(v7, v21, v23, v22);

    if (v35)
    {
      v39 = objc_msgSend_taskFetched(v7, v36, v38, v37);
      v43 = objc_msgSend_errorDomain(v39, v40, v42, v41);

      if (v43)
      {
        v44 = objc_alloc(MEMORY[0x277CCA9B8]);
        v48 = objc_msgSend_taskFetched(v7, v45, v47, v46);
        v52 = objc_msgSend_errorDomain(v48, v49, v51, v50);
        v56 = objc_msgSend_taskFetched(v7, v53, v55, v54);
        v60 = objc_msgSend_errorCode(v56, v57, v59, v58);
        v63 = objc_msgSend_initWithDomain_code_userInfo_(v44, v61, v62, v52, v60, 0);
      }

      else
      {
        v63 = 0;
      }

      v65 = [LBFMLRuntimedEvent alloc];
      v69 = objc_msgSend_taskFetched(v7, v66, v68, v67);
      v73 = objc_msgSend_succeeded(v69, v70, v72, v71);
      v76 = objc_msgSend_initWithTaskFetched_error_(v65, v74, v75, v73, v63);

      v20 = v76;
    }

    v77 = objc_msgSend_taskScheduled(v7, v36, v38, v37);

    if (v77)
    {
      v81 = objc_msgSend_taskScheduled(v7, v78, v80, v79);
      v85 = objc_msgSend_errorDomain(v81, v82, v84, v83);

      if (v85)
      {
        v86 = objc_alloc(MEMORY[0x277CCA9B8]);
        v90 = objc_msgSend_taskScheduled(v7, v87, v89, v88);
        v94 = objc_msgSend_errorDomain(v90, v91, v93, v92);
        v98 = objc_msgSend_taskScheduled(v7, v95, v97, v96);
        v102 = objc_msgSend_errorCode(v98, v99, v101, v100);
        v105 = objc_msgSend_initWithDomain_code_userInfo_(v86, v103, v104, v94, v102, 0);
      }

      else
      {
        v105 = 0;
      }

      v106 = [LBFMLRuntimedEvent alloc];
      v110 = objc_msgSend_taskScheduled(v7, v107, v109, v108);
      v114 = objc_msgSend_succeeded(v110, v111, v113, v112);
      v117 = objc_msgSend_initWithTaskScheduled_error_(v106, v115, v116, v114, v105);

      v20 = v117;
    }

    v118 = objc_msgSend_taskCompleted(v7, v78, v80, v79);

    if (v118)
    {
      v122 = objc_msgSend_taskCompleted(v7, v119, v121, v120);
      v126 = objc_msgSend_errorDomain(v122, v123, v125, v124);

      if (v126)
      {
        v127 = objc_alloc(MEMORY[0x277CCA9B8]);
        v131 = objc_msgSend_taskCompleted(v7, v128, v130, v129);
        v135 = objc_msgSend_errorDomain(v131, v132, v134, v133);
        v139 = objc_msgSend_taskCompleted(v7, v136, v138, v137);
        v143 = objc_msgSend_errorCode(v139, v140, v142, v141);
        v146 = objc_msgSend_initWithDomain_code_userInfo_(v127, v144, v145, v135, v143, 0);
      }

      else
      {
        v146 = 0;
      }

      v147 = [LBFMLRuntimedEvent alloc];
      v151 = objc_msgSend_taskCompleted(v7, v148, v150, v149);
      v155 = objc_msgSend_succeeded(v151, v152, v154, v153);
      v158 = objc_msgSend_initWithTaskCompleted_error_(v147, v156, v157, v155, v146);

      v20 = v158;
    }

    v159 = a1[6];
    v160 = objc_msgSend_timestamp(v7, v119, v121, v120);
    v64 = (*(v159 + 16))(v159, v16, v20, v160);
  }

  return v64;
}

void sub_255EF44FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF4674(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1[4] && (v8 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v6, v5), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend_isEqualIdentifiers_identifiers_(v8, v10, v11, v9, a1[4]), v9, !v8))
  {
    v36 = 1;
  }

  else
  {
    v12 = a1[5];
    v13 = objc_msgSend_trialIdentifiers(v7, v4, v6, v5);
    v75 = objc_msgSend_convertToLBFTrialIdentifiers_(v12, v14, v15, v13);

    v19 = objc_msgSend_event(v7, v16, v18, v17);
    v23 = objc_msgSend_errorMessage(v19, v20, v22, v21);

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v28 = objc_msgSend_event(v7, v25, v27, v26);
      v32 = objc_msgSend_errorMessage(v28, v29, v31, v30);
      v35 = objc_msgSend_initWithDomain_code_userInfo_(v24, v33, v34, v32, 0, 0);
    }

    else
    {
      v35 = 0;
    }

    v37 = [LBFDprivacydEvent alloc];
    v41 = objc_msgSend_event(v7, v38, v40, v39);
    v45 = objc_msgSend_phase(v41, v42, v44, v43);
    v49 = objc_msgSend_eventIdentifier(v7, v46, v48, v47);
    v53 = objc_msgSend_event(v7, v50, v52, v51);
    v57 = objc_msgSend_succeeded(v53, v54, v56, v55);
    v61 = objc_msgSend_aggregateFunction(v7, v58, v60, v59);
    v65 = objc_msgSend_count(v7, v62, v64, v63);
    v68 = objc_msgSend_initWithEventPhase_eventUUID_succeeded_error_aggregateFunction_count_(v37, v66, v67, v45, v49, v57, v35, v61, v65);

    v69 = a1[6];
    v73 = objc_msgSend_timestamp(v7, v70, v72, v71);
    v36 = (*(v69 + 16))(v69, v75, v68, v73);
  }

  return v36;
}

void sub_255EF49A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_255EF4A90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_255EF4D8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEventReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        LOBYTE(v85) = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11, v85) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v85, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v85 & 0x7F) << v13;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) <= 100)
      {
        switch(v42)
        {
          case 1:
            v43 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
            objc_storeStrong((a1 + 56), v43);
            v85 = 0;
            v86 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v43, a2, v59, v60))
            {
LABEL_49:

              return 0;
            }

            goto LABEL_42;
          case 2:
            v69 = PBReaderReadString();
            v70 = *(a1 + 24);
            *(a1 + 24) = v69;

            goto LABEL_43;
          case 3:
            *(a1 + 64) |= 1u;
            v85 = 0;
            v45 = objc_msgSend_position(a2, v42, v12, v11) + 8;
            if (v45 >= objc_msgSend_position(a2, v46, v48, v47) && (v52 = objc_msgSend_position(a2, v49, v51, v50) + 8, v52 <= objc_msgSend_length(a2, v53, v55, v54)))
            {
              v71 = objc_msgSend_data(a2, v49, v51, v50);
              v75 = objc_msgSend_position(a2, v72, v74, v73);
              objc_msgSend_getBytes_range_(v71, v76, v77, &v85, v75, 8);

              v81 = objc_msgSend_position(a2, v78, v80, v79);
              objc_msgSend_setPosition_(a2, v82, v83, v81 + 8);
            }

            else
            {
              objc_msgSend__setError(a2, v49, v51, v50);
            }

            v58.n128_u64[0] = v85;
            *(a1 + 8) = v85;
            goto LABEL_43;
        }
      }

      else if (v42 > 102)
      {
        if (v42 == 103)
        {
          v43 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v44 = 48;
LABEL_40:
          objc_storeStrong((a1 + v44), v43);
          v85 = 0;
          v86 = 0;
          if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOTaskEventReadFrom(v43, a2, v63, v64))
          {
            goto LABEL_49;
          }

LABEL_42:
          PBReaderRecallMark();

          goto LABEL_43;
        }

        if (v42 == 104)
        {
          v43 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v44 = 32;
          goto LABEL_40;
        }
      }

      else
      {
        if (v42 == 101)
        {
          v43 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
          objc_storeStrong((a1 + 16), v43);
          v85 = 0;
          v86 = 0;
          if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOScheduleStatusReadFrom(v43, a2, v61, v62))
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (v42 == 102)
        {
          v43 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v44 = 40;
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v65 = objc_msgSend_position(a2, v56, v58, v57);
    }

    while (v65 < objc_msgSend_length(a2, v66, v68, v67));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v54 = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v54, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v54 & 0x7F) << v13;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      if ((v41 >> 3) == 1)
      {
        break;
      }

      if ((v41 >> 3) == 2)
      {
        v42 = &OBJC_IVAR___LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers__trialDeploymentID;
LABEL_21:
        v43 = PBReaderReadString();
        v44 = *v42;
        v45 = *(a1 + v44);
        *(a1 + v44) = v43;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v49 = objc_msgSend_position(a2, v46, v48, v47);
      if (v49 >= objc_msgSend_length(a2, v50, v52, v51))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }
    }

    v42 = &OBJC_IVAR___LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers__trialTaskID;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOScheduleStatusReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v76 = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v76, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v76 & 0x7F) << v13;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v40 = v14++ >= 9;
        if (v40)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        break;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        break;
      }

      v42 = (v41 >> 3);
      if ((v41 >> 3) == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v77 = 0;
          v46 = objc_msgSend_position(a2, v42, v12, v11) + 1;
          if (v46 >= objc_msgSend_position(a2, v47, v49, v48) && (v53 = objc_msgSend_position(a2, v50, v52, v51) + 1, v53 <= objc_msgSend_length(a2, v54, v56, v55)))
          {
            v57 = objc_msgSend_data(a2, v50, v52, v51);
            v61 = objc_msgSend_position(a2, v58, v60, v59);
            objc_msgSend_getBytes_range_(v57, v62, v63, &v77, v61, 1);

            v67 = objc_msgSend_position(a2, v64, v66, v65);
            objc_msgSend_setPosition_(a2, v68, v69, v67 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v50, v52, v51);
          }

          v45 |= (v77 & 0x7F) << v43;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v40 = v44++ >= 9;
          if (v40)
          {
            LOBYTE(v70) = 0;
            goto LABEL_30;
          }
        }

        v70 = (v45 != 0) & ~objc_msgSend_hasError(a2, v42, v12, v11);
LABEL_30:
        *(a1 + 8) = v70;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v72 = objc_msgSend_position(a2, v42, v12, v11);
    }

    while (v72 < objc_msgSend_length(a2, v73, v75, v74));
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = objc_msgSend_position(a2, a2, a4, a3);
  if (v6 < objc_msgSend_length(a2, v7, v9, v8))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        LOBYTE(v55) = 0;
        v16 = objc_msgSend_position(a2, v10, v12, v11, v55) + 1;
        if (v16 >= objc_msgSend_position(a2, v17, v19, v18) && (v23 = objc_msgSend_position(a2, v20, v22, v21) + 1, v23 <= objc_msgSend_length(a2, v24, v26, v25)))
        {
          v27 = objc_msgSend_data(a2, v20, v22, v21);
          v31 = objc_msgSend_position(a2, v28, v30, v29);
          objc_msgSend_getBytes_range_(v27, v32, v33, &v55, v31, 1);

          v37 = objc_msgSend_position(a2, v34, v36, v35);
          objc_msgSend_setPosition_(a2, v38, v39, v37 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v22, v21);
        }

        v15 |= (v55 & 0x7F) << v13;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v41 = 0;
          goto LABEL_15;
        }
      }

      v41 = objc_msgSend_hasError(a2, v10, v12, v11) ? 0 : v15;
LABEL_15:
      if (objc_msgSend_hasError(a2, v10, v12, v11))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      v11 = v41 & 7;
      if (v11 == 4)
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }

      if ((v41 >> 3) == 2)
      {
        break;
      }

      if ((v41 >> 3) == 1)
      {
        v42 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
        objc_storeStrong((a1 + 16), v42);
        v55 = 0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiersReadFrom(v42, a2, v43, v44))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v50 = objc_msgSend_position(a2, v47, v49, v48);
      if (v50 >= objc_msgSend_length(a2, v51, v53, v52))
      {
        return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
      }
    }

    v42 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    objc_storeStrong((a1 + 8), v42);
    v55 = 0;
    v56 = 0;
    if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiersReadFrom(v42, a2, v45, v46))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v10, v12, v11) ^ 1;
}

uint64_t sub_255EF96A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F08B40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_255EF96F4@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_255F0701C(a2);
  *a1 = result;
  return result;
}

unint64_t sub_255EF971C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F0701C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255EF9758(uint64_t a1, uint64_t a2)
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255EF97BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F08B94();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_255EF9808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

unint64_t sub_255EF9868@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t *sub_255EF987C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_255EF98A4()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A200);
  sub_255F06F80(v0, qword_27F81A200);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "experimentIdentifiers";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bmltIdentifiers";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EF9A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_255EF9B00(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_255EF9BB4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_255EF9B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers, &unk_255F10580);
  return sub_255F0CAA8();
}

uint64_t sub_255EF9BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers, &unk_255F10418);
  return sub_255F0CAA8();
}

uint64_t sub_255EF9C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EF9CD8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_255EF9EE8(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EF9CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F08A10(a1 + *(v12 + 20), v7, &qword_27F817AD8, &qword_255F0F798);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817AD8, &qword_255F0F798);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers, &unk_255F10580);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
}

uint64_t sub_255EF9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F08A10(a1 + *(v12 + 24), v7, &qword_27F817AE0, &unk_255F0F7A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817AE0, &unk_255F0F7A0);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers, &unk_255F10418);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
}

uint64_t sub_255EFA0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_255EFA230(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CA0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFA2D0(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFA33C(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);

  return sub_255F0CAF8();
}

uint64_t sub_255EFA3BC()
{
  result = MEMORY[0x259C51540](0xD000000000000016, 0x8000000255F12DC0);
  qword_27F81A218 = 0xD00000000000003ALL;
  unk_27F81A220 = 0x8000000255F12D50;
  return result;
}

uint64_t sub_255EFA430()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A228);
  sub_255F06F80(v0, qword_27F81A228);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trialExperimentID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trialDeploymentID";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "trialTreatmentID";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFA644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
      sub_255F0CA88();
    }
  }

  return result;
}

uint64_t sub_255EFA708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFADE0(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
    sub_255EFA7B8(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFA7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFA834@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_255EFA8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CD0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers, &unk_255F10548);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFA974(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers, &unk_255F10580);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFA9E0(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers, &unk_255F10580);

  return sub_255F0CAF8();
}

uint64_t sub_255EFAA60()
{
  result = MEMORY[0x259C51540](0xD000000000000010, 0x8000000255F12E40);
  qword_27F81A240 = 0xD00000000000003ALL;
  *algn_27F81A248 = 0x8000000255F12D50;
  return result;
}

uint64_t sub_255EFAAD8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A250);
  sub_255F06F80(v0, qword_27F81A250);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trialTaskID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trialDeploymentID";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
      sub_255F0CA88();
    }
  }

  return result;
}

uint64_t sub_255EFAD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFADE0(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFAE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFAED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_255EFAF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CD8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers, &unk_255F103E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFB00C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers, &unk_255F10418);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFB078(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers, &unk_255F10418);

  return sub_255F0CAF8();
}

uint64_t sub_255EFB0F8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A268);
  sub_255F06F80(v0, qword_27F81A268);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255F0F5E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "trialIdentifiers";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_255F0CB88();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "contextID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "performTaskStatus";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "performTrialTaskStatus";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "stop";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  return sub_255F0CB98();
}

uint64_t sub_255EFB3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 100)
    {
      switch(result)
      {
        case 'e':
          sub_255EFB5DC(a1, v5, a2, a3);
          break;
        case 'f':
          sub_255EFB690(a1, v5, a2, a3);
          break;
        case 'g':
          sub_255EFB744(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_255EFB524(a1, v5, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
          break;
        case 2:
          type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
          sub_255F0CA88();
          break;
        case 3:
          type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
          sub_255F0CA78();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_255EFB524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFB904(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
    sub_255F00FC8(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
    sub_255EFBB18(v3, a1, a2, a3);
    sub_255EFBD28(v3, a1, a2, a3);
    sub_255EFBF38(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_255F08A10(a1 + *(v14 + 20), v9, &qword_27F817CF0, &qword_255F10808);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v9, v13, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  sub_255F0CB78();
  return sub_255F06F20(v13, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255EFBB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v12 + 32), v7, &qword_27F817CE8, &qword_255F10800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFBD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v12 + 36), v7, &qword_27F817CE8, &qword_255F10800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFBF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v12 + 40), v7, &qword_27F817CE8, &qword_255F10800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFC148@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = a1[5];
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1[8];
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v13 = *(*(v10 - 8) + 56);
  (v13)((v10 - 8), a2 + v9, 1, 1, v10);
  v13(a2 + a1[9], 1, 1, v10);
  v11 = a2 + a1[10];

  return (v13)(v11, 1, 1, v10);
}

uint64_t sub_255EFC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CE0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent, &unk_255F10278);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFC370(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent, &unk_255F102B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFC3DC(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent, &unk_255F102B0);

  return sub_255F0CAF8();
}

uint64_t sub_255EFC45C()
{
  result = MEMORY[0x259C51540](0x7453746E6576452ELL, 0xEC00000073757461);
  qword_27F81A280 = 0xD00000000000003FLL;
  *algn_27F81A288 = 0x8000000255F12E60;
  return result;
}

uint64_t sub_255EFC4D0()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A290);
  sub_255F06F80(v0, qword_27F81A290);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "succeeded";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorDomain";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorCode";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFC78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10110);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFC82C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFC898(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus, &unk_255F10148);

  return sub_255F0CAF8();
}

uint64_t sub_255EFC944()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2A8);
  sub_255F06F80(v0, qword_27F81A2A8);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_255F0F5F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "trialIdentifiers";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_255F0CB88();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "contextID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "activityScheduleStatus";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "taskFetched";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "taskScheduled";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 104;
  *v18 = "taskCompleted";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_255F0CB98();
}

uint64_t sub_255EFCC44()
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v2 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v6 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v0 + v7, 1, 1, v8);
  v9(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, 1, 1, v8);
  result = (v9)(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, 1, 1, v8);
  qword_27F8178F8 = v0;
  return result;
}

uint64_t sub_255EFCDDC(uint64_t a1)
{
  v3 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v36 - v4;
  v5 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v36 - v6;
  v7 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v11 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v12 = 0;
  v12[1] = 0;
  v13 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v37 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v15 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v38 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v17 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v1 + v16, 1, 1, v17);
  v40 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  v18(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, 1, 1, v17);
  v42 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  v18(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, 1, 1, v17);
  v19 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v19, v9, &qword_27F817CF0, &qword_255F10808);
  swift_beginAccess();
  sub_255F08A78(v9, v1 + v10, &qword_27F817CF0, &qword_255F10808);
  swift_endAccess();
  v20 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  *v12 = v22;
  v12[1] = v21;

  v23 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v13 = v24;
  *(v13 + 8) = v23;
  v25 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v26 = v41;
  sub_255F08A10(a1 + v25, v41, &qword_27F817D20, &qword_255F10828);
  v27 = v37;
  swift_beginAccess();
  sub_255F08A78(v26, v1 + v27, &qword_27F817D20, &qword_255F10828);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  v29 = v39;
  sub_255F08A10(a1 + v28, v39, &qword_27F817D18, &qword_255F10820);
  v30 = v38;
  swift_beginAccess();
  sub_255F08A78(v29, v1 + v30, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  sub_255F08A10(a1 + v31, v29, &qword_27F817D18, &qword_255F10820);
  v32 = v40;
  swift_beginAccess();
  sub_255F08A78(v29, v1 + v32, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  sub_255F08A10(a1 + v33, v29, &qword_27F817D18, &qword_255F10820);

  v34 = v42;
  swift_beginAccess();
  sub_255F08A78(v29, v1 + v34, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  return v1;
}

uint64_t sub_255EFD364()
{
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers, &qword_27F817CF0, &qword_255F10808);

  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus, &qword_27F817D20, &qword_255F10828);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched, &qword_27F817D18, &qword_255F10820);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, &qword_27F817D18, &qword_255F10820);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, &qword_27F817D18, &qword_255F10820);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_255EFD49C(uint64_t a1)
{
  sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  if (v1 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F8179A0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    if (v2 <= 0x3F)
    {
      sub_255EFD62C(319, &qword_27F8179A8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_255EFD62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255F0CC38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255EFD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F0CA38();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 100)
      {
        switch(result)
        {
          case 1:
            sub_255EFD858(a2, a1, a3, a4);
            break;
          case 2:
            sub_255F04150(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
            break;
          case 3:
            sub_255F03F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp, MEMORY[0x277D217C0]);
            break;
        }
      }

      else if (result > 102)
      {
        if (result == 103)
        {
          sub_255EFDAEC(a2, a1, a3, a4);
        }

        else if (result == 104)
        {
          sub_255EFDBC8(a2, a1, a3, a4);
        }
      }

      else if (result == 101)
      {
        sub_255EFD934(a2, a1, a3, a4);
      }

      else
      {
        sub_255EFDA10(a2, a1, a3, a4);
      }

      result = sub_255F0CA38();
    }
  }

  return result;
}

uint64_t sub_255EFD858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFD934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus, &unk_255F0FE78);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255EFDD78(a1, a2, a3, a4);
  if (!v4)
  {
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID, 2);
    sub_255EFDF94(a1, a2, a3, a4);
    sub_255EFE020(a1, a2, a3, a4);
    sub_255EFE23C(a1, a2, a3, a4);
    sub_255EFE458(a1, a2, a3, a4);
    return sub_255EFE674(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_255EFDD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817CF0, &qword_255F10808);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255EFDF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_255F0CB38();
  }

  return result;
}

uint64_t sub_255EFE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817D20, &qword_255F10828);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817D20, &qword_255F10828);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus, &unk_255F0FE78);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
}

uint64_t sub_255EFE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817D18, &qword_255F10820);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

uint64_t sub_255EFE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817D18, &qword_255F10820);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

uint64_t sub_255EFE674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817D18, &qword_255F10820);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

BOOL sub_255EFE890(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v124 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v126 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_255F0314C(&qword_27F817D28, &qword_255F10830);
  v4 = MEMORY[0x28223BE20](v123);
  v114 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v112 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v112 - v8;
  v9 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v113 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v112 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v112 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v120 = &v112 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v112 - v19;
  MEMORY[0x28223BE20](v18);
  v133 = &v112 - v20;
  v21 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  v128 = *(v21 - 8);
  v129 = v21;
  MEMORY[0x28223BE20](v21);
  v121 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_255F0314C(&qword_27F817D30, &qword_255F10838);
  MEMORY[0x28223BE20](v127);
  v130 = &v112 - v23;
  v24 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v125 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v132 = &v112 - v27;
  v135 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v28 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = &v112 - v32;
  v34 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v134 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v112 - v37;
  v39 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v39, v38, &qword_27F817CF0, &qword_255F10808);
  v40 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v41 = v136;
  swift_beginAccess();
  v42 = *(v31 + 56);
  sub_255F08A10(v38, v33, &qword_27F817CF0, &qword_255F10808);
  v43 = v135;
  sub_255F08A10(v41 + v40, &v33[v42], &qword_27F817CF0, &qword_255F10808);
  v44 = *(v28 + 48);
  if (v44(v33, 1, v43) == 1)
  {

    sub_255F08AE0(v38, &qword_27F817CF0, &qword_255F10808);
    v45 = a1;
    if (v44(&v33[v42], 1, v43) == 1)
    {
      sub_255F08AE0(v33, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_10;
    }

LABEL_6:
    sub_255F08AE0(v33, &qword_27F817D00, &qword_255F10818);
    goto LABEL_7;
  }

  v45 = a1;
  v46 = v134;
  sub_255F08A10(v33, v134, &qword_27F817CF0, &qword_255F10808);
  if (v44(&v33[v42], 1, v43) == 1)
  {

    sub_255F08AE0(v38, &qword_27F817CF0, &qword_255F10808);
    sub_255F06F20(v46, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_6;
  }

  v48 = &v33[v42];
  v49 = v131;
  sub_255F06EB8(v48, v131, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  v50 = sub_255F0841C(v46, v49);
  sub_255F06F20(v49, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v38, &qword_27F817CF0, &qword_255F10808);
  sub_255F06F20(v46, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v33, &qword_27F817CF0, &qword_255F10808);
  if ((v50 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v51 = (v45 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  v54 = (v41 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v55 = v54[1];
  if (v53)
  {
    v57 = v132;
    v56 = v133;
    if (!v55 || (v52 != *v54 || v53 != v55) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v57 = v132;
    v56 = v133;
    if (v55)
    {
      goto LABEL_7;
    }
  }

  v58 = v45 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v41 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  if (v60)
  {
    if ((*(v61 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

  v62 = v45;
  v63 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v135 = v62;
  sub_255F08A10(v62 + v63, v57, &qword_27F817D20, &qword_255F10828);
  v64 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v65 = *(v127 + 48);
  v66 = v130;
  sub_255F08A10(v57, v130, &qword_27F817D20, &qword_255F10828);
  sub_255F08A10(v41 + v64, v66 + v65, &qword_27F817D20, &qword_255F10828);
  v67 = v129;
  v68 = *(v128 + 48);
  if (v68(v66, 1, v129) == 1)
  {
    sub_255F08AE0(v57, &qword_27F817D20, &qword_255F10828);
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_255F08AE0(v66, &qword_27F817D20, &qword_255F10828);
      goto LABEL_25;
    }

LABEL_30:
    v78 = &qword_27F817D30;
    v79 = &qword_255F10838;
    v80 = v66;
LABEL_49:
    sub_255F08AE0(v80, v78, v79);
    goto LABEL_7;
  }

  v77 = v125;
  sub_255F08A10(v66, v125, &qword_27F817D20, &qword_255F10828);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_255F08AE0(v57, &qword_27F817D20, &qword_255F10828);
    sub_255F06F20(v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    goto LABEL_30;
  }

  v81 = v66 + v65;
  v82 = v121;
  sub_255F06EB8(v81, v121, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  v83 = *(v67 + 20);
  v84 = *(v77 + v83);
  v85 = *(v82 + v83);
  if (v84 == 2)
  {
    if (v85 == 2)
    {
      goto LABEL_40;
    }

LABEL_39:
    sub_255F06F20(v82, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    sub_255F08AE0(v57, &qword_27F817D20, &qword_255F10828);
    sub_255F06F20(v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    v80 = v66;
    v78 = &qword_27F817D20;
    v79 = &qword_255F10828;
    goto LABEL_49;
  }

  if (v85 == 2 || ((v84 ^ v85) & 1) != 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v87 = sub_255F0CBC8();
  sub_255F06F20(v82, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F08AE0(v57, &qword_27F817D20, &qword_255F10828);
  sub_255F06F20(v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F08AE0(v66, &qword_27F817D20, &qword_255F10828);
  if ((v87 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  v69 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v70 = v135;
  swift_beginAccess();
  sub_255F08A10(v70 + v69, v56, &qword_27F817D18, &qword_255F10820);
  v71 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  v72 = v122;
  v73 = *(v123 + 48);
  sub_255F08A10(v56, v122, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v41 + v71, v72 + v73, &qword_27F817D18, &qword_255F10820);
  v75 = v126 + 48;
  v74 = *(v126 + 48);
  v76 = v124;
  if (v74(v72, 1, v124) == 1)
  {
    sub_255F08AE0(v56, &qword_27F817D18, &qword_255F10820);
    if (v74(v72 + v73, 1, v76) == 1)
    {
      v126 = v75;
      sub_255F08AE0(v72, &qword_27F817D18, &qword_255F10820);
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v86 = v119;
  sub_255F08A10(v72, v119, &qword_27F817D18, &qword_255F10820);
  if (v74(v72 + v73, 1, v76) == 1)
  {
    sub_255F08AE0(v56, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v86, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
LABEL_36:
    v78 = &qword_27F817D28;
    v79 = &qword_255F10830;
    v80 = v72;
    goto LABEL_49;
  }

  v126 = v75;
  v88 = v72 + v73;
  v89 = v118;
  sub_255F06EB8(v88, v118, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  v90 = sub_255F07D28(v86, v89, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F06F20(v89, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v56, &qword_27F817D18, &qword_255F10820);
  sub_255F06F20(v86, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v72, &qword_27F817D18, &qword_255F10820);
  if ((v90 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

LABEL_43:
  v91 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  v92 = v135;
  swift_beginAccess();
  v93 = v120;
  sub_255F08A10(v92 + v91, v120, &qword_27F817D18, &qword_255F10820);
  v94 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  v95 = *(v123 + 48);
  v96 = v117;
  sub_255F08A10(v93, v117, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v41 + v94, v96 + v95, &qword_27F817D18, &qword_255F10820);
  v97 = v124;
  if (v74(v96, 1, v124) == 1)
  {
    sub_255F08AE0(v93, &qword_27F817D18, &qword_255F10820);
    if (v74(v96 + v95, 1, v97) == 1)
    {
      sub_255F08AE0(v96, &qword_27F817D18, &qword_255F10820);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v98 = v115;
  sub_255F08A10(v96, v115, &qword_27F817D18, &qword_255F10820);
  if (v74(v96 + v95, 1, v97) == 1)
  {
    sub_255F08AE0(v120, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v98, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
LABEL_48:
    v78 = &qword_27F817D28;
    v79 = &qword_255F10830;
    v80 = v96;
    goto LABEL_49;
  }

  v99 = v96 + v95;
  v100 = v118;
  sub_255F06EB8(v99, v118, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  v101 = sub_255F07D28(v98, v100, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F06F20(v100, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v120, &qword_27F817D18, &qword_255F10820);
  sub_255F06F20(v98, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v96, &qword_27F817D18, &qword_255F10820);
  if ((v101 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_52:
  v102 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  v103 = v135;
  swift_beginAccess();
  v104 = v116;
  sub_255F08A10(v103 + v102, v116, &qword_27F817D18, &qword_255F10820);
  v105 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  v106 = *(v123 + 48);
  v107 = v114;
  sub_255F08A10(v104, v114, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v41 + v105, v107 + v106, &qword_27F817D18, &qword_255F10820);
  v108 = v124;
  if (v74(v107, 1, v124) != 1)
  {
    v109 = v113;
    sub_255F08A10(v107, v113, &qword_27F817D18, &qword_255F10820);
    if (v74(v107 + v106, 1, v108) == 1)
    {

      sub_255F08AE0(v116, &qword_27F817D18, &qword_255F10820);
      sub_255F06F20(v109, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
      goto LABEL_57;
    }

    v110 = v118;
    sub_255F06EB8(v107 + v106, v118, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    v111 = sub_255F07D28(v109, v110, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);

    sub_255F06F20(v110, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    sub_255F08AE0(v116, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v109, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    sub_255F08AE0(v107, &qword_27F817D18, &qword_255F10820);
    return (v111 & 1) != 0;
  }

  sub_255F08AE0(v104, &qword_27F817D18, &qword_255F10820);
  if (v74(v107 + v106, 1, v108) != 1)
  {
LABEL_57:
    sub_255F08AE0(v107, &qword_27F817D28, &qword_255F10830);
    return 0;
  }

  sub_255F08AE0(v107, &qword_27F817D18, &qword_255F10820);
  return 1;
}

uint64_t sub_255EFFBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D10, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent, &unk_255F0FFA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFFC4C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent, &unk_255F0FFE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFFCB8(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent, &unk_255F0FFE0);

  return sub_255F0CAF8();
}

uint64_t sub_255EFFDA8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2D0);
  sub_255F06F80(v0, qword_27F81A2D0);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_255F0F600;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "scheduled";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_255F0CB88();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_255F0CB98();
}

uint64_t sub_255EFFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
      sub_255F0CA48();
    }
  }

  return result;
}

uint64_t sub_255EFFFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255F0000C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  if (!v4)
  {
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F0000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F00088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_255F00114(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D38, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus, &unk_255F0FE40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F001B4(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus, &unk_255F0FE78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F00220(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus, &unk_255F0FE78);

  return sub_255F0CAF8();
}

uint64_t sub_255F002C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C51540](a2, a3);
  *a4 = 0xD000000000000039;
  *a5 = 0x8000000255F12F20;
  return result;
}

uint64_t sub_255F00334()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2F8);
  sub_255F06F80(v0, qword_27F81A2F8);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "succeeded";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorDomain";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorCode";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F00548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a4(0);
        sub_255F0CA68();
        break;
      case 2:
        a4(0);
        sub_255F0CA88();
        break;
      case 1:
        a4(0);
        sub_255F0CA48();
        break;
    }
  }

  return result;
}

uint64_t sub_255F00648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  result = sub_255F0000C(v6, a1, a2, a3, a4);
  if (!v7)
  {
    sub_255EFAE5C(v6, a1, a2, a3, a5);
    sub_255F006EC(v6, a1, a2, a3, a6);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F006EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_255F0CB28();
  }

  return result;
}

uint64_t sub_255F00768@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_255F007E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_255F008C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D40, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FCD8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F00960(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F009CC(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent, &unk_255F0FD10);

  return sub_255F0CAF8();
}

uint64_t sub_255F00A78()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A310);
  sub_255F06F80(v0, qword_27F81A310);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_255F0F610;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "trialIdentifiers";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_255F0CB88();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "contextID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "eventType";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "eventSucceeded";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_255F0CB98();
}

uint64_t sub_255F00D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_255EFB524(a1, v5, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
      }

      else if (result == 2)
      {
        type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
        sub_255F0CA88();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
          sub_255F0CA78();
          break;
        case 4:
          sub_255F00E60(a1, v5, a2, a3);
          break;
        case 5:
          type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
          sub_255F0CA48();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_255F00E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  sub_255F08B40();
  return sub_255F0CA58();
}

uint64_t sub_255F00ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFB904(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
    sub_255F00FC8(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
    sub_255F01044(v3, a1, a2, a3);
    sub_255F010D0(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F00FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_255F0CB38();
  }

  return result;
}

uint64_t sub_255F01044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  if (*(a1 + *(result + 32)) != 4)
  {
    sub_255F08B40();
    return sub_255F0CB18();
  }

  return result;
}

uint64_t sub_255F010D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F01148@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = a1[5];
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v10) = 2;
  return result;
}

uint64_t sub_255F01238(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent, &unk_255F0FB70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F012D8(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent, &unk_255F0FBA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F01344(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent, &unk_255F0FBA8);

  return sub_255F0CAF8();
}

uint64_t sub_255F013C4()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A328);
  sub_255F06F80(v0, qword_27F81A328);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F620;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "allocation";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "activation";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "deactivation";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F01630()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A340);
  sub_255F06F80(v0, qword_27F81A340);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_255F0F630;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 1;
  *v5 = "telemetryID";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_255F0CB88();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "trialIdentifiers";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "contextID";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 101;
  *v15 = "isAllocated";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 102;
  *v17 = "isActivated";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 201;
  *v19 = "countGeneralTargetting";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 202;
  *v21 = "countGeneralTargettingMet";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 203;
  *v22 = "countCustomTargetting";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 204;
  *v24 = "countCustomTargettingMet";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 301;
  *v26 = "countTaskFetchedSucceeded";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 302;
  *v28 = "countTaskFetchedFailed";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 303;
  *v30 = "countTaskScheduledSucceeded";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 304;
  *v32 = "countTaskScheduledFailed";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 305;
  *v34 = "countTaskCompletedSucceeded";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 306;
  *v36 = "countTaskCompletedFailed";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 401;
  *v37 = "countPerformTaskSucceeded";
  *(v37 + 8) = 25;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 402;
  *v39 = "countPerformTaskFailed";
  *(v39 + 1) = 22;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 403;
  *v41 = "countStopSucceeded";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 404;
  *v43 = "countStopFailed";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 501;
  *v45 = "trialIdentifierType";
  *(v45 + 1) = 19;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 502;
  *v47 = "trialExperimentID";
  *(v47 + 1) = 17;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 503;
  *v49 = "trialDeploymentID";
  *(v49 + 1) = 17;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 504;
  *v51 = "trialTreatmentID";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 505;
  *v53 = "trialTaskID";
  *(v53 + 1) = 11;
  v53[16] = 2;
  v8();
  return sub_255F0CB98();
}

uint64_t sub_255F01D9C()
{
  type metadata accessor for LighthouseBitacoraProto_BitacoraState._StorageClass(0);
  swift_allocObject();
  result = sub_255F01DDC();
  qword_27F817940 = result;
  return result;
}

uint64_t sub_255F01DDC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v2 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated) = 2;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated) = 2;
  v5 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  *v18 = 0;
  *(v18 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType) = 3;
  v19 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  *v22 = 0;
  v22[1] = 0;
  return v0;
}

uint64_t sub_255F01FFC(uint64_t a1)
{
  v3 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v91 - v4;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v91 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v7 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v8 = 0;
  v8[1] = 0;
  v9 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v9 = 0;
  *(v9 + 8) = 1;
  v94 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated) = 2;
  v10 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated) = 2;
  v11 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  v92 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  v93 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  v95 = v10;
  v96 = v13;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  v97 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  v98 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  v99 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  v100 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  v101 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  v102 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  v103 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  v104 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  v105 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  v106 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  v107 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  *(v24 + 4) = 1;
  *v24 = 0;
  v25 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType) = 3;
  v26 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  v108 = v25;
  v109 = v26;
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  v110 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  v111 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  v112 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  *v29 = 0;
  v29[1] = 0;
  swift_beginAccess();
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v30;
  *(v1 + 24) = v31;
  v32 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v33 = v5;
  sub_255F08A10(a1 + v32, v5, &qword_27F817CF0, &qword_255F10808);
  v34 = v91;
  swift_beginAccess();

  sub_255F08A78(v33, v1 + v34, &qword_27F817CF0, &qword_255F10808);
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  swift_beginAccess();
  *v8 = v37;
  v8[1] = v36;

  v38 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  swift_beginAccess();
  *v9 = v39;
  *(v9 + 8) = v38;
  v40 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v94;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v95;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  swift_beginAccess();
  LODWORD(v43) = *v44;
  LOBYTE(v44) = *(v44 + 4);
  v45 = v92;
  swift_beginAccess();
  *v45 = v43;
  *(v45 + 4) = v44;
  v46 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  swift_beginAccess();
  LODWORD(v43) = *v46;
  LOBYTE(v46) = *(v46 + 4);
  v47 = v93;
  swift_beginAccess();
  *v47 = v43;
  *(v47 + 4) = v46;
  v48 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  swift_beginAccess();
  LODWORD(v47) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  v49 = v96;
  swift_beginAccess();
  *v49 = v47;
  *(v49 + 4) = v48;
  v50 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  swift_beginAccess();
  LODWORD(v47) = *v50;
  LOBYTE(v50) = *(v50 + 4);
  v51 = v97;
  swift_beginAccess();
  *v51 = v47;
  *(v51 + 4) = v50;
  v52 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  swift_beginAccess();
  LODWORD(v47) = *v52;
  LOBYTE(v52) = *(v52 + 4);
  v53 = v98;
  swift_beginAccess();
  *v53 = v47;
  *(v53 + 4) = v52;
  v54 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  swift_beginAccess();
  LODWORD(v47) = *v54;
  LOBYTE(v54) = *(v54 + 4);
  v55 = v99;
  swift_beginAccess();
  *v55 = v47;
  *(v55 + 4) = v54;
  v56 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  swift_beginAccess();
  LODWORD(v47) = *v56;
  LOBYTE(v56) = *(v56 + 4);
  v57 = v100;
  swift_beginAccess();
  *v57 = v47;
  *(v57 + 4) = v56;
  v58 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  swift_beginAccess();
  LODWORD(v47) = *v58;
  LOBYTE(v58) = *(v58 + 4);
  v59 = v101;
  swift_beginAccess();
  *v59 = v47;
  *(v59 + 4) = v58;
  v60 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  swift_beginAccess();
  LODWORD(v47) = *v60;
  LOBYTE(v60) = *(v60 + 4);
  v61 = v102;
  swift_beginAccess();
  *v61 = v47;
  *(v61 + 4) = v60;
  v62 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  swift_beginAccess();
  LODWORD(v47) = *v62;
  LOBYTE(v62) = *(v62 + 4);
  v63 = v103;
  swift_beginAccess();
  *v63 = v47;
  *(v63 + 4) = v62;
  v64 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  swift_beginAccess();
  LODWORD(v47) = *v64;
  LOBYTE(v64) = *(v64 + 4);
  v65 = v104;
  swift_beginAccess();
  *v65 = v47;
  *(v65 + 4) = v64;
  v66 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  swift_beginAccess();
  LODWORD(v47) = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v67 = v105;
  swift_beginAccess();
  *v67 = v47;
  *(v67 + 4) = v66;
  v68 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  swift_beginAccess();
  LODWORD(v47) = *v68;
  LOBYTE(v68) = *(v68 + 4);
  v69 = v106;
  swift_beginAccess();
  *v69 = v47;
  *(v69 + 4) = v68;
  v70 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  swift_beginAccess();
  LODWORD(v47) = *v70;
  LOBYTE(v70) = *(v70 + 4);
  v71 = v107;
  swift_beginAccess();
  *v71 = v47;
  *(v71 + 4) = v70;
  v72 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v108;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v76 = *v74;
  v75 = v74[1];
  v77 = v109;
  swift_beginAccess();
  *v77 = v76;
  v77[1] = v75;

  v78 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v110;
  swift_beginAccess();
  *v81 = v80;
  v81[1] = v79;

  v82 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = v111;
  swift_beginAccess();
  *v85 = v84;
  v85[1] = v83;

  v86 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];

  v89 = v112;
  swift_beginAccess();
  *v89 = v88;
  v89[1] = v87;

  return v1;
}

uint64_t sub_255F02A2C()
{

  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers, &qword_27F817CF0, &qword_255F10808);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_255F02B34(uint64_t a1)
{
  sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LighthouseBitacoraProto_BitacoraState.TrialIdentifierType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseBitacoraProto_BitacoraState.TrialIdentifierType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255F02E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_255F02ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_255F02FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_255F0C9A8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_255F030A4(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255F0314C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_255F031A8(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817AF8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
    if (v2 <= 0x3F)
    {
      sub_255EFD62C(319, &qword_27F817B00, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255F032E4(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255F0338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255F0346C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_255F03528(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_255F035C8()
{
  result = qword_27F817B28;
  if (!qword_27F817B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B28);
  }

  return result;
}

unint64_t sub_255F03620()
{
  result = qword_27F817B30;
  if (!qword_27F817B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B30);
  }

  return result;
}

unint64_t sub_255F03678()
{
  result = qword_27F817B38;
  if (!qword_27F817B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B38);
  }

  return result;
}

uint64_t sub_255F036CC(uint64_t a1)
{
  v2 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
    swift_beginAccess();
    sub_255F08A10(a1 + v6, v4, &qword_27F817CF0, &qword_255F10808);
    v7 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
    LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
    sub_255F08AE0(v4, &qword_27F817CF0, &qword_255F10808);
    if (v6 == 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID;
      swift_beginAccess();
      v5 = *(v8 + 8);
      if (v5)
      {
        v9 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
        swift_beginAccess();
        LOBYTE(v5) = *(v9 + 8) ^ 1;
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_255F03860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_255F03930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F0CA38();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 302)
      {
        if (result > 200)
        {
          if (result <= 203)
          {
            if (result == 201)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
            }

            else if (result == 202)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
            }

            else
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
            }

            goto LABEL_5;
          }

          switch(result)
          {
            case 204:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
              goto LABEL_5;
            case 301:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
              goto LABEL_5;
            case 302:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
LABEL_5:
              sub_255F0402C(v11, v12, v13, v14, v15);
              break;
          }
        }

        else
        {
          if (result <= 3)
          {
            if (result == 1)
            {
              sub_255F03DAC(a2, a1, a3, a4);
              goto LABEL_6;
            }

            if (result == 2)
            {
              sub_255F03E30(a2, a1, a3, a4);
              goto LABEL_6;
            }

            if (result != 3)
            {
              goto LABEL_6;
            }

            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID;
            goto LABEL_61;
          }

          if (result == 4)
          {
            sub_255F03F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp, MEMORY[0x277D217F0]);
          }

          else
          {
            if (result == 101)
            {
              v21 = a2;
              v22 = a1;
              v23 = a3;
              v24 = a4;
              v25 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
            }

            else
            {
              if (result != 102)
              {
                goto LABEL_6;
              }

              v21 = a2;
              v22 = a1;
              v23 = a3;
              v24 = a4;
              v25 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
            }

            sub_255F03FA4(v21, v22, v23, v24, v25);
          }
        }
      }

      else if (result <= 402)
      {
        if (result <= 305)
        {
          if (result == 303)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
          }

          else if (result == 304)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 306:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
            goto LABEL_5;
          case 401:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
            goto LABEL_5;
          case 402:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
            goto LABEL_5;
        }
      }

      else
      {
        if (result > 501)
        {
          if (result > 503)
          {
            if (result == 504)
            {
              v16 = a2;
              v17 = a1;
              v18 = a3;
              v19 = a4;
              v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID;
            }

            else
            {
              if (result != 505)
              {
                goto LABEL_6;
              }

              v16 = a2;
              v17 = a1;
              v18 = a3;
              v19 = a4;
              v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID;
            }
          }

          else if (result == 502)
          {
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID;
          }

          else
          {
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID;
          }

LABEL_61:
          sub_255F04150(v16, v17, v18, v19, v20);
          goto LABEL_6;
        }

        switch(result)
        {
          case 403:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
            goto LABEL_5;
          case 404:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
            goto LABEL_5;
          case 501:
            sub_255F040B4(a2, a1, a3, a4);
            break;
        }
      }

LABEL_6:
      result = sub_255F0CA38();
    }
  }

  return result;
}

uint64_t sub_255F03DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_255F0CA88();
  return swift_endAccess();
}

uint64_t sub_255F03E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255F03F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_255F03FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_255F0CA48();
  return swift_endAccess();
}

uint64_t sub_255F0402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_255F0CA98();
  return swift_endAccess();
}

uint64_t sub_255F040B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_255F08B94();
  sub_255F0CA58();
  return swift_endAccess();
}

uint64_t sub_255F04150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_255F0CA88();
  return swift_endAccess();
}

uint64_t sub_255F041D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F04258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F045CC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_255F04668(a1, a2, a3, a4);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID, 3);
    sub_255F04884(a1, a2, a3, a4);
    sub_255F04910(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated, 101);
    sub_255F04910(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated, 102);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting, 201);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet, 202);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting, 203);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet, 204);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded, 301);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed, 302);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded, 303);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed, 304);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded, 305);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed, 306);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded, 401);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed, 402);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded, 403);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed, 404);
    sub_255F04A3C(a1, a2, a3, a4);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID, 502);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID, 503);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID, 504);
    return sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID, 505);
  }

  return result;
}

uint64_t sub_255F045CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255F04668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v12, v7, &qword_27F817CF0, &qword_255F10808);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers, &unk_255F106E8);
  sub_255F0CB78();
  return sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255F04884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_255F0CB68();
  }

  return result;
}

uint64_t sub_255F04910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F049AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 4) & 1) == 0)
  {
    return sub_255F0CB58();
  }

  return result;
}

uint64_t sub_255F04A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  result = swift_beginAccess();
  if (*(a1 + v5) != 3)
  {
    sub_255F08B94();
    return sub_255F0CB18();
  }

  return result;
}

uint64_t sub_255F04AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255F04B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v133 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  MEMORY[0x28223BE20](v7);
  v9 = &v129 - v8;
  v10 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v132 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v129 - v13;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v15)
  {
    if (!v17 || (v16 != *(a2 + 16) || v15 != v17) && (sub_255F0CC68() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v130 = v6;
  v131 = a2;
  v18 = a1;
  v19 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v20 = a1 + v19;
  v21 = v131;
  sub_255F08A10(v20, v14, &qword_27F817CF0, &qword_255F10808);
  v22 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v23 = *(v7 + 48);
  sub_255F08A10(v14, v9, &qword_27F817CF0, &qword_255F10808);
  sub_255F08A10(v21 + v22, &v9[v23], &qword_27F817CF0, &qword_255F10808);
  v24 = *(v133 + 48);
  if (v24(v9, 1, v4) == 1)
  {

    sub_255F08AE0(v14, &qword_27F817CF0, &qword_255F10808);
    v25 = v18;
    if (v24(&v9[v23], 1, v4) == 1)
    {
      sub_255F08AE0(v9, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_17;
    }

LABEL_13:
    sub_255F08AE0(v9, &qword_27F817D00, &qword_255F10818);
    goto LABEL_14;
  }

  v26 = v132;
  sub_255F08A10(v9, v132, &qword_27F817CF0, &qword_255F10808);
  if (v24(&v9[v23], 1, v4) == 1)
  {

    sub_255F08AE0(v14, &qword_27F817CF0, &qword_255F10808);
    sub_255F06F20(v26, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_13;
  }

  v28 = v130;
  sub_255F06EB8(&v9[v23], v130, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  v29 = sub_255F0841C(v26, v28);
  sub_255F06F20(v28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v14, &qword_27F817CF0, &qword_255F10808);
  sub_255F06F20(v26, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  v25 = v18;
  sub_255F08AE0(v9, &qword_27F817CF0, &qword_255F10808);
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v30 = (v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = (v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (v31 != *v33 || v32 != v34) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v34)
  {
    goto LABEL_14;
  }

  v35 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  if (v37)
  {
    if ((*(v38 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v38 + 8) & 1) != 0 || v36 != *v38)
  {
    goto LABEL_14;
  }

  v39 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  v40 = *(v25 + v39);
  v41 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  v42 = *(v21 + v41);
  if (v40 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v42 == 2 || ((v40 ^ v42) & 1) != 0)
  {
    goto LABEL_14;
  }

  v43 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  v44 = *(v25 + v43);
  v45 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  v46 = *(v21 + v45);
  if (v44 == 2)
  {
    if (v46 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v46 == 2 || ((v44 ^ v46) & 1) != 0)
  {
    goto LABEL_14;
  }

  v47 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  swift_beginAccess();
  v48 = *v47;
  v49 = *(v47 + 4);
  v50 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  swift_beginAccess();
  if (v49)
  {
    if ((*(v50 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v50 + 4) & 1) != 0 || v48 != *v50)
  {
    goto LABEL_14;
  }

  v51 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 4);
  v54 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  swift_beginAccess();
  if (v53)
  {
    if ((*(v54 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v54 + 4) & 1) != 0 || v52 != *v54)
  {
    goto LABEL_14;
  }

  v55 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  swift_beginAccess();
  v56 = *v55;
  v57 = *(v55 + 4);
  v58 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  swift_beginAccess();
  if (v57)
  {
    if ((*(v58 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v58 + 4) & 1) != 0 || v56 != *v58)
  {
    goto LABEL_14;
  }

  v59 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  swift_beginAccess();
  v60 = *v59;
  v61 = *(v59 + 4);
  v62 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  swift_beginAccess();
  if (v61)
  {
    if (*(v62 + 4))
    {
      goto LABEL_59;
    }

LABEL_14:

    return 0;
  }

  if ((*(v62 + 4) & 1) != 0 || v60 != *v62)
  {
    goto LABEL_14;
  }

LABEL_59:
  v63 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 4);
  v66 = v21 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  swift_beginAccess();
  if (v65)
  {
    if ((*(v66 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v66 + 4) & 1) != 0 || v64 != *v66)
  {
    goto LABEL_14;
  }

  v67 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 4);
  v70 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  swift_beginAccess();
  if (v69)
  {
    if ((*(v70 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v70 + 4) & 1) != 0 || v68 != *v70)
  {
    goto LABEL_14;
  }

  v71 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(v71 + 4);
  v74 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  swift_beginAccess();
  if (v73)
  {
    if ((*(v74 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v74 + 4) & 1) != 0 || v72 != *v74)
  {
    goto LABEL_14;
  }

  v75 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v75 + 4);
  v78 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  swift_beginAccess();
  if (v77)
  {
    if ((*(v78 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v78 + 4) & 1) != 0 || v76 != *v78)
  {
    goto LABEL_14;
  }

  v79 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  swift_beginAccess();
  v80 = *v79;
  v81 = *(v79 + 4);
  v82 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  swift_beginAccess();
  if (v81)
  {
    if ((*(v82 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v82 + 4) & 1) != 0 || v80 != *v82)
  {
    goto LABEL_14;
  }

  v83 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 4);
  v86 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  swift_beginAccess();
  if (v85)
  {
    if ((*(v86 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v86 + 4) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_14;
  }

  v87 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 4);
  v90 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  swift_beginAccess();
  if (v89)
  {
    if ((*(v90 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v90 + 4) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_14;
  }

  v91 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  swift_beginAccess();
  v92 = *v91;
  v93 = *(v91 + 4);
  v94 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  swift_beginAccess();
  if (v93)
  {
    if ((*(v94 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v94 + 4) & 1) != 0 || v92 != *v94)
  {
    goto LABEL_14;
  }

  v95 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  swift_beginAccess();
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_14;
  }

  v99 = v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 4);
  v102 = v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  swift_beginAccess();
  if (v101)
  {
    if ((*(v102 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v102 + 4) & 1) != 0 || v100 != *v102)
  {
    goto LABEL_14;
  }

  v103 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  swift_beginAccess();
  v104 = *(v25 + v103);
  v105 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  v106 = v131;
  swift_beginAccess();
  v107 = *(v106 + v105);
  if (v104 == 3)
  {
    if (v107 != 3)
    {
      goto LABEL_14;
    }
  }

  else if (v107 == 3 || v104 != v107)
  {
    goto LABEL_14;
  }

  v108 = (v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  v111 = (v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v112 = v111[1];
  if (v110)
  {
    if (!v112 || (v109 != *v111 || v110 != v112) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v112)
  {
    goto LABEL_14;
  }

  v113 = (v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = (v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v117 = v116[1];
  if (v115)
  {
    if (!v117 || (v114 != *v116 || v115 != v117) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v117)
  {
    goto LABEL_14;
  }

  v118 = (v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v119 = *v118;
  v120 = v118[1];
  v121 = (v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v122 = v121[1];
  if (v120)
  {
    if (!v122 || (v119 != *v121 || v120 != v122) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v122)
  {
    goto LABEL_14;
  }

  v123 = (v25 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v124 = *v123;
  v125 = v123[1];
  v126 = (v131 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v127 = v126[1];
  if (v125)
  {
    if (!v127)
    {
      goto LABEL_14;
    }

    if (v124 == *v126 && v125 == v127)
    {
    }

    else
    {
      v128 = sub_255F0CC68();

      if ((v128 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {

    if (v127)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_255F05A38@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_255F0C998();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_255F05ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255F0C9A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_255F05B44(uint64_t a1)
{
  v3 = sub_255F0C9A8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_255F05C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D58, type metadata accessor for LighthouseBitacoraProto_BitacoraState, &unk_255F0F9E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F05CF4(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState, &unk_255F0FA18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F05D60(uint64_t a1, uint64_t a2)
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255F05DB8(uint64_t a1, uint64_t a2)
{
  sub_255F0622C(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState, &unk_255F0FA18);

  return sub_255F0CAF8();
}

uint64_t sub_255F05E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255F05ECC()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A358);
  sub_255F06F80(v0, qword_27F81A358);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "experiment";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "BMLT";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F06100@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_255F0CBA8();
  v7 = sub_255F06F80(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_255F0622C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F0694C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255F06DEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F06E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_255F06DEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F06EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255F06F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255F06F80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_255F06FB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_255F0701C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_255F0702C(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v82 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v75 = &v72 - v8;
  MEMORY[0x28223BE20](v7);
  v78 = &v72 - v9;
  v81 = sub_255F0314C(&qword_27F817CF8, &qword_255F10810);
  v10 = MEMORY[0x28223BE20](v81);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v79 = &v72 - v14;
  v15 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v72 - v20;
  v22 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  v83 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  v84 = a1;
  v26 = *(v83 + 20);
  v27 = *(v23 + 56);
  sub_255F08A10(a1 + v26, v25, &qword_27F817CF0, &qword_255F10808);
  v28 = v85 + v26;
  v29 = v85;
  sub_255F08A10(v28, &v25[v27], &qword_27F817CF0, &qword_255F10808);
  v30 = *(v16 + 48);
  if (v30(v25, 1, v15) == 1)
  {
    if (v30(&v25[v27], 1, v15) == 1)
    {
      sub_255F08AE0(v25, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_11;
    }

LABEL_6:
    v31 = &qword_27F817D00;
    v32 = &qword_255F10818;
    v33 = v25;
LABEL_7:
    sub_255F08AE0(v33, v31, v32);
    goto LABEL_8;
  }

  sub_255F08A10(v25, v21, &qword_27F817CF0, &qword_255F10808);
  if (v30(&v25[v27], 1, v15) == 1)
  {
    sub_255F06F20(v21, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_6;
  }

  sub_255F06EB8(&v25[v27], v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  v36 = sub_255F0841C(v21, v18);
  sub_255F06F20(v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F06F20(v21, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v25, &qword_27F817CF0, &qword_255F10808);
  if ((v36 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v38 = v83;
  v37 = v84;
  v39 = *(v83 + 24);
  v40 = (v84 + v39);
  v41 = *(v84 + v39 + 8);
  v42 = (v29 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v43)
  {
    goto LABEL_8;
  }

  v44 = v38[7];
  v45 = (v37 + v44);
  v46 = *(v37 + v44 + 8);
  v47 = (v29 + v44);
  v48 = *(v29 + v44 + 8);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_8;
    }
  }

  v49 = v38[8];
  v50 = *(v81 + 48);
  v51 = v79;
  sub_255F08A10(v37 + v49, v79, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v29 + v49, v51 + v50, &qword_27F817CE8, &qword_255F10800);
  v52 = *(v80 + 48);
  v53 = v82;
  if (v52(v51, 1, v82) == 1)
  {
    if (v52(v51 + v50, 1, v53) != 1)
    {
      goto LABEL_41;
    }

    sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
  }

  else
  {
    v54 = v78;
    sub_255F08A10(v51, v78, &qword_27F817CE8, &qword_255F10800);
    if (v52(v51 + v50, 1, v53) == 1)
    {
      v55 = v54;
LABEL_40:
      sub_255F06F20(v55, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
      goto LABEL_41;
    }

    v56 = v77;
    sub_255F06EB8(v51 + v50, v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    v57 = v54;
    v58 = sub_255F07D28(v54, v56, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F06F20(v56, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F06F20(v57, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
    if ((v58 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v59 = v38[9];
  v60 = *(v81 + 48);
  v51 = v76;
  sub_255F08A10(v37 + v59, v76, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v29 + v59, v51 + v60, &qword_27F817CE8, &qword_255F10800);
  v61 = v82;
  if (v52(v51, 1, v82) == 1)
  {
    if (v52(v51 + v60, 1, v61) == 1)
    {
      sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
      goto LABEL_35;
    }

LABEL_41:
    v31 = &qword_27F817CF8;
    v32 = &qword_255F10810;
    v33 = v51;
    goto LABEL_7;
  }

  v62 = v75;
  sub_255F08A10(v51, v75, &qword_27F817CE8, &qword_255F10800);
  if (v52(v51 + v60, 1, v61) == 1)
  {
LABEL_39:
    v55 = v62;
    goto LABEL_40;
  }

  v63 = v51 + v60;
  v64 = v77;
  sub_255F06EB8(v63, v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  v65 = sub_255F07D28(v62, v64, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v64, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v62, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
  if ((v65 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v66 = v38[10];
  v67 = *(v81 + 48);
  v51 = v74;
  sub_255F08A10(v37 + v66, v74, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v29 + v66, v51 + v67, &qword_27F817CE8, &qword_255F10800);
  v68 = v82;
  if (v52(v51, 1, v82) == 1)
  {
    if (v52(v51 + v67, 1, v68) == 1)
    {
      sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
LABEL_43:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_255F0CBC8();
      return v34 & 1;
    }

    goto LABEL_41;
  }

  v62 = v73;
  sub_255F08A10(v51, v73, &qword_27F817CE8, &qword_255F10800);
  if (v52(v51 + v67, 1, v68) == 1)
  {
    goto LABEL_39;
  }

  v69 = v51 + v67;
  v70 = v77;
  sub_255F06EB8(v69, v77, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  v71 = sub_255F07D28(v62, v70, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v70, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v62, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F08AE0(v51, &qword_27F817CE8, &qword_255F10800);
  if (v71)
  {
    goto LABEL_43;
  }

LABEL_8:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_255F07A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_255F0CC68();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_255F0CC68() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_255F0C9A8();
    sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_255F0CBC8() & 1;
  }

  return 0;
}

uint64_t sub_255F07B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07C60(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }

    if (*v10 != *v12 || v11 != v13)
    {
      v15 = v5;
      v16 = sub_255F0CC68();
      v5 = v15;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = v5[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v43 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  v44 = a1;
  v14 = *(v43 + 20);
  v15 = *(v11 + 56);
  sub_255F08A10(a1 + v14, v13, &qword_27F817CF0, &qword_255F10808);
  v16 = a2 + v14;
  v17 = a2;
  sub_255F08A10(v16, &v13[v15], &qword_27F817CF0, &qword_255F10808);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_255F08A10(v13, v9, &qword_27F817CF0, &qword_255F10808);
    if (v18(&v13[v15], 1, v4) != 1)
    {
      v21 = v42;
      sub_255F06EB8(&v13[v15], v42, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      v22 = sub_255F0841C(v9, v21);
      sub_255F06F20(v21, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      sub_255F06F20(v9, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      sub_255F08AE0(v13, &qword_27F817CF0, &qword_255F10808);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_255F06F20(v9, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
LABEL_6:
    sub_255F08AE0(v13, &qword_27F817D00, &qword_255F10818);
    goto LABEL_7;
  }

  if (v18(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_255F08AE0(v13, &qword_27F817CF0, &qword_255F10808);
LABEL_10:
  v24 = v43;
  v23 = v44;
  v25 = *(v43 + 24);
  v26 = (v44 + v25);
  v27 = *(v44 + v25 + 8);
  v28 = (v17 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v29)
  {
    goto LABEL_7;
  }

  v30 = v24[7];
  v31 = (v23 + v30);
  v32 = *(v23 + v30 + 8);
  v33 = (v17 + v30);
  v34 = *(v17 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_7;
    }
  }

  v35 = v24[8];
  v36 = *(v23 + v35);
  v37 = *(v17 + v35);
  if (v36 == 4)
  {
    if (v37 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v36 != v37)
  {
    goto LABEL_7;
  }

  v38 = v24[9];
  v39 = *(v23 + v38);
  v40 = *(v17 + v38);
  if (v39 == 2)
  {
    if (v40 == 2)
    {
LABEL_32:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_255F0CBC8();
      return v19 & 1;
    }
  }

  else if (v40 != 2 && ((v39 ^ v40) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_255F0829C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_255F0CC68();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_255F0CC68();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_255F0CC68() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_255F0C9A8();
    sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_255F0CBC8() & 1;
  }

  return 0;
}

uint64_t sub_255F0841C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - v6;
  v41 = sub_255F0314C(&qword_27F817CB8, &qword_255F107F0);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_255F0314C(&qword_27F817CC0, &qword_255F107F8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_255F08A10(a1 + v19, v18, &qword_27F817AD8, &qword_255F0F798);
  sub_255F08A10(v46 + v19, &v18[v20], &qword_27F817AD8, &qword_255F0F798);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_255F08A10(v18, v14, &qword_27F817AD8, &qword_255F0F798);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_255F06EB8(&v18[v20], v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      v25 = sub_255F0829C(v14, v11);
      sub_255F06F20(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      sub_255F06F20(v14, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      sub_255F08AE0(v18, &qword_27F817AD8, &qword_255F0F798);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_255F06F20(v14, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
LABEL_6:
    v22 = &qword_27F817CC0;
    v23 = &qword_255F107F8;
    v24 = v18;
LABEL_14:
    sub_255F08AE0(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_255F08AE0(v18, &qword_27F817AD8, &qword_255F0F798);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_255F08A10(v45 + v26, v44, &qword_27F817AE0, &unk_255F0F7A0);
  sub_255F08A10(v46 + v26, v28 + v27, &qword_27F817AE0, &unk_255F0F7A0);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_255F08AE0(v28, &qword_27F817AE0, &unk_255F0F7A0);
LABEL_18:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_255F0CBC8();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_255F08A10(v28, v39, &qword_27F817AE0, &unk_255F0F7A0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_255F06F20(v31, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
LABEL_13:
    v22 = &qword_27F817CB8;
    v23 = &qword_255F107F0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_255F06EB8(v34, v38, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  v36 = sub_255F07A40(v31, v35);
  sub_255F06F20(v35, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F06F20(v31, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F08AE0(v28, &qword_27F817AE0, &unk_255F0F7A0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_255F08A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_255F0314C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F08A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_255F0314C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F08AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_255F0314C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_255F08B40()
{
  result = qword_27F817D50;
  if (!qword_27F817D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817D50);
  }

  return result;
}

unint64_t sub_255F08B94()
{
  result = qword_27F817D60;
  if (!qword_27F817D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817D60);
  }

  return result;
}

void sub_255F08C10(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    if (v2 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817D78, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_255EFD62C(319, &qword_27F817D80, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_255F08D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255F08E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_255F08EEC(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817AC0, MEMORY[0x277D849A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255F08FF8(uint64_t a1)
{
  sub_255F0C9A8();
  if (v1 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    if (v2 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817D78, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_255F09138(319, &qword_27F817DA8, &type metadata for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent.EventType);
          if (v5 <= 0x3F)
          {
            sub_255F09138(319, &qword_27F817AB0, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_255F09138(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_255F0CC38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255F092D8()
{
  result = qword_27F817DB0;
  if (!qword_27F817DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DB0);
  }

  return result;
}

unint64_t sub_255F09330()
{
  result = qword_27F817DB8;
  if (!qword_27F817DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DB8);
  }

  return result;
}

unint64_t sub_255F09388()
{
  result = qword_27F817DC0;
  if (!qword_27F817DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DC0);
  }

  return result;
}

id sub_255F09458(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_255F0CBD8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id LBFProtoToJson_swift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LBFProtoToJson_swift.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LBFProtoToJson_swift(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id LBFProtoToJson_swift.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LBFProtoToJson_swift(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_255F095E8(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = sub_255F0CC18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0CC08();
  v6 = sub_255F0CBE8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  result = 0;
  if (v8 >> 60 != 15)
  {
    v10 = objc_opt_self();
    v11 = sub_255F0C968();
    v29 = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:&v29];

    v13 = v29;
    if (v12)
    {
      sub_255F0CC48();
      swift_unknownObjectRelease();
      sub_255F0A870(&v30, v32);
      v14 = sub_255F0CC58();
      v29 = 0;
      v15 = [v10 dataWithJSONObject:v14 options:1 error:&v29];
      swift_unknownObjectRelease();
      v16 = v29;
      if (v15)
      {
        v17 = sub_255F0C978();
        v19 = v18;

        sub_255F0CC08();
        v20 = sub_255F0CBF8();
        sub_255F0A808(v6, v8);
        sub_255F0A81C(v17, v19);
        sub_255F0A8B4(&v30);
        return v20;
      }

      v23 = v16;
      v22 = sub_255F0C958();

      swift_willThrow();
      sub_255F0A808(v6, v8);
      sub_255F0A8B4(&v30);
    }

    else
    {
      v21 = v13;
      v22 = sub_255F0C958();

      swift_willThrow();
      sub_255F0A808(v6, v8);
    }

    sub_255F0314C(&qword_27F817DD0, &qword_255F109F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_255F0F600;
    v30 = 0x203A726F727245;
    v31 = 0xE700000000000000;
    swift_getErrorValue();
    v25 = sub_255F0CC78();
    MEMORY[0x259C51540](v25);

    v26 = v30;
    v27 = v31;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    sub_255F0CC88();

    return 0;
  }

  return result;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeb5StateeF09protoDataSSSgSo6NSDataC_tFZ_0(uint64_t a1)
{
  v1 = sub_255F0C9D8();
  v17[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F0C9F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_255F0314C(&qword_27F817DE8, qword_255F10A08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_BitacoraState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState, &unk_255F0FA18);
  sub_255F0CAD8();
  v12 = v17[0];
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_255F0A948(v7, v11, type metadata accessor for LighthouseBitacoraProto_BitacoraState);
  sub_255F0C9C8();
  sub_255F0C9B8();
  v13 = sub_255F0CAB8();
  v15 = sub_255F095E8(v13, v14);

  (*(v12 + 8))(v3, v1);
  sub_255F0A9B0(v11, type metadata accessor for LighthouseBitacoraProto_BitacoraState);
  return v15;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializebb15MlruntimedEventeF09protoDataSSSgSo6NSDataC_tFZ_0(uint64_t a1)
{
  v1 = sub_255F0C9D8();
  v17[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F0C9F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_255F0314C(&qword_27F817DE0, &qword_255F10A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent, &unk_255F0FFE0);
  sub_255F0CAD8();
  v12 = v17[0];
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_255F0A948(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  v13 = sub_255F0CAB8();
  v15 = sub_255F095E8(v13, v14);

  (*(v12 + 8))(v3, v1);
  sub_255F0A9B0(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);
  return v15;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeba11PluginEventeF09protoDataSSSgSo6NSDataC_tFZ_0(uint64_t a1)
{
  v1 = sub_255F0C9D8();
  v17[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F0C9F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_255F0314C(&qword_27F817DD8, &qword_255F109F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent, &unk_255F102B0);
  sub_255F0CAD8();
  v12 = v17[0];
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_255F0A948(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  v13 = sub_255F0CAB8();
  v15 = sub_255F095E8(v13, v14);

  (*(v12 + 8))(v3, v1);
  sub_255F0A9B0(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  return v15;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeb11TrialdEventeF09protoDataSSSgSo6NSDataC_tFZ_0(uint64_t a1)
{
  v1 = sub_255F0C9D8();
  v17[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F0C9F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_255F0314C(&qword_27F817DC8, &qword_255F109E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent, &unk_255F0FBA8);
  sub_255F0CAD8();
  v12 = v17[0];
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_255F0A948(v7, v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  v13 = sub_255F0CAB8();
  v15 = sub_255F095E8(v13, v14);

  (*(v12 + 8))(v3, v1);
  sub_255F0A9B0(v11, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  return v15;
}

uint64_t sub_255F0A808(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255F0A81C(result, a2);
  }

  return result;
}

uint64_t sub_255F0A81C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_255F0A870(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255F0A8B4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_255F0A900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F0A948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255F0A9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_255F0ABC8(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(v13) = 67109120;
  HIDWORD(v13) = objc_msgSend_eventPhase(a2, v4, v6, v5);
  sub_255EE12D4(&dword_255ED5000, v7, v8, "Event phase, %d, not found.", v9, v10, v11, v12, v13);
}

void sub_255F0AC54(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(v13) = 67109120;
  HIDWORD(v13) = objc_msgSend_aggregateFunction(a2, v4, v6, v5);
  sub_255EE12D4(&dword_255ED5000, v7, v8, "Aggregate function %d not found.", v9, v10, v11, v12, v13);
}

void sub_255F0AD6C(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v9 = objc_msgSend_eventType(v3, v6, v8, v7);
  *v4 = 67109120;
  *v2 = v9;
  sub_255EE84B8(&dword_255ED5000, v10, v11, "Event Iteration Error: unknown BMLighthouseLedgerTrialdEvent event type %d");
}

void sub_255F0ADC8(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v9 = objc_msgSend_event(v3, v6, v8, v7);
  v13 = objc_msgSend_phase(v9, v10, v12, v11);
  *v4 = 67109120;
  *v2 = v13;
  sub_255EE84B8(&dword_255ED5000, v14, v15, "Event Iteration Error: unknown BMLighthouseLedgerDediscoPrivacyEvent event type %d");
}

void sub_255F0AE8C(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v9 = objc_msgSend_state(v3, v6, v8, v7);
  *v4 = 67109120;
  *v2 = v9;
  sub_255EE84B8(&dword_255ED5000, v10, v11, "Transition Iteration Error: unknown LBFBitacoraStateTransition state %d");
}