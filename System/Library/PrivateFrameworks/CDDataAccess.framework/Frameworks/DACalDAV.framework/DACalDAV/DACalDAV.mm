void sub_242493048(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id obj, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v31 = objc_begin_catch(a1);
      v32 = DALoggingwithCategory();
      v33 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = [obj accountID];
        LODWORD(buf) = 138412546;
        *(&buf + 4) = v34;
        WORD6(buf) = 2112;
        *(&buf + 14) = v31;
        _os_log_impl(&dword_242490000, v32, v33, "Caught an exception while trying to get the calendars for account %@: %@", &buf, 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x242492FE0);
    }

    objc_begin_catch(a1);

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_242498628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24249A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24249A60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2424A4424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2424A47C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2424A94C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2424AA6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2424AAD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return [v0 count];
}

id mobileCalDAVProdID(uint64_t a1)
{
  if (mobileCalDAVProdID_onceToken != -1)
  {
    mobileCalDAVProdID_cold_1();
  }

  v2 = mobileCalDAVProdID__sProdID;

  return v2;
}

void __mobileCalDAVProdID_block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v5 = v0;
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
  v3 = [v1 initWithFormat:@"-//Apple Inc.//iOS %@//EN", v2];
  v4 = mobileCalDAVProdID__sProdID;
  mobileCalDAVProdID__sProdID = v3;
}

uint64_t createPath(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1 isDirectory:0])
  {
    v3 = 1;
  }

  else
  {
    v7 = 0;
    v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v4 = v7;
    v5 = v4;
    if ((v3 & 1) == 0)
    {
      NSLog(&cfstr_CanTCreatePath.isa, v1, v4);
    }
  }

  return v3;
}

