@interface PPTopicTransform
- (PPTopicTransform)initWithPath:(id)path mappingId:(id)id;
- (id)QIDWeightsWithMappedTopicIdentifier:(id)identifier;
- (id)payloadForTopic:(unsigned int)topic;
- (void)_applyScaling:(uint64_t)scaling vectorLength:(int)length scalingType:(float)type scalingFactor:;
- (void)_enumerateSparseColumnAtIndex:(void *)index block:;
- (void)addBias:(float *)bias;
- (void)addWeightedTopicScoreToBuffer:(float *)buffer countNonZeroComponentsInBuffer:(unsigned __int16 *)inBuffer qid:(unsigned int)qid score:(float)score;
- (void)addWeightedTopicScoreToBuffer:(float *)buffer qid:(unsigned int)qid score:(float)score;
- (void)applyFeatureNormalization:(float *)normalization vectorLength:(int)length;
- (void)applyFeatureSmoothing:(float *)smoothing vectorLength:(int)length;
- (void)applyOutputActivation:(float *)activation;
- (void)applyOutputAttenuation:(float *)attenuation nonzeroCounts:(unsigned __int16 *)counts;
@end

@implementation PPTopicTransform

- (void)applyOutputAttenuation:(float *)attenuation nonzeroCounts:(unsigned __int16 *)counts
{
  if (self->_attenuationFactor != 0.0 && [(PPTopicTransform *)self outputTopicCount])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      if (counts[v7])
      {
        v10 = pow(counts[v7], 1.0 / self->_attenuationFactor);
        *&v10 = v10 / (v10 + 1.0) * attenuation[v7];
        attenuation[v7] = *&v10;
      }

      objc_autoreleasePoolPop(v9);
      v7 = v8;
    }

    while ([(PPTopicTransform *)self outputTopicCount]> v8++);
  }
}

