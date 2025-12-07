@interface HDVisionSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)_quantityWithNumber:(void *)number unit:;
- (id)_valueForOptionalDoubleProperty:(uint64_t)property row:;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation HDVisionSampleEntityEncoder

- (id)orderedProperties
{
  v8[26] = *MEMORY[0x277D85DE8];
  v8[0] = @"prescription_type";
  v8[1] = @"verifiable_data";
  v8[2] = @"left_sphere";
  v8[3] = @"right_sphere";
  v8[4] = @"left_cylinder";
  v8[5] = @"right_cylinder";
  v8[6] = @"left_axis";
  v8[7] = @"right_axis";
  v8[8] = @"left_add_power";
  v8[9] = @"right_add_power";
  v8[10] = @"left_vertex_distance";
  v8[11] = @"right_vertex_distance";
  v8[12] = @"left_prism_amount";
  v8[13] = @"right_prism_amount";
  v8[14] = @"left_prism_angle";
  v8[15] = @"right_prism_angle";
  v8[16] = @"left_far_pupillary_distance";
  v8[17] = @"right_far_pupillary_distance";
  v8[18] = @"left_near_pupillary_distance";
  v8[19] = @"right_near_pupillary_distance";
  v8[20] = @"glasses_description";
  v8[21] = @"left_base_curve";
  v8[22] = @"right_base_curve";
  v8[23] = @"left_contact_diameter";
  v8[24] = @"right_contact_diameter";
  v8[25] = @"brand";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:26];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v10)
  {
    v11 = objc_alloc_init(HDCodableVisionSample);
    [(HDCodableVisionSample *)v11 setSample:v10];
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v21 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v37 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v36 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v35 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v34 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v33 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v32 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v31 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v30 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v29 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v28 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v27 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v26 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v25 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v24 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v23 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v22 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    if (HDSQLiteColumnWithNameIsNull())
    {
      v14 = 0;
    }

    else
    {
      v14 = HDSQLiteColumnWithNameAsString();
    }

    v15 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v16 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v17 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    v18 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    if (HDSQLiteColumnWithNameIsNull())
    {
      v19 = 0;
    }

    else
    {
      v19 = HDSQLiteColumnWithNameAsString();
    }

    [(HDCodableVisionSample *)v11 setPrescriptionType:v12];
    if (v13)
    {
      [v13 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftSphere:?];
    }

    if (v21)
    {
      [v21 doubleValue];
      [(HDCodableVisionSample *)v11 setRightSphere:?];
    }

    if (v37)
    {
      [v37 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftCylinder:?];
    }

    if (v36)
    {
      [v36 doubleValue];
      [(HDCodableVisionSample *)v11 setRightCylinder:?];
    }

    if (v35)
    {
      [v35 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftAxis:?];
    }

    if (v34)
    {
      [v34 doubleValue];
      [(HDCodableVisionSample *)v11 setRightAxis:?];
    }

    if (v33)
    {
      [v33 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftAddPower:?];
    }

    if (v32)
    {
      [v32 doubleValue];
      [(HDCodableVisionSample *)v11 setRightAddPower:?];
    }

    if (v31)
    {
      [v31 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftVertexDistance:?];
    }

    if (v30)
    {
      [v30 doubleValue];
      [(HDCodableVisionSample *)v11 setRightVertexDistance:?];
    }

    if (v29)
    {
      [v29 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftPrismAmount:?];
    }

    if (v28)
    {
      [v28 doubleValue];
      [(HDCodableVisionSample *)v11 setRightPrismAmount:?];
    }

    if (v27)
    {
      [v27 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftPrismAngle:?];
    }

    if (v26)
    {
      [v26 doubleValue];
      [(HDCodableVisionSample *)v11 setRightPrismAngle:?];
    }

    if (v25)
    {
      [v25 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftFarPupillaryDistance:?];
    }

    if (v24)
    {
      [v24 doubleValue];
      [(HDCodableVisionSample *)v11 setRightFarPupillaryDistance:?];
    }

    if (v23)
    {
      [v23 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftNearPupillaryDistance:?];
    }

    if (v22)
    {
      [v22 doubleValue];
      [(HDCodableVisionSample *)v11 setRightNearPupillaryDistance:?];
    }

    if (v14)
    {
      [(HDCodableVisionSample *)v11 setGlassesDescription:v14];
    }

    if (v15)
    {
      [v15 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftBaseCurve:?];
    }

    if (v16)
    {
      [v16 doubleValue];
      [(HDCodableVisionSample *)v11 setRightBaseCurve:?];
    }

    if (v17)
    {
      [v17 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftContactDiameter:?];
    }

    if (v18)
    {
      [v18 doubleValue];
      [(HDCodableVisionSample *)v11 setRightContactDiameter:?];
    }

    if (v19)
    {
      [(HDCodableVisionSample *)v11 setBrand:v19];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_valueForOptionalDoubleProperty:(uint64_t)property row:
{
  v4 = a2;
  if (self && (HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    v6 = MEMORY[0x277CCABB0];
    HDSQLiteColumnWithNameAsDouble();
    v5 = [v6 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
  diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
  v8 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v6 unit:diopterUnit];

  v9 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
  diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
  v11 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v9 unit:diopterUnit2];

  if (v8 | v11)
  {
    if (v5 == 2)
    {
      v12 = MEMORY[0x277CCD218];
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      v12 = MEMORY[0x277CCD488];
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Unexpectedly reached execution point. Creating generic vision prescription bare object.", v16, 2u);
    }
  }

  v12 = MEMORY[0x277CCDBC8];
LABEL_9:
  _init = [[v12 alloc] _init];

  return _init;
}

- (id)_quantityWithNumber:(void *)number unit:
{
  v3 = 0;
  if (self && a2)
  {
    v5 = MEMORY[0x277CCD7E8];
    numberCopy = number;
    [a2 doubleValue];
    v3 = [v5 quantityWithUnit:numberCopy doubleValue:?];
  }

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(d) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (d)
  {
    v12 = HDSQLiteColumnWithNameAsInt64();
    [objectCopy _setPrescriptionType:v12];
    v13 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
    v15 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v13 unit:diopterUnit];

    v16 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
    v18 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v16 unit:diopterUnit2];

    v19 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit3 = [MEMORY[0x277CCDAB0] diopterUnit];
    v112 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v19 unit:diopterUnit3];

    v21 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit4 = [MEMORY[0x277CCDAB0] diopterUnit];
    v111 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v21 unit:diopterUnit4];

    v23 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    radianAngleUnit = [MEMORY[0x277CCDAB0] radianAngleUnit];
    v110 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v23 unit:radianAngleUnit];

    v25 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    radianAngleUnit2 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    v109 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v25 unit:radianAngleUnit2];

    v27 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit5 = [MEMORY[0x277CCDAB0] diopterUnit];
    v108 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v27 unit:diopterUnit5];

    v29 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
    diopterUnit6 = [MEMORY[0x277CCDAB0] diopterUnit];
    v31 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v29 unit:diopterUnit6];

    if (!(v15 | v18))
    {
      v32 = 1;
LABEL_36:

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objectCopy;
        v61 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v62 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v103 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v63 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v99 = HDSQLiteColumnWithNameAsString();
        v101 = v62;
        v107 = v61;
        if (v15)
        {
          v94 = v15;
          v64 = objc_alloc(MEMORY[0x277CCD210]);
          [MEMORY[0x277CCDAB0] meterUnit];
          v65 = v105 = v33;
          v66 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v107 unit:v65];
          [MEMORY[0x277CCDAB0] meterUnit];
          v68 = v67 = v63;
          v69 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v103 unit:v68];
          v70 = [v64 initWithSphere:v94 cylinder:v112 axis:v110 addPower:v108 baseCurve:v66 diameter:v69];

          v63 = v67;
          v62 = v101;

          v33 = v105;
          [v105 _setLeftEyeSpecification:v70];

          v15 = v94;
        }

        if (v18)
        {
          v71 = objc_alloc(MEMORY[0x277CCD210]);
          [MEMORY[0x277CCDAB0] meterUnit];
          v72 = v106 = v63;
          v73 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v62 unit:v72];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v106 unit:meterUnit];
          v76 = v75 = v33;
          v77 = [v71 initWithSphere:v18 cylinder:v111 axis:v109 addPower:v31 baseCurve:v73 diameter:v76];

          v33 = v75;
          v62 = v101;

          v63 = v106;
          [v75 _setRightEyeSpecification:v77];
        }

        [v33 _setBrand:v99];

        goto LABEL_25;
      }

      v78 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Expected a contacts prescription"];
      if (v78)
      {
        if (error)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v12 != 1)
      {
        v32 = 1;
        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objectCopy;
        v107 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v34 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v35 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v98 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v36 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v96 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v89 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v100 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v88 = [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        [(HDVisionSampleEntityEncoder *)self _valueForOptionalDoubleProperty:row row:?];
        v95 = 0;
        v102 = v36;
        v104 = v33;
        v86 = v97 = v34;
        v87 = v35;
        if (v35 && v36)
        {
          v37 = objc_alloc(MEMORY[0x277CCDBD0]);
          prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v39 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v35 unit:prismDiopterUnit];
          radianAngleUnit3 = [MEMORY[0x277CCDAB0] radianAngleUnit];
          v41 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v102 unit:radianAngleUnit3];
          v95 = [v37 initWithAmount:v39 angle:v41 eye:1];

          v33 = v104;
          v36 = v102;

          v34 = v97;
        }

        v42 = 0;
        v43 = v100;
        if (v98 && v96)
        {
          v44 = objc_alloc(MEMORY[0x277CCDBD0]);
          prismDiopterUnit2 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v45 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v98 unit:prismDiopterUnit2];
          radianAngleUnit4 = [MEMORY[0x277CCDAB0] radianAngleUnit];
          v47 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v96 unit:radianAngleUnit4];
          v48 = v44;
          v43 = v100;
          v49 = [v48 initWithAmount:v45 angle:v47 eye:2];

          v33 = v104;
          v36 = v102;

          v42 = v49;
          v34 = v97;
        }

        v90 = v42;
        if (v15)
        {
          v84 = objc_alloc(MEMORY[0x277CCD480]);
          meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
          v82 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v107 unit:meterUnit2];
          meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
          v51 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v89 unit:meterUnit3];
          meterUnit4 = [MEMORY[0x277CCDAB0] meterUnit];
          v53 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v88 unit:meterUnit4];
          v54 = [v84 initWithSphere:v15 cylinder:v112 axis:v110 addPower:v108 vertexDistance:v82 prism:v95 farPupillaryDistance:v51 nearPupillaryDistance:v53];

          v43 = v100;
          v33 = v104;

          v36 = v102;
          [v104 _setLeftEyeSpecification:v54];

          v42 = v90;
          v34 = v97;
        }

        v55 = v86;
        if (v18)
        {
          v83 = objc_alloc(MEMORY[0x277CCD480]);
          meterUnit5 = [MEMORY[0x277CCDAB0] meterUnit];
          v81 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v34 unit:meterUnit5];
          [MEMORY[0x277CCDAB0] meterUnit];
          v56 = v93 = v15;
          v57 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v43 unit:v56];
          meterUnit6 = [MEMORY[0x277CCDAB0] meterUnit];
          v59 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v86 unit:meterUnit6];
          v60 = [v83 initWithSphere:v18 cylinder:v111 axis:v109 addPower:v31 vertexDistance:v81 prism:v90 farPupillaryDistance:v57 nearPupillaryDistance:v59];

          v55 = v86;
          v33 = v104;

          v36 = v102;
          v15 = v93;

          v34 = v97;
          [v104 _setRightEyeSpecification:v60];

          v42 = v90;
          v43 = v100;
        }

LABEL_25:
        v32 = 1;
        v78 = v107;
LABEL_35:

        goto LABEL_36;
      }

      v78 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Expected a glasses prescription"];
      if (v78)
      {
        if (error)
        {
LABEL_29:
          v79 = v78;
          v32 = 0;
          *error = v78;
LABEL_33:
          v33 = v78;
          goto LABEL_35;
        }

LABEL_32:
        _HKLogDroppedError();
        v32 = 0;
        goto LABEL_33;
      }
    }

    v33 = 0;
    v32 = 0;
    goto LABEL_35;
  }

  v32 = 0;
LABEL_37:

  return v32;
}

@end