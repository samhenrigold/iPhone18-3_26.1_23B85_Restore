@interface HDFHIRJSONObject
+ (id)_dataFromJSONObject:(id)object JSONOptions:(unint64_t)options;
+ (id)objectWithResourceData:(id)data error:(id *)error;
+ (id)resourceTypeOfJSONObject:(id)object error:(id *)error;
- (BOOL)_isDiagnosticTestReportR4Lab;
- (BOOL)hasCode:(id)code codeSystem:(id)system codeableConcept:(id)concept error:(id *)error;
- (BOOL)hasCode:(id)code codeSystem:(id)system codings:(id)codings error:(id *)error;
- (BOOL)isClinicalNoteRecord;
- (BOOL)isDiagnosticTestReport;
- (BOOL)isDocumentReference;
- (BOOL)isEqual:(id)equal;
- (HDFHIRJSONObject)initWithCoder:(id)coder;
- (HDFHIRJSONObject)initWithJSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version;
- (NSData)data;
- (NSData)uniquenessChecksum;
- (NSString)sourceString;
- (id)_dataWithJSONOptions:(unint64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRJSONObject

- (BOOL)isDiagnosticTestReport
{
  detectedResourceType = [(HDFHIRJSONObject *)self detectedResourceType];
  if (![detectedResourceType isEqual:*MEMORY[0x277CCBDE0]])
  {
    goto LABEL_7;
  }

  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
  fHIRRelease = [fHIRVersion FHIRRelease];
  v6 = fHIRRelease;
  if (fHIRRelease == *MEMORY[0x277CCBDD0])
  {
    _isDiagnosticTestReportR4Lab = [(HDFHIRJSONObject *)self _isDiagnosticTestReportR4Lab];

    if (_isDiagnosticTestReportR4Lab)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  fHIRVersion2 = [(HDFHIRJSONObject *)self FHIRVersion];
  fHIRRelease2 = [fHIRVersion2 FHIRRelease];
  v11 = *MEMORY[0x277CCBDC8];

  if (fHIRRelease2 != v11)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  jSONObject = [(HDFHIRJSONObject *)self JSONObject];
  v18 = 0;
  v14 = [jSONObject hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v18];
  v15 = v18;

  if (v14)
  {
    v17 = v15;
    v8 = [(HDFHIRJSONObject *)self hasCode:@"LAB" codeSystem:@"http://hl7.org/fhir/ValueSet/diagnostic-service-sections" codeableConcept:v14 error:&v17];
    v16 = v17;

    v15 = v16;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  return v8;
}

- (BOOL)isClinicalNoteRecord
{
  v30 = *MEMORY[0x277D85DE8];
  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
  fHIRRelease = [fHIRVersion FHIRRelease];
  v5 = *MEMORY[0x277CCBDD0];

  if (fHIRRelease == v5)
  {
    detectedResourceType = [(HDFHIRJSONObject *)self detectedResourceType];
    if ([detectedResourceType isEqual:*MEMORY[0x277CCBDE8]])
    {
      jSONObject = [(HDFHIRJSONObject *)self JSONObject];
      v28 = 0;
      v9 = [jSONObject hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v28];
      v10 = v28;

      if (!v9)
      {
        v6 = 0;
        goto LABEL_21;
      }

      v21 = detectedResourceType;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        while (2)
        {
          v15 = 0;
          v16 = v10;
          do
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v24 + 1) + 8 * v15);
            v23 = v16;
            v18 = [(HDFHIRJSONObject *)self hasCode:@"clinical-note" codeSystem:@"http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category" codeableConcept:v17 error:&v23];
            v10 = v23;

            if (v18)
            {

              v6 = 1;
              goto LABEL_18;
            }

            ++v15;
            v16 = v10;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_18:
      detectedResourceType = v21;
    }

    else
    {
      if (![detectedResourceType isEqual:*MEMORY[0x277CCBDE0]] || -[HDFHIRJSONObject _isDiagnosticTestReportR4Lab](self, "_isDiagnosticTestReportR4Lab"))
      {
        v6 = 0;
LABEL_22:

        return v6;
      }

      jSONObject2 = [(HDFHIRJSONObject *)self JSONObject];
      v22 = 0;
      v11 = [jSONObject2 hk_safeValueIfExistsForKeyPath:@"presentedForm" class:objc_opt_class() error:&v22];
      v10 = v22;

      if (v11)
      {
        v6 = [v11 count] != 0;
      }

      else
      {
        v6 = 0;
      }
    }

LABEL_21:
    goto LABEL_22;
  }

  return 0;
}

- (BOOL)_isDiagnosticTestReportR4Lab
{
  v24 = *MEMORY[0x277D85DE8];
  jSONObject = [(HDFHIRJSONObject *)self JSONObject];
  v22 = 0;
  v4 = [jSONObject hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v22];
  v5 = v22;

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v16 = v4;
      v9 = *v19;
      while (2)
      {
        v10 = 0;
        v11 = v5;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * v10);
          v17 = v11;
          v13 = [(HDFHIRJSONObject *)self hasCode:@"LAB" codeSystem:@"http://terminology.hl7.org/CodeSystem/v2-0074" codeableConcept:v12 error:&v17, v16];
          v5 = v17;

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v14 = 0;
LABEL_12:
      v4 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isDocumentReference
{
  detectedResourceType = [(HDFHIRJSONObject *)self detectedResourceType];
  v3 = [detectedResourceType isEqual:*MEMORY[0x277CCBDE8]];

  return v3;
}

- (BOOL)hasCode:(id)code codeSystem:(id)system codeableConcept:(id)concept error:(id *)error
{
  codeCopy = code;
  systemCopy = system;
  conceptCopy = concept;
  v13 = [conceptCopy hk_safeValueIfExistsForKeyPath:@"coding" class:objc_opt_class() error:error];

  if (v13)
  {
    v14 = [(HDFHIRJSONObject *)self hasCode:codeCopy codeSystem:systemCopy codings:v13 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasCode:(id)code codeSystem:(id)system codings:(id)codings error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  systemCopy = system;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = codings;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 hk_safeValueIfExistsForKeyPath:@"code" class:objc_opt_class() error:error];
        v16 = [v14 hk_safeValueIfExistsForKeyPath:@"system" class:objc_opt_class() error:error];
        if (![codeCopy caseInsensitiveCompare:v15] && !objc_msgSend(systemCopy, "caseInsensitiveCompare:", v16))
        {

          v17 = 1;
          goto LABEL_12;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (HDFHIRJSONObject)initWithJSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version
{
  objectCopy = object;
  lCopy = l;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = HDFHIRJSONObject;
  v11 = [(HDFHIRJSONObject *)&v19 init];
  if (v11)
  {
    v12 = [objectCopy copy];
    JSONObject = v11->_JSONObject;
    v11->_JSONObject = v12;

    v14 = [lCopy copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [versionCopy copy];
    FHIRVersion = v11->_FHIRVersion;
    v11->_FHIRVersion = v16;
  }

  return v11;
}

+ (id)_dataFromJSONObject:(id)object JSONOptions:(unint64_t)options
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:object options:options error:&v8];
  v5 = v8;
  if (!v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDFHIRJSONObject _dataFromJSONObject:v5 JSONOptions:v6];
    }
  }

  return v4;
}

- (id)_dataWithJSONOptions:(unint64_t)options
{
  v5 = objc_opt_class();
  JSONObject = self->_JSONObject;

  return [v5 _dataFromJSONObject:JSONObject JSONOptions:options];
}

- (NSData)data
{
  v2 = [(HDFHIRJSONObject *)self _dataWithJSONOptions:0];
  v3 = v2;
  if (v2)
  {
    data = v2;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v5 = data;

  return v5;
}

- (NSString)sourceString
{
  v2 = MEMORY[0x277CCAAA0];
  jSONObject = [(HDFHIRJSONObject *)self JSONObject];
  v4 = [v2 hk_stringForDisplayFromFHIRJSONObject:jSONObject];

  return v4;
}

- (NSData)uniquenessChecksum
{
  v2 = [(HDFHIRJSONObject *)self _dataWithJSONOptions:10];
  hk_MD5 = [v2 hk_MD5];

  return hk_MD5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  jSONObject = [(HDFHIRJSONObject *)self JSONObject];
  [coderCopy encodeObject:jSONObject forKey:@"JSONObject"];

  sourceURL = [(HDFHIRJSONObject *)self sourceURL];
  [coderCopy encodeObject:sourceURL forKey:@"SourceURL"];

  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
  [coderCopy encodeObject:fHIRVersion forKey:@"FHIRVersion"];
}

- (HDFHIRJSONObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  hk_JSONObjectSecureCodingClasses = [MEMORY[0x277CCAAA0] hk_JSONObjectSecureCodingClasses];
  v6 = [coderCopy decodeObjectOfClasses:hk_JSONObjectSecureCodingClasses forKey:@"JSONObject"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HDFHIRJSONObject *)self initWithJSONObject:v6 sourceURL:v7 FHIRVersion:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_JSONObject hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  return v4 ^ [(HKFHIRVersion *)self->_FHIRVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      JSONObject = self->_JSONObject;
      jSONObject = [(HDFHIRJSONObject *)v6 JSONObject];
      if (![(NSDictionary *)JSONObject isEqualToDictionary:jSONObject])
      {
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

      sourceURL = self->_sourceURL;
      sourceURL = [(HDFHIRJSONObject *)v6 sourceURL];
      if (sourceURL != sourceURL)
      {
        sourceURL2 = [(HDFHIRJSONObject *)v6 sourceURL];
        if (!sourceURL2)
        {
          v14 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v3 = sourceURL2;
        v12 = self->_sourceURL;
        sourceURL3 = [(HDFHIRJSONObject *)v6 sourceURL];
        if (![(NSURL *)v12 isEqual:sourceURL3])
        {
          v14 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v23 = sourceURL3;
      }

      FHIRVersion = self->_FHIRVersion;
      fHIRVersion = [(HDFHIRJSONObject *)v6 FHIRVersion];
      v17 = fHIRVersion;
      if (FHIRVersion == fHIRVersion)
      {

        v14 = 1;
      }

      else
      {
        fHIRVersion2 = [(HDFHIRJSONObject *)v6 FHIRVersion];
        if (fHIRVersion2)
        {
          v19 = fHIRVersion2;
          v20 = self->_FHIRVersion;
          fHIRVersion3 = [(HDFHIRJSONObject *)v6 FHIRVersion];
          v14 = [(HKFHIRVersion *)v20 isEqual:fHIRVersion3];
        }

        else
        {

          v14 = 0;
        }
      }

      sourceURL3 = v23;
      if (sourceURL == sourceURL)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

+ (id)objectWithResourceData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [dataCopy JSONDictionaryWithError:error];
  if (v7)
  {
    v8 = [self alloc];
    sourceURL = [dataCopy sourceURL];
    fHIRVersion = [dataCopy FHIRVersion];
    v11 = [v8 initWithJSONObject:v7 sourceURL:sourceURL FHIRVersion:fHIRVersion];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)resourceTypeOfJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  v6 = HKSafeObject();
  if (!v6)
  {
    goto LABEL_7;
  }

  if (([objectCopy hk_hasValueForKeyPath:@"resourceType"] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Missing resourceType string in JSON"];
LABEL_7:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [objectCopy hk_safeStringForKeyPath:@"resourceType" error:error];
  v8 = v7;
  if (!v7)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![v7 length])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Empty resourceType in JSON"];
    goto LABEL_9;
  }

  v9 = v8;
LABEL_10:

LABEL_11:

  return v9;
}

+ (void)_dataFromJSONObject:(uint64_t)a1 JSONOptions:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2519FE000, a2, OS_LOG_TYPE_ERROR, "Failed to create FHIR resource data from JSON: %@", &v2, 0xCu);
}

@end