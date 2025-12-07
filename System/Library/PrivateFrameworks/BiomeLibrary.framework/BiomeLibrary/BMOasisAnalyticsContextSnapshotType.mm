@interface BMOasisAnalyticsContextSnapshotType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsContextSnapshotType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsContextSnapshotType)initWithLuxLevel:(id)level smudgeLevel:(id)smudgeLevel prewittLevel:(id)prewittLevel imuAcceleration:(id)acceleration imuAngularVelocityX:(id)x imuAngularVelocityY:(id)y imuAngularVelocityZ:(id)z environmentType:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsContextSnapshotType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMOasisAnalyticsContextSnapshotType hasLuxLevel](self, "hasLuxLevel") && ![v5 hasLuxLevel] || -[BMOasisAnalyticsContextSnapshotType hasLuxLevel](self, "hasLuxLevel") && objc_msgSend(v5, "hasLuxLevel") && (-[BMOasisAnalyticsContextSnapshotType luxLevel](self, "luxLevel"), v7 = v6, objc_msgSend(v5, "luxLevel"), v7 == v8)) && (!-[BMOasisAnalyticsContextSnapshotType hasSmudgeLevel](self, "hasSmudgeLevel") && !objc_msgSend(v5, "hasSmudgeLevel") || -[BMOasisAnalyticsContextSnapshotType hasSmudgeLevel](self, "hasSmudgeLevel") && objc_msgSend(v5, "hasSmudgeLevel") && (-[BMOasisAnalyticsContextSnapshotType smudgeLevel](self, "smudgeLevel"), v10 = v9, objc_msgSend(v5, "smudgeLevel"), v10 == v11)) && (!-[BMOasisAnalyticsContextSnapshotType hasPrewittLevel](self, "hasPrewittLevel") && !objc_msgSend(v5, "hasPrewittLevel") || -[BMOasisAnalyticsContextSnapshotType hasPrewittLevel](self, "hasPrewittLevel") && objc_msgSend(v5, "hasPrewittLevel") && (-[BMOasisAnalyticsContextSnapshotType prewittLevel](self, "prewittLevel"), v13 = v12, objc_msgSend(v5, "prewittLevel"), v13 == v14)) && (!-[BMOasisAnalyticsContextSnapshotType hasImuAcceleration](self, "hasImuAcceleration") && !objc_msgSend(v5, "hasImuAcceleration") || -[BMOasisAnalyticsContextSnapshotType hasImuAcceleration](self, "hasImuAcceleration") && objc_msgSend(v5, "hasImuAcceleration") && (-[BMOasisAnalyticsContextSnapshotType imuAcceleration](self, "imuAcceleration"), v16 = v15, objc_msgSend(v5, "imuAcceleration"), v16 == v17)) && (!-[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityX](self, "hasImuAngularVelocityX") && !objc_msgSend(v5, "hasImuAngularVelocityX") || -[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityX](self, "hasImuAngularVelocityX") && objc_msgSend(v5, "hasImuAngularVelocityX") && (-[BMOasisAnalyticsContextSnapshotType imuAngularVelocityX](self, "imuAngularVelocityX"), v19 = v18, objc_msgSend(v5, "imuAngularVelocityX"), v19 == v20)) && (!-[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityY](self, "hasImuAngularVelocityY") && !objc_msgSend(v5, "hasImuAngularVelocityY") || -[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityY](self, "hasImuAngularVelocityY") && objc_msgSend(v5, "hasImuAngularVelocityY") && (-[BMOasisAnalyticsContextSnapshotType imuAngularVelocityY](self, "imuAngularVelocityY"), v22 = v21, objc_msgSend(v5, "imuAngularVelocityY"), v22 == v23)) && (!-[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityZ](self, "hasImuAngularVelocityZ") && !objc_msgSend(v5, "hasImuAngularVelocityZ") || -[BMOasisAnalyticsContextSnapshotType hasImuAngularVelocityZ](self, "hasImuAngularVelocityZ") && objc_msgSend(v5, "hasImuAngularVelocityZ") && (-[BMOasisAnalyticsContextSnapshotType imuAngularVelocityZ](self, "imuAngularVelocityZ"), v25 = v24, objc_msgSend(v5, "imuAngularVelocityZ"), v25 == v26)))
    {
      environmentType = [(BMOasisAnalyticsContextSnapshotType *)self environmentType];
      v28 = environmentType == [v5 environmentType];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)jsonDictionary
{
  v44[8] = *MEMORY[0x1E69E9840];
  if (![(BMOasisAnalyticsContextSnapshotType *)self hasLuxLevel]|| ([(BMOasisAnalyticsContextSnapshotType *)self luxLevel], fabsf(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self luxLevel];
    v4 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self luxLevel];
    v5 = [v4 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasSmudgeLevel]|| ([(BMOasisAnalyticsContextSnapshotType *)self smudgeLevel], fabsf(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self smudgeLevel];
    v7 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self smudgeLevel];
    v8 = [v7 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasPrewittLevel]|| ([(BMOasisAnalyticsContextSnapshotType *)self prewittLevel], fabsf(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self prewittLevel];
    v10 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self prewittLevel];
    v11 = [v10 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasImuAcceleration]|| ([(BMOasisAnalyticsContextSnapshotType *)self imuAcceleration], fabsf(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self imuAcceleration];
    v13 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self imuAcceleration];
    v14 = [v13 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasImuAngularVelocityX]|| ([(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityX], fabsf(v15) == INFINITY))
  {
    v17 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityX];
    v16 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityX];
    v17 = [v16 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasImuAngularVelocityY]|| ([(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityY], fabsf(v18) == INFINITY))
  {
    v20 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityY];
    v19 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityY];
    v20 = [v19 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsContextSnapshotType *)self hasImuAngularVelocityZ]|| ([(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityZ], fabsf(v21) == INFINITY))
  {
    v23 = 0;
  }

  else
  {
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityZ];
    v22 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityZ];
    v23 = [v22 numberWithFloat:?];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsContextSnapshotType environmentType](self, "environmentType")}];
  v43[0] = @"luxLevel";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v5;
  v38 = null;
  v44[0] = null;
  v43[1] = @"smudgeLevel";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v8;
  v37 = null2;
  v44[1] = null2;
  v43[2] = @"prewittLevel";
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v11;
  v36 = null3;
  v44[2] = null3;
  v43[3] = @"imuAcceleration";
  null4 = v14;
  if (!v14)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v14;
  v44[3] = null4;
  v43[4] = @"imuAngularVelocityX";
  null5 = v17;
  if (!v17)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v17;
  v44[4] = null5;
  v43[5] = @"imuAngularVelocityY";
  null6 = v20;
  if (!v20)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v44[5] = null6;
  v43[6] = @"imuAngularVelocityZ";
  null7 = v23;
  if (!v23)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v44[6] = null7;
  v43[7] = @"environmentType";
  null8 = v24;
  if (!v24)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v44[7] = null8;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:8];
  if (v24)
  {
    if (v23)
    {
      goto LABEL_47;
    }

LABEL_62:

    if (v20)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  if (!v23)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (v20)
  {
    goto LABEL_48;
  }

LABEL_63:

LABEL_48:
  if (!v30)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  return v34;
}

