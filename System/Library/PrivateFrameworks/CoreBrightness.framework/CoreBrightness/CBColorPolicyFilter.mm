@interface CBColorPolicyFilter
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)shouldMitigateForSample:(id)sample withLuxThr:(float *)thr NitsThr:(float *)nitsThr andSize:(unint64_t)size;
- (CBColorPolicyFilter)initWithID:(unsigned int)d;
- (float)biLinearInterpBetweenIndices:(char *)indices forPoint1:(float)point1 andPoint2:(float)point2;
- (float)computeBaselineStrengthForLux:(float)lux andNits:(float)nits;
- (id)copyPropertyForKey:(id)key;
- (id)filterEvent:(id)event;
- (id)handleALSEvent:(id)event;
- (void)dealloc;
- (void)initializeMitigationsForDevice:(unsigned int)device;
- (void)resetFilter;
- (void)setModuleObject:(id)object;
@end

@implementation CBColorPolicyFilter

- (CBColorPolicyFilter)initWithID:(unsigned int)d
{
  selfCopy = self;
  v8 = a2;
  dCopy = d;
  v6.receiver = self;
  v6.super_class = CBColorPolicyFilter;
  selfCopy = [(CBColorPolicyFilter *)&v6 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBColorPolicyFilter", "default");
    selfCopy->super._logHandle = v3;
    [(CBColorPolicyFilter *)selfCopy initializeMitigationsForDevice:dCopy];
    v4 = [[CBStack alloc] initWithLength:?];
    selfCopy->_alsStack = v4;
    selfCopy->_stackLength = 20;
    selfCopy->_stackCurrentCount = 0;
    selfCopy->_consecutiveNonMitgatedCount = 0;
    selfCopy->_mitigationUsedYet = 0;
    selfCopy->_ceConfidenceThreshold = 0.1;
    selfCopy->_ceEnabled = 1;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_ceModule);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_alsStack).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBColorPolicyFilter;
  [(CBColorPolicyFilter *)&v3 dealloc];
}

- (void)setModuleObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_ceModule = object;
    MEMORY[0x1E69E5928](self->_ceModule);
  }
}

- (void)resetFilter
{
  [(CBStack *)self->_alsStack clear];
  self->_stackCurrentCount = 0;
  self->_consecutiveNonMitgatedCount = 0;
  self->_mitigationUsedYet = 0;
}

- (id)filterEvent:(id)event
{
  if ([event eventType] == 12)
  {
    return [(CBColorPolicyFilter *)self handleALSEvent:event];
  }

  else
  {
    return event;
  }
}