uint64_t checkOrCreatePath(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v2 stringByExpandingTildeInPath];

  v8 = 0;
  if (![v3 fileExistsAtPath:v4 isDirectory:&v8] || v8 != 1)
  {
    v6 = [v4 stringByDeletingLastPathComponent];
    if (checkOrCreatePath(v6))
    {
      v5 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (([v3 isWritableFileAtPath:v4] & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

__CFString *getStringUUID()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

__CFString *NSStringFromMobileCalDAVRefreshActorState(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"RefreshActorStateBeginningRefresh";
  }

  else
  {
    return off_278D4F840[a1 - 1];
  }
}

void sub_2424AEC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  _Unwind_Resume(a1);
}

void sub_2424AF1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2424AF5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  _Unwind_Resume(a1);
}

void sub_2424B0E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2424B2BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2424B2DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2424B2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id rem_reminderFromICSTodoWithOptions(void *a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v156 = *MEMORY[0x277D85DE8];
  v136 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v136)
  {
    v30 = 0;
    goto LABEL_91;
  }

  v125 = a5;
  v16 = [v13 principal];
  v17 = [v16 account];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138543362;
      v144 = v13;
      _os_log_impl(&dword_242490000, v18, v19, "ERROR: mobileCalendar object is not an instance of MobileCalDAVAccount: %{public}@", buf, 0xCu);
    }
  }

  objc_opt_class();
  REMDynamicCast();
  v131 = v130 = v14;
  v132 = v15;
  v128 = v17;
  v129 = v13;
  if ((a6 & 0x2000000) != 0)
  {
LABEL_82:
    v26 = v12;
    v103 = [v15 updateList:v14];
    v30 = [v15 addReminderWithTitle:@"__untitled__" toListChangeItem:v103];
    v104 = DALoggingwithCategory();
    v105 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = [v136 uid];
      v107 = [v30 objectID];
      *buf = 138543618;
      v144 = v106;
      v145 = 2114;
      v146 = v107;
      _os_log_impl(&dword_242490000, v104, v105, "Couldn't find a task with UID %{public}@ in the reminders database. Creating a new one {reminder: %{public}@}.", buf, 0x16u);

      v15 = v132;
    }

    v25 = 0;
    v31 = 1;
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_85:
    v108 = v25;
    v109 = MEMORY[0x277CBEB38];
    v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v111 = [v109 dictionaryWithObject:v110 forKey:@"ItemBridgeOptions"];

    v112 = [v131 backingAccountInfo];
    v113 = [v112 displayAccount];
    v114 = [v113 accountType];
    v115 = [v114 identifier];
    v116 = [v115 isEqual:*MEMORY[0x277CB8D38]];

    v32 = v111;
    if (v116)
    {
      [v111 setObject:&unk_2854BF738 forKey:*MEMORY[0x277D44CD0]];
    }

    v15 = v132;
    [v132 updateReminderChangeItem:v30 fromICSTodo:v136 icsCalendar:v26 isNew:v31 withOptions:v111];
    v14 = v130;
    v25 = v108;
    if (v125)
    {
      *v125 = 1;
    }

    goto LABEL_89;
  }

  v20 = [v15 store];
  v21 = [v136 uid];
  v142 = 0;
  v22 = [v20 fetchReminderWithDACalendarItemUniqueIdentifier:v21 inList:v14 error:&v142];
  v23 = v142;

  if (v22)
  {

    v24 = *(MEMORY[0x277CF3AF0] + 5);
    v25 = v22;
    goto LABEL_11;
  }

  if ((a6 & 0x20000000) == 0)
  {

    goto LABEL_82;
  }

  v35 = DALoggingwithCategory();
  v120 = *(MEMORY[0x277CF3AF0] + 5);
  v123 = v23;
  if (os_log_type_enabled(v35, v120))
  {
    v36 = [v136 uid];
    v37 = MEMORY[0x277CCABB0];
    v38 = [v13 rem_cachedFetchedRemindersForMergeSync];
    v39 = [v37 numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
    *buf = 138543874;
    v144 = v36;
    v145 = 2114;
    v146 = v39;
    v147 = 2114;
    v148 = v13;
    _os_log_impl(&dword_242490000, v35, v120, "k_REM_CalCalendarMergeFields: trying to match local reminder {uid: %{public}@, cache.count: %{public}@, calendar: %{public}@}", buf, 0x20u);
  }

  v40 = [v13 rem_cachedFetchedRemindersForMergeSync];
  if (!v40)
  {
    v41 = DALoggingwithCategory();
    v42 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v41, v42))
    {
      *buf = 138543362;
      v144 = v13;
      _os_log_impl(&dword_242490000, v41, v42, "k_REM_CalCalendarMergeFields: mobileCalendar.rem_cachedFetchedRemindersForMergeSync is unexpectedly nil {calendar: %{public}@}", buf, 0xCu);
    }

    v141 = 0;
    v40 = [v14 fetchRemindersWithError:&v141];
    v43 = v141;
    if (v40)
    {
      [v13 setRem_cachedFetchedRemindersForMergeSync:v40];
      v44 = v40;
    }

    else
    {
      v45 = DALoggingwithCategory();
      if (os_log_type_enabled(v45, v42))
      {
        v46 = [v13 guid];
        v47 = [v14 objectID];
        *buf = 138543874;
        v144 = v46;
        v145 = 2114;
        v146 = v47;
        v147 = 2114;
        v148 = v43;
        _os_log_impl(&dword_242490000, v45, v42, "k_REM_CalCalendarMergeFields: ERROR: Couldn't fetch all reminders for {guid: %{public}@, listID: %{public}@, error: %{public}@}", buf, 0x20u);

        v14 = v130;
        v15 = v132;
      }
    }
  }

  v48 = v40;
  if (![v48 count])
  {
    v83 = 0;
    goto LABEL_81;
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v119 = v48;
  obj = v48;
  v127 = [obj countByEnumeratingWithState:&v137 objects:v155 count:16];
  if (!v127)
  {
    v124 = 0;
    goto LABEL_78;
  }

  v118 = v20;
  v124 = 0;
  v126 = *v138;
  type = *(MEMORY[0x277CF3AF0] + 7);
  v122 = v12;
  v49 = obj;
  while (2)
  {
    for (i = 0; i != v127; ++i)
    {
      if (*v138 != v126)
      {
        objc_enumerationMutation(v49);
      }

      v51 = *(*(&v137 + 1) + 8 * i);
      v52 = DALoggingwithCategory();
      if (os_log_type_enabled(v52, type))
      {
        v53 = [v51 objectID];
        v54 = [v136 uid];
        *buf = 138543618;
        v144 = v53;
        v145 = 2114;
        v146 = v54;
        _os_log_impl(&dword_242490000, v52, type, "k_REM_CalCalendarMergeFields: Considering candidate title {candidate: %{public}@, uid: %{public}@}", buf, 0x16u);
      }

      v55 = [v51 titleAsString];
      v56 = [v136 summary];
      v57 = [v55 isEqualToString:v56];

      if (v57)
      {
        v58 = [v124 dueDateComponents];
        if (v58)
        {
        }

        else
        {
          v59 = [v136 due];

          if (!v59)
          {
            v84 = v51;

            v124 = v84;
            goto LABEL_63;
          }
        }

        v60 = [v136 due];
        v61 = [v60 components];

        v62 = [v136 due];
        v63 = [v12 systemTimeZoneForDate:v62];

        v64 = MEMORY[0x277CBEAB8];
        if (v63)
        {
          v133 = [MEMORY[0x277CBEAB8] rem_dateWithDateComponents:v61 timeZone:v63];
        }

        else
        {
          v65 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          v133 = [v64 rem_dateWithDateComponents:v61 timeZone:v65];
        }

        v66 = v61;
        v67 = MEMORY[0x277CBEAB8];
        v68 = [v51 dueDateComponents];
        v69 = [v51 dueDateComponents];
        v70 = [v69 timeZone];
        if (v70)
        {
          v71 = [v67 rem_dateWithDateComponents:v68 timeZone:v70];
        }

        else
        {
          v72 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          v71 = [v67 rem_dateWithDateComponents:v68 timeZone:v72];

          v23 = v123;
        }

        v73 = DALoggingwithCategory();
        if (os_log_type_enabled(v73, type))
        {
          v74 = [v51 objectID];
          v75 = [v136 uid];
          v76 = [v51 timeZone];
          v77 = [v63 name];
          *buf = 138544642;
          v144 = v74;
          v145 = 2114;
          v146 = v75;
          v147 = 2112;
          v148 = v71;
          v149 = 2112;
          v150 = v133;
          v151 = 2112;
          v152 = v76;
          v153 = 2112;
          v154 = v77;
          _os_log_impl(&dword_242490000, v73, type, "k_REM_CalCalendarMergeFields: Considering candidate due {candidate: %{public}@, uid: %{public}@, candidate.due: '%@', ics.due: '%@', candidate.timezone: %@, ics.timezone: %@}", buf, 0x3Eu);

          v23 = v123;
          v49 = obj;
        }

        if ([v71 isEqualToDate:v133])
        {
          v78 = [v51 timeZone];
          v79 = [v63 name];
          v80 = [v78 isEqualToString:v79];

          v14 = v130;
          if (v80)
          {
            v81 = v51;

            v82 = 0;
            v124 = v81;
          }

          else
          {
            v82 = 1;
          }

          v23 = v123;
        }

        else
        {
          v82 = 1;
          v14 = v130;
        }

        v12 = v122;
        v15 = v132;
        if (!v82)
        {
          goto LABEL_63;
        }
      }
    }

    v127 = [v49 countByEnumeratingWithState:&v137 objects:v155 count:16];
    if (v127)
    {
      continue;
    }

    break;
  }

LABEL_63:

  if (v124)
  {
    v85 = DALoggingwithCategory();
    v20 = v118;
    if (os_log_type_enabled(v85, v120))
    {
      v86 = [v136 uid];
      v87 = [v124 objectID];
      v88 = [v14 objectID];
      *buf = 138543874;
      v144 = v86;
      v145 = 2114;
      v146 = v87;
      v147 = 2114;
      v148 = v88;
      _os_log_impl(&dword_242490000, v85, v120, "k_REM_CalCalendarMergeFields: Found identity match of reminder {uid: %{public}@, reminder:%{public}@, list: %{public}@}", buf, 0x20u);

      v23 = v123;
    }

    v13 = v129;
    if ((a6 & 0x4000000) == 0)
    {
      goto LABEL_79;
    }

    v89 = [v136 last_modified];
    v90 = [v89 rem_dateAsUTC];

    if (v90)
    {
      v91 = [v124 lastModifiedDate];
      v92 = [v91 earlierDate:v90];
      v93 = v92 == v90;
    }

    else
    {
      v93 = 1;
    }

    v94 = DALoggingwithCategory();
    v95 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v94, v95))
    {
      v96 = [v124 lastModifiedDate];
      v97 = [v136 uid];
      v98 = [v124 objectID];
      *buf = 138413058;
      v144 = v96;
      v145 = 2112;
      v146 = v90;
      v147 = 2114;
      v148 = v97;
      v149 = 2114;
      v150 = v98;
      _os_log_impl(&dword_242490000, v94, v95, "k_REM_CalCalendarMergeFields: Comparing if local reminder is more recent {localLastMod: %@, remoteLastMod: %@, uid: %{public}@, reminder:%{public}@}", buf, 0x2Au);

      v15 = v132;
    }

    v23 = v123;
    if (v93)
    {
      v99 = DALoggingwithCategory();
      if (os_log_type_enabled(v99, v120))
      {
        v100 = [v136 uid];
        v101 = [v124 objectID];
        *buf = 138543618;
        v144 = v100;
        v145 = 2114;
        v146 = v101;
        _os_log_impl(&dword_242490000, v99, v120, "k_REM_CalCalendarMergeFields: Local reminder is more recent. Refusing to update the reminder. {uid: %{public}@, reminder:%{public}@}", buf, 0x16u);
      }

      v30 = [v15 updateReminder:v124];
      v102 = [v136 uid];
      [v30 setDaCalendarItemUniqueIdentifier:v102];

      v25 = v124;
      v14 = v130;
      v32 = v123;
      goto LABEL_90;
    }

    obj = v90;
    v14 = v130;
