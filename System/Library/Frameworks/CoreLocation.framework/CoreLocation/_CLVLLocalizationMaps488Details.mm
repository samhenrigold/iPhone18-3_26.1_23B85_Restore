@interface _CLVLLocalizationMaps488Details
- (BOOL)setFrameCount:(unint64_t)count perFrameVioStatusCodes:(const int *)codes perFrameVioPoses:(const float *)poses perFrameCalibrationMatrices:(const float *)matrices perFrameDistortion:(const float *)distortion;
- (BOOL)setInliersCount:(unint64_t)count points2D:(const float *)d points3D:(const double *)points3D inlierIndices:(const int *)indices;
- (BOOL)setSlamTracksCount:(unint64_t)count slamTracks:(const float *)tracks descriptorDimension:(unint64_t)dimension slamTrackDescriptors:(const char *)descriptors slamTrackObservations:(const signed __int16 *)observations slamTracks2D:(const float *)d slamTrackImageIndices:(const signed __int16 *)indices;
- (_CLVLLocalizationMaps488Details)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetFrames;
- (void)resetInliers;
- (void)resetSlamTracks;
- (void)setResultPoseRotation:(const double *)rotation;
- (void)setResultPoseTranslation:(const double *)translation;
- (void)setSlamOrigin:(const double *)origin;
@end

@implementation _CLVLLocalizationMaps488Details

- (void)dealloc
{
  objc_msgSend_resetInliers(self, a2, v2, v3);
  objc_msgSend_resetSlamTracks(self, v5, v6, v7);
  objc_msgSend_resetFrames(self, v8, v9, v10);
  v11.receiver = self;
  v11.super_class = _CLVLLocalizationMaps488Details;
  [(_CLVLLocalizationMaps488Details *)&v11 dealloc];
}

- (void)resetInliers
{
  points2D = self->_points2D;
  if (points2D)
  {
    free(points2D);
    self->_points2D = 0;
  }

  points3D = self->_points3D;
  if (points3D)
  {
    free(points3D);
    self->_points3D = 0;
  }

  inlierIndices = self->_inlierIndices;
  if (inlierIndices)
  {
    free(inlierIndices);
    self->_inlierIndices = 0;
  }

  self->_inliersCount = 0;
}

- (void)resetSlamTracks
{
  slamTracks = self->_slamTracks;
  if (slamTracks)
  {
    free(slamTracks);
    self->_slamTracks = 0;
  }

  slamTrackDescriptors = self->_slamTrackDescriptors;
  if (slamTrackDescriptors)
  {
    free(slamTrackDescriptors);
    self->_slamTrackDescriptors = 0;
  }

  slamTrackObservations = self->_slamTrackObservations;
  if (slamTrackObservations)
  {
    free(slamTrackObservations);
    self->_slamTrackObservations = 0;
  }

  slamTracks2D = self->_slamTracks2D;
  if (slamTracks2D)
  {
    free(slamTracks2D);
    self->_slamTracks2D = 0;
  }

  slamTrackImageIndices = self->_slamTrackImageIndices;
  if (slamTrackImageIndices)
  {
    free(slamTrackImageIndices);
    self->_slamTrackImageIndices = 0;
  }

  self->_slamTracksCount = 0;
  self->_descriptorDimension = 0;
  self->_totalObservationsCount = 0;
}

