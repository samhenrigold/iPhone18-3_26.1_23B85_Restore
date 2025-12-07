@interface CMHistoricalDataStore
- (BOOL)_setConfiguration:(id)configuration;
- (BOOL)queryConfigurationFromDaemon;
- (BOOL)tokenSanityChecks;
- (CMHistoricalDataStore)init;
- (const)tableNameFromToken;
- (id)parseCardioTypeFromSql:(sqlite3_stmt *)sql datatype:(unint64_t)datatype;
- (id)parseMobilityTypeFromSql:(sqlite3_stmt *)sql dataype:(unint64_t)dataype;
- (id)tableNameForCardioType:(unint64_t)type;
- (id)tableNameForCurrentType:(unint64_t)type;
- (id)tableNameForMobilityType:(unint64_t)type;
- (id)tableNames;
- (int)isDbOpenAndValid;
- (int)populateArray:(id)array fromSql:(sqlite3_stmt *)sql query:(id)query;
- (unint64_t)getRecordIdForTable:(const char *)table ascending:(BOOL)ascending;
- (void)_cacheTableNamesForToken:(id)token;
- (void)cacheAllRecordIds;
- (void)closeDBConnection;
- (void)dealloc;
- (void)fetchCardioSamplesFrom:(double)from to:(double)to queryToken:(id)token withHandler:(id)handler;
- (void)fetchMobilitySamplesFrom:(double)from to:(double)to queryToken:(id)token withHandler:(id)handler;
- (void)initializeWithToken:(id)token type:(unint64_t)type start:(double)start end:(double)end;
- (void)markCursorDone;
- (void)nextHistoricalFetchWithCount:(unint64_t)count withHandler:(id)handler;
- (void)resetToken;
@end

@implementation CMHistoricalDataStore

- (CMHistoricalDataStore)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CMHistoricalDataStore;
  v2 = [(CMHistoricalDataStore *)&v4 init];
  if (v2)
  {
    v2->fConfiguration = 0;
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.HistoricalDatastore", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  objc_msgSend_resetToken(self, a2, v2);
  objc_msgSend_closeDBConnection(self, v4, v5);
  dispatch_release(self->fInternalQueue);
  sub_19B42C54C(&self->fLocationdConnection, 0);

  v6.receiver = self;
  v6.super_class = CMHistoricalDataStore;
  [(CMHistoricalDataStore *)&v6 dealloc];
}

- (BOOL)queryConfigurationFromDaemon
{
  v3 = *MEMORY[0x1E69E9840];
  if (!self->fConfiguration)
  {
    sub_19B5B64E0();
  }

  return 1;
}

- (void)fetchCardioSamplesFrom:(double)from to:(double)to queryToken:(id)token withHandler:(id)handler
{
  v97 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v72 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, token);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v72, v73, a2, self, @"CMHistoricalDataStore.mm", 140, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v11 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    fromCopy3 = from;
    v93 = 2048;
    toCopy3 = to;
    v95 = 2112;
    v96 = *&token;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Fetching cardio samples from: %f to: %f. Received token: %@", buf, 0x20u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v85 = 134218498;
    fromCopy4 = from;
    v87 = 2048;
    toCopy4 = to;
    v89 = 2112;
    v90 = *&token;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Fetching cardio samples from: %f to: %f. Received token: %@", &v85, 32);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = objc_alloc_init(CMHistoricalCardioSamples);
  v16 = objc_autoreleasePoolPush();
  if ((objc_msgSend_queryConfigurationFromDaemon(self, v17, v18) & 1) == 0)
  {
    v83 = *MEMORY[0x1E696A578];
    v84 = @"Failed to get datastore configuration";
    v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, &v84, &v83, 1);
    v47 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v49, 103, v48);
LABEL_46:
    (*(handler + 2))(handler, v15, 0, 1, v47);
    goto LABEL_47;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v23 = Current;
  if (to <= from || Current < from)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v50 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      fromCopy3 = from;
      v93 = 2048;
      toCopy3 = to;
      v95 = 2048;
      v96 = v23;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", buf, 0x20u);
    }

    v51 = sub_19B420058();
    if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v85 = 134218496;
      fromCopy4 = from;
      v87 = 2048;
      toCopy4 = to;
      v89 = 2048;
      v90 = v23;
      LODWORD(v74) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", COERCE_DOUBLE(&v85), v74, v75);
      v54 = v53;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v53);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    v81 = *MEMORY[0x1E696A578];
    v82 = @"Invalid timestamps.";
    v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v52, &v82, &v81, 1);
LABEL_45:
    v47 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v56, 107, v55);
    goto LABEL_46;
  }

  isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v20, v21);
  if (!isDbOpenAndValid)
  {
    objc_msgSend_initializeWithToken_type_start_end_(self, v25, token, 0, from, to);
    if (objc_msgSend_tokenSanityChecks(self, v57, v58))
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = sub_19B5B1064;
      v76[3] = &unk_1E75329B0;
      v76[5] = self;
      v76[6] = handler;
      v76[4] = v15;
      objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v59, 0, v76);
      goto LABEL_47;
    }

    v77 = *MEMORY[0x1E696A578];
    v78 = @"Invalid token.";
    v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v59, &v78, &v77, 1);
    goto LABEL_45;
  }

  v27 = isDbOpenAndValid;
  v28 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v25, v26);
  v31 = objc_msgSend_coldDBPath(self, v29, v30);
  if (objc_msgSend_fileExistsAtPath_(v28, v32, v31))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v33 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *&v36 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v34, v35));
      *buf = 138478083;
      fromCopy3 = *&v36;
      v93 = 1026;
      LODWORD(toCopy3) = v27;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
    }

    v37 = sub_19B420058();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v41 = qword_1EAFE2AB0;
      *&v42 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v39, v40));
      v85 = 138478083;
      fromCopy4 = *&v42;
      v87 = 1026;
      LODWORD(toCopy4) = v27;
      LODWORD(v74) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v41, 16, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", &v85, *&v74);
      v44 = v43;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    v79 = *MEMORY[0x1E696A578];
    v80 = @"Unable to access datastore. Is the device locked?";
    v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, &v80, &v79, 1);
    v47 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v46, 109, v45);
    goto LABEL_46;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v60 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    *&v63 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v61, v62));
    *buf = 138478083;
    fromCopy3 = *&v63;
    v93 = 1026;
    LODWORD(toCopy3) = v27;
    _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_ERROR, "[HistoricalFetch] No file found at path %{private}@; return code %{public}d", buf, 0x12u);
  }

  v64 = sub_19B420058();
  if ((*(v64 + 160) & 0x80000000) == 0 || (*(v64 + 164) & 0x80000000) == 0 || (*(v64 + 168) & 0x80000000) == 0 || *(v64 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v67 = qword_1EAFE2AB0;
    *&v68 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v65, v66));
    v85 = 138478083;
    fromCopy4 = *&v68;
    v87 = 1026;
    LODWORD(toCopy4) = v27;
    LODWORD(v74) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v67, 16, "[HistoricalFetch] No file found at path %{private}@; return code %{public}d", &v85, *&v74);
    v70 = v69;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v69);
    if (v70 != buf)
    {
      free(v70);
    }
  }

  (*(handler + 2))(handler, v15, 0, 1, 0);
