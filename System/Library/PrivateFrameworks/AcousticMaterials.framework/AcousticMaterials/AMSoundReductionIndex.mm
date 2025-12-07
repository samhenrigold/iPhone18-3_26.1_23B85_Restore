@interface AMSoundReductionIndex
- (AMSoundReductionIndex)initWithMaterialName:(id)name;
- (AMSoundReductionIndex)initWithValues:(id)values error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validatedWithoutError:(id *)error;
@end

@implementation AMSoundReductionIndex

- (AMSoundReductionIndex)initWithValues:(id)values error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v47.receiver = self;
  v47.super_class = AMSoundReductionIndex;
  v7 = [(AMSoundReductionIndex *)&v47 init];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [valuesCopy allKeys];
  v10 = [v8 setWithArray:allKeys];
  v11 = MEMORY[0x277CBEB98];
  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"materialName", @"materialDescription", @"materialDepth", @"uncertaintyMaterialDepth", @"frequencyBands", @"soundReductionIndexUserData", @"soundReductionIndexReferenceData", @"uncertaintyReferenceData", @"averageSoundReductionIndex", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v13 = [v11 setWithArray:v12];
  v14 = [v10 isSubsetOfSet:v13];

  if ((v14 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v44 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"At least one mandatory key was not found in input dictionary.";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    *error = [v44 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:5 userInfo:v45];

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

  v19 = [valuesCopy objectForKeyedSubscript:@"materialDepth"];
  materialDepth = v7->_materialDepth;
  v7->_materialDepth = v19;

  v21 = [valuesCopy objectForKeyedSubscript:@"uncertaintyMaterialDepth"];
  uncertaintyMaterialDepth = v7->_uncertaintyMaterialDepth;
  v7->_uncertaintyMaterialDepth = v21;

  v23 = [valuesCopy objectForKeyedSubscript:@"frequencyBands"];
  v24 = decimalValuesFromCSV(v23);
  frequencyBands = v7->_frequencyBands;
  v7->_frequencyBands = v24;

  v26 = [valuesCopy objectForKeyedSubscript:@"soundReductionIndexUserData"];
  v27 = decimalValuesFromCSV(v26);
  v28 = clampArrayValues(v27, &unk_285016A10, &unk_285016A28);
  soundReductionIndexUserData = v7->_soundReductionIndexUserData;
  v7->_soundReductionIndexUserData = v28;

  v30 = [valuesCopy objectForKeyedSubscript:@"soundReductionIndexReferenceData"];
  v31 = decimalValuesFromCSV(v30);
  v32 = clampArrayValues(v31, &unk_285016A10, &unk_285016A28);
  soundReductionIndexReferenceData = v7->_soundReductionIndexReferenceData;
  v7->_soundReductionIndexReferenceData = v32;

  v34 = [valuesCopy objectForKeyedSubscript:@"uncertaintyReferenceData"];
  v35 = decimalValuesFromCSV(v34);
  v36 = clampArrayValues(v35, &unk_285016A10, &unk_285016A28);
  uncertaintyReferenceData = v7->_uncertaintyReferenceData;
  v7->_uncertaintyReferenceData = v36;

  v38 = [valuesCopy objectForKeyedSubscript:@"averageSoundReductionIndex"];
  averageSoundReductionIndex = v7->_averageSoundReductionIndex;
  v7->_averageSoundReductionIndex = v38;

  v40 = [valuesCopy objectForKeyedSubscript:@"numDataPointsReferenceData"];
  v41 = integerValuesFromCSV(v40);
  numDataPointsReferenceData = v7->_numDataPointsReferenceData;
  v7->_numDataPointsReferenceData = v41;

  v43 = [valuesCopy objectForKeyedSubscript:@"totalNumDataSetsReferenceData"];
  v7->_totalNumDataSetsReferenceData = [v43 intValue];

  if (![(AMSoundReductionIndex *)v7 validatedWithoutError:error])
  {
    goto LABEL_6;
  }

  error = v7;
LABEL_7:

  return error;
}

- (AMSoundReductionIndex)initWithMaterialName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = AMSoundReductionIndex;
  v5 = [(AMSoundReductionIndex *)&v18 init];
  materialName = v5->_materialName;
  v5->_materialName = nameCopy;
  v7 = nameCopy;

  materialDescription = v5->_materialDescription;
  v5->_materialDescription = 0;

  frequencyBands = v5->_frequencyBands;
  v5->_frequencyBands = 0;

  materialDepth = v5->_materialDepth;
  v5->_materialDepth = 0;

  uncertaintyMaterialDepth = v5->_uncertaintyMaterialDepth;
  v5->_uncertaintyMaterialDepth = 0;

  soundReductionIndexUserData = v5->_soundReductionIndexUserData;
  v5->_soundReductionIndexUserData = 0;

  soundReductionIndexReferenceData = v5->_soundReductionIndexReferenceData;
  v5->_soundReductionIndexReferenceData = 0;

  uncertaintyReferenceData = v5->_uncertaintyReferenceData;
  v5->_uncertaintyReferenceData = 0;

  averageSoundReductionIndex = v5->_averageSoundReductionIndex;
  v5->_averageSoundReductionIndex = 0;

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
    v28 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    materialName = self->_materialName;
    materialName = [(AMSoundReductionIndex *)v6 materialName];
    LODWORD(materialName) = [(NSString *)materialName isEqualToString:materialName];

    if (materialName && (materialDescription = self->_materialDescription, [(AMSoundReductionIndex *)v6 materialDescription], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(materialDescription) = [(NSString *)materialDescription isEqualToString:v10], v10, materialDescription) && (materialDepth = self->_materialDepth, [(AMSoundReductionIndex *)v6 materialDepth], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(materialDepth) = [(NSNumber *)materialDepth isEqualToNumber:v12], v12, materialDepth) && (uncertaintyMaterialDepth = self->_uncertaintyMaterialDepth, [(AMSoundReductionIndex *)v6 uncertaintyMaterialDepth], v14 = objc_claimAutoreleasedReturnValue(), LODWORD(uncertaintyMaterialDepth) = [(NSNumber *)uncertaintyMaterialDepth isEqualToNumber:v14], v14, uncertaintyMaterialDepth) && (frequencyBands = self->_frequencyBands, [(AMSoundReductionIndex *)v6 frequencyBands], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(frequencyBands) = [(NSArray *)frequencyBands isEqualToArray:v16], v16, frequencyBands) && (soundReductionIndexUserData = self->_soundReductionIndexUserData, [(AMSoundReductionIndex *)v6 soundReductionIndexUserData], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(soundReductionIndexUserData) = [(NSArray *)soundReductionIndexUserData isEqualToArray:v18], v18, soundReductionIndexUserData) && (soundReductionIndexReferenceData = self->_soundReductionIndexReferenceData, [(AMSoundReductionIndex *)v6 soundReductionIndexReferenceData], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(soundReductionIndexReferenceData) = [(NSArray *)soundReductionIndexReferenceData isEqualToArray:v20], v20, soundReductionIndexReferenceData) && (uncertaintyReferenceData = self->_uncertaintyReferenceData, [(AMSoundReductionIndex *)v6 uncertaintyReferenceData], v22 = objc_claimAutoreleasedReturnValue(), LODWORD(uncertaintyReferenceData) = [(NSArray *)uncertaintyReferenceData isEqualToArray:v22], v22, uncertaintyReferenceData) && (averageSoundReductionIndex = self->_averageSoundReductionIndex, [(AMSoundReductionIndex *)v6 averageSoundReductionIndex], v24 = objc_claimAutoreleasedReturnValue(), LODWORD(averageSoundReductionIndex) = [(NSNumber *)averageSoundReductionIndex isEqualToNumber:v24], v24, averageSoundReductionIndex) && (numDataPointsReferenceData = self->_numDataPointsReferenceData, [(AMSoundReductionIndex *)v6 numDataPointsReferenceData], v26 = objc_claimAutoreleasedReturnValue(), LODWORD(numDataPointsReferenceData) = [(NSArray *)numDataPointsReferenceData isEqualToArray:v26], v26, numDataPointsReferenceData))
    {
      totalNumDataSetsReferenceData = self->_totalNumDataSetsReferenceData;
      v28 = totalNumDataSetsReferenceData == [(AMSoundReductionIndex *)v6 totalNumDataSetsReferenceData];
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

- (BOOL)validatedWithoutError:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_frequencyBands count];
  if ([(NSArray *)self->_soundReductionIndexUserData count]== v5 && [(NSArray *)self->_soundReductionIndexReferenceData count]== v5 && [(NSArray *)self->_uncertaintyReferenceData count]== v5 && [(NSArray *)self->_numDataPointsReferenceData count]== v5)
  {
    if (([(NSString *)self->_materialName isEqual:&stru_285015AD0]& 1) != 0 || [(NSString *)self->_materialDescription isEqual:&stru_285015AD0])
    {
      if (error)
      {
        v6 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = @"Name and or description is empty or corrupted.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v8 = v6;
        v9 = 2;
LABEL_11:
        *error = [v8 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:v9 userInfo:{v7, v29}];
      }
    }

    else
    {
      [(NSNumber *)self->_materialDepth floatValue];
      if (v12 < 0.0 || ([(NSNumber *)self->_uncertaintyMaterialDepth floatValue], v13 < 0.0) || ([(NSNumber *)self->_averageSoundReductionIndex floatValue], v14 < 0.0))
      {
        if (!error)
        {
          return 0;
        }

        v15 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35 = @"The value of materialDepth, uncertainityMaterialDepth or averageSoundReductionIndex is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v8 = v15;
        v9 = 3;
        goto LABEL_11;
      }

      if (self->_totalNumDataSetsReferenceData < 0)
      {
        if (!error)
        {
          return 0;
        }

        v27 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA450];
        v33 = @"The value of totalNumDataSetsReferenceData is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v8 = v27;
        v9 = 4;
        goto LABEL_11;
      }

      if (!v5)
      {
        return 1;
      }

      v16 = 0;
      v17 = 1;
      v18 = &unk_285016A10;
      while (1)
      {
        v19 = [(NSArray *)self->_soundReductionIndexUserData objectAtIndexedSubscript:v16, v29];
        if (!valueIsBetween(v19, v18, &unk_285016A28))
        {
          break;
        }

        v20 = [(NSArray *)self->_soundReductionIndexReferenceData objectAtIndexedSubscript:v16];
        if (!valueIsBetween(v20, v18, &unk_285016A28))
        {
          goto LABEL_33;
        }

        v21 = [(NSArray *)self->_uncertaintyReferenceData objectAtIndexedSubscript:v16];
        if (!valueIsBetween(v21, v18, &unk_285016A28) || !valueIsBetween(self->_averageSoundReductionIndex, v18, &unk_285016A28))
        {

LABEL_33:
          break;
        }

        v22 = v17;
        v23 = [(NSArray *)self->_numDataPointsReferenceData objectAtIndexedSubscript:v16];
        v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalNumDataSetsReferenceData];
        v29 = v19;
        v25 = v18;
        IsBetween = valueIsBetween(v23, v18, v24);

        if (!IsBetween)
        {
          goto LABEL_35;
        }

        v16 = v22;
        v17 = v22 + 1;
        result = 1;
        v18 = v25;
        if (v5 <= v22)
        {
          return result;
        }
      }

LABEL_35:
      if (error)
      {
        v28 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"At least one value in one of the data sets lies outside the permitted value ranges.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v8 = v28;
        v9 = 5;
        goto LABEL_11;
      }
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Data arrays have different lengths.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v8 = v10;
    v9 = 1;
    goto LABEL_11;
  }

  return 0;
}

@end