- (BMOasisAnalyticsContextSnapshotType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"luxLevel"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"smudgeLevel"];
    errorCopy = error;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"prewittLevel"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v30 = 0;
            goto LABEL_69;
          }

          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"prewittLevel"];
          v86 = v74;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v36 = [v73 initWithDomain:v34 code:2 userInfo:v35];
          v30 = 0;
          error = 0;
          *errorCopy = v36;
          goto LABEL_68;
        }

        v72 = v7;
        v12 = v10;
        v13 = v8;
        v14 = v9;
        selfCopy2 = self;
        v71 = v11;
      }

      else
      {
        v71 = 0;
        v72 = v7;
        v12 = v10;
        v13 = v8;
        v14 = v9;
        selfCopy2 = self;
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:@"imuAcceleration"];
      v65 = v11;
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v74 = 0;
            v35 = v16;
            self = selfCopy2;
            v9 = v14;
            v8 = v13;
            v10 = v12;
            v30 = v71;
            v7 = v72;
            goto LABEL_68;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"imuAcceleration"];
          v84 = v69;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v40 = v39;
          v35 = v16;
          v41 = [v38 initWithDomain:v40 code:2 userInfo:v17];
          v74 = 0;
          error = 0;
          *errorCopy = v41;
          self = selfCopy2;
          v9 = v14;
          v8 = v13;
          v10 = v12;
          goto LABEL_75;
        }

        v62 = v16;
        v74 = v16;
      }

      else
      {
        v62 = v16;
        v74 = 0;
      }

      v17 = [dictionaryCopy objectForKeyedSubscript:@"imuAngularVelocityX"];
      self = selfCopy2;
      if (!v17)
      {
        v69 = 0;
        v9 = v14;
        goto LABEL_23;
      }

      objc_opt_class();
      v9 = v14;
      if (objc_opt_isKindOfClass())
      {
        v69 = 0;
LABEL_23:
        v8 = v13;
LABEL_24:
        v10 = v12;
        v18 = [dictionaryCopy objectForKeyedSubscript:@"imuAngularVelocityY"];
        v7 = v72;
        v63 = v10;
        v64 = v8;
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v66 = 0;
              error = 0;
              goto LABEL_65;
            }

            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            selfCopy3 = self;
            v49 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"imuAngularVelocityY"];
            v80 = v21;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v50 = v49;
            self = selfCopy3;
            v7 = v72;
            v51 = [v67 initWithDomain:v50 code:2 userInfo:v19];
            v66 = 0;
            error = 0;
            *errorCopy = v51;