LABEL_47:
  objc_autoreleasePoolPop(v16);
}

- (void)fetchMobilitySamplesFrom:(double)from to:(double)to queryToken:(id)token withHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v55 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, token);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v55, v56, a2, self, @"CMHistoricalDataStore.mm", 249, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v11 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    fromCopy3 = from;
    v76 = 2048;
    toCopy3 = to;
    v78 = 2112;
    v79 = *&token;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Fetching mobility samples from: %f to: %f. Received token: %@", buf, 0x20u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v68 = 134218498;
    fromCopy4 = from;
    v70 = 2048;
    toCopy4 = to;
    v72 = 2112;
    v73 = *&token;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Fetching mobility samples from: %f to: %f. Received token: %@", &v68, 32);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = objc_alloc_init(CMHistoricalMobilitySamples);
  v16 = objc_autoreleasePoolPush();
  if (objc_msgSend_queryConfigurationFromDaemon(self, v17, v18))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v23 = Current;
    if (to <= from || Current < from)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v44 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        fromCopy3 = from;
        v76 = 2048;
        toCopy3 = to;
        v78 = 2048;
        v79 = v23;
        _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", buf, 0x20u);
      }

      v45 = sub_19B420058();
      if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v68 = 134218496;
        fromCopy4 = from;
        v70 = 2048;
        toCopy4 = to;
        v72 = 2048;
        v73 = v23;
        LODWORD(v57) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", COERCE_DOUBLE(&v68), v57, v58);
        v48 = v47;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      v64 = *MEMORY[0x1E696A578];
      v65 = @"Invalid timestamps.";
      v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, &v65, &v64, 1);
    }

    else
    {
      isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v20, v21);
      if (isDbOpenAndValid)
      {
        v26 = isDbOpenAndValid;
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v27 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
        {
          *&v30 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v28, v29));
          *buf = 138478083;
          fromCopy3 = *&v30;
          v76 = 1026;
          LODWORD(toCopy3) = v26;
          _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
        }

        v31 = sub_19B420058();
        if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v35 = qword_1EAFE2AB0;
          *&v36 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v33, v34));
          v68 = 138478083;
          fromCopy4 = *&v36;
          v70 = 1026;
          LODWORD(toCopy4) = v26;
          LODWORD(v57) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v35, 16, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", &v68, *&v57);
          v38 = v37;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v37);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        v62 = *MEMORY[0x1E696A578];
        v63 = @"Unable to access datastore. Is the device locked?";
        v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v63, &v62, 1);
        v41 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v40, 109, v39);
        goto LABEL_45;
      }

      objc_msgSend_initializeWithToken_type_start_end_(self, v25, token, 1, from, to);
      if (objc_msgSend_tokenSanityChecks(self, v51, v52))
      {
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = sub_19B5B1E78;
        v59[3] = &unk_1E75329B0;
        v59[5] = self;
        v59[6] = handler;
        v59[4] = v15;
        objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v53, 0, v59);
        goto LABEL_46;
      }

      v60 = *MEMORY[0x1E696A578];
      v61 = @"Invalid token.";
      v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, &v61, &v60, 1);
    }

    v41 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v50, 107, v49);
  }

  else
  {
    v66 = *MEMORY[0x1E696A578];
    v67 = @"Failed to get datastore configuration";
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, &v67, &v66, 1);
    v41 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v43, 103, v42);
  }

LABEL_45:
  (*(handler + 2))(handler, v15, 0, 1, v41);
LABEL_46:
  objc_autoreleasePoolPop(v16);
}

- (void)nextHistoricalFetchWithCount:(unint64_t)count withHandler:(id)handler
{
  v182 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v7 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
  {
    if (objc_msgSend_fetchType(self->fToken, v8, v9))
    {
      v10 = "Mobility";
    }

    else
    {
      v10 = "Cardio";
    }

    *buf = 136315394;
    *v181 = v10;
    *&v181[8] = 2048;
    *&v181[10] = count;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] Next %s fetch with count: %lu", buf, 0x16u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v16 = qword_1EAFE2AB0;
    if (objc_msgSend_fetchType(self->fToken, v14, v15))
    {
      v17 = "Mobility";
    }

    else
    {
      v17 = "Cardio";
    }

    v172 = 136315394;
    *v173 = v17;
    *&v173[8] = 2048;
    *&v173[10] = count;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 2, "[HistoricalFetch] Next %s fetch with count: %lu", &v172, 22);
    v19 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v12, v13);
  if (isDbOpenAndValid)
  {
    v23 = isDbOpenAndValid;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v24 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_msgSend_coldDBPath(self, v25, v26);
      *buf = 138478083;
      *v181 = v27;
      *&v181[8] = 1026;
      *&v181[10] = v23;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v32 = qword_1EAFE2AB0;
      v33 = objc_msgSend_coldDBPath(self, v30, v31);
      v172 = 138478083;
      *v173 = v33;
      *&v173[8] = 1026;
      *&v173[10] = v23;
      LODWORD(v160) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v32, 16, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", &v172, v160);
      v35 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v178 = *MEMORY[0x1E696A578];
    v179 = @"Unable to access datastore. Is the device locked?";
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, &v179, &v178, 1);
    v38 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v37, 109, v36);
LABEL_55:
    v93 = v38;
    v94 = *(handler + 2);
    handlerCopy4 = handler;
    v96 = 0;
LABEL_56:
    v97 = 0;
    v98 = 1;
