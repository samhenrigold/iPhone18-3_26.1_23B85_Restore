@interface SGSignificantEmailAddressModel
+ (id)newTransformerInstanceForLanguage:(id)language;
@end

@implementation SGSignificantEmailAddressModel

+ (id)newTransformerInstanceForLanguage:(id)language
{
  v41[16] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = +[SGTransformerInstance defaultWindowAndNgrams];
  v40 = [SGTransformerInstance defaultSessionDescriptorForModelId:@"SignificantEmailAddress" featureVersion:@"1.4" language:languageCopy windowAndNgrams:?];
  v32 = MEMORY[0x277D02570];
  v39 = [SGEntityMatchingTransformer withTargetMapping:@"SG_TARGET_EMAIL" phoneMapping:@"SG_FEATURE_PHONENUMBER" emailMapping:@"SG_FEATURE_EMAIL" addressMapping:@"SG_FEATURE_ADDRESS" andDateMapping:@"SG_FEATURE_DATE"];
  v41[0] = v39;
  v38 = [SGEntityMappingTransformer withEmailMapping:@"SG_FEATURE_EMAIL" linkMapping:@"SG_FEATURE_LINK"];
  v41[1] = v38;
  v37 = [SGTokenizerMappingTransformer forLocale:languageCopy withPersonalNameMapping:@"SG_FEATURE_FULLNAME"];
  v41[2] = v37;
  v36 = [SGNameMappingTransformer withFullNameMapping:@"SG_FEATURE_FULLNAME" firstNameMapping:@"SG_FEATURE_FIRSTNAME" lastNameMapping:@"SG_FEATURE_LASTNAME" andPossessive:@"SG_POSSESSIVE"];
  v41[3] = v36;
  v35 = [SGSymbolicMappingTransformer withNumericMapping:@"SG_FEATURE_NUMBER" andSymbolicMapping:@"SG_FEATURE_SYMBOL"];
  v41[4] = v35;
  v34 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_RECENCY" andLanguage:languageCopy];
  v33 = [SGStringMappingTransformer withMappings:v34];
  v41[5] = v33;
  v31 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_ENTITYTYPE" andLanguage:languageCopy];
  v30 = [SGStringMappingTransformer withMappings:v31];
  v41[6] = v30;
  v29 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_ADDRESSTYPE" andLanguage:languageCopy];
  v28 = [SGStringMappingTransformer withMappings:v29];
  v41[7] = v28;
  v27 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_OTHER" andLanguage:languageCopy];
  v26 = [SGStringMappingTransformer withMappings:v27];
  v41[8] = v26;
  v25 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_EMAILTYPE" andLanguage:languageCopy];
  v24 = [SGStringMappingTransformer withMappings:v25];
  v41[9] = v24;
  v22 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_CALLTYPE" andLanguage:languageCopy];
  v21 = [SGStringMappingTransformer withMappings:v22];
  v41[10] = v21;
  v20 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_PHONETYPE" andLanguage:languageCopy];
  v19 = [SGStringMappingTransformer withMappings:v20];
  v41[11] = v19;
  v5 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_BELONGINGTO" andLanguage:languageCopy];
  v6 = [SGStringMappingTransformer withMappings:v5];
  v41[12] = v6;
  v7 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_BELONGING" andLanguage:languageCopy];

  v8 = [SGStringMappingTransformer withMappings:v7];
  v41[13] = v8;
  v9 = v4;
  v23 = v4;
  first = [v4 first];
  v11 = +[SGTokenDistanceMappingTransformer withTarget:maxDistance:](SGTokenDistanceMappingTransformer, "withTarget:maxDistance:", @"SG_TARGET_EMAIL", [first unsignedIntegerValue]);
  v41[14] = v11;
  v12 = MEMORY[0x277D41F28];
  second = [v9 second];
  v14 = [v12 withBucketSize:10000 andNgrams:{objc_msgSend(second, "intValue")}];
  v41[15] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:16];
  v16 = [v32 withTransformers:v15];

  v17 = [[SGTransformerInstance alloc] initWithTransformer:v16 sessionDescriptor:v40 modelClass:objc_opt_class()];
  return v17;
}

@end