LABEL_64:

            v10 = v63;
            v8 = v64;
LABEL_65:
            v35 = v62;
            goto LABEL_66;
          }

          v66 = v18;
        }

        else
        {
          v66 = 0;
        }

        v19 = [dictionaryCopy objectForKeyedSubscript:@"imuAngularVelocityZ"];
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v21 = 0;
              error = 0;
              goto LABEL_64;
            }

            errorCopy2 = self;
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = *MEMORY[0x1E698F240];
            v77 = *MEMORY[0x1E696A578];
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"imuAngularVelocityZ"];
            v78 = v23;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v53 = [v60 initWithDomain:v52 code:2 userInfo:v22];
            v21 = 0;
            error = 0;
            *errorCopy = v53;
            goto LABEL_63;
          }

          errorCopy2 = self;
          v21 = v19;
        }

        else
        {
          errorCopy2 = self;
          v21 = 0;
        }

        v22 = [dictionaryCopy objectForKeyedSubscript:@"environmentType"];
        if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v22;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v75 = *MEMORY[0x1E696A578];
                v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"environmentType"];
                v76 = v55;
                v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
                *errorCopy = [v61 initWithDomain:v59 code:2 userInfo:v56];
              }

              v23 = 0;
              error = 0;
              goto LABEL_63;
            }

            v37 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsContextSnapshotEnvironmentTypeFromString(v22)];
          }

          v23 = v37;
        }

        else
        {
          v23 = 0;
        }

        LODWORD(v58) = [v23 intValue];
        error = [(BMOasisAnalyticsContextSnapshotType *)errorCopy2 initWithLuxLevel:v64 smudgeLevel:v63 prewittLevel:v71 imuAcceleration:v74 imuAngularVelocityX:v69 imuAngularVelocityY:v66 imuAngularVelocityZ:v21 environmentType:v58];
        errorCopy2 = error;
LABEL_63:

        self = errorCopy2;
        v7 = v72;
        goto LABEL_64;
      }

      objc_opt_class();
      v8 = v13;
      if (objc_opt_isKindOfClass())
      {
        v69 = v17;
        goto LABEL_24;
      }

      v10 = v12;
      if (error)
      {
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v44 = v10;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v57 = objc_opt_class();
        v46 = v45;
        v10 = v44;
        v66 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v57, @"imuAngularVelocityX"];
        v82 = v66;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v47 = [v70 initWithDomain:v42 code:2 userInfo:v18];
        v69 = 0;
        error = 0;
        *errorCopy3 = v47;
        v35 = v62;
        v7 = v72;
LABEL_66:

LABEL_67:
        v11 = v65;
        v30 = v71;
LABEL_68:

        goto LABEL_69;
      }

      v69 = 0;
      v35 = v62;