LABEL_57:
    v94(handlerCopy4, v96, v97, v98, v93);
    return;
  }

  if (!self->fToken || !self->fDb)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v86 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v86, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid DB or token", buf, 2u);
    }

    v87 = sub_19B420058();
    if ((*(v87 + 160) & 0x80000000) == 0 || (*(v87 + 164) & 0x80000000) == 0 || (*(v87 + 168) & 0x80000000) == 0 || *(v87 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      LOWORD(v172) = 0;
      LODWORD(v160) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: invalid DB or token", &v172, v160);
      v90 = v89;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v89);
      if (v90 != buf)
      {
        free(v90);
      }
    }

    v176 = *MEMORY[0x1E696A578];
    v177 = @"Unexpected invalidation.";
    v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v88, &v177, &v176, 1);
    v38 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v92, 107, v91);
    goto LABEL_55;
  }

  v39 = objc_msgSend_tableNames(self, v21, v22);
  if (objc_msgSend_count(v39, v40, v41) <= count)
  {
    v94 = *(handler + 2);
    handlerCopy4 = handler;
    v96 = 0;
    v97 = 0;
    v98 = 1;
    goto LABEL_59;
  }

  v44 = objc_msgSend_tables(self->fToken, v42, v43);
  if (!objc_msgSend_count(v44, v45, v46))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v99 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v99, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: No tables in token", buf, 2u);
    }

    v100 = sub_19B420058();
    if ((*(v100 + 160) & 0x80000000) == 0 || (*(v100 + 164) & 0x80000000) == 0 || (*(v100 + 168) & 0x80000000) == 0 || *(v100 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      LOWORD(v172) = 0;
      LODWORD(v160) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: No tables in token", &v172, v160);
      v103 = v102;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v102);
      if (v103 != buf)
      {
        free(v103);
      }
    }

    v174 = *MEMORY[0x1E696A578];
    v175 = @"Empty token.";
    v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v101, &v175, &v174, 1);
    v38 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v105, 112, v104);
    goto LABEL_55;
  }

  v49 = objc_msgSend_tables(self->fToken, v47, v48);
  Object = objc_msgSend_firstObject(v49, v50, v51);
  v55 = objc_msgSend_tableNameFromToken(self, v53, v54);
  if (*v55)
  {
    v58 = v55;
    if (!objc_msgSend_cachedLastRecordId(Object, v56, v57) || !objc_msgSend_recordId(Object, v59, v60))
    {
      FirstRecordIdForTable = objc_msgSend_getFirstRecordIdForTable_(self, v59, v58);
      objc_msgSend_setRecordId_(Object, v62, FirstRecordIdForTable);
    }

    LastRecordIdForTable = objc_msgSend_getLastRecordIdForTable_(self, v59, v58);
    objc_msgSend_setCachedLastRecordId_(Object, v64, LastRecordIdForTable);
    v67 = objc_msgSend_recordId(Object, v65, v66);
    if (v67 >= objc_msgSend_cachedLastRecordId(Object, v68, v69))
    {
      objc_msgSend_markCursorDone(self, v70, v71);
      v164[0] = MEMORY[0x1E69E9820];
      v164[1] = 3221225472;
      v164[2] = sub_19B5B32A0;
      v164[3] = &unk_1E75329D8;
      v164[4] = handler;
      objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v107, count + 1, v164);
    }

    else
    {
      v72 = v58;
      ppStmt = 0;
      PageSize = objc_msgSend_getPageSize(self, v70, v71);
      v162 = MEMORY[0x1E696AEC0];
      v76 = objc_msgSend_recordId(Object, v74, v75);
      v79 = objc_msgSend_recordId(Object, v77, v78) + PageSize;
      if (v79 >= objc_msgSend_cachedLastRecordId(Object, v80, v81))
      {
        RecordId = objc_msgSend_cachedLastRecordId(Object, v82, v83);
      }

      else
      {
        RecordId = objc_msgSend_recordId(Object, v82, v83) + PageSize;
      }

      v108 = v72;
      v109 = objc_msgSend_stringWithFormat_(v162, v85, @"SELECT * FROM %s WHERE id > %lu AND id <= %lu ORDER BY id ASC", v72, v76, RecordId);
      fDb = self->fDb;
      v113 = objc_msgSend_UTF8String(v109, v111, v112);
      v114 = sqlite3_prepare_v2(fDb, v113, -1, &ppStmt, 0);
      if (v114)
      {
        v115 = v114;
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v116 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109635;
          *v181 = v115;
          *&v181[4] = 2113;
          *&v181[6] = v109;
          *&v181[14] = 2082;
          *&v181[16] = v108;
          _os_log_impl(&dword_19B41C000, v116, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error %d preparing SQLite statement: %{private}@, table: %{public}s", buf, 0x1Cu);
        }

        v117 = sub_19B420058();
        if ((*(v117 + 160) & 0x80000000) == 0 || (*(v117 + 164) & 0x80000000) == 0 || (*(v117 + 168) & 0x80000000) == 0 || *(v117 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v172 = 67109635;
          *v173 = v115;
          *&v173[4] = 2113;
          *&v173[6] = v109;
          *&v173[14] = 2082;
          *&v173[16] = v108;
          LODWORD(v161) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error %d preparing SQLite statement: %{private}@, table: %{public}s", &v172, v161);
          v120 = v119;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v119);
          if (v120 != buf)
          {
            free(v120);
          }
        }

        v170 = *MEMORY[0x1E696A578];
        v171 = @"Unknown database error.";
        v121 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v118, &v171, &v170, 1);
        v38 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v122, 103, v121);
        goto LABEL_55;
      }

      v123 = objc_opt_new();
      v125 = objc_msgSend_populateArray_fromSql_query_(self, v124, v123, ppStmt, v109);
      if (v125 == 101)
      {
        v126 = sqlite3_finalize(ppStmt);
        if (v126)
        {
          v129 = v126;
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v130 = qword_1EAFE2AB0;
          if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240450;
            *v181 = v129;
            *&v181[4] = 2082;
            *&v181[6] = v108;
            _os_log_impl(&dword_19B41C000, v130, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error finalizing SQLite statement: %{public}d, table: %{public}s", buf, 0x12u);
          }

          v131 = sub_19B420058();
          if ((*(v131 + 160) & 0x80000000) == 0 || (*(v131 + 164) & 0x80000000) == 0 || (*(v131 + 168) & 0x80000000) == 0 || *(v131 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2AA8 != -1)
            {
              dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
            }

            v172 = 67240450;
            *v173 = v129;
            *&v173[4] = 2082;
            *&v173[6] = v108;
            LODWORD(v161) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error finalizing SQLite statement: %{public}d, table: %{public}s", &v172, v161);
            v134 = v133;
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v133);
            if (v134 != buf)
            {
              free(v134);
            }
          }

          v166 = *MEMORY[0x1E696A578];
          v167 = @"Unknown database error.";
          v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v132, &v167, &v166, 1);
          v93 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v136, 103, v135);
          v94 = *(handler + 2);
          handlerCopy4 = handler;
          v96 = v123;
          goto LABEL_56;
        }

        v148 = objc_msgSend_tables(self->fToken, v127, v128);
        objc_msgSend_setObject_atIndexedSubscript_(v148, v149, Object, 0);
        v152 = objc_msgSend_datatype(Object, v150, v151);
        v155 = objc_msgSend_recordId(Object, v153, v154);
        if (v155 >= objc_msgSend_cachedLastRecordId(Object, v156, v157))
        {
          objc_msgSend_markCursorDone(self, v158, v159);
        }

        v94 = *(handler + 2);
        handlerCopy4 = handler;
        v96 = v123;
        v97 = v152;
        v98 = 0;
