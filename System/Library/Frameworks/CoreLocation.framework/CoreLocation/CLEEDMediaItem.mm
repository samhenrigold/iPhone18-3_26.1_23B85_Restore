@interface CLEEDMediaItem
+ (id)createMediaItemFromDict:(id)dict;
- (BOOL)isEqual:(id)equal;
- (CLEEDMediaItem)initWithCoder:(id)coder;
- (CLEEDMediaItem)initWithURL:(id)l assetIdentifier:(id)identifier sandboxExtension:(id)extension mediaType:(int64_t)type;
- (CLEEDMediaItem)initWithURL:(id)l sandboxExtension:(id)extension mediaType:(int64_t)type;
- (id)createMediaItemDict;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDMediaItem

- (CLEEDMediaItem)initWithURL:(id)l sandboxExtension:(id)extension mediaType:(int64_t)type
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v23 = "[CLEEDMediaItem initWithURL:sandboxExtension:mediaType:]";
    v24 = 2114;
    lCopy = l;
    v26 = 2114;
    extensionCopy = extension;
    v28 = 2050;
    typeCopy = type;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[URL:%{public}@,Token:%{public}@,Type:%{public}lu]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = 136446978;
    v15 = "[CLEEDMediaItem initWithURL:sandboxExtension:mediaType:]";
    v16 = 2114;
    lCopy2 = l;
    v18 = 2114;
    extensionCopy2 = extension;
    v20 = 2050;
    typeCopy2 = type;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[URL:%{public}@,Token:%{public}@,Type:%{public}lu]", &v14, 42);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMediaItem initWithURL:sandboxExtension:mediaType:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return objc_msgSend_initWithURL_assetIdentifier_sandboxExtension_mediaType_(self, v11, l, 0, extension, type);
}

- (CLEEDMediaItem)initWithURL:(id)l assetIdentifier:(id)identifier sandboxExtension:(id)extension mediaType:(int64_t)type
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v11 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136447234;
    v33 = "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]";
    v34 = 2114;
    lCopy = l;
    v36 = 2114;
    identifierCopy = identifier;
    v38 = 2114;
    extensionCopy = extension;
    v40 = 2050;
    typeCopy = type;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[URL:%{public}@,assetIdentifier:%{public}@,Token:%{public}@,Type:%{public}lu]", buf, 0x34u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = 136447234;
    v23 = "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]";
    v24 = 2114;
    lCopy2 = l;
    v26 = 2114;
    identifierCopy2 = identifier;
    v28 = 2114;
    extensionCopy2 = extension;
    v30 = 2050;
    typeCopy2 = type;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[URL:%{public}@,assetIdentifier:%{public}@,Token:%{public}@,Type:%{public}lu]", &v22, 52);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMediaItem initWithURL:assetIdentifier:sandboxExtension:mediaType:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v21.receiver = self;
  v21.super_class = CLEEDMediaItem;
  v14 = [(CLEEDMediaItem *)&v21 init];
  if (v14)
  {
    *(v14 + 4) = l;
    *(v14 + 6) = extension;
    *(v14 + 5) = identifier;
    *(v14 + 2) = type;
    *(v14 + 3) = 0;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 14) = -1;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = objc_msgSend_initWithUTF8String_(v15, v16, "notset", v17);
    *(v14 + 15) = 0;
    *(v14 + 12) = 0;
    *(v14 + 13) = 0;
    *(v14 + 11) = v18;
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *(v14 + 8) = v19;
    *(v14 + 9) = v19;
    *(v14 + 4) = 0;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDMediaItem;
  [(CLEEDMediaItem *)&v3 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_URL(self, a2, v2, v3);
  v10 = objc_msgSend_stagingURL(self, v7, v8, v9);
  v14 = objc_msgSend_mediaItemID(self, v11, v12, v13);
  v18 = objc_msgSend_encryptedFileURL(self, v15, v16, v17);
  v22 = objc_msgSend_type(self, v19, v20, v21);
  v26 = objc_msgSend_uploadStatus(self, v23, v24, v25);
  return objc_msgSend_stringWithFormat_(v5, v27, @" <CLEEDMediaItem: URL, %@, stagingURL, %@, mediaID, %@, encryptedURL, %@, mediaType, %lu, uploadStatus, %lu>", v28, v6, v10, v14, v18, v22, v26);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_URL, @"placeholderURL");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_stagingURL, @"stagingURL");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_encryptedFileURL, @"encryptedURL");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_authTag, @"authTag");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_assetIdentifier, @"assetIdentifier");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_mediaItemID, @"mediaUUID");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_sandboxExtension, @"sandboxExtension");
  objc_msgSend_encodeInteger_forKey_(coder, v11, self->_type, @"mediaType");
  objc_msgSend_encodeInteger_forKey_(coder, v12, self->_uploadStatus, @"uploadStatus");
  objc_msgSend_encodeObject_forKey_(coder, v13, self->_mediaItemFormat, @"mediaItemFormat");
  objc_msgSend_encodeInteger_forKey_(coder, v14, self->_mediaItemSizeBytes, @"mediaItemSizeBytes");
  objc_msgSend_encodeInteger_forKey_(coder, v15, self->_originalSizeBytes, @"originalSizeBytes");
  objc_msgSend_encodeInteger_forKey_(coder, v16, self->_serverUploadStatus, @"serverUploadStatus");
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_uploadAttempts, @"uploadAttempts");
  objc_msgSend_encodeInteger_forKey_(coder, v18, self->_durationCopyMs, @"durationCopyMs");
  objc_msgSend_encodeInteger_forKey_(coder, v19, self->_durationTranscodeMs, @"durationTranscodeMs");
  objc_msgSend_encodeInteger_forKey_(coder, v20, self->_durationEncryptionMs, @"durationEncryptionMs");
  objc_msgSend_encodeInteger_forKey_(coder, v21, self->_durationUploadMs, @"durationUploadMs");
  objc_msgSend_encodeBool_forKey_(coder, v22, self->_metricProcessed, @"metricProcessed");
  didApplyDelayMitigation = self->_didApplyDelayMitigation;

  objc_msgSend_encodeBool_forKey_(coder, v23, didApplyDelayMitigation, @"didApplyDelayMitigation");
}

