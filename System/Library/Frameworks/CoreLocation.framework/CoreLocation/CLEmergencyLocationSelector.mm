@interface CLEmergencyLocationSelector
- (CLEmergencyLocationSelector)initWithConfig:(id)config bundle:(id)bundle delegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)stopSession;
@end

@implementation CLEmergencyLocationSelector

- (CLEmergencyLocationSelector)initWithConfig:(id)config bundle:(id)bundle delegate:(id)delegate queue:(id)queue
{
  v45 = *MEMORY[0x1E69E9840];
  if (config)
  {
    if (bundle)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, bundle);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CLEmergencyLocationSelector.mm", 288, @"Invalid parameter not satisfying: %@", @"config");
    if (bundle)
    {
LABEL_3:
      if (delegate)
      {
        goto LABEL_4;
      }

LABEL_22:
      v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, config, bundle);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CLEmergencyLocationSelector.mm", 290, @"Invalid parameter not satisfying: %@", @"delegate");
      if (queue)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  v36 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, config, bundle);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, self, @"CLEmergencyLocationSelector.mm", 289, @"Invalid parameter not satisfying: %@", @"bundle");
  if (!delegate)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (queue)
  {
    goto LABEL_5;
  }

LABEL_23:
  v40 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, config, bundle);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, self, @"CLEmergencyLocationSelector.mm", 291, @"Invalid parameter not satisfying: %@", @"queue");
LABEL_5:
  dispatch_assert_queue_V2(queue);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,initWithConfig:bundle:delegate:queue:,initiated", buf, 2u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LOWORD(v44) = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelector,initWithConfig:bundle:delegate:queue:,initiated", &v44, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector initWithConfig:bundle:delegate:queue:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v42.receiver = self;
  v42.super_class = CLEmergencyLocationSelector;
  v18 = [(CLEmergencyLocationSelector *)&v42 init];
  if (v18)
  {
    objc_msgSend_printConfiguration(config, v15, v16, v17);
    v19 = MEMORY[0x1E696AEC0];
    v23 = objc_msgSend_feature(config, v20, v21, v22);
    v26 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v24, v23, v25);
    v29 = objc_msgSend_stringWithFormat_(v19, v27, @"Emergency Location Session for %@", v28, v26);
    v18->_fCleeaAssertion = objc_msgSend_newAssertionForBundle_withReason_(CLEmergencyEnablementAssertion, v30, bundle, v29);
    v31 = [CLLocationManager alloc];
    v18->_fLocManager = objc_msgSend_initWithEffectiveBundle_delegate_onQueue_(v31, v32, bundle, v18, queue);
    objc_storeWeak(&v18->_fDelegate, delegate);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,dealloc,self:%{private}@,initiated", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v10 = 138477827;
    selfCopy2 = self;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelector,dealloc,self:%{private}@,initiated", &v10, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector dealloc]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  objc_msgSend_stopSession(self, v5, v6, v7);
  v9.receiver = self;
  v9.super_class = CLEmergencyLocationSelector;
  [(CLEmergencyLocationSelector *)&v9 dealloc];
}

