@interface ENExposureConfiguration
- (ENExposureConfiguration)init;
- (ENExposureConfiguration)initWithDictionary:(id)dictionary error:(id *)error;
- (ENExposureConfiguration)initWithXPCObject:(id)object error:(id *)error;
- (double)daysSinceLastExposureLevelValueWithDays:(int64_t)days;
- (double)durationLevelValueWithDuration:(double)duration;
- (double)infectiousnessWeightWithDaysSinceOnsetOfSymptoms:(int64_t)symptoms skip:(BOOL *)skip;
- (double)reportTypeWeightWithReportType:(unsigned int)type skip:(BOOL *)skip;
- (double)transmissionLevelValueWithTransmissionRiskLevel:(unsigned __int8)level;
- (double)weightedDurationWithExposureInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)mappedDiagnosisReportType:(unsigned int)type;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENExposureConfiguration

- (ENExposureConfiguration)init
{
  v13.receiver = self;
  v13.super_class = ENExposureConfiguration;
  v2 = [(ENExposureConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = vdupq_n_s64(0x807060504030201uLL);
    *(v2 + 8) = v4;
    *(v2 + 24) = v4;
    v5 = *(v2 + 18);
    *(v2 + 18) = &unk_284B0F180;

    v6 = *(v3 + 21);
    *(v3 + 21) = &unk_284B0F198;

    v7 = *(v3 + 23);
    *(v3 + 22) = 0x3FF0000000000000;
    *(v3 + 23) = &unk_284B0F1B0;

    v8 = *(v3 + 25);
    *(v3 + 24) = 0x3FF0000000000000;
    *(v3 + 25) = &unk_284B0F1C8;

    v9 = vdupq_n_s64(0x4059000000000000uLL);
    *(v3 + 26) = 0x3FF0000000000000;
    *(v3 + 56) = v9;
    *(v3 + 72) = v9;
    *(v3 + 7) = v9;
    *(v3 + 8) = v9;
    *(v3 + 6) = v9;
    *(v3 + 11) = 1;
    v10 = *(v3 + 28);
    *(v3 + 28) = &unk_284B0F1E0;

    *(v3 + 29) = 0x3FF0000000000000;
    v11 = v3;
  }

  return v3;
}

- (ENExposureConfiguration)initWithDictionary:(id)dictionary error:(id *)error
{
  v111 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [(ENExposureConfiguration *)self init];
  if (!v6)
  {
    if (!error)
    {
      goto LABEL_155;
    }

    v66 = ENErrorF(2, "init failed");
LABEL_154:
    v12 = 0;
    *error = v66;
    goto LABEL_108;
  }

  v6->_flags = CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  v6->_immediateDurationWeight = v7;
  if (v7 < 0.0 || v7 > 250.0)
  {
    if (!error)
    {
      goto LABEL_155;
    }

    v66 = ENErrorF(2, "Out-of-range immediateDurationWeight: %f", v7);
    goto LABEL_154;
  }

  CFDictionaryGetDouble();
  v6->_nearDurationWeight = v8;
  if (v8 < 0.0 || v8 > 250.0)
  {
    if (!error)
    {
      goto LABEL_155;
    }

    v66 = ENErrorF(2, "Out-of-range nearDurationWeight: %f", v8);
    goto LABEL_154;
  }

  CFDictionaryGetDouble();
  v6->_mediumDurationWeight = v9;
  if (v9 < 0.0 || v9 > 250.0)
  {
    if (!error)
    {
      goto LABEL_155;
    }

    v66 = ENErrorF(2, "Out-of-range mediumDurationWeight: %f", v9);
    goto LABEL_154;
  }

  CFDictionaryGetDouble();
  v6->_otherDurationWeight = v10;
  if (v10 < 0.0 || v10 > 250.0)
  {
    if (error)
    {
      v66 = ENErrorF(2, "Out-of-range otherDurationWeight: %f", v10);
      goto LABEL_154;
    }

LABEL_155:
    v12 = 0;
    goto LABEL_108;
  }

  CFDictionaryGetTypeID();
  obj = CFDictionaryGetTypedValue();
  if (obj)
  {
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy_;
    v104 = __Block_byref_object_dispose_;
    v105 = 0;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __52__ENExposureConfiguration_initWithDictionary_error___block_invoke;
    v99[3] = &unk_278A4B170;
    v99[4] = &v100;
    [obj enumerateKeysAndObjectsUsingBlock:v99];
    v11 = v101[5];
    if (v11)
    {
      if (error)
      {
        v67 = v11;
        *error = v11;
      }
    }

    else
    {
      objc_storeStrong(&v6->_infectiousnessForDaysSinceOnsetOfSymptoms, obj);
    }

    _Block_object_dispose(&v100, 8);

    if (v11)
    {
      goto LABEL_14;
    }
  }

  CFDictionaryGetDouble();
  v6->_infectiousnessStandardWeight = v13;
  if (v13 < 0.0 || v13 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range infectiousnessStandardWeight: %f", v13);
LABEL_172:
    v12 = 0;
    *error = v68;
    goto LABEL_107;
  }

  CFDictionaryGetDouble();
  v6->_infectiousnessHighWeight = v14;
  if (v14 < 0.0 || v14 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range infectiousnessHighWeight: %f", v14);
    goto LABEL_172;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeConfirmedTestWeight = v15;
  if (v15 < 0.0 || v15 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range reportTypeConfirmedTestWeight: %f", v15);
    goto LABEL_172;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeConfirmedClinicalDiagnosisWeight = v16;
  if (v16 < 0.0 || v16 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range reportTypeConfirmedClinicalDiagnosisWeight: %f", v16);
    goto LABEL_172;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeSelfReportedWeight = v17;
  if (v17 < 0.0 || v17 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range reportTypeSelfReportedWeight: %f", v17);
    goto LABEL_172;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeRecursiveWeight = v18;
  if (v18 < 0.0 || v18 > 250.0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v68 = ENErrorF(2, "Out-of-range reportTypeRecursiveWeight: %f", v18);
    goto LABEL_172;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6->_reportTypeNoneMap = Int64Ranged;
  if (Int64Ranged >= 5)
  {
    if (error)
    {
      v68 = ENErrorF(2, "Out-of-range reportTypeNoneMap: %d", Int64Ranged);
      goto LABEL_172;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_107;
  }

  CFArrayGetTypeID();
  v77 = CFDictionaryGetTypedValue();
  if (v77)
  {
    if (([v77 count] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v20 = v77;
      v21 = [v20 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (!v21)
      {
        goto LABEL_39;
      }

      v22 = *v96;
      while (1)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v96 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v95 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v61 = ENErrorF(2, "Non-number attenuation threshold item");
              goto LABEL_113;
            }

LABEL_114:

LABEL_115:
            v12 = 0;
            goto LABEL_106;
          }

          longLongValue = [v24 longLongValue];
          if (longLongValue >= 0x100)
          {
            if (error)
            {
              v61 = ENErrorF(2, "Out-of-range attenuation threshold: %lld", longLongValue);
LABEL_113:
              *error = v61;
            }

            goto LABEL_114;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v95 objects:v110 count:16];
        if (!v21)
        {
LABEL_39:

          objc_storeStrong(&v6->_attenuationDurationThresholds, v77);
          goto LABEL_40;
        }
      }
    }

    if (!error)
    {
      goto LABEL_115;
    }

    v69 = ENErrorF(2, "Bad attenuationDurationThresholds count: %d vs %d-%d", [v77 count], 2, 3);
LABEL_179:
    v12 = 0;
    *error = v69;
    goto LABEL_106;
  }

LABEL_40:
  v6->_daysSinceLastExposureThreshold = CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  v6->_minimumRiskScoreFullRange = v26;
  if (v26 < 0.0 || v26 > 4096.0)
  {
    if (!error)
    {
      goto LABEL_115;
    }

    v69 = ENErrorF(2, "Out-of-range minimumRiskScoreFullRange: %f", v26);
    goto LABEL_179;
  }

  CFArrayGetTypeID();
  v76 = CFDictionaryGetTypedValue();
  if (v76)
  {
    if ([v76 count] == 8)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v27 = v76;
      v28 = [v27 countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = *v92;
      while (1)
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v92 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v91 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v62 = ENErrorF(2, "Non-number attenuation item");
              goto LABEL_120;
            }

LABEL_121:

LABEL_122:
            v12 = 0;
            goto LABEL_105;
          }

          longLongValue2 = [v31 longLongValue];
          if (longLongValue2 >= 9)
          {
            if (error)
            {
              v62 = ENErrorF(2, "Out-of-range attenuation level value: %lld", longLongValue2);
LABEL_120:
              *error = v62;
            }

            goto LABEL_121;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v91 objects:v109 count:16];
        if (!v28)
        {
LABEL_53:

          objc_storeStrong(&v6->_attenuationLevelValues, v76);
          goto LABEL_54;
        }
      }
    }

    if (!error)
    {
      goto LABEL_122;
    }

    v70 = ENErrorF(2, "Bad attenuation array: %d vs %zu", [v76 count], 8uLL);
LABEL_184:
    v12 = 0;
    *error = v70;
    goto LABEL_105;
  }

LABEL_54:
  attenuationWeight = v6->_attenuationWeight;
  if (attenuationWeight < 0.0 || attenuationWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_122;
    }

    v70 = ENErrorF(2, "Out-of-range attenuationWeight: %f", v6->_attenuationWeight);
    goto LABEL_184;
  }

  CFArrayGetTypeID();
  v75 = CFDictionaryGetTypedValue();
  if (v75)
  {
    if ([v75 count] == 8)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v34 = v75;
      v35 = [v34 countByEnumeratingWithState:&v87 objects:v108 count:16];
      if (!v35)
      {
        goto LABEL_67;
      }

      v36 = *v88;
      while (1)
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v88 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v87 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v63 = ENErrorF(2, "Non-number days item");
              goto LABEL_127;
            }

LABEL_128:

LABEL_129:
            v12 = 0;
            goto LABEL_104;
          }

          longLongValue3 = [v38 longLongValue];
          if (longLongValue3 >= 9)
          {
            if (error)
            {
              v63 = ENErrorF(2, "Out-of-range days level value: %lld", longLongValue3);
LABEL_127:
              *error = v63;
            }

            goto LABEL_128;
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v87 objects:v108 count:16];
        if (!v35)
        {
LABEL_67:

          objc_storeStrong(&v6->_daysSinceLastExposureLevelValues, v75);
          goto LABEL_68;
        }
      }
    }

    if (!error)
    {
      goto LABEL_129;
    }

    v71 = ENErrorF(2, "Bad days array: %d vs %zu", [v75 count], 8uLL);