- (void)resetFrames
{
  perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
  if (perFrameVioStatusCodes)
  {
    free(perFrameVioStatusCodes);
    self->_perFrameVioStatusCodes = 0;
  }

  perFrameVioPoses = self->_perFrameVioPoses;
  if (perFrameVioPoses)
  {
    free(perFrameVioPoses);
    self->_perFrameVioPoses = 0;
  }

  perFrameCalibrationMatrices = self->_perFrameCalibrationMatrices;
  if (perFrameCalibrationMatrices)
  {
    free(perFrameCalibrationMatrices);
    self->_perFrameCalibrationMatrices = 0;
  }

  perFrameDistortion = self->_perFrameDistortion;
  if (perFrameDistortion)
  {
    free(perFrameDistortion);
    self->_perFrameDistortion = 0;
  }

  self->_frameCount = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  if (objc_msgSend_setInliersCount_points2D_points3D_inlierIndices_(v12, v13, self->_inliersCount, self->_points2D, self->_points3D, self->_inlierIndices) & 1) != 0 && (v15 = *self->_slamOrigin, v16 = *&self->_slamOrigin[2], *(v12 + 40) = *&self->_slamOrigin[4], *(v12 + 24) = v16, *(v12 + 8) = v15, (objc_msgSend_setSlamTracksCount_slamTracks_descriptorDimension_slamTrackDescriptors_slamTrackObservations_slamTracks2D_slamTrackImageIndices_(v12, v14, self->_slamTracksCount, self->_slamTracks, self->_descriptorDimension, self->_slamTrackDescriptors, self->_slamTrackObservations, self->_slamTracks2D, self->_slamTrackImageIndices)) && (objc_msgSend_setFrameCount_perFrameVioStatusCodes_perFrameVioPoses_perFrameCalibrationMatrices_perFrameDistortion_(v12, v17, self->_frameCount, self->_perFrameVioStatusCodes, self->_perFrameVioPoses, self->_perFrameCalibrationMatrices, self->_perFrameDistortion))
  {
    *(v12 + 56) = *&self->_resultPoseRotation[0][0];
    v18 = *&self->_resultPoseRotation[0][2];
    v19 = *&self->_resultPoseRotation[1][1];
    v20 = *&self->_resultPoseRotation[2][0];
    *(v12 + 120) = self->_resultPoseRotation[2][2];
    *(v12 + 104) = v20;
    *(v12 + 88) = v19;
    *(v12 + 72) = v18;
    v21 = *self->_resultPoseTranslation;
    *(v12 + 144) = self->_resultPoseTranslation[2];
    *(v12 + 128) = v21;
  }

  else
  {

    return 0;
  }

  return v12;
}

- (_CLVLLocalizationMaps488Details)initWithCoder:(id)coder
{
  v70.receiver = self;
  v70.super_class = _CLVLLocalizationMaps488Details;
  v5 = [(_CLVLLocalizationMaps488Details *)&v70 init];
  if (v5)
  {
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v6 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v4, @"points2D", &v69);
    v8 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v7, @"points3D", &v68);
    v10 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v9, @"inlierIndices", &v67);
    v12 = v67 >> 2;
    if (v69 != 8 * (v67 >> 2))
    {
      goto LABEL_22;
    }

    if (v68 != 24 * v12)
    {
      goto LABEL_22;
    }

    if ((objc_msgSend_setInliersCount_points2D_points3D_inlierIndices_(v5, v11, v12, v6, v8, v10) & 1) == 0)
    {
      goto LABEL_22;
    }

    v66 = 0;
    v14 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v13, @"slamOrigin", &v66);
    if (v66 != 48)
    {
      goto LABEL_22;
    }

    v17 = *v14;
    v18 = v14[1];
    *(v5 + 40) = v14[2];
    *(v5 + 24) = v18;
    *(v5 + 8) = v17;
    v19 = objc_msgSend_decodeIntegerForKey_(coder, v15, @"descriptorDimension", v16);
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v21 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v20, @"slamTracks", &v65);
    v23 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v22, @"slamTrackDescriptors", &v64);
    v25 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v24, @"slamTrackObservations", &v63);
    v27 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v26, @"slamTracks2D", &v62);
    v29 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v28, @"slamTrackImageIndices", &v61);
    v31 = 0;
    v32 = v63 >> 1;
    if (v25 && v63 >= 2)
    {
      v31 = 0;
      v33 = v25;
      v34 = v63 >> 1;
      do
      {
        v35 = *v33++;
        v31 += v35;
        --v34;
      }

      while (v34);
    }

    if (v65 == 12 * v32 && v64 == v32 * v19 && v62 == 8 * v31 && v61 == 2 * v31 && (objc_msgSend_setSlamTracksCount_slamTracks_descriptorDimension_slamTrackDescriptors_slamTrackObservations_slamTracks2D_slamTrackImageIndices_(v5, v30, v32, v21, v19, v23, v25, v27, v29) & 1) != 0 && (v59 = 0, v60 = 0, v57 = 0, v58 = 0, v37 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v36, @"perFrameVioStatusCodes", &v60), v39 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v38, @"perFrameVioPoses", &v59), v41 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v40, @"perFrameCalibrationMatrices", &v58), v43 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v42, @"perFrameDistortion", &v57), v45 = v60 >> 2, v59 == 48 * (v60 >> 2)) && v58 == 36 * v45 && v57 == 8 * v45 && (objc_msgSend_setFrameCount_perFrameVioStatusCodes_perFrameVioPoses_perFrameCalibrationMatrices_perFrameDistortion_(v5, v44, v45, v37, v39, v41, v43) & 1) != 0 && (v55 = 0, v56 = 0, v47 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v46, @"resultPoseRotation", &v56), v49 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v48, @"resultPoseTranslation", &v55), v56 == 72) && v55 == 24)
    {
      *(v5 + 56) = *v47;
      v50 = *(v47 + 16);
      v51 = *(v47 + 32);
      v52 = *(v47 + 48);
      *(v5 + 15) = *(v47 + 64);
      *(v5 + 104) = v52;
      *(v5 + 88) = v51;
      *(v5 + 72) = v50;
      v53 = *v49;
      *(v5 + 18) = *(v49 + 16);
      *(v5 + 8) = v53;
    }

    else
    {
LABEL_22:

      return 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inliersCount = self->_inliersCount;
  if (inliersCount)
  {
    v6 = 24 * inliersCount;
    v7 = 4 * inliersCount;
    objc_msgSend_encodeBytes_length_forKey_(coder, a2, self->_points2D, 8 * inliersCount, @"points2D");
    objc_msgSend_encodeBytes_length_forKey_(coder, v8, self->_points3D, v6, @"points3D");
    objc_msgSend_encodeBytes_length_forKey_(coder, v9, self->_inlierIndices, v7, @"inlierIndices");
  }

  objc_msgSend_encodeBytes_length_forKey_(coder, a2, self->_slamOrigin, 48, @"slamOrigin");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_descriptorDimension, @"descriptorDimension");
  slamTracksCount = self->_slamTracksCount;
  if (slamTracksCount)
  {
    v13 = 12 * slamTracksCount;
    v14 = self->_descriptorDimension * slamTracksCount;
    v15 = 2 * slamTracksCount;
    totalObservationsCount = self->_totalObservationsCount;
    v17 = 8 * totalObservationsCount;
    v18 = 2 * totalObservationsCount;
    objc_msgSend_encodeBytes_length_forKey_(coder, v11, self->_slamTracks, v13, @"slamTracks");
    objc_msgSend_encodeBytes_length_forKey_(coder, v19, self->_slamTrackDescriptors, v14, @"slamTrackDescriptors");
    objc_msgSend_encodeBytes_length_forKey_(coder, v20, self->_slamTrackObservations, v15, @"slamTrackObservations");
    objc_msgSend_encodeBytes_length_forKey_(coder, v21, self->_slamTracks2D, v17, @"slamTracks2D");
    objc_msgSend_encodeBytes_length_forKey_(coder, v22, self->_slamTrackImageIndices, v18, @"slamTrackImageIndices");
  }

  frameCount = self->_frameCount;
  if (frameCount)
  {
    v24 = 48 * frameCount;
    v25 = 36 * frameCount;
    v26 = 8 * frameCount;
    objc_msgSend_encodeBytes_length_forKey_(coder, v11, self->_perFrameVioStatusCodes, 4 * frameCount, @"perFrameVioStatusCodes");
    objc_msgSend_encodeBytes_length_forKey_(coder, v27, self->_perFrameVioPoses, v24, @"perFrameVioPoses");
    objc_msgSend_encodeBytes_length_forKey_(coder, v28, self->_perFrameCalibrationMatrices, v25, @"perFrameCalibrationMatrices");
    objc_msgSend_encodeBytes_length_forKey_(coder, v29, self->_perFrameDistortion, v26, @"perFrameDistortion");
  }

  objc_msgSend_encodeBytes_length_forKey_(coder, v11, self->_resultPoseRotation, 72, @"resultPoseRotation");

  objc_msgSend_encodeBytes_length_forKey_(coder, v30, self->_resultPoseTranslation, 24, @"resultPoseTranslation");
}

