@interface CLEEDMitigation
+ (const)sourceAsString:(int64_t)string;
+ (id)newMitigationFromDict:(id)dict;
- (BOOL)anyChangeToNewRequestsComparedTo:(id)to;
- (BOOL)needsRequestStateUpdateComparedTo:(id)to;
- (BOOL)updateIfDifferentFrom:(id)from;
- (BOOL)updateWorseMitigationsFrom:(id)from;
- (CLEEDMitigation)initWithCoder:(id)coder;
- (CLEEDMitigation)initWithStreamingAllowed:(BOOL)allowed framerateFps:(int64_t)fps bitrateKbps:(int64_t)kbps dropStreaming:(BOOL)streaming uploadAllowed:(BOOL)uploadAllowed uploadMitigation:(int64_t)mitigation source:(int64_t)source;
- (const)toCLEEDUploadMitigationString:(int64_t)string;
- (id)description;
- (id)newMitigationDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDMitigation

- (CLEEDMitigation)initWithStreamingAllowed:(BOOL)allowed framerateFps:(int64_t)fps bitrateKbps:(int64_t)kbps dropStreaming:(BOOL)streaming uploadAllowed:(BOOL)uploadAllowed uploadMitigation:(int64_t)mitigation source:(int64_t)source
{
  uploadAllowedCopy = uploadAllowed;
  streamingCopy = streaming;
  allowedCopy = allowed;
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v16 = allowedCopy;
    if (allowedCopy)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v18 = streamingCopy;
    if (streamingCopy)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    v20 = uploadAllowedCopy;
    if (uploadAllowedCopy)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    *buf = 136447746;
    v53 = "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]";
    v54 = 2082;
    v55 = v17;
    allowedCopy = v16;
    v56 = 2050;
    fpsCopy = fps;
    v58 = 2082;
    v59 = v19;
    streamingCopy = v18;
    v60 = 2082;
    v61 = v21;
    uploadAllowedCopy = v20;
    v62 = 2050;
    mitigationCopy = mitigation;
    v64 = 2082;
    v65 = objc_msgSend_sourceAsString_(CLEEDMitigation, v14, source, v15);
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s[streamingAllowed:%{public}s,fps:%{public}ld,dropStreaming:%{public}s,uploadAllowed:%{public}s,uploadMitigation:%{public}ld,source:%{public}s]", buf, 0x48u);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v25 = qword_1EAFE4718;
    v26 = allowedCopy;
    if (allowedCopy)
    {
      v27 = "YES";
    }

    else
    {
      v27 = "NO";
    }

    v28 = streamingCopy;
    if (streamingCopy)
    {
      v29 = "YES";
    }

    else
    {
      v29 = "NO";
    }

    v30 = uploadAllowedCopy;
    if (uploadAllowedCopy)
    {
      v31 = "YES";
    }

    else
    {
      v31 = "NO";
    }

    v38 = 136447746;
    v39 = "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]";
    v40 = 2082;
    v41 = v27;
    v42 = 2050;
    fpsCopy2 = fps;
    v44 = 2082;
    v45 = v29;
    v46 = 2082;
    v47 = v31;
    v48 = 2050;
    mitigationCopy2 = mitigation;
    v50 = 2082;
    v51 = objc_msgSend_sourceAsString_(CLEEDMitigation, v23, source, v24);
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 0, "#EED2CXFW,%{public}s[streamingAllowed:%{public}s,fps:%{public}ld,dropStreaming:%{public}s,uploadAllowed:%{public}s,uploadMitigation:%{public}ld,source:%{public}s]", &v38, 72);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }

    LOBYTE(streamingCopy) = v28;
    LOBYTE(uploadAllowedCopy) = v30;
    LOBYTE(allowedCopy) = v26;
  }

  v37.receiver = self;
  v37.super_class = CLEEDMitigation;
  result = [(CLEEDMitigation *)&v37 init];
  if (result)
  {
    result->_newStreamingAllowed = allowedCopy;
    result->_newUploadAllowed = uploadAllowedCopy;
    result->_streamingFPS = fps;
    result->_streamingBitrate = kbps;
    result->_dropStreaming = streamingCopy;
    result->_uploadMigitation = mitigation;
    result->_source = source;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLEEDMitigation;
  [(CLEEDMitigation *)&v2 dealloc];
}