LABEL_189:
    v12 = 0;
    *error = v71;
    goto LABEL_104;
  }

LABEL_68:
  daysSinceLastExposureWeight = v6->_daysSinceLastExposureWeight;
  if (daysSinceLastExposureWeight < 0.0 || daysSinceLastExposureWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_129;
    }

    v71 = ENErrorF(2, "Out-of-range daysSinceLastExposureWeight: %f", v6->_daysSinceLastExposureWeight);
    goto LABEL_189;
  }

  CFArrayGetTypeID();
  v41 = CFDictionaryGetTypedValue();
  v42 = v41;
  if (!v41)
  {
    goto LABEL_82;
  }

  if ([v41 count] != 8)
  {
    if (!error)
    {
      goto LABEL_136;
    }

    v72 = ENErrorF(2, "Bad duration array: %d vs %zu", [v42 count], 8uLL);
    goto LABEL_199;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v43 = v42;
  v44 = [v43 countByEnumeratingWithState:&v83 objects:v107 count:16];
  if (!v44)
  {
    goto LABEL_81;
  }

  v45 = *v84;
  while (2)
  {
    for (m = 0; m != v44; ++m)
    {
      if (*v84 != v45)
      {
        objc_enumerationMutation(v43);
      }

      v47 = *(*(&v83 + 1) + 8 * m);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v64 = ENErrorF(2, "Non-number duration item");
LABEL_134:
          *error = v64;
        }

LABEL_135:

        goto LABEL_136;
      }

      longLongValue4 = [v47 longLongValue];
      if (longLongValue4 >= 9)
      {
        if (error)
        {
          v64 = ENErrorF(2, "Out-of-range duration level value: %lld", longLongValue4);
          goto LABEL_134;
        }

        goto LABEL_135;
      }
    }

    v44 = [v43 countByEnumeratingWithState:&v83 objects:v107 count:16];
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_81:

  objc_storeStrong(&v6->_durationLevelValues, v42);
