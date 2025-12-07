@interface AXSSMotionTrackingExpressionConfiguration_Exclave
+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)emptyAccessibilityExpressions;
+ (BOOL)_jawOpenStartingWithValue:(float)value mouthClose:(float)close forActivation:(unint64_t)activation;
+ (float)_minConfidenceExpressionStarted:(unint64_t)started forActivation:(unint64_t)activation;
+ (id)_facialExpressionToActivationToValueMapping;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)previousExpressions;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)processIncomingExpressions:(SEL)expressions;
- (void)setPreviousExpressions:(id *)expressions;
@end

@implementation AXSSMotionTrackingExpressionConfiguration_Exclave

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)processIncomingExpressions:(SEL)expressions
{
  v5 = retstr;
  v108 = *MEMORY[0x1E69E9840];
  var0 = a4->var0;
  var3 = a4->var3;
  var2 = a4->var2;
  var1 = a4->var1;
  var4 = a4->var4;
  var6 = a4->var6;
  var5 = a4->var5;
  var8 = a4->var8;
  var7 = a4->var7;
  var11 = a4->var11;
  var10 = a4->var10;
  var9 = a4->var9;
  var12 = a4->var12;
  var13 = a4->var13;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var8 = 0;
  objc_msgSend_emptyAccessibilityExpressions(AXSSMotionTrackingExpressionConfiguration_Exclave, expressions);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v73 = [&unk_1F4066600 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v73)
  {
    v67 = *v104;
    v71 = v5;
    v69 = var12;
    v70 = var11;
    v68 = var13;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v104 != v67)
        {
          objc_enumerationMutation(&unk_1F4066600);
        }

        unsignedIntegerValue = [*(*(&v103 + 1) + 8 * i) unsignedIntegerValue];
        [objc_opt_class() _minConfidenceExpressionStarted:3 forActivation:unsignedIntegerValue];
        v81 = v12;
        [objc_opt_class() _minConfidenceExpressionStarted:2 forActivation:unsignedIntegerValue];
        v14 = v13;
        [objc_opt_class() _minConfidenceExpressionStarted:1 forActivation:unsignedIntegerValue];
        v16 = v15;
        [objc_opt_class() _minConfidenceExpressionStarted:0 forActivation:unsignedIntegerValue];
        v18 = v17;
        [objc_opt_class() _minConfidenceExpressionStarted:4 forActivation:unsignedIntegerValue];
        v20 = v19;
        [objc_opt_class() _minConfidenceExpressionStarted:5 forActivation:unsignedIntegerValue];
        v22 = v21;
        [objc_opt_class() _minConfidenceExpressionStarted:6 forActivation:unsignedIntegerValue];
        v83 = v23;
        [objc_opt_class() _minConfidenceExpressionStarted:7 forActivation:unsignedIntegerValue];
        v82 = v24;
        [objc_opt_class() _minConfidenceExpressionStarted:8 forActivation:unsignedIntegerValue];
        v25 = 0;
        v80 = v26;
        v28 = var2 > v14 && var1 > v14;
        v30 = var6 > v18 && var5 > v18;
        v76 = v28;
        v77 = v30;
        v32 = var8 > v20 && var7 > v20;
        v34 = var9 > v22 && var10 > v22;
        v78 = v32;
        v79 = v34;
        if (var3 > v16)
        {
          v35 = objc_opt_class();
          *&v36 = var3;
          *&v37 = var4;
          v25 = [v35 _jawOpenStartingWithValue:unsignedIntegerValue mouthClose:v36 forActivation:v37];
        }

        v75 = v25;
        objc_msgSend_previousExpressions(self);
        objc_msgSend_previousExpressions(self);
        objc_msgSend_previousExpressions(self);
        objc_msgSend_previousExpressions(self);
        v74 = v99[0] >= unsignedIntegerValue;
        objc_msgSend_previousExpressions(self);
        v38 = v98 >= unsignedIntegerValue;
        objc_msgSend_previousExpressions(self);
        v39 = v97 >= unsignedIntegerValue;
        objc_msgSend_previousExpressions(self);
        objc_msgSend_previousExpressions(self);
        objc_msgSend_previousExpressions(self);
        v40 = v18 * 0.375;
        v41 = v20 * 0.95;
        v42 = v22 * 0.65;
        v44 = var2 > (v14 * 0.61538) && var1 > (v14 * 0.61538);
        v46 = var3 > (v16 * 0.5) && v101 >= unsignedIntegerValue;
        v48 = var6 > v40 && var5 > v40;
        v50 = var7 > v41 && var8 > v41;
        v52 = var9 > v42 && var10 > v42;
        v54 = v68 > (v83 * 0.6) && v96 >= unsignedIntegerValue;
        v56 = v69 > (v80 * 0.6) && v94 >= unsignedIntegerValue;
        v58 = v70 > (v82 * 0.6) && v95 >= unsignedIntegerValue;
        v59 = var0 > (v81 * 0.1) && v100 >= unsignedIntegerValue;
        v60 = v44 && v102 >= unsignedIntegerValue;
        v61 = var0 <= v81;
        if (v59)
        {
          v61 = 0;
        }

        v5 = v71;
        if ((v76 | v60))
        {
          v71->var2 = unsignedIntegerValue;
        }

        if ((v61 & v75 | v46))
        {
          v71->var1 = unsignedIntegerValue;
        }

        if (!v61)
        {
          v71->var3 = unsignedIntegerValue;
        }

        if (v77 || v48 && v74)
        {
          v71->var0 = unsignedIntegerValue;
        }

        if (v78 || v50 && v38)
        {
          v71->var4 = unsignedIntegerValue;
        }

        if (v79 || v52 && v39)
        {
          v71->var5 = unsignedIntegerValue;
        }

        if (v69 > v80 || v56)
        {
          v71->var7 = unsignedIntegerValue;
        }

        if (v70 > v82 || v58)
        {
          v71->var8 = unsignedIntegerValue;
          v62 = unsignedIntegerValue;
        }

        else
        {
          v62 = v71->var8;
        }

        if (!v71->var7 && !v62 && (v68 > v83 || v54))
        {
          v71->var6 = unsignedIntegerValue;
        }
      }

      v73 = [&unk_1F4066600 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v73);
  }

  v63 = *&v5->var6;
  v92[2] = *&v5->var4;
  v92[3] = v63;
  v93 = v5->var8;
  v64 = *&v5->var2;
  v92[0] = *&v5->var0;
  v92[1] = v64;
  return [(AXSSMotionTrackingExpressionConfiguration_Exclave *)self setPreviousExpressions:v92];
}