- (void)applyOutputActivation:(float *)activation
{
  activationCopy = activation;
  activationType = self->_activationType;
  if (activationType > 3)
  {
    if (activationType != 4)
    {
      if (activationType != 5)
      {
        if (activationType != 6)
        {
          return;
        }

        LODWORD(topicCount) = self->_header.topicCount;
        goto LABEL_23;
      }

      LODWORD(topicCount) = self->_header.topicCount;
      if (topicCount)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

LABEL_10:
    topicCount = self->_header.topicCount;
    if (topicCount)
    {
      v7 = activationCopy;
      v8 = topicCount;
      do
      {
        v9 = expf(-*v7);
        *v7++ = expf(-v9);
        --v8;
      }

      while (v8);
LABEL_21:
      v15 = topicCount;
      v16 = activationCopy;
      do
      {
        v17 = expf(-*v16);
        *v16++ = 1.0 - expf(-v17);
        --v15;
      }

      while (v15);
    }

LABEL_23:
    v18 = topicCount;
    vvexpf(activationCopy, activationCopy, &v18);
    cblas_sasum_NEWLAPACK();
    cblas_sscal_NEWLAPACK();
    return;
  }

  switch(activationType)
  {
    case 1u:
      v10 = self->_header.topicCount;
      if (v10)
      {
        do
        {
          v11 = expf(-*activationCopy);
          v12 = 1.0 / (v11 + 1.0) + -0.5 + 1.0 / (v11 + 1.0) + -0.5;
          *activationCopy++ = v12;
          --v10;
        }

        while (v10);
      }

      break;
    case 2u:
      v13 = self->_header.topicCount;
      if (v13)
      {
        do
        {
          v14 = 1.0 / (expf(-*activationCopy) + 1.0);
          *activationCopy++ = v14;
          --v13;
        }

        while (v13);
      }

      break;
    case 3u:
      v19 = self->_header.topicCount;
      vvexpf(activation, activation, &v19);
      goto LABEL_10;
    default:
      return;
  }
}

- (void)applyFeatureNormalization:(float *)normalization vectorLength:(int)length
{
  featureNormalizationType = self->_featureNormalizationType;
  switch(featureNormalizationType)
  {
    case 3:
      fabsf(normalization[cblas_icamax_NEWLAPACK()]);
      break;
    case 2:
      cblas_snrm2_NEWLAPACK();
      break;
    case 1:
      cblas_sasum_NEWLAPACK();
      break;
    default:
      return;
  }

  cblas_sscal_NEWLAPACK();
}

- (void)_applyScaling:(uint64_t)scaling vectorLength:(int)length scalingType:(float)type scalingFactor:
{
  scalingCopy = scaling;
  if (self)
  {
    scalingCopy2 = scaling;
    v7 = a2;
    if (length > 2)
    {
      if (length == 3)
      {
        vvlog1pf(a2, a2, &scalingCopy);
      }

      else if (length == 4)
      {
        cblas_icamax_NEWLAPACK();
        cblas_sscal_NEWLAPACK();
        if (scalingCopy2)
        {
          v9 = scalingCopy2;
          do
          {
            *v7 = *v7 + type;
            ++v7;
            --v9;
          }

          while (v9);
        }
      }
    }

    else if (length == 1)
    {
      if (type != 1.0)
      {

        cblas_sscal_NEWLAPACK();
      }
    }

    else if (length == 2)
    {
      vvlogf(a2, a2, &scalingCopy);
      v8 = scalingCopy;
      if (scalingCopy)
      {
        do
        {
          *v7 = *v7 + 1.0;
          ++v7;
          --v8;
        }

        while (v8);
      }
    }
  }
}

- (void)applyFeatureSmoothing:(float *)smoothing vectorLength:(int)length
{
  if (self->_featureSmoothingType == 1 && self->_featureSmoothingFactor != 0.0 && length != 0)
  {
    lengthCopy = length;
    do
    {
      *smoothing = self->_featureSmoothingFactor + *smoothing;
      ++smoothing;
      --lengthCopy;
    }

    while (lengthCopy);
  }
}

- (void)addBias:(float *)bias
{
  topicCount = self->_header.topicCount;
  if (topicCount)
  {
    bias = self->_bias;
    do
    {
      v5 = *bias++;
      *bias = v5 + *bias;
      ++bias;
      --topicCount;
    }

    while (topicCount);
  }
}

- (id)QIDWeightsWithMappedTopicIdentifier:(id)identifier
{
  *&v35[5] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = indexForPayload(identifierCopy, self->_payloads, self->_header.topicCount, self->_header.payloadLen);
  if (v5 == -1)
  {
    v24 = pp_topics_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v35 = identifierCopy;
      _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "Mapped topic ID (%@) not found in this mapping.", buf, 0xCu);
    }

    v25 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30 = __56__PPTopicTransform_QIDWeightsWithMappedTopicIdentifier___block_invoke;
    v31 = &unk_278973DA0;
    selfCopy = self;
    v7 = v6;
    v33 = v7;
    v8 = v29;
    nonzeroCount = self->_header.nonzeroCount;
    if (nonzeroCount && (v10 = self->_header.topicCount) != 0)
    {
      v11 = 0;
      v12 = self->_matrixIndices[nonzeroCount - 1] / v10;
      do
      {
        v13 = self->_header.nonzeroCount;
        v14 = v5 + self->_header.topicCount * v11;
        matrixIndices = self->_matrixIndices;
        v16 = matrixIndices;
        if (v13)
        {
          v17 = self->_header.nonzeroCount;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (v21 < v14)
            {
              v16 = v20;
            }

            else
            {
              v17 = v18;
            }
          }

          while (v17);
        }

        if (v16 != &matrixIndices[v13] && *v16 == v14)
        {
          (v30)(v8, v11, *(self->_matrixElts + v16 - matrixIndices));
        }

        v11 = (v11 + 1);
      }

      while (v11 <= v12);
    }

    else
    {
      v22 = pp_topics_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        topicCount = self->_header.topicCount;
        v27 = self->_header.nonzeroCount;
        *buf = 67109376;
        v35[0] = v27;
        LOWORD(v35[1]) = 1024;
        *(&v35[1] + 2) = topicCount;
        _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "Sparse matrix shape error: %u nonzero elements for %u topics.", buf, 0xEu);
      }
    }

    v23 = v33;
    v24 = v7;

    v25 = v24;
  }

  return v25;
}

void __56__PPTopicTransform_QIDWeightsWithMappedTopicIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 16) > a2)
  {
    v2 = *(*(v4 + 40) + 4 * a2);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)addWeightedTopicScoreToBuffer:(float *)buffer qid:(unsigned int)qid score:(float)score
{
  qidCount = self->_header.qidCount;
  if (!qidCount)
  {
    goto LABEL_10;
  }

  qids = self->_qids;
  v7 = qids;
  v8 = self->_header.qidCount;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[v8 >> 1];
    v12 = *v10;
    v11 = v10 + 1;
    v8 += ~(v8 >> 1);
    if (v12 < qid)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &qids[qidCount] && *v7 == qid)
  {
    *&qid = (v7 - qids) >> 2;
LABEL_10:
    if (qid != -1)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__PPTopicTransform_addWeightedTopicScoreToBuffer_qid_score___block_invoke;
      v13[3] = &__block_descriptor_44_e11_v16__0I8f12l;
      v13[4] = buffer;
      scoreCopy = score;
      [(PPTopicTransform *)self _enumerateSparseColumnAtIndex:qid block:v13];
    }
  }
}