- (id)handleALSEvent:(id)event
{
  v34 = __b;
  selfCopy = self;
  v74 = a2;
  eventCopy = event;
  v72 = 1;
  v71 = 0;
  v70 = 0.27;
  v69 = 1.0;
  __c = 0;
  v68 = 0;
  [event illuminance];
  *&v3 = v3;
  v67 = *&v3;
  memset(__b, 0, sizeof(__b));
  v36 = eventCopy;
  if (eventCopy)
  {
    objc_msgSend_vendorData(v36, v33);
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  v65 = *(v34 + 3);
  v68 = *(v34 + 18);
  *&v4 = v67;
  if (v67 >= 10.0)
  {
    if (__b[82])
    {
      if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy, v4])
      {
        *&v5 = v67;
        *&v6 = v65;
        [(CBColorPolicyFilter *)selfCopy computeBaselineStrengthForLux:v5 andNits:v6];
        v70 = v7;
        [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
        selfCopy->_isColorMitigationTriggered = 1;
      }

      else
      {
        [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
        selfCopy->_isColorMitigationTriggered = 0;
        v70 = 0.27;
      }

      selfCopy->_filteredALS = eventCopy;
      selfCopy->_filteredStrength = v70;
    }

    else if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy, v4])
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      *&v8 = v67;
      *&v9 = v65;
      [(CBColorPolicyFilter *)selfCopy computeBaselineStrengthForLux:v8 andNits:v9];
      v64 = v10;
      if (selfCopy->_ceEnabled)
      {
        if ([(CBColorPolicyFilter *)selfCopy sampleIsFromCERegion:eventCopy])
        {
          v71 = 1;
          v63 = [(CBCEModule *)selfCopy->_ceModule copyInference:eventCopy];
          v32 = v63;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [objc_msgSend(v63 objectForKey:{@"CEStrength", "floatValue"}];
            v70 = v11;
            [objc_msgSend(v63 objectForKey:{@"CEConfidence", "floatValue"}];
            v69 = v12;
          }

          MEMORY[0x1E69E5920](v63);
          if (v69 >= selfCopy->_ceConfidenceThreshold)
          {
            if (v70 < v64)
            {
              v71 = 0;
              v70 = v64;
            }
          }

          else
          {
            v70 = v64;
            v71 = 0;
          }
        }

        else
        {
          v70 = 0.27;
        }
      }

      else
      {
        v70 = v64;
      }

      selfCopy->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
      selfCopy->_isColorMitigationTriggered = 0;
      v70 = 0.27;
    }

    if (v72)
    {
      v29 = objc_alloc(MEMORY[0x1E695DF20]);
      v28 = eventCopy;
      v24 = 0x1E696A000uLL;
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v68];
      *&v13 = v70;
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      v23 = MEMORY[0x1E696AD98];
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBHIDEvent colorMitigationTriggered](eventCopy, "colorMitigationTriggered")}];
      v30 = &v18;
      v62 = [v29 initWithObjectsAndKeys:{v28, @"ALSSample", v25, @"sampleTimestamp", v26, @"Strength", v27, @"Mitigated", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v71 & 1), @"isStrengthFromCE", 0}];
      [(CBStack *)selfCopy->_alsStack pushObj:v62];
      v31 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
      ++selfCopy->_stackCurrentCount;
      MEMORY[0x1E69E5920](v62);
      if (*(&selfCopy->super.super.isa + v31[735]) > selfCopy->_stackLength)
      {
        context = objc_autoreleasePoolPush();
        popObj = [(CBStack *)selfCopy->_alsStack popObj];
        v15 = context;
        v62 = popObj;
        --selfCopy->_stackCurrentCount;
        objc_autoreleasePoolPop(v15);
      }
    }

    if ((__b[82] & 1) == 0)
    {
      if (([(CBHIDEvent *)eventCopy colorMitigationTriggered]& 1) != 0)
      {
        selfCopy->_consecutiveNonMitgatedCount = 0;
        stack = [(CBStack *)selfCopy->_alsStack stack];
        v54 = 0;
        v55 = &v54;
        v56 = 1375731712;
        v57 = 48;
        v58 = __Block_byref_object_copy__23;
        v59 = __Block_byref_object_dispose__23;
        v60 = 0;
        v48 = MEMORY[0x1E69E9820];
        v49 = -1073741824;
        v50 = 0;
        v51 = __38__CBColorPolicyFilter_handleALSEvent___block_invoke;
        v52 = &unk_1E867C510;
        v53 = &v54;
        [(NSMutableArray *)stack enumerateObjectsUsingBlock:?];
        if (!v55[5])
        {
          selfCopy->_mitigationUsedYet = 1;
          v44[0] = 0;
          v44[1] = v44;
          v45 = 0x20000000;
          v46 = 32;
          v47 = 0;
          v37 = MEMORY[0x1E69E9820];
          v38 = -1073741824;
          v39 = 0;
          v40 = __38__CBColorPolicyFilter_handleALSEvent___block_invoke_2;
          v41 = &unk_1E867D2E8;
          v42 = v44;
          v43 = &v54;
          [(NSMutableArray *)stack enumerateObjectsUsingBlock:?];
          _Block_object_dispose(v44, 8);
        }

        v21 = [v55[5] objectForKey:@"ALSSample"];
        selfCopy->_filteredALS = v21;
        v20 = [v55[5] objectForKey:@"Strength"];
        [v20 floatValue];
        v19 = v16;
        selfCopy->_filteredStrength = v16;
        _Block_object_dispose(&v54, 8);
      }

      else if (selfCopy->_mitigationUsedYet)
      {
        if (++selfCopy->_consecutiveNonMitgatedCount < 0x14)
        {
          [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
          selfCopy->_isColorMitigationTriggered = 1;
        }

        selfCopy->_filteredALS = eventCopy;
        selfCopy->_filteredStrength = v70;
      }

      else
      {
        selfCopy->_filteredALS = eventCopy;
        selfCopy->_filteredStrength = v70;
      }
    }
  }

  else
  {
    v70 = 0.27;
    if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy])
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      selfCopy->_isColorMitigationTriggered = 1;
      selfCopy->_mitigationUsedYet = 1;
      selfCopy->_consecutiveNonMitgatedCount = 0;
    }

    else if (selfCopy->_mitigationUsedYet && (++selfCopy->_consecutiveNonMitgatedCount, selfCopy->_consecutiveNonMitgatedCount < 0x14))
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      selfCopy->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
      selfCopy->_isColorMitigationTriggered = 0;
    }

    v72 = 0;
    selfCopy->_filteredALS = eventCopy;
    selfCopy->_filteredStrength = v70;
  }

  return selfCopy->_filteredALS;
}

