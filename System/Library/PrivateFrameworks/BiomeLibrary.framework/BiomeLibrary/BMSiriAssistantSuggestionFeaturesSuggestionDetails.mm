@interface BMSiriAssistantSuggestionFeaturesSuggestionDetails
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)id targetOwner:(id)owner sourceOwner:(id)sourceOwner classificationCentroid:(id)centroid channel:(id)channel confidence:(id)confidence deliveryVehicle:(id)vehicle;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesSuggestionDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
    suggestionId2 = [v5 suggestionId];
    v8 = suggestionId2;
    if (suggestionId == suggestionId2)
    {
    }

    else
    {
      suggestionId3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
      suggestionId4 = [v5 suggestionId];
      v11 = [suggestionId3 isEqual:suggestionId4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
    targetOwner2 = [v5 targetOwner];
    v15 = targetOwner2;
    if (targetOwner == targetOwner2)
    {
    }

    else
    {
      targetOwner3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
      targetOwner4 = [v5 targetOwner];
      v18 = [targetOwner3 isEqual:targetOwner4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
    sourceOwner2 = [v5 sourceOwner];
    v21 = sourceOwner2;
    if (sourceOwner == sourceOwner2)
    {
    }

    else
    {
      sourceOwner3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
      sourceOwner4 = [v5 sourceOwner];
      v24 = [sourceOwner3 isEqual:sourceOwner4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
    classificationCentroid2 = [v5 classificationCentroid];
    v27 = classificationCentroid2;
    if (classificationCentroid == classificationCentroid2)
    {
    }

    else
    {
      classificationCentroid3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
      classificationCentroid4 = [v5 classificationCentroid];
      v30 = [classificationCentroid3 isEqual:classificationCentroid4];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
    channel2 = [v5 channel];
    v33 = channel2;
    if (channel == channel2)
    {
    }

    else
    {
      channel3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
      channel4 = [v5 channel];
      v36 = [channel3 isEqual:channel4];

      if (!v36)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && ![v5 hasConfidence] || -[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && objc_msgSend(v5, "hasConfidence") && (-[BMSiriAssistantSuggestionFeaturesSuggestionDetails confidence](self, "confidence"), v38 = v37, objc_msgSend(v5, "confidence"), v38 == v39))
    {
      deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
      deliveryVehicle2 = [v5 deliveryVehicle];
      if (deliveryVehicle == deliveryVehicle2)
      {
        v12 = 1;
      }

      else
      {
        deliveryVehicle3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
        deliveryVehicle4 = [v5 deliveryVehicle];
        v12 = [deliveryVehicle3 isEqual:deliveryVehicle4];
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  if (![(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self hasConfidence]|| ([(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v9 = [v8 numberWithDouble:?];
  }

  deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v25[0] = @"suggestionId";
  null = suggestionId;
  if (!suggestionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"targetOwner";
  null2 = targetOwner;
  if (!targetOwner)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v26[1] = null2;
  v25[2] = @"sourceOwner";
  null3 = sourceOwner;
  if (!sourceOwner)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = suggestionId;
  v26[2] = null3;
  v25[3] = @"classificationCentroid";
  null4 = classificationCentroid;
  if (!classificationCentroid)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = targetOwner;
  v26[3] = null4;
  v25[4] = @"channel";
  null5 = channel;
  if (!channel)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"confidence";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"deliveryVehicle";
  null7 = deliveryVehicle;
  if (!deliveryVehicle)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (deliveryVehicle)
  {
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  if (!channel)
  {
  }

  if (!classificationCentroid)
  {
  }

  if (sourceOwner)
  {
    if (v22)
    {
      goto LABEL_27;
    }

LABEL_34:

    if (v23)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v23)
  {
    goto LABEL_28;
  }

LABEL_35:

LABEL_28:

  return v18;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"targetOwner"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v20 = 0;
          goto LABEL_29;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"targetOwner"];
        v69 = v57;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v11 = v30 = error;
        v31 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        v10 = 0;
        v20 = 0;
        *v30 = v31;
        goto LABEL_28;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sourceOwner"];
    v54 = v9;
    v56 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v57 = 0;
          v20 = 0;
          goto LABEL_28;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceOwner"];
        v67 = v21;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v34 = v32;
        v10 = v56;
        v35 = [v34 initWithDomain:v33 code:2 userInfo:v12];
        v57 = 0;
        v20 = 0;
        *errorCopy = v35;
LABEL_27:

        v9 = v54;
LABEL_28:

        goto LABEL_29;
      }

      v57 = v11;
    }

    else
    {
      v57 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"classificationCentroid"];
    v51 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v21 = 0;
          v20 = 0;
          goto LABEL_27;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"classificationCentroid"];
        v65 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v38 = v36;
        v10 = v56;
        v39 = [v38 initWithDomain:v37 code:2 userInfo:v13];
        v21 = 0;
        v20 = 0;
        *errorCopy = v39;
        goto LABEL_26;
      }

      v53 = v12;
    }

    else
    {
      v53 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"channel"];
    v52 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v14 = 0;
          v20 = 0;
          goto LABEL_25;
        }

        selfCopy3 = self;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"channel"];
        v63 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v42 = [v40 initWithDomain:v41 code:2 userInfo:v15];
        v14 = 0;
        v20 = 0;
        *errorCopy = v42;
LABEL_24:

        self = selfCopy3;
        v8 = v52;
        v10 = v56;
LABEL_25:
        v21 = v53;
LABEL_26:

        v7 = v51;
        goto LABEL_27;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    v50 = v14;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_24;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v61 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v45 = [v43 initWithDomain:v44 code:2 userInfo:v18];
        v17 = 0;
        v20 = 0;
        *errorCopy = v45;
        goto LABEL_23;
      }

      v17 = v15;
    }

    else
    {
      selfCopy3 = self;
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deliveryVehicle"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryVehicle"];
          v59 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          *errorCopy = [v49 initWithDomain:v48 code:2 userInfo:v47];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_23;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)selfCopy3 initWithSuggestionId:v52 targetOwner:v56 sourceOwner:v57 classificationCentroid:v53 channel:v50 confidence:v17 deliveryVehicle:v19];
    selfCopy3 = v20;
LABEL_23:

    v14 = v50;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v70 = *MEMORY[0x1E696A578];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionId"];
  v71[0] = v25;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  v26 = v23;
  v10 = v25;
  v27 = [v26 initWithDomain:v24 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *error = v27;
LABEL_29:

LABEL_30:
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_targetOwner)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceOwner)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_classificationCentroid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_channel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasConfidence)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_deliveryVehicle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
            v16 = PBReaderReadString();
            v17 = 24;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          default:
            goto LABEL_31;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v5->_hasConfidence = 1;
          v26 = 0.0;
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_confidence = v26;
          goto LABEL_39;
        }

        if (v15 != 7)
        {
LABEL_31:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        v16 = PBReaderReadString();
        v17 = 72;
      }

      else if (v15 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_31;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v20 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_39:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_44:
    v23 = 0;
  }

  else
  {
LABEL_45:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
  v10 = [v9 numberWithDouble:?];
  deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v12 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesSuggestionDetails with suggestionId: %@, targetOwner: %@, sourceOwner: %@, classificationCentroid: %@, channel: %@, confidence: %@, deliveryVehicle: %@", suggestionId, targetOwner, sourceOwner, classificationCentroid, channel, v10, deliveryVehicle];

  return v12;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)id targetOwner:(id)owner sourceOwner:(id)sourceOwner classificationCentroid:(id)centroid channel:(id)channel confidence:(id)confidence deliveryVehicle:(id)vehicle
{
  idCopy = id;
  ownerCopy = owner;
  sourceOwnerCopy = sourceOwner;
  centroidCopy = centroid;
  channelCopy = channel;
  confidenceCopy = confidence;
  vehicleCopy = vehicle;
  v26.receiver = self;
  v26.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_suggestionId, id);
    objc_storeStrong(&v19->_targetOwner, owner);
    objc_storeStrong(&v19->_sourceOwner, sourceOwner);
    objc_storeStrong(&v19->_classificationCentroid, centroid);
    objc_storeStrong(&v19->_channel, channel);
    if (confidenceCopy)
    {
      v19->_hasConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v19->_hasConfidence = 0;
      v20 = -1.0;
    }

    v19->_confidence = v20;
    objc_storeStrong(&v19->_deliveryVehicle, vehicle);
  }

  return v19;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetOwner" number:2 type:13 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceOwner" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classificationCentroid" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"channel" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:6 type:0 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryVehicle" number:7 type:13 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetOwner" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceOwner" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classificationCentroid" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"channel" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryVehicle" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesSuggestionDetails alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end