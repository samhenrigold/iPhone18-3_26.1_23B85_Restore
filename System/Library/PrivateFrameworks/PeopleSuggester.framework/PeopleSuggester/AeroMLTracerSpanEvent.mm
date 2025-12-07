@interface AeroMLTracerSpanEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributes:(id)attributes;
- (void)addDebugEvents:(id)events;
- (void)addErrorEvents:(id)events;
- (void)addInfoEvents:(id)events;
- (void)addWarningEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasIntervalInMilliSeconds:(BOOL)seconds;
- (void)setHasMemoryLevelDeltaInKB:(BOOL)b;
- (void)setHasPrivatizedEndTime:(BOOL)time;
- (void)setHasPrivatizedStartTime:(BOOL)time;
- (void)setHasStartMemoryLevelInKB:(BOOL)b;
- (void)writeTo:(id)to;
@end

@implementation AeroMLTracerSpanEvent

- (void)setHasPrivatizedStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPrivatizedEndTime:(BOOL)time
{
  if (time)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIntervalInMilliSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStartMemoryLevelInKB:(BOOL)b
{
  if (b)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasMemoryLevelDeltaInKB:(BOOL)b
{
  if (b)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = self->_attributes;
  v8 = attributesCopy;
  if (!attributes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attributes;
    self->_attributes = v6;

    attributesCopy = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:attributesCopy];
}

- (void)addInfoEvents:(id)events
{
  eventsCopy = events;
  infoEvents = self->_infoEvents;
  v8 = eventsCopy;
  if (!infoEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_infoEvents;
    self->_infoEvents = v6;

    eventsCopy = v8;
    infoEvents = self->_infoEvents;
  }

  [(NSMutableArray *)infoEvents addObject:eventsCopy];
}

- (void)addWarningEvents:(id)events
{
  eventsCopy = events;
  warningEvents = self->_warningEvents;
  v8 = eventsCopy;
  if (!warningEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_warningEvents;
    self->_warningEvents = v6;

    eventsCopy = v8;
    warningEvents = self->_warningEvents;
  }

  [(NSMutableArray *)warningEvents addObject:eventsCopy];
}

- (void)addDebugEvents:(id)events
{
  eventsCopy = events;
  debugEvents = self->_debugEvents;
  v8 = eventsCopy;
  if (!debugEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_debugEvents;
    self->_debugEvents = v6;

    eventsCopy = v8;
    debugEvents = self->_debugEvents;
  }

  [(NSMutableArray *)debugEvents addObject:eventsCopy];
}

- (void)addErrorEvents:(id)events
{
  eventsCopy = events;
  errorEvents = self->_errorEvents;
  v8 = eventsCopy;
  if (!errorEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_errorEvents;
    self->_errorEvents = v6;

    eventsCopy = v8;
    errorEvents = self->_errorEvents;
  }

  [(NSMutableArray *)errorEvents addObject:eventsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AeroMLTracerSpanEvent;
  v4 = [(AeroMLTracerSpanEvent *)&v8 description];
  dictionaryRepresentation = [(AeroMLTracerSpanEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v92 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [dictionary setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  testKey = self->_testKey;
  if (testKey)
  {
    [v4 setObject:testKey forKey:@"testKey"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId)
  {
    [v4 setObject:trialDeploymentId forKey:@"trialDeploymentId"];
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId)
  {
    [v4 setObject:trialExperimentId forKey:@"trialExperimentId"];
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId)
  {
    [v4 setObject:trialTreatmentId forKey:@"trialTreatmentId"];
  }

  traceId = self->_traceId;
  if (traceId)
  {
    [v4 setObject:traceId forKey:@"traceId"];
  }

  parentSpanId = self->_parentSpanId;
  if (parentSpanId)
  {
    [v4 setObject:parentSpanId forKey:@"parentSpanId"];
  }

  spanId = self->_spanId;
  if (spanId)
  {
    [v4 setObject:spanId forKey:@"spanId"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_privatizedStartTime];
    [v4 setObject:v62 forKey:@"privatizedStartTime"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_privatizedEndTime];
  [v4 setObject:v63 forKey:@"privatizedEndTime"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_intervalInMilliSeconds];
    [v4 setObject:v16 forKey:@"intervalInMilliSeconds"];
  }

LABEL_25:
  errorString = self->_errorString;
  if (errorString)
  {
    [v4 setObject:errorString forKey:@"errorString"];
  }

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v4 setObject:v64 forKey:@"errorCode"];

    v18 = self->_has;
    if ((v18 & 0x40) == 0)
    {
LABEL_29:
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_93;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_29;
  }

  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startMemoryLevelInKB];
  [v4 setObject:v65 forKey:@"startMemoryLevelInKB"];

  v18 = self->_has;
  if ((v18 & 1) == 0)
  {
LABEL_30:
    if ((v18 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_93:
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endMemoryLevelInKB];
  [v4 setObject:v66 forKey:@"endMemoryLevelInKB"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_31:
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_memoryLevelDeltaInKB];
    [v4 setObject:v19 forKey:@"memoryLevelDeltaInKB"];
  }

LABEL_32:
  processName = self->_processName;
  if (processName)
  {
    [v4 setObject:processName forKey:@"processName"];
  }

  gcdQueueName = self->_gcdQueueName;
  if (gcdQueueName)
  {
    [v4 setObject:gcdQueueName forKey:@"gcdQueueName"];
  }

  qosClassName = self->_qosClassName;
  if (qosClassName)
  {
    [v4 setObject:qosClassName forKey:@"qosClassName"];
  }

  relativePriority = self->_relativePriority;
  if (relativePriority)
  {
    [v4 setObject:relativePriority forKey:@"relativePriority"];
  }

  projectName = self->_projectName;
  if (projectName)
  {
    [v4 setObject:projectName forKey:@"projectName"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v26 = self->_attributes;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v84;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v84 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation = [*(*(&v83 + 1) + 8 * i) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"attributes"];
  }

  if ([(NSMutableArray *)self->_infoEvents count])
  {
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_infoEvents, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v33 = self->_infoEvents;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v80;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v80 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation2 = [*(*(&v79 + 1) + 8 * j) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation2];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v35);
    }

    [v4 setObject:v32 forKey:@"infoEvents"];
  }

  if ([(NSMutableArray *)self->_warningEvents count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_warningEvents, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v40 = self->_warningEvents;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v76;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v76 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation3 = [*(*(&v75 + 1) + 8 * k) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation3];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v75 objects:v89 count:16];
      }

      while (v42);
    }

    [v4 setObject:v39 forKey:@"warningEvents"];
  }

  if ([(NSMutableArray *)self->_debugEvents count])
  {
    v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_debugEvents, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v47 = self->_debugEvents;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v71 objects:v88 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v72;
      do
      {
        for (m = 0; m != v49; ++m)
        {
          if (*v72 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation4 = [*(*(&v71 + 1) + 8 * m) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation4];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v71 objects:v88 count:16];
      }

      while (v49);
    }

    [v4 setObject:v46 forKey:@"debugEvents"];
  }

  if ([(NSMutableArray *)self->_errorEvents count])
  {
    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_errorEvents, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v54 = self->_errorEvents;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v67 objects:v87 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v68;
      do
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v68 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation5 = [*(*(&v67 + 1) + 8 * n) dictionaryRepresentation];
          [v53 addObject:dictionaryRepresentation5];
        }

        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v67 objects:v87 count:16];
      }

      while (v56);
    }

    [v4 setObject:v53 forKey:@"errorEvents"];
  }

  v60 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  v57 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentSpanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spanId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_33:
      if ((v6 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_34:
    PBDataWriterWriteUint32Field();
  }

LABEL_35:
  if (self->_gcdQueueName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_qosClassName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_relativePriority)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_projectName)
  {
    PBDataWriterWriteStringField();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = self->_attributes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = self->_infoEvents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v14);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_warningEvents;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = self->_debugEvents;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v24);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = self->_errorEvents;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v33;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v27);
        }

        PBDataWriterWriteSubmessage();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v29);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v27 = toCopy;
  if (self->_deviceIdentifier)
  {
    [toCopy setDeviceIdentifier:?];
    toCopy = v27;
  }

  if (self->_testKey)
  {
    [v27 setTestKey:?];
    toCopy = v27;
  }

  if (self->_version)
  {
    [v27 setVersion:?];
    toCopy = v27;
  }

  if (self->_name)
  {
    [v27 setName:?];
    toCopy = v27;
  }

  if (self->_trialDeploymentId)
  {
    [v27 setTrialDeploymentId:?];
    toCopy = v27;
  }

  if (self->_trialExperimentId)
  {
    [v27 setTrialExperimentId:?];
    toCopy = v27;
  }

  if (self->_trialTreatmentId)
  {
    [v27 setTrialTreatmentId:?];
    toCopy = v27;
  }

  if (self->_traceId)
  {
    [v27 setTraceId:?];
    toCopy = v27;
  }

  if (self->_parentSpanId)
  {
    [v27 setParentSpanId:?];
    toCopy = v27;
  }

  if (self->_spanId)
  {
    [v27 setSpanId:?];
    toCopy = v27;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 25) = self->_privatizedStartTime;
    *(toCopy + 208) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(toCopy + 24) = self->_privatizedEndTime;
  *(toCopy + 208) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    *(toCopy + 18) = self->_intervalInMilliSeconds;
    *(toCopy + 208) |= 4u;
  }