- (void)stopSession
{
  v287 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,initiated", &buf, 0xCu);
  }

  selfCopy = self;
  v4 = sub_19B87DD40();
  selfCopy4 = self;
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v253) = 138477827;
    *(&v253 + 4) = self;
    v9 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,initiated", &v253, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector stopSession]", "CoreLocation: %s\n", v9);
    if (v9 != &buf)
    {
      free(v9);
    }

    selfCopy4 = self;
  }

  fLocManager = selfCopy4->_fLocManager;
  if (fLocManager)
  {
    objc_msgSend_stopUpdatingLocation(fLocManager, v5, v6, v7);

    self->_fLocManager = 0;
    selfCopy4 = self;
  }

  fInstance = selfCopy4->_fInstance;
  if (fInstance)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = fInstance;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,initiated", &buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v253) = 134283521;
      *(&v253 + 4) = fInstance;
      v14 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,initiated", &v253, 12);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::stopSession()", "CoreLocation: %s\n", v14);
      if (v14 != &buf)
      {
        free(v14);
      }
    }

    sub_19BA44FC8((fInstance + 3), 2);
    if (*fInstance)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v250 = *(fInstance + 208);
        LocationEarlyReturnEnabled = objc_msgSend_firstLocationEarlyReturnEnabled(*fInstance, v16, v17, v18);
        v246 = *(fInstance + 209);
        objc_msgSend_firstLocationTimeout(*fInstance, v19, v20, v21);
        v23 = v22;
        v236 = *(fInstance + 53);
        v238 = *(fInstance + 54);
        v240 = *(fInstance + 55);
        v242 = *(fInstance + 56);
        v244 = *(fInstance + 57);
        UpdateEnabled = objc_msgSend_firstUpdateEnabled(*fInstance, v24, v25, v26);
        v232 = *(fInstance + 232);
        objc_msgSend_firstUpdateTimeout(*fInstance, v27, v28, v29);
        v31 = v30;
        v33 = *(fInstance + 59);
        v32 = *(fInstance + 60);
        v226 = *(fInstance + 61);
        v228 = *(fInstance + 62);
        v230 = *(fInstance + 63);
        v37 = objc_msgSend_periodicUpdatesEnabled(*fInstance, v34, v35, v36);
        v38 = *(fInstance + 64);
        v39 = *(fInstance + 65);
        v40 = *(fInstance + 66);
        v41 = *(fInstance + 67);
        v42 = *(fInstance + 68);
        v222 = *(fInstance + 69);
        v224 = *(fInstance + 70);
        objc_msgSend_locationUpdateTimeout(*fInstance, v43, v44, v45);
        v47 = v46;
        objc_msgSend_locationUpdateMinDelay(*fInstance, v48, v49, v50);
        LODWORD(buf) = 67115776;
        DWORD1(buf) = v250;
        WORD4(buf) = 1024;
        *(&buf + 10) = LocationEarlyReturnEnabled;
        HIWORD(buf) = 1024;
        LODWORD(v271) = v246;
        WORD2(v271) = 2048;
        *(&v271 + 6) = v23;
        HIWORD(v271) = 1024;
        LODWORD(v272) = v236;
        WORD2(v272) = 1024;
        *(&v272 + 6) = v238;
        WORD5(v272) = 1024;
        HIDWORD(v272) = v240;
        LOWORD(v273) = 1024;
        *(&v273 + 2) = v242;
        HIWORD(v273) = 1024;
        LODWORD(v274) = v244;
        WORD2(v274) = 1024;
        *(&v274 + 6) = UpdateEnabled;
        WORD5(v274) = 1024;
        HIDWORD(v274) = v232;
        LOWORD(v275) = 2048;
        *(&v275 + 2) = v31;
        WORD5(v275) = 1024;
        HIDWORD(v275) = v33;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v32;
        HIWORD(v276) = 1024;
        LODWORD(v277) = v226;
        WORD2(v277) = 1024;
        *(&v277 + 6) = v228;
        WORD5(v277) = 1024;
        HIDWORD(v277) = v230;
        LOWORD(v278) = 1024;
        *(&v278 + 2) = v37;
        HIWORD(v278) = 1024;
        LODWORD(v279) = v38;
        WORD2(v279) = 1024;
        *(&v279 + 6) = v39;
        WORD5(v279) = 1024;
        HIDWORD(v279) = v40;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v41;
        HIWORD(v280) = 1024;
        LODWORD(v281) = v42;
        WORD2(v281) = 1024;
        *(&v281 + 6) = v222;
        WORD5(v281) = 1024;
        HIDWORD(v281) = v224;
        *v282 = 2048;
        *&v282[2] = v47;
        *&v282[10] = 2048;
        *&v282[12] = v51;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#CLELS,#careport,firstLocationAvailable,%d,firstLocationEarlyReturnEnabled,%d,wasFirstLocationEarlyReturn,%d,firstLocationTimeout,%f,locationTypeOfFirstLocation,%d,,horizontalAccOfFirstLocation,%d,verticalAccOfFirstLocation,%d,integrityOfFirstLocation,%d,ageOfFirstLocation,%d,firstUpdateEnabled,%d,firstUpdateLocAvailable,%d,firstUpdateTimeout,%f,locationTypeInFirstUpdate,%d,horizontalAccOfLocInFirstUpdate,%d,verticalAccOfLocInFirstUpdate,%d,integrityOfLocInFirstUpdate,%d,ageOfLocInFirstUpdate,%d,periodicUpdatesEnabled,%d,periodicUpdatesCount,%d,validPeriodUpdatesCount,%d,horizontalAccOfLocInBestPeriodicUpdate,%d,verticalAccOfLocInBestPeriodicUpdate,%d,integrityOfLocInBestPeriodicUpdate,%d,ageOfLocInBestPeriodicUpdate,%d,locationTypeInBestPeriodicUpdate,%d,locationUpdateTimeout,%f,locationUpdateMinDelay,%f", &buf, 0xB4u);
      }

      v52 = sub_19B87DD40();
      if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v251 = qword_1ED519090;
        v249 = *(fInstance + 208);
        v247 = objc_msgSend_firstLocationEarlyReturnEnabled(*fInstance, v55, v56, v57);
        v245 = *(fInstance + 209);
        objc_msgSend_firstLocationTimeout(*fInstance, v58, v59, v60);
        v62 = v61;
        v235 = *(fInstance + 53);
        v237 = *(fInstance + 54);
        v239 = *(fInstance + 55);
        v241 = *(fInstance + 56);
        v243 = *(fInstance + 57);
        v233 = objc_msgSend_firstUpdateEnabled(*fInstance, v63, v64, v65);
        v231 = *(fInstance + 232);
        objc_msgSend_firstUpdateTimeout(*fInstance, v66, v67, v68);
        v70 = v69;
        v71 = *(fInstance + 59);
        v72 = *(fInstance + 60);
        v73 = *(fInstance + 61);
        v227 = *(fInstance + 62);
        v229 = *(fInstance + 63);
        v77 = objc_msgSend_periodicUpdatesEnabled(*fInstance, v74, v75, v76);
        v78 = *(fInstance + 64);
        v79 = *(fInstance + 65);
        v80 = *(fInstance + 66);
        v81 = *(fInstance + 67);
        v82 = *(fInstance + 68);
        v223 = *(fInstance + 69);
        v225 = *(fInstance + 70);
        objc_msgSend_locationUpdateTimeout(*fInstance, v83, v84, v85);
        v87 = v86;
        objc_msgSend_locationUpdateMinDelay(*fInstance, v88, v89, v90);
        LODWORD(v253) = 67115776;
        DWORD1(v253) = v249;
        WORD4(v253) = 1024;
        *(&v253 + 10) = v247;
        HIWORD(v253) = 1024;
        LODWORD(v254) = v245;
        WORD2(v254) = 2048;
        *(&v254 + 6) = v62;
        HIWORD(v254) = 1024;
        LODWORD(v255) = v235;
        WORD2(v255) = 1024;
        *(&v255 + 6) = v237;
        WORD5(v255) = 1024;
        HIDWORD(v255) = v239;
        LOWORD(v256) = 1024;
        *(&v256 + 2) = v241;
        HIWORD(v256) = 1024;
        LODWORD(v257) = v243;
        WORD2(v257) = 1024;
        *(&v257 + 6) = v233;
        WORD5(v257) = 1024;
        HIDWORD(v257) = v231;
        LOWORD(v258) = 2048;
        *(&v258 + 2) = v70;
        WORD5(v258) = 1024;
        HIDWORD(v258) = v71;
        LOWORD(v259) = 1024;
        *(&v259 + 2) = v72;
        HIWORD(v259) = 1024;
        LODWORD(v260) = v73;
        WORD2(v260) = 1024;
        *(&v260 + 6) = v227;
        WORD5(v260) = 1024;
        HIDWORD(v260) = v229;
        LOWORD(v261) = 1024;
        *(&v261 + 2) = v77;
        HIWORD(v261) = 1024;
        LODWORD(v262) = v78;
        WORD2(v262) = 1024;
        *(&v262 + 6) = v79;
        WORD5(v262) = 1024;
        HIDWORD(v262) = v80;
        LOWORD(v263) = 1024;
        *(&v263 + 2) = v81;
        HIWORD(v263) = 1024;
        LODWORD(v264) = v82;
        WORD2(v264) = 1024;
        *(&v264 + 6) = v223;
        WORD5(v264) = 1024;
        HIDWORD(v264) = v225;
        *v265 = 2048;
        *&v265[2] = v87;
        *&v265[10] = 2048;
        *&v265[12] = v91;
        v92 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v251, 0, "#CLELS,#careport,firstLocationAvailable,%d,firstLocationEarlyReturnEnabled,%d,wasFirstLocationEarlyReturn,%d,firstLocationTimeout,%f,locationTypeOfFirstLocation,%d,,horizontalAccOfFirstLocation,%d,verticalAccOfFirstLocation,%d,integrityOfFirstLocation,%d,ageOfFirstLocation,%d,firstUpdateEnabled,%d,firstUpdateLocAvailable,%d,firstUpdateTimeout,%f,locationTypeInFirstUpdate,%d,horizontalAccOfLocInFirstUpdate,%d,verticalAccOfLocInFirstUpdate,%d,integrityOfLocInFirstUpdate,%d,ageOfLocInFirstUpdate,%d,periodicUpdatesEnabled,%d,periodicUpdatesCount,%d,validPeriodUpdatesCount,%d,horizontalAccOfLocInBestPeriodicUpdate,%d,verticalAccOfLocInBestPeriodicUpdate,%d,integrityOfLocInBestPeriodicUpdate,%d,ageOfLocInBestPeriodicUpdate,%d,locationTypeInBestPeriodicUpdate,%d,locationUpdateTimeout,%f,locationUpdateMinDelay,%f", &v253, 180);
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::submitSipSessionStatsToCA()", "CoreLocation: %s\n", v92);
        if (v92 != &buf)
        {
          free(v92);
        }
      }

      *&v253 = @"firstLocationAvailable";
      *&buf = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v53, *(fInstance + 208), v54);
      *(&v253 + 1) = @"firstLocationEarlyReturnEnabled";
      v93 = MEMORY[0x1E696AD98];
      v97 = objc_msgSend_firstLocationEarlyReturnEnabled(*fInstance, v94, v95, v96);
      *(&buf + 1) = objc_msgSend_numberWithBool_(v93, v98, v97, v99);
      *&v254 = @"wasFirstLocationEarlyReturn";
      *&v271 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, *(fInstance + 209), v101);
      *(&v254 + 1) = @"firstLocationTimeout";
      v102 = MEMORY[0x1E696AD98];
      objc_msgSend_firstLocationTimeout(*fInstance, v103, v104, v105);
      *(&v271 + 1) = objc_msgSend_numberWithDouble_(v102, v106, v107, v108);
      *&v255 = @"locationTypeOfFirstLocation";
      *&v272 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v109, *(fInstance + 53), v110);
      *(&v255 + 1) = @"horizontalAccOfFirstLocation";
      v113 = *(fInstance + 54);
      if ((v113 & 0x80000000) != 0)
      {
        v114 = objc_msgSend_null(MEMORY[0x1E695DFB0], v111, v113, v112);
      }

      else
      {
        v114 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v111, v113, v112);
      }

      *(&v272 + 1) = v114;
      v256 = @"verticalAccOfFirstLocation";
      v120 = *(fInstance + 55);
      if ((v120 & 0x80000000) != 0)
      {
        v121 = objc_msgSend_null(MEMORY[0x1E695DFB0], v115, v120, v116);
      }

      else
      {
        v121 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v115, v120, v116);
      }

      v273 = v121;
      *&v257 = @"integrityOfFirstLocation";
      *&v274 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v122, *(fInstance + 56), v123);
      *(&v257 + 1) = @"ageOfFirstLocation";
      v126 = *(fInstance + 57);
      if ((v126 & 0x80000000) != 0)
      {
        v127 = objc_msgSend_null(MEMORY[0x1E695DFB0], v124, v126, v125);
      }

      else
      {
        v127 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v124, v126, v125);
      }

      *(&v274 + 1) = v127;
      *&v258 = @"firstUpdateEnabled";
      v131 = MEMORY[0x1E696AD98];
      v132 = objc_msgSend_firstUpdateEnabled(*fInstance, v128, v129, v130);
      *&v275 = objc_msgSend_numberWithBool_(v131, v133, v132, v134);
      *(&v258 + 1) = @"firstUpdateLocAvailable";
      *(&v275 + 1) = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v135, *(fInstance + 232), v136);
      v259 = @"firstUpdateLocTimeout";
      v137 = MEMORY[0x1E696AD98];
      objc_msgSend_firstUpdateTimeout(*fInstance, v138, v139, v140);
      v276 = objc_msgSend_numberWithDouble_(v137, v141, v142, v143);
      *&v260 = @"locationTypeInFirstUpdate";
      *&v277 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v144, *(fInstance + 59), v145);
      *(&v260 + 1) = @"horizontalAccOfLocInFirstUpdate";
      v148 = *(fInstance + 60);
      if ((v148 & 0x80000000) != 0)
      {
        v149 = objc_msgSend_null(MEMORY[0x1E695DFB0], v146, v148, v147);
      }

      else
      {
        v149 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v146, v148, v147);
      }

      *(&v277 + 1) = v149;
      v261 = @"verticalAccOfLocInFirstUpdate";
      v152 = *(fInstance + 61);
      if ((v152 & 0x80000000) != 0)
      {
        v153 = objc_msgSend_null(MEMORY[0x1E695DFB0], v150, v152, v151);
      }

      else
      {
        v153 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v150, v152, v151);
      }

      v278 = v153;
      *&v262 = @"integrityOfLocInFirstUpdate";
      *&v279 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v154, *(fInstance + 62), v155);
      *(&v262 + 1) = @"ageOfLocInFirstUpdate";
      v158 = *(fInstance + 63);
      if ((v158 & 0x80000000) != 0)
      {
        v159 = objc_msgSend_null(MEMORY[0x1E695DFB0], v156, v158, v157);
      }

      else
      {
        v159 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v156, v158, v157);
      }

      *(&v279 + 1) = v159;
      v263 = @"periodicUpdatesEnabled";
      v163 = MEMORY[0x1E696AD98];
      v164 = objc_msgSend_periodicUpdatesEnabled(*fInstance, v160, v161, v162);
      v280 = objc_msgSend_numberWithBool_(v163, v165, v164, v166);
      *&v264 = @"periodicUpdatesCount";
      *&v281 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v167, *(fInstance + 64), v168);
      *(&v264 + 1) = @"validPeriodUpdatesCount";
      *(&v281 + 1) = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v169, *(fInstance + 65), v170);
      *v265 = @"horizontalAccOfLocInBestPeriodicUpdate";
      v173 = *(fInstance + 66);
      if ((v173 & 0x80000000) != 0)
      {
        v174 = objc_msgSend_null(MEMORY[0x1E695DFB0], v171, v173, v172);
      }

      else
      {
        v174 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v171, v173, v172);
      }

      *v282 = v174;
      *&v265[8] = @"verticalAccOfLocInBestPeriodicUpdate";
      v177 = *(fInstance + 67);
      if ((v177 & 0x80000000) != 0)
      {
        v178 = objc_msgSend_null(MEMORY[0x1E695DFB0], v175, v177, v176);
      }

      else
      {
        v178 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v175, v177, v176);
      }

      *&v282[8] = v178;
      *&v265[16] = @"integrityOfLocInBestPeriodicUpdate";
      *&v282[16] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v179, *(fInstance + 68), v180);
      v266 = @"ageOfLocInBestPeriodicUpdate";
      v183 = *(fInstance + 69);
      if ((v183 & 0x80000000) != 0)
      {
        v184 = objc_msgSend_null(MEMORY[0x1E695DFB0], v181, v183, v182);
      }

      else
      {
        v184 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v181, v183, v182);
      }

      v283 = v184;
      v267 = @"locationTypeInBestPeriodicUpdate";
      v284 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v185, *(fInstance + 70), v186);
      v268 = @"locationUpdateTimeout";
      v187 = MEMORY[0x1E696AD98];
      objc_msgSend_locationUpdateTimeout(*fInstance, v188, v189, v190);
      v285 = objc_msgSend_numberWithDouble_(v187, v191, v192, v193);
      v269 = @"locationUpdateMinDelay";
      v194 = MEMORY[0x1E696AD98];
      objc_msgSend_locationUpdateMinDelay(*fInstance, v195, v196, v197);
      v286 = objc_msgSend_numberWithDouble_(v194, v198, v199, v200);
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v201, &buf, &v253, 27);
      AnalyticsSendEventLazy();
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v117 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = fInstance;
        _os_log_impl(&dword_19B873000, v117, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,submitSipSessionStatsToCA,this:%{private}p,nil fConfig,early return", &buf, 0xCu);
      }

      v118 = sub_19B87DD40();
      if ((*(v118 + 160) & 0x80000000) == 0 || (*(v118 + 164) & 0x80000000) == 0 || (*(v118 + 168) & 0x80000000) == 0 || *(v118 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        LODWORD(v253) = 134283521;
        *(&v253 + 4) = fInstance;
        v119 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,submitSipSessionStatsToCA,this:%{private}p,nil fConfig,early return", &v253, 12);
        sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::submitSipSessionStatsToCA()", "CoreLocation: %s\n", v119);
        if (v119 != &buf)
        {
          free(v119);
        }
      }
    }

    *(fInstance + 104) = 0;
    *(fInstance + 212) = xmmword_19BA8D760;
    *(fInstance + 57) = -1;
    *(fInstance + 232) = 0;
    *(fInstance + 236) = xmmword_19BA8D760;
    *(fInstance + 252) = xmmword_19BA8D770;
    *&v202 = 0xFFFFFFFFLL;
    *(&v202 + 1) = 0xFFFFFFFFLL;
    *(fInstance + 268) = v202;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v203 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = fInstance;
      _os_log_impl(&dword_19B873000, v203, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,completed", &buf, 0xCu);
    }

    v204 = sub_19B87DD40();
    selfCopy4 = selfCopy;
    if (*(v204 + 160) > 1 || *(v204 + 164) > 1 || *(v204 + 168) > 1 || *(v204 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v253) = 134283521;
      *(&v253 + 4) = fInstance;
      v205 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,completed", &v253, 12);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::stopSession()", "CoreLocation: %s\n", v205);
      if (v205 != &buf)
      {
        free(v205);
      }

      selfCopy4 = selfCopy;
    }

    v206 = selfCopy4->_fInstance;
    if (v206)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v207 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = v206;
        _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,destructor,this:%{private}p,initiated", &buf, 0xCu);
      }

      v208 = sub_19B87DD40();
      if (*(v208 + 160) > 1 || *(v208 + 164) > 1 || *(v208 + 168) > 1 || *(v208 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        LODWORD(v253) = 134283521;
        *(&v253 + 4) = v206;
        v209 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelectorInternal,destructor,this:%{private}p,initiated", &v253, 12);
        sub_19B885924("Generic", 1, 0, 2, "CLEmergencyLocationSelectorInternal::~CLEmergencyLocationSelectorInternal()", "CoreLocation: %s\n", v209);
        if (v209 != &buf)
        {
          free(v209);
        }
      }

      if (*v206)
      {

        *v206 = 0;
      }

      v210 = *(v206 + 1);
      if (v210)
      {
        dispatch_release(v210);
        *(v206 + 1) = 0;
      }

      v211 = *(v206 + 19);
      if (v211)
      {

        *(v206 + 19) = 0;
      }

      v212 = *(v206 + 20);
      if (v212)
      {

        *(v206 + 20) = 0;
      }

      v213 = *(v206 + 22);
      if (v213)
      {

        *(v206 + 22) = 0;
      }

      v214 = *(v206 + 23);
      if (v214)
      {

        *(v206 + 23) = 0;
      }

      v215 = *(v206 + 24);
      if (v215)
      {

        *(v206 + 24) = 0;
      }

      v216 = *(v206 + 25);
      if (v216)
      {

        *(v206 + 25) = 0;
      }

      v217 = *(v206 + 2);
      if (v217)
      {

        *(v206 + 2) = 0;
      }

      sub_19BA4BC2C(v206 + 24);
      MEMORY[0x19EAE98C0](v206, 0x10B2C40AA91F4E7);
    }

    selfCopy4->_fInstance = 0;
  }

  fCleeaAssertion = selfCopy4->_fCleeaAssertion;
  if (fCleeaAssertion)
  {
    objc_msgSend_invalidate(fCleeaAssertion, v5, v6, v7);

    selfCopy->_fCleeaAssertion = 0;
    selfCopy4 = selfCopy;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v219 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = selfCopy4;
    _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,completed", &buf, 0xCu);
  }

  v220 = sub_19B87DD40();
  if (*(v220 + 160) > 1 || *(v220 + 164) > 1 || *(v220 + 168) > 1 || *(v220 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v253) = 138477827;
    *(&v253 + 4) = selfCopy;
    v221 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,completed", &v253, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector stopSession]", "CoreLocation: %s\n", v221);
    if (v221 != &buf)
    {
      free(v221);
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v202 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fInstance(self, a2, manager, locations))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v134 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      selfCopy3 = self;
      _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,nil fInstance,early return", buf, 0xCu);
    }

    v135 = sub_19B87DD40();
    if (*(v135 + 160) <= 1 && *(v135 + 164) <= 1 && *(v135 + 168) <= 1 && !*(v135 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    *v156 = 138477827;
    selfCopy4 = self;
    v136 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,nil fInstance,early return", v156, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector locationManager:didUpdateLocations:]", "CoreLocation: %s\n");
    goto LABEL_52;
  }

  if (!locations || !objc_msgSend_count(locations, v6, v7, v8))
  {
    return;
  }

  Object = objc_msgSend_lastObject(locations, v9, v10, v11);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    selfCopy3 = self;
    v199 = 2049;
    v200 = objc_msgSend_fInstance(self, v14, v15, v16);
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,fInstance:%{private}p", buf, 0x16u);
  }

  v17 = sub_19B87DD40();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v24 = qword_1ED519090;
    *v156 = 138478083;
    selfCopy4 = self;
    v158 = 2049;
    v159 = objc_msgSend_fInstance(self, v21, v22, v23);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v24, 0, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,fInstance:%{private}p", v156, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector locationManager:didUpdateLocations:]", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v26 = objc_msgSend_fInstance(self, v18, v19, v20);
  if (!*v26)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v137 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      selfCopy3 = v26;
      _os_log_impl(&dword_19B873000, v137, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,updateLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v138 = sub_19B87DD40();
    if ((*(v138 + 160) & 0x80000000) != 0 && (*(v138 + 164) & 0x80000000) != 0 && (*(v138 + 168) & 0x80000000) != 0 && !*(v138 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    *v156 = 134283521;
    selfCopy4 = v26;
    v136 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,updateLocation,this:%{private}p,nil fConfig,early return", v156, 12);
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n");
LABEL_52:
    if (v136 == buf)
    {
      return;
    }

    goto LABEL_53;
  }

  if (Object)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v27 = qword_1ED519090;
    v31 = 0x1E753C000;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_feature(*v26, v28, v29, v30);
      v35 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v33, v32, v34);
      objc_msgSend_coordinate(Object, v36, v37, v38);
      v40 = v39;
      objc_msgSend_coordinate(Object, v41, v42, v43);
      v45 = v44;
      objc_msgSend_horizontalAccuracy(Object, v46, v47, v48);
      v50 = v49;
      objc_msgSend_altitude(Object, v51, v52, v53);
      v55 = v54;
      objc_msgSend_ellipsoidalAltitude(Object, v56, v57, v58);
      v60 = v59;
      objc_msgSend_verticalAccuracy(Object, v61, v62, v63);
      v65 = v64;
      v69 = objc_msgSend_timestamp(Object, v66, v67, v68);
      objc_msgSend_clientLocation(Object, v70, v71, v72);
      v73 = v201;
      v77 = objc_msgSend_integrity(Object, v74, v75, v76);
      *v156 = 138545667;
      selfCopy4 = v35;
      v31 = 0x1E753C000uLL;
      v158 = 2053;
      v159 = v40;
      v160 = 2053;
      v161 = v45;
      v162 = 2050;
      v163 = v50;
      v164 = 2053;
      v165 = v55;
      v166 = 2053;
      v167 = v60;
      v168 = 2050;
      v169 = v65;
      v170 = 2114;
      v171 = v69;
      v172 = 1026;
      v173 = v73;
      v174 = 1026;
      v175 = v77;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,updateLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", v156, 0x5Eu);
    }

    v78 = sub_19B87DD40();
    if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v82 = qword_1ED519090;
      v83 = *(v31 + 1456);
      v84 = objc_msgSend_feature(*v26, v79, v80, v81);
      v87 = objc_msgSend_featureString_(v83, v85, v84, v86);
      objc_msgSend_coordinate(Object, v88, v89, v90);
      v92 = v91;
      objc_msgSend_coordinate(Object, v93, v94, v95);
      v97 = v96;
      objc_msgSend_horizontalAccuracy(Object, v98, v99, v100);
      v102 = v101;
      objc_msgSend_altitude(Object, v103, v104, v105);
      v107 = v106;
      objc_msgSend_ellipsoidalAltitude(Object, v108, v109, v110);
      v112 = v111;
      objc_msgSend_verticalAccuracy(Object, v113, v114, v115);
      v117 = v116;
      v121 = objc_msgSend_timestamp(Object, v118, v119, v120);
      objc_msgSend_clientLocation(Object, v122, v123, v124);
      v125 = v176;
      v129 = objc_msgSend_integrity(Object, v126, v127, v128);
      v177 = 138545667;
      v178 = v87;
      v179 = 2053;
      v180 = v92;
      v181 = 2053;
      v182 = v97;
      v183 = 2050;
      v184 = v102;
      v185 = 2053;
      v186 = v107;
      v187 = 2053;
      v188 = v112;
      v189 = 2050;
      v190 = v117;
      v191 = 2114;
      v192 = v121;
      v193 = 1026;
      v194 = v125;
      v195 = 1026;
      v196 = v129;
      v130 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v82, 0, "#CLELS,%{public}@,updateLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", &v177, 94);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n", v130);
      if (v130 != buf)
      {
        free(v130);
      }
    }

    v26[19] = objc_msgSend_copy(Object, v131, v132, v133);
    sub_19BA44FC8((v26 + 3), 3);
    return;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v139 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v143 = objc_msgSend_feature(*v26, v140, v141, v142);
    v146 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v144, v143, v145);
    *buf = 138543362;
    selfCopy3 = v146;
    _os_log_impl(&dword_19B873000, v139, OS_LOG_TYPE_ERROR, "#CLELS,%{public}@,updateLocation,nil Location object", buf, 0xCu);
  }

  v147 = sub_19B87DD40();
  if ((*(v147 + 160) & 0x80000000) == 0 || (*(v147 + 164) & 0x80000000) == 0 || (*(v147 + 168) & 0x80000000) == 0 || *(v147 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v151 = qword_1ED519090;
    v152 = objc_msgSend_feature(*v26, v148, v149, v150);
    v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v153, v152, v154);
    *v156 = 138543362;
    selfCopy4 = v155;
    v136 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v151, 16, "#CLELS,%{public}@,updateLocation,nil Location object", v156, 12);
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n", v136);
    if (v136 != buf)
    {
LABEL_53:
      free(v136);
    }
  }
}

@end