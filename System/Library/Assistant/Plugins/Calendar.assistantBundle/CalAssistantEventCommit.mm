@interface CalAssistantEventCommit
- (id)_commitEvent:(id)event serviceHelper:(id)helper;
- (id)_validateEvent:(id)event;
- (id)eventStore;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantEventCommit

- (id)eventStore
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

- (id)_validateEvent:(id)event
{
  eventCopy = event;
  v6 = objc_msgSend_title(eventCopy, v4, v5);

  if (!v6)
  {
    v16 = objc_alloc(MEMORY[0x277D47208]);
    v18 = objc_msgSend_initWithReason_(v16, v17, @"No title specified");
    goto LABEL_11;
  }

  v9 = objc_msgSend_startDate(eventCopy, v7, v8);
  v12 = objc_msgSend_endDate(eventCopy, v10, v11);
  v14 = v12;
  if (v9)
  {
    if (v12)
    {
      if (objc_msgSend_compare_(v9, v13, v12) != 1)
      {
        v18 = 0;
        goto LABEL_10;
      }

      v15 = @"End date cannot be earlier than start date";
    }

    else
    {
      v15 = @"No end date specified";
    }
  }

  else
  {
    v15 = @"No start date specified";
  }

  v19 = objc_alloc(MEMORY[0x277D47208]);
  v18 = objc_msgSend_initWithReason_(v19, v20, v15);
LABEL_10:

LABEL_11:

  return v18;
}

- (id)_commitEvent:(id)event serviceHelper:(id)helper
{
  v369 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  helperCopy = helper;
  sub_2334B11EC(helperCopy, v7);
  v8 = qword_27DE0DD38;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5598(self);
  }

  v9 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5628(self);
  }

  v12 = objc_msgSend_timeZoneId(eventCopy, v10, v11);
  if (v12)
  {
    v13 = CFTimeZoneCreateWithName(0, v12, 1u);
  }

  else
  {
    v13 = CalCopyTimeZone();
  }

  v16 = v13;
  if (!v13)
  {
    v63 = objc_alloc(MEMORY[0x277D47208]);
    v65 = objc_msgSend_initWithReason_(v63, v64, @"Invalid timezone");
    goto LABEL_168;
  }

  v17 = objc_msgSend_eventStore(self, v14, v15);
  cf = v16;
  objc_msgSend_setTimeZone_(v17, v18, v16);

  v21 = objc_msgSend_startDate(eventCopy, v19, v20);
  v342 = objc_msgSend_endDate(eventCopy, v22, v23);
  sub_2334B11EC(v342, v24);
  v25 = qword_27DE0DD38;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v329 = objc_opt_class();
    units.years = 138412802;
    *&units.months = v329;
    LOWORD(units.hours) = 2112;
    *(&units.hours + 2) = v21;
    *(&units.minutes + 3) = 2112;
    *&units.seconds = v342;
    _os_log_debug_impl(&dword_2334AF000, v25, OS_LOG_TYPE_DEBUG, "[%@] - Giving event start date %@ and end date %@", &units, 0x20u);
  }

  v26 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v330 = objc_opt_class();
    units.years = 136315906;
    *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
    LOWORD(units.hours) = 2112;
    *(&units.hours + 2) = v330;
    *(&units.minutes + 3) = 2112;
    *&units.seconds = v21;
    v367 = 2112;
    v368 = v342;
    _os_log_debug_impl(&dword_2334AF000, v26, OS_LOG_TYPE_DEBUG, "%s [%@] - Giving event start date %@ and end date %@", &units, 0x2Au);
  }

  v29 = objc_msgSend_identifier(eventCopy, v27, v28);
  v32 = objc_msgSend_scheme(v29, v30, v31);
  if (!v32)
  {

LABEL_28:
    v66 = MEMORY[0x277CC5A28];
    v67 = objc_msgSend_eventStore(self, v43, v44);
    v54 = objc_msgSend_eventWithEventStore_(v66, v68, v67);

    v71 = objc_msgSend_eventStore(self, v69, v70);
    v74 = objc_msgSend_acquireDefaultCalendarForNewEvents(v71, v72, v73);
    objc_msgSend_setCalendar_(v54, v75, v74);

    sub_2334B11EC(v76, v77);
    v78 = qword_27DE0DD38;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5AF4();
    }

    v79 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5BAC();
    }

    v62 = 0;
    goto LABEL_33;
  }

  v35 = v32;
  v36 = objc_msgSend_identifier(eventCopy, v33, v34);
  v39 = objc_msgSend_scheme(v36, v37, v38);
  v41 = objc_msgSend_compare_options_(v39, v40, *MEMORY[0x277CC5B20], 1);

  if (v41)
  {
    goto LABEL_28;
  }

  sub_2334B11EC(v42, v43);
  v45 = qword_27DE0DD38;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B56C8();
  }

  v46 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5770();
  }

  v49 = objc_msgSend_eventStore(self, v47, v48);
  v52 = objc_msgSend_identifier(eventCopy, v50, v51);
  v54 = objc_msgSend__eventWithURI_checkValid_(v49, v53, v52, 1);

  sub_2334B11EC(v55, v56);
  v57 = qword_27DE0DD38;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5824();
  }

  v58 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B58E0();
  }

  if (!v54)
  {
    goto LABEL_28;
  }

  isEditable = objc_msgSend_isEditable(v54, v43, v44);
  if ((isEditable & 1) == 0)
  {
    sub_2334B11EC(isEditable, v60);
    v325 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
    {
      sub_2334B59A4(v325, self);
    }

    v326 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
    {
      sub_2334B5A44(v326, self);
    }

    CFRelease(cf);
    v327 = objc_alloc(MEMORY[0x277D47208]);
    v65 = objc_msgSend_initWithReason_(v327, v328, @"Can't modify a read-only event.");
    goto LABEL_167;
  }

  v62 = 1;