float __60__PPTopicTransform_addWeightedTopicScoreToBuffer_qid_score___block_invoke(uint64_t a1, unsigned int a2, float a3)
{
  v3 = *(a1 + 32);
  result = *(v3 + 4 * a2) + (*(a1 + 40) * a3);
  *(v3 + 4 * a2) = result;
  return result;
}

- (void)_enumerateSparseColumnAtIndex:(void *)index block:
{
  indexCopy = index;
  if (self)
  {
    v5 = *(self + 20);
    v6 = *(self + 24);
    v7 = v5 * a2;
    v8 = *(self + 48);
    v9 = v8 + 4 * v6;
    if (v6)
    {
      v10 = *(self + 48);
      do
      {
        v11 = v6 >> 1;
        v12 = &v10[v6 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v6 += ~(v6 >> 1);
        if (v14 < v7)
        {
          v10 = v13;
        }

        else
        {
          v6 = v11;
        }
      }

      while (v6);
    }

    else
    {
      v10 = *(self + 48);
    }

    if (v10 < v9)
    {
      v15 = 0;
      v16 = v7 + v5;
      v17 = v10 + *(self + 56) - v8;
      v18 = 1;
      v19 = v10;
      do
      {
        v20 = *v19;
        if (v20 >= v16)
        {
          break;
        }

        indexCopy[2](indexCopy, v20 - v7, *&v17[4 * v15]);
        v15 = v18;
        v19 = &v10[v18++];
      }

      while (v19 < v9);
    }
  }
}

- (void)addWeightedTopicScoreToBuffer:(float *)buffer countNonZeroComponentsInBuffer:(unsigned __int16 *)inBuffer qid:(unsigned int)qid score:(float)score
{
  qidCount = self->_header.qidCount;
  if (!qidCount)
  {
    goto LABEL_10;
  }

  qids = self->_qids;
  v8 = qids;
  v9 = self->_header.qidCount;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[v9 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v9 += ~(v9 >> 1);
    if (v13 < qid)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &qids[qidCount] && *v8 == qid)
  {
    *&qid = (v8 - qids) >> 2;
LABEL_10:
    if (qid != -1)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __91__PPTopicTransform_addWeightedTopicScoreToBuffer_countNonZeroComponentsInBuffer_qid_score___block_invoke;
      v14[3] = &__block_descriptor_52_e11_v16__0I8f12l;
      v14[4] = inBuffer;
      v14[5] = buffer;
      scoreCopy = score;
      [(PPTopicTransform *)self _enumerateSparseColumnAtIndex:qid block:v14];
    }
  }
}

float __91__PPTopicTransform_addWeightedTopicScoreToBuffer_countNonZeroComponentsInBuffer_qid_score___block_invoke(uint64_t a1, unsigned int a2, float a3)
{
  v3 = *(a1 + 40);
  ++*(*(a1 + 32) + 2 * a2);
  result = *(v3 + 4 * a2) + (*(a1 + 48) * a3);
  *(v3 + 4 * a2) = result;
  return result;
}

- (id)payloadForTopic:(unsigned int)topic
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_header.topicCount <= topic)
  {
    v8 = pp_topics_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_header.topicCount - 1;
      v11[0] = 67109376;
      v11[1] = topic;
      v12 = 1024;
      v13 = v10;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "Topic index %u too big (max: %u)", v11, 0xEu);
    }

    v7 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&self->_payloads[self->_header.payloadLen * topic] length:self->_header.payloadLen encoding:1];
    v6 = objc_autoreleasePoolPush();
    v7 = _PASTrimTrailingWhitespace();
    objc_autoreleasePoolPop(v6);
  }

  return v7;
}

