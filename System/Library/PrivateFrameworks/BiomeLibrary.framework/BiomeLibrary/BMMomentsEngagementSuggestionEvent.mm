@interface BMMomentsEngagementSuggestionEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementSuggestionEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEngagementSuggestionEvent)initWithType:(int)type timestamp:(id)timestamp fullBundleOrderedSet:(id)set clientIdentifier:(id)identifier viewContainerName:(id)name viewVisibleTime:(id)time suggestionType:(id)suggestionType viewVisibleSuggestionsCount:(id)self0 viewTotalSuggestionsCount:(id)self1 notificationInfo:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)_fullBundleOrderedSetJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementSuggestionEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMomentsEngagementSuggestionEvent *)self type];
    if (type == [v5 type])
    {
      timestamp = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
      timestamp2 = [v5 timestamp];
      v9 = timestamp2;
      if (timestamp == timestamp2)
      {
      }

      else
      {
        timestamp3 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
        timestamp4 = [v5 timestamp];
        v12 = [timestamp3 isEqual:timestamp4];

        if (!v12)
        {
          goto LABEL_41;
        }
      }

      fullBundleOrderedSet = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
      fullBundleOrderedSet2 = [v5 fullBundleOrderedSet];
      v16 = fullBundleOrderedSet2;
      if (fullBundleOrderedSet == fullBundleOrderedSet2)
      {
      }

      else
      {
        fullBundleOrderedSet3 = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
        fullBundleOrderedSet4 = [v5 fullBundleOrderedSet];
        v19 = [fullBundleOrderedSet3 isEqual:fullBundleOrderedSet4];

        if (!v19)
        {
          goto LABEL_41;
        }
      }

      clientIdentifier = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
      clientIdentifier2 = [v5 clientIdentifier];
      v22 = clientIdentifier2;
      if (clientIdentifier == clientIdentifier2)
      {
      }

      else
      {
        clientIdentifier3 = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
        clientIdentifier4 = [v5 clientIdentifier];
        v25 = [clientIdentifier3 isEqual:clientIdentifier4];

        if (!v25)
        {
          goto LABEL_41;
        }
      }

      viewContainerName = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
      viewContainerName2 = [v5 viewContainerName];
      v28 = viewContainerName2;
      if (viewContainerName == viewContainerName2)
      {
      }

      else
      {
        viewContainerName3 = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
        viewContainerName4 = [v5 viewContainerName];
        v31 = [viewContainerName3 isEqual:viewContainerName4];

        if (!v31)
        {
          goto LABEL_41;
        }
      }

      if (-[BMMomentsEngagementSuggestionEvent hasViewVisibleTime](self, "hasViewVisibleTime") || [v5 hasViewVisibleTime])
      {
        if (![(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleTime])
        {
          goto LABEL_41;
        }

        if (![v5 hasViewVisibleTime])
        {
          goto LABEL_41;
        }

        [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
        v33 = v32;
        [v5 viewVisibleTime];
        if (v33 != v34)
        {
          goto LABEL_41;
        }
      }

      suggestionType = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
      suggestionType2 = [v5 suggestionType];
      v37 = suggestionType2;
      if (suggestionType == suggestionType2)
      {
      }

      else
      {
        suggestionType3 = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
        suggestionType4 = [v5 suggestionType];
        v40 = [suggestionType3 isEqual:suggestionType4];

        if (!v40)
        {
          goto LABEL_41;
        }
      }

      if (!-[BMMomentsEngagementSuggestionEvent hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && ![v5 hasViewVisibleSuggestionsCount] || -[BMMomentsEngagementSuggestionEvent hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && objc_msgSend(v5, "hasViewVisibleSuggestionsCount") && (v41 = -[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount"), v41 == objc_msgSend(v5, "viewVisibleSuggestionsCount")))
      {
        if (!-[BMMomentsEngagementSuggestionEvent hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && ![v5 hasViewTotalSuggestionsCount] || -[BMMomentsEngagementSuggestionEvent hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && objc_msgSend(v5, "hasViewTotalSuggestionsCount") && (v42 = -[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount"), v42 == objc_msgSend(v5, "viewTotalSuggestionsCount")))
        {
          notificationInfo = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
          notificationInfo2 = [v5 notificationInfo];
          if (notificationInfo == notificationInfo2)
          {
            v13 = 1;
          }

          else
          {
            notificationInfo3 = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
            notificationInfo4 = [v5 notificationInfo];
            v13 = [notificationInfo3 isEqual:notificationInfo4];
          }

          goto LABEL_42;
        }
      }
    }

LABEL_41:
    v13 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v13 = 0;
LABEL_43:

  return v13;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v40[10] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent type](self, "type")}];
  timestamp = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
  if (timestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  _fullBundleOrderedSetJSONArray = [(BMMomentsEngagementSuggestionEvent *)self _fullBundleOrderedSetJSONArray];
  clientIdentifier = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
  viewContainerName = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
  if (![(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleTime]|| ([(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime], fabs(v11) == INFINITY))
  {
    v38 = 0;
  }

  else
  {
    [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
    v12 = MEMORY[0x1E696AD98];
    [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
    v38 = [v12 numberWithDouble:?];
  }

  suggestionType = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
  if ([(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleSuggestionsCount])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMMomentsEngagementSuggestionEvent *)self hasViewTotalSuggestionsCount])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  }

  else
  {
    v13 = 0;
  }

  notificationInfo = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
  jsonDictionary = [notificationInfo jsonDictionary];

  v39[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null;
  v40[0] = null;
  v39[1] = @"timestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null2;
  v40[1] = null2;
  v39[2] = @"fullBundleOrderedSet";
  null3 = _fullBundleOrderedSetJSONArray;
  if (!_fullBundleOrderedSetJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null3;
  v40[2] = null3;
  v39[3] = @"clientIdentifier";
  null4 = clientIdentifier;
  if (!clientIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v3;
  v28 = null4;
  v40[3] = null4;
  v39[4] = @"viewContainerName";
  null5 = viewContainerName;
  if (!viewContainerName)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v40[4] = null5;
  v39[5] = @"viewVisibleTime";
  null6 = v38;
  if (!v38)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = _fullBundleOrderedSetJSONArray;
  v40[5] = null6;
  v39[6] = @"suggestionType";
  null7 = suggestionType;
  if (!suggestionType)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v40[6] = null7;
  v39[7] = @"viewVisibleSuggestionsCount";
  null8 = v36;
  if (!v36)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = viewContainerName;
  v40[7] = null8;
  v39[8] = @"viewTotalSuggestionsCount";
  null9 = v13;
  if (!v13)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = null9;
  v39[9] = @"notificationInfo";
  null10 = jsonDictionary;
  if (!jsonDictionary)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = null10;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];
  if (jsonDictionary)
  {
    if (v13)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (!v36)
  {
  }

  if (!suggestionType)
  {
  }

  if (!v38)
  {
  }

  if (!v24)
  {
  }

  if (clientIdentifier)
  {
    if (v33)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v33)
    {
LABEL_46:
      if (v34)
      {
        goto LABEL_47;
      }

LABEL_55:

      if (v35)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }
  }

  if (!v34)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v35)
  {
    goto LABEL_48;
  }

LABEL_56:

LABEL_48:

  return v32;
}

- (id)_fullBundleOrderedSetJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fullBundleOrderedSet = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
  v5 = [fullBundleOrderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(fullBundleOrderedSet);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [fullBundleOrderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMomentsEngagementSuggestionEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v151[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v117 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy = error;
        if (error)
        {
          v47 = v6;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v150 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v151[0] = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:&v150 count:1];
          v52 = v48;
          v6 = v47;
          v9 = v50;
          v53 = [v52 initWithDomain:v49 code:2 userInfo:v51];
          errorCopy = 0;
          selfCopy3 = 0;
          *error = v53;
          v8 = v51;
          goto LABEL_85;
        }

        selfCopy3 = 0;
        goto LABEL_86;
      }

      v117 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementSuggestionTypeFromString(v6)];
    }
  }

  else
  {
    v117 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  v116 = v7;
  if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E695DF00];
    v11 = v6;
    v12 = v8;
    v13 = [v10 alloc];
    [v12 doubleValue];
    v15 = v14;

    v6 = v11;
    v16 = [v13 initWithTimeIntervalSince1970:v15];
LABEL_11:
    v9 = v16;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v9 = [v17 dateFromString:v8];

LABEL_16:
    v18 = [dictionaryCopy objectForKeyedSubscript:@"fullBundleOrderedSet"];
    null = [MEMORY[0x1E695DFB0] null];
    v20 = [v18 isEqual:null];

    v115 = v9;
    if (v20)
    {
      v111 = v6;
      selfCopy2 = self;

      v18 = 0;
    }

    else
    {
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            selfCopy3 = 0;
            errorCopy = v117;
            goto LABEL_84;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fullBundleOrderedSet"];
          v147 = v119;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v30];
          selfCopy3 = 0;
          *error = v46;
          goto LABEL_49;
        }
      }

      v111 = v6;
      selfCopy2 = self;
    }

    v119 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v18 = v18;
    v21 = [v18 countByEnumeratingWithState:&v123 objects:v145 count:16];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    v23 = *v124;
    v110 = dictionaryCopy;
LABEL_23:
    v24 = 0;
    while (1)
    {
      if (*v124 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v123 + 1) + 8 * v24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy3 = error;
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v141 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fullBundleOrderedSet"];
          v142 = v26;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v142;
          v39 = &v141;
          goto LABEL_41;
        }

        goto LABEL_48;
      }

      v26 = v25;
      v27 = [BMMomentsEngagementBundleSummary alloc];
      v122 = 0;
      v28 = [(BMMomentsEngagementBundleSummary *)v27 initWithJSONDictionary:v26 error:&v122];
      v29 = v122;
      if (v29)
      {
        v33 = v29;
        if (error)
        {
          v42 = v29;
          *error = v33;
        }

        selfCopy3 = 0;
        goto LABEL_45;
      }

      [v119 addObject:v28];

      if (v22 == ++v24)
      {
        v22 = [v18 countByEnumeratingWithState:&v123 objects:v145 count:16];
        dictionaryCopy = v110;
        if (v22)
        {
          goto LABEL_23;
        }

LABEL_31:

        v26 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v30 = 0;
          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v26;
LABEL_34:
          v31 = [dictionaryCopy objectForKeyedSubscript:@"viewContainerName"];
          v9 = v115;
          v109 = v31;
          if (!v31)
          {
            v33 = 0;
            self = selfCopy2;
            goto LABEL_57;
          }

          v32 = v31;
          objc_opt_class();
          self = selfCopy2;
          if (objc_opt_isKindOfClass())
          {
            v33 = 0;
LABEL_57:
            v54 = [dictionaryCopy objectForKeyedSubscript:@"viewVisibleTime"];
            v106 = v54;
            v107 = v30;
            if (v54)
            {
              v55 = v54;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v108 = v55;
                  goto LABEL_60;
                }

                if (error)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = *MEMORY[0x1E698F240];
                  v135 = *MEMORY[0x1E696A578];
                  v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewVisibleTime"];
                  v136 = v113;
                  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                  v86 = v84;
                  v30 = v107;
                  v104 = v85;
                  v108 = 0;
                  selfCopy3 = 0;
                  *error = [v83 initWithDomain:v86 code:2 userInfo:?];
                  v6 = v111;
                  errorCopy = v117;
                  goto LABEL_77;
                }

                v108 = 0;
                selfCopy3 = 0;
                v6 = v111;
                errorCopy = v117;
                goto LABEL_78;
              }
            }

            v108 = 0;
LABEL_60:
            v56 = [dictionaryCopy objectForKeyedSubscript:@"suggestionType"];
            v104 = v56;
            if (v56)
            {
              v57 = v56;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v113 = v57;
                  goto LABEL_63;
                }

                if (error)
                {
                  v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v87 = *MEMORY[0x1E698F240];
                  v133 = *MEMORY[0x1E696A578];
                  v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionType"];
                  v134 = v105;
                  v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
                  v88 = [v114 initWithDomain:v87 code:2 userInfo:?];
                  v113 = 0;
                  selfCopy3 = 0;
                  *error = v88;
                  v6 = v111;
                  errorCopy = v117;
                  goto LABEL_76;
                }

                v113 = 0;
                selfCopy3 = 0;
                v6 = v111;
                errorCopy = v117;
                goto LABEL_77;
              }
            }

            v113 = 0;
LABEL_63:
            v58 = [dictionaryCopy objectForKeyedSubscript:@"viewVisibleSuggestionsCount"];
            v101 = v58;
            if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v105 = v59;
                goto LABEL_66;
              }

              if (!error)
              {
                v105 = 0;
                selfCopy3 = 0;
                v6 = v111;
                errorCopy = v117;
                goto LABEL_76;
              }

              v89 = objc_alloc(MEMORY[0x1E696ABC0]);
              v90 = *MEMORY[0x1E698F240];
              v131 = *MEMORY[0x1E696A578];
              v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewVisibleSuggestionsCount"];
              v132 = v102;
              v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v92 = v90;
              v30 = v107;
              v100 = v91;
              v105 = 0;
              selfCopy3 = 0;
              *error = [v89 initWithDomain:v92 code:2 userInfo:?];
            }

            else
            {
              v105 = 0;
LABEL_66:
              v60 = [dictionaryCopy objectForKeyedSubscript:@"viewTotalSuggestionsCount"];
              v100 = v60;
              if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v102 = 0;
LABEL_69:
                v62 = [dictionaryCopy objectForKeyedSubscript:@"notificationInfo"];
                if (!v62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v63 = 0;
                  errorCopy = v117;
                  goto LABEL_72;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = v62;
                  v81 = [BMMomentsEngagementNotificationInfo alloc];
                  v121 = 0;
                  v98 = v80;
                  v63 = [(BMMomentsEngagementNotificationInfo *)v81 initWithJSONDictionary:v80 error:&v121];
                  v82 = v121;
                  errorCopy = v117;
                  v9 = v115;
                  if (v82)
                  {
                    v62 = v98;
                    if (error)
                    {
                      v82 = v82;
                      *error = v82;
                    }

                    selfCopy3 = 0;
                  }

                  else
                  {

LABEL_72:
                    self = -[BMMomentsEngagementSuggestionEvent initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:viewVisibleTime:suggestionType:viewVisibleSuggestionsCount:viewTotalSuggestionsCount:notificationInfo:](self, "initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:viewVisibleTime:suggestionType:viewVisibleSuggestionsCount:viewTotalSuggestionsCount:notificationInfo:", [errorCopy intValue], v9, v119, v107, v33, v108, v113, v105, v102, v63);
                    selfCopy3 = self;
                  }

LABEL_73:
                }

                else
                {
                  errorCopy = v117;
                  if (error)
                  {
                    v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v97 = *MEMORY[0x1E698F240];
                    v127 = *MEMORY[0x1E696A578];
                    v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"notificationInfo"];
                    v128 = v63;
                    v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                    *error = [v99 initWithDomain:v97 code:2 userInfo:v95];

                    selfCopy3 = 0;
                    v9 = v115;
                    goto LABEL_73;
                  }

                  selfCopy3 = 0;
                  v9 = v115;
                }

                v6 = v111;
                v30 = v107;