LABEL_59:
        v93 = 0;
        goto LABEL_57;
      }

      v137 = v125;
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v138 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240450;
        *v181 = v137;
        *&v181[4] = 2082;
        *&v181[6] = v108;
        _os_log_impl(&dword_19B41C000, v138, OS_LOG_TYPE_ERROR, "[HistoricalFetch] SQLite error: %{public}d, table: %{public}s", buf, 0x12u);
      }

      v139 = sub_19B420058();
      if ((*(v139 + 160) & 0x80000000) == 0 || (*(v139 + 164) & 0x80000000) == 0 || (*(v139 + 168) & 0x80000000) == 0 || *(v139 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v172 = 67240450;
        *v173 = v137;
        *&v173[4] = 2082;
        *&v173[6] = v108;
        LODWORD(v161) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] SQLite error: %{public}d, table: %{public}s", &v172, v161);
        v142 = v141;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v141);
        if (v142 != buf)
        {
          free(v142);
        }
      }

      v168 = *MEMORY[0x1E696A578];
      v169 = @"Unknown database error.";
      v143 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v140, &v169, &v168, 1);
      v145 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v144, 103, v143);
      objc_msgSend_removeAllObjects(v123, v146, v147);
      (*(handler + 2))(handler, v123, 0, 1, v145);
    }
  }

  else
  {
    objc_msgSend_markCursorDone(self, v56, v57);
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = sub_19B5B3290;
    v165[3] = &unk_1E75329D8;
    v165[4] = handler;
    objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v106, count + 1, v165);
  }
}

- (int)populateArray:(id)array fromSql:(sqlite3_stmt *)sql query:(id)query
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_tables(self->fToken, a2, array);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  v14 = objc_msgSend_recordId(v11, v12, v13);
  Current = CFAbsoluteTimeGetCurrent();
  v18 = objc_msgSend_tables(self->fToken, v16, v17);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0);
  v23 = sqlite3_step(sql);
  if (v23 != 100)
  {
    goto LABEL_11;
  }

  do
  {
    v24 = sqlite3_column_int(sql, 0);
    Type = objc_msgSend_fetchType(self->fToken, v25, v26);
    if (Type == 1)
    {
      v34 = objc_msgSend_datatype(v20, v28, v29);
      v32 = objc_msgSend_parseMobilityTypeFromSql_dataype_(self, v35, sql, v34);
      goto LABEL_6;
    }

    if (!Type)
    {
      v30 = objc_msgSend_datatype(v20, v28, v29);
      v32 = objc_msgSend_parseCardioTypeFromSql_datatype_(self, v31, sql, v30);
LABEL_6:
      objc_msgSend_addObject_(array, v33, v32);
      goto LABEL_8;
    }

    objc_msgSend_addObject_(array, v28, 0);
LABEL_8:
    v36 = sqlite3_step(sql);
  }

  while (v36 == 100);
  v23 = v36;
  if (v24)
  {
    objc_msgSend_setRecordId_(v20, v21, v24);
    goto LABEL_12;
  }

LABEL_11:
  v37 = objc_msgSend_recordId(v20, v21, v22);
  objc_msgSend_setRecordId_(v20, v38, v37);
LABEL_12:
  if (v23 == 101)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v39 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_INFO, "[HistoricalFetch] Constructed results.", buf, 2u);
    }

    v40 = sub_19B420058();
    if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    LOWORD(v75[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 1, "[HistoricalFetch] Constructed results.", v75, 2);
    v42 = v41;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore populateArray:fromSql:query:]", "CoreLocation: %s\n", v41);
    if (v42 == buf)
    {
      goto LABEL_36;
    }

LABEL_35:
    free(v42);
    goto LABEL_36;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v43 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    v46 = objc_msgSend_datatype(v20, v44, v45);
    *buf = 67240450;
    v79 = v23;
    v80 = 2114;
    v81 = objc_msgSend_tableNameForCurrentType_(self, v47, v46);
    _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error constructing results. SQL return code: %{public}d, table:%{public}@", buf, 0x12u);
  }

  v48 = sub_19B420058();
  if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v51 = qword_1EAFE2AB0;
    v52 = objc_msgSend_datatype(v20, v49, v50);
    v75[0] = 67240450;
    v75[1] = v23;
    v76 = 2114;
    v77 = objc_msgSend_tableNameForCurrentType_(self, v53, v52);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v51, 16, "[HistoricalFetch] Error constructing results. SQL return code: %{public}d, table:%{public}@", v75, 18);
    v42 = v54;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore populateArray:fromSql:query:]", "CoreLocation: %s\n", v54);
    if (v42 != buf)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v55 = CFAbsoluteTimeGetCurrent();
  v58 = objc_msgSend_tables(self->fToken, v56, v57);
  v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 0);
  v63 = objc_msgSend_recordId(v60, v61, v62);
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v64 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_fetchType(self->fToken, v65, v66))
    {
      v69 = "Mobility";
    }

    else
    {
      v69 = "Cardio";
    }

    v70 = objc_msgSend_count(array, v67, v68);
    v73 = objc_msgSend_tableNameFromToken(self, v71, v72);
    *buf = 68291586;
    v79 = 0;
    v80 = 2082;
    v81 = "";
    v82 = 2082;
    v83 = v69;
    v84 = 2050;
    v85 = v55 - Current;
    v86 = 1026;
    v87 = v70;
    v88 = 2050;
    v89 = Current;
    v90 = 2050;
    v91 = v55;
    v92 = 1026;
    v93 = v23;
    v94 = 2082;
    v95 = v73;
    v96 = 2050;
    v97 = v14;
    v98 = 2050;
    v99 = v63;
    v100 = 2114;
    queryCopy = query;
    _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:[HistoricalFetch] Query complete, type:%{public, location:escape_only}s, duration:%{public}f, numSamples:%{public}u, start:%{public}f, end:%{public}f, returnCode:%{public}d, table:%{public, location:escape_only}s, recordId (pre-query):%{public}lu, recordId (post-query):%{public}lu, query:%{public, location:escape_only}@}", buf, 0x6Eu);
  }

  return v23;
}

