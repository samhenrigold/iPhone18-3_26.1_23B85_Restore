@interface CLLocationTrackRunInfo
- ($B829D7361B4C947FBEDB7938E147A070)lapInfo;
- (CLLocationTrackRunInfo)initWithCoder:(id)coder;
- (CLLocationTrackRunInfo)initWithLapInfo:(id *)info laneNumber:(int64_t)number laneCount:(int64_t)count trackId:(id)id estimatedLaneNumber:(int64_t)laneNumber estimatedLaneConfidence:(int)confidence trackProximity:(int)proximity;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationTrackRunInfo

- (void)dealloc
{
  self->_trackId = 0;
  v3.receiver = self;
  v3.super_class = CLLocationTrackRunInfo;
  [(CLLocationTrackRunInfo *)&v3 dealloc];
}

- (CLLocationTrackRunInfo)initWithLapInfo:(id *)info laneNumber:(int64_t)number laneCount:(int64_t)count trackId:(id)id estimatedLaneNumber:(int64_t)laneNumber estimatedLaneConfidence:(int)confidence trackProximity:(int)proximity
{
  v21.receiver = self;
  v21.super_class = CLLocationTrackRunInfo;
  v15 = [(CLLocationTrackRunInfo *)&v21 init];
  v16 = v15;
  if (v15)
  {
    *&v15->_lapInfo.lapCount = *&info->var0;
    v17 = *&info->var2;
    v18 = *&info->var4;
    v19 = *&info->var7;
    v15->_lapInfo.previousLapPositionAtCompletionInDegrees = info->var6;
    *&v15->_lapInfo.currentTrackRunSessionDurationInSeconds = v19;
    *&v15->_lapInfo.currentLapDurationInSeconds = v17;
    *&v15->_lapInfo.previousLapDurationInSeconds = v18;
    v15->_laneNumber = number;
    v15->_laneCount = count;
    v15->_trackId = id;
    v16->_estimatedLaneNumber = laneNumber;
    v16->_estimatedLaneConfidence = confidence;
    v16->_trackProximity = proximity;
  }

  return v16;
}

- (CLLocationTrackRunInfo)initWithCoder:(id)coder
{
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v62 = -1;
  v63 = -1;
  v60 = -1;
  v61 = 0;
  v59 = 0;
  if (!objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, "i", &v64);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v39, "d", &v64 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v40, "d", &v65);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v41, "d", &v65 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v42, "d", &v66);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v43, "d", &v66 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v44, "d", &v67);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v45, "d", &v67 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v46, "d", &v68);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v47, "d", &v68 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v48, "i", &v63);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v49, "i", &v62);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v50, "@", &v61);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v51, "i", &v60);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v52, "i", &v59 + 4);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v53, "i", &v59);
    v29 = v62;
    v26 = v63;
    v35 = v60;
    v32 = v61;
    v56 = v59;
    v55 = HIDWORD(v59);
    goto LABEL_17;
  }

  LODWORD(v64) = objc_msgSend_decodeIntForKey_(coder, v5, @"trackRunLapCount");
  objc_msgSend_decodeDoubleForKey_(coder, v6, @"trackRunCurrentLapStartTime");
  *(&v64 + 1) = v7;
  objc_msgSend_decodeDoubleForKey_(coder, v8, @"trackRunCurrentLapDurationInSeconds");
  *&v65 = v9;
  objc_msgSend_decodeDoubleForKey_(coder, v10, @"trackRunCurrentLapDistanceInMeters");
  *(&v65 + 1) = v11;
  objc_msgSend_decodeDoubleForKey_(coder, v12, @"trackRunPreviousLapDurationInSeconds");
  *&v66 = v13;
  objc_msgSend_decodeDoubleForKey_(coder, v14, @"trackRunPreviousLapDistanceInMeters");
  *(&v66 + 1) = v15;
  objc_msgSend_decodeDoubleForKey_(coder, v16, @"trackRunPreviousLapPositionAtCompletionInDegreesLatitude");
  *&v67 = v17;
  objc_msgSend_decodeDoubleForKey_(coder, v18, @"trackRunPreviousLapPositionAtCompletionInDegreesLongitude");
  *(&v67 + 1) = v19;
  objc_msgSend_decodeDoubleForKey_(coder, v20, @"trackRunCurrentTrackRunSessionDurationInSeconds");
  *&v68 = v21;
  objc_msgSend_decodeDoubleForKey_(coder, v22, @"trackRunCurrentTrackRunSessionDistanceInMeters");
  *(&v68 + 1) = v23;
  v25 = objc_msgSend_decodeIntForKey_(coder, v24, @"trackRunLaneNumber");
  v26 = v25;
  v63 = v25;
  v28 = objc_msgSend_decodeIntForKey_(coder, v27, @"trackRunLaneCount");
  v29 = v28;
  v62 = v28;
  v30 = objc_opt_class();
  v32 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v31, v30, @"trackRunTrackId");
  v61 = v32;
  v34 = objc_msgSend_decodeIntForKey_(coder, v33, @"trackRunEstimatedLaneNumber");
  v35 = v34;
  v60 = v34;
  v37 = objc_msgSend_decodeIntForKey_(coder, v36, @"trackRunEstimatedLaneConfidence");
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      if (v37 != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      HIDWORD(v59) = 0;
    }

    HIDWORD(v59) = 1;
  }

  HIDWORD(v59) = 2;