LABEL_75:
      v7 = v72;
      goto LABEL_67;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    if (error)
    {
      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v87 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"smudgeLevel"];
      v88 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v32 = v29;
      v11 = v31;
      v33 = [v28 initWithDomain:v32 code:2 userInfo:v31];
      v10 = 0;
      error = 0;
      *errorCopy = v33;
LABEL_69:

      goto LABEL_70;
    }

    v10 = 0;
LABEL_70:

    goto LABEL_71;
  }

  if (error)
  {
    errorCopy4 = error;
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E698F240];
    v89 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"luxLevel"];
    v90[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v27 = [v25 initWithDomain:v26 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy4 = v27;
    goto LABEL_70;
  }

  v8 = 0;
LABEL_71:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsContextSnapshotType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasLuxLevel)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasSmudgeLevel)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPrewittLevel)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasImuAcceleration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasImuAngularVelocityX)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasImuAngularVelocityY)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasImuAngularVelocityZ)
  {
    PBDataWriterWriteFloatField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMOasisAnalyticsContextSnapshotType;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_83;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_81;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v50 & 0x7F) << v7;
        if ((v50 & 0x80) == 0)
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
        goto LABEL_81;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasPrewittLevel = 1;
            v50 = 0;
            v33 = [fromCopy position] + 4;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 4, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
            }

            v38 = v50;
            v39 = 36;
          }

          else
          {
            if (v15 != 4)
            {
              goto LABEL_59;
            }

            v5->_hasImuAcceleration = 1;
            v50 = 0;
            v20 = [fromCopy position] + 4;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 4, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
            }

            v38 = v50;
            v39 = 40;
          }
        }

        else if (v15 == 1)
        {
          v5->_hasLuxLevel = 1;
          v50 = 0;
          v29 = [fromCopy position] + 4;
          if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 4, v30 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 = v50;
          v39 = 28;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_59;
          }

          v5->_hasSmudgeLevel = 1;
          v50 = 0;
          v16 = [fromCopy position] + 4;
          if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 4, v17 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 = v50;
          v39 = 32;
        }

        goto LABEL_79;
      }

      if (v15 <= 6)
      {
        break;
      }

      if (v15 == 7)
      {
        v5->_hasImuAngularVelocityZ = 1;
        v50 = 0;
        v35 = [fromCopy position] + 4;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 4, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v38 = v50;
        v39 = 52;
LABEL_79:
        *(&v5->super.super.isa + v39) = v38;
        goto LABEL_80;
      }

      if (v15 != 8)
      {
LABEL_59:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v25 = [fromCopy position] + 1;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v24 |= (v50 & 0x7F) << v22;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        if (v23++ > 8)
        {
          goto LABEL_63;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v24 > 0x1F)
      {
LABEL_63:
        LODWORD(v24) = 0;
      }

      v5->_environmentType = v24;
LABEL_80:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_81;
      }
    }

    if (v15 == 5)
    {
      v5->_hasImuAngularVelocityX = 1;
      v50 = 0;
      v31 = [fromCopy position] + 4;
      if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 4, v32 <= objc_msgSend(fromCopy, "length")))
      {
        data8 = [fromCopy data];
        [data8 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
      }

      else
      {
        [fromCopy _setError];
      }

      v38 = v50;
      v39 = 44;
    }

    else
    {
      if (v15 != 6)
      {
        goto LABEL_59;
      }

      v5->_hasImuAngularVelocityY = 1;
      v50 = 0;
      v18 = [fromCopy position] + 4;
      if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 4, v19 <= objc_msgSend(fromCopy, "length")))
      {
        data9 = [fromCopy data];
        [data9 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
      }

      else
      {
        [fromCopy _setError];
      }

      v38 = v50;
      v39 = 48;
    }

    goto LABEL_79;
  }