- (PPTopicTransform)initWithPath:(id)path mappingId:(id)id
{
  v67 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  idCopy = id;
  v62.receiver = self;
  v62.super_class = PPTopicTransform;
  v8 = [(PPTopicTransform *)&v62 init];
  if (!v8)
  {
    goto LABEL_50;
  }

  v61 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v61];
  v10 = v61;
  data = v8->_data;
  v8->_data = v9;

  v12 = v8->_data;
  if (v12)
  {
    if ([(NSData *)v12 length]<= 0xF)
    {
      v13 = pp_topics_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = pathCopy;
        v14 = "Topic transform truncated: %@";
        v15 = v13;
        v16 = 12;
LABEL_53:
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    v8->_header = *[(NSData *)v8->_data bytes];
    qidCount = v8->_header.qidCount;
    topicCount = v8->_header.topicCount;
    nonzeroCount = v8->_header.nonzeroCount;
    payloadLen = v8->_header.payloadLen;
    if ([(NSData *)v8->_data length]!= 4 * topicCount + (4 * qidCount) + 8 * nonzeroCount + payloadLen * topicCount + 16)
    {
      v13 = pp_topics_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = pathCopy;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "Topic transform truncated: %@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    bytes = [(NSData *)v8->_data bytes];
    v23 = v8->_header.qidCount;
    v24 = bytes + 16 + 4 * v8->_header.topicCount;
    v8->_bias = (bytes + 16);
    v8->_qids = v24;
    v25 = v24 + 4 * v23;
    v26 = v8->_header.nonzeroCount;
    v27 = (v25 + 4 * v26);
    v8->_matrixIndices = v25;
    v8->_matrixElts = v27;
    v8->_payloads = &v27[v26];
    if (idCopy)
    {
      v28 = +[PPConfiguration sharedInstance];
      v29 = [v28 hyperparametersForMappingId:idCopy];
      v30 = [v29 objectForKeyedSubscript:@"FeatureSmoothingType"];
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue = [v30 intValue];
      }

      else
      {
        intValue = 0;
      }

      v8->_featureSmoothingType = intValue;
      v32 = [v29 objectForKeyedSubscript:@"FeatureScalingType"];
      if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue2 = [v32 intValue];
      }

      else
      {
        intValue2 = 0;
      }

      v8->_featureScalingType = intValue2;
      v34 = [v29 objectForKeyedSubscript:@"FeatureNormalizationType"];
      if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue3 = [v34 intValue];
      }

      else
      {
        intValue3 = 0;
      }

      v8->_featureNormalizationType = intValue3;
      v36 = [v29 objectForKeyedSubscript:@"OutputScalingType"];
      if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue4 = [v36 intValue];
      }

      else
      {
        intValue4 = 0;
      }

      v8->_outputScalingType = intValue4;
      v38 = [v29 objectForKeyedSubscript:@"ActivationType"];
      if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue5 = [v38 intValue];
      }

      else
      {
        intValue5 = 0;
      }

      v8->_activationType = intValue5;
      v40 = [v29 objectForKeyedSubscript:@"FeatureSmoothingFactor"];
      v41 = 0.0;
      if (v40)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v40 doubleValue];
          v41 = v42;
        }
      }

      v43 = v41;
      v8->_featureSmoothingFactor = v43;
      v44 = [v29 objectForKeyedSubscript:@"FeatureScalingFactor"];
      v45 = 1.0;
      if (v44)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v44 doubleValue];
          v45 = v46;
        }
      }

      v47 = v45;
      v8->_featureScalingFactor = v47;
      v48 = [v29 objectForKeyedSubscript:@"OutputScalingFactor"];
      v49 = 1.0;
      if (v48)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v48 doubleValue];
          v49 = v50;
        }
      }

      v51 = v49;
      v8->_outputScalingFactor = v51;
      v52 = [v29 objectForKeyedSubscript:@"ScoreAttenuationFactor"];
      v53 = 0.0;
      if (v52)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v52 doubleValue];
          v53 = v54;
        }
      }

      v55 = v53;
      v8->_attenuationFactor = v55;
      v56 = [v29 objectForKeyedSubscript:@"ScoreThreshold"];
      v57 = 0.0;
      if (v56)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v56 doubleValue];
          v57 = v58;
        }
      }

      v59 = v57;
      v8->_threshold = v59;
    }

LABEL_50:
    v17 = v8;
    goto LABEL_51;
  }

  v13 = pp_topics_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v64 = pathCopy;
    v65 = 2112;
    v66 = v10;
    v14 = "Could not load topic transform %@: %@";
    v15 = v13;
    v16 = 22;
    goto LABEL_53;
  }

LABEL_7:

  v17 = 0;
LABEL_51:

  return v17;
}

@end