LABEL_25:
  if (self->_errorString)
  {
    [v27 setErrorString:?];
    toCopy = v27;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 9) = self->_errorCode;
    *(toCopy + 208) |= 2u;
  }

  if (self->_processName)
  {
    [v27 setProcessName:?];
    toCopy = v27;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 36) = self->_startMemoryLevelInKB;
    *(toCopy + 208) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_33:
      if ((v6 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  *(toCopy + 8) = self->_endMemoryLevelInKB;
  *(toCopy + 208) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_34:
    *(toCopy + 19) = self->_memoryLevelDeltaInKB;
    *(toCopy + 208) |= 8u;
  }

LABEL_35:
  if (self->_gcdQueueName)
  {
    [v27 setGcdQueueName:?];
  }

  if (self->_qosClassName)
  {
    [v27 setQosClassName:?];
  }

  if (self->_relativePriority)
  {
    [v27 setRelativePriority:?];
  }

  if (self->_projectName)
  {
    [v27 setProjectName:?];
  }

  if ([(AeroMLTracerSpanEvent *)self attributesCount])
  {
    [v27 clearAttributes];
    attributesCount = [(AeroMLTracerSpanEvent *)self attributesCount];
    if (attributesCount)
    {
      v8 = attributesCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(AeroMLTracerSpanEvent *)self attributesAtIndex:i];
        [v27 addAttributes:v10];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self infoEventsCount])
  {
    [v27 clearInfoEvents];
    infoEventsCount = [(AeroMLTracerSpanEvent *)self infoEventsCount];
    if (infoEventsCount)
    {
      v12 = infoEventsCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(AeroMLTracerSpanEvent *)self infoEventsAtIndex:j];
        [v27 addInfoEvents:v14];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self warningEventsCount])
  {
    [v27 clearWarningEvents];
    warningEventsCount = [(AeroMLTracerSpanEvent *)self warningEventsCount];
    if (warningEventsCount)
    {
      v16 = warningEventsCount;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(AeroMLTracerSpanEvent *)self warningEventsAtIndex:k];
        [v27 addWarningEvents:v18];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self debugEventsCount])
  {
    [v27 clearDebugEvents];
    debugEventsCount = [(AeroMLTracerSpanEvent *)self debugEventsCount];
    if (debugEventsCount)
    {
      v20 = debugEventsCount;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(AeroMLTracerSpanEvent *)self debugEventsAtIndex:m];
        [v27 addDebugEvents:v22];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self errorEventsCount])
  {
    [v27 clearErrorEvents];
    errorEventsCount = [(AeroMLTracerSpanEvent *)self errorEventsCount];
    if (errorEventsCount)
    {
      v24 = errorEventsCount;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(AeroMLTracerSpanEvent *)self errorEventsAtIndex:n];
        [v27 addErrorEvents:v26];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_testKey copyWithZone:zone];
  v9 = *(v5 + 152);
  *(v5 + 152) = v8;

  v10 = [(NSString *)self->_version copyWithZone:zone];
  v11 = *(v5 + 192);
  *(v5 + 192) = v10;

  v12 = [(NSString *)self->_name copyWithZone:zone];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSString *)self->_trialDeploymentId copyWithZone:zone];
  v15 = *(v5 + 168);
  *(v5 + 168) = v14;

  v16 = [(NSString *)self->_trialExperimentId copyWithZone:zone];
  v17 = *(v5 + 176);
  *(v5 + 176) = v16;

  v18 = [(NSString *)self->_trialTreatmentId copyWithZone:zone];
  v19 = *(v5 + 184);
  *(v5 + 184) = v18;

  v20 = [(NSString *)self->_traceId copyWithZone:zone];
  v21 = *(v5 + 160);
  *(v5 + 160) = v20;

  v22 = [(NSString *)self->_parentSpanId copyWithZone:zone];
  v23 = *(v5 + 88);
  *(v5 + 88) = v22;

  v24 = [(NSString *)self->_spanId copyWithZone:zone];
  v25 = *(v5 + 136);
  *(v5 + 136) = v24;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 100) = self->_privatizedStartTime;
    *(v5 + 208) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_privatizedEndTime;
  *(v5 + 208) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 72) = self->_intervalInMilliSeconds;
    *(v5 + 208) |= 4u;
  }