LABEL_75:

LABEL_76:
LABEL_77:

LABEL_78:
LABEL_79:

LABEL_80:
LABEL_81:

LABEL_82:
LABEL_84:

                v8 = v116;
                goto LABEL_85;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v102 = v61;
                goto LABEL_69;
              }

              if (error)
              {
                v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                v93 = *MEMORY[0x1E698F240];
                v129 = *MEMORY[0x1E696A578];
                v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewTotalSuggestionsCount"];
                v130 = v62;
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                v94 = [v103 initWithDomain:v93 code:2 userInfo:v63];
                v102 = 0;
                selfCopy3 = 0;
                *error = v94;
                errorCopy = v117;
                goto LABEL_73;
              }

              v102 = 0;
              selfCopy3 = 0;
            }

            v6 = v111;
            errorCopy = v117;
            goto LABEL_75;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
            v9 = v115;
            goto LABEL_57;
          }

          if (error)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = *MEMORY[0x1E698F240];
            v137 = *MEMORY[0x1E696A578];
            v70 = v30;
            v71 = objc_alloc(MEMORY[0x1E696AEC0]);
            v96 = objc_opt_class();
            v72 = v71;
            v30 = v70;
            v108 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v96, @"viewContainerName"];
            v138 = v108;
            v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v73 = [v68 initWithDomain:v69 code:2 userInfo:?];
            v33 = 0;
            selfCopy3 = 0;
            *error = v73;
            v6 = v111;
            errorCopy = v117;
            v9 = v115;
            goto LABEL_78;
          }

          v33 = 0;
          selfCopy3 = 0;
        }

        else
        {
          self = selfCopy2;
          if (!error)
          {
            v30 = 0;
            selfCopy3 = 0;
            v6 = v111;
            errorCopy = v117;
            v9 = v115;
            goto LABEL_81;
          }

          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
          v140 = v33;
          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v67 = [v65 initWithDomain:v66 code:2 userInfo:?];
          v30 = 0;
          selfCopy3 = 0;
          *error = v67;
        }

        v6 = v111;
        errorCopy = v117;
        v9 = v115;
        goto LABEL_79;
      }
    }

    errorCopy3 = error;
    if (error)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v143 = *MEMORY[0x1E696A578];
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fullBundleOrderedSet"];
      v144 = v26;
      v37 = MEMORY[0x1E695DF20];
      v38 = &v144;
      v39 = &v143;