- (id)parseCardioTypeFromSql:(sqlite3_stmt *)sql datatype:(unint64_t)datatype
{
  result = 0;
  v31 = *MEMORY[0x1E69E9840];
  if (datatype <= 3)
  {
    if (datatype <= 1)
    {
      if (!datatype)
      {
        objc_msgSend_inputFromPreparedStatement_(CMPedestrianGrade, a2, sql);
        v5 = [CMPedestrianGrade alloc];
        v7 = v19;
        *&v8 = v20;
        return objc_msgSend_initWithSample_(v5, v6, &v7);
      }

      if (datatype != 1)
      {
        return result;
      }

      objc_msgSend_inputFromPreparedStatement_(CMRecoveryHeartRate, a2, sql);
      v5 = [CMRecoveryHeartRate alloc];
      goto LABEL_12;
    }

    if (datatype == 2)
    {
      objc_msgSend_inputFromPreparedStatement_(CMWorkoutPhysicalEffort, a2, sql);
      v5 = [CMWorkoutPhysicalEffort alloc];
      v7 = v19;
      v8 = v20;
      v9 = v21;
      *&v10 = v22;
      return objc_msgSend_initWithSample_(v5, v6, &v7);
    }

    objc_msgSend_inputFromPreparedStatement_(CMRecoverySession, a2, sql);
    v5 = [CMRecoverySession alloc];
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
LABEL_11:
    v9 = v21;
    v10 = v22;
    v11 = v23;
    v12 = v24;
LABEL_12:
    v7 = v19;
    v8 = v20;
    return objc_msgSend_initWithSample_(v5, v6, &v7);
  }

  if (datatype <= 5)
  {
    if (datatype == 4)
    {
      objc_msgSend_inputFromPreparedStatement_(CMVO2MaxInputs, a2, sql);
      v5 = [CMVO2MaxInputs alloc];
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;
      return objc_msgSend_initWithSample_(v5, v6, &v7);
    }

    objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessResults, a2, sql);
    v5 = [CMCardioFitnessResults alloc];
    v13 = v25;
    v14 = v26;
    v15 = v27;
    *&v16 = v28;
    goto LABEL_11;
  }

  if (datatype == 6)
  {
    objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessInputsSessionMetrics, a2, sql);
    v5 = [CMCardioFitnessInputsSessionMetrics alloc];
    v9 = v21;
    v10 = v22;
    v11 = v23;
    v7 = v19;
    v8 = v20;
  }

  else
  {
    if (datatype != 7)
    {
      return result;
    }

    objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessSummary, a2, sql);
    v5 = [CMCardioFitnessSummary alloc];
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
  }

  return objc_msgSend_initWithSample_(v5, v6, &v7);
}

- (id)parseMobilityTypeFromSql:(sqlite3_stmt *)sql dataype:(unint64_t)dataype
{
  result = 0;
  if (dataype <= 1)
  {
    if (dataype)
    {
      if (dataype != 1)
      {
        return result;
      }

      objc_msgSend_inputFromPreparedStatement_(CMPredictedDistanceBout, a2, sql);
      v9 = [CMPredictedDistanceBout alloc];
      v23 = v37;
      v24 = v38;
      v25 = v39;
      *&v26 = v40;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v8 = objc_msgSend_initWithSample_(v9, v10, &v19);
    }

    else
    {
      objc_msgSend_inputFromPreparedStatement_(CMWalkingBoutMobilityMetrics, a2, sql);
      v17 = [CMWalkingBoutMobilityMetrics alloc];
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v19 = v33;
      v20 = v34;
      v8 = objc_msgSend_initWithSample_(v17, v18, &v19);
    }
  }

  else
  {
    switch(dataype)
    {
      case 2uLL:
        objc_msgSend_inputFromPreparedStatement_(CMSmoothGaitMetrics, a2, sql);
        v11 = [CMSmoothGaitMetrics alloc];
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v8 = objc_msgSend_initWithSample_(v11, v12, &v19);
        break;
      case 3uLL:
        v13 = sqlite3_column_int(sql, 0);
        objc_msgSend_inputFromPreparedStatement_(CMPredictedDistanceBoutMobilityCalibration, v14, sql);
        v15 = [CMPredictedDistanceBoutMobilityCalibration alloc];
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v8 = objc_msgSend_initWithSample_recordId_(v15, v16, &v19, v13);
        break;
      case 4uLL:
        *&v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        objc_msgSend_inputFromPreparedStatement_(CMStrideCalibrationEntry, a2, sql);
        v6 = [CMStrideCalibrationEntry alloc];
        v23 = v37;
        v24 = v38;
        v25 = v39;
        *&v26 = v40;
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v22 = v36;
        v8 = objc_msgSend_initWithCLStrideCalEntry_(v6, v7, &v19);
        break;
      default:
        return result;
    }
  }

  return v8;
}

- (int)isDbOpenAndValid
{
  v30 = *MEMORY[0x1E69E9840];
  p_fDb = &self->fDb;
  if (self->fDb)
  {
    return 0;
  }

  objc_msgSend_closeDBConnection(self, a2, v2);
  v8 = objc_msgSend_coldDBPath(self, v6, v7);
  v11 = objc_msgSend_UTF8String(v8, v9, v10);
  v4 = sqlite3_open_v2(v11, p_fDb, 131073, 0);
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v12 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v27 = objc_msgSend_coldDBPath(self, v13, v14);
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Opened DB at %{private}@ with rc %d", buf, 0x12u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v18 = qword_1EAFE2AB0;
    v22 = 138478083;
    v23 = objc_msgSend_coldDBPath(self, v16, v17);
    v24 = 1024;
    v25 = v4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 0, "[HistoricalFetch] Opened DB at %{private}@ with rc %d", &v22, 18);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore isDbOpenAndValid]", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return v4;
}