- (BOOL)anyChangeToNewRequestsComparedTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v28 = "[CLEEDMitigation anyChangeToNewRequestsComparedTo:]";
    v29 = 2114;
    toCopy = to;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s,other:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v23 = 136446466;
    v24 = "[CLEEDMitigation anyChangeToNewRequestsComparedTo:]";
    v25 = 2114;
    toCopy2 = to;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2CXFW,%{public}s,other:%{public}@", &v23, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation anyChangeToNewRequestsComparedTo:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (!to)
  {
    return 0;
  }

  v11 = objc_msgSend_newUploadAllowed(self, v7, v8, v9);
  if (v11 != objc_msgSend_newUploadAllowed(to, v12, v13, v14))
  {
    return 1;
  }

  v19 = objc_msgSend_newStreamingAllowed(self, v15, v16, v17);
  return v19 ^ objc_msgSend_newStreamingAllowed(to, v20, v21, v22);
}

- (BOOL)updateWorseMitigationsFrom:(id)from
{
  v259 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
    v255 = 2114;
    fromCopy = from;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v247 = 136446466;
    v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
    v249 = 2114;
    fromCopy2 = from;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", &v247, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (from)
  {
    if (!objc_msgSend_newStreamingAllowed(self, v7, v8, v9) || (v14 = objc_msgSend_newStreamingAllowed(self, v11, v12, v13), v14 == objc_msgSend_newStreamingAllowed(from, v15, v16, v17)))
    {
      v46 = 0;
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v18 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_msgSend_newStreamingAllowed(self, v19, v20, v21))
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        v26 = objc_msgSend_newStreamingAllowed(from, v22, v23, v24);
        *buf = 136446722;
        if (v26)
        {
          v27 = "YES";
        }

        else
        {
          v27 = "NO";
        }

        v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v255 = 2082;
        fromCopy = v25;
        v257 = 2082;
        v258 = v27;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v28 = sub_19B87DD40();
      if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v35 = qword_1EAFE4718;
        if (objc_msgSend_newStreamingAllowed(self, v32, v33, v34))
        {
          v39 = "YES";
        }

        else
        {
          v39 = "NO";
        }

        v40 = objc_msgSend_newStreamingAllowed(from, v36, v37, v38);
        v247 = 136446722;
        if (v40)
        {
          v41 = "YES";
        }

        else
        {
          v41 = "NO";
        }

        v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v249 = 2082;
        fromCopy2 = v39;
        v251 = 2082;
        v252 = v41;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v35, 0, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", &v247, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      v43 = objc_msgSend_newStreamingAllowed(from, v29, v30, v31);
      objc_msgSend_setNewStreamingAllowed_(self, v44, v43, v45);
      v46 = 1;
    }

    if ((objc_msgSend_dropStreaming(self, v11, v12, v13) & 1) == 0)
    {
      v50 = objc_msgSend_dropStreaming(self, v47, v48, v49);
      if (v50 != objc_msgSend_dropStreaming(from, v51, v52, v53))
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v54 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          if (objc_msgSend_dropStreaming(self, v55, v56, v57))
          {
            v61 = "YES";
          }

          else
          {
            v61 = "NO";
          }

          if (objc_msgSend_dropStreaming(from, v58, v59, v60))
          {
            v62 = "YES";
          }

          else
          {
            v62 = "NO";
          }

          *buf = 136446722;
          v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
          v255 = 2082;
          fromCopy = v61;
          v257 = 2082;
          v258 = v62;
          _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
        }

        v63 = sub_19B87DD40();
        if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v70 = qword_1EAFE4718;
          if (objc_msgSend_dropStreaming(self, v67, v68, v69))
          {
            v74 = "YES";
          }

          else
          {
            v74 = "NO";
          }

          if (objc_msgSend_dropStreaming(from, v71, v72, v73))
          {
            v75 = "YES";
          }

          else
          {
            v75 = "NO";
          }

          v247 = 136446722;
          v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
          v249 = 2082;
          fromCopy2 = v74;
          v251 = 2082;
          v252 = v75;
          v76 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v70, 0, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", &v247, 32);
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v76);
          if (v76 != buf)
          {
            free(v76);
          }
        }

        v77 = objc_msgSend_dropStreaming(from, v64, v65, v66);
        objc_msgSend_setDropStreaming_(self, v78, v77, v79);
        v46 = 1;
      }
    }

    v80 = objc_msgSend_streamingFPS(from, v47, v48, v49);
    if (v80 < objc_msgSend_streamingFPS(self, v81, v82, v83))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v87 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v91 = objc_msgSend_streamingFPS(self, v88, v89, v90);
        v95 = objc_msgSend_streamingFPS(from, v92, v93, v94);
        *buf = 136446722;
        v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v255 = 2050;
        fromCopy = v91;
        v257 = 2050;
        v258 = v95;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v96 = sub_19B87DD40();
      if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v103 = qword_1EAFE4718;
        v104 = objc_msgSend_streamingFPS(self, v100, v101, v102);
        v108 = objc_msgSend_streamingFPS(from, v105, v106, v107);
        v247 = 136446722;
        v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v249 = 2050;
        fromCopy2 = v104;
        v251 = 2050;
        v252 = v108;
        v109 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v103, 0, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", &v247, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v109);
        if (v109 != buf)
        {
          free(v109);
        }
      }

      v110 = objc_msgSend_streamingFPS(from, v97, v98, v99);
      objc_msgSend_setStreamingFPS_(self, v111, v110, v112);
      v46 = 1;
    }

    v113 = objc_msgSend_streamingBitrate(from, v84, v85, v86);
    if (v113 < objc_msgSend_streamingBitrate(self, v114, v115, v116))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v120 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v124 = objc_msgSend_streamingBitrate(self, v121, v122, v123);
        v128 = objc_msgSend_streamingBitrate(from, v125, v126, v127);
        *buf = 136446722;
        v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v255 = 2050;
        fromCopy = v124;
        v257 = 2050;
        v258 = v128;
        _os_log_impl(&dword_19B873000, v120, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v129 = sub_19B87DD40();
      if (*(v129 + 160) > 1 || *(v129 + 164) > 1 || *(v129 + 168) > 1 || *(v129 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v136 = qword_1EAFE4718;
        v137 = objc_msgSend_streamingBitrate(self, v133, v134, v135);
        v141 = objc_msgSend_streamingBitrate(from, v138, v139, v140);
        v247 = 136446722;
        v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v249 = 2050;
        fromCopy2 = v137;
        v251 = 2050;
        v252 = v141;
        v142 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v136, 0, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", &v247, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v142);
        if (v142 != buf)
        {
          free(v142);
        }
      }

      v143 = objc_msgSend_streamingBitrate(from, v130, v131, v132);
      objc_msgSend_setStreamingBitrate_(self, v144, v143, v145);
      v46 = 1;
    }

    if (objc_msgSend_newUploadAllowed(self, v117, v118, v119))
    {
      v149 = objc_msgSend_newUploadAllowed(self, v146, v147, v148);
      if (v149 != objc_msgSend_newUploadAllowed(from, v150, v151, v152))
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v153 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          if (objc_msgSend_newUploadAllowed(self, v154, v155, v156))
          {
            v160 = "YES";
          }

          else
          {
            v160 = "NO";
          }

          v161 = objc_msgSend_newUploadAllowed(from, v157, v158, v159);
          *buf = 136446722;
          if (v161)
          {
            v162 = "YES";
          }

          else
          {
            v162 = "NO";
          }

          v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
          v255 = 2082;
          fromCopy = v160;
          v257 = 2082;
          v258 = v162;
          _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", buf, 0x20u);
        }

        v163 = sub_19B87DD40();
        if (*(v163 + 160) > 1 || *(v163 + 164) > 1 || *(v163 + 168) > 1 || *(v163 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v170 = qword_1EAFE4718;
          if (objc_msgSend_newUploadAllowed(self, v167, v168, v169))
          {
            v174 = "YES";
          }

          else
          {
            v174 = "NO";
          }

          v175 = objc_msgSend_newUploadAllowed(from, v171, v172, v173);
          v247 = 136446722;
          if (v175)
          {
            v176 = "YES";
          }

          else
          {
            v176 = "NO";
          }

          v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
          v249 = 2082;
          fromCopy2 = v174;
          v251 = 2082;
          v252 = v176;
          v177 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v170, 0, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", &v247, 32);
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v177);
          if (v177 != buf)
          {
            free(v177);
          }
        }

        v178 = objc_msgSend_newUploadAllowed(from, v164, v165, v166);
        objc_msgSend_setNewUploadAllowed_(self, v179, v178, v180);
        v46 = 1;
      }
    }

    if (objc_msgSend_uploadMigitation(self, v146, v147, v148) != 2)
    {
      v184 = objc_msgSend_uploadMigitation(self, v181, v182, v183);
      if (v184 != objc_msgSend_uploadMigitation(from, v185, v186, v187))
      {
        v188 = objc_msgSend_uploadMigitation(self, v181, v182, v183);
        if (v188 == 1)
        {
          if (objc_msgSend_uploadMigitation(from, v181, v182, v183) == 2)
          {
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
            }

            v211 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
            {
              v215 = objc_msgSend_uploadMigitation(self, v212, v213, v214);
              v218 = objc_msgSend_toCLEEDUploadMitigationString_(self, v216, v215, v217);
              v222 = objc_msgSend_uploadMigitation(from, v219, v220, v221);
              v225 = objc_msgSend_toCLEEDUploadMitigationString_(from, v223, v222, v224);
              *buf = 136446722;
              v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
              v255 = 2082;
              fromCopy = v218;
              v257 = 2082;
              v258 = v225;
              _os_log_impl(&dword_19B873000, v211, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
            }

            v226 = sub_19B87DD40();
            if (*(v226 + 160) <= 1 && *(v226 + 164) <= 1 && *(v226 + 168) <= 1 && !*(v226 + 152))
            {
              goto LABEL_151;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46E0 == -1)
            {
              goto LABEL_149;
            }

            goto LABEL_155;
          }
        }

        else if (!v188 && (objc_msgSend_uploadMigitation(from, v181, v182, v183) - 1) <= 1)
        {
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v189 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            v193 = objc_msgSend_uploadMigitation(self, v190, v191, v192);
            v196 = objc_msgSend_toCLEEDUploadMitigationString_(self, v194, v193, v195);
            v200 = objc_msgSend_uploadMigitation(from, v197, v198, v199);
            v203 = objc_msgSend_toCLEEDUploadMitigationString_(from, v201, v200, v202);
            *buf = 136446722;
            v254 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
            v255 = 2082;
            fromCopy = v196;
            v257 = 2082;
            v258 = v203;
            _os_log_impl(&dword_19B873000, v189, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
          }

          v204 = sub_19B87DD40();
          if (*(v204 + 160) <= 1 && *(v204 + 164) <= 1 && *(v204 + 168) <= 1 && !*(v204 + 152))
          {
            goto LABEL_151;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 == -1)
          {
LABEL_149:
            v227 = qword_1EAFE4718;
            v228 = objc_msgSend_uploadMigitation(self, v208, v209, v210);
            v231 = objc_msgSend_toCLEEDUploadMitigationString_(self, v229, v228, v230);
            v235 = objc_msgSend_uploadMigitation(from, v232, v233, v234);
            v238 = objc_msgSend_toCLEEDUploadMitigationString_(from, v236, v235, v237);
            v247 = 136446722;
            v248 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
            v249 = 2082;
            fromCopy2 = v231;
            v251 = 2082;
            v252 = v238;
            v239 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v227, 0, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", &v247, 32);
            sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v239);
            if (v239 != buf)
            {
              free(v239);
            }

LABEL_151:
            v240 = objc_msgSend_uploadMigitation(from, v205, v206, v207);
            objc_msgSend_setUploadMigitation_(self, v241, v240, v242);
LABEL_153:
            v243 = objc_msgSend_source(from, v181, v182, v183);
            objc_msgSend_setSource_(self, v244, v243, v245);
            return 1;
          }

LABEL_155:
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          goto LABEL_149;
        }
      }
    }

    if (v46)
    {
      goto LABEL_153;
    }
  }

  return 0;
}