uint64_t __38__CBColorPolicyFilter_handleALSEvent___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 objectForKey:{@"Mitigated", "BOOLValue"}];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 40) = a2;
    }
  }

  return result;
}

float __38__CBColorPolicyFilter_handleALSEvent___block_invoke_2(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a2 objectForKey:{@"Strength", "floatValue"}];
    if (result >= *(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = result;
      *(*(*(a1 + 40) + 8) + 40) = a2;
    }
  }

  return result;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v13 = 0;
  if ([key isEqual:@"CEEnable"])
  {
    self->_ceEnabled = [property BOOLValue] & 1;
    v13 = 1;
  }

  if ([key isEqual:@"CEConfidenceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [property floatValue];
      self->_ceConfidenceThreshold = v4;
      v13 = 1;
    }
  }

  if ([key isEqual:@"MitigationBoundaryOverride"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [property objectForKey:@"TTRestriction_th_E"];
      v11 = [property objectForKey:@"TTRestriction_th_L"];
      v8 = [v12 count];
      if (v8 == [v11 count])
      {
        if ([v12 count])
        {
          v10 = [v12 count];
          if (v10 > 0x14)
          {
            v10 = 20;
          }

          self->_mitigationThrSize = v10;
          for (i = 0; i < v10; ++i)
          {
            [objc_msgSend(v12 objectAtIndexedSubscript:{i), "floatValue"}];
            self->_mitigationThrE[i] = v5;
            [objc_msgSend(v11 objectAtIndexedSubscript:{i), "floatValue"}];
            self->_mitigationThrL[i] = v6;
          }
        }
      }
    }
  }

  return v13;
}

- (id)copyPropertyForKey:(id)key
{
  v4 = 0;
  if ([key isEqual:@"CEEnable"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_ceEnabled];
  }

  return v4;
}

- (void)initializeMitigationsForDevice:(unsigned int)device
{
  v9 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1DEAD628C, sizeof(__dst));
  memcpy(v7, &unk_1DEAD62B8, sizeof(v7));
  self->_isColorMitigationTriggered = 0;
  self->_filteredStrength = 0.27;
  self->_mitigatedStrengthLUT = &baselineStrengthLUT;
  self->_mitigationThrSize = 11;
  __memcpy_chk();
  __memcpy_chk();
  if (device == 1 || device == 3)
  {
    memcpy(v6, &unk_1DEAD62E4, sizeof(v6));
    memcpy(v5, &unk_1DEAD6310, sizeof(v5));
    self->_ceMitigationThrSize = 11;
    __memcpy_chk();
    __memcpy_chk();
  }

  else if (device == 2 || device == 4)
  {
    self->_ceMitigationThrSize = 5;
    __memcpy_chk();
    __memcpy_chk();
  }
}