LABEL_13:
  HIDWORD(v59) = 3;
LABEL_14:
  HIDWORD(v59) = 0;
  if (objc_msgSend_decodeIntForKey_(coder, v38, @"trackRunTrackProximity") <= 1)
  {
    LODWORD(v59) = 1;
  }

  v56 = 0;
  v55 = 0;
  LODWORD(v59) = 0;
LABEL_17:
  v58[2] = v66;
  v58[3] = v67;
  v58[4] = v68;
  v58[0] = v64;
  v58[1] = v65;
  return objc_msgSend_initWithLapInfo_laneNumber_laneCount_trackId_estimatedLaneNumber_estimatedLaneConfidence_trackProximity_(self, v54, v58, v26, v29, v32, v35, v55, v56);
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeInt_forKey_(coder, v5, self->_lapInfo.lapCount, @"trackRunLapCount");
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"trackRunCurrentLapStartTime", self->_lapInfo.currentLapStartTime);
    objc_msgSend_encodeDouble_forKey_(coder, v7, @"trackRunCurrentLapDurationInSeconds", self->_lapInfo.currentLapDurationInSeconds);
    objc_msgSend_encodeDouble_forKey_(coder, v8, @"trackRunCurrentLapDistanceInMeters", self->_lapInfo.currentLapDistanceInMeters);
    objc_msgSend_encodeDouble_forKey_(coder, v9, @"trackRunPreviousLapDurationInSeconds", self->_lapInfo.previousLapDurationInSeconds);
    objc_msgSend_encodeDouble_forKey_(coder, v10, @"trackRunPreviousLapDistanceInMeters", self->_lapInfo.previousLapDistanceInMeters);
    objc_msgSend_encodeDouble_forKey_(coder, v11, @"trackRunPreviousLapPositionAtCompletionInDegreesLatitude", self->_lapInfo.previousLapPositionAtCompletionInDegrees.latitude);
    objc_msgSend_encodeDouble_forKey_(coder, v12, @"trackRunPreviousLapPositionAtCompletionInDegreesLongitude", self->_lapInfo.previousLapPositionAtCompletionInDegrees.longitude);
    objc_msgSend_encodeDouble_forKey_(coder, v13, @"trackRunCurrentTrackRunSessionDurationInSeconds", self->_lapInfo.currentTrackRunSessionDurationInSeconds);
    objc_msgSend_encodeDouble_forKey_(coder, v14, @"trackRunCurrentTrackRunSessionDistanceInMeters", self->_lapInfo.currentTrackRunSessionDistanceInMeters);
    objc_msgSend_encodeInt_forKey_(coder, v15, LODWORD(self->_laneNumber), @"trackRunLaneNumber");
    objc_msgSend_encodeInt_forKey_(coder, v16, LODWORD(self->_laneCount), @"trackRunLaneCount");
    objc_msgSend_encodeObject_forKey_(coder, v17, self->_trackId, @"trackRunTrackId");
    objc_msgSend_encodeInt_forKey_(coder, v18, LODWORD(self->_estimatedLaneNumber), @"trackRunEstimatedLaneNumber");
    objc_msgSend_encodeInt_forKey_(coder, v19, self->_estimatedLaneConfidence, @"trackRunEstimatedLaneConfidence");
    trackProximity = self->_trackProximity;

    objc_msgSend_encodeInt_forKey_(coder, v20, trackProximity, @"trackRunTrackProximity");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "i", &self->_lapInfo);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v22, "d", &self->_lapInfo.currentLapStartTime);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v23, "d", &self->_lapInfo.currentLapDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v24, "d", &self->_lapInfo.currentLapDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v25, "d", &self->_lapInfo.previousLapDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v26, "d", &self->_lapInfo.previousLapDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v27, "d", &self->_lapInfo.previousLapPositionAtCompletionInDegrees);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v28, "d", &self->_lapInfo.previousLapPositionAtCompletionInDegrees.longitude);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v29, "d", &self->_lapInfo.currentTrackRunSessionDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v30, "d", &self->_lapInfo.currentTrackRunSessionDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v31, "i", &self->_laneNumber);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v32, "i", &self->_laneCount);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v33, "@", &self->_trackId);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v34, "i", &self->_estimatedLaneNumber);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v35, "i", &self->_estimatedLaneConfidence);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v36, "i", &self->_trackProximity);
  }
}

- ($B829D7361B4C947FBEDB7938E147A070)lapInfo
{
  v3 = *&self[1].var2;
  *&retstr->var4 = *&self[1].var0;
  retstr->var6 = v3;
  *&retstr->var7 = *&self[1].var4;
  v4 = *&self->var7;
  *&retstr->var0 = self->var6;
  *&retstr->var2 = v4;
  return self;
}

@end