LABEL_33:
  v80 = objc_msgSend_title(eventCopy, v60, v61);

  if (v80)
  {
    v83 = objc_msgSend_title(eventCopy, v81, v82);
    objc_msgSend_setTitle_(v54, v84, v83);

    sub_2334B11EC(v85, v86);
    v87 = qword_27DE0DD38;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5C70();
    }

    v88 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5D18();
    }
  }

  v89 = objc_msgSend_location(eventCopy, v81, v82);

  if (v89)
  {
    v92 = objc_msgSend_location(eventCopy, v90, v91);
    objc_msgSend_setLocation_(v54, v93, v92);

    sub_2334B11EC(v94, v95);
    v96 = qword_27DE0DD38;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5DCC();
    }

    v97 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5E74();
    }
  }

  v98 = objc_msgSend_notes(eventCopy, v90, v91);

  if (v98)
  {
    v101 = objc_msgSend_notes(eventCopy, v99, v100);
    objc_msgSend_setNotes_(v54, v102, v101);

    sub_2334B11EC(v103, v104);
    v105 = qword_27DE0DD38;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5F28();
    }

    v106 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5FD0();
    }
  }

  objc_msgSend_setStartDate_(v54, v99, v21);
  v109 = v342;
  if (!v342)
  {
    v110 = objc_msgSend_endDate(v54, v107, v108);

    if (v110)
    {
      v109 = 0;
    }

    else
    {
      objc_msgSend_timeIntervalSinceReferenceDate(v21, v107, v111);
      *&units.years = 0;
      *&units.days = 0x100000000;
      *&units.minutes = 0;
      units.seconds = 0.0;
      v113 = CFAbsoluteTimeAddGregorianUnits(v112, cf, &units);
      v109 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v114, v115, v113);
    }
  }

  v342 = v109;
  objc_msgSend_setEndDate_(v54, v107, v109);
  objc_msgSend_setTimeZone_(v54, v116, cf);
  v119 = objc_msgSend_allDay(eventCopy, v117, v118);
  v121 = objc_msgSend_setAllDay_(v54, v120, v119);
  sub_2334B11EC(v121, v122);
  v123 = qword_27DE0DD38;
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B6084(self, v54);
  }

  v124 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B617C(self, v54);
  }

  v340 = objc_msgSend_attendees(eventCopy, v125, v126);
  v129 = objc_msgSend_count(v340, v127, v128);
  v337 = v12;
  v338 = helperCopy;
  v336 = v21;
  v339 = eventCopy;
  if (v129)
  {
    sub_2334B11EC(v129, v130);
    v132 = qword_27DE0DD38;
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B6280();
    }

    v133 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B632C();
    }

    v345 = objc_msgSend_array(MEMORY[0x277CBEB18], v134, v135);
    v138 = objc_msgSend_calendar(v54, v136, v137);
    v141 = objc_msgSend_source(v138, v139, v140);
    v144 = objc_msgSend_constraints(v141, v142, v143);
    v147 = objc_msgSend_supportsOutgoingInvitations(v144, v145, v146);

    if (v147)
    {
      v151 = objc_msgSend_constraints(v141, v149, v150);
      v154 = objc_msgSend_requiresOutgoingInvitationsInDefaultCalendar(v151, v152, v153);

      if (v154)
      {
        isDefaultSchedulingCalendar = objc_msgSend_isDefaultSchedulingCalendar(v138, v149, v155);
        v349 = isDefaultSchedulingCalendar;
      }

      else
      {
        v349 = 1;
      }
    }

    else
    {
      v349 = 0;
    }

    sub_2334B11EC(isDefaultSchedulingCalendar, v149);
    v156 = qword_27DE0DD38;
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B63E0(self);
    }

    v333 = v138;
    v335 = v62;

    v157 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B648C(self);
    }

    v331 = v141;
    v346 = v54;

    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    obj = v340;
    v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v158, &v359, v365, 16);
    if (v159)
    {
      v162 = v159;
      v344 = 0;
      v163 = *v360;
      do
      {
        for (i = 0; i != v162; ++i)
        {
          if (*v360 != v163)
          {
            objc_enumerationMutation(obj);
          }

          v165 = *(*(&v359 + 1) + 8 * i);
          v168 = objc_msgSend_object(v165, v160, v161);
          if (v168)
          {
            v169 = objc_msgSend_data(v165, v166, v167);
            v172 = objc_msgSend_displayText(v165, v170, v171);
            v173 = MEMORY[0x277CFBC50];
            v176 = objc_msgSend_identifier(v168, v174, v175);
            v178 = objc_msgSend_externalIdentifierFromAssistantID_(v173, v177, v176);

            v181 = objc_msgSend_emails(v168, v179, v180);
            v184 = objc_msgSend_count(v181, v182, v183);

            if (v184)
            {
              v187 = objc_msgSend_emails(v168, v185, v186);
              v189 = objc_msgSend_objectAtIndex_(v187, v188, 0);
              v192 = objc_msgSend_emailAddress(v189, v190, v191);

              sub_2334B11EC(v193, v194);
              v195 = qword_27DE0DD38;
              if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
              {
                v210 = objc_opt_class();
                units.years = 138412546;
                *&units.months = v210;
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v192;
                _os_log_debug_impl(&dword_2334AF000, v195, OS_LOG_TYPE_DEBUG, "[%@] - Attendee has email %@", &units, 0x16u);
              }

              v196 = *MEMORY[0x277CEF0D8];
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
              {
                v211 = objc_opt_class();
                units.years = 136315650;
                *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v211;
                *(&units.minutes + 3) = 2112;
                *&units.seconds = v192;
                _os_log_debug_impl(&dword_2334AF000, v196, OS_LOG_TYPE_DEBUG, "%s [%@] - Attendee has email %@", &units, 0x20u);
              }
            }

            else
            {
              v192 = v169;
            }

            if (((v192 != 0) & v349) == 1)
            {
              v197 = MEMORY[0x277CC59A0];
              if (v178)
              {
                v198 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v185, v178);
                v200 = objc_msgSend_attendeeWithName_emailAddress_phoneNumber_url_(v197, v199, v172, v192, 0, v198);
              }

              else
              {
                v200 = objc_msgSend_attendeeWithName_emailAddress_phoneNumber_url_(MEMORY[0x277CC59A0], v185, v172, v192, 0, 0);
              }

              objc_msgSend_setParticipantType_(v200, v201, 1);
              objc_msgSend_setParticipantStatus_(v200, v202, 0);
              objc_msgSend_setParticipantRole_(v200, v203, 1);
              objc_msgSend_addObject_(v345, v204, v200);
              v206 = objc_msgSend_addAttendee_(v346, v205, v200);
              sub_2334B11EC(v206, v207);
              v208 = qword_27DE0DD38;
              if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
              {
                v212 = objc_opt_class();
                units.years = 138412546;
                *&units.months = v212;
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v200;
                _os_log_debug_impl(&dword_2334AF000, v208, OS_LOG_TYPE_DEBUG, "[%@] - Added attendee %@", &units, 0x16u);
              }

              v209 = *MEMORY[0x277CEF0D8];
              if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
              {
                v213 = objc_opt_class();
                units.years = 136315650;
                *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v213;
                *(&units.minutes + 3) = 2112;
                *&units.seconds = v200;
                _os_log_debug_impl(&dword_2334AF000, v209, OS_LOG_TYPE_DEBUG, "%s [%@] - Added attendee %@", &units, 0x20u);
              }

              v344 = 1;
            }
          }
        }

        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v160, &v359, v365, 16);
      }

      while (v162);
    }

    else
    {
      v344 = 0;
    }

    v216 = objc_msgSend_array(MEMORY[0x277CBEB18], v214, v215);
    v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v217 = obj;
    v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v218, &v355, v364, 16);
    eventCopy = v339;
    if (v219)
    {
      v222 = v219;
      v223 = *v356;
      do
      {
        for (j = 0; j != v222; ++j)
        {
          if (*v356 != v223)
          {
            objc_enumerationMutation(v217);
          }

          v225 = objc_msgSend_displayText(*(*(&v355 + 1) + 8 * j), v220, v221);
          objc_msgSend_addObject_(v216, v226, v225);
        }

        v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v220, &v355, v364, 16);
      }

      while (v222);
    }

    v227 = sub_2334B1D2C(v216);
    v230 = objc_msgSend_bundle(CalAssistantBundle, v228, v229);
    v232 = v230;
    v233 = MEMORY[0x277CCACA8];
    if (v338)
    {
      v234 = objc_msgSend_assistantLocalizedStringForKey_table_bundle_(v338, v231, @"%1$@ with %2$@", 0, v230);
      v237 = objc_msgSend_title(v339, v235, v236);
      objc_msgSend_stringWithFormat_(v233, v238, v234, v237, v227, v331, v333);
    }

    else
    {
      v234 = objc_msgSend_localizedStringForKey_value_table_(v230, v231, @"%1$@ with %2$@", &stru_2848D0778, 0);
      v237 = objc_msgSend_title(v339, v239, v240);
      objc_msgSend_localizedStringWithFormat_(v233, v241, v234, v237, v227, v331, v333);
    }
    v242 = ;

    if ((v335 | v344))
    {
      v245 = objc_msgSend_title(v339, v243, v244);
      objc_msgSend_setTitle_(v346, v246, v245);
    }

    else
    {
      v247 = objc_msgSend_setTitle_(v346, v243, v242);
    }

    sub_2334B11EC(v247, v248);
    v249 = qword_27DE0DD38;
    if (os_log_type_enabled(v249, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B6550();
    }

    v250 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B65F8();
    }

    v54 = v346;
  }

  v251 = objc_msgSend_recurrences(eventCopy, v130, v131);
  v254 = objc_msgSend_count(v251, v252, v253);

  if (v254)
  {
    if (v254 == 1)
    {
      v258 = objc_msgSend_recurrences(eventCopy, v256, v257);
      v260 = objc_msgSend_objectAtIndex_(v258, v259, 0);
      v261 = sub_2334B2068(v260);

      sub_2334B11EC(v262, v263);
      v264 = qword_27DE0DD38;
      if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B66AC();
      }

      v265 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B674C();
      }

      v267 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v266, v261);
      v268 = v54;
      objc_msgSend_setRecurrenceRules_(v54, v269, v267);

      v347 = 0;
    }

    else
    {
      sub_2334B11EC(v255, v256);
      v270 = qword_27DE0DD38;
      if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
      {
        sub_2334B67FC(self);
      }

      v271 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
      {
        sub_2334B6890(self);
      }

      v272 = objc_alloc(MEMORY[0x277D47208]);
      v347 = objc_msgSend_initWithReason_(v272, v273, @"Calendar plugin doesn't handle multiple recurrences.");
      v261 = v54;
      v268 = 0;
    }
  }

  else
  {
    v268 = v54;
    v347 = 0;
  }

  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  v274 = objc_msgSend_alerts(eventCopy, v256, v257);
  v276 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v275, &v351, v363, 16);
  if (v276)
  {
    v277 = v276;
    v278 = *v352;
    do
    {
      for (k = 0; k != v277; ++k)
      {
        if (*v352 != v278)
        {
          objc_enumerationMutation(v274);
        }

        v280 = *(*(&v351 + 1) + 8 * k);
        v281 = objc_alloc(MEMORY[0x277CC5988]);
        objc_msgSend_doubleValue(v280, v282, v283);
        v286 = objc_msgSend_initWithRelativeOffset_(v281, v284, v285);
        v288 = v286;
        if (v286)
        {
          sub_2334B11EC(v286, v287);
          v289 = qword_27DE0DD38;
          if (os_log_type_enabled(v289, OS_LOG_TYPE_DEBUG))
          {
            v293 = objc_opt_class();
            units.years = 138412546;
            *&units.months = v293;
            LOWORD(units.hours) = 2112;
            *(&units.hours + 2) = v288;
            _os_log_debug_impl(&dword_2334AF000, v289, OS_LOG_TYPE_DEBUG, "[%@] - Giving event alarm %@", &units, 0x16u);
          }

          v290 = *MEMORY[0x277CEF0D8];
          if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
          {
            v294 = objc_opt_class();
            units.years = 136315650;
            *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
            LOWORD(units.hours) = 2112;
            *(&units.hours + 2) = v294;
            *(&units.minutes + 3) = 2112;
            *&units.seconds = v288;
            _os_log_debug_impl(&dword_2334AF000, v290, OS_LOG_TYPE_DEBUG, "%s [%@] - Giving event alarm %@", &units, 0x20u);
          }

          objc_msgSend_addAlarm_(v268, v291, v288);
        }
      }

      v277 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v292, &v351, v363, 16);
    }

    while (v277);
  }

  v54 = v268;
  if (v268)
  {
    v297 = objc_msgSend_eventStore(self, v295, v296);
    v350 = 0;
    v299 = objc_msgSend_saveEvent_span_commit_error_(v297, v298, v268, v254 != 0, 1, &v350);
    v300 = v350;

    sub_2334B11EC(v301, v302);
    v303 = qword_27DE0DD38;
    v304 = v303;
    helperCopy = v338;
    eventCopy = v339;
    v21 = v336;
    v12 = v337;
    v305 = cf;
    v306 = v347;
    if (v299)
    {
      if (os_log_type_enabled(v303, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B6A8C(self);
      }

      v307 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B6B1C(self);
      }

      AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(v54, cf);
      v310 = AceEventFromEKEvent_0;
      if (AceEventFromEKEvent_0)
      {
        sub_2334B11EC(AceEventFromEKEvent_0, v309);
        v311 = qword_27DE0DD38;
        if (os_log_type_enabled(v311, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B6BBC(self);
        }

        v312 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(v312, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B6C4C(self);
        }

        v313 = objc_alloc_init(MEMORY[0x277D472A8]);
        v306 = objc_msgSend_identifier(v310, v314, v315);
        objc_msgSend_setIdentifier_(v313, v316, v306);
        goto LABEL_165;
      }

      v322 = objc_alloc(MEMORY[0x277D47208]);
      v321 = objc_msgSend_initWithReason_(v322, v323, @"Unable to create ace event from calendar event");
    }

    else
    {
      if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
      {
        sub_2334B6934();
      }

      v317 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
      {
        sub_2334B69D8();
      }

      v318 = objc_alloc(MEMORY[0x277D47208]);
      v310 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v319, @"Unable to save event: %@", v300);
      v321 = objc_msgSend_initWithReason_(v318, v320, v310);
    }

    v313 = v321;
LABEL_165:

    goto LABEL_166;
  }

  helperCopy = v338;
  eventCopy = v339;
  v21 = v336;
  v12 = v337;
  v305 = cf;
  v313 = v347;
LABEL_166:
  CFRelease(v305);
  v65 = v313;

LABEL_167:
LABEL_168:

  return v65;
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  sub_2334B11EC(completionCopy, v7);
  v10 = objc_msgSend_identifier(self, v8, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend__validateEvent_(self, v11, v10);
    if (v14)
    {
      goto LABEL_6;
    }

    v15 = objc_msgSend__commitEvent_serviceHelper_(self, v12, v10, helperCopy);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D47208]);
    v15 = objc_msgSend_initWithReason_(v16, v17, @"I could not find the event to commit.");
  }

  v14 = v15;
LABEL_6:
  v18 = objc_msgSend_dictionary(v14, v12, v13);
  completionCopy[2](completionCopy, v18);
}

@end