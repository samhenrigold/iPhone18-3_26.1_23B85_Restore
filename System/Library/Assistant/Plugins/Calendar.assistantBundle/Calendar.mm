void sub_2334B008C(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!v7)
  {
    v63 = *(a1 + 48);
    v64 = objc_msgSend_dictionary(a3, v5, v6);
    (*(v63 + 16))(v63, v64);

    goto LABEL_32;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = (a1 + 32);
  obj = objc_msgSend_identifiers(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v70, v80, 16);
  v12 = a1;
  if (!v9)
  {
    goto LABEL_26;
  }

  v13 = v9;
  v14 = *v71;
  v65 = 136315650;
  v66 = v7;
  v67 = v12;
  do
  {
    v15 = 0;
    do
    {
      if (*v71 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v70 + 1) + 8 * v15);
      v17 = objc_msgSend_timeZoneId(v16, v10, v11, v65);
      if (v17)
      {
        v18 = CFTimeZoneCreateWithName(0, v17, 1u);
      }

      else
      {
        v18 = CalCopyTimeZone();
      }

      v20 = v18;
      if (v18)
      {
        sub_2334B11EC(v18, v19);
        v21 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          v34 = v21;
          v35 = objc_opt_class();
          v36 = v35;
          v39 = objc_msgSend_identifier(v16, v37, v38);
          *buf = 138412546;
          v75 = v35;
          v7 = v66;
          v76 = 2112;
          v77 = v39;
          _os_log_debug_impl(&dword_2334AF000, v34, OS_LOG_TYPE_DEBUG, "[%@] - Looking for event with identifier %@", buf, 0x16u);

          v12 = v67;
        }

        v22 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
        {
          v40 = v22;
          v41 = objc_opt_class();
          v42 = v41;
          v45 = objc_msgSend_identifier(v16, v43, v44);
          *buf = v65;
          v75 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
          v76 = 2112;
          v77 = v41;
          v78 = 2112;
          v79 = v45;
          _os_log_debug_impl(&dword_2334AF000, v40, OS_LOG_TYPE_DEBUG, "%s [%@] - Looking for event with identifier %@", buf, 0x20u);

          v7 = v66;
          v12 = v67;
        }

        v25 = objc_msgSend_identifier(v16, v23, v24);
        v27 = objc_msgSend__eventWithURI_checkValid_(v7, v26, v25, 1);

        sub_2334B11EC(v28, v29);
        v30 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          v46 = v30;
          v47 = objc_opt_class();
          *buf = 138412546;
          v75 = v47;
          v76 = 2112;
          v77 = v27;
          v48 = v47;
          _os_log_debug_impl(&dword_2334AF000, v46, OS_LOG_TYPE_DEBUG, "[%@] - Found event %@", buf, 0x16u);

          v12 = v67;
        }

        v31 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
        {
          v49 = v31;
          v50 = objc_opt_class();
          *buf = v65;
          v75 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
          v76 = 2112;
          v77 = v50;
          v78 = 2112;
          v79 = v27;
          v51 = v50;
          _os_log_debug_impl(&dword_2334AF000, v49, OS_LOG_TYPE_DEBUG, "%s [%@] - Found event %@", buf, 0x20u);

          v12 = v67;
          if (v27)
          {
LABEL_19:
            AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(v27, v20);
            objc_msgSend_addObject_(*(v12 + 40), v33, AceEventFromEKEvent_0);
          }
        }

        else if (v27)
        {
          goto LABEL_19;
        }

        CFRelease(v20);
      }

      ++v15;
    }

    while (v13 != v15);
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v70, v80, 16);
    v13 = v52;
  }

  while (v52);
LABEL_26:

  sub_2334B11EC(v53, v54);
  v55 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B435C(v68, v55, v12);
  }

  v56 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4420(v68, v56, v12);
  }

  v57 = objc_alloc_init(MEMORY[0x277D472B8]);
  objc_msgSend_setObjects_(v57, v58, *(v12 + 40));
  v59 = *(v12 + 48);
  v62 = objc_msgSend_dictionary(v57, v60, v61);
  (*(v59 + 16))(v59, v62);

LABEL_32:
}

uint64_t sub_2334B11A4()
{

  return objc_opt_class();
}

uint64_t sub_2334B11D4()
{

  return objc_opt_class();
}

