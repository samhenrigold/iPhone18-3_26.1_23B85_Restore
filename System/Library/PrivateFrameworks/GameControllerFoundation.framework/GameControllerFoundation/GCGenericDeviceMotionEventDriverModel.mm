@interface GCGenericDeviceMotionEventDriverModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceMotionEventDriverModel)init;
- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceMotionEventDriverModel

- (GCGenericDeviceMotionEventDriverModel)init
{
  [(GCGenericDeviceMotionEventDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = GCGenericDeviceMotionEventDriverModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceMotionEventDriverModel *)&v18 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"accelerometerXExpression", v18.receiver, v18.super_class}];
  accelerometerXExpression = v4->_accelerometerXExpression;
  v4->_accelerometerXExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerYExpression"];
  accelerometerYExpression = v4->_accelerometerYExpression;
  v4->_accelerometerYExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerZExpression"];
  accelerometerZExpression = v4->_accelerometerZExpression;
  v4->_accelerometerZExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroXExpression"];
  gyroXExpression = v4->_gyroXExpression;
  v4->_gyroXExpression = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroYExpression"];
  gyroYExpression = v4->_gyroYExpression;
  v4->_gyroYExpression = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroZExpression"];

  gyroZExpression = v4->_gyroZExpression;
  v4->_gyroZExpression = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  [coderCopy encodeObject:accelerometerXExpression forKey:@"accelerometerXExpression"];

  accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  [coderCopy encodeObject:accelerometerYExpression forKey:@"accelerometerYExpression"];

  accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  [coderCopy encodeObject:accelerometerZExpression forKey:@"accelerometerZExpression"];

  gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  [coderCopy encodeObject:gyroXExpression forKey:@"gyroXExpression"];

  gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  [coderCopy encodeObject:gyroYExpression forKey:@"gyroYExpression"];

  gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  [coderCopy encodeObject:gyroZExpression forKey:@"gyroZExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceMotionEventDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }

LABEL_6:
    accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
    accelerometerXExpression2 = [equalCopy accelerometerXExpression];
    if (accelerometerXExpression != accelerometerXExpression2)
    {
      accelerometerXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
      accelerometerXExpression4 = [equalCopy accelerometerXExpression];
      v54 = accelerometerXExpression3;
      if (![accelerometerXExpression3 isEqual:?])
      {
        v9 = 0;
        goto LABEL_38;
      }
    }

    accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
    accelerometerYExpression2 = [equalCopy accelerometerYExpression];
    if (accelerometerYExpression != accelerometerYExpression2)
    {
      accelerometerXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
      accelerometerYExpression3 = [equalCopy accelerometerYExpression];
      if (![accelerometerXExpression3 isEqual:accelerometerYExpression3])
      {
        v9 = 0;
LABEL_36:

LABEL_37:
        if (accelerometerXExpression == accelerometerXExpression2)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
    accelerometerZExpression2 = [equalCopy accelerometerZExpression];
    v52 = accelerometerZExpression;
    v14 = accelerometerZExpression == accelerometerZExpression2;
    v15 = accelerometerZExpression2;
    if (v14)
    {
      v47 = accelerometerYExpression;
      v17 = accelerometerZExpression2;
    }

    else
    {
      accelerometerZExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
      accelerometerZExpression4 = [equalCopy accelerometerZExpression];
      v46 = accelerometerZExpression3;
      if (![accelerometerZExpression3 isEqual:?])
      {
        v9 = 0;
        v24 = v15;
        v25 = v52;
LABEL_34:

LABEL_35:
        if (accelerometerYExpression == accelerometerYExpression2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v47 = accelerometerYExpression;
      v17 = v15;
    }

    gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
    gyroXExpression2 = [equalCopy gyroXExpression];
    v49 = gyroXExpression;
    v50 = accelerometerYExpression3;
    v14 = gyroXExpression == gyroXExpression2;
    v20 = gyroXExpression2;
    v51 = accelerometerXExpression3;
    if (!v14)
    {
      gyroXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
      gyroXExpression4 = [equalCopy gyroXExpression];
      v41 = gyroXExpression3;
      if (![gyroXExpression3 isEqual:?])
      {
        v22 = v17;
        v9 = 0;
        accelerometerYExpression = v47;
        v23 = v49;
LABEL_32:

LABEL_33:
        v25 = v52;
        v24 = v22;
        v14 = v52 == v22;
        accelerometerYExpression3 = v50;
        accelerometerXExpression3 = v51;
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
    gyroYExpression2 = [equalCopy gyroYExpression];
    v43 = gyroYExpression;
    v44 = v20;
    if (gyroYExpression == gyroYExpression2)
    {
      v29 = v17;
    }

    else
    {
      gyroYExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
      gyroYExpression4 = [equalCopy gyroYExpression];
      v39 = gyroYExpression3;
      v28 = [gyroYExpression3 isEqual:?];
      v29 = v17;
      if (!v28)
      {
        v9 = 0;
        accelerometerYExpression = v47;
        v31 = gyroYExpression2;
        v30 = v43;
        goto LABEL_29;
      }
    }

    accelerometerYExpression = v47;
    gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
    gyroZExpression2 = [equalCopy gyroZExpression];
    v34 = gyroZExpression2;
    if (gyroZExpression == gyroZExpression2)
    {

      v9 = 1;
    }

    else
    {
      gyroZExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
      [equalCopy gyroZExpression];
      v36 = v48 = v29;
      v9 = [gyroZExpression3 isEqual:v36];

      v29 = v48;
    }

    v31 = gyroYExpression2;
    v30 = v43;
    if (v43 == gyroYExpression2)
    {
      v22 = v29;
LABEL_31:

      v23 = v49;
      v20 = v44;
      if (v49 == v44)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_29:
    v22 = v29;

    goto LABEL_31;
  }

  if (([(GCGenericDeviceMotionEventDriverModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = 0;
LABEL_40:

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  v12 = [v3 stringWithFormat:@"<%@ %p> {\n\t accelerometerXExpression = %@\n\t accelerometerYExpression = %@\n\t accelerometerZExpression = %@\n\t gyroXExpression = %@\n\t gyroYExpression = %@\n\t gyroZExpression = %@\n}", v5, self, accelerometerXExpression, accelerometerYExpression, accelerometerZExpression, gyroXExpression, gyroYExpression, gyroZExpression];

  return v12;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v160[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v136[0] = 0;
  v7 = [representation gc_objectForKey:@"AccelerometerXExpression" ofClass:objc_opt_class() error:v136];
  v8 = v136[0];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    if (!error)
    {
      v12 = v8;
      goto LABEL_153;
    }

    v40 = MEMORY[0x1E696ABC0];
    v159[0] = *MEMORY[0x1E696A578];
    localizedDescription6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v160[0] = localizedDescription6;
    v159[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v160[1] = localizedFailureReason;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:2];
    *error = [(NSError *)v40 gc_modelError:v43 userInfo:?];

    v12 = v9;
LABEL_46:

LABEL_76:
    goto LABEL_153;
  }

  if (!v7)
  {
    v12 = v8;
    goto LABEL_10;
  }

  v135 = 0;
  v11 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v7 error:&v135];
  v12 = v135;

  if (v11)
  {
    [v6 setAccelerometerXExpression:v11];

LABEL_10:
    v134 = 0;
    v13 = [representation gc_objectForKey:@"AccelerometerYExpression" ofClass:objc_opt_class() error:&v134];
    v14 = v134;
    v15 = v14;
    if (!v13 && v14)
    {
      if (!error)
      {
        v17 = v14;
        goto LABEL_155;
      }

      v44 = MEMORY[0x1E696ABC0];
      v155[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v156[0] = localizedDescription5;
      v155[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v15 localizedFailureReason];
      v156[1] = localizedFailureReason2;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:2];
      *error = [(NSError *)v44 gc_modelError:v47 userInfo:?];

      v17 = v15;
    }

    else
    {
      if (!v13)
      {
        v17 = v14;
        goto LABEL_16;
      }

      v133 = 0;
      v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v13 error:&v133];
      v17 = v133;

      if (v16)
      {
        [v6 setAccelerometerYExpression:v16];

LABEL_16:
        v132 = 0;
        v18 = [representation gc_objectForKey:@"AccelerometerZExpression" ofClass:objc_opt_class() error:&v132];
        v19 = v132;
        v20 = v19;
        if (!v18 && v19)
        {
          if (!error)
          {
            v22 = v19;
            goto LABEL_157;
          }

          v48 = MEMORY[0x1E696ABC0];
          v151[0] = *MEMORY[0x1E696A578];
          localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          v152[0] = localizedDescription4;
          v151[1] = *MEMORY[0x1E696A588];
          localizedFailureReason3 = [v20 localizedFailureReason];
          v152[1] = localizedFailureReason3;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:2];
          *error = [(NSError *)v48 gc_modelError:v51 userInfo:?];

          v22 = v20;
        }

        else
        {
          if (!v18)
          {
            v22 = v19;
            goto LABEL_22;
          }

          v131 = 0;
          v21 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v18 error:&v131];
          v22 = v131;

          if (v21)
          {
            [v6 setAccelerometerZExpression:v21];

LABEL_22:
            v130 = 0;
            v23 = [representation gc_objectForKey:@"GyroXExpression" ofClass:objc_opt_class() error:&v130];
            v24 = v130;
            v25 = v24;
            if (!v23 && v24)
            {
              if (!error)
              {
                v27 = v24;
                goto LABEL_159;
              }

              v52 = MEMORY[0x1E696ABC0];
              v147[0] = *MEMORY[0x1E696A578];
              localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              v148[0] = localizedDescription3;
              v147[1] = *MEMORY[0x1E696A588];
              localizedFailureReason4 = [v25 localizedFailureReason];
              v148[1] = localizedFailureReason4;
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:2];
              *error = [(NSError *)v52 gc_modelError:v55 userInfo:?];

              v27 = v25;
            }

            else
            {
              if (!v23)
              {
                v27 = v24;
                goto LABEL_28;
              }

              v129 = 0;
              v26 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v23 error:&v129];
              v27 = v129;

              if (v26)
              {
                [v6 setGyroXExpression:v26];

LABEL_28:
                v128 = 0;
                v28 = [representation gc_objectForKey:@"GyroYExpression" ofClass:objc_opt_class() error:&v128];
                v29 = v128;
                v30 = v29;
                if (!v28 && v29)
                {
                  if (!error)
                  {
                    v32 = v29;
                    goto LABEL_161;
                  }

                  v56 = MEMORY[0x1E696ABC0];
                  v143[0] = *MEMORY[0x1E696A578];
                  localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                  v144[0] = localizedDescription2;
                  v143[1] = *MEMORY[0x1E696A588];
                  localizedFailureReason5 = [v30 localizedFailureReason];
                  v144[1] = localizedFailureReason5;
                  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:2];
                  *error = [(NSError *)v56 gc_modelError:v59 userInfo:?];

                  v32 = v30;
                }

                else
                {
                  if (!v28)
                  {
                    v32 = v29;
                    goto LABEL_34;
                  }

                  v127 = 0;
                  v31 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v28 error:&v127];
                  v32 = v127;

                  if (v31)
                  {
                    [v6 setGyroYExpression:v31];

LABEL_34:
                    v126 = 0;
                    v33 = [representation gc_objectForKey:@"GyroZExpression" ofClass:objc_opt_class() error:&v126];
                    v34 = v126;
                    v35 = v34;
                    if (!v33 && v34)
                    {
                      if (!error)
                      {
                        v37 = v34;
                        goto LABEL_163;
                      }

                      v60 = MEMORY[0x1E696ABC0];
                      v139[0] = *MEMORY[0x1E696A578];
                      localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                      v140[0] = localizedDescription;
                      v139[1] = *MEMORY[0x1E696A588];
                      localizedFailureReason6 = [v35 localizedFailureReason];
                      v140[1] = localizedFailureReason6;
                      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
                      *error = [(NSError *)v60 gc_modelError:v63 userInfo:?];

                      v37 = v35;
                    }

                    else
                    {
                      if (!v33)
                      {
                        v37 = v34;
                        goto LABEL_40;
                      }

                      v125 = 0;
                      v36 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v33 error:&v125];
                      v37 = v125;

                      if (v36)
                      {
                        [v6 setGyroZExpression:v36];

LABEL_40:
                        build = [v6 build];
                        goto LABEL_41;
                      }

                      if (!error)
                      {
LABEL_163:

                        goto LABEL_164;
                      }

                      v123 = MEMORY[0x1E696ABC0];
                      v137[0] = *MEMORY[0x1E696A578];
                      localizedDescription = [v37 localizedDescription];
                      localizedFailureReason6 = localizedDescription;
                      if (!localizedDescription)
                      {
                        localizedFailureReason6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                      }

                      v138[0] = localizedFailureReason6;
                      v137[1] = *MEMORY[0x1E696A588];
                      localizedFailureReason7 = [v37 localizedFailureReason];
                      v100 = localizedFailureReason7;
                      if (!localizedFailureReason7)
                      {
                        localizedFailureReason7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroZExpression"];
                      }

                      v117 = localizedFailureReason7;
                      v138[1] = localizedFailureReason7;
                      v137[2] = *MEMORY[0x1E696AA08];
                      null = v37;
                      if (!v37)
                      {
                        null = [MEMORY[0x1E695DFB0] null];
                      }

                      v111 = null;
                      v138[2] = null;
                      v137[3] = @"GCFailingKeyPathErrorKey";
                      gc_failingKeyPath = [v37 gc_failingKeyPath];
                      v103 = gc_failingKeyPath;
                      if (!gc_failingKeyPath)
                      {
                        gc_failingKeyPath = MEMORY[0x1E695E0F0];
                      }

                      v104 = [gc_failingKeyPath arrayByAddingObject:@"GyroZExpression"];
                      v138[3] = v104;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:4];
                      *error = [(NSError *)v123 gc_modelError:v105 userInfo:?];

                      if (!v37)
                      {
                      }

                      if (!v100)
                      {
                      }

                      if (localizedDescription)
                      {
LABEL_151:

                        goto LABEL_163;
                      }
                    }

                    goto LABEL_151;
                  }

                  if (!error)
                  {
LABEL_161:

                    goto LABEL_164;
                  }

                  v122 = MEMORY[0x1E696ABC0];
                  v141[0] = *MEMORY[0x1E696A578];
                  localizedDescription2 = [v32 localizedDescription];
                  localizedFailureReason5 = localizedDescription2;
                  if (!localizedDescription2)
                  {
                    localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                  }

                  v142[0] = localizedFailureReason5;
                  v141[1] = *MEMORY[0x1E696A588];
                  localizedFailureReason8 = [v32 localizedFailureReason];
                  v93 = localizedFailureReason8;
                  if (!localizedFailureReason8)
                  {
                    localizedFailureReason8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroYExpression"];
                  }

                  v116 = localizedFailureReason8;
                  v142[1] = localizedFailureReason8;
                  v141[2] = *MEMORY[0x1E696AA08];
                  null2 = v32;
                  if (!v32)
                  {
                    null2 = [MEMORY[0x1E695DFB0] null];
                  }

                  v110 = null2;
                  v142[2] = null2;
                  v141[3] = @"GCFailingKeyPathErrorKey";
                  gc_failingKeyPath2 = [v32 gc_failingKeyPath];
                  v96 = gc_failingKeyPath2;
                  if (!gc_failingKeyPath2)
                  {
                    gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
                  }

                  v97 = [gc_failingKeyPath2 arrayByAddingObject:@"GyroYExpression"];
                  v142[3] = v97;
                  v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:4];
                  *error = [(NSError *)v122 gc_modelError:v98 userInfo:?];

                  if (!v32)
                  {
                  }

                  if (!v93)
                  {
                  }

                  if (localizedDescription2)
                  {
LABEL_136:

                    goto LABEL_161;
                  }
                }

                goto LABEL_136;
              }

              if (!error)
              {
LABEL_159:

                goto LABEL_164;
              }

              v121 = MEMORY[0x1E696ABC0];
              v145[0] = *MEMORY[0x1E696A578];
              localizedDescription3 = [v27 localizedDescription];
              localizedFailureReason4 = localizedDescription3;
              if (!localizedDescription3)
              {
                localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              }

              v146[0] = localizedFailureReason4;
              v145[1] = *MEMORY[0x1E696A588];
              localizedFailureReason9 = [v27 localizedFailureReason];
              v86 = localizedFailureReason9;
              if (!localizedFailureReason9)
              {
                localizedFailureReason9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroXExpression"];
              }

              v115 = localizedFailureReason9;
              v146[1] = localizedFailureReason9;
              v145[2] = *MEMORY[0x1E696AA08];
              null3 = v27;
              if (!v27)
              {
                null3 = [MEMORY[0x1E695DFB0] null];
              }

              v109 = null3;
              v146[2] = null3;
              v145[3] = @"GCFailingKeyPathErrorKey";
              gc_failingKeyPath3 = [v27 gc_failingKeyPath];
              v89 = gc_failingKeyPath3;
              if (!gc_failingKeyPath3)
              {
                gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
              }

              v90 = [gc_failingKeyPath3 arrayByAddingObject:@"GyroXExpression"];
              v146[3] = v90;
              v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:4];
              *error = [(NSError *)v121 gc_modelError:v91 userInfo:?];

              if (!v27)
              {
              }

              if (!v86)
              {
              }

              if (localizedDescription3)
              {
LABEL_121:

                goto LABEL_159;
              }
            }

            goto LABEL_121;
          }

          if (!error)
          {
LABEL_157:

            goto LABEL_164;
          }

          v120 = MEMORY[0x1E696ABC0];
          v149[0] = *MEMORY[0x1E696A578];
          localizedDescription4 = [v22 localizedDescription];
          localizedFailureReason3 = localizedDescription4;
          if (!localizedDescription4)
          {
            localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          }

          v150[0] = localizedFailureReason3;
          v149[1] = *MEMORY[0x1E696A588];
          localizedFailureReason10 = [v22 localizedFailureReason];
          v79 = localizedFailureReason10;
          if (!localizedFailureReason10)
          {
            localizedFailureReason10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerZExpression"];
          }

          v114 = localizedFailureReason10;
          v150[1] = localizedFailureReason10;
          v149[2] = *MEMORY[0x1E696AA08];
          null4 = v22;
          if (!v22)
          {
            null4 = [MEMORY[0x1E695DFB0] null];
          }

          v108 = null4;
          v150[2] = null4;
          v149[3] = @"GCFailingKeyPathErrorKey";
          gc_failingKeyPath4 = [v22 gc_failingKeyPath];
          v82 = gc_failingKeyPath4;
          if (!gc_failingKeyPath4)
          {
            gc_failingKeyPath4 = MEMORY[0x1E695E0F0];
          }

          v83 = [gc_failingKeyPath4 arrayByAddingObject:@"AccelerometerZExpression"];
          v150[3] = v83;
          v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:4];
          *error = [(NSError *)v120 gc_modelError:v84 userInfo:?];

          if (!v22)
          {
          }

          if (!v79)
          {
          }

          if (localizedDescription4)
          {
LABEL_106:

            goto LABEL_157;
          }
        }

        goto LABEL_106;
      }

      if (!error)
      {
LABEL_155:

        goto LABEL_164;
      }

      v119 = MEMORY[0x1E696ABC0];
      v153[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v17 localizedDescription];
      localizedFailureReason2 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedFailureReason2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      }

      v154[0] = localizedFailureReason2;
      v153[1] = *MEMORY[0x1E696A588];
      localizedFailureReason11 = [v17 localizedFailureReason];
      v72 = localizedFailureReason11;
      if (!localizedFailureReason11)
      {
        localizedFailureReason11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerYExpression"];
      }

      v113 = localizedFailureReason11;
      v154[1] = localizedFailureReason11;
      v153[2] = *MEMORY[0x1E696AA08];
      null5 = v17;
      if (!v17)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v107 = null5;
      v154[2] = null5;
      v153[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath5 = [v17 gc_failingKeyPath];
      v75 = gc_failingKeyPath5;
      if (!gc_failingKeyPath5)
      {
        gc_failingKeyPath5 = MEMORY[0x1E695E0F0];
      }

      v76 = [gc_failingKeyPath5 arrayByAddingObject:@"AccelerometerYExpression"];
      v154[3] = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:4];
      *error = [(NSError *)v119 gc_modelError:v77 userInfo:?];

      if (!v17)
      {
      }

      if (!v72)
      {
      }

      if (localizedDescription5)
      {
LABEL_91:

        goto LABEL_155;
      }
    }

    goto LABEL_91;
  }

  if (error)
  {
    v118 = MEMORY[0x1E696ABC0];
    v157[0] = *MEMORY[0x1E696A578];
    localizedDescription6 = [v12 localizedDescription];
    localizedFailureReason = localizedDescription6;
    if (!localizedDescription6)
    {
      localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v158[0] = localizedFailureReason;
    v157[1] = *MEMORY[0x1E696A588];
    localizedFailureReason12 = [v12 localizedFailureReason];
    v65 = localizedFailureReason12;
    if (!localizedFailureReason12)
    {
      localizedFailureReason12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerXExpression"];
    }

    v112 = localizedFailureReason12;
    v158[1] = localizedFailureReason12;
    v157[2] = *MEMORY[0x1E696AA08];
    null6 = v12;
    if (!v12)
    {
      null6 = [MEMORY[0x1E695DFB0] null];
    }

    v106 = null6;
    v158[2] = null6;
    v157[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath6 = [v12 gc_failingKeyPath];
    v68 = gc_failingKeyPath6;
    if (!gc_failingKeyPath6)
    {
      gc_failingKeyPath6 = MEMORY[0x1E695E0F0];
    }

    v69 = [gc_failingKeyPath6 arrayByAddingObject:@"AccelerometerXExpression"];
    v158[3] = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:4];
    *error = [(NSError *)v118 gc_modelError:v70 userInfo:?];

    if (!v12)
    {
    }

    if (!v65)
    {
    }

    if (localizedDescription6)
    {
      goto LABEL_76;
    }

    goto LABEL_46;
  }

LABEL_153:

LABEL_164:
  build = 0;
LABEL_41:

  return build;
}

@end