- (BOOL)updateIfDifferentFrom:(id)from
{
  v244 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
    v240 = 2114;
    fromCopy = from;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v232 = 136446466;
    v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
    v234 = 2114;
    fromCopy2 = from;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", &v232, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (from)
  {
    v11 = objc_msgSend_newStreamingAllowed(self, v7, v8, v9);
    v18 = v11 ^ objc_msgSend_newStreamingAllowed(from, v12, v13, v14);
    if (v18 == 1)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v19 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_msgSend_newStreamingAllowed(self, v20, v21, v22))
        {
          v26 = "YES";
        }

        else
        {
          v26 = "NO";
        }

        v27 = objc_msgSend_newStreamingAllowed(from, v23, v24, v25);
        *buf = 136446722;
        if (v27)
        {
          v28 = "YES";
        }

        else
        {
          v28 = "NO";
        }

        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2082;
        fromCopy = v26;
        v242 = 2082;
        v243 = v28;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v36 = qword_1EAFE4718;
        if (objc_msgSend_newStreamingAllowed(self, v33, v34, v35))
        {
          v40 = "YES";
        }

        else
        {
          v40 = "NO";
        }

        v41 = objc_msgSend_newStreamingAllowed(from, v37, v38, v39);
        v232 = 136446722;
        if (v41)
        {
          v42 = "YES";
        }

        else
        {
          v42 = "NO";
        }

        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2082;
        fromCopy2 = v40;
        v236 = 2082;
        v237 = v42;
        v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v36, 0, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      v44 = objc_msgSend_newStreamingAllowed(from, v30, v31, v32);
      objc_msgSend_setNewStreamingAllowed_(self, v45, v44, v46);
    }

    v47 = objc_msgSend_dropStreaming(self, v15, v16, v17);
    if (v47 != objc_msgSend_dropStreaming(from, v48, v49, v50))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v54 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_msgSend_dropStreaming(self, v55, v56, v57))
        {
          v61 = "YES";
        }

        else
        {
          v61 = "NO";
        }

        v62 = objc_msgSend_dropStreaming(from, v58, v59, v60);
        *buf = 136446722;
        if (v62)
        {
          v63 = "YES";
        }

        else
        {
          v63 = "NO";
        }

        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2082;
        fromCopy = v61;
        v242 = 2082;
        v243 = v63;
        _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
      }

      v64 = sub_19B87DD40();
      if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v71 = qword_1EAFE4718;
        if (objc_msgSend_dropStreaming(self, v68, v69, v70))
        {
          v75 = "YES";
        }

        else
        {
          v75 = "NO";
        }

        v76 = objc_msgSend_dropStreaming(from, v72, v73, v74);
        v232 = 136446722;
        if (v76)
        {
          v77 = "YES";
        }

        else
        {
          v77 = "NO";
        }

        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2082;
        fromCopy2 = v75;
        v236 = 2082;
        v237 = v77;
        v78 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v71, 0, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v78);
        if (v78 != buf)
        {
          free(v78);
        }
      }

      v79 = objc_msgSend_dropStreaming(from, v65, v66, v67);
      objc_msgSend_setDropStreaming_(self, v80, v79, v81);
      LOBYTE(v18) = 1;
    }

    v82 = objc_msgSend_streamingFPS(from, v51, v52, v53);
    if (v82 != objc_msgSend_streamingFPS(self, v83, v84, v85))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v89 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v93 = objc_msgSend_streamingFPS(self, v90, v91, v92);
        v97 = objc_msgSend_streamingFPS(from, v94, v95, v96);
        *buf = 136446722;
        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2050;
        fromCopy = v93;
        v242 = 2050;
        v243 = v97;
        _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v98 = sub_19B87DD40();
      if (*(v98 + 160) > 1 || *(v98 + 164) > 1 || *(v98 + 168) > 1 || *(v98 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v105 = qword_1EAFE4718;
        v106 = objc_msgSend_streamingFPS(self, v102, v103, v104);
        v110 = objc_msgSend_streamingFPS(from, v107, v108, v109);
        v232 = 136446722;
        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2050;
        fromCopy2 = v106;
        v236 = 2050;
        v237 = v110;
        v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v105, 0, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v111);
        if (v111 != buf)
        {
          free(v111);
        }
      }

      v112 = objc_msgSend_streamingFPS(from, v99, v100, v101);
      objc_msgSend_setStreamingFPS_(self, v113, v112, v114);
      LOBYTE(v18) = 1;
    }

    v115 = objc_msgSend_streamingBitrate(from, v86, v87, v88);
    if (v115 != objc_msgSend_streamingBitrate(self, v116, v117, v118))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v122 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v126 = objc_msgSend_streamingBitrate(self, v123, v124, v125);
        v130 = objc_msgSend_streamingBitrate(from, v127, v128, v129);
        *buf = 136446722;
        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2050;
        fromCopy = v126;
        v242 = 2050;
        v243 = v130;
        _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v131 = sub_19B87DD40();
      if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v138 = qword_1EAFE4718;
        v139 = objc_msgSend_streamingBitrate(self, v135, v136, v137);
        v143 = objc_msgSend_streamingBitrate(from, v140, v141, v142);
        v232 = 136446722;
        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2050;
        fromCopy2 = v139;
        v236 = 2050;
        v237 = v143;
        v144 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v138, 0, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v144);
        if (v144 != buf)
        {
          free(v144);
        }
      }

      v145 = objc_msgSend_streamingBitrate(from, v132, v133, v134);
      objc_msgSend_setStreamingBitrate_(self, v146, v145, v147);
      LOBYTE(v18) = 1;
    }

    v148 = objc_msgSend_newUploadAllowed(self, v119, v120, v121);
    if (v148 != objc_msgSend_newUploadAllowed(from, v149, v150, v151))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v155 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_msgSend_newUploadAllowed(self, v156, v157, v158))
        {
          v162 = "YES";
        }

        else
        {
          v162 = "NO";
        }

        v163 = objc_msgSend_newUploadAllowed(from, v159, v160, v161);
        *buf = 136446722;
        if (v163)
        {
          v164 = "YES";
        }

        else
        {
          v164 = "NO";
        }

        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2082;
        fromCopy = v162;
        v242 = 2082;
        v243 = v164;
        _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v165 = sub_19B87DD40();
      if (*(v165 + 160) > 1 || *(v165 + 164) > 1 || *(v165 + 168) > 1 || *(v165 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v172 = qword_1EAFE4718;
        if (objc_msgSend_newUploadAllowed(self, v169, v170, v171))
        {
          v176 = "YES";
        }

        else
        {
          v176 = "NO";
        }

        v177 = objc_msgSend_newUploadAllowed(from, v173, v174, v175);
        v232 = 136446722;
        if (v177)
        {
          v178 = "YES";
        }

        else
        {
          v178 = "NO";
        }

        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2082;
        fromCopy2 = v176;
        v236 = 2082;
        v237 = v178;
        v179 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v172, 0, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v179);
        if (v179 != buf)
        {
          free(v179);
        }
      }

      v180 = objc_msgSend_newUploadAllowed(from, v166, v167, v168);
      objc_msgSend_setNewUploadAllowed_(self, v181, v180, v182);
      LOBYTE(v18) = 1;
    }

    v183 = objc_msgSend_uploadMigitation(self, v152, v153, v154);
    if (v183 != objc_msgSend_uploadMigitation(from, v184, v185, v186))
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v190 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v194 = objc_msgSend_uploadMigitation(self, v191, v192, v193);
        v197 = objc_msgSend_toCLEEDUploadMitigationString_(self, v195, v194, v196);
        v201 = objc_msgSend_uploadMigitation(from, v198, v199, v200);
        v204 = objc_msgSend_toCLEEDUploadMitigationString_(from, v202, v201, v203);
        *buf = 136446722;
        v239 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v240 = 2082;
        fromCopy = v197;
        v242 = 2082;
        v243 = v204;
        _os_log_impl(&dword_19B873000, v190, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
      }

      v205 = sub_19B87DD40();
      if (*(v205 + 160) > 1 || *(v205 + 164) > 1 || *(v205 + 168) > 1 || *(v205 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v212 = qword_1EAFE4718;
        v213 = objc_msgSend_uploadMigitation(self, v209, v210, v211);
        v216 = objc_msgSend_toCLEEDUploadMitigationString_(self, v214, v213, v215);
        v220 = objc_msgSend_uploadMigitation(from, v217, v218, v219);
        v223 = objc_msgSend_toCLEEDUploadMitigationString_(from, v221, v220, v222);
        v232 = 136446722;
        v233 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v234 = 2082;
        fromCopy2 = v216;
        v236 = 2082;
        v237 = v223;
        v224 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v212, 0, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", &v232, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v224);
        if (v224 != buf)
        {
          free(v224);
        }
      }

      v225 = objc_msgSend_uploadMigitation(from, v206, v207, v208);
      objc_msgSend_setUploadMigitation_(self, v226, v225, v227);
      LOBYTE(v18) = 1;
    }

    v228 = objc_msgSend_source(from, v187, v188, v189);
    objc_msgSend_setSource_(self, v229, v228, v230);
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)needsRequestStateUpdateComparedTo:(id)to
{
  v93 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v88 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
    v89 = 2114;
    toCopy = to;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v81 = 136446466;
    v82 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
    v83 = 2114;
    toCopy2 = to;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", &v81, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (!to)
  {
    return 0;
  }

  v11 = objc_msgSend_dropStreaming(self, v7, v8, v9);
  if (v11 == objc_msgSend_dropStreaming(to, v12, v13, v14) || !objc_msgSend_dropStreaming(to, v15, v16, v17))
  {
    v40 = 0;
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v18 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      if (objc_msgSend_dropStreaming(self, v19, v20, v21))
      {
        v25 = "YES";
      }

      else
      {
        v25 = "NO";
      }

      v26 = objc_msgSend_dropStreaming(to, v22, v23, v24);
      *buf = 136446722;
      if (v26)
      {
        v27 = "YES";
      }

      else
      {
        v27 = "NO";
      }

      v88 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
      v89 = 2082;
      toCopy = v25;
      v91 = 2082;
      v92 = v27;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v32 = qword_1EAFE4718;
      if (objc_msgSend_dropStreaming(self, v29, v30, v31))
      {
        v36 = "YES";
      }

      else
      {
        v36 = "NO";
      }

      v37 = objc_msgSend_dropStreaming(to, v33, v34, v35);
      v81 = 136446722;
      if (v37)
      {
        v38 = "YES";
      }

      else
      {
        v38 = "NO";
      }

      v82 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
      v83 = 2082;
      toCopy2 = v36;
      v85 = 2082;
      v86 = v38;
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", &v81, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    v40 = 1;
  }

  v41 = objc_msgSend_uploadMigitation(self, v15, v16, v17);
  if (v41 != objc_msgSend_uploadMigitation(to, v42, v43, v44) && objc_msgSend_uploadMigitation(to, v45, v46, v47) == 1)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_msgSend_uploadMigitation(self, v49, v50, v51);
      v55 = objc_msgSend_toCLEEDUploadMitigationString_(self, v53, v52, v54);
      v59 = objc_msgSend_uploadMigitation(to, v56, v57, v58);
      v62 = objc_msgSend_toCLEEDUploadMitigationString_(to, v60, v59, v61);
      *buf = 136446722;
      v88 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
      v89 = 2082;
      toCopy = v55;
      v91 = 2082;
      v92 = v62;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
    }

    v63 = sub_19B87DD40();
    if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v67 = qword_1EAFE4718;
      v68 = objc_msgSend_uploadMigitation(self, v64, v65, v66);
      v71 = objc_msgSend_toCLEEDUploadMitigationString_(self, v69, v68, v70);
      v75 = objc_msgSend_uploadMigitation(to, v72, v73, v74);
      v78 = objc_msgSend_toCLEEDUploadMitigationString_(to, v76, v75, v77);
      v81 = 136446722;
      v82 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
      v83 = 2082;
      toCopy2 = v71;
      v85 = 2082;
      v86 = v78;
      v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v67, 0, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", &v81, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v79);
      if (v79 != buf)
      {
        free(v79);
      }
    }

    return 1;
  }

  return v40;
}