LABEL_5:
  v27 = [(NSString *)self->_errorString copyWithZone:zone];
  v28 = *(v5 + 48);
  *(v5 + 48) = v27;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 36) = self->_errorCode;
    *(v5 + 208) |= 2u;
  }

  v29 = [(NSString *)self->_processName copyWithZone:zone];
  v30 = *(v5 + 104);
  *(v5 + 104) = v29;

  v31 = self->_has;
  if ((v31 & 0x40) != 0)
  {
    *(v5 + 144) = self->_startMemoryLevelInKB;
    *(v5 + 208) |= 0x40u;
    v31 = self->_has;
    if ((v31 & 1) == 0)
    {
LABEL_9:
      if ((v31 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 32) = self->_endMemoryLevelInKB;
  *(v5 + 208) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v5 + 76) = self->_memoryLevelDeltaInKB;
    *(v5 + 208) |= 8u;
  }

LABEL_11:
  v32 = [(NSString *)self->_gcdQueueName copyWithZone:zone];
  v33 = *(v5 + 56);
  *(v5 + 56) = v32;

  v34 = [(NSString *)self->_qosClassName copyWithZone:zone];
  v35 = *(v5 + 120);
  *(v5 + 120) = v34;

  v36 = [(NSString *)self->_relativePriority copyWithZone:zone];
  v37 = *(v5 + 128);
  *(v5 + 128) = v36;

  v38 = [(NSString *)self->_projectName copyWithZone:zone];
  v39 = *(v5 + 112);
  *(v5 + 112) = v38;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v40 = self->_attributes;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v88;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v88 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v87 + 1) + 8 * i) copyWithZone:zone];
        [v5 addAttributes:v45];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v42);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v46 = self->_infoEvents;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v83 objects:v94 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v84;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v84 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v83 + 1) + 8 * j) copyWithZone:zone];
        [v5 addInfoEvents:v51];
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v83 objects:v94 count:16];
    }

    while (v48);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v52 = self->_warningEvents;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v79 objects:v93 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v80;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v80 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v79 + 1) + 8 * k) copyWithZone:zone];
        [v5 addWarningEvents:v57];
      }

      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v54);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v58 = self->_debugEvents;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v75 objects:v92 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v76;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v76 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v75 + 1) + 8 * m) copyWithZone:zone];
        [v5 addDebugEvents:v63];
      }

      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v75 objects:v92 count:16];
    }

    while (v60);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v64 = self->_errorEvents;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v71 objects:v91 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v72;
    do
    {
      for (n = 0; n != v66; ++n)
      {
        if (*v72 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v71 + 1) + 8 * n) copyWithZone:{zone, v71}];
        [v5 addErrorEvents:v69];
      }

      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v71 objects:v91 count:16];
    }

    while (v66);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)deviceIdentifier isEqual:?])
    {
      goto LABEL_81;
    }
  }

  testKey = self->_testKey;
  if (testKey | *(equalCopy + 19))
  {
    if (![(NSString *)testKey isEqual:?])
    {
      goto LABEL_81;
    }
  }

  version = self->_version;
  if (version | *(equalCopy + 24))
  {
    if (![(NSString *)version isEqual:?])
    {
      goto LABEL_81;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 10))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId | *(equalCopy + 21))
  {
    if (![(NSString *)trialDeploymentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId | *(equalCopy + 22))
  {
    if (![(NSString *)trialExperimentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId | *(equalCopy + 23))
  {
    if (![(NSString *)trialTreatmentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  traceId = self->_traceId;
  if (traceId | *(equalCopy + 20))
  {
    if (![(NSString *)traceId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  parentSpanId = self->_parentSpanId;
  if (parentSpanId | *(equalCopy + 11))
  {
    if (![(NSString *)parentSpanId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  spanId = self->_spanId;
  if (spanId | *(equalCopy + 17))
  {
    if (![(NSString *)spanId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 208) & 0x20) == 0 || self->_privatizedStartTime != *(equalCopy + 25))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 0x20) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 208) & 0x10) == 0 || self->_privatizedEndTime != *(equalCopy + 24))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 0x10) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 208) & 4) == 0 || self->_intervalInMilliSeconds != *(equalCopy + 18))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 4) != 0)
  {
    goto LABEL_81;
  }

  errorString = self->_errorString;
  if (errorString | *(equalCopy + 6))
  {
    if (![(NSString *)errorString isEqual:?])
    {
      goto LABEL_81;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 208) & 2) == 0 || self->_errorCode != *(equalCopy + 9))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 2) != 0)
  {
    goto LABEL_81;
  }

  processName = self->_processName;
  if (processName | *(equalCopy + 13))
  {
    if ([(NSString *)processName isEqual:?])
    {
      has = self->_has;
      goto LABEL_48;
    }

LABEL_81:
    v27 = 0;
    goto LABEL_82;
  }