LABEL_78:

LABEL_79:
    v83 = v124;
    goto LABEL_80;
  }

  v83 = 0;
  v20 = v118;
LABEL_80:
  v48 = v119;
LABEL_81:

  v24 = v120;
  v25 = v83;
  if (!v83)
  {
    goto LABEL_82;
  }

LABEL_11:
  v26 = v12;
  v27 = DALoggingwithCategory();
  if (os_log_type_enabled(v27, v24))
  {
    v28 = [v136 uid];
    v29 = [v25 objectID];
    *buf = 138543618;
    v144 = v28;
    v145 = 2114;
    v146 = v29;
    _os_log_impl(&dword_242490000, v27, v24, "Updating existing reminder with UID id %{public}@ from ICS {reminder: %{public}@}.", buf, 0x16u);
  }

  v30 = [v15 updateReminder:v25];
  v31 = 0;
  if (v30)
  {
    goto LABEL_85;
  }

LABEL_14:
  v32 = DALoggingwithCategory();
  v33 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = [v136 uid];
    *buf = 138543362;
    v144 = v34;
    _os_log_impl(&dword_242490000, v32, v33, "ERROR: Couldn't create a reminder change item for ICS with UID id %{public}@.", buf, 0xCu);
  }

LABEL_89:
  v12 = v26;
  v13 = v129;