- (BOOL)shouldMitigateForSample:(id)sample withLuxThr:(float *)thr NitsThr:(float *)nitsThr andSize:(unint64_t)size
{
  selfCopy = self;
  v19 = a2;
  sampleCopy = sample;
  thrCopy = thr;
  nitsThrCopy = nitsThr;
  sizeCopy = size;
  if (!thr || !nitsThrCopy)
  {
    return 0;
  }

  v14 = thrCopy;
  v13 = nitsThrCopy;
  v12 = sizeCopy;
  v11 = 0;
  [sampleCopy illuminance];
  *&v6 = v6;
  v10 = *&v6;
  memset(__b, 0, sizeof(__b));
  if (sampleCopy)
  {
    objc_msgSend_vendorData(sampleCopy);
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  if (v12 < 2 || v10 < *v14)
  {
    return 0;
  }

  if (v10 >= v14[v12 - 1])
  {
    return 0;
  }

  for (i = 0; i < v12 - 1; ++i)
  {
    if (v10 <= v14[i + 1])
    {
      if ((v13[i] + (((v13[i + 1] - v13[i]) / (v14[i + 1] - v14[i])) * (v10 - v14[i]))) < *&__b[6])
      {
        v11 = 1;
      }

      return v11 & 1;
    }
  }

  return v11 & 1;
}

- (float)computeBaselineStrengthForLux:(float)lux andNits:(float)nits
{
  selfCopy = self;
  v16 = a2;
  luxCopy = lux;
  nitsCopy = nits;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  for (i = 0; i < 47; ++i)
  {
    if (i + 1 >= 47)
    {
      v11 = i;
      v12 = i;
    }

    else
    {
      if (baselineLux[i] < luxCopy && baselineLux[i + 1] > luxCopy)
      {
        v12 = i;
        v11 = i + 1;
        break;
      }

      if (luxCopy <= baselineLux[i])
      {
        v11 = i;
        v12 = i;
        break;
      }
    }
  }

  for (j = 0; j < 161; ++j)
  {
    if (j + 1 >= 161)
    {
      v9 = j;
      v10 = j;
    }

    else
    {
      if (baselineNits[j] < nitsCopy && baselineNits[j + 1] > nitsCopy)
      {
        v10 = j;
        v9 = j + 1;
        break;
      }

      if (nitsCopy <= baselineNits[j])
      {
        v9 = j;
        v10 = j;
        break;
      }
    }
  }

  v13[0] = v12;
  v13[1] = v11;
  v13[2] = v10;
  v13[3] = v9;
  *&v4 = nitsCopy;
  [(CBColorPolicyFilter *)selfCopy biLinearInterpBetweenIndices:v13 forPoint1:COERCE_DOUBLE(LODWORD(luxCopy)) andPoint2:v4];
  return llroundf(v5 * 100.0) / 100.0;
}

- (float)biLinearInterpBetweenIndices:(char *)indices forPoint1:(float)point1 andPoint2:(float)point2
{
  point2Copy = point2;
  if (!self->_mitigatedStrengthLUT || !indices)
  {
    return -1.0;
  }

  v30 = *indices;
  v29 = indices[1];
  v28 = indices[2];
  v27 = indices[3];
  *&v8 = baselineLux[v30];
  v26 = LODWORD(v8);
  v25 = baselineLux[v29];
  v24 = baselineNits[v28];
  v23 = baselineNits[v27];
  v22 = self->_mitigatedStrengthLUT[v27][v30];
  v21 = self->_mitigatedStrengthLUT[v27][v29];
  if (v30 == v29 && v28 == v27)
  {
    return self->_mitigatedStrengthLUT[v28][v30];
  }

  if (v30 == v29)
  {
    *&v8 = baselineNits[v28];
    *&v9 = self->_mitigatedStrengthLUT[v28][v30];
    *&v5 = baselineNits[v27];
    *&v6 = self->_mitigatedStrengthLUT[v27][v30];
    *&v7 = point2Copy;
    [(CBColorPolicyFilter *)self interpolateBetweenX1:v8 Y1:v9 X2:v5 Y2:v6 X:v7];
    return v10;
  }

  else
  {
    *&v8 = LODWORD(v8);
    point2 = self->_mitigatedStrengthLUT[v28][v30];
    *&v5 = baselineLux[v29];
    *&v6 = self->_mitigatedStrengthLUT[v28][v29];
    *&v7 = point1;
    if (v28 != v27)
    {
      [(CBColorPolicyFilter *)self interpolateBetweenX1:v8 Y1:*&point2 X2:v5 Y2:v6 X:v7];
      v20 = v12;
      *&v13 = v26;
      *&v14 = v22;
      *&v15 = v25;
      *&v16 = v21;
      *&v17 = point1;
      [(CBColorPolicyFilter *)self interpolateBetweenX1:v13 Y1:v14 X2:v15 Y2:v16 X:v17];
      v19 = LODWORD(v8);
      *&v8 = v24;
      point2 = v20;
      *&v5 = v23;
      LODWORD(v6) = v19;
      *&v7 = point2Copy;
    }

    [(CBColorPolicyFilter *)self interpolateBetweenX1:v8 Y1:*&point2 X2:v5 Y2:v6 X:v7];
    return v11;
  }
}

@end