- (const)toCLEEDUploadMitigationString:(int64_t)string
{
  v3 = "None";
  if (string == 1)
  {
    v3 = "Delay";
  }

  if (string == 2)
  {
    return "Drop";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_newStreamingAllowed(self, a2, v2, v3))
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = objc_msgSend_streamingFPS(self, v6, v7, v8);
  v14 = objc_msgSend_streamingBitrate(self, v11, v12, v13);
  if (objc_msgSend_dropStreaming(self, v15, v16, v17))
  {
    v21 = "YES";
  }

  else
  {
    v21 = "NO";
  }

  if (objc_msgSend_newUploadAllowed(self, v18, v19, v20))
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  v26 = objc_msgSend_uploadMigitation(self, v22, v23, v24);
  v29 = objc_msgSend_toCLEEDUploadMitigationString_(self, v27, v26, v28);
  v33 = objc_msgSend_source(self, v30, v31, v32);
  v36 = objc_msgSend_sourceAsString_(CLEEDMitigation, v34, v33, v35);
  return objc_msgSend_stringWithFormat_(v5, v37, @"[streamingAllowed:%s,fps:%ld,Kbps:%ld,dropStreaming:%s,uploadAllowed:%s,uploadMitigation:%s,source:%s]", v38, v9, v10, v14, v21, v25, v29, v36);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeBool_forKey_(coder, a2, self->_newStreamingAllowed, @"newStreamingAllowed");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_streamingFPS, @"streamingFPS");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_streamingBitrate, @"bitrateBPS");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_dropStreaming, @"dropStreaming");
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_newUploadAllowed, @"newUploadAllowed");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_uploadMigitation, @"uploadMigitation");
  source = self->_source;

  objc_msgSend_encodeInteger_forKey_(coder, v10, source, @"MitigationSource");
}