void sub_2334B11EC(uint64_t result, uint64_t a2)
{
  if (qword_27DE0DD30 != -1)
  {
    sub_2334B4B7C();
  }
}

uint64_t sub_2334B1218()
{
  qword_27DE0DD38 = os_log_create(qword_27DE0DD28, "CalendarAssistant");

  return MEMORY[0x2821F96F8]();
}

id sub_2334B125C()
{
  v0 = objc_alloc(MEMORY[0x277CC5A40]);
  v2 = objc_msgSend_initWithEKOptions_(v0, v1, 4);

  return v2;
}

void sub_2334B1294(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CC5A40]);
  v6 = objc_msgSend_initWithEKOptions_(v4, v5, 4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334B1350;
  v10[3] = &unk_2789D86A0;
  v11 = v6;
  v12 = v3;
  v7 = v6;
  v8 = v3;
  objc_msgSend_requestFullAccessToEventsWithCompletion_(v7, v9, v10);
}

void sub_2334B1350(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    sub_2334B11EC(v5, v6);
    v8 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
    {
      sub_2334B4B90(v7, v8);
    }

    v9 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
    {
      sub_2334B4C08(v7, v9);
    }

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"We weren't granted access to EventKit. %@", v7);
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v14 = objc_msgSend_initWithReason_(v12, v13, v11);
    (*(*(a1 + 40) + 16))();
  }
}

id sub_2334B1D14(id a1)
{

  return a1;
}

id sub_2334B1D2C(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_count(v1, v2, v3);
  v7 = objc_msgSend_bundle(CalAssistantBundle, v5, v6);
  v9 = v7;
  if (v4)
  {
    if (v4 == 2)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"%@ and %@ (two attendee format)", @"%@ and %@", 0);
      v14 = objc_msgSend_objectAtIndex_(v1, v13, 0);
      v16 = objc_msgSend_objectAtIndex_(v1, v15, 1);
      v10 = objc_msgSend_localizedStringWithFormat_(v11, v17, v12, v14, v16);
    }

    else if (v4 == 1)
    {
      v10 = objc_msgSend_objectAtIndex_(v1, v8, 0);
    }

    else
    {
      v18 = 0x277CCA000uLL;
      v19 = MEMORY[0x277CCACA8];
      v20 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"%@, %@ (three or more start format)", @"%@, %@", 0);
      v22 = objc_msgSend_objectAtIndex_(v1, v21, 0);
      v24 = objc_msgSend_objectAtIndex_(v1, v23, 1);
      v26 = objc_msgSend_localizedStringWithFormat_(v19, v25, v20, v22, v24);

      v43 = v4 - 1;
      if ((v4 - 1) < 3)
      {
        v36 = v26;
      }

      else
      {
        v28 = v4 - 3;
        v29 = 2;
        do
        {
          v30 = *(v18 + 3240);
          objc_msgSend_localizedStringForKey_value_table_(v9, v27, @"%@, %@ (three or more middle format)", @"%@, %@", 0);
          v32 = v31 = v18;
          v34 = objc_msgSend_objectAtIndex_(v1, v33, v29);
          v36 = objc_msgSend_localizedStringWithFormat_(v30, v35, v32, v26, v34);

          v18 = v31;
          ++v29;
          v26 = v36;
          --v28;
        }

        while (v28);
      }

      v37 = *(v18 + 3240);
      v38 = objc_msgSend_localizedStringForKey_value_table_(v9, v27, @"%@ and %@ (three or more end format)", @"%@ and %@", 0);
      v40 = objc_msgSend_objectAtIndex_(v1, v39, v43);
      v10 = objc_msgSend_localizedStringWithFormat_(v37, v41, v38, v36, v40);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_2334B1FD0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 < 5)
  {
    return qword_2334B7308[a1];
  }

  sub_2334B11EC(a1, a2);
  v4 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
  {
    sub_2334B5494(v2, v4);
  }

  v5 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
  {
    sub_2334B550C(v2, v5);
  }

  return 0;
}

