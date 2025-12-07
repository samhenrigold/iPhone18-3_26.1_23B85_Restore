@interface HMDCharacteristicMetadata
+ (HMDCharacteristicMetadata)characteristicMetadataWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicMetadata)init;
- (HMDCharacteristicMetadata)initWithCoder:(id)coder;
- (HMDCharacteristicMetadata)initWithMinimumValue:(id)value maximumValue:(id)maximumValue stepValue:(id)stepValue maxLength:(id)length validValues:(id)values format:(id)format units:(id)units manufacturerDescription:(id)self0;
- (NSString)description;
- (id)_descriptionDetails;
- (id)dictionaryRepresentation;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCharacteristicMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minimumValue = [(HMDCharacteristicMetadata *)self minimumValue];
  [coderCopy encodeObject:minimumValue forKey:@"metadataMinimumValue"];

  maximumValue = [(HMDCharacteristicMetadata *)self maximumValue];
  [coderCopy encodeObject:maximumValue forKey:@"metadataMaximumValue"];

  stepValue = [(HMDCharacteristicMetadata *)self stepValue];
  [coderCopy encodeObject:stepValue forKey:@"metadataStepValue"];

  maxLength = [(HMDCharacteristicMetadata *)self maxLength];
  [coderCopy encodeObject:maxLength forKey:@"metadataMaxLength"];

  format = [(HMDCharacteristicMetadata *)self format];
  [coderCopy encodeObject:format forKey:@"metadataFormat"];

  units = [(HMDCharacteristicMetadata *)self units];
  [coderCopy encodeObject:units forKey:@"metadataUnits"];

  manufacturerDescription = [(HMDCharacteristicMetadata *)self manufacturerDescription];
  [coderCopy encodeObject:manufacturerDescription forKey:@"metadataUserDescription"];

  validValues = [(HMDCharacteristicMetadata *)self validValues];
  [coderCopy encodeObject:validValues forKey:@"metadataValidValues"];
}

- (HMDCharacteristicMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMinimumValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaximumValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataStepValue"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaxLength"];
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metadataValidValues"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataFormat"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataUnits"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataUserDescription"];

  v13 = [(HMDCharacteristicMetadata *)self initWithMinimumValue:v5 maximumValue:v6 stepValue:v7 maxLength:v8 validValues:v9 format:v10 units:v11 manufacturerDescription:v12];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && ([(HMDCharacteristicMetadata *)v6 minimumValue], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v9) && ([(HMDCharacteristicMetadata *)v7 maximumValue], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v11) && ([(HMDCharacteristicMetadata *)v7 stepValue], v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v13) && ([(HMDCharacteristicMetadata *)v7 maxLength], v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v15) && ([(HMDCharacteristicMetadata *)v7 format], v16 = objc_claimAutoreleasedReturnValue(), v17 = HMFEqualObjects(), v16, v17) && ([(HMDCharacteristicMetadata *)v7 units], v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v19) && ([(HMDCharacteristicMetadata *)v7 manufacturerDescription], v20 = objc_claimAutoreleasedReturnValue(), v21 = HMFEqualObjects(), v20, v21))
    {
      validValues = [(HMDCharacteristicMetadata *)v7 validValues];
      v23 = HMFEqualObjects();
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  minimumValue = [(HMDCharacteristicMetadata *)self minimumValue];
  v4 = [minimumValue hash];

  maximumValue = [(HMDCharacteristicMetadata *)self maximumValue];
  v6 = [maximumValue hash] ^ v4;

  stepValue = [(HMDCharacteristicMetadata *)self stepValue];
  v8 = [stepValue hash];

  maxLength = [(HMDCharacteristicMetadata *)self maxLength];
  v10 = v6 ^ v8 ^ [maxLength hash];

  format = [(HMDCharacteristicMetadata *)self format];
  v12 = [format hash];

  units = [(HMDCharacteristicMetadata *)self units];
  v14 = v12 ^ [units hash];

  manufacturerDescription = [(HMDCharacteristicMetadata *)self manufacturerDescription];
  v16 = v10 ^ v14 ^ [manufacturerDescription hash];

  validValues = [(HMDCharacteristicMetadata *)self validValues];
  v18 = [validValues hash];

  return v16 ^ v18;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  [v3 setObject:self->_minimumValue forKeyedSubscript:@"metadataMinimumValue"];
  [v3 setObject:self->_maximumValue forKeyedSubscript:@"metadataMaximumValue"];
  [v3 setObject:self->_stepValue forKeyedSubscript:@"metadataStepValue"];
  [v3 setObject:self->_maxLength forKeyedSubscript:@"metadataMaxLength"];
  [v3 setObject:self->_validValues forKeyedSubscript:@"metadataValidValues"];
  [v3 setObject:self->_manufacturerDescription forKeyedSubscript:@"metadataUserDescription"];
  [v3 setObject:self->_format forKeyedSubscript:@"metadataFormat"];
  [v3 setObject:self->_units forKeyedSubscript:@"metadataUnits"];

  return v3;
}

