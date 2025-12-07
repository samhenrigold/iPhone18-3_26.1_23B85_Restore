@interface CMFallStatsItemsIterator
- (CMFallStatsItemsIterator)initWithData:(id)data;
- (id).cxx_construct;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
@end

@implementation CMFallStatsItemsIterator

- (CMFallStatsItemsIterator)initWithData:(id)data
{
  if (!objc_msgSend_length(data, a2, data))
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CMFallStatsItemsIterator;
  v5 = [(CMFallStatsItemsIterator *)&v7 init];
  if (v5)
  {
    v5->_data = data;
    v5->_item = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMFallStatsItemsIterator;
  [(CMFallStatsItemsIterator *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v180[1] = *MEMORY[0x1E69E9840];
  state->var1 = objects;
  state->var2 = self;
  if (!self->_data)
  {
    return 0;
  }

  var0 = state->var0;
  if (!state->var0)
  {
    if (sub_19B508DD0(&self->fMslReader))
    {
      v130 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v130, v131, a2, self, @"CMFallStats.mm", 66, @"A fast enumeration is already started");
    }

    v11 = objc_msgSend_bytes(self->_data, v9, v10);
    v14 = objc_msgSend_length(self->_data, v12, v13);
    self->fMslReaderDelegate.fBuffer = v11;
    self->fMslReaderDelegate.fLength = v14;
    if (sub_19B508D38(&self->fMslReader, &self->fMslReaderDelegate))
    {
      sub_19B508B88(buf, &self->fMslReader);
      v15 = v136;
      v16 = *buf;
      *&buf[8] = 0;
      v136 = 0;
      *&self->fMslIterator.fReader = v16;
      cntrl = self->fMslIterator.fItem.__cntrl_;
      self->fMslIterator.fItem.__cntrl_ = v15;
      if (cntrl)
      {
        sub_19B41FFEC(cntrl);
        if (v136)
        {
          sub_19B41FFEC(v136);
        }
      }

      state->var0 = 1;
LABEL_12:
      if (sub_19B508DD0(&self->fMslReader))
      {
        goto LABEL_13;
      }

      return 0;
    }

    var0 = state->var0;
  }

  if (var0 == 1)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (self->fMslIterator.fReader)
  {
    ptr = self->fMslIterator.fItem.__ptr_;
    v19 = *(ptr + 139);
    if (v19)
    {
      if (v19[11])
      {
        v179 = @"meta";
        v177[0] = @"timestamp";
        v178[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v177[1] = @"crownUpDown";
        v178[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, *(*(*(ptr + 139) + 88) + 8));
        v177[2] = @"isNearFall";
        v178[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v21, *(*(*(ptr + 139) + 88) + 70));
        v177[3] = @"fallType";
        v178[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, *(*(*(ptr + 139) + 88) + 12));
        v177[4] = @"userAgeBucket";
        v178[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, *(*(*(ptr + 139) + 88) + 60));
        v177[5] = @"workoutType";
        v178[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, *(*(*(ptr + 139) + 88) + 64));
        v177[6] = @"activityLevel";
        LODWORD(v27) = *(*(*(ptr + 139) + 88) + 44);
        if ((LODWORD(v27) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          *&v27 = -1.0;
        }

        v178[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, v27);
        v177[7] = @"isADLImpact";
        v178[7] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v28, *(*(*(ptr + 139) + 88) + 68));
        v180[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v178, v177, 8);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v180, &v179, 1);
        goto LABEL_60;
      }

      if (v19[1])
      {
        v175 = @"accel";
        v173[0] = @"timestamp";
        v174[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v173[1] = @"x";
        LODWORD(v37) = *(*(*(ptr + 139) + 8) + 20);
        v174[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v38, v39, v37);
        v173[2] = @"y";
        LODWORD(v40) = *(*(*(ptr + 139) + 8) + 24);
        v174[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, v40);
        v173[3] = @"z";
        LODWORD(v43) = *(*(*(ptr + 139) + 8) + 28);
        v174[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v44, v45, v43);
        v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v174, v173, 4);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, &v176, &v175, 1);
        goto LABEL_60;
      }

      if (v19[2])
      {
        v171 = @"fastAccel";
        v169[0] = @"timestamp";
        v170[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v169[1] = @"x";
        LODWORD(v48) = *(*(*(ptr + 139) + 16) + 20);
        v170[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v49, v50, v48);
        v169[2] = @"y";
        LODWORD(v51) = *(*(*(ptr + 139) + 16) + 24);
        v170[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v52, v53, v51);
        v169[3] = @"z";
        LODWORD(v54) = *(*(*(ptr + 139) + 16) + 28);
        v170[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v55, v56, v54);
        v172 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v57, v170, v169, 4);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v58, &v172, &v171, 1);
        goto LABEL_60;
      }

      if (v19[8])
      {
        v167 = @"gyro";
        v165[0] = @"timestamp";
        v166[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v165[1] = @"x";
        LODWORD(v59) = *(*(*(ptr + 139) + 64) + 28);
        v166[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v60, v61, v59);
        v165[2] = @"y";
        LODWORD(v62) = *(*(*(ptr + 139) + 64) + 32);
        v166[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v63, v64, v62);
        v165[3] = @"z";
        LODWORD(v65) = *(*(*(ptr + 139) + 64) + 36);
        v166[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v66, v67, v65);
        v168 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v68, v166, v165, 4);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v69, &v168, &v167, 1);
        goto LABEL_60;
      }

      if (v19[9])
      {
        v163 = @"fastGyro";
        v161[0] = @"timestamp";
        v162[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v161[1] = @"x";
        LODWORD(v70) = *(*(*(ptr + 139) + 72) + 28);
        v162[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v71, v72, v70);
        v161[2] = @"y";
        LODWORD(v73) = *(*(*(ptr + 139) + 72) + 32);
        v162[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v74, v75, v73);
        v161[3] = @"z";
        LODWORD(v76) = *(*(*(ptr + 139) + 72) + 36);
        v162[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v77, v78, v76);
        v164 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v79, v162, v161, 4);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v80, &v164, &v163, 1);
        goto LABEL_60;
      }

      if (v19[4])
      {
        v159 = @"deviceMotion";
        v157[0] = @"timestamp";
        v158[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v157[1] = @"qx";
        v158[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v81, v82, *(*(*(ptr + 139) + 32) + 16));
        v157[2] = @"qy";
        v158[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v83, v84, *(*(*(ptr + 139) + 32) + 24));
        v157[3] = @"qz";
        v158[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v85, v86, *(*(*(ptr + 139) + 32) + 32));
        v157[4] = @"qw";
        v158[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v87, v88, *(*(*(ptr + 139) + 32) + 8));
        v160 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v89, v158, v157, 5);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v90, &v160, &v159, 1);
        goto LABEL_60;
      }

      if (v19[13])
      {
        v155 = @"pressure";
        v153[0] = @"timestamp";
        v154[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v153[1] = @"pressure";
        if ((*(*(*(ptr + 139) + 104) + 16) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v93 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v91, v92, -1.0);
        }

        else
        {
          v93 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v91, v92, *(*(*(ptr + 139) + 104) + 16));
        }

        v154[1] = v93;
        v156 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v94, v154, v153, 2);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v95, &v156, &v155, 1);
        goto LABEL_60;
      }

      if (v19[10])
      {
        v151 = @"heartRate";
        v149[0] = @"timestamp";
        v150[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v149[1] = @"heartRate";
        v98 = *(*(*(*(ptr + 139) + 80) + 8) + 16);
        if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v98 = -1.0;
        }

        v150[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v96, v97, v98);
        v149[2] = @"confidence";
        v101 = *(*(*(*(ptr + 139) + 80) + 8) + 8);
        if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v101 = 0.0;
        }

        v150[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v99, v100, v101);
        v152 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v102, v150, v149, 3);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v103, &v152, &v151, 1);
        goto LABEL_60;
      }

      if (v19[15])
      {
        v147 = @"wristState";
        v145[0] = @"timestamp";
        v146[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v145[1] = @"onWrist";
        v146[1] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v104, *(*(*(ptr + 139) + 120) + 24));
        v145[2] = @"onWristSensor";
        v146[2] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v105, *(*(*(ptr + 139) + 120) + 32));
        v145[3] = @"onWristConfidence";
        v146[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v106, *(*(*(ptr + 139) + 120) + 28));
        v145[4] = @"isOnCharger";
        v146[4] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v107, *(*(*(ptr + 139) + 120) + 37));
        v145[5] = @"isForcedOnWristEnabled";
        v146[5] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v108, *(*(*(ptr + 139) + 120) + 36));
        v145[6] = @"isWristDetectionEnabled";
        v146[6] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v109, *(*(*(ptr + 139) + 120) + 38));
        v148 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v110, v146, v145, 7);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v111, &v148, &v147, 1);
        goto LABEL_60;
      }

      if (v19[6])
      {
        v143 = @"state";
        v141[0] = @"timestamp";
        v142[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v141[1] = @"aopTsSensor";
        v142[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v112, *(*(*(ptr + 139) + 48) + 16));
        v141[2] = @"state";
        v142[2] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v113, *(*(*(ptr + 139) + 48) + 40));
        v141[3] = @"response";
        v142[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v114, *(*(*(ptr + 139) + 48) + 36));
        v141[4] = @"resolution";
        v142[4] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v115, *(*(*(ptr + 139) + 48) + 32));
        v144 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v116, v142, v141, 5);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v117, &v144, &v143, 1);
        goto LABEL_60;
      }

      if (v19[7])
      {
        v139 = @"impact";
        v137[0] = @"timestamp";
        v138[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, state, *(ptr + 87));
        v137[1] = @"aopTsSensor";
        v138[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v118, *(*(*(ptr + 139) + 56) + 16));
        v137[2] = @"fallType";
        v138[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v119, *(*(*(ptr + 139) + 56) + 68));
        v137[3] = @"isFall";
        v138[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v120, *(*(*(ptr + 139) + 56) + 76));
        v137[4] = @"isNearFall";
        v138[4] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v121, *(*(*(ptr + 139) + 56) + 80));
        v140 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v122, v138, v137, 5);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v123, &v140, &v139, 1);
        goto LABEL_60;
      }

      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
      }

      v124 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
      {
        v125 = *(ptr + 87);
        *buf = 134217984;
        *&buf[4] = v125;
        _os_log_impl(&dword_19B41C000, v124, OS_LOG_TYPE_FAULT, "Unknown fall snippet node [cftime=%f] - update CMFallStats", buf, 0xCu);
      }

      v126 = sub_19B420058();
      if ((*(v126 + 160) & 0x80000000) == 0 || (*(v126 + 164) & 0x80000000) == 0 || (*(v126 + 168) & 0x80000000) == 0 || *(v126 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
        }

        v127 = *(ptr + 87);
        v133 = 134217984;
        v134 = v127;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29B0, 17, "Unknown fall snippet node [cftime=%f] - update CMFallStats", COERCE_DOUBLE(&v133));
        v36 = v128;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFallStatsItemsIterator countByEnumeratingWithState:objects:count:]", "CoreLocation: %s\n", v128);