- (BOOL)setInliersCount:(unint64_t)count points2D:(const float *)d points3D:(const double *)points3D inlierIndices:(const int *)indices
{
  if (!count)
  {
    objc_msgSend_resetInliers(self, a2, 0, d, points3D, indices);
    return 1;
  }

  result = 0;
  if (d && points3D && indices)
  {
    v12 = 8 * count;
    v13 = 24 * count;
    v14 = 4 * count;
    if (self->_inliersCount == count)
    {
      points2D = self->_points2D;
    }

    else
    {
      objc_msgSend_resetInliers(self, a2, count, d);
      self->_points2D = malloc_type_malloc(v12, 0x303EF85FuLL);
      self->_points3D = malloc_type_malloc(v13, 0xD251BDE1uLL);
      v19 = malloc_type_malloc(v14, 0x2972170CuLL);
      self->_inlierIndices = v19;
      points2D = self->_points2D;
      if (!points2D || !self->_points3D || !v19)
      {
        objc_msgSend_resetInliers(self, v16, v17, v18);
        return 0;
      }
    }

    self->_inliersCount = count;
    memcpy(points2D, d, v12);
    memcpy(self->_points3D, points3D, v13);
    memcpy(self->_inlierIndices, indices, v14);
    return 1;
  }

  return result;
}