LABEL_48:
  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 208) & 0x40) == 0 || self->_startMemoryLevelInKB != *(equalCopy + 36))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 0x40) != 0)
  {
    goto LABEL_81;
  }

  if (has)
  {
    if ((*(equalCopy + 208) & 1) == 0 || self->_endMemoryLevelInKB != *(equalCopy + 8))
    {
      goto LABEL_81;
    }
  }

  else if (*(equalCopy + 208))
  {
    goto LABEL_81;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 208) & 8) == 0 || self->_memoryLevelDeltaInKB != *(equalCopy + 19))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 208) & 8) != 0)
  {
    goto LABEL_81;
  }

  gcdQueueName = self->_gcdQueueName;
  if (gcdQueueName | *(equalCopy + 7) && ![(NSString *)gcdQueueName isEqual:?])
  {
    goto LABEL_81;
  }

  qosClassName = self->_qosClassName;
  if (qosClassName | *(equalCopy + 15))
  {
    if (![(NSString *)qosClassName isEqual:?])
    {
      goto LABEL_81;
    }
  }

  relativePriority = self->_relativePriority;
  if (relativePriority | *(equalCopy + 16))
  {
    if (![(NSString *)relativePriority isEqual:?])
    {
      goto LABEL_81;
    }
  }

  projectName = self->_projectName;
  if (projectName | *(equalCopy + 14))
  {
    if (![(NSString *)projectName isEqual:?])
    {
      goto LABEL_81;
    }
  }

  attributes = self->_attributes;
  if (attributes | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)attributes isEqual:?])
    {
      goto LABEL_81;
    }
  }

  infoEvents = self->_infoEvents;
  if (infoEvents | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)infoEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  warningEvents = self->_warningEvents;
  if (warningEvents | *(equalCopy + 25))
  {
    if (![(NSMutableArray *)warningEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  debugEvents = self->_debugEvents;
  if (debugEvents | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)debugEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  errorEvents = self->_errorEvents;
  if (errorEvents | *(equalCopy + 5))
  {
    v27 = [(NSMutableArray *)errorEvents isEqual:?];
  }

  else
  {
    v27 = 1;
  }

LABEL_82:

  return v27;
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_deviceIdentifier hash];
  v30 = [(NSString *)self->_testKey hash];
  v29 = [(NSString *)self->_version hash];
  v28 = [(NSString *)self->_name hash];
  v27 = [(NSString *)self->_trialDeploymentId hash];
  v26 = [(NSString *)self->_trialExperimentId hash];
  v25 = [(NSString *)self->_trialTreatmentId hash];
  v24 = [(NSString *)self->_traceId hash];
  v3 = [(NSString *)self->_parentSpanId hash];
  v4 = [(NSString *)self->_spanId hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = 2654435761 * self->_privatizedStartTime;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_privatizedEndTime;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_intervalInMilliSeconds;
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = [(NSString *)self->_errorString hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_errorCode;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_processName hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_13;
    }

LABEL_16:
    v12 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v11 = 2654435761 * self->_startMemoryLevelInKB;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v12 = 2654435761 * self->_endMemoryLevelInKB;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = 2654435761 * self->_memoryLevelDeltaInKB;
LABEL_18:
  v14 = v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v15 = v12 ^ v13 ^ [(NSString *)self->_gcdQueueName hash];
  v16 = v15 ^ [(NSString *)self->_qosClassName hash];
  v17 = v16 ^ [(NSString *)self->_relativePriority hash];
  v18 = v17 ^ [(NSString *)self->_projectName hash];
  v19 = v14 ^ v18 ^ [(NSMutableArray *)self->_attributes hash];
  v20 = [(NSMutableArray *)self->_infoEvents hash];
  v21 = v20 ^ [(NSMutableArray *)self->_warningEvents hash];
  v22 = v21 ^ [(NSMutableArray *)self->_debugEvents hash];
  return v19 ^ v22 ^ [(NSMutableArray *)self->_errorEvents hash];
}

- (void)mergeFrom:(id)from
{
  v57 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(AeroMLTracerSpanEvent *)self setDeviceIdentifier:?];
  }

  if (*(fromCopy + 19))
  {
    [(AeroMLTracerSpanEvent *)self setTestKey:?];
  }

  if (*(fromCopy + 24))
  {
    [(AeroMLTracerSpanEvent *)self setVersion:?];
  }

  if (*(fromCopy + 10))
  {
    [(AeroMLTracerSpanEvent *)self setName:?];
  }

  if (*(fromCopy + 21))
  {
    [(AeroMLTracerSpanEvent *)self setTrialDeploymentId:?];
  }

  if (*(fromCopy + 22))
  {
    [(AeroMLTracerSpanEvent *)self setTrialExperimentId:?];
  }

  if (*(fromCopy + 23))
  {
    [(AeroMLTracerSpanEvent *)self setTrialTreatmentId:?];
  }

  if (*(fromCopy + 20))
  {
    [(AeroMLTracerSpanEvent *)self setTraceId:?];
  }

  if (*(fromCopy + 11))
  {
    [(AeroMLTracerSpanEvent *)self setParentSpanId:?];
  }

  if (*(fromCopy + 17))
  {
    [(AeroMLTracerSpanEvent *)self setSpanId:?];
  }

  v5 = *(fromCopy + 208);
  if ((v5 & 0x20) != 0)
  {
    self->_privatizedStartTime = *(fromCopy + 25);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 208);
    if ((v5 & 0x10) == 0)
    {
LABEL_23:
      if ((v5 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*(fromCopy + 208) & 0x10) == 0)
  {
    goto LABEL_23;
  }

  self->_privatizedEndTime = *(fromCopy + 24);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 208) & 4) != 0)
  {
LABEL_24:
    self->_intervalInMilliSeconds = *(fromCopy + 18);
    *&self->_has |= 4u;
  }