- (BOOL)tokenSanityChecks
{
  v54 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_version(self->fToken, a2, v2) != 2)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v17 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_version(self->fToken, v18, v19);
      *buf = 134217984;
      v51 = v20;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: unexpected token version %lu", buf, 0xCu);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v24 = qword_1EAFE2AB0;
    objc_msgSend_version(self->fToken, v22, v23);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 16, "[HistoricalFetch] Error: unexpected token version %lu", v49);
    goto LABEL_25;
  }

  objc_msgSend_startTime(self->fToken, v4, v5);
  v7 = v6;
  objc_msgSend_endTime(self->fToken, v8, v9);
  if (v7 >= v12)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v26 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_startTime(self->fToken, v27, v28);
      v30 = v29;
      objc_msgSend_endTime(self->fToken, v31, v32);
      *buf = 134349312;
      v51 = v30;
      v52 = 2050;
      v53 = v33;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid token timestamps, start:%{public}f end:%{public}f", buf, 0x16u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v37 = qword_1EAFE2AB0;
    objc_msgSend_startTime(self->fToken, v35, v36);
    v39 = v38;
    objc_msgSend_endTime(self->fToken, v40, v41);
    *v49 = 134349312;
    *&v49[4] = v39;
    *&v49[12] = 2050;
    *&v49[14] = v42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v37, 16, "[HistoricalFetch] Error: invalid token timestamps, start:%{public}f end:%{public}f", v49, 22, *v49, *&v49[8]);
LABEL_25:
    v43 = v25;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore tokenSanityChecks]", "CoreLocation: %s\n", v25);
    if (v43 == buf)
    {
      return 0;
    }

LABEL_26:
    free(v43);
    return 0;
  }

  v13 = objc_msgSend_tables(self->fToken, v10, v11);
  if (objc_msgSend_count(v13, v14, v15))
  {
    return 1;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v44 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    fToken = self->fToken;
    *buf = 138412290;
    v51 = fToken;
    _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: no mobility tables found in token: %@", buf, 0xCu);
  }

  v46 = sub_19B420058();
  if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v47 = self->fToken;
    *v49 = 138412290;
    *&v49[4] = v47;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: no mobility tables found in token: %@", v49, 12);
    v43 = v48;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore tokenSanityChecks]", "CoreLocation: %s\n", v48);
    if (v43 != buf)
    {
      goto LABEL_26;
    }
  }

  return 0;
}

- (void)initializeWithToken:(id)token type:(unint64_t)type start:(double)start end:(double)end
{
  v78 = *MEMORY[0x1E69E9840];
  if (!token)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v30 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      startCopy = *&type;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Generating new token for type=%lu", buf, 0xCu);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v62 = 134217984;
      startCopy2 = *&type;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Generating new token for type=%lu", &v62);
      v35 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore initializeWithToken:type:start:end:]", "CoreLocation: %s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    if (type)
    {
      if (type != 1)
      {
        fToken = self->fToken;
        goto LABEL_44;
      }

      v36 = objc_msgSend_mobilityToken(CMMobilityToken, v32, v33);
    }

    else
    {
      v36 = objc_msgSend_cardioToken(CMCardioToken, v32, v33);
    }

    fToken = v36;
    self->fToken = fToken;
LABEL_44:
    objc_msgSend_setStartTime_(fToken, v32, v33, start);
    objc_msgSend_setEndTime_(self->fToken, v57, v58, end);
    objc_msgSend_cacheAllRecordIds(self, v59, v60);
    return;
  }

  v10 = self->fToken;
  if (v10)
  {
    objc_msgSend_startTime(v10, a2, token, type);
    objc_msgSend_setStartTime_(token, v11, v12);
    objc_msgSend_endTime(self->fToken, v13, v14);
    objc_msgSend_setEndTime_(token, v15, v16);

    self->fToken = 0;
  }

  tokenCopy = token;
  self->fToken = tokenCopy;
  v20 = fabs(end) == INFINITY;
  if (fabs(start) != INFINITY || !v20)
  {
    objc_msgSend_startTime(tokenCopy, v18, v19);
    if (v24 > start)
    {
      objc_msgSend_startTime(self->fToken, v22, v23);
      start = v25;
    }

    objc_msgSend_setStartTime_(self->fToken, v22, v23, start);
    v28 = self->fToken;

    objc_msgSend_setEndTime_(v28, v26, v27, end);
  }

  else
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v37 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_startTime(self->fToken, v38, v39);
      v41 = v40;
      objc_msgSend_endTime(self->fToken, v42, v43);
      *buf = 134218752;
      startCopy = start;
      v72 = 2048;
      endCopy = end;
      v74 = 2048;
      v75 = v41;
      v76 = 2048;
      v77 = v44;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_INFO, "[HistoricalFetch] #Warning: ignoring [%f,%f], persisting previous parameters (start=%f, end=%f)", buf, 0x2Au);
    }

    v45 = sub_19B420058();
    if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v48 = qword_1EAFE2AB0;
      objc_msgSend_startTime(self->fToken, v46, v47);
      v50 = v49;
      objc_msgSend_endTime(self->fToken, v51, v52);
      v62 = 134218752;
      startCopy2 = start;
      v64 = 2048;
      endCopy2 = end;
      v66 = 2048;
      v67 = v50;
      v68 = 2048;
      v69 = v53;
      LODWORD(v61) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v48, 1, "[HistoricalFetch] #Warning: ignoring [%f,%f], persisting previous parameters (start=%f, end=%f)", COERCE_DOUBLE(&v62), v61);
      v55 = v54;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore initializeWithToken:type:start:end:]", "CoreLocation: %s\n", v54);
      if (v55 != buf)
      {
        free(v55);
      }
    }
  }
}