- (BOOL)setSlamTracksCount:(unint64_t)count slamTracks:(const float *)tracks descriptorDimension:(unint64_t)dimension slamTrackDescriptors:(const char *)descriptors slamTrackObservations:(const signed __int16 *)observations slamTracks2D:(const float *)d slamTrackImageIndices:(const signed __int16 *)indices
{
  if (count && observations)
  {
    v16 = 0;
    observationsCopy = observations;
    countCopy = count;
    do
    {
      v19 = *observationsCopy++;
      v16 += v19;
      --countCopy;
    }

    while (countCopy);
    if (!tracks)
    {
      return 0;
    }
  }

  else
  {
    if (!count)
    {
      objc_msgSend_resetSlamTracks(self, a2, 0, tracks);
      self->_descriptorDimension = dimension;
      return 1;
    }

    v16 = 0;
    if (!tracks)
    {
      return 0;
    }
  }

  result = 0;
  if (descriptors)
  {
    v21 = 1;
  }

  else
  {
    v21 = dimension == 0;
  }

  if (v21 && observations)
  {
    if (indices)
    {
      v22 = d == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 && v16)
    {
      return 0;
    }

    __n = dimension * count;
    size = 12 * count;
    if (self->_slamTracksCount == count)
    {
      goto LABEL_22;
    }

    slamTracks = self->_slamTracks;
    if (slamTracks)
    {
      free(slamTracks);
      self->_slamTracks = 0;
    }

    slamTrackObservations = self->_slamTrackObservations;
    if (slamTrackObservations)
    {
      free(slamTrackObservations);
      self->_slamTrackObservations = 0;
    }

    self->_slamTracks = malloc_type_malloc(size, 0x76E5DF4AuLL);
    v25 = malloc_type_malloc(2 * count, 0x73E6CB26uLL);
    self->_slamTrackObservations = v25;
    if (!self->_slamTracks || !v25)
    {
      goto LABEL_44;
    }

    if (self->_slamTracksCount == count)
    {
LABEL_22:
      if (self->_descriptorDimension == dimension)
      {
        goto LABEL_35;
      }
    }

    slamTrackDescriptors = self->_slamTrackDescriptors;
    if (slamTrackDescriptors)
    {
      free(slamTrackDescriptors);
      self->_slamTrackDescriptors = 0;
    }

    v30 = malloc_type_malloc(__n, 0x4BEC6408uLL);
    self->_slamTrackDescriptors = v30;
    if (v30)
    {
LABEL_35:
      v34 = 2 * count;
      v35 = 2 * v16;
      if (self->_totalObservationsCount == v16)
      {
        goto LABEL_42;
      }

      slamTracks2D = self->_slamTracks2D;
      if (slamTracks2D)
      {
        free(slamTracks2D);
        self->_slamTracks2D = 0;
      }

      slamTrackImageIndices = self->_slamTrackImageIndices;
      if (slamTrackImageIndices)
      {
        free(slamTrackImageIndices);
        self->_slamTrackImageIndices = 0;
      }

      self->_slamTracks2D = malloc_type_malloc(8 * v16, 0x169D026CuLL);
      v33 = malloc_type_malloc(v35, 0x4629F188uLL);
      self->_slamTrackImageIndices = v33;
      if (self->_slamTracks2D)
      {
        if (v33)
        {
LABEL_42:
          self->_slamTracksCount = count;
          self->_descriptorDimension = dimension;
          self->_totalObservationsCount = v16;
          memcpy(self->_slamTracks, tracks, size);
          memcpy(self->_slamTrackDescriptors, descriptors, __n);
          memcpy(self->_slamTrackObservations, observations, v34);
          memcpy(self->_slamTracks2D, d, 8 * v16);
          memcpy(self->_slamTrackImageIndices, indices, v35);
          return 1;
        }
      }
    }

LABEL_44:
    objc_msgSend_resetSlamTracks(self, v26, v27, v28, v34);
    return 0;
  }

  return result;
}

