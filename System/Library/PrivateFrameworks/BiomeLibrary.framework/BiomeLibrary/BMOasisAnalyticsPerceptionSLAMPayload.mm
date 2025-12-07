@interface BMOasisAnalyticsPerceptionSLAMPayload
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsPerceptionSLAMPayload)initWithContextSnapshot:(id)snapshot submapCreated:(id)created submapUpdated:(id)updated submapLoaded:(id)loaded trackingLost:(id)lost trackingState:(id)state relocalizationSucceeded:(id)succeeded;
- (BMOasisAnalyticsPerceptionSLAMPayload)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsPerceptionSLAMPayload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contextSnapshot = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
    contextSnapshot2 = [v5 contextSnapshot];
    v8 = contextSnapshot2;
    if (contextSnapshot == contextSnapshot2)
    {
    }

    else
    {
      contextSnapshot3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
      contextSnapshot4 = [v5 contextSnapshot];
      v11 = [contextSnapshot3 isEqual:contextSnapshot4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    submapCreated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
    submapCreated2 = [v5 submapCreated];
    v15 = submapCreated2;
    if (submapCreated == submapCreated2)
    {
    }

    else
    {
      submapCreated3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
      submapCreated4 = [v5 submapCreated];
      v18 = [submapCreated3 isEqual:submapCreated4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    submapUpdated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
    submapUpdated2 = [v5 submapUpdated];
    v21 = submapUpdated2;
    if (submapUpdated == submapUpdated2)
    {
    }

    else
    {
      submapUpdated3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
      submapUpdated4 = [v5 submapUpdated];
      v24 = [submapUpdated3 isEqual:submapUpdated4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    submapLoaded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
    submapLoaded2 = [v5 submapLoaded];
    v27 = submapLoaded2;
    if (submapLoaded == submapLoaded2)
    {
    }

    else
    {
      submapLoaded3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
      submapLoaded4 = [v5 submapLoaded];
      v30 = [submapLoaded3 isEqual:submapLoaded4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    trackingLost = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
    trackingLost2 = [v5 trackingLost];
    v33 = trackingLost2;
    if (trackingLost == trackingLost2)
    {
    }

    else
    {
      trackingLost3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
      trackingLost4 = [v5 trackingLost];
      v36 = [trackingLost3 isEqual:trackingLost4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    trackingState = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
    trackingState2 = [v5 trackingState];
    v39 = trackingState2;
    if (trackingState == trackingState2)
    {
    }

    else
    {
      trackingState3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
      trackingState4 = [v5 trackingState];
      v42 = [trackingState3 isEqual:trackingState4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    relocalizationSucceeded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
    relocalizationSucceeded2 = [v5 relocalizationSucceeded];
    if (relocalizationSucceeded == relocalizationSucceeded2)
    {
      v12 = 1;
    }

    else
    {
      relocalizationSucceeded3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
      relocalizationSucceeded4 = [v5 relocalizationSucceeded];
      v12 = [relocalizationSucceeded3 isEqual:relocalizationSucceeded4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v32[7] = *MEMORY[0x1E69E9840];
  contextSnapshot = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
  jsonDictionary = [contextSnapshot jsonDictionary];

  submapCreated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
  jsonDictionary2 = [submapCreated jsonDictionary];

  submapUpdated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
  jsonDictionary3 = [submapUpdated jsonDictionary];

  submapLoaded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
  jsonDictionary4 = [submapLoaded jsonDictionary];

  trackingLost = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
  jsonDictionary5 = [trackingLost jsonDictionary];

  trackingState = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
  jsonDictionary6 = [trackingState jsonDictionary];

  relocalizationSucceeded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
  jsonDictionary7 = [relocalizationSucceeded jsonDictionary];

  v31[0] = @"contextSnapshot";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v32[0] = null;
  v31[1] = @"submapCreated";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v32[1] = null2;
  v31[2] = @"submapUpdated";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = jsonDictionary;
  v26 = null3;
  v32[2] = null3;
  v31[3] = @"submapLoaded";
  null4 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = jsonDictionary2;
  v32[3] = null4;
  v31[4] = @"trackingLost";
  null5 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = null5;
  v31[5] = @"trackingState";
  null6 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = null6;
  v31[6] = @"relocalizationSucceeded";
  null7 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  if (jsonDictionary7)
  {
    if (jsonDictionary6)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (jsonDictionary5)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (!jsonDictionary6)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (jsonDictionary5)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!jsonDictionary4)
  {
  }

  if (jsonDictionary3)
  {
    if (v29)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v29)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v30)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:

  return v24;
}

- (BMOasisAnalyticsPerceptionSLAMPayload)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"contextSnapshot"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"submapCreated"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v65 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"submapUpdated"];
      errorCopy2 = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v64 = 0;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"submapLoaded"];
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v60 = 0;
LABEL_13:
          v12 = [dictionaryCopy objectForKeyedSubscript:@"trackingLost"];
          v61 = v8;
          if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v59 = 0;
LABEL_16:
            v13 = [dictionaryCopy objectForKeyedSubscript:@"trackingState"];
            errorCopy = error;
            if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v53 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v68 = 0;
              v53 = [[BMOasisAnalyticsTrackingStateEvent alloc] initWithJSONDictionary:v14 error:&v68];
              v37 = v68;
              if (v37)
              {
                if (error)
                {
                  v37 = v37;
                  *error = v37;
                }

                goto LABEL_88;
              }

LABEL_19:
              v14 = [dictionaryCopy objectForKeyedSubscript:@"relocalizationSucceeded"];
              if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v15 = 0;
LABEL_22:
                error = [(BMOasisAnalyticsPerceptionSLAMPayload *)errorCopy2 initWithContextSnapshot:v61 submapCreated:v65 submapUpdated:v64 submapLoaded:v60 trackingLost:v59 trackingState:v53 relocalizationSucceeded:v15];
                errorCopy2 = error;
LABEL_79:

                goto LABEL_80;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v14;
                v67 = 0;
                v15 = [[BMOasisAnalyticsRelocalizationSucceededEvent alloc] initWithJSONDictionary:v42 error:&v67];
                v43 = v67;
                if (!v43)
                {

                  goto LABEL_22;
                }

                if (errorCopy)
                {
                  v43 = v43;
                  *errorCopy = v43;
                }

LABEL_78:
                error = 0;
                goto LABEL_79;
              }

              if (error)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v50 = *MEMORY[0x1E698F240];
                v74 = *MEMORY[0x1E696A578];
                v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"relocalizationSucceeded"];
                v75 = v15;
                v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                *errorCopy = [v52 initWithDomain:v50 code:2 userInfo:v48];

                goto LABEL_78;
              }

LABEL_88:
              error = 0;
              goto LABEL_80;
            }

            if (error)
            {
              v51 = objc_alloc(MEMORY[0x1E696ABC0]);
              v47 = *MEMORY[0x1E698F240];
              v76 = *MEMORY[0x1E696A578];
              v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trackingState"];
              v77 = v53;
              v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
              error = 0;
              *errorCopy = [v51 initWithDomain:v47 code:2 userInfo:v14];
LABEL_80:
            }

LABEL_81:
            v17 = v65;
LABEL_82:

            v8 = v61;
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v69 = 0;
            v59 = [[BMOasisAnalyticsTrackingLostEvent alloc] initWithJSONDictionary:v13 error:&v69];
            v32 = v69;
            if (v32)
            {
              v17 = v65;
              if (error)
              {
                v32 = v32;
                *error = v32;
              }

              error = 0;
              goto LABEL_82;
            }

            goto LABEL_16;
          }

          if (error)
          {
            errorCopy3 = error;
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v54 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trackingLost"];
            v79 = v59;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v46 = [v45 initWithDomain:v54 code:2 userInfo:v13];
            error = 0;
            *errorCopy3 = v46;
            goto LABEL_81;
          }

LABEL_70:
          v17 = v65;
LABEL_83:

          goto LABEL_84;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v70 = 0;
          v60 = [[BMOasisAnalyticsSubmapLoadedEvent alloc] initWithJSONDictionary:v12 error:&v70];
          v26 = v70;
          if (v26)
          {
            v17 = v65;
            if (error)
            {
              v26 = v26;
              *error = v26;
            }

            error = 0;
            goto LABEL_83;
          }

          goto LABEL_13;
        }

        if (error)
        {
          errorCopy4 = error;
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = v8;
          v39 = *MEMORY[0x1E698F240];
          v80 = *MEMORY[0x1E696A578];
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapLoaded"];
          v81 = v60;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v40 = v39;
          v8 = v63;
          v41 = [v38 initWithDomain:v40 code:2 userInfo:v12];
          error = 0;
          *errorCopy4 = v41;
          goto LABEL_70;
        }

LABEL_61:
        v17 = v65;
LABEL_84:

        self = errorCopy2;
        goto LABEL_85;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v71 = 0;
        v64 = [[BMOasisAnalyticsSubmapUpdatedEvent alloc] initWithJSONDictionary:v11 error:&v71];
        v19 = v71;
        if (v19)
        {
          v17 = v65;
          if (error)
          {
            v19 = v19;
            *error = v19;
          }

          error = 0;
          goto LABEL_84;
        }

        goto LABEL_10;
      }

      if (error)
      {
        errorCopy5 = error;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = v8;
        v34 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapUpdated"];
        v83 = v64;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v35 = v34;
        v8 = v62;
        v36 = [v33 initWithDomain:v35 code:2 userInfo:v11];
        error = 0;
        *errorCopy5 = v36;
        goto LABEL_61;
      }

      v17 = v65;
LABEL_85:

      goto LABEL_86;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v72 = 0;
      v17 = [[BMOasisAnalyticsSubmapCreatedEvent alloc] initWithJSONDictionary:v10 error:&v72];
      v18 = v72;
      if (v18)
      {
        if (error)
        {
          v18 = v18;
          *error = v18;
        }

        error = 0;
        goto LABEL_85;
      }

      v65 = v17;

      goto LABEL_7;
    }

    if (error)
    {
      errorCopy6 = error;
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = v8;
      v29 = *MEMORY[0x1E698F240];
      v84 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapCreated"];
      v85 = v17;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v30 = v29;
      v8 = v28;
      v31 = [v27 initWithDomain:v30 code:2 userInfo:v10];
      error = 0;
      *errorCopy6 = v31;
      goto LABEL_85;
    }

LABEL_86:

    goto LABEL_87;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v73 = 0;
    v8 = [[BMOasisAnalyticsContextSnapshotEvent alloc] initWithJSONDictionary:v9 error:&v73];
    v16 = v73;
    if (v16)
    {
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      error = 0;
      goto LABEL_86;
    }

    goto LABEL_4;
  }

  if (error)
  {
    errorCopy7 = error;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v86 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contextSnapshot"];
    v87[0] = v23;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
    v24 = v22;
    v8 = v23;
    v25 = [v21 initWithDomain:v24 code:2 userInfo:v9];
    error = 0;
    *errorCopy7 = v25;
    goto LABEL_86;
  }

LABEL_87:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsPerceptionSLAMPayload *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_contextSnapshot)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsContextSnapshotEvent *)self->_contextSnapshot writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_submapCreated)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapCreatedEvent *)self->_submapCreated writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_submapUpdated)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapUpdatedEvent *)self->_submapUpdated writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_submapLoaded)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapLoadedEvent *)self->_submapLoaded writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_trackingLost)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsTrackingLostEvent *)self->_trackingLost writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_trackingState)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsTrackingStateEvent *)self->_trackingState writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_relocalizationSucceeded)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsRelocalizationSucceededEvent *)self->_relocalizationSucceeded writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMOasisAnalyticsPerceptionSLAMPayload;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsContextSnapshotEvent alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 24;
            break;
          case 2:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsSubmapCreatedEvent alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 32;
            break;
          case 3:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsSubmapUpdatedEvent alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 40;
            break;
          default:
            goto LABEL_39;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v16 = [[BMOasisAnalyticsTrackingStateEvent alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_53;
          }

          v17 = 64;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_39:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v16 = [[BMOasisAnalyticsRelocalizationSucceededEvent alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_53;
          }

          v17 = 72;
        }
      }

      else if (v15 == 4)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_53;
        }

        v16 = [[BMOasisAnalyticsSubmapLoadedEvent alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_39;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_53;
        }

        v16 = [[BMOasisAnalyticsTrackingLostEvent alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = 56;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_51:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_53:
    v20 = 0;
  }

  else
  {
LABEL_54:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  contextSnapshot = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
  submapCreated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
  submapUpdated = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
  submapLoaded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
  trackingLost = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
  trackingState = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
  relocalizationSucceeded = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
  v11 = [v3 initWithFormat:@"BMOasisAnalyticsPerceptionSLAMPayload with contextSnapshot: %@, submapCreated: %@, submapUpdated: %@, submapLoaded: %@, trackingLost: %@, trackingState: %@, relocalizationSucceeded: %@", contextSnapshot, submapCreated, submapUpdated, submapLoaded, trackingLost, trackingState, relocalizationSucceeded];

  return v11;
}

- (BMOasisAnalyticsPerceptionSLAMPayload)initWithContextSnapshot:(id)snapshot submapCreated:(id)created submapUpdated:(id)updated submapLoaded:(id)loaded trackingLost:(id)lost trackingState:(id)state relocalizationSucceeded:(id)succeeded
{
  snapshotCopy = snapshot;
  createdCopy = created;
  updatedCopy = updated;
  loadedCopy = loaded;
  lostCopy = lost;
  stateCopy = state;
  succeededCopy = succeeded;
  v25.receiver = self;
  v25.super_class = BMOasisAnalyticsPerceptionSLAMPayload;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_contextSnapshot, snapshot);
    objc_storeStrong(&v18->_submapCreated, created);
    objc_storeStrong(&v18->_submapUpdated, updated);
    objc_storeStrong(&v18->_submapLoaded, loaded);
    objc_storeStrong(&v18->_trackingLost, lost);
    objc_storeStrong(&v18->_trackingState, state);
    objc_storeStrong(&v18->_relocalizationSucceeded, succeeded);
  }

  return v18;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextSnapshot" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapCreated" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapUpdated" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapLoaded" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingLost" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingState" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"relocalizationSucceeded" number:7 type:14 subMessageClass:objc_opt_class()];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextSnapshot_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_796];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapCreated_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_798];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapUpdated_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_800];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapLoaded_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_802];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trackingLost_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_804];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trackingState_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_806];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"relocalizationSucceeded_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_808];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 relocalizationSucceeded];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 trackingState];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 trackingLost];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 submapLoaded];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 submapUpdated];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 submapCreated];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 contextSnapshot];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMOasisAnalyticsPerceptionSLAMPayload alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end