@interface EMDEBeamSearchHandler
- (EMDEBeamSearchHandler)initWithModel:(void *)model beamWidth:(int)width timeSteps:(int)steps lengthPenalty:(float)penalty tokenThreshold:(float)threshold;
- (id).cxx_construct;
- (id)getTopBeamWithModelState:(__CFArray *)state startPosition:(int)position allowedWords:()basic_string<char;
- (vector<const)currentStates;
- (vector<const)previousStates;
- (void)runNextTimeStep;
- (void)setCurrentStates:(vector<const __CFArray *);
- (void)setPreviousStates:(vector<const __CFArray *);
- (void)updateBeamsWithPredictionFor:(id)for state:(__CFArray *)state predictions:(void *)predictions;
@end

@implementation EMDEBeamSearchHandler

- (EMDEBeamSearchHandler)initWithModel:(void *)model beamWidth:(int)width timeSteps:(int)steps lengthPenalty:(float)penalty tokenThreshold:(float)threshold
{
  selfCopy = self;
  if (model)
  {
    v34.receiver = self;
    v34.super_class = EMDEBeamSearchHandler;
    v13 = [(EMDEBeamSearchHandler *)&v34 init];
    v13->_maxLength = steps;
    v13->_beamWidth = width;
    v13->_tokenThreshold = threshold;
    v14 = +[EMDEUtils config];
    v15 = [v14 objectForKeyedSubscript:@"EMDE_EARLY_STOPPING_PATIENCE"];
    if (v15)
    {
      v16 = +[EMDEUtils config];
      v17 = [v16 objectForKeyedSubscript:@"EMDE_EARLY_STOPPING_PATIENCE"];
      [v17 floatValue];
      v13->_earlyStoppingPatience = v18;
    }

    else
    {
      v13->_earlyStoppingPatience = 2.0;
    }

    v13->_finishedBeamMaxScore = 0.0;
    v13->_lengthPenalty = penalty;
    v21 = objc_alloc_init(NSMutableArray);
    activeBeams = v13->_activeBeams;
    v13->_activeBeams = v21;

    v23 = objc_alloc_init(NSMutableArray);
    nextBeams = v13->_nextBeams;
    v13->_nextBeams = v23;

    v25 = objc_alloc_init(NSMutableArray);
    finishedBeams = v13->_finishedBeams;
    v13->_finishedBeams = v25;

    v27 = +[EMDEUtils config];
    v28 = [v27 objectForKeyedSubscript:@"EMDE_VOCAB_SIZE"];
    v13->_vocabSize = [v28 intValue];

    v29 = +[EMDEUtils config];
    v30 = [v29 objectForKeyedSubscript:@"EMDE_EOS_TOKEN_ID"];
    v31 = +[EMDEUtils config];
    if (v30)
    {
      [v31 objectForKeyedSubscript:@"EMDE_EOS_TOKEN_ID"];
    }

    else
    {
      [v31 objectForKeyedSubscript:@"EMDE_SEPARATOR_TOKEN"];
    }
    v32 = ;
    v13->_EOSToken = [v32 intValue];

    v13->_model = model;
    selfCopy = v13;
    v20 = selfCopy;
  }

  else
  {
    v19 = modelLogHandle(self);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10008B218(v19);
    }

    v20 = 0;
  }

  return v20;
}