LABEL_81:
  if ([fromCopy hasError])
  {
LABEL_82:
    v47 = 0;
  }

  else
  {
LABEL_83:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self luxLevel];
  v5 = [v4 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self smudgeLevel];
  v7 = [v6 numberWithFloat:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self prewittLevel];
  v9 = [v8 numberWithFloat:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self imuAcceleration];
  v11 = [v10 numberWithFloat:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityX];
  v13 = [v12 numberWithFloat:?];
  v14 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityY];
  v15 = [v14 numberWithFloat:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsContextSnapshotType *)self imuAngularVelocityZ];
  v17 = [v16 numberWithFloat:?];
  v18 = BMOasisAnalyticsContextSnapshotEnvironmentTypeAsString([(BMOasisAnalyticsContextSnapshotType *)self environmentType]);
  v19 = [v3 initWithFormat:@"BMOasisAnalyticsContextSnapshotType with luxLevel: %@, smudgeLevel: %@, prewittLevel: %@, imuAcceleration: %@, imuAngularVelocityX: %@, imuAngularVelocityY: %@, imuAngularVelocityZ: %@, environmentType: %@", v5, v7, v9, v11, v13, v15, v17, v18];

  return v19;
}

- (BMOasisAnalyticsContextSnapshotType)initWithLuxLevel:(id)level smudgeLevel:(id)smudgeLevel prewittLevel:(id)prewittLevel imuAcceleration:(id)acceleration imuAngularVelocityX:(id)x imuAngularVelocityY:(id)y imuAngularVelocityZ:(id)z environmentType:(int)self0
{
  levelCopy = level;
  smudgeLevelCopy = smudgeLevel;
  prewittLevelCopy = prewittLevel;
  accelerationCopy = acceleration;
  xCopy = x;
  yCopy = y;
  zCopy = z;
  v32.receiver = self;
  v32.super_class = BMOasisAnalyticsContextSnapshotType;
  v23 = [(BMEventBase *)&v32 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    if (levelCopy)
    {
      v23->_hasLuxLevel = 1;
      [levelCopy floatValue];
    }

    else
    {
      v23->_hasLuxLevel = 0;
      v24 = -1.0;
    }

    v23->_luxLevel = v24;
    if (smudgeLevelCopy)
    {
      v23->_hasSmudgeLevel = 1;
      [smudgeLevelCopy floatValue];
    }

    else
    {
      v23->_hasSmudgeLevel = 0;
      v25 = -1.0;
    }

    v23->_smudgeLevel = v25;
    if (prewittLevelCopy)
    {
      v23->_hasPrewittLevel = 1;
      [prewittLevelCopy floatValue];
    }

    else
    {
      v23->_hasPrewittLevel = 0;
      v26 = -1.0;
    }

    v23->_prewittLevel = v26;
    if (accelerationCopy)
    {
      v23->_hasImuAcceleration = 1;
      [accelerationCopy floatValue];
    }

    else
    {
      v23->_hasImuAcceleration = 0;
      v27 = -1.0;
    }

    v23->_imuAcceleration = v27;
    if (xCopy)
    {
      v23->_hasImuAngularVelocityX = 1;
      [xCopy floatValue];
    }

    else
    {
      v23->_hasImuAngularVelocityX = 0;
      v28 = -1.0;
    }

    v23->_imuAngularVelocityX = v28;
    if (yCopy)
    {
      v23->_hasImuAngularVelocityY = 1;
      [yCopy floatValue];
    }

    else
    {
      v23->_hasImuAngularVelocityY = 0;
      v29 = -1.0;
    }

    v23->_imuAngularVelocityY = v29;
    if (zCopy)
    {
      v23->_hasImuAngularVelocityZ = 1;
      [zCopy floatValue];
    }

    else
    {
      v23->_hasImuAngularVelocityZ = 0;
      v30 = -1.0;
    }

    v23->_imuAngularVelocityZ = v30;
    v23->_environmentType = type;
  }

  return v23;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"luxLevel" number:1 type:1 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smudgeLevel" number:2 type:1 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prewittLevel" number:3 type:1 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imuAcceleration" number:4 type:1 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imuAngularVelocityX" number:5 type:1 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imuAngularVelocityY" number:6 type:1 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imuAngularVelocityZ" number:7 type:1 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"environmentType" number:8 type:4 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"luxLevel" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smudgeLevel" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prewittLevel" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imuAcceleration" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imuAngularVelocityX" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imuAngularVelocityY" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imuAngularVelocityZ" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"environmentType" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
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

    v8 = [[BMOasisAnalyticsContextSnapshotType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end