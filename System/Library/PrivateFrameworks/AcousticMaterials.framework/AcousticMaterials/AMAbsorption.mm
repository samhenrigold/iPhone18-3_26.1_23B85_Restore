@interface AMAbsorption
- (AMAbsorption)initWithMaterialName:(id)name;
- (AMAbsorption)initWithValues:(id)values error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validatedWithoutError:(id *)error;
@end

@implementation AMAbsorption

- (AMAbsorption)initWithValues:(id)values error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v41.receiver = self;
  v41.super_class = AMAbsorption;
  v7 = [(AMAbsorption *)&v41 init];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [valuesCopy allKeys];
  v10 = [v8 setWithArray:allKeys];
  v11 = MEMORY[0x277CBEB98];
  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"absorptionUserData", @"absorptionReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v13 = [v11 setWithArray:v12];
  v14 = [v10 isSubsetOfSet:v13];

  if ((v14 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v38 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"At least one mandatory key was not found in input dictionary.";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    *error = [v38 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:5 userInfo:v39];

LABEL_6:
    error = 0;
    goto LABEL_7;
  }

  v15 = [valuesCopy objectForKeyedSubscript:@"materialName"];
  materialName = v7->_materialName;
  v7->_materialName = v15;

  v17 = [valuesCopy objectForKeyedSubscript:@"materialDescription"];
  materialDescription = v7->_materialDescription;
  v7->_materialDescription = v17;

  v19 = [valuesCopy objectForKeyedSubscript:@"frequencyBands"];
  v20 = decimalValuesFromCSV(v19);
  frequencyBands = v7->_frequencyBands;
  v7->_frequencyBands = v20;

  v22 = [valuesCopy objectForKeyedSubscript:@"absorptionUserData"];
  v23 = decimalValuesFromCSV(v22);
  v24 = clampArrayValues(v23, &unk_2850169E0, &unk_2850169F8);
  absorptionUserData = v7->_absorptionUserData;
  v7->_absorptionUserData = v24;

  v26 = [valuesCopy objectForKeyedSubscript:@"absorptionReferenceData"];
  v27 = decimalValuesFromCSV(v26);
  v28 = clampArrayValues(v27, &unk_2850169E0, &unk_2850169F8);
  absorptionReferenceData = v7->_absorptionReferenceData;
  v7->_absorptionReferenceData = v28;

  v30 = [valuesCopy objectForKeyedSubscript:@"uncertaintyReferenceData"];
  v31 = decimalValuesFromCSV(v30);
  v32 = clampArrayValues(v31, &unk_2850169E0, &unk_2850169F8);
  uncertaintyReferenceData = v7->_uncertaintyReferenceData;
  v7->_uncertaintyReferenceData = v32;

  v34 = [valuesCopy objectForKeyedSubscript:@"numDataPointsReferenceData"];
  v35 = integerValuesFromCSV(v34);
  numDataPointsReferenceData = v7->_numDataPointsReferenceData;
  v7->_numDataPointsReferenceData = v35;

  v37 = [valuesCopy objectForKeyedSubscript:@"totalNumDataSetsReferenceData"];
  v7->_totalNumDataSetsReferenceData = [v37 intValue];

  if (![(AMAbsorption *)v7 validatedWithoutError:error])
  {
    goto LABEL_6;
  }

  error = v7;
LABEL_7:

  return error;
}