id sub_2334B2068(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_frequency(v1, v2, v3);
  v6 = sub_2334B1FD0(v4, v5);
  v9 = objc_msgSend_endDate(v1, v7, v8);

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CC5A90]);
    v15 = objc_msgSend_endDate(v1, v13, v14);
    v17 = objc_msgSend_initWithEndDate_(v12, v16, v15);
  }

  else if (objc_msgSend_endCount(v1, v10, v11) < 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CC5A90]);
    v21 = objc_msgSend_endCount(v1, v19, v20);
    v17 = objc_msgSend_initWithOccurrenceCount_(v18, v22, v21);
  }

  v23 = objc_alloc(MEMORY[0x277CC5AA8]);
  v26 = objc_msgSend_interval(v1, v24, v25);
  inited = objc_msgSend_initRecurrenceWithFrequency_interval_end_(v23, v27, v6, v26, v17);

  return inited;
}

id CreateAceEventFromEKEvent_0(void *a1, void *a2)
{
  v144 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  sub_2334B11EC(v4, v5);
  v8 = objc_alloc_init(MEMORY[0x277D471C8]);
  if (v8)
  {
    v9 = objc_msgSend_externalURI(v3, v6, v7);
    objc_msgSend_setIdentifier_(v8, v10, v9);

    v13 = objc_msgSend_externalURI(v3, v11, v12);
    objc_msgSend_setCalendarPunchoutURI_(v8, v14, v13);

    v17 = objc_msgSend_title(v3, v15, v16);
    objc_msgSend_setTitle_(v8, v18, v17);

    v21 = objc_msgSend_location(v3, v19, v20);
    objc_msgSend_setLocation_(v8, v22, v21);

    isAllDay = objc_msgSend_isAllDay(v3, v23, v24);
    objc_msgSend_setAllDay_(v8, v26, isAllDay);
    v29 = objc_msgSend_startDate(v3, v27, v28);
    objc_msgSend_setStartDate_(v8, v30, v29);

    v33 = objc_msgSend_endDate(v3, v31, v32);
    objc_msgSend_setEndDate_(v8, v34, v33);

    v137 = v4;
    v37 = objc_msgSend_name(v4, v35, v36);
    objc_msgSend_setTimeZoneId_(v8, v38, v37);

    v41 = objc_msgSend_calendar(v3, v39, v40);
    v44 = objc_msgSend_externalURI(v41, v42, v43);
    objc_msgSend_setCalendarId_(v8, v45, v44);

    if ((objc_msgSend_isEditable(v3, v46, v47) & 1) == 0)
    {
      v49 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, 1);
      objc_msgSend_setReadOnly_(v8, v50, v49);
    }

    v51 = v8;
    v54 = objc_msgSend_attendees(v3, v52, v53);
    v138 = v8;
    if (objc_msgSend_count(v54, v55, v56))
    {
      v135 = v51;
      v57 = objc_alloc(MEMORY[0x277CBEB18]);
      v59 = objc_msgSend_initWithCapacity_(v57, v58, 0);
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v133 = v54;
      v60 = v54;
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v139, v143, 16);
      if (v62)
      {
        v65 = v62;
        v66 = *v140;
        do
        {
          for (i = 0; i != v65; ++i)
          {
            if (*v140 != v66)
            {
              objc_enumerationMutation(v60);
            }

            v68 = *(*(&v139 + 1) + 8 * i);
            v69 = objc_msgSend_name(v68, v63, v64, v133);
            v72 = objc_msgSend_emailAddress(v68, v70, v71);
            if (v72 | v69)
            {
              v73 = objc_alloc_init(MEMORY[0x277D47638]);
              v75 = v73;
              if (v72)
              {
                objc_msgSend_setData_(v73, v74, v72);
              }

              else
              {
                objc_msgSend_setData_(v73, v74, v69);
              }

              if (v69)
              {
                objc_msgSend_setDisplayText_(v75, v76, v69);
              }

              else
              {
                objc_msgSend_setDisplayText_(v75, v76, v72);
              }

              objc_msgSend_addObject_(v59, v77, v75);
            }
          }

          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v139, v143, 16);
        }

        while (v65);
      }

      v51 = v135;
      objc_msgSend_setAttendees_(v135, v78, v59);

      v8 = v138;
      v54 = v133;
    }

    v79 = v51;
    v82 = objc_msgSend_recurrenceRules(v3, v80, v81);
    if (objc_msgSend_count(v82, v83, v84))
    {
      v136 = v79;
      v85 = objc_alloc(MEMORY[0x277CBEB18]);
      v88 = objc_msgSend_count(v82, v86, v87);
      v90 = objc_msgSend_initWithCapacity_(v85, v89, v88);
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v134 = v82;
      v91 = v82;
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v139, v143, 16);
      if (v93)
      {
        v94 = v93;
        v95 = *v140;
        do
        {
          for (j = 0; j != v94; ++j)
          {
            if (*v140 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v97 = *(*(&v139 + 1) + 8 * j);
            v98 = objc_alloc_init(MEMORY[0x277D471D8]);
            v101 = objc_msgSend_frequency(v97, v99, v100);
            if (v101 <= 3)
            {
              objc_msgSend_setFrequency_(v98, v102, (v101 + 1));
            }

            v104 = objc_msgSend_interval(v97, v102, v103, v134);
            objc_msgSend_setInterval_(v98, v105, v104);
            v108 = objc_msgSend_recurrenceEnd(v97, v106, v107);
            v111 = v108;
            if (v108)
            {
              v112 = objc_msgSend_endDate(v108, v109, v110);

              if (v112)
              {
                v115 = objc_msgSend_endDate(v111, v113, v114);
                objc_msgSend_setEndDate_(v98, v116, v115);
              }

              else if (objc_msgSend_occurrenceCount(v111, v113, v114))
              {
                v118 = objc_msgSend_occurrenceCount(v111, v109, v117);
                objc_msgSend_setEndCount_(v98, v119, v118);
              }
            }

            objc_msgSend_addObject_(v90, v109, v98);
          }

          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v120, &v139, v143, 16);
        }

        while (v94);
      }

      v79 = v136;
      objc_msgSend_setRecurrences_(v136, v121, v90);

      v8 = v138;
      v82 = v134;
    }

    v122 = v79;
    v125 = objc_msgSend_selfParticipantStatus(v3, v123, v124);
    if (v125 <= 7)
    {
      objc_msgSend_setSelfParticipantStatus_(v122, v126, **(&unk_2789D86C0 + v125));
    }

    v127 = v122;
    v130 = objc_msgSend_status(v3, v128, v129);
    v4 = v137;
    if (v130 <= 3)
    {
      objc_msgSend_setStatus_(v127, v131, **(&unk_2789D8700 + v130));
    }
  }

  return v8;
}