- (CLEEDMitigation)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = CLEEDMitigation;
  v6 = [(CLEEDMitigation *)&v20 init];
  if (v6)
  {
    v6->_newStreamingAllowed = objc_msgSend_decodeBoolForKey_(coder, v4, @"newStreamingAllowed", v5);
    v6->_dropStreaming = objc_msgSend_decodeBoolForKey_(coder, v7, @"dropStreaming", v8);
    v6->_streamingFPS = objc_msgSend_decodeIntegerForKey_(coder, v9, @"streamingFPS", v10);
    v6->_streamingBitrate = objc_msgSend_decodeIntegerForKey_(coder, v11, @"bitrateBPS", v12);
    v6->_newUploadAllowed = objc_msgSend_decodeBoolForKey_(coder, v13, @"newUploadAllowed", v14);
    v6->_uploadMigitation = objc_msgSend_decodeIntegerForKey_(coder, v15, @"uploadMigitation", v16);
    v6->_source = objc_msgSend_decodeIntegerForKey_(coder, v17, @"MitigationSource", v18);
  }

  return v6;
}

- (id)newMitigationDict
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = objc_msgSend_newStreamingAllowed(self, v3, v4, v5);
    v11 = objc_msgSend_numberWithBool_(v7, v9, v8, v10);
    objc_msgSend_setValue_forKey_(v6, v12, v11, @"newStreamingAllowed");
    v13 = MEMORY[0x1E696AD98];
    v17 = objc_msgSend_dropStreaming(self, v14, v15, v16);
    v20 = objc_msgSend_numberWithBool_(v13, v18, v17, v19);
    objc_msgSend_setValue_forKey_(v6, v21, v20, @"dropStreaming");
    v22 = MEMORY[0x1E696AD98];
    v26 = objc_msgSend_streamingFPS(self, v23, v24, v25);
    v29 = objc_msgSend_numberWithInteger_(v22, v27, v26, v28);
    objc_msgSend_setValue_forKey_(v6, v30, v29, @"streamingFPS");
    v31 = MEMORY[0x1E696AD98];
    v35 = objc_msgSend_streamingBitrate(self, v32, v33, v34);
    v38 = objc_msgSend_numberWithInteger_(v31, v36, v35, v37);
    objc_msgSend_setValue_forKey_(v6, v39, v38, @"bitrateBPS");
    v40 = MEMORY[0x1E696AD98];
    v44 = objc_msgSend_newUploadAllowed(self, v41, v42, v43);
    v47 = objc_msgSend_numberWithBool_(v40, v45, v44, v46);
    objc_msgSend_setValue_forKey_(v6, v48, v47, @"newUploadAllowed");
    v49 = MEMORY[0x1E696AD98];
    v53 = objc_msgSend_uploadMigitation(self, v50, v51, v52);
    v56 = objc_msgSend_numberWithInteger_(v49, v54, v53, v55);
    objc_msgSend_setValue_forKey_(v6, v57, v56, @"uploadMigitation");
    v58 = MEMORY[0x1E696AD98];
    v62 = objc_msgSend_source(self, v59, v60, v61);
    v65 = objc_msgSend_numberWithInteger_(v58, v63, v62, v64);
    objc_msgSend_setValue_forKey_(v6, v66, v65, @"MitigationSource");
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v67 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v74 = "[CLEEDMitigation newMitigationDict]";
      _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_ERROR, "#EED2CXFW,%{public}s,nil mediaItemDict, early return", buf, 0xCu);
    }

    v68 = sub_19B87DD40();
    if ((*(v68 + 160) & 0x80000000) == 0 || (*(v68 + 164) & 0x80000000) == 0 || (*(v68 + 168) & 0x80000000) == 0 || *(v68 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v71 = 136446210;
      v72 = "[CLEEDMitigation newMitigationDict]";
      v69 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2CXFW,%{public}s,nil mediaItemDict, early return", &v71, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDMitigation newMitigationDict]", "CoreLocation: %s\n", v69);
      if (v69 != buf)
      {
        free(v69);
      }
    }
  }

  return v6;
}

