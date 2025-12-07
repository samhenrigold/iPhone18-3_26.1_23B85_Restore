@interface SSREnrollmentSamplingMetaData
- (SSREnrollmentSamplingMetaData)initWithDictionary:(id)dictionary;
- (SSREnrollmentSamplingMetaData)initWithSelectionStatus:(id)status voiceProfileId:(id)id;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation SSREnrollmentSamplingMetaData

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  selectionStatus = self->_selectionStatus;
  if (selectionStatus)
  {
    [v3 setObject:selectionStatus forKeyedSubscript:@"SSRSamplingSelectionState"];
  }

  voiceProfileId = self->_voiceProfileId;
  if (voiceProfileId)
  {
    [v4 setObject:voiceProfileId forKeyedSubscript:@"SSRSamplingVoiceProfileId"];
  }

  return v4;
}

- (id)description
{
  dictionaryRepresentation = [(SSREnrollmentSamplingMetaData *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (SSREnrollmentSamplingMetaData)initWithDictionary:(id)dictionary
{
  v16 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
    v12 = "%s invalid input from dictionary";
LABEL_11:
    _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);
    goto LABEL_12;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"SSRSamplingVoiceProfileId"];

  if (!v6)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
    v12 = "%s invalid voiceProfileIdKey";
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"SSRSamplingSelectionState"];

  if (!v7)
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
      v12 = "%s invalid selection state";
      goto LABEL_11;
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v8 = [v5 objectForKeyedSubscript:@"SSRSamplingSelectionState"];
  v9 = [v5 objectForKeyedSubscript:@"SSRSamplingVoiceProfileId"];
  self = [(SSREnrollmentSamplingMetaData *)self initWithSelectionStatus:v8 voiceProfileId:v9];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (SSREnrollmentSamplingMetaData)initWithSelectionStatus:(id)status voiceProfileId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = SSREnrollmentSamplingMetaData;
  v9 = [(SSREnrollmentSamplingMetaData *)&v14 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (statusCopy && idCopy)
  {
    objc_storeStrong(&v9->_selectionStatus, status);
    objc_storeStrong(p_isa + 2, id);
LABEL_5:
    v11 = p_isa;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "[SSREnrollmentSamplingMetaData initWithSelectionStatus:voiceProfileId:]";
    v17 = 2112;
    v18 = statusCopy;
    v19 = 2112;
    v20 = idCopy;
    _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s initializing samplingMetaData with nil inputs: %@, %@", buf, 0x20u);
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end