void sub_2334B41F8(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_2334AF000, v2, OS_LOG_TYPE_DEBUG, "[%@] - Performing Event Retrieve", &v4, 0xCu);
}

void sub_2334B42A0(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4 = 136315394;
  v5 = "[CalAssistantEventRetrieve performWithCompletion:]";
  v6 = 2112;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_debug_impl(&dword_2334AF000, v2, OS_LOG_TYPE_DEBUG, "%s [%@] - Performing Event Retrieve", &v4, 0x16u);
}

void sub_2334B435C(uint64_t *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a3 + 40);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v7 = v5;
  _os_log_debug_impl(&dword_2334AF000, v4, OS_LOG_TYPE_DEBUG, "[%@] - Returning results %@", &v8, 0x16u);
}

void sub_2334B4420(uint64_t *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a3 + 40);
  v8 = 136315650;
  v9 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v7 = v5;
  _os_log_debug_impl(&dword_2334AF000, v4, OS_LOG_TYPE_DEBUG, "%s [%@] - Returning results %@", &v8, 0x20u);
}

void sub_2334B44F4(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B4588(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B4628()
{
  sub_2334B11BC();
  v3 = v2;
  v4 = sub_2334B11D4();
  objc_msgSend_count(v0, v5, v6);
  sub_2334B1194();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_2334B46E0()
{
  sub_2334B11BC();
  v3 = v2;
  v4 = sub_2334B11D4();
  objc_msgSend_count(v0, v5, v6);
  sub_2334B1194();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_2334B47AC()
{
  sub_2334B11BC();
  v2 = v1;
  sub_2334B11D4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1194();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B4854()
{
  sub_2334B11BC();
  v2 = v1;
  sub_2334B11D4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1194();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_2334B4904(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  _os_log_error_impl(&dword_2334AF000, v1, OS_LOG_TYPE_ERROR, "[%@] - Predicate was nil", v5, 0xCu);
}

void sub_2334B49A0(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  v5[0] = 136315394;
  sub_2334B1170();
  v4 = v3;
  _os_log_error_impl(&dword_2334AF000, v1, OS_LOG_TYPE_ERROR, "%s [%@] - Predicate was nil", v5, 0x16u);
}

void sub_2334B4A48(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B4ADC(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B4B90(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "We weren't granted access to EventKit. %@", &v2, 0xCu);
}

void sub_2334B4C08(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[EKEventStore(CalAssistant) _ca_performBlock:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "%s We weren't granted access to EventKit. %@", &v2, 0x16u);
}

void sub_2334B4C94(void *a1)
{
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B4D24(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B4DC8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = objc_opt_class();
  objc_opt_class();
  sub_2334B1CD8();
  v6 = v5;
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_2334B4E90(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = objc_opt_class();
  objc_opt_class();
  sub_2334B1CE8();
  v6 = v5;
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_2334B4F5C(void *a1)
{
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B4FEC(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B5090(void *a1)
{
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B5120(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B51C4(void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = v5;
  v9 = objc_msgSend_localizedDescription(a3, v7, v8);
  v10 = 138412546;
  v11 = v5;
  sub_2334B1CD8();
  _os_log_debug_impl(&dword_2334AF000, v4, OS_LOG_TYPE_DEBUG, "[%@] - Event deletion failed because removeEvent returned a non nil error: [%@]", &v10, 0x16u);
}

void sub_2334B5294(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v8 = objc_msgSend_localizedDescription(a3, v6, v7);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x20u);
}

void sub_2334B5360(void *a1)
{
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_2334B53F0(void *a1)
{
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B5494(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "Error: Invalid SACalendarRecurrenceFrequency [%d]", v2, 8u);
}

void sub_2334B550C(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "EKRecurrenceFrequencyFromSACalendarRecurrenceFrequency";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "%s Error: Invalid SACalendarRecurrenceFrequency [%d]", &v2, 0x12u);
}

void sub_2334B5598(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_2334B5628(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_2334B56C8()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_identifier(v2, v3, v4);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_2334B5770()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_identifier(v2, v3, v4);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B5824()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B41D4();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B58E0()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B41A4();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_2334B59A4(void *a1, uint64_t a2)
{
  v2 = a1;
  objc_opt_class();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B41EC();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0xCu);
}

void sub_2334B5A44(void *a1, uint64_t a2)
{
  v2 = a1;
  objc_opt_class();
  sub_2334B41B8();
  v4 = v3;
  sub_2334B41EC();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);
}

void sub_2334B5AF4()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_calendar(v2, v3, v4);
  v8 = objc_msgSend_title(v5, v6, v7);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x16u);
}

void sub_2334B5BAC()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_calendar(v2, v3, v4);
  v8 = objc_msgSend_title(v5, v6, v7);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x20u);
}

void sub_2334B5C70()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_2334B5D18()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B5DCC()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_location(v2, v3, v4);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_2334B5E74()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_location(v2, v3, v4);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B5F28()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_notes(v2, v3, v4);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_2334B5FD0()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_notes(v2, v3, v4);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B6084(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_startDate(a2, v4, v5);
  v9 = objc_msgSend_endDate(a2, v7, v8);
  objc_msgSend_isAllDay(a2, v10, v11);
  sub_2334B41D4();
  sub_2334B41EC();
  _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x26u);
}

void sub_2334B617C(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_startDate(a2, v4, v5);
  v9 = objc_msgSend_endDate(a2, v7, v8);
  objc_msgSend_isAllDay(a2, v10, v11);
  sub_2334B41B8();
  sub_2334B41EC();
  _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x30u);
}

void sub_2334B6280()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  objc_msgSend_count(v2, v3, v4);
  sub_2334B1D04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_2334B632C()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  objc_msgSend_count(v2, v3, v4);
  sub_2334B41A4();
  sub_2334B1D04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_2334B63E0(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_2334B648C(uint64_t a1)
{
  v6 = objc_opt_class();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_2334B6550()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_2334B65F8()
{
  sub_2334B11BC();
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v5 = objc_msgSend_title(v2, v3, v4);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_2334B66AC()
{
  sub_2334B11BC();
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41D4();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_2334B674C()
{
  sub_2334B11BC();
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_2334B67FC(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41C8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_2334B6890(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B41C8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_2334B6934()
{
  sub_2334B11BC();
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41D4();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
}

void sub_2334B69D8()
{
  sub_2334B11BC();
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x20u);
}

void sub_2334B6A8C(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_2334B6B1C(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_2334B6BBC(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_2334B6C4C(uint64_t a1)
{
  v1 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}