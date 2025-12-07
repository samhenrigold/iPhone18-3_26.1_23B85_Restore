@interface TRIClientTreatmentArtifact
+ (id)artifactWithEncodedTreatmentDefinition:(id)definition encodedTreatmentDefinitionSignature:(id)signature publicCertificate:(id)certificate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArtifact:(id)artifact;
- (BOOL)isValidWithTreatmentId:(id)id;
- (TRIClientTreatmentArtifact)initWithEncodedTreatmentDefinition:(id)definition encodedTreatmentDefinitionSignature:(id)signature publicCertificate:(id)certificate;
- (id)copyWithReplacementEncodedTreatmentDefinition:(id)definition;
- (id)copyWithReplacementEncodedTreatmentDefinitionSignature:(id)signature;
- (id)copyWithReplacementPublicCertificate:(id)certificate;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIClientTreatmentArtifact

- (BOOL)isValidWithTreatmentId:(id)id
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277D73AF0];
  encodedTreatmentDefinition = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinition];
  v25 = 0;
  v9 = [v7 parseFromData:encodedTreatmentDefinition error:&v25];
  v10 = v25;

  if (v9)
  {
    if ([v9 hasTreatmentId])
    {
      treatmentId = [v9 treatmentId];
      v12 = [idCopy isEqualToString:treatmentId];

      if (v12)
      {
        publicCertificate = [(TRIClientTreatmentArtifact *)self publicCertificate];
        if (!publicCertificate)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentArtifact+Util.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"pubCert"}];
        }

        v14 = [TRISignatureKey keyFromData:publicCertificate];
        if (v14)
        {
          encodedTreatmentDefinitionSignature = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinitionSignature];
          encodedTreatmentDefinition2 = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinition];
          v17 = [v14 validateBase64Signature:encodedTreatmentDefinitionSignature data:encodedTreatmentDefinition2];

          if (v17)
          {
            v18 = 1;
LABEL_18:

            goto LABEL_13;
          }

          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = idCopy;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Invalid treatment record signature with id %@", buf, 0xCu);
          }
        }

        v18 = 0;
        goto LABEL_18;
      }
    }

    publicCertificate = TRILogCategory_Server();
    if (os_log_type_enabled(publicCertificate, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "TRIClientTreatment has nil or mismatched treatmentId";
      v20 = publicCertificate;
      v21 = 2;
LABEL_20:
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }
  }

  else
  {
    publicCertificate = TRILogCategory_Server();
    if (os_log_type_enabled(publicCertificate, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v10;
      v19 = "Unable to parse TRIClientTreatment from encoded definition: %@";
      v20 = publicCertificate;
      v21 = 12;
      goto LABEL_20;
    }
  }

  v18 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v6);
  return v18;
}

- (TRIClientTreatmentArtifact)initWithEncodedTreatmentDefinition:(id)definition encodedTreatmentDefinitionSignature:(id)signature publicCertificate:(id)certificate
{
  definitionCopy = definition;
  signatureCopy = signature;
  certificateCopy = certificate;
  if (definitionCopy)
  {
    if (signatureCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"encodedTreatmentDefinitionSignature != nil"}];

    if (certificateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"encodedTreatmentDefinition != nil"}];

  if (!signatureCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (certificateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"publicCertificate != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIClientTreatmentArtifact;
  v13 = [(TRIClientTreatmentArtifact *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_encodedTreatmentDefinition, definition);
    objc_storeStrong(&v14->_encodedTreatmentDefinitionSignature, signature);
    objc_storeStrong(&v14->_publicCertificate, certificate);
  }

  return v14;
}

+ (id)artifactWithEncodedTreatmentDefinition:(id)definition encodedTreatmentDefinitionSignature:(id)signature publicCertificate:(id)certificate
{
  certificateCopy = certificate;
  signatureCopy = signature;
  definitionCopy = definition;
  v11 = [[self alloc] initWithEncodedTreatmentDefinition:definitionCopy encodedTreatmentDefinitionSignature:signatureCopy publicCertificate:certificateCopy];

  return v11;
}

- (id)copyWithReplacementEncodedTreatmentDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:definitionCopy encodedTreatmentDefinitionSignature:self->_encodedTreatmentDefinitionSignature publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementEncodedTreatmentDefinitionSignature:(id)signature
{
  signatureCopy = signature;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:self->_encodedTreatmentDefinition encodedTreatmentDefinitionSignature:signatureCopy publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementPublicCertificate:(id)certificate
{
  certificateCopy = certificate;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:self->_encodedTreatmentDefinition encodedTreatmentDefinitionSignature:self->_encodedTreatmentDefinitionSignature publicCertificate:certificateCopy];

  return v5;
}

- (BOOL)isEqualToArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = artifactCopy;
  if (!artifactCopy || (v6 = self->_encodedTreatmentDefinition == 0, [artifactCopy encodedTreatmentDefinition], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (encodedTreatmentDefinition = self->_encodedTreatmentDefinition) != 0 && (objc_msgSend(v5, "encodedTreatmentDefinition"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSData isEqual:](encodedTreatmentDefinition, "isEqual:", v10), v10, !v11) || (v12 = self->_encodedTreatmentDefinitionSignature == 0, objc_msgSend(v5, "encodedTreatmentDefinitionSignature"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (encodedTreatmentDefinitionSignature = self->_encodedTreatmentDefinitionSignature) != 0 && (objc_msgSend(v5, "encodedTreatmentDefinitionSignature"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](encodedTreatmentDefinitionSignature, "isEqual:", v16), v16, !v17) || (v18 = self->_publicCertificate == 0, objc_msgSend(v5, "publicCertificate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20))
  {
    v23 = 0;
  }

  else
  {
    publicCertificate = self->_publicCertificate;
    if (publicCertificate)
    {
      publicCertificate = [v5 publicCertificate];
      v23 = [(NSData *)publicCertificate isEqual:publicCertificate];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIClientTreatmentArtifact *)self isEqualToArtifact:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encodedTreatmentDefinition hash];
  v4 = [(NSString *)self->_encodedTreatmentDefinitionSignature hash]- v3 + 32 * v3;
  return [(NSData *)self->_publicCertificate hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIClientTreatmentArtifact | encodedTreatmentDefinition:%@ encodedTreatmentDefinitionSignature:%@ publicCertificate:%@>", self->_encodedTreatmentDefinition, self->_encodedTreatmentDefinitionSignature, self->_publicCertificate];

  return v2;
}

@end