- (id)_descriptionDetails
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  format = [(HMDCharacteristicMetadata *)self format];

  if (format)
  {
    v5 = MEMORY[0x277CCACA8];
    format2 = [(HMDCharacteristicMetadata *)self format];
    v7 = [v5 stringWithFormat:@"Format: %@", format2];
    [v3 addObject:v7];
  }

  units = [(HMDCharacteristicMetadata *)self units];

  if (units)
  {
    v9 = MEMORY[0x277CCACA8];
    units2 = [(HMDCharacteristicMetadata *)self units];
    v11 = [v9 stringWithFormat:@"Units: %@", units2];
    [v3 addObject:v11];
  }

  minimumValue = [(HMDCharacteristicMetadata *)self minimumValue];

  if (minimumValue)
  {
    v13 = MEMORY[0x277CCACA8];
    minimumValue2 = [(HMDCharacteristicMetadata *)self minimumValue];
    v15 = [v13 stringWithFormat:@"MinValue: %@", minimumValue2];
    [v3 addObject:v15];
  }

  maximumValue = [(HMDCharacteristicMetadata *)self maximumValue];

  if (maximumValue)
  {
    v17 = MEMORY[0x277CCACA8];
    maximumValue2 = [(HMDCharacteristicMetadata *)self maximumValue];
    v19 = [v17 stringWithFormat:@"MaxValue: %@", maximumValue2];
    [v3 addObject:v19];
  }

  stepValue = [(HMDCharacteristicMetadata *)self stepValue];

  if (stepValue)
  {
    v21 = MEMORY[0x277CCACA8];
    stepValue2 = [(HMDCharacteristicMetadata *)self stepValue];
    v23 = [v21 stringWithFormat:@"StepValue: %@", stepValue2];
    [v3 addObject:v23];
  }

  maxLength = [(HMDCharacteristicMetadata *)self maxLength];

  if (maxLength)
  {
    v25 = MEMORY[0x277CCACA8];
    maxLength2 = [(HMDCharacteristicMetadata *)self maxLength];
    v27 = [v25 stringWithFormat:@"Max length: %@", maxLength2];
    [v3 addObject:v27];
  }

  manufacturerDescription = [(HMDCharacteristicMetadata *)self manufacturerDescription];

  if (manufacturerDescription)
  {
    v29 = MEMORY[0x277CCACA8];
    manufacturerDescription2 = [(HMDCharacteristicMetadata *)self manufacturerDescription];
    v31 = [v29 stringWithFormat:@"Manufacturer Description: %@", manufacturerDescription2];
    [v3 addObject:v31];
  }

  validValues = [(HMDCharacteristicMetadata *)self validValues];
  v33 = [validValues count];

  if (v33)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Valid Values: "];
    [v3 addObject:v34];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    validValues2 = [(HMDCharacteristicMetadata *)self validValues];
    v36 = [validValues2 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(validValues2);
          }

          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, ", *(*(&v43 + 1) + 8 * i)];
          [v3 addObject:v40];
        }

        v37 = [validValues2 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v37);
    }
  }

  v41 = [v3 componentsJoinedByString:{@", "}];

  return v41;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v3 = MEMORY[0x277CBEAC0];
  _descriptionDetails = [(HMDCharacteristicMetadata *)self _descriptionDetails];
  v5 = [v3 dictionaryWithObject:_descriptionDetails forKey:*MEMORY[0x277D0F170]];

  return v5;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"[%@"];
  _descriptionDetails = [(HMDCharacteristicMetadata *)self _descriptionDetails];
  [v3 appendString:_descriptionDetails];

  [v3 appendString:@" ]"];

  return v3;
}

- (HMDCharacteristicMetadata)initWithMinimumValue:(id)value maximumValue:(id)maximumValue stepValue:(id)stepValue maxLength:(id)length validValues:(id)values format:(id)format units:(id)units manufacturerDescription:(id)self0
{
  valueCopy = value;
  maximumValueCopy = maximumValue;
  stepValueCopy = stepValue;
  lengthCopy = length;
  valuesCopy = values;
  formatCopy = format;
  unitsCopy = units;
  descriptionCopy = description;
  v34.receiver = self;
  v34.super_class = HMDCharacteristicMetadata;
  v21 = [(HMDCharacteristicMetadata *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_minimumValue, value);
    objc_storeStrong(&v22->_maximumValue, maximumValue);
    objc_storeStrong(&v22->_stepValue, stepValue);
    objc_storeStrong(&v22->_maxLength, length);
    objc_storeStrong(&v22->_validValues, values);
    v23 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:{formatCopy, lengthCopy, stepValueCopy, maximumValueCopy, valueCopy}];
    format = v22->_format;
    v22->_format = v23;

    v25 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:unitsCopy];
    units = v22->_units;
    v22->_units = v25;

    v27 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:descriptionCopy];
    manufacturerDescription = v22->_manufacturerDescription;
    v22->_manufacturerDescription = v27;
  }

  return v22;
}

- (HMDCharacteristicMetadata)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (HMDCharacteristicMetadata)characteristicMetadataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_numberForKey:@"metadataMinimumValue"];
  v6 = [dictionaryCopy hmf_numberForKey:@"metadataMaximumValue"];
  v7 = [dictionaryCopy hmf_numberForKey:@"metadataStepValue"];
  v8 = [dictionaryCopy hmf_numberForKey:@"metadataMaxLength"];
  v9 = [dictionaryCopy hmf_arrayForKey:@"metadataValidValues"];
  v10 = [dictionaryCopy hmf_stringForKey:@"metadataUserDescription"];
  v11 = [dictionaryCopy hmf_stringForKey:@"metadataFormat"];
  v12 = [dictionaryCopy hmf_stringForKey:@"metadataUnits"];

  if (v10 || v11 || v12 || ([v5 doubleValue], v14 = v13, objc_msgSend(v6, "doubleValue"), v14 < v15))
  {
    v16 = [[self alloc] initWithMinimumValue:v5 maximumValue:v6 stepValue:v7 maxLength:v8 validValues:v9 format:v11 units:v12 manufacturerDescription:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end