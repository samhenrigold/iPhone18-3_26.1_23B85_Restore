@interface VMVoicemailTranscript
- (VMVoicemailTranscript)init;
- (VMVoicemailTranscript)initWithCoder:(id)coder;
- (VMVoicemailTranscript)initWithTranscriberResult:(id)result;
- (VMVoicemailTranscript)initWithTranscription:(id)transcription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMVoicemailTranscript

- (VMVoicemailTranscript)init
{
  v7.receiver = self;
  v7.super_class = VMVoicemailTranscript;
  v2 = [(VMVoicemailTranscript *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_confidence = 0.0;
    v2->_confidenceRating = 0;
    transcriptionString = v2->_transcriptionString;
    v2->_transcriptionString = &stru_2881762E0;

    segments = v3->_segments;
    v3->_segments = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (VMVoicemailTranscript)initWithTranscription:(id)transcription
{
  v39 = *MEMORY[0x277D85DE8];
  transcriptionCopy = transcription;
  v37.receiver = self;
  v37.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v37 init];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = 0.0;
    v5->_confidenceRating = 0;
    formattedString = [transcriptionCopy formattedString];
    transcriptionString = v6->_transcriptionString;
    v6->_transcriptionString = formattedString;

    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    segments = [transcriptionCopy segments];
    v11 = [v9 initWithCapacity:{objc_msgSend(segments, "count")}];

    +[VMConfiguration confidenceSegmentThreshold];
    v13 = v12;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    segments2 = [transcriptionCopy segments];
    v15 = [segments2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(segments2);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [VMVoicemailTranscriptSegment alloc];
          LODWORD(v22) = v13;
          v23 = [(VMVoicemailTranscriptSegment *)v21 initWithTranscriptionSegment:v20 confidenceThreshold:v22];
          [(VMVoicemailTranscriptSegment *)v23 confidence];
          v18 = v18 + v24;
          [v11 addObject:v23];
        }

        v16 = [segments2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v25 = [v11 copy];
    segments = v6->_segments;
    v6->_segments = v25;

    if (v18 == 0.0)
    {
      confidence = v6->_confidence;
    }

    else
    {
      confidence = v18 / [(NSArray *)v6->_segments count];
      v6->_confidence = confidence;
    }

    if (confidence == 0.0)
    {
      v28 = 0;
    }

    else
    {
      +[VMConfiguration confidenceLowQualityThreshold];
      if (confidence >= v29)
      {
        v28 = 3;
      }

      else
      {
        v30 = v6->_confidence;
        +[VMConfiguration confidenceThreshold];
        v28 = 2;
        if (v30 < v31)
        {
          v28 = 1;
        }
      }
    }

    v6->_confidenceRating = v28;
  }

  return v6;
}

- (VMVoicemailTranscript)initWithTranscriberResult:(id)result
{
  v41 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v35.receiver = self;
  v35.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = 0.0;
    v5->_confidenceRating = 0;
    contextualizedTranscriberMultisegmentResult = [resultCopy contextualizedTranscriberMultisegmentResult];
    transcriptions = [contextualizedTranscriberMultisegmentResult transcriptions];
    firstObject = [transcriptions firstObject];

    string = [MEMORY[0x277CCAB68] string];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = firstObject;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          text = [v16 text];
          [string appendString:text];

          [v16 confidence];
          *&v18 = v18 + v6->_confidence;
          v6->_confidence = *&v18;
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v13);
    }

    confidence = v6->_confidence;
    if (confidence != 0.0)
    {
      confidence = confidence / [v11 count];
    }

    v6->_confidence = confidence;
    objc_storeStrong(&v6->_transcriptionString, string);
    v22 = vm_framework_log(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      transcriptionString = v6->_transcriptionString;
      v24 = v6->_confidence;
      *buf = 138412546;
      v37 = transcriptionString;
      v38 = 2048;
      v39 = v24;
      _os_log_impl(&dword_2721BA000, v22, OS_LOG_TYPE_DEFAULT, "Segment dictation result:%@ , confidence = %f", buf, 0x16u);
    }

    v25 = v6->_confidence;
    if (v25 == 0.0)
    {
      v26 = 0;
    }

    else
    {
      +[VMConfiguration confidenceLowQualityThreshold];
      if (v25 >= v27)
      {
        v26 = 3;
      }

      else
      {
        v28 = v6->_confidence;
        +[VMConfiguration confidenceThreshold];
        v26 = 2;
        if (v28 < v29)
        {
          v26 = 1;
        }
      }
    }

    v6->_confidenceRating = v26;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(VMVoicemailTranscript *)self confidence];
  *(v5 + 8) = v6;
  *(v5 + 32) = [(VMVoicemailTranscript *)self confidenceRating];
  segments = [(VMVoicemailTranscript *)self segments];
  v8 = [segments copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  transcriptionString = [(VMVoicemailTranscript *)self transcriptionString];
  v11 = [transcriptionString copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  confidence = self->_confidence;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_confidence);
  *&v7 = confidence;
  [coderCopy encodeFloat:v6 forKey:v7];

  confidenceRating = self->_confidenceRating;
  v9 = NSStringFromSelector(sel_confidenceRating);
  [coderCopy encodeInteger:confidenceRating forKey:v9];

  segments = self->_segments;
  v11 = NSStringFromSelector(sel_segments);
  [coderCopy encodeObject:segments forKey:v11];

  transcriptionString = self->_transcriptionString;
  v13 = NSStringFromSelector(sel_transcriptionString);
  [coderCopy encodeObject:transcriptionString forKey:v13];
}

- (VMVoicemailTranscript)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v20 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_confidence);
    [coderCopy decodeFloatForKey:v6];
    v5->_confidence = v7;

    v8 = NSStringFromSelector(sel_confidenceRating);
    v5->_confidenceRating = [coderCopy decodeIntegerForKey:v8];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_segments);
    v13 = [coderCopy decodeObjectOfClasses:v11 forKey:v12];
    segments = v5->_segments;
    v5->_segments = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_transcriptionString);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    transcriptionString = v5->_transcriptionString;
    v5->_transcriptionString = v17;
  }

  return v5;
}

- (id)debugDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"=====================================================\n"];
  transcriptionString = [(VMVoicemailTranscript *)self transcriptionString];
  [v3 appendFormat:@"%@\n", transcriptionString];

  [v3 appendFormat:@"=====================================================\n"];
  [v3 appendString:@"Comprised of:\n"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  segments = [(VMVoicemailTranscript *)self segments];
  v6 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) debugDescription];
        [v3 appendFormat:@"%@\n", v10];
      }

      v7 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(VMVoicemailTranscript *)self confidence];
  [v3 appendFormat:@"With an overall confidence of %f (rating:%lu)", v11, -[VMVoicemailTranscript confidenceRating](self, "confidenceRating")];
  v12 = [v3 copy];

  return v12;
}

@end