+ (float)_minConfidenceExpressionStarted:(unint64_t)started forActivation:(unint64_t)activation
{
  _facialExpressionToActivationToValueMapping = [objc_opt_class() _facialExpressionToActivationToValueMapping];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:started];
  v8 = [_facialExpressionToActivationToValueMapping objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:activation];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v10 floatValue];
  v12 = v11;

  return v12;
}

+ (id)_facialExpressionToActivationToValueMapping
{
  if (_facialExpressionToActivationToValueMapping_onceToken != -1)
  {
    +[AXSSMotionTrackingExpressionConfiguration_Exclave _facialExpressionToActivationToValueMapping];
  }

  v3 = _facialExpressionToActivationToValueMapping_facialExpressionToSensitivityToValueMapping;

  return v3;
}

+ (BOOL)_jawOpenStartingWithValue:(float)value mouthClose:(float)close forActivation:(unint64_t)activation
{
  v5 = vabds_f32(value, close);
  if (activation - 1 <= 1)
  {
    return v5 >= 0.05;
  }

  return v5 >= 0.1 && activation == 3;
}

+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)emptyAccessibilityExpressions
{
  retstr->var8 = 0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return result;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)previousExpressions
{
  v3 = *&self->var3;
  v4 = *&self->var7;
  *&retstr->var4 = *&self->var5;
  *&retstr->var6 = v4;
  retstr->var8 = self[1].var0;
  *&retstr->var0 = *&self->var1;
  *&retstr->var2 = v3;
  return self;
}

- (void)setPreviousExpressions:(id *)expressions
{
  *&self->_previousExpressions.raiseEyebrows = *&expressions->var0;
  v3 = *&expressions->var2;
  v4 = *&expressions->var4;
  v5 = *&expressions->var6;
  self->_previousExpressions.puckerLipsRight = expressions->var8;
  *&self->_previousExpressions.mouthPuckerCenter = v5;
  *&self->_previousExpressions.eyeBlink = v4;
  *&self->_previousExpressions.smile = v3;
}

@end