LABEL_82:
  durationWeight = v6->_durationWeight;
  if (durationWeight < 0.0 || durationWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_136;
    }

    v72 = ENErrorF(2, "Out-of-range durationWeight: %f", v6->_durationWeight);
LABEL_199:
    v12 = 0;
    *error = v72;
    goto LABEL_103;
  }

  LODWORD(v100) = 0;
  Int64 = CFDictionaryGetInt64();
  if (v100)
  {
    goto LABEL_87;
  }

  if (Int64 >= 0x100)
  {
    if (error)
    {
      v72 = ENErrorF(2, "Out-of-range minimumRiskScore: %lld", Int64);
      goto LABEL_199;
    }

LABEL_136:
    v12 = 0;
    goto LABEL_103;
  }

  v6->_minimumRiskScore = Int64;
LABEL_87:
  CFArrayGetTypeID();
  v51 = CFDictionaryGetTypedValue();
  v52 = v51;
  if (!v51)
  {
    goto LABEL_99;
  }

  if ([v51 count] == 8)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v53 = v52;
    v54 = [v53 countByEnumeratingWithState:&v79 objects:v106 count:16];
    if (!v54)
    {
      goto LABEL_98;
    }

    v55 = *v80;
LABEL_91:
    v56 = 0;
    while (1)
    {
      if (*v80 != v55)
      {
        objc_enumerationMutation(v53);
      }

      v57 = *(*(&v79 + 1) + 8 * v56);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      longLongValue5 = [v57 longLongValue];
      if (longLongValue5 >= 9)
      {
        if (error)
        {
          v65 = ENErrorF(2, "Out-of-range transmissionRisk level value: %lld", longLongValue5);
LABEL_141:
          *error = v65;
        }

        goto LABEL_142;
      }

      if (v54 == ++v56)
      {
        v54 = [v53 countByEnumeratingWithState:&v79 objects:v106 count:16];
        if (v54)
        {
          goto LABEL_91;
        }

LABEL_98:

        objc_storeStrong(&v6->_transmissionRiskLevelValues, v52);
LABEL_99:
        transmissionRiskWeight = v6->_transmissionRiskWeight;
        if (transmissionRiskWeight >= 0.0 && transmissionRiskWeight <= 100.0)
        {
          v12 = v6;
          goto LABEL_102;
        }

        if (error)
        {
          v73 = ENErrorF(2, "Out-of-range transmissionRiskWeight: %f", v6->_transmissionRiskWeight);
          goto LABEL_196;
        }

LABEL_143:
        v12 = 0;
        goto LABEL_102;
      }
    }

    if (error)
    {
      v65 = ENErrorF(2, "Non-number transmissionRisk item");
      goto LABEL_141;
    }

