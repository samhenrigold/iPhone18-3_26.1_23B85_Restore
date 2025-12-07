@interface _GCHapticParameterCurve
- (_GCHapticParameterCurve)initWithHapticCommand:(const void *)command;
@end

@implementation _GCHapticParameterCurve

- (_GCHapticParameterCurve)initWithHapticCommand:(const void *)command
{
  v36 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = _GCHapticParameterCurve;
  v4 = [(_GCHapticParameterCurve *)&v33 init];
  if (!v4)
  {
    return v4;
  }

  array = [MEMORY[0x1E695DF70] array];
  curve = v4->_curve;
  v4->_curve = array;

  v10 = *(command + 8);
  v11 = *(command + 6);
  v12 = *(command + 4);
  if (v11 <= 1019)
  {
    if (v11 <= 1010)
    {
      switch(v11)
      {
        case 1000:
          v13 = 5000;
          goto LABEL_33;
        case 1001:
          v13 = 5001;
          goto LABEL_33;
        case 1010:
          v13 = 73;
          goto LABEL_33;
      }
    }

    else
    {
      if (v11 <= 1012)
      {
        if (v11 == 1011)
        {
          v13 = 75;
        }

        else
        {
          v13 = 72;
        }

        goto LABEL_33;
      }

      if (v11 == 1013)
      {
        v13 = 5004;
        goto LABEL_33;
      }

      if (v11 == 1015)
      {
        v13 = 5011;
        goto LABEL_33;
      }
    }

LABEL_24:
    v13 = *(command + 6);
    if (v11 > 0xFF)
    {
      v13 = 0;
    }

    goto LABEL_33;
  }

  v13 = 0;
  if (v11 <= 2009)
  {
    switch(v11)
    {
      case 1020:
        goto LABEL_33;
      case 2000:
        v13 = 5002;
        goto LABEL_33;
      case 2001:
        v13 = 5003;
        goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (v11 > 2011)
  {
    if (v11 == 2012)
    {
      v13 = 81;
      goto LABEL_33;
    }

    if (v11 == 2020)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (v11 == 2010)
  {
    v13 = 79;
  }

  else
  {
    v13 = 80;
  }

LABEL_33:
  v14 = (v10 - 1);
  if (v10 != 1)
  {
    v15 = (command + 48);
    *&v9 = 138412290;
    v27 = v9;
    do
    {
      v16 = *(v15 - 2);
      v17 = *(command + 1);
      v18 = v17 + *(v15 - 3);
      v19 = *v15;
      v20 = v17 + *(v15 - 1);
      v29 = v18;
      v30 = v20;
      v28[0] = v12;
      v28[1] = v13;
      v31 = v16;
      v32 = v19;
      isInternalBuild = gc_isInternalBuild(v7, v8);
      if (isInternalBuild)
      {
        v24 = getGCHapticsLogger(isInternalBuild);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = hapticParamCurveSegmentToString(v28);
          *buf = v27;
          v35 = v25;
          _os_log_impl(&dword_1D2CD5000, v24, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v22 = v4->_curve;
      v23 = [MEMORY[0x1E696B098] valueWithBytes:v28 objCType:{"{?=II{?=dddd}}", v27}];
      [(NSMutableArray *)v22 addObject:v23];

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  return v4;
}

@end