- (BOOL)setFrameCount:(unint64_t)count perFrameVioStatusCodes:(const int *)codes perFrameVioPoses:(const float *)poses perFrameCalibrationMatrices:(const float *)matrices perFrameDistortion:(const float *)distortion
{
  if (!count)
  {
    objc_msgSend_resetFrames(self, a2, 0, codes, poses, matrices, distortion);
    return 1;
  }

  result = 0;
  if (codes && poses && matrices && distortion)
  {
    v14 = 4 * count;
    v15 = 48 * count;
    v16 = 36 * count;
    v17 = 8 * count;
    if (self->_frameCount == count)
    {
      perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
    }

    else
    {
      objc_msgSend_resetFrames(self, a2, count, codes);
      self->_perFrameVioStatusCodes = malloc_type_malloc(v14, 0xEDE8546uLL);
      self->_perFrameVioPoses = malloc_type_malloc(v15, 0x66CAF0BBuLL);
      self->_perFrameCalibrationMatrices = malloc_type_malloc(v16, 0xA59785B3uLL);
      v22 = malloc_type_malloc(v17, 0x2DEFBBFDuLL);
      self->_perFrameDistortion = v22;
      perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
      if (!perFrameVioStatusCodes || !self->_perFrameVioPoses || !self->_perFrameCalibrationMatrices || !v22)
      {
        objc_msgSend_resetFrames(self, v19, v20, v21);
        return 0;
      }
    }

    self->_frameCount = count;
    memcpy(perFrameVioStatusCodes, codes, v14);
    memcpy(self->_perFrameVioPoses, poses, v15);
    memcpy(self->_perFrameCalibrationMatrices, matrices, v16);
    memcpy(self->_perFrameDistortion, distortion, v17);
    return 1;
  }

  return result;
}

- (void)setSlamOrigin:(const double *)origin
{
  v3 = *origin;
  v4 = *(origin + 1);
  *&self->_slamOrigin[4] = *(origin + 2);
  *&self->_slamOrigin[2] = v4;
  *self->_slamOrigin = v3;
}

- (void)setResultPoseRotation:(const double *)rotation
{
  *&self->_resultPoseRotation[0][0] = *rotation;
  v3 = *(rotation + 1);
  v4 = *(rotation + 2);
  v5 = *(rotation + 3);
  self->_resultPoseRotation[2][2] = rotation[8];
  *&self->_resultPoseRotation[2][0] = v5;
  *&self->_resultPoseRotation[1][1] = v4;
  *&self->_resultPoseRotation[0][2] = v3;
}

