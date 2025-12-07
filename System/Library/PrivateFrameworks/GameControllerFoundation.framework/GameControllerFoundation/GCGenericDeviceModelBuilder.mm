@interface GCGenericDeviceModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceModelBuilder)init;
- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceModelBuilder

- (GCGenericDeviceModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceModelBuilder;
  return [(GCGenericDeviceModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  productCategory = [modelCopy productCategory];
  [(GCGenericDeviceModelBuilder *)self setProductCategory:productCategory];

  productName = [modelCopy productName];
  [(GCGenericDeviceModelBuilder *)self setProductName:productName];

  isFormFitting = [modelCopy isFormFitting];
  [(GCGenericDeviceModelBuilder *)self setFormFitting:isFormFitting];

  driver = [modelCopy driver];
  [(GCGenericDeviceModelBuilder *)self setDriver:driver];

  physicalInput = [modelCopy physicalInput];

  [(GCGenericDeviceModelBuilder *)self setPhysicalInput:physicalInput];
}

- (void)reset
{
  [(GCGenericDeviceModelBuilder *)self setProductCategory:0];
  [(GCGenericDeviceModelBuilder *)self setProductName:0];
  [(GCGenericDeviceModelBuilder *)self setFormFitting:0];
  [(GCGenericDeviceModelBuilder *)self setDriver:0];

  [(GCGenericDeviceModelBuilder *)self setPhysicalInput:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  productCategory = [(GCGenericDeviceModelBuilder *)self productCategory];
  if (!productCategory)
  {
    [(GCGenericDeviceModelBuilder *)a2 build];
  }

  v6 = [productCategory copy];
  v7 = v4[1];
  v4[1] = v6;

  productName = [(GCGenericDeviceModelBuilder *)self productName];
  v9 = [productName copy];
  v10 = v4[2];
  v4[2] = v9;

  formFitting = [(GCGenericDeviceModelBuilder *)self formFitting];
  v12 = [formFitting copy];
  v13 = v4[3];
  v4[3] = v12;

  driver = [(GCGenericDeviceModelBuilder *)self driver];
  v15 = [driver copy];
  v16 = v4[4];
  v4[4] = v15;

  physicalInput = [(GCGenericDeviceModelBuilder *)self physicalInput];
  v18 = [physicalInput copy];
  v19 = v4[5];
  v4[5] = v18;

  return v4;
}

- (unint64_t)hash
{
  modelClass = [objc_opt_class() modelClass];

  return [modelClass hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDeviceModelBuilder;
    v5 = [(GCGenericDeviceModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v73[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = [(GCGenericDeviceModelBuilder *)self init];
  v59 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ProductCategory" ofClass:objc_opt_class() error:&v59];
  v9 = v59;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v23 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v73[0] = v24;
    v72[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v73[1] = localizedFailureReason;
    v26 = MEMORY[0x1E695DF20];
    v27 = v73;
    v28 = v72;
LABEL_26:
    v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:2];
    *error = [(NSError *)v23 gc_modelError:v29 userInfo:?];

    goto LABEL_27;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductCategory:v8];

  v58 = 0;
  v10 = [representationCopy gc_objectForKey:@"ProductName" ofClass:objc_opt_class() error:&v58];
  v11 = v58;
  v9 = v11;
  if (!v10 && v11)
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v23 = MEMORY[0x1E696ABC0];
    v70[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v71[0] = v24;
    v70[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v71[1] = localizedFailureReason;
    v26 = MEMORY[0x1E695DF20];
    v27 = v71;
    v28 = v70;
    goto LABEL_26;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductName:v10];

  v57 = 0;
  v12 = [representationCopy gc_objectForKey:@"FormFitting" ofClass:objc_opt_class() error:&v57];
  v13 = v57;
  v9 = v13;
  if (!v12 && v13)
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v68[0] = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v69[0] = v24;
      v68[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v69[1] = localizedFailureReason;
      v26 = MEMORY[0x1E695DF20];
      v27 = v69;
      v28 = v68;
      goto LABEL_26;
    }

LABEL_27:

LABEL_56:
    v21 = 0;
    goto LABEL_19;
  }

  [(GCGenericDeviceModelBuilder *)v7 setFormFitting:v12];

  v56 = 0;
  v14 = [representationCopy gc_objectForKey:@"Driver" ofClass:objc_opt_class() error:&v56];
  v15 = v56;
  v16 = v15;
  if (!v14 && v15)
  {
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v67[0] = v31;
      v66[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v16 localizedFailureReason];
      v67[1] = localizedFailureReason2;
      v33 = MEMORY[0x1E695DF20];
      v34 = v67;
      v35 = v66;
LABEL_32:
      v36 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:2];
      *error = [(NSError *)v30 gc_modelError:v36 userInfo:?];

      v18 = v16;
LABEL_33:

LABEL_54:
      goto LABEL_55;
    }

LABEL_34:
    v18 = v16;
    goto LABEL_55;
  }

  if (v14)
  {
    v55 = 0;
    v17 = [GCGenericDeviceDriverModel modelWithDictionaryRepresentation:v14 error:&v55];
    v18 = v55;

    if (!v17)
    {
      if (error)
      {
        v51 = MEMORY[0x1E696ABC0];
        v64[0] = *MEMORY[0x1E696A578];
        localizedDescription = [v18 localizedDescription];
        v31 = localizedDescription;
        if (!localizedDescription)
        {
          localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
        }

        v52 = localizedDescription;
        v65[0] = localizedDescription;
        v64[1] = *MEMORY[0x1E696A588];
        localizedFailureReason3 = [v18 localizedFailureReason];
        v50 = localizedFailureReason3;
        if (!localizedFailureReason3)
        {
          localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Driver"];
        }

        v49 = localizedFailureReason3;
        v65[1] = localizedFailureReason3;
        v64[2] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath = [v18 gc_failingKeyPath];
        v40 = gc_failingKeyPath;
        if (!gc_failingKeyPath)
        {
          gc_failingKeyPath = MEMORY[0x1E695E0F0];
        }

        v41 = [gc_failingKeyPath arrayByAddingObject:@"Driver"];
        v65[2] = v41;
        v42 = MEMORY[0x1E695DF20];
        v43 = v65;
        v44 = v64;
LABEL_51:
        v48 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:3];
        *error = [(NSError *)v51 gc_modelError:v48 userInfo:?];

        if (!v50)
        {
        }

        localizedFailureReason2 = v52;
        if (v31)
        {
          goto LABEL_54;
        }

        goto LABEL_33;
      }

LABEL_55:

      goto LABEL_56;
    }

    [(GCGenericDeviceModelBuilder *)v7 setDriver:v17];
  }

  else
  {
    v18 = v15;
  }

  v54 = 0;
  v14 = [representationCopy gc_objectForKey:@"PhysicalInput" ofClass:objc_opt_class() error:&v54];
  v19 = v54;
  v16 = v19;
  if (!v14 && v19)
  {
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v62[0] = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v63[0] = v31;
      v62[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v16 localizedFailureReason];
      v63[1] = localizedFailureReason2;
      v33 = MEMORY[0x1E695DF20];
      v34 = v63;
      v35 = v62;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (!v14)
  {
    v18 = v19;
    goto LABEL_18;
  }

  v53 = 0;
  v20 = [GCGenericDevicePhysicalInputModel modelWithDictionaryRepresentation:v14 error:&v53];
  v18 = v53;

  if (!v20)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v18 localizedDescription];
      v31 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      }

      v52 = localizedDescription2;
      v61[0] = localizedDescription2;
      v60[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v18 localizedFailureReason];
      v50 = localizedFailureReason4;
      if (!localizedFailureReason4)
      {
        localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"PhysicalInput"];
      }

      v49 = localizedFailureReason4;
      v61[1] = localizedFailureReason4;
      v60[2] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v18 gc_failingKeyPath];
      v40 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v41 = [gc_failingKeyPath2 arrayByAddingObject:@"PhysicalInput"];
      v61[2] = v41;
      v42 = MEMORY[0x1E695DF20];
      v43 = v61;
      v44 = v60;
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  [(GCGenericDeviceModelBuilder *)v7 setPhysicalInput:v20];

LABEL_18:
  v21 = v7;
LABEL_19:

  return v21;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceModel.m" lineNumber:144 description:@"'productCategory' can not be nil"];
}

@end