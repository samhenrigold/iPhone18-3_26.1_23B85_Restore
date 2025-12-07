@interface BMSpringBoardDominoWidgetTap
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSpringBoardDominoWidgetTap)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSpringBoardDominoWidgetTap)initWithWidget:(id)widget stackId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSpringBoardDominoWidgetTap

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"widget_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_45887];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stackId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    widget = [(BMSpringBoardDominoWidgetTap *)self widget];
    widget2 = [v5 widget];
    v8 = widget2;
    if (widget == widget2)
    {
    }

    else
    {
      widget3 = [(BMSpringBoardDominoWidgetTap *)self widget];
      widget4 = [v5 widget];
      v11 = [widget3 isEqual:widget4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    stackId = [(BMSpringBoardDominoWidgetTap *)self stackId];
    stackId2 = [v5 stackId];
    if (stackId == stackId2)
    {
      v12 = 1;
    }

    else
    {
      stackId3 = [(BMSpringBoardDominoWidgetTap *)self stackId];
      stackId4 = [v5 stackId];
      v12 = [stackId3 isEqual:stackId4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  widget = [(BMSpringBoardDominoWidgetTap *)self widget];
  jsonDictionary = [widget jsonDictionary];

  stackId = [(BMSpringBoardDominoWidgetTap *)self stackId];
  v10[0] = @"widget";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"stackId";
  v11[0] = null;
  null2 = stackId;
  if (!stackId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (stackId)
  {
    if (jsonDictionary)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v8;
}

- (BMSpringBoardDominoWidgetTap)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"widget"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v21 = 0;
    v8 = [[BMSpringBoardDominoWidget alloc] initWithJSONDictionary:v10 error:&v21];
    v13 = v21;
    if (v13)
    {
      if (error)
      {
        v13 = v13;
        *error = v13;
      }

      selfCopy = 0;
      goto LABEL_9;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"stackId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v17 = objc_alloc(MEMORY[0x1E696ABC0]);
          v18 = *MEMORY[0x1E698F240];
          v22 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stackId"];
          v23 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
        }

        v10 = 0;
        selfCopy = 0;
        goto LABEL_8;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    self = [(BMSpringBoardDominoWidgetTap *)self initWithWidget:v8 stackId:v10];
    selfCopy = self;
LABEL_8:

    goto LABEL_9;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v24 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"widget"];
  v25[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v16 = [v14 initWithDomain:v15 code:2 userInfo:v10];
  selfCopy = 0;
  *error = v16;
LABEL_9:

LABEL_10:
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpringBoardDominoWidgetTap *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_widget)
  {
    PBDataWriterPlaceMark();
    [(BMSpringBoardDominoWidget *)self->_widget writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_stackId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMSpringBoardDominoWidgetTap;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_28;
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
        LOBYTE(v23[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23[0] & 0x7F) << v7;
        if ((v23[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v17 = PBReaderReadString();
        stackId = v5->_stackId;
        v5->_stackId = v17;
      }

      else if ((v14 >> 3) == 1)
      {
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_27;
        }

        v15 = [[BMSpringBoardDominoWidget alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_27;
        }

        widget = v5->_widget;
        v5->_widget = v15;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_27;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_27:
    v20 = 0;
  }

  else
  {
LABEL_28:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  widget = [(BMSpringBoardDominoWidgetTap *)self widget];
  stackId = [(BMSpringBoardDominoWidgetTap *)self stackId];
  v6 = [v3 initWithFormat:@"BMSpringBoardDominoWidgetTap with widget: %@, stackId: %@", widget, stackId];

  return v6;
}

- (BMSpringBoardDominoWidgetTap)initWithWidget:(id)widget stackId:(id)id
{
  widgetCopy = widget;
  idCopy = id;
  v11.receiver = self;
  v11.super_class = BMSpringBoardDominoWidgetTap;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_widget, widget);
    objc_storeStrong(&v9->_stackId, id);
  }

  return v9;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"widget" number:1 type:14 subMessageClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stackId" number:2 type:13 subMessageClass:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __39__BMSpringBoardDominoWidgetTap_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 widget];
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

    v8 = [[BMSpringBoardDominoWidgetTap alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end