- (void)setResultPoseTranslation:(const double *)translation
{
  v3 = *translation;
  self->_resultPoseTranslation[2] = translation[2];
  *self->_resultPoseTranslation = v3;
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v191 = objc_msgSend_stringByAppendingString_(indent, a2, @"\t", endIndent);
  v200 = MEMORY[0x1E696AEC0];
  v199 = objc_msgSend_inliersCount(self, v6, v7, v8);
  v198 = objc_msgSend_points2D(self, v9, v10, v11);
  v197 = 2 * objc_msgSend_inliersCount(self, v12, v13, v14);
  v196 = objc_msgSend_points3D(self, v15, v16, v17);
  v195 = 3 * objc_msgSend_inliersCount(self, v18, v19, v20);
  v194 = objc_msgSend_inlierIndices(self, v21, v22, v23);
  v193 = objc_msgSend_inliersCount(self, v24, v25, v26);
  v192 = objc_msgSend_slamOrigin(self, v27, v28, v29);
  v190 = *objc_msgSend_slamOrigin(self, v30, v31, v32);
  v189 = *(objc_msgSend_slamOrigin(self, v33, v34, v35) + 8);
  v188 = *(objc_msgSend_slamOrigin(self, v36, v37, v38) + 16);
  v187 = *(objc_msgSend_slamOrigin(self, v39, v40, v41) + 24);
  v186 = *(objc_msgSend_slamOrigin(self, v42, v43, v44) + 32);
  v185 = *(objc_msgSend_slamOrigin(self, v45, v46, v47) + 40);
  v184 = objc_msgSend_slamTracksCount(self, v48, v49, v50);
  v183 = objc_msgSend_slamTracks(self, v51, v52, v53);
  v182 = 3 * objc_msgSend_slamTracksCount(self, v54, v55, v56);
  v181 = objc_msgSend_descriptorDimension(self, v57, v58, v59);
  v180 = objc_msgSend_slamTrackDescriptors(self, v60, v61, v62);
  v66 = objc_msgSend_descriptorDimension(self, v63, v64, v65);
  v179 = objc_msgSend_slamTracksCount(self, v67, v68, v69) * v66;
  v178 = objc_msgSend_slamTrackObservations(self, v70, v71, v72);
  v177 = objc_msgSend_slamTracksCount(self, v73, v74, v75);
  v176 = objc_msgSend_slamTracks2D(self, v76, v77, v78);
  v175 = 2 * objc_msgSend_totalObservationsCount(self, v79, v80, v81);
  v174 = objc_msgSend_slamTrackImageIndices(self, v82, v83, v84);
  v173 = objc_msgSend_totalObservationsCount(self, v85, v86, v87);
  v172 = objc_msgSend_frameCount(self, v88, v89, v90);
  v171 = objc_msgSend_perFrameVioStatusCodes(self, v91, v92, v93);
  v170 = objc_msgSend_frameCount(self, v94, v95, v96);
  v100 = objc_msgSend_perFrameVioPoses(self, v97, v98, v99);
  v104 = 12 * objc_msgSend_frameCount(self, v101, v102, v103);
  v108 = objc_msgSend_perFrameCalibrationMatrices(self, v105, v106, v107);
  v112 = 9 * objc_msgSend_frameCount(self, v109, v110, v111);
  v116 = objc_msgSend_perFrameDistortion(self, v113, v114, v115);
  v120 = 2 * objc_msgSend_frameCount(self, v117, v118, v119);
  v124 = objc_msgSend_resultPoseRotation(self, v121, v122, v123);
  v169 = *objc_msgSend_resultPoseRotation(self, v125, v126, v127);
  v168 = *(objc_msgSend_resultPoseRotation(self, v128, v129, v130) + 8);
  v167 = *(objc_msgSend_resultPoseRotation(self, v131, v132, v133) + 16);
  objc_msgSend_resultPoseRotation(self, v134, v135, v136);
  objc_msgSend_resultPoseRotation(self, v137, v138, v139);
  objc_msgSend_resultPoseRotation(self, v140, v141, v142);
  objc_msgSend_resultPoseRotation(self, v143, v144, v145);
  objc_msgSend_resultPoseRotation(self, v146, v147, v148);
  objc_msgSend_resultPoseRotation(self, v149, v150, v151);
  objc_msgSend_resultPoseTranslation(self, v152, v153, v154);
  objc_msgSend_resultPoseTranslation(self, v155, v156, v157);
  objc_msgSend_resultPoseTranslation(self, v158, v159, v160);
  objc_msgSend_resultPoseTranslation(self, v161, v162, v163);
  return objc_msgSend_stringWithFormat_(v200, v164, @"<_CLVLLocalizationMaps488Details: %p> {\n%@.inliersCount = %zu,\n%@.points2D = <float: %p> {length = %zu},\n%@.points3D = <double: %p> {length = %zu},\n%@.inlierIndices = <int: %p> {length = %zu},\n%@.slamOrigin = <double: %p> {length = 6, values = [%f, %f, %f, %f, %f, %f]},\n%@.slamTracksCount = %zu,\n%@.slamTracks = <float: %p> {length = %zu},\n%@.descriptorDimension = %zu,\n%@.slamTrackDescriptors = <unsigned char: %p> {length = %zu},\n%@.slamTrackObservations = <short: %p> {length = %zu},\n%@.slamTracks2D = <float: %p> {length = %zu},\n%@.slamTrackImageIndices = <short: %p> {length = %zu},\n%@.frameCount = %zu,\n%@.perFrameVioStatusCodes = <int: %p> {length = %zu},\n%@.perFrameVioPoses = <float: %p> {length = %zu},\n%@.perFrameCalibrationMatrices = <float: %p> {length = %zu},\n%@.perFrameDistortion = <float: %p> {length = %zu},\n%@.resultPoseRotation = <double: %p> {length = 9, values = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f]},\n%@.resultPoseTranslation = <double: %p> {length = 3, values = [%f, %f, %f]}\n%@}", v165, self, indent, v199, indent, v198, v197, indent, v196, v195, indent, v194, v193, indent, v192, v190, v189, v188, v187, v186, v185, indent, v184, indent, v183, v182, indent, v181, indent, v180, v179, indent, v178, v177, indent, v176, v175, indent, v174, v173, indent, v172, indent, v171, v170, indent, v100, v104, indent, v108, v112, indent, v116, v120, indent, v124, v169, v168, v167, v191);
}

@end