- (void)updateBeamsWithPredictionFor:(id)for state:(__CFArray *)state predictions:(void *)predictions
{
  forCopy = for;
  v9 = forCopy;
  if (forCopy && state && predictions)
  {
    if (self->_beamWidth >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(predictions + 1) + (((v10 + *(predictions + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + *(predictions + 4)) & 0x1FF);
        if (*v11 == self->_EOSToken)
        {
          v12 = [EMDEBeamPath alloc];
          v13 = *(*(*(predictions + 1) + (((v10 + *(predictions + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + *(predictions + 4)) & 0x1FF));
          lengthPenalty = self->_lengthPenalty;
          v15 = +[EMDEUtils config];
          v16 = [v15 objectForKeyedSubscript:@"EMDE_BEAM_VALIDATION_REQUIRED"];
          bOOLValue = [v16 BOOLValue];
          *&v18 = lengthPenalty;
          v19 = [(EMDEBeamPath *)v12 initFinishedBeamFrom:v9 additionalToken:v13 lengthPenalty:bOOLValue validate:v18];

          if (v19)
          {
            [(NSMutableArray *)self->_finishedBeams addObject:v19];
            finishedBeamMaxScore = self->_finishedBeamMaxScore;
            [v19 averageScore];
            if (finishedBeamMaxScore < v21)
            {
              [v19 averageScore];
              self->_finishedBeamMaxScore = v22;
            }
          }
        }

        else
        {
          if (*(v11 + 4) < self->_tokenThreshold)
          {
            break;
          }

          v23 = [EMDEBeamPath alloc];
          v24 = *(*(*(predictions + 1) + (((v10 + *(predictions + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + *(predictions + 4)) & 0x1FF));
          v25 = self->_lengthPenalty;
          v26 = +[EMDEUtils config];
          v27 = [v26 objectForKeyedSubscript:@"EMDE_BEAM_VALIDATION_REQUIRED"];
          bOOLValue2 = [v27 BOOLValue];
          *&v29 = v25;
          v19 = [(EMDEBeamPath *)v23 initChildBeamFrom:v9 additionalToken:v24 state:state lengthPenalty:bOOLValue2 validate:v29];

          if (v19)
          {
            [v19 averageScore];
            if ((v30 * self->_earlyStoppingPatience) > self->_finishedBeamMaxScore)
            {
              [(NSMutableArray *)self->_nextBeams addObject:v19];
            }
          }
        }

        ++v10;
      }

      while (v10 < self->_beamWidth);
    }
  }

  else
  {
    v31 = modelLogHandle(forCopy);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = 138412802;
      v33 = v9;
      v34 = 2112;
      stateCopy = state;
      v36 = 2112;
      predictionsCopy = predictions;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "EMDEBeamSearchHandler - Found nil in input parameters for updateBeamsWithPredictionFor:%@ state:%@ predictions:%@", &v32, 0x20u);
    }
  }
}

- (void)runNextTimeStep
{
  v53[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
  v3 = [NSNumber numberWithInt:1];
  v54[0] = v3;
  v53[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
  v4 = [NSNumber numberWithInt:1];
  v54[1] = v4;
  v32 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

  v50 = 0;
  begin = self->_previousStates.__begin_;
  if (self->_previousStates.__end_ != begin)
  {
    v6 = 0;
    do
    {
      CFRelease(begin[v6++]);
      begin = self->_previousStates.__begin_;
    }

    while (v6 < self->_previousStates.__end_ - begin);
  }

  v7 = self->_currentStates.__begin_;
  self->_previousStates.__end_ = begin;
  sub_100003FB0(&self->_previousStates, v7, self->_currentStates.__end_, (self->_currentStates.__end_ - v7) >> 3);
  self->_currentStates.__end_ = self->_currentStates.__begin_;
  *v35.i32 = self->_currentPosition;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_1000040DC(&v47, v35.i32, &v35.i32[1], 1uLL);
  self->_positionTensor = MRLNeuralNetworkTensorCreate();
  MRLNeuralNetworkTensorAppendData();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_activeBeams;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        objc_msgSend_tokens(v11);
        objc_msgSend_tokens(v11);
        v33 = *(v35.i64[0] + v39 - __p - 4);
        v41 = 0;
        v42 = 0;
        v40 = 0;
        sub_1000040DC(&v40, &v33, &v34, 1uLL);
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }

        if (v35.i64[0])
        {
          v35.i64[1] = v35.i64[0];
          operator delete(v35.i64[0]);
        }

        self->_inputTensor = MRLNeuralNetworkTensorCreate();
        MRLNeuralNetworkTensorAppendData();
        MRLNeuralNetworkSetInputTensor();
        MRLNeuralNetworkSetInputTensor();
        MRLNeuralNetworkSetInputTensor();
        MRLNeuralNetworkSetInputTensor();
        [v11 state];
        MRLNeuralNetworkPredict();
        v50 = MRLNeuralNetworkCopyStates();
        sub_1000032BC(&self->_currentStates, &v50);
        Output = MRLNeuralNetworkGetOutput();
        beamWidth = self->_beamWidth;
        __p = 0;
        sub_1000041D4(&v35, beamWidth, &__p);
        vocabSize = self->_vocabSize;
        if (vocabSize >= 1)
        {
          for (j = 0; j < vocabSize; ++j)
          {
            v16 = self->_beamWidth;
            if (v16 >= 1)
            {
              v17 = 0;
              v18 = -v16;
              v19 = v37;
              while (*(Output + 4 * j) <= *(*(v35.i64[1] + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF) + 4))
              {
                --v17;
                ++v19;
                if (v18 == v17)
                {
                  goto LABEL_24;
                }
              }

              if (v36 == v35.i64[1])
              {
                v20 = 0;
              }

              else
              {
                v20 = *(v35.i64[1] + 8 * (v37 >> 9)) + 8 * (v37 & 0x1FF);
              }

              __p = (v35.i64[1] + 8 * (v37 >> 9));
              v39 = v20;
              v21 = sub_100003720(&__p, -v17);
              v33 = *&j;
              v34 = *(Output + 4 * j);
              sub_100003390(&v35, v21, v22, &v33);
              vocabSize = self->_vocabSize;
            }

LABEL_24:
            ;
          }
        }

        [(EMDEBeamSearchHandler *)self updateBeamsWithPredictionFor:v11 state:v50 predictions:&v35];
        CFRelease(self->_inputTensor);
        sub_100004B1C(&v35);
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v8);
  }

  CFRelease(self->_positionTensor);
  [(NSMutableArray *)self->_activeBeams removeAllObjects];
  nextBeams = self->_nextBeams;
  v24 = [NSSortDescriptor sortDescriptorWithKey:@"score" ascending:0];
  v51 = v24;
  v25 = [NSArray arrayWithObjects:&v51 count:1];
  [(NSMutableArray *)nextBeams sortUsingDescriptors:v25];

  for (k = 0; ; ++k)
  {
    v27 = [(NSMutableArray *)self->_nextBeams count];
    v28 = self->_beamWidth;
    if (v28 >= v27)
    {
      v28 = v27;
    }

    if (k >= v28)
    {
      break;
    }

    activeBeams = self->_activeBeams;
    v30 = [(NSMutableArray *)self->_nextBeams objectAtIndex:k];
    [(NSMutableArray *)activeBeams addObject:v30];
  }

  [(NSMutableArray *)self->_nextBeams removeAllObjects];
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

- (id)getTopBeamWithModelState:(__CFArray *)state startPosition:(int)position allowedWords:()basic_string<char
{
  stateCopy = state;
  if (state)
  {
    self->_currentPosition = position;
    v35[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v7 = [NSNumber numberWithInt:1];
    v36[0] = v7;
    v35[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v8 = [NSNumber numberWithInt:1];
    v36[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

    LODWORD(v27) = 1065353216;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    sub_1000040DC(&v30, &v27, &v27 + 1, 1uLL);
    v26 = 1065353216;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    sub_1000040DC(&v27, &v26, &v27, 1uLL);
    self->_segmentTensor = MRLNeuralNetworkTensorCreate();
    self->_tempTensor = MRLNeuralNetworkTensorCreate();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    v10 = [EMDEBeamPath alloc];
    v11 = stateCopy;
    if (*(&a5->__rep_.__l + 23) < 0)
    {
      sub_100019AD4(__p, a5->__rep_.__l.__data_, a5->__rep_.__l.__size_);
    }

    else
    {
      *__p = *a5->__rep_.__s.__data_;
      v25 = *(&a5->__rep_.__l + 2);
    }

    v13 = [(EMDEBeamPath *)v10 initWithState:v11 allowedWords:__p];
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    [(NSMutableArray *)self->_activeBeams addObject:v13, __p[0], __p[1], v25];
    sub_1000032BC(&self->_currentStates, &stateCopy);
    currentPosition = self->_currentPosition;
    v15 = currentPosition + self->_maxLength - 2;
    while (currentPosition < v15 && [(NSMutableArray *)self->_activeBeams count])
    {
      [(EMDEBeamSearchHandler *)self runNextTimeStep];
      currentPosition = self->_currentPosition + 1;
      self->_currentPosition = currentPosition;
    }

    begin = self->_previousStates.__begin_;
    if (self->_previousStates.__end_ != begin)
    {
      v17 = 0;
      do
      {
        CFRelease(begin[v17++]);
        begin = self->_previousStates.__begin_;
      }

      while (v17 < self->_previousStates.__end_ - begin);
    }

    v18 = self->_currentStates.__begin_;
    if (self->_currentStates.__end_ != v18)
    {
      v19 = 0;
      do
      {
        CFRelease(v18[v19++]);
        v18 = self->_currentStates.__begin_;
      }

      while (v19 < self->_currentStates.__end_ - v18);
    }

    CFRelease(self->_segmentTensor);
    CFRelease(self->_tempTensor);
    finishedBeams = self->_finishedBeams;
    v21 = [NSSortDescriptor sortDescriptorWithKey:@"averageScore" ascending:0];
    v34 = v21;
    v22 = [NSArray arrayWithObjects:&v34 count:1];
    [(NSMutableArray *)finishedBeams sortUsingDescriptors:v22];

    if ([(NSMutableArray *)self->_finishedBeams count])
    {
      v12 = [(NSMutableArray *)self->_finishedBeams objectAtIndex:0];
    }

    else
    {
      v12 = 0;
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }

  else
  {
    v9 = modelLogHandle(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008B294(v9);
    }

    v12 = 0;
  }

  return v12;
}

- (vector<const)previousStates
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100003E98(retstr, self->_previousStates.__begin_, self->_previousStates.__end_, self->_previousStates.__end_ - self->_previousStates.__begin_);
}

- (void)setPreviousStates:(vector<const __CFArray *)
{
  p_previousStates = &self->_previousStates;
  if (p_previousStates != a3)
  {
    sub_100003FB0(p_previousStates, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (vector<const)currentStates
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100003E98(retstr, self->_currentStates.__begin_, self->_currentStates.__end_, self->_currentStates.__end_ - self->_currentStates.__begin_);
}

- (void)setCurrentStates:(vector<const __CFArray *)
{
  p_currentStates = &self->_currentStates;
  if (p_currentStates != a3)
  {
    sub_100003FB0(p_currentStates, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 7) = 0u;
  return self;
}

@end