- (unint64_t)getRecordIdForTable:(const char *)table ascending:(BOOL)ascending
{
  v71 = *MEMORY[0x1E69E9840];
  if (!self->fDb)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v30 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: DB invalid", buf, 2u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    LOWORD(v63) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error: DB invalid", &v63, 2);
    goto LABEL_41;
  }

  ascendingCopy = ascending;
  ppStmt = 0;
  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_startTime(self->fToken, v8, v9);
  v12 = Current + -63072000.0;
  if (v13 > Current + -63072000.0)
  {
    objc_msgSend_startTime(self->fToken, v10, v11);
    v12 = v14;
  }

  objc_msgSend_endTime(self->fToken, v10, v11);
  if (v17 < Current)
  {
    objc_msgSend_endTime(self->fToken, v15, v16);
    Current = v18;
  }

  if (ascendingCopy)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"SELECT id FROM %s WHERE startTime >= %f AND startTime <= %f ORDER BY id %s LIMIT 1", table, *&v12, *&Current, "ASC");
  }

  else
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"SELECT id FROM %s WHERE startTime >= %f AND startTime <= %f ORDER BY id %s LIMIT 1", table, *&v12, *&Current, "DESC");
  }

  v22 = v19;
  fDb = self->fDb;
  v24 = objc_msgSend_UTF8String(v19, v20, v21);
  v25 = sqlite3_prepare_v2(fDb, v24, -1, &ppStmt, 0);
  if (v25)
  {
    v26 = v25;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v27 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      tableCopy9 = table;
      v69 = 1024;
      *v70 = v26;
      *&v70[4] = 2112;
      *&v70[6] = v22;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s prepare statement (code=%d): %@", buf, 0x1Cu);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v63 = 136381187;
    tableCopy10 = table;
    v65 = 1024;
    *v66 = v26;
    *&v66[4] = 2112;
    *&v66[6] = v22;
    LODWORD(v61) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error on table %{private}s prepare statement (code=%d): %@", &v63, v61);
LABEL_41:
    v36 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v29);
    if (v36 != buf)
    {
      free(v36);
    }

    return 0;
  }

  v32 = sqlite3_step(ppStmt);
  if ((v32 - 102) <= 0xFFFFFFFD)
  {
    v33 = v32;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v34 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      tableCopy9 = table;
      v69 = 1024;
      *v70 = v33;
      *&v70[4] = 2112;
      *&v70[6] = v22;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s step statement (code=%d): %@", buf, 0x1Cu);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v63 = 136381187;
    tableCopy10 = table;
    v65 = 1024;
    *v66 = v33;
    *&v66[4] = 2112;
    *&v66[6] = v22;
    LODWORD(v61) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error on table %{private}s step statement (code=%d): %@", &v63, v61);
    goto LABEL_41;
  }

  v39 = sqlite3_column_int(ppStmt, 0);
  if (v39 < 1)
  {
    if (v39)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v40 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        tableCopy9 = table;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[HistoricalFetch] %s: Invalid rowId", buf, 0xCu);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v63 = 136315138;
      tableCopy10 = table;
      v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] %s: Invalid rowId", &v63);
      v44 = v43;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v42);
    }

    else
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v45 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        tableCopy9 = table;
        _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] %s: No records found", buf, 0xCu);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) <= 1 && *(v46 + 164) <= 1 && *(v46 + 168) <= 1 && !*(v46 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v63 = 136315138;
      tableCopy10 = table;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 2, "[HistoricalFetch] %s: No records found", &v63);
      v44 = v48;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v47);
    }

    if (v44 != buf)
    {
      free(v44);
    }

LABEL_75:
    v37 = 0;
    goto LABEL_76;
  }

  v37 = (v39 - ascendingCopy);
LABEL_76:
  v49 = sqlite3_finalize(ppStmt);
  if (v49)
  {
    v50 = v49;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v51 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      tableCopy9 = table;
      v69 = 1024;
      *v70 = v50;
      _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s finalize (code=%d)", buf, 0x12u);
    }

    v52 = sub_19B420058();
    if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v63 = 136380931;
      tableCopy10 = table;
      v65 = 1024;
      *v66 = v50;
      LODWORD(v61) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error on table %{private}s finalize (code=%d)", &v63, v61);
      v54 = v53;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v53);
      if (v54 != buf)
      {
        free(v54);
      }
    }
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v55 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
  {
    if (ascendingCopy)
    {
      v56 = "first";
    }

    else
    {
      v56 = "last";
    }

    *buf = 136315651;
    tableCopy9 = v56;
    v69 = 2048;
    *v70 = v37;
    *&v70[8] = 2081;
    *&v70[10] = table;
    _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] Caching %s record id %lu for table %{private}s", buf, 0x20u);
  }

  v57 = sub_19B420058();
  if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    if (ascendingCopy)
    {
      v58 = "first";
    }

    else
    {
      v58 = "last";
    }

    v63 = 136315651;
    tableCopy10 = v58;
    v65 = 2048;
    *v66 = v37;
    *&v66[8] = 2081;
    *&v66[10] = table;
    LODWORD(v61) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 2, "[HistoricalFetch] Caching %s record id %lu for table %{private}s", &v63, v61);
    v60 = v59;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v59);
    if (v60 != buf)
    {
      free(v60);
    }
  }

  return v37;
}

- (void)markCursorDone
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tables(self->fToken, a2, v2);
  Object = objc_msgSend_firstObject(v4, v5, v6);
  objc_msgSend_addObject_(v4, v8, Object);
  objc_msgSend_removeObjectAtIndex_(v4, v9, 0);
  v12 = objc_msgSend_tableNameFromToken(self, v10, v11);
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v13 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    v20 = v12;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Bumped token, next table:%{private}s", buf, 0xCu);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v17 = 136380675;
    v18 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Bumped token, next table:%{private}s", &v17, 12);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore markCursorDone]", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }
}

- (void)cacheAllRecordIds
{
  v54 = *MEMORY[0x1E69E9840];
  objc_msgSend_startTime(self->fToken, a2, v2);
  v5 = v4;
  objc_msgSend_endTime(self->fToken, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_tables(self->fToken, v10, v11);
  if (objc_msgSend_count(v12, v13, v14))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_tables(self->fToken, v15, v16);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v17);
      v23 = objc_msgSend_datatype(v20, v21, v22);
      v25 = objc_msgSend_tableNameForCurrentType_(self, v24, v23);
      objc_msgSend_setTableName_(v20, v26, v25);
      v29 = objc_msgSend_tableName(v20, v27, v28);
      v32 = objc_msgSend_UTF8String(v29, v30, v31);
      LastRecordIdForTable = objc_msgSend_getLastRecordIdForTable_(self, v33, v32);
      objc_msgSend_setCachedLastRecordId_(v20, v35, LastRecordIdForTable);
      ++v17;
      v38 = objc_msgSend_tables(self->fToken, v36, v37);
    }

    while (objc_msgSend_count(v38, v39, v40) > v17);
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v41 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v51 = v5;
    v52 = 2048;
    v53 = v9;
    _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_INFO, "[HistoricalFetch] Cached all record ids from %f to %f", buf, 0x16u);
  }

  v42 = sub_19B420058();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v46 = 134218240;
    v47 = v5;
    v48 = 2048;
    v49 = v9;
    LODWORD(v45) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 1, "[HistoricalFetch] Cached all record ids from %f to %f", COERCE_DOUBLE(&v46), v45);
    v44 = v43;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore cacheAllRecordIds]", "CoreLocation: %s\n", v43);
    if (v44 != buf)
    {
      free(v44);
    }
  }
}