- (AMAbsorption)initWithMaterialName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = AMAbsorption;
  v5 = [(AMAbsorption *)&v15 init];
  materialName = v5->_materialName;
  v5->_materialName = nameCopy;
  v7 = nameCopy;

  materialDescription = v5->_materialDescription;
  v5->_materialDescription = 0;

  frequencyBands = v5->_frequencyBands;
  v5->_frequencyBands = 0;

  absorptionUserData = v5->_absorptionUserData;
  v5->_absorptionUserData = 0;

  absorptionReferenceData = v5->_absorptionReferenceData;
  v5->_absorptionReferenceData = 0;

  uncertaintyReferenceData = v5->_uncertaintyReferenceData;
  v5->_uncertaintyReferenceData = 0;

  numDataPointsReferenceData = v5->_numDataPointsReferenceData;
  v5->_numDataPointsReferenceData = 0;

  v5->_totalNumDataSetsReferenceData = 0;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    materialName = self->_materialName;
    materialName = [(AMAbsorption *)v6 materialName];
    LODWORD(materialName) = [(NSString *)materialName isEqualToString:materialName];

    if (materialName && (materialDescription = self->_materialDescription, [(AMAbsorption *)v6 materialDescription], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(materialDescription) = [(NSString *)materialDescription isEqualToString:v10], v10, materialDescription) && (frequencyBands = self->_frequencyBands, [(AMAbsorption *)v6 frequencyBands], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(frequencyBands) = [(NSArray *)frequencyBands isEqualToArray:v12], v12, frequencyBands) && (absorptionUserData = self->_absorptionUserData, [(AMAbsorption *)v6 absorptionUserData], v14 = objc_claimAutoreleasedReturnValue(), LODWORD(absorptionUserData) = [(NSArray *)absorptionUserData isEqualToArray:v14], v14, absorptionUserData) && (absorptionReferenceData = self->_absorptionReferenceData, [(AMAbsorption *)v6 absorptionReferenceData], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(absorptionReferenceData) = [(NSArray *)absorptionReferenceData isEqualToArray:v16], v16, absorptionReferenceData) && (uncertaintyReferenceData = self->_uncertaintyReferenceData, [(AMAbsorption *)v6 uncertaintyReferenceData], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(uncertaintyReferenceData) = [(NSArray *)uncertaintyReferenceData isEqualToArray:v18], v18, uncertaintyReferenceData) && (numDataPointsReferenceData = self->_numDataPointsReferenceData, [(AMAbsorption *)v6 numDataPointsReferenceData], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(numDataPointsReferenceData) = [(NSArray *)numDataPointsReferenceData isEqualToArray:v20], v20, numDataPointsReferenceData))
    {
      totalNumDataSetsReferenceData = self->_totalNumDataSetsReferenceData;
      v22 = totalNumDataSetsReferenceData == [(AMAbsorption *)v6 totalNumDataSetsReferenceData];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)validatedWithoutError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_frequencyBands count];
  if ([(NSArray *)self->_absorptionUserData count]== v5 && [(NSArray *)self->_absorptionReferenceData count]== v5 && [(NSArray *)self->_uncertaintyReferenceData count]== v5 && [(NSArray *)self->_numDataPointsReferenceData count]== v5)
  {
    if (([(NSString *)self->_materialName isEqual:&stru_285015AD0]& 1) != 0 || [(NSString *)self->_materialDescription isEqual:&stru_285015AD0])
    {
      if (error)
      {
        v6 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"Name and/or description is empty.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v8 = v6;
        v9 = 2;
LABEL_11:
        *error = [v8 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:v9 userInfo:{v7, v25}];
      }
    }

    else
    {
      if (self->_totalNumDataSetsReferenceData < 0)
      {
        if (!error)
        {
          return 0;
        }

        v23 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"The value of totalNumDataSetsReferenceData is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v8 = v23;
        v9 = 4;
        goto LABEL_11;
      }

      if (!v5)
      {
        return 1;
      }

      v12 = 0;
      v13 = 1;
      v14 = &unk_2850169E0;
      while (1)
      {
        v15 = [(NSArray *)self->_absorptionUserData objectAtIndexedSubscript:v12, v25];
        if (!valueIsBetween(v15, v14, &unk_2850169F8))
        {
          break;
        }

        v16 = [(NSArray *)self->_absorptionReferenceData objectAtIndexedSubscript:v12];
        if (!valueIsBetween(v16, v14, &unk_2850169F8))
        {
          goto LABEL_27;
        }

        v17 = [(NSArray *)self->_uncertaintyReferenceData objectAtIndexedSubscript:v12];
        if (!valueIsBetween(v17, v14, &unk_2850169F8))
        {

LABEL_27:
          break;
        }

        v18 = v13;
        v19 = [(NSArray *)self->_numDataPointsReferenceData objectAtIndexedSubscript:v12];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalNumDataSetsReferenceData];
        v25 = v15;
        v21 = v14;
        IsBetween = valueIsBetween(v19, v14, v20);

        if (!IsBetween)
        {
          goto LABEL_29;
        }

        v12 = v18;
        v13 = v18 + 1;
        result = 1;
        v14 = v21;
        if (v5 <= v18)
        {
          return result;
        }
      }

LABEL_29:
      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"At least one value in one of the data sets lies outside the permitted value ranges.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v8 = v24;
        v9 = 5;
        goto LABEL_11;
      }
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Data arrays have different lengths.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v8 = v10;
    v9 = 1;
    goto LABEL_11;
  }

  return 0;
}

@end