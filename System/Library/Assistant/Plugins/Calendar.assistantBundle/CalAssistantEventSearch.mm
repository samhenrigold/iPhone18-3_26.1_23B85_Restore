@interface CalAssistantEventSearch
- (EKEventStore)eventStore;
- (id)_validate;
- (id)_visibleCalendars;
- (void)performWithCompletion:(id)completion;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantEventSearch

- (EKEventStore)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v4 = objc_msgSend__ca_eventStoreWithError_(MEMORY[0x277CC5A40], a2, 0);
    v5 = self->_eventStore;
    self->_eventStore = v4;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  if (self->_eventStore != storeCopy)
  {
    v6 = storeCopy;
    objc_storeStrong(&self->_eventStore, store);
    storeCopy = v6;
  }
}

- (void)performWithCompletion:(id)completion
{
  v175 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  sub_2334B11EC(completionCopy, v5);
  sub_2334B11EC(v6, v7);
  v8 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B44F4(v8);
  }

  v9 = MEMORY[0x277CEF0D8];
  v10 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4588(v10);
  }

  v15 = objc_msgSend__validate(self, v11, v12);
  if (!v15)
  {
    v16 = objc_msgSend_timeZoneId(self, v13, v14);
    if (v16)
    {
      v17 = CFTimeZoneCreateWithName(0, v16, 1u);
    }

    else
    {
      v17 = CalCopyTimeZone();
    }

    v20 = v17;
    if (v17)
    {
      v23 = objc_msgSend_limit(self, v18, v19);
      if (v23)
      {
        v24 = objc_msgSend_limit(self, v21, v22);
        v27 = objc_msgSend_intValue(v24, v25, v26);
      }

      else
      {
        v27 = 0;
      }

      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = objc_msgSend_eventStore(self, v31, v32);
      v36 = objc_msgSend__visibleCalendars(self, v34, v35);
      v39 = v36;
      if (v36 && (v36 = objc_msgSend_count(v36, v37, v38)) != 0)
      {
        v145 = v27;
        v147 = v39;
        sub_2334B11EC(v36, v37);
        v40 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          log = v40;
          v132 = objc_opt_class();
          v139 = v132;
          v143 = objc_msgSend_startDate(self, v92, v93);
          v141 = objc_msgSend_endDate(self, v94, v95);
          v134 = objc_msgSend_title(self, v96, v97);
          v131 = objc_msgSend_location(self, v98, v99);
          v102 = objc_msgSend_notes(self, v100, v101);
          objc_msgSend_participants(self, v103, v104);
          *buf = 138414594;
          v154 = v132;
          v155 = 2112;
          v156 = v20;
          v157 = 2112;
          v158 = v143;
          v159 = 2112;
          v160 = v141;
          v161 = 2112;
          v162 = v134;
          v163 = 2112;
          v164 = v131;
          v165 = 2112;
          v166 = v102;
          v167 = 2112;
          v168 = v147;
          v170 = v169 = 2112;
          v105 = v170;
          v171 = 2112;
          v172 = v33;
          _os_log_debug_impl(&dword_2334AF000, log, OS_LOG_TYPE_DEBUG, "[%@] - Creating predicate for event search with timeZone %@, startDate %@, endDate %@, title %@, location %@, notes %@, visibleCalendars %@ participants %@ in store %@", buf, 0x66u);
        }

        v138 = completionCopy;
        v140 = v16;
        v41 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          loga = v41;
          v106 = objc_opt_class();
          v144 = v106;
          v135 = objc_msgSend_startDate(self, v107, v108);
          v133 = objc_msgSend_endDate(self, v109, v110);
          v113 = objc_msgSend_title(self, v111, v112);
          v116 = objc_msgSend_location(self, v114, v115);
          v119 = objc_msgSend_notes(self, v117, v118);
          v122 = objc_msgSend_participants(self, v120, v121);
          *buf = 136317698;
          v154 = "[CalAssistantEventSearch performWithCompletion:]";
          v155 = 2112;
          v156 = v106;
          v157 = 2112;
          v158 = v20;
          v159 = 2112;
          v160 = v135;
          v161 = 2112;
          v162 = v133;
          v163 = 2112;
          v164 = v113;
          v165 = 2112;
          v166 = v116;
          v167 = 2112;
          v168 = v119;
          v169 = 2112;
          v170 = v147;
          v171 = 2112;
          v172 = v122;
          v123 = v122;
          v173 = 2112;
          v174 = v33;
          _os_log_debug_impl(&dword_2334AF000, loga, OS_LOG_TYPE_DEBUG, "%s [%@] - Creating predicate for event search with timeZone %@, startDate %@, endDate %@, title %@, location %@, notes %@, visibleCalendars %@ participants %@ in store %@", buf, 0x70u);
        }

        v44 = objc_msgSend_startDate(self, v42, v43);
        v47 = objc_msgSend_endDate(self, v45, v46);
        v50 = objc_msgSend_title(self, v48, v49);
        v53 = objc_msgSend_location(self, v51, v52);
        v56 = objc_msgSend_notes(self, v54, v55);
        v59 = objc_msgSend_participants(self, v57, v58);
        v130 = v145;
        v146 = v33;
        v61 = objc_msgSend_predicateForAssistantEventSearchWithTimeZone_startDate_endDate_title_location_notes_participants_calendars_limit_(v33, v60, v20, v44, v47, v50, v53, v56, v59, v147, v130);

        sub_2334B11EC(v62, v63);
        v64 = qword_27DE0DD38;
        v142 = v61;
        if (v61)
        {
          v65 = os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG);
          v66 = MEMORY[0x277CEF0D8];
          completionCopy = v138;
          if (v65)
          {
            v124 = v64;
            v125 = objc_opt_class();
            *buf = 138412802;
            v154 = v125;
            v155 = 2112;
            v156 = v61;
            v157 = 2112;
            v158 = v146;
            v126 = v125;
            _os_log_debug_impl(&dword_2334AF000, v124, OS_LOG_TYPE_DEBUG, "[%@] - Searching for events matching predicate %@ in store %@", buf, 0x20u);
          }

          v67 = *v66;
          v69 = v146;
          if (os_log_type_enabled(*v66, OS_LOG_TYPE_DEBUG))
          {
            v127 = v67;
            v128 = objc_opt_class();
            *buf = 136315906;
            v154 = "[CalAssistantEventSearch performWithCompletion:]";
            v155 = 2112;
            v156 = v128;
            v157 = 2112;
            v158 = v142;
            v159 = 2112;
            v160 = v146;
            v129 = v128;
            _os_log_debug_impl(&dword_2334AF000, v127, OS_LOG_TYPE_DEBUG, "%s [%@] - Searching for events matching predicate %@ in store %@", buf, 0x2Au);

            v69 = v146;
          }

          v70 = objc_msgSend_eventsMatchingPredicate_(v69, v68, v142);
          sub_2334B11EC(v70, v71);
          if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B4628();
          }

          if (os_log_type_enabled(*v66, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B46E0();
          }

          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v72 = v70;
          v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v148, v152, 16);
          if (v74)
          {
            v75 = v74;
            v76 = *v149;
            do
            {
              for (i = 0; i != v75; ++i)
              {
                if (*v149 != v76)
                {
                  objc_enumerationMutation(v72);
                }

                AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(*(*(&v148 + 1) + 8 * i), v20);
                objc_msgSend_addObject_(v30, v79, AceEventFromEKEvent_0);
              }

              v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v80, &v148, v152, 16);
            }

            while (v75);
          }

          sub_2334B11EC(v81, v82);
          if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B47AC();
          }

          v16 = v140;
          v33 = v146;
          if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
          {
            sub_2334B4854();
          }

          v39 = v147;
        }

        else
        {
          v85 = os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR);
          completionCopy = v138;
          v16 = v140;
          v86 = MEMORY[0x277CEF0D8];
          if (v85)
          {
            sub_2334B4904(v64);
          }

          v87 = *v86;
          v88 = os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR);
          v33 = v146;
          v39 = v147;
          if (v88)
          {
            sub_2334B49A0(v87);
          }
        }
      }

      else
      {
        sub_2334B11EC(v36, v37);
        v83 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B4A48(v83);
        }

        v84 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B4ADC(v84);
        }
      }

      v89 = objc_alloc(MEMORY[0x277D471D0]);
      v15 = objc_msgSend_initWithResults_(v89, v90, v30);
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277D47208]);
      v15 = objc_msgSend_initWithReason_(v28, v29, @"Invalid timezone");
    }
  }

  v91 = objc_msgSend_dictionary(v15, v13, v14);
  completionCopy[2](completionCopy, v91);
}

- (id)_visibleCalendars
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CC59F0]);
  v7 = objc_msgSend_eventStore(self, v5, v6);
  v9 = objc_msgSend_initWithEventStore_visibilityChangedCallback_queue_(v4, v8, v7, 0, 0);

  v12 = objc_msgSend_visibleCalendars(v9, v10, v11);
  objc_msgSend_addObjectsFromArray_(v3, v13, v12);

  return v3;
}

- (id)_validate
{
  v4 = objc_msgSend_startDate(self, a2, v2);
  v7 = objc_msgSend_endDate(self, v5, v6);
  v9 = v7;
  if ((v4 != 0) != (v7 != 0))
  {
    v10 = @"Start date and end date must be either both specified or omitted";
LABEL_3:
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v13 = objc_msgSend_initWithReason_(v11, v12, v10);
    goto LABEL_4;
  }

  v13 = 0;
  if (v4 && v7)
  {
    if (objc_msgSend_compare_(v4, v8, v7) == 1)
    {
      v10 = @"End date cannot be earlier than start date";
      goto LABEL_3;
    }

    v13 = 0;
  }

LABEL_4:

  return v13;
}

@end