- (const)tableNameFromToken
{
  Type = objc_msgSend_fetchType(self->fToken, a2, v2);
  v7 = objc_msgSend_tables(self->fToken, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v13 = objc_msgSend_datatype(v9, v10, v11);
  if (Type)
  {
    v14 = objc_msgSend_tableNameForMobilityType_(self, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_tableNameForCardioType_(self, v12, v13);
  }

  return objc_msgSend_UTF8String(v14, v15, v16);
}

- (void)resetToken
{
  fToken = self->fToken;
  if (fToken)
  {
  }

  self->fToken = 0;
}

- (void)closeDBConnection
{
  v13 = *MEMORY[0x1E69E9840];
  fDb = self->fDb;
  if (fDb)
  {
    v4 = sqlite3_close_v2(fDb);
    if (v4)
    {
      v5 = v4;
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v6 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v5;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error closing DB connection, return code: %d", buf, 8u);
      }

      v7 = sub_19B420058();
      if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v10[0] = 67109120;
        v10[1] = v5;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Error closing DB connection, return code: %d", v10);
        v9 = v8;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore closeDBConnection]", "CoreLocation: %s\n", v8);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  self->fDb = 0;
}

- (id)tableNames
{
  result = objc_msgSend_fetchType(self->fToken, a2, v2);
  if (result == 1)
  {

    return objc_msgSend_mobilityTableNames(self, v5, v6);
  }

  else if (!result)
  {

    return objc_msgSend_cardioTableNames(self, v5, v6);
  }

  return result;
}

- (id)tableNameForMobilityType:(unint64_t)type
{
  typeCopy = type;
  v4 = objc_msgSend_mobilityTableNames(self, a2, type);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, typeCopy);
}

- (id)tableNameForCardioType:(unint64_t)type
{
  typeCopy = type;
  v4 = objc_msgSend_cardioTableNames(self, a2, type);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, typeCopy);
}

- (id)tableNameForCurrentType:(unint64_t)type
{
  typeCopy = type;
  v4 = objc_msgSend_tableNames(self, a2, type);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, typeCopy);
}

- (BOOL)_setConfiguration:(id)configuration
{
  v57 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v30 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "Failed to get reply dictionary", buf, 2u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    LOWORD(v49) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "Failed to get reply dictionary", &v49, 2, v49, v50);
    goto LABEL_40;
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(configuration, v5, @"CMColdStorageDatabasePath");
  v8 = objc_msgSend_objectForKeyedSubscript_(configuration, v7, @"CMColdStorageMobilityTableNames");
  v10 = objc_msgSend_objectForKeyedSubscript_(configuration, v9, @"CMColdStorageCardioTableNames");
  if (!v6 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v32 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *v52 = configuration;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Malformed datastore configuration: %@. Ignoring and trying again.", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    LODWORD(v49) = 138412290;
    *(&v49 + 4) = configuration;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 17, "Malformed datastore configuration: %@. Ignoring and trying again.", &v49, 12, v49, v50);
    goto LABEL_40;
  }

  if (objc_msgSend_count(v11, v12, v13) < 8 || objc_msgSend_count(v8, v14, v15) <= 4)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v18 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240960;
      *v52 = objc_msgSend_count(v11, v19, v20);
      *&v52[4] = 1026;
      *&v52[6] = 8;
      v53 = 1026;
      v54 = objc_msgSend_count(v8, v21, v22);
      v55 = 1026;
      v56 = 5;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Invalid datastore configuration: Less than the expected number of tables. Cardio:%{public}d/%{public}d, Mobility=%{public}d/%{public}d", buf, 0x1Au);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v26 = qword_1EAFE2AB0;
    LODWORD(v49) = 67240960;
    DWORD1(v49) = objc_msgSend_count(v11, v24, v25);
    WORD4(v49) = 1026;
    *(&v49 + 10) = 8;
    HIWORD(v49) = 1026;
    LODWORD(v50) = objc_msgSend_count(v8, v27, v28);
    WORD2(v50) = 1026;
    *(&v50 + 6) = 5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v26, 17, "Invalid datastore configuration: Less than the expected number of tables. Cardio:%{public}d/%{public}d, Mobility=%{public}d/%{public}d", &v49, 26, v49, v50);
LABEL_40:
    v34 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v29);
    if (v34 != buf)
    {
      free(v34);
    }

    return 0;
  }

  if (objc_msgSend_count(v11, v16, v17) > 8 || objc_msgSend_count(v8, v36, v37) >= 6)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v38 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEFAULT, "#Warning: More tables available in configuration than are being collected.", buf, 2u);
    }

    v39 = sub_19B420058();
    if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      LOWORD(v49) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "#Warning: More tables available in configuration than are being collected.", &v49, 2);
      v41 = v40;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  self->fConfiguration = configuration;
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v42 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    fConfiguration = self->fConfiguration;
    *buf = 138412290;
    *v52 = fConfiguration;
    _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEFAULT, "Received datastore configuration: %@", buf, 0xCu);
  }

  v44 = sub_19B420058();
  if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v45 = self->fConfiguration;
    LODWORD(v49) = 138412290;
    *(&v49 + 4) = v45;
    LODWORD(v48) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "Received datastore configuration: %@", &v49, v48);
    v47 = v46;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v46);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  return 1;
}

- (void)_cacheTableNamesForToken:(id)token
{
  v5 = objc_msgSend_tables(token, a2, token);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_tables(token, v8, v9);
      v13 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v10);
      Type = objc_msgSend_fetchType(token, v14, v15);
      if (Type == 1)
      {
        break;
      }

      if (!Type)
      {
        v19 = objc_msgSend_datatype(v13, v17, v18);
        v21 = objc_msgSend_tableNameForCardioType_(self, v20, v19);
LABEL_7:
        objc_msgSend_setTableName_(v13, v22, v21);
      }

      ++v10;
      v25 = objc_msgSend_tables(token, v17, v18);
      if (objc_msgSend_count(v25, v26, v27) <= v10)
      {
        return;
      }
    }

    v23 = objc_msgSend_datatype(v13, v17, v18);
    v21 = objc_msgSend_tableNameForMobilityType_(self, v24, v23);
    goto LABEL_7;
  }
}

@end