+ (id)newMitigationFromDict:(id)dict
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(CLEEDMitigation);
  if (v6)
  {
    v7 = objc_msgSend_valueForKey_(dict, v4, @"MitigationSource", v5);
    v11 = objc_msgSend_intValue(v7, v8, v9, v10);
    objc_msgSend_setSource_(v6, v12, v11, v13);
    v16 = objc_msgSend_valueForKey_(dict, v14, @"uploadMigitation", v15);
    v20 = objc_msgSend_intValue(v16, v17, v18, v19);
    objc_msgSend_setUploadMigitation_(v6, v21, v20, v22);
    v25 = objc_msgSend_valueForKey_(dict, v23, @"streamingFPS", v24);
    v29 = objc_msgSend_integerValue(v25, v26, v27, v28);
    objc_msgSend_setStreamingFPS_(v6, v30, v29, v31);
    v34 = objc_msgSend_valueForKey_(dict, v32, @"bitrateBPS", v33);
    v38 = objc_msgSend_integerValue(v34, v35, v36, v37);
    objc_msgSend_setStreamingBitrate_(v6, v39, v38, v40);
    v43 = objc_msgSend_valueForKey_(dict, v41, @"newUploadAllowed", v42);
    v47 = objc_msgSend_BOOLValue(v43, v44, v45, v46);
    objc_msgSend_setNewUploadAllowed_(v6, v48, v47, v49);
    v52 = objc_msgSend_valueForKey_(dict, v50, @"newStreamingAllowed", v51);
    v56 = objc_msgSend_BOOLValue(v52, v53, v54, v55);
    objc_msgSend_setNewStreamingAllowed_(v6, v57, v56, v58);
    v61 = objc_msgSend_valueForKey_(dict, v59, @"dropStreaming", v60);
    v65 = objc_msgSend_BOOLValue(v61, v62, v63, v64);
    objc_msgSend_setDropStreaming_(v6, v66, v65, v67);
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v68 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v75 = "+[CLEEDMitigation newMitigationFromDict:]";
      _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_ERROR, "#EED2CXFW,%{public}s,nil mitigation, early return", buf, 0xCu);
    }

    v69 = sub_19B87DD40();
    if ((*(v69 + 160) & 0x80000000) == 0 || (*(v69 + 164) & 0x80000000) == 0 || (*(v69 + 168) & 0x80000000) == 0 || *(v69 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v72 = 136446210;
      v73 = "+[CLEEDMitigation newMitigationFromDict:]";
      v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2CXFW,%{public}s,nil mitigation, early return", &v72, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDMitigation newMitigationFromDict:]", "CoreLocation: %s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }
  }

  return v6;
}

+ (const)sourceAsString:(int64_t)string
{
  if ((string - 1) > 3)
  {
    return "NotSet";
  }

  else
  {
    return off_1E753D570[string - 1];
  }
}

@end