LABEL_90:

LABEL_91:

  return v30;
}

uint64_t rem_ReminderSetPropertiesWithBlock(void *a1, void *a2, NSObject **a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CF3AA8];
  v7 = a2;
  v8 = [v6 sharedManager];
  v9 = [v8 rem_storeProvider];
  v10 = [v9 rem_saveRequestForDataAccess];

  v11 = [v10 updateReminder:v5];
  v7[2](v7, v11);

  v12 = [v11 changedKeys];
  v13 = [v12 count];

  if (v13)
  {
    v25 = 0;
    v14 = [v10 saveSynchronouslyWithError:&v25];
    v15 = v25;
    if ((v14 & 1) == 0)
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v16, v17))
      {
        [v5 objectID];
        v18 = v24 = a3;
        v19 = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v15;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_242490000, v16, v17, "DACalDAViCalItem: ERROR: Save reminder %{public}@ property failed: %{public}@. (stack=%@)", buf, 0x20u);

        a3 = v24;
      }

      if (a3)
      {
        v20 = v15;
        *a3 = v15;
      }
    }
  }

  else
  {
    v15 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v15, v21))
    {
      v22 = [v5 objectID];
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_242490000, v15, v21, "DACalDAViCalItem: ChangedKeys is empty, no effective changes to this reminder change item, skipping -save {reminderID: %{public}@}.", buf, 0xCu);
    }

    v14 = 1;
  }

  return v14;
}

void sub_2424BA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _calDAVCalendarServerInviteStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF7058]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7060]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7068]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7070]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7078]])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _calDAVCalendarServerAccessLevelFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF7088]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7090]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7098]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}