LABEL_142:

    goto LABEL_143;
  }

  if (!error)
  {
    goto LABEL_143;
  }

  v73 = ENErrorF(2, "Bad transmissionRisk array: %d vs %zu", [v52 count], 8uLL);
LABEL_196:
  v12 = 0;
  *error = v73;
LABEL_102:

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

LABEL_107:
LABEL_108:

  return v12;
}

void __52__ENExposureConfiguration_initWithDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 unsignedIntValue] < 3)
      {
        goto LABEL_8;
      }

      ENErrorF(2, "Bad infectiousness value: %u");
    }

    else
    {
      ENErrorF(2, "Non-number infectiousness value");
    }
  }

  else
  {
    ENErrorF(2, "Non-number infectiousness key");
  }
  v9 = ;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ENExposureConfiguration alloc];
  dictionaryRepresentation = [(ENExposureConfiguration *)self dictionaryRepresentation];
  v10 = 0;
  v6 = [(ENExposureConfiguration *)v4 initWithDictionary:dictionaryRepresentation error:&v10];
  v7 = v10;

  v8 = 0;
  if (!v7)
  {
    v8 = v6;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_flags];
  [v3 setObject:v4 forKeyedSubscript:@"exposureFlags"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_immediateDurationWeight];
  [v3 setObject:v5 forKeyedSubscript:@"immediateDurationWeight"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nearDurationWeight];
  [v3 setObject:v6 forKeyedSubscript:@"nearDurationWeight"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mediumDurationWeight];
  [v3 setObject:v7 forKeyedSubscript:@"mediumDurationWeight"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_otherDurationWeight];
  [v3 setObject:v8 forKeyedSubscript:@"otherDurationWeight"];

  [v3 setObject:self->_infectiousnessForDaysSinceOnsetOfSymptoms forKeyedSubscript:@"infectiousnessForDaysSinceOnsetOfSymptoms"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_infectiousnessStandardWeight];
  [v3 setObject:v9 forKeyedSubscript:@"infectiousnessStandardWeight"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_infectiousnessHighWeight];
  [v3 setObject:v10 forKeyedSubscript:@"infectiousnessHighWeight"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeConfirmedTestWeight];
  [v3 setObject:v11 forKeyedSubscript:@"reportTypeConfirmedTestWeight"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeConfirmedClinicalDiagnosisWeight];
  [v3 setObject:v12 forKeyedSubscript:@"reportTypeConfirmedClinicalDiagnosisWeight"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeSelfReportedWeight];
  [v3 setObject:v13 forKeyedSubscript:@"reportTypeSelfReportedWeight"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeRecursiveWeight];
  [v3 setObject:v14 forKeyedSubscript:@"reportTypeRecursiveWeight"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reportTypeNoneMap];
  [v3 setObject:v15 forKeyedSubscript:@"reportTypeNoneMap"];

  [v3 setObject:self->_attenuationDurationThresholds forKeyedSubscript:@"attenuationDurationThresholds"];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysSinceLastExposureThreshold];
  [v3 setObject:v16 forKeyedSubscript:@"daysSinceLastExposureThreshold"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_minimumRiskScore];
  [v3 setObject:v17 forKeyedSubscript:@"minimumRiskScore"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumRiskScoreFullRange];
  [v3 setObject:v18 forKeyedSubscript:@"minimumRiskScoreFullRange"];

  [v3 setObject:self->_attenuationLevelValues forKeyedSubscript:@"attenuationLevelValues"];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_attenuationWeight];
  [v3 setObject:v19 forKeyedSubscript:@"attenuationWeight"];

  [v3 setObject:self->_daysSinceLastExposureLevelValues forKeyedSubscript:@"daysSinceLastExposureLevelValues"];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_daysSinceLastExposureWeight];
  [v3 setObject:v20 forKeyedSubscript:@"daysSinceLastExposureWeight"];

  [v3 setObject:self->_durationLevelValues forKeyedSubscript:@"durationLevelValues"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_durationWeight];
  [v3 setObject:v21 forKeyedSubscript:@"durationWeight"];

  [v3 setObject:self->_transmissionRiskLevelValues forKeyedSubscript:@"transmissionRiskLevelValues"];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_transmissionRiskWeight];
  [v3 setObject:v22 forKeyedSubscript:@"transmissionRiskWeight"];

  v23 = [v3 copy];

  return v23;
}