- (CLEEDMediaItem)initWithCoder:(id)coder
{
  v46.receiver = self;
  v46.super_class = CLEEDMediaItem;
  v4 = [(CLEEDMediaItem *)&v46 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_URL = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"placeholderURL");
    v7 = objc_opt_class();
    v4->_stagingURL = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"stagingURL");
    v9 = objc_opt_class();
    v4->_encryptedFileURL = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"encryptedURL");
    v11 = objc_opt_class();
    v4->_authTag = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"authTag");
    v13 = objc_opt_class();
    v4->_assetIdentifier = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"assetIdentifier");
    v15 = objc_opt_class();
    v4->_mediaItemID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"mediaUUID");
    v17 = objc_opt_class();
    v4->_sandboxExtension = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"sandboxExtension");
    v4->_type = objc_msgSend_decodeIntegerForKey_(coder, v19, @"mediaType", v20);
    v4->_uploadStatus = objc_msgSend_decodeIntegerForKey_(coder, v21, @"uploadStatus", v22);
    v4->_serverUploadStatus = objc_msgSend_decodeIntegerForKey_(coder, v23, @"serverUploadStatus", v24);
    v25 = objc_opt_class();
    v4->_mediaItemFormat = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"mediaItemFormat");
    v4->_mediaItemSizeBytes = objc_msgSend_decodeIntegerForKey_(coder, v27, @"mediaItemSizeBytes", v28);
    v4->_originalSizeBytes = objc_msgSend_decodeIntegerForKey_(coder, v29, @"originalSizeBytes", v30);
    v4->_uploadAttempts = objc_msgSend_decodeIntegerForKey_(coder, v31, @"uploadAttempts", v32);
    v4->_durationCopyMs = objc_msgSend_decodeIntegerForKey_(coder, v33, @"durationCopyMs", v34);
    v4->_durationTranscodeMs = objc_msgSend_decodeIntegerForKey_(coder, v35, @"durationTranscodeMs", v36);
    v4->_durationEncryptionMs = objc_msgSend_decodeIntegerForKey_(coder, v37, @"durationEncryptionMs", v38);
    v4->_durationUploadMs = objc_msgSend_decodeIntegerForKey_(coder, v39, @"durationUploadMs", v40);
    v4->_metricProcessed = objc_msgSend_decodeBoolForKey_(coder, v41, @"metricProcessed", v42);
    v4->_didApplyDelayMitigation = objc_msgSend_decodeBoolForKey_(coder, v43, @"didApplyDelayMitigation", v44);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_assetIdentifier(self, v5, v6, v7))
    {
      if (objc_msgSend_assetIdentifier(equal, v8, v9, v10))
      {
        v14 = objc_msgSend_assetIdentifier(self, v11, v12, v13);
        v18 = objc_msgSend_assetIdentifier(equal, v15, v16, v17);
        if (objc_msgSend_isEqualToString_(v14, v19, v18, v20))
        {
          v24 = objc_msgSend_type(self, v21, v22, v23);
          if (v24 == objc_msgSend_type(equal, v25, v26, v27))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_assetIdentifier(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
}

- (id)createMediaItemDict
{
  v176 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = objc_msgSend_type(self, v3, v4, v5);
    v11 = objc_msgSend_numberWithInteger_(v7, v9, v8, v10);
    objc_msgSend_setValue_forKey_(v6, v12, v11, @"mediaType");
    v13 = MEMORY[0x1E696AD98];
    v17 = objc_msgSend_uploadStatus(self, v14, v15, v16);
    v20 = objc_msgSend_numberWithInteger_(v13, v18, v17, v19);
    objc_msgSend_setValue_forKey_(v6, v21, v20, @"uploadStatus");
    v25 = objc_msgSend_URL(self, v22, v23, v24);
    v29 = objc_msgSend_absoluteString(v25, v26, v27, v28);
    objc_msgSend_setValue_forKey_(v6, v30, v29, @"placeholderURL");
    v34 = objc_msgSend_assetIdentifier(self, v31, v32, v33);
    objc_msgSend_setValue_forKey_(v6, v35, v34, @"assetIdentifier");
    v39 = objc_msgSend_sandboxExtension(self, v36, v37, v38);
    objc_msgSend_setValue_forKey_(v6, v40, v39, @"sandboxExtension");
    v44 = objc_msgSend_stagingURL(self, v41, v42, v43);
    v48 = objc_msgSend_absoluteString(v44, v45, v46, v47);
    objc_msgSend_setValue_forKey_(v6, v49, v48, @"stagingURL");
    v53 = objc_msgSend_encryptedFileURL(self, v50, v51, v52);
    v57 = objc_msgSend_absoluteString(v53, v54, v55, v56);
    objc_msgSend_setValue_forKey_(v6, v58, v57, @"encryptedURL");
    v62 = objc_msgSend_authTag(self, v59, v60, v61);
    objc_msgSend_setValue_forKey_(v6, v63, v62, @"authTag");
    v67 = objc_msgSend_mediaItemID(self, v64, v65, v66);
    v71 = objc_msgSend_UUIDString(v67, v68, v69, v70);
    objc_msgSend_setValue_forKey_(v6, v72, v71, @"mediaUUID");
    v76 = objc_msgSend_mediaItemFormat(self, v73, v74, v75);
    objc_msgSend_setValue_forKey_(v6, v77, v76, @"mediaItemFormat");
    v78 = MEMORY[0x1E696AD98];
    v82 = objc_msgSend_serverUploadStatus(self, v79, v80, v81);
    v85 = objc_msgSend_numberWithInteger_(v78, v83, v82, v84);
    objc_msgSend_setValue_forKey_(v6, v86, v85, @"serverUploadStatus");
    v87 = MEMORY[0x1E696AD98];
    v91 = objc_msgSend_mediaItemSizeBytes(self, v88, v89, v90);
    v94 = objc_msgSend_numberWithUnsignedInteger_(v87, v92, v91, v93);
    objc_msgSend_setValue_forKey_(v6, v95, v94, @"mediaItemSizeBytes");
    v96 = MEMORY[0x1E696AD98];
    v100 = objc_msgSend_originalSizeBytes(self, v97, v98, v99);
    v103 = objc_msgSend_numberWithUnsignedInteger_(v96, v101, v100, v102);
    objc_msgSend_setValue_forKey_(v6, v104, v103, @"originalSizeBytes");
    v105 = MEMORY[0x1E696AD98];
    v109 = objc_msgSend_uploadAttempts(self, v106, v107, v108);
    v112 = objc_msgSend_numberWithUnsignedInteger_(v105, v110, v109, v111);
    objc_msgSend_setValue_forKey_(v6, v113, v112, @"uploadAttempts");
    v114 = MEMORY[0x1E696AD98];
    v118 = objc_msgSend_durationCopyMs(self, v115, v116, v117);
    v121 = objc_msgSend_numberWithInteger_(v114, v119, v118, v120);
    objc_msgSend_setValue_forKey_(v6, v122, v121, @"durationCopyMs");
    v123 = MEMORY[0x1E696AD98];
    v127 = objc_msgSend_durationTranscodeMs(self, v124, v125, v126);
    v130 = objc_msgSend_numberWithInteger_(v123, v128, v127, v129);
    objc_msgSend_setValue_forKey_(v6, v131, v130, @"durationTranscodeMs");
    v132 = MEMORY[0x1E696AD98];
    v136 = objc_msgSend_durationUploadMs(self, v133, v134, v135);
    v139 = objc_msgSend_numberWithInteger_(v132, v137, v136, v138);
    objc_msgSend_setValue_forKey_(v6, v140, v139, @"durationUploadMs");
    v141 = MEMORY[0x1E696AD98];
    v145 = objc_msgSend_durationEncryptionMs(self, v142, v143, v144);
    v148 = objc_msgSend_numberWithInteger_(v141, v146, v145, v147);
    objc_msgSend_setValue_forKey_(v6, v149, v148, @"durationEncryptionMs");
    v150 = MEMORY[0x1E696AD98];
    v154 = objc_msgSend_metricProcessed(self, v151, v152, v153);
    v157 = objc_msgSend_numberWithBool_(v150, v155, v154, v156);
    objc_msgSend_setValue_forKey_(v6, v158, v157, @"metricProcessed");
    v159 = MEMORY[0x1E696AD98];
    v163 = objc_msgSend_didApplyDelayMitigation(self, v160, v161, v162);
    v166 = objc_msgSend_numberWithBool_(v159, v164, v163, v165);
    objc_msgSend_setValue_forKey_(v6, v167, v166, @"didApplyDelayMitigation");
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v168 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v175 = "[CLEEDMediaItem createMediaItemDict]";
      _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil mediaItemDict, early return", buf, 0xCu);
    }

    v169 = sub_19B87DD40();
    if ((*(v169 + 160) & 0x80000000) == 0 || (*(v169 + 164) & 0x80000000) == 0 || (*(v169 + 168) & 0x80000000) == 0 || *(v169 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v172 = 136446210;
      v173 = "[CLEEDMediaItem createMediaItemDict]";
      v170 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil mediaItemDict, early return", &v172, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDMediaItem createMediaItemDict]", "CoreLocation: %s\n", v170);
      if (v170 != buf)
      {
        free(v170);
      }
    }
  }

  return v6;
}

+ (id)createMediaItemFromDict:(id)dict
{
  v191 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_valueForKey_(dict, a2, @"placeholderURL", v3);
  v6 = objc_alloc(MEMORY[0x1E695DFF8]);
  if (v5)
  {
    v9 = objc_msgSend_initWithString_(v6, v7, v5, v8);
  }

  else
  {
    v9 = objc_msgSend_initWithString_(v6, v7, &stru_1F0E6F140, v8);
  }

  v10 = v9;
  v11 = v9;
  v14 = objc_msgSend_valueForKey_(dict, v12, @"assetIdentifier", v13);
  v17 = objc_msgSend_valueForKey_(dict, v15, @"sandboxExtension", v16);
  v20 = objc_msgSend_valueForKey_(dict, v18, @"mediaType", v19);
  v24 = objc_msgSend_intValue(v20, v21, v22, v23);
  if (v10)
  {
    v25 = v17 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v26 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      v186 = "+[CLEEDMediaItem createMediaItemFromDict:]";
      v187 = 2113;
      v188 = v10;
      v189 = 2113;
      v190 = v17;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,URL:%{private}@, sandboxExtension:%{private}@,mandatory item nil, early return", buf, 0x20u);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v179 = 136446723;
      v180 = "+[CLEEDMediaItem createMediaItemFromDict:]";
      v181 = 2113;
      v182 = v10;
      v183 = 2113;
      v184 = v17;
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,URL:%{private}@, sandboxExtension:%{private}@,mandatory item nil, early return", &v179, 32);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDMediaItem createMediaItemFromDict:]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    return 0;
  }

  else
  {
    v29 = v24;
    v30 = [CLEEDMediaItem alloc];
    v32 = objc_msgSend_initWithURL_assetIdentifier_sandboxExtension_mediaType_(v30, v31, v10, v14, v17, v29);
    v35 = objc_msgSend_valueForKey_(dict, v33, @"uploadStatus", v34);
    v39 = objc_msgSend_intValue(v35, v36, v37, v38);
    objc_msgSend_setUploadStatus_(v32, v40, v39, v41);
    v44 = objc_msgSend_valueForKey_(dict, v42, @"stagingURL", v43);
    if (v44)
    {
      v47 = v44;
      v48 = objc_alloc(MEMORY[0x1E695DFF8]);
      v51 = objc_msgSend_initWithString_(v48, v49, v47, v50);
      objc_msgSend_setStagingURL_(v32, v52, v51, v53);
    }

    else
    {
      objc_msgSend_setStagingURL_(v32, v45, 0, v46);
    }

    v56 = objc_msgSend_valueForKey_(dict, v54, @"encryptedURL", v55);
    if (v56)
    {
      v59 = v56;
      v60 = objc_alloc(MEMORY[0x1E695DFF8]);
      v63 = objc_msgSend_initWithString_(v60, v61, v59, v62);
      objc_msgSend_setEncryptedFileURL_(v32, v64, v63, v65);
    }

    else
    {
      objc_msgSend_setEncryptedFileURL_(v32, v57, 0, v58);
    }

    v68 = objc_msgSend_valueForKey_(dict, v66, @"authTag", v67);
    objc_msgSend_setAuthTag_(v32, v69, v68, v70);
    v73 = objc_msgSend_valueForKey_(dict, v71, @"mediaUUID", v72);
    if (v73)
    {
      v76 = v73;
      v77 = objc_alloc(MEMORY[0x1E696AFB0]);
      v80 = objc_msgSend_initWithUUIDString_(v77, v78, v76, v79);
      objc_msgSend_setMediaItemID_(v32, v81, v80, v82);
    }

    else
    {
      objc_msgSend_setMediaItemID_(v32, v74, 0, v75);
    }

    v85 = objc_msgSend_valueForKey_(dict, v83, @"mediaItemFormat", v84);
    objc_msgSend_setMediaItemFormat_(v32, v86, v85, v87);
    v90 = objc_msgSend_valueForKey_(dict, v88, @"serverUploadStatus", v89);
    v94 = objc_msgSend_integerValue(v90, v91, v92, v93);
    objc_msgSend_setServerUploadStatus_(v32, v95, v94, v96);
    v99 = objc_msgSend_valueForKey_(dict, v97, @"mediaItemSizeBytes", v98);
    v103 = objc_msgSend_unsignedIntegerValue(v99, v100, v101, v102);
    objc_msgSend_setMediaItemSizeBytes_(v32, v104, v103, v105);
    v108 = objc_msgSend_valueForKey_(dict, v106, @"originalSizeBytes", v107);
    v112 = objc_msgSend_unsignedIntegerValue(v108, v109, v110, v111);
    objc_msgSend_setOriginalSizeBytes_(v32, v113, v112, v114);
    v117 = objc_msgSend_valueForKey_(dict, v115, @"uploadAttempts", v116);
    v121 = objc_msgSend_unsignedIntegerValue(v117, v118, v119, v120);
    objc_msgSend_setUploadAttempts_(v32, v122, v121, v123);
    v126 = objc_msgSend_valueForKey_(dict, v124, @"durationCopyMs", v125);
    v130 = objc_msgSend_integerValue(v126, v127, v128, v129);
    objc_msgSend_setDurationCopyMs_(v32, v131, v130, v132);
    v135 = objc_msgSend_valueForKey_(dict, v133, @"durationTranscodeMs", v134);
    v139 = objc_msgSend_integerValue(v135, v136, v137, v138);
    objc_msgSend_setDurationTranscodeMs_(v32, v140, v139, v141);
    v144 = objc_msgSend_valueForKey_(dict, v142, @"durationUploadMs", v143);
    v148 = objc_msgSend_integerValue(v144, v145, v146, v147);
    objc_msgSend_setDurationUploadMs_(v32, v149, v148, v150);
    v153 = objc_msgSend_valueForKey_(dict, v151, @"durationEncryptionMs", v152);
    v157 = objc_msgSend_integerValue(v153, v154, v155, v156);
    objc_msgSend_setDurationEncryptionMs_(v32, v158, v157, v159);
    v162 = objc_msgSend_valueForKey_(dict, v160, @"metricProcessed", v161);
    v166 = objc_msgSend_BOOLValue(v162, v163, v164, v165);
    objc_msgSend_setMetricProcessed_(v32, v167, v166, v168);
    v171 = objc_msgSend_valueForKey_(dict, v169, @"didApplyDelayMitigation", v170);
    v175 = objc_msgSend_BOOLValue(v171, v172, v173, v174);
    objc_msgSend_setDidApplyDelayMitigation_(v32, v176, v175, v177);
  }

  return v32;
}

@end