LABEL_41:
      v33 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
      v40 = [v35 initWithDomain:v36 code:2 userInfo:v33];
      selfCopy3 = 0;
      *errorCopy3 = v40;
LABEL_45:
      v30 = v18;
      dictionaryCopy = v110;
      v6 = v111;
      self = selfCopy2;
      v9 = v115;
      errorCopy = v117;
      goto LABEL_80;
    }

LABEL_48:
    selfCopy3 = 0;
    v30 = v18;
    dictionaryCopy = v110;
    v6 = v111;
    self = selfCopy2;
    v9 = v115;
LABEL_49:
    errorCopy = v117;
    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
    goto LABEL_11;
  }

  if (error)
  {
    v74 = v6;
    v75 = objc_alloc(MEMORY[0x1E696ABC0]);
    v76 = *MEMORY[0x1E698F240];
    v148 = *MEMORY[0x1E696A578];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
    v149 = v18;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    v78 = v75;
    v6 = v74;
    v120 = v77;
    v79 = [v78 initWithDomain:v76 code:2 userInfo:?];
    v9 = 0;
    selfCopy3 = 0;
    *error = v79;
    errorCopy = v117;

    goto LABEL_84;
  }

  v9 = 0;
  selfCopy3 = 0;
  errorCopy = v117;