- (ENExposureConfiguration)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENExposureConfiguration *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "super init failed");
LABEL_108:
    *error = v16 = 0;
    goto LABEL_93;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "XPC non-dict");
    goto LABEL_108;
  }

  v50 = 0;
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_flags = v50;
  }

  else if (v8 == 5)
  {
    goto LABEL_109;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_109;
  }

  if (([(NSArray *)v7->_attenuationDurationThresholds count]& 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "Bad attenuationDurationThresholds count");
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  immediateDurationWeight = v7->_immediateDurationWeight;
  if (immediateDurationWeight < 0.0 || immediateDurationWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "Out-of-range immediateDurationWeight: %f");
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  nearDurationWeight = v7->_nearDurationWeight;
  if (nearDurationWeight < 0.0 || nearDurationWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "Out-of-range nearDurationWeight: %f");
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  mediumDurationWeight = v7->_mediumDurationWeight;
  if (mediumDurationWeight < 0.0 || mediumDurationWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_109;
    }

    ENErrorF(2, "Out-of-range mediumDurationWeight: %f");
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  otherDurationWeight = v7->_otherDurationWeight;
  if (otherDurationWeight < 0.0 || otherDurationWeight > 250.0)
  {
    if (error)
    {
      ENErrorF(2, "Out-of-range otherDurationWeight: %f");
      goto LABEL_108;
    }

LABEL_109:
    v16 = 0;
    goto LABEL_93;
  }

  v13 = xpc_dictionary_get_dictionary(objectCopy, "infectLV");
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy_;
    v54 = __Block_byref_object_dispose_;
    v55 = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __51__ENExposureConfiguration_initWithXPCObject_error___block_invoke;
    applier[3] = &unk_278A4B198;
    applier[4] = v14;
    applier[5] = &v50;
    xpc_dictionary_apply(v13, applier);
    v15 = v51[5];
    if (v15)
    {
      if (error)
      {
        v48 = v15;
        *error = v15;
      }
    }

    else
    {
      objc_storeStrong(&v7->_infectiousnessForDaysSinceOnsetOfSymptoms, v14);
    }

    _Block_object_dispose(&v50, 8);

    if (v15)
    {
      goto LABEL_24;
    }
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  infectiousnessStandardWeight = v7->_infectiousnessStandardWeight;
  if (infectiousnessStandardWeight < 0.0 || infectiousnessStandardWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range infectiousnessStandardWeight: %f");
LABEL_142:
    *error = v16 = 0;
    goto LABEL_92;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  infectiousnessHighWeight = v7->_infectiousnessHighWeight;
  if (infectiousnessHighWeight < 0.0 || infectiousnessHighWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range infectiousnessHighWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeConfirmedTestWeight = v7->_reportTypeConfirmedTestWeight;
  if (reportTypeConfirmedTestWeight < 0.0 || reportTypeConfirmedTestWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range reportTypeConfirmedTestWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeConfirmedClinicalDiagnosisWeight = v7->_reportTypeConfirmedClinicalDiagnosisWeight;
  if (reportTypeConfirmedClinicalDiagnosisWeight < 0.0 || reportTypeConfirmedClinicalDiagnosisWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range reportTypeConfirmedClinicalDiagnosisWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeSelfReportedWeight = v7->_reportTypeSelfReportedWeight;
  if (reportTypeSelfReportedWeight < 0.0 || reportTypeSelfReportedWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range reportTypeSelfReportedWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeRecursiveWeight = v7->_reportTypeRecursiveWeight;
  if (reportTypeRecursiveWeight < 0.0 || reportTypeRecursiveWeight > 250.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range reportTypeRecursiveWeight: %f");
    goto LABEL_142;
  }

  v50 = 0;
  v23 = CUXPCDecodeUInt64RangedEx();
  if (v23 == 6)
  {
    reportTypeNoneMap = v50;
    v7->_reportTypeNoneMap = v50;
  }

  else
  {
    if (v23 == 5)
    {
      goto LABEL_24;
    }

    reportTypeNoneMap = v7->_reportTypeNoneMap;
  }

  if (reportTypeNoneMap >= 5)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range reportTypeNoneMap: %d");
    goto LABEL_142;
  }

  v50 = 0;
  v25 = CUXPCDecodeUInt64RangedEx();
  if (v25 == 6)
  {
    v7->_minimumRiskScore = v50;
  }

  else if (v25 == 5)
  {
    goto LABEL_24;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  v50 = 0;
  v26 = CUXPCDecodeSInt64RangedEx();
  if (v26 == 6)
  {
    v7->_daysSinceLastExposureThreshold = v50;
  }

  else if (v26 == 5)
  {
    goto LABEL_24;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  attenuationLevelValues = v7->_attenuationLevelValues;
  if (attenuationLevelValues)
  {
    if ([(NSArray *)attenuationLevelValues count]!= 8)
    {
      if (error)
      {
        ENErrorF(2, "Bad attenuation level value count");
        goto LABEL_142;
      }

      goto LABEL_24;
    }

    for (i = 0; i != 8; ++i)
    {
      v29 = [(NSArray *)v7->_attenuationLevelValues objectAtIndexedSubscript:i];
      v7->_attenuationLevelValuesMap[i] = [v29 unsignedIntValue];
    }
  }

  attenuationWeight = v7->_attenuationWeight;
  if (attenuationWeight < 0.0 || attenuationWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range attenuationWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  durationLevelValues = v7->_durationLevelValues;
  if (durationLevelValues)
  {
    if ([(NSArray *)durationLevelValues count]!= 8)
    {
      if (error)
      {
        ENErrorF(2, "Bad duration level value count");
        goto LABEL_142;
      }

      goto LABEL_24;
    }

    for (j = 0; j != 8; ++j)
    {
      v34 = [(NSArray *)v7->_durationLevelValues objectAtIndexedSubscript:j];
      v7->_durationLevelValuesMap[j] = [v34 unsignedIntValue];
    }
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  daysSinceLastExposureLevelValues = v7->_daysSinceLastExposureLevelValues;
  if (daysSinceLastExposureLevelValues)
  {
    if ([(NSArray *)daysSinceLastExposureLevelValues count]!= 8)
    {
      if (error)
      {
        ENErrorF(2, "Bad daysSinceLastExposure level value count");
        goto LABEL_142;
      }

      goto LABEL_24;
    }

    for (k = 0; k != 8; ++k)
    {
      v37 = [(NSArray *)v7->_daysSinceLastExposureLevelValues objectAtIndexedSubscript:k];
      v7->_daysSinceLastExposureLevelValuesMap[k] = [v37 unsignedIntValue];
    }
  }

  daysSinceLastExposureWeight = v7->_daysSinceLastExposureWeight;
  if (daysSinceLastExposureWeight < 0.0 || daysSinceLastExposureWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range daysSinceLastExposureWeight: %f");
    goto LABEL_142;
  }

  durationWeight = v7->_durationWeight;
  if (durationWeight < 0.0 || durationWeight > 100.0)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    ENErrorF(2, "Out-of-range durationWeight: %f");
    goto LABEL_142;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  transmissionRiskLevelValues = v7->_transmissionRiskLevelValues;
  if (transmissionRiskLevelValues)
  {
    if ([(NSArray *)transmissionRiskLevelValues count]!= 8)
    {
      if (error)
      {
        ENErrorF(2, "Bad transmissionRisk level value count");
        goto LABEL_142;
      }

      goto LABEL_24;
    }

    for (m = 0; m != 8; ++m)
    {
      v44 = [(NSArray *)v7->_transmissionRiskLevelValues objectAtIndexedSubscript:m];
      v7->_transmissionRiskLevelValuesMap[m] = [v44 unsignedIntValue];
    }
  }

  transmissionRiskWeight = v7->_transmissionRiskWeight;
  if (transmissionRiskWeight >= 0.0 && transmissionRiskWeight <= 100.0)
  {
    v16 = v7;
    goto LABEL_92;
  }

  if (error)
  {
    ENErrorF(2, "Out-of-range transmissionRiskWeight: %f");
    goto LABEL_142;
  }

LABEL_24:
  v16 = 0;
LABEL_92:

LABEL_93:
  return v16;
}

uint64_t __51__ENExposureConfiguration_initWithXPCObject_error___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = atoll(a2);
  if (MEMORY[0x2383EE9C0](v5) != MEMORY[0x277D86498])
  {
    ENErrorF(2, "Non-number infectiousness");
    v12 = LABEL_6:;
    v11 = 0;
    v13 = *(*(a1 + 40) + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_7;
  }

  value = xpc_int64_get_value(v5);
  if (value >= 3)
  {
    ENErrorF(2, "Bad infectiousness value: %lld");
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:value];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(objectCopy, "expF", flags);
  }

  xpc_dictionary_set_double(v5, "immediateDurW", self->_immediateDurationWeight);
  xpc_dictionary_set_double(v5, "nearDurW", self->_nearDurationWeight);
  xpc_dictionary_set_double(v5, "medDurW", self->_mediumDurationWeight);
  xpc_dictionary_set_double(v5, "otherDurW", self->_otherDurationWeight);
  v7 = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  if (v7)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__ENExposureConfiguration_encodeWithXPCObject___block_invoke;
    v12[3] = &unk_278A4B1C0;
    v12[4] = v8;
    [(NSDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v12];
    xpc_dictionary_set_value(v5, "infectLV", v8);
  }

  xpc_dictionary_set_double(v5, "infWStd", self->_infectiousnessStandardWeight);
  xpc_dictionary_set_double(v5, "infWHigh", self->_infectiousnessHighWeight);
  xpc_dictionary_set_double(v5, "rtWCTest", self->_reportTypeConfirmedTestWeight);
  xpc_dictionary_set_double(v5, "rtWCClin", self->_reportTypeConfirmedClinicalDiagnosisWeight);
  xpc_dictionary_set_double(v5, "rtWSelfR", self->_reportTypeSelfReportedWeight);
  xpc_dictionary_set_double(v5, "rtWRecurs", self->_reportTypeRecursiveWeight);
  xpc_dictionary_set_uint64(v5, "rtNM", self->_reportTypeNoneMap);
  CFArrayGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  CUXPCEncodeNSArrayOfNSNumber();
  daysSinceLastExposureThreshold = self->_daysSinceLastExposureThreshold;
  if (daysSinceLastExposureThreshold)
  {
    xpc_dictionary_set_int64(v5, "dsleTh", daysSinceLastExposureThreshold);
  }

  minimumRiskScoreFullRange = self->_minimumRiskScoreFullRange;
  if (minimumRiskScoreFullRange == 0.0)
  {
    CFDictionaryGetDouble();
  }

  if (minimumRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(v5, "mnRSFR", minimumRiskScoreFullRange);
  }

  if (self->_minimumRiskScore)
  {
    xpc_dictionary_set_uint64(v5, "mnRS", self->_minimumRiskScore);
  }

  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "attW", self->_attenuationWeight);
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "durW", self->_durationWeight);
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "dleW", self->_daysSinceLastExposureWeight);
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "trRW", self->_transmissionRiskWeight);
}

void __47__ENExposureConfiguration_encodeWithXPCObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *__str = 0u;
  v9 = 0u;
  v5 = a3;
  snprintf(__str, 0x20uLL, "%lld", [a2 longLongValue]);
  v6 = *(a1 + 32);
  v7 = [v5 longLongValue];

  xpc_dictionary_set_int64(v6, __str, v7);
}

- (id)description
{
  v34 = 0;
  NSAppendPrintF_safe(&v34, "ENConfig");
  v3 = v34;
  v33 = v3;
  NSAppendPrintF(&v33, ", Flags %#{flags}", self->_flags, &unk_2382C8908);
  v4 = v33;

  v32 = v4;
  NSAppendPrintF_safe(&v32, ", DurW { I %.0f, N %.0f, M %.0f, O %.0f }", self->_immediateDurationWeight, self->_nearDurationWeight, self->_mediumDurationWeight, self->_otherDurationWeight);
  v5 = v32;

  v6 = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  v7 = v6;
  if (v6)
  {
    v31 = v5;
    NSAppendPrintF(&v31, ", InfDays %##@", v6);
    v8 = v31;

    v5 = v8;
  }

  v30 = v5;
  NSAppendPrintF_safe(&v30, ", InfW { S %.0f, H %.0f }", self->_infectiousnessStandardWeight, self->_infectiousnessHighWeight);
  v9 = v30;

  v29 = v9;
  NSAppendPrintF_safe(&v29, ", RpTyW { CTest %.0f, CClin %.0f, SelfR %.0f, Recurs %.0f }", self->_reportTypeConfirmedTestWeight, self->_reportTypeConfirmedClinicalDiagnosisWeight, self->_reportTypeSelfReportedWeight, self->_reportTypeRecursiveWeight);
  v10 = v29;

  v28 = v10;
  NSAppendPrintF_safe(&v28, ", RpTyNM %u", self->_reportTypeNoneMap);
  v11 = v28;

  v27 = v11;
  NSAppendPrintF(&v27, ", AttnDurThres %##@", self->_attenuationDurationThresholds);
  v12 = v27;

  v26 = v12;
  NSAppendPrintF_safe(&v26, ", DaysTh %d", self->_daysSinceLastExposureThreshold);
  v13 = v26;

  v25 = v13;
  NSAppendPrintF_safe(&v25, ", MinScore %d (%.3f)", self->_minimumRiskScore, self->_minimumRiskScoreFullRange);
  v14 = v25;

  v24 = v14;
  NSAppendPrintF(&v24, ", AttnLV %##@", self->_attenuationLevelValues);
  v15 = v24;

  v23 = v15;
  NSAppendPrintF(&v23, ", DaysLV %##@", self->_daysSinceLastExposureLevelValues);
  v16 = v23;

  v22 = v16;
  NSAppendPrintF(&v22, ", DurLV %##@", self->_durationLevelValues);
  v17 = v22;

  v21 = v17;
  NSAppendPrintF(&v21, ", TRskLV %##@", self->_transmissionRiskLevelValues);
  v18 = v21;
  v19 = v21;

  return v18;
}

- (double)daysSinceLastExposureLevelValueWithDays:(int64_t)days
{
  v4 = 16;
  v5 = 17;
  v6 = 18;
  v7 = 19;
  v8 = 20;
  v9 = 21;
  v10 = 22;
  if (days <= 1)
  {
    v10 = 23;
  }

  if (days <= 3)
  {
    v9 = v10;
  }

  if (days <= 5)
  {
    v8 = v9;
  }

  if (days <= 7)
  {
    v7 = v8;
  }

  if (days <= 9)
  {
    v6 = v7;
  }

  if (days <= 11)
  {
    v5 = v6;
  }

  if (days <= 13)
  {
    v4 = v5;
  }

  LOBYTE(v3) = *(&self->super.isa + v4);
  return self->_daysSinceLastExposureWeight * v3;
}

- (double)durationLevelValueWithDuration:(double)duration
{
  v3 = duration / 60.0;
  if (v3 <= 0.0)
  {
    v4 = 24;
  }

  else if (v3 <= 5.0)
  {
    v4 = 25;
  }

  else if (v3 <= 10.0)
  {
    v4 = 26;
  }

  else if (v3 <= 15.0)
  {
    v4 = 27;
  }

  else if (v3 <= 20.0)
  {
    v4 = 28;
  }

  else if (v3 <= 25.0)
  {
    v4 = 29;
  }

  else
  {
    v4 = 30;
    if (v3 > 30.0)
    {
      v4 = 31;
    }
  }

  LOBYTE(v3) = *(&self->super.isa + v4);
  return self->_durationWeight * *&v3;
}

- (double)infectiousnessWeightWithDaysSinceOnsetOfSymptoms:(int64_t)symptoms skip:(BOOL *)skip
{
  v6 = [(ENExposureConfiguration *)self infectiousnessWithDaysSinceOnsetOfSymptoms:symptoms];
  if (v6 == 2)
  {
    return self->_infectiousnessHighWeight;
  }

  if (v6 == 1)
  {
    return self->_infectiousnessStandardWeight;
  }

  *skip = 1;
  return 0.0;
}

- (unsigned)mappedDiagnosisReportType:(unsigned int)type
{
  if (type - 5 <= 0xFFFFFFFB)
  {
    return self->_reportTypeNoneMap;
  }

  return type;
}

- (double)reportTypeWeightWithReportType:(unsigned int)type skip:(BOOL *)skip
{
  v6 = [(ENExposureConfiguration *)self mappedDiagnosisReportType:*&type];
  *skip = v6 == 0;
  if (v6 <= 1)
  {
    result = 0.0;
    if (!v6)
    {
      return result;
    }

    if (v6 == 1)
    {
      return self->_reportTypeConfirmedTestWeight;
    }

    return 100.0;
  }

  if (v6 == 2)
  {
    return self->_reportTypeConfirmedClinicalDiagnosisWeight;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      return self->_reportTypeConfirmedTestWeight;
    }

    return 100.0;
  }

  return self->_reportTypeSelfReportedWeight;
}

- (double)transmissionLevelValueWithTransmissionRiskLevel:(unsigned __int8)level
{
  if (level >= 7u)
  {
    levelCopy = 7;
  }

  else
  {
    levelCopy = level;
  }

  LOBYTE(v3) = self->_transmissionRiskLevelValuesMap[levelCopy];
  return self->_transmissionRiskWeight * v3;
}

- (double)weightedDurationWithExposureInfo:(id)info
{
  attenuationDurations = [info attenuationDurations];
  v5 = [attenuationDurations count];
  if (v5)
  {
    v6 = v5;
    v7 = [attenuationDurations objectAtIndexedSubscript:0];
    [v7 doubleValue];
    v9 = v8 * (self->_immediateDurationWeight / 100.0) + 0.0;

    if (v6 != 1)
    {
      v10 = [attenuationDurations objectAtIndexedSubscript:1];
      [v10 doubleValue];
      v9 = v9 + v11 * (self->_nearDurationWeight / 100.0);

      if (v6 >= 3)
      {
        v12 = [attenuationDurations objectAtIndexedSubscript:2];
        [v12 doubleValue];
        v9 = v9 + v13 * (self->_mediumDurationWeight / 100.0);

        if (v6 != 3)
        {
          v14 = [attenuationDurations objectAtIndexedSubscript:3];
          [v14 doubleValue];
          v9 = v9 + v15 * (self->_otherDurationWeight / 100.0);
        }
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end