LABEL_25:
  if (*(fromCopy + 6))
  {
    [(AeroMLTracerSpanEvent *)self setErrorString:?];
  }

  if ((*(fromCopy + 208) & 2) != 0)
  {
    self->_errorCode = *(fromCopy + 9);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 13))
  {
    [(AeroMLTracerSpanEvent *)self setProcessName:?];
  }

  v6 = *(fromCopy + 208);
  if ((v6 & 0x40) != 0)
  {
    self->_startMemoryLevelInKB = *(fromCopy + 36);
    *&self->_has |= 0x40u;
    v6 = *(fromCopy + 208);
    if ((v6 & 1) == 0)
    {
LABEL_33:
      if ((v6 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*(fromCopy + 208) & 1) == 0)
  {
    goto LABEL_33;
  }

  self->_endMemoryLevelInKB = *(fromCopy + 8);
  *&self->_has |= 1u;
  if ((*(fromCopy + 208) & 8) != 0)
  {
LABEL_34:
    self->_memoryLevelDeltaInKB = *(fromCopy + 19);
    *&self->_has |= 8u;
  }

LABEL_35:
  if (*(fromCopy + 7))
  {
    [(AeroMLTracerSpanEvent *)self setGcdQueueName:?];
  }

  if (*(fromCopy + 15))
  {
    [(AeroMLTracerSpanEvent *)self setQosClassName:?];
  }

  if (*(fromCopy + 16))
  {
    [(AeroMLTracerSpanEvent *)self setRelativePriority:?];
  }

  if (*(fromCopy + 14))
  {
    [(AeroMLTracerSpanEvent *)self setProjectName:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AeroMLTracerSpanEvent *)self addAttributes:*(*(&v48 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = *(fromCopy + 8);
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AeroMLTracerSpanEvent *)self addInfoEvents:*(*(&v44 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v14);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = *(fromCopy + 25);
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AeroMLTracerSpanEvent *)self addWarningEvents:*(*(&v40 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = *(fromCopy + 2);
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(AeroMLTracerSpanEvent *)self addDebugEvents:*(*(&v36 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v24);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = *(fromCopy + 5);
  v28 = [v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v33;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(AeroMLTracerSpanEvent *)self addErrorEvents:*(*(&v32 + 1) + 8 * n), v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v29);
  }
}

@end