LABEL_85:

LABEL_86:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementSuggestionEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_timestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_fullBundleOrderedSet;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_viewContainerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasViewVisibleTime)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_suggestionType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasViewVisibleSuggestionsCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasViewTotalSuggestionsCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_notificationInfo)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementNotificationInfo *)self->_notificationInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v59.receiver = self;
  v59.super_class = BMMomentsEngagementSuggestionEvent;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_97;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v60) & 0x7F) << v8;
        if ((LOBYTE(v60) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 5)
      {
        if (v16 <= 7)
        {
          if (v16 == 6)
          {
            v5->_hasViewVisibleTime = 1;
            LODWORD(v60) = 0;
            v30 = [fromCopy position] + 4;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 4, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 = *&v60;
            v51 = 80;
            goto LABEL_93;
          }

          if (v16 == 7)
          {
            v17 = PBReaderReadString();
            v18 = 88;
            goto LABEL_64;
          }

          goto LABEL_74;
        }

        if (v16 == 8)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasViewVisibleSuggestionsCount = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 |= (LOBYTE(v60) & 0x7F) << v34;
            if ((LOBYTE(v60) & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v14 = v35++ >= 9;
            if (v14)
            {
              v40 = 0;
              goto LABEL_83;
            }
          }

          if ([fromCopy hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_83:
          v48 = 44;
          goto LABEL_88;
        }

        if (v16 == 9)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasViewTotalSuggestionsCount = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v45 = [fromCopy position] + 1;
            if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v44 |= (LOBYTE(v60) & 0x7F) << v42;
            if ((LOBYTE(v60) & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v14 = v43++ >= 9;
            if (v14)
            {
              v40 = 0;
              goto LABEL_87;
            }
          }

          if ([fromCopy hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v44;
          }

LABEL_87:
          v48 = 48;
LABEL_88:
          *(&v5->super.super.isa + v48) = v40;
          goto LABEL_94;
        }

        if (v16 != 10)
        {
          goto LABEL_74;
        }

        v60 = 0.0;
        v61 = 0;
        if (!PBReaderPlaceMark() || (v19 = [[BMMomentsEngagementNotificationInfo alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_99:

          goto LABEL_96;
        }

        notificationInfo = v5->_notificationInfo;
        v5->_notificationInfo = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v60) = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (LOBYTE(v60) & 0x7F) << v23;
              if ((LOBYTE(v60) & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_78;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v25 > 0x1F)
            {
LABEL_78:
              LODWORD(v25) = 0;
            }

            v5->_type = v25;
            goto LABEL_94;
          }

          if (v16 == 2)
          {
            v5->_hasRaw_timestamp = 1;
            v60 = 0.0;
            v21 = [fromCopy position] + 8;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 = v60;
            v51 = 24;
LABEL_93:
            *(&v5->super.super.isa + v51) = v50;
            goto LABEL_94;
          }

LABEL_74:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_94;
        }

        if (v16 != 3)
        {
          if (v16 == 4)
          {
            v17 = PBReaderReadString();
            v18 = 64;
            goto LABEL_64;
          }

          if (v16 == 5)
          {
            v17 = PBReaderReadString();
            v18 = 72;
LABEL_64:
            v41 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;

            goto LABEL_94;
          }

          goto LABEL_74;
        }

        v60 = 0.0;
        v61 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_99;
        }

        v32 = [[BMMomentsEngagementBundleSummary alloc] initByReadFrom:fromCopy];
        if (!v32)
        {
          goto LABEL_99;
        }

        v33 = v32;
        [v6 addObject:v32];
        PBReaderRecallMark();
      }

LABEL_94:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v54 = [v6 copy];
  fullBundleOrderedSet = v5->_fullBundleOrderedSet;
  v5->_fullBundleOrderedSet = v54;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_96:
    v57 = 0;
  }

  else
  {
LABEL_97:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = BMMomentsEngagementSuggestionTypeAsString([(BMMomentsEngagementSuggestionEvent *)self type]);
  timestamp = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
  fullBundleOrderedSet = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
  clientIdentifier = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
  viewContainerName = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
  v8 = [v7 numberWithDouble:?];
  suggestionType = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  notificationInfo = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
  v16 = [v15 initWithFormat:@"BMMomentsEngagementSuggestionEvent with type: %@, timestamp: %@, fullBundleOrderedSet: %@, clientIdentifier: %@, viewContainerName: %@, viewVisibleTime: %@, suggestionType: %@, viewVisibleSuggestionsCount: %@, viewTotalSuggestionsCount: %@, notificationInfo: %@", v14, timestamp, fullBundleOrderedSet, clientIdentifier, viewContainerName, v8, suggestionType, v10, v11, notificationInfo];

  return v16;
}

- (BMMomentsEngagementSuggestionEvent)initWithType:(int)type timestamp:(id)timestamp fullBundleOrderedSet:(id)set clientIdentifier:(id)identifier viewContainerName:(id)name viewVisibleTime:(id)time suggestionType:(id)suggestionType viewVisibleSuggestionsCount:(id)self0 viewTotalSuggestionsCount:(id)self1 notificationInfo:(id)self2
{
  timestampCopy = timestamp;
  setCopy = set;
  identifierCopy = identifier;
  nameCopy = name;
  timeCopy = time;
  suggestionTypeCopy = suggestionType;
  countCopy = count;
  suggestionsCountCopy = suggestionsCount;
  v21 = timestampCopy;
  infoCopy = info;
  v35.receiver = self;
  v35.super_class = BMMomentsEngagementSuggestionEvent;
  v23 = [(BMEventBase *)&v35 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    v23->_type = type;
    if (v21)
    {
      v23->_hasRaw_timestamp = 1;
      [v21 timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_timestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_timestamp = v24;
    objc_storeStrong(&v23->_fullBundleOrderedSet, set);
    objc_storeStrong(&v23->_clientIdentifier, identifier);
    objc_storeStrong(&v23->_viewContainerName, name);
    if (timeCopy)
    {
      v23->_hasViewVisibleTime = 1;
      [timeCopy floatValue];
      v26 = v25;
    }

    else
    {
      v23->_hasViewVisibleTime = 0;
      v26 = -1.0;
    }

    v23->_viewVisibleTime = v26;
    objc_storeStrong(&v23->_suggestionType, suggestionType);
    if (countCopy)
    {
      v23->_hasViewVisibleSuggestionsCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v23->_hasViewVisibleSuggestionsCount = 0;
      intValue = -1;
    }

    v23->_viewVisibleSuggestionsCount = intValue;
    if (suggestionsCountCopy)
    {
      v23->_hasViewTotalSuggestionsCount = 1;
      intValue2 = [suggestionsCountCopy intValue];
    }

    else
    {
      v23->_hasViewTotalSuggestionsCount = 0;
      intValue2 = -1;
    }

    v23->_viewTotalSuggestionsCount = intValue2;
    objc_storeStrong(&v23->_notificationInfo, info);
  }

  return v23;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:2 type:0 subMessageClass:0];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullBundleOrderedSet" number:3 type:14 subMessageClass:objc_opt_class()];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:4 type:13 subMessageClass:0];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewContainerName" number:5 type:13 subMessageClass:0];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewVisibleTime" number:6 type:1 subMessageClass:0];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionType" number:7 type:13 subMessageClass:0];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewVisibleSuggestionsCount" number:8 type:2 subMessageClass:0];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewTotalSuggestionsCount" number:9 type:2 subMessageClass:0];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationInfo" number:10 type:14 subMessageClass:objc_opt_class()];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)columns
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fullBundleOrderedSet_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_624];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewContainerName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewVisibleTime" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewVisibleSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewTotalSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"notificationInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_626];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v14[9] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v13;
}

id __45__BMMomentsEngagementSuggestionEvent_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 notificationInfo];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __45__BMMomentsEngagementSuggestionEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _fullBundleOrderedSetJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMMomentsEngagementSuggestionEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end