LABEL_30:
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }

    else
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
      }

      v31 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(ptr + 87);
        *buf = 134217984;
        *&buf[4] = v32;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "Unknown Msl node in a fall snippet sequence [cftime=%f] - update CMFallStats", buf, 0xCu);
      }

      v33 = sub_19B420058();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
        }

        v34 = *(ptr + 87);
        v133 = 134217984;
        v134 = v34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29B0, 2, "Unknown Msl node in a fall snippet sequence [cftime=%f] - update CMFallStats", COERCE_DOUBLE(&v133));
        v36 = v35;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFallStatsItemsIterator countByEnumeratingWithState:objects:count:]", "CoreLocation: %s\n", v35);
        goto LABEL_30;
      }
    }

LABEL_60:
    sub_19B5F7BB4(v132, &self->fMslIterator);
  }

  sub_19B508C64(&self->fMslReader);
  result = 0;
  self->fMslReaderDelegate.fBuffer = 0;
  self->fMslReaderDelegate.fLength = 0;
  return result;
}

- (id).cxx_construct
{
  sub_19B508C1C(&self->fMslReader);
  self->fMslReaderDelegate._vptr$Delegate = &unk_1F0E2B6E0;
  *&self->fMslReaderDelegate.fBuffer = 0u;
  *&self->fMslIterator.fReader = 0u;
  self->fMslIterator.fItem.__cntrl_ = 0;
  return self;
}

@end