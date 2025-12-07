@interface TSCEError
+ (BOOL)errorForRichTextStorage:(id)storage outValue:(id *)value;
+ (TSCEError)errorWithDictionary:(id)dictionary;
+ (id)argumentEqualsToZeroErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)argumentErrorForFunctionName:(id)name;
+ (id)arrayTooLargeError:(id)error;
+ (id)arrayValueNotNumberErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)attachmentError;
+ (id)attachmentErrorInTextCell:(BOOL)cell;
+ (id)autoNumberAttachmentError;
+ (id)autoNumberAttachmentErrorInTextCell:(BOOL)cell;
+ (id)cannotAcceptLambdaError:(id)error argIndex:(int)index;
+ (id)checkForTooLargeArrayNumColumns:(unsigned int)columns numRows:(unsigned int)rows functionName:(id)name;
+ (id)checkForTooLargeMatrixNumColumns:(unsigned int)columns numRows:(unsigned int)rows functionName:(id)name;
+ (id)comparisonTypeErrorForLeftType:(char)type rightType:(char)rightType;
+ (id)contentBlockedSpillError:(id)error spillRange:(TSUCellRect)range spillBlocker:(TSUCellRect)blocker;
+ (id)currencyNotAllowedErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)dateEarlierThanStartingDateErrorForFunctionName:(id)name;
+ (id)delimiterValueNotProvided:(id)provided;
+ (id)differentDimensionsErrorForFunctionName:(id)name;
+ (id)differentNumberOfDataPointsErrorForFunctionName:(id)name;
+ (id)differentNumberOfElementsErrorForFunctionName:(id)name;
+ (id)disallowedStockModeError:(id)error;
+ (id)durationNotAllowedError:(id)error argumentNumber:(int)number;
+ (id)emptyArgumentSpecificErrorForArgumentNumber:(int)number;
+ (id)errorForErrorType:(int64_t)type;
+ (id)errorForErrorType:(int64_t)type functionName:(id)name;
+ (id)errorForErrorType:(int64_t)type functionName:(id)name argIndex:(int)index;
+ (id)errorForInvalidReference:(TSCERangeRef *)reference orString:(id)string contextEntityUID:(const TSKUIDStruct *)d;
+ (id)errorForInvalidReference:(TSCERangeRef *)reference orString:(id)string contextEntityUID:(const TSKUIDStruct *)d invalidMergeReference:(BOOL)mergeReference disqualifiedFromEndCell:(BOOL)cell;
+ (id)evaluationRecursingTooDeepError:(id)error;
+ (id)inconsistantParameterFormatError:(int)error argIndex2:(int)index2 functionName:(id)name;
+ (id)indirectErrorForRangeReference:(TSCERangeRef *)reference hostTableUID:(const TSKUIDStruct *)d;
+ (id)invalidAggregateColumnErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)invalidArgumentEqualityRelationshipErrorForFunctionName:(id)name argIndex1:(int)index1 argIndex2:(int)index2;
+ (id)invalidArgumentPairingsErrorForFunctionName:(id)name hasInitialUnrelatedArgument:(BOOL)argument;
+ (id)invalidArgumentRelationshipErrorForFunctionName:(id)name argIndex1:(int)index1 argIndex2:(int)index2 argsAscending:(BOOL)ascending equalityPermitted:(BOOL)permitted;
+ (id)invalidArgumentsErrorForFunctionName:(id)name argumentIndex:(int)index;
+ (id)invalidBaseCharacterErrorForCharacter:(unsigned __int16)character base:(signed __int16)base;
+ (id)invalidDecimalNumberErrorForArgument:(int)argument argIndex2:(int)index2 argIndex3:(int)index3 functionName:(id)name;
+ (id)invalidDecimalNumberErrorForArgument:(int)argument argIndex2:(int)index2 functionName:(id)name;
+ (id)invalidDecimalNumberErrorForArgument:(int)argument functionName:(id)name;
+ (id)invalidFrequencyErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)invalidGroupingColumnErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)invalidIndexForChooseError:(int)error;
+ (id)invalidIntersectionError:(vector<TSCEReferenceValue *) hostTableUID:(std:(const TSKUIDStruct *)d :(id)a5 allocator<TSCEReferenceValue *>> *)a3 calcEngine:;
+ (id)invalidMergeReference:(TSCERangeRef *)reference contextEntityUID:(const TSKUIDStruct *)d;
+ (id)invalidProbabilityErrorForFunctionName:(id)name;
+ (id)invalidRangeUsageErrorForReference:(const TSCERangeRef *)reference;
+ (id)invalidRegexError:(id)error;
+ (id)invalidStockCodeError:(id)error;
+ (id)invalidTailErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)invalidTypeErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)invalidUnitStringError:(id)error;
+ (id)loadFromArchive:(const void *)archive;
+ (id)matchNotFoundErrorForValue:(id)value isRegex:(BOOL)regex afterMatch:(BOOL)match previousValueToMatch:(id)toMatch previousValueIsRegex:(BOOL)isRegex occurrence:(int)occurrence matchesFound:(int)found functionName:(id)self0;
+ (id)matchNotFoundErrorForValue:(id)value isRegex:(BOOL)regex functionName:(id)name;
+ (id)matrixNotSquareError:(id)error argIndex:(int)index;
+ (id)matrixTooLargeError:(id)error;
+ (id)mergeBlockedSpillError:(id)error spillRange:(TSUCellRect)range spillBlocker:(TSUCellRect)blocker;
+ (id)mismatchedCurrenciesErrorForFunctionName:(id)name;
+ (id)mismatchedUnitsErrorForFunctionName:(id)name;
+ (id)mismatchedUnitsErrorForFunctionName:(id)name argumentNumberString:(id)string;
+ (id)missingPivotTableErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)mixedTypeManipulationErrorForFunctionName:(id)name;
+ (id)multipleDurationsErrorForFunctionName:(id)name;
+ (id)negativeArrayValueErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)noConditionIsTrueErrorForFunctionName:(id)name;
+ (id)noSuitableArgumentsFoundErrorForFunctionName:(id)name requiredType:(char)type;
+ (id)noTradingInformationErrorWithNextAvailableDate:(id)date;
+ (id)nonEmptyStringRequiredErrorForFunctionName:(id)name;
+ (id)nonMetricUnitPrefixErrorForUnitString:(id)string;
+ (id)notAReferenceErrorForFunctionName:(id)name;
+ (id)notEnoughInputsErrorForFunctionName:(id)name argumentNumber:(int)number required:(int)required;
+ (id)numberDoesNotConvergeErrorForFunctionName:(id)name;
+ (id)numberDoesNotConvergeWithEstimateErrorForFunctionName:(id)name;
+ (id)numberErrorForFunctionName:(id)name;
+ (id)onlyPositiveOrNegativeErrorForFunctionName:(id)name;
+ (id)outOfArrayBoundsError:(id)error;
+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name lowerBound:(double)bound lowerBoundInclusive:(BOOL)inclusive;
+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name lowerBound:(double)bound lowerBoundInclusive:(BOOL)inclusive upperBound:(double)upperBound upperBoundInclusive:(BOOL)boundInclusive;
+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name upperBound:(double)bound upperBoundInclusive:(BOOL)inclusive;
+ (id)padWithValuesNotProvided:(id)provided;
+ (id)positionLargerThanArrayErrorForFunctionName:(id)name;
+ (id)rangeDoesNotSumToOneForFunctionName:(id)name argumentNumber:(int)number;
+ (id)rangeSizeMismatchErrorForFunctionName:(id)name;
+ (id)referenceToEmptyCellErrorForFunctionName:(id)name rangeReference:(TSCERangeRef *)reference;
+ (id)referenceToNonexistentTableError:(TSKUIDStruct)error;
+ (id)remoteDataUnavailableErrorWithAttribute:(id)attribute;
+ (id)repeatedIdentifierError:(id)error;
+ (id)requiresIdentifierError:(id)error argIndex:(int)index;
+ (id)requiresLambdaArgumentError:(id)error argIndex:(int)index;
+ (id)requiresOneDimArrayInputError:(id)error argumentNumber:(int)number;
+ (id)signsMustMatchErrorForFunctionName:(id)name;
+ (id)sizeMismatchInputError:(id)error;
+ (id)startNumberExceedsStringLengthErrorForFunctionName:(id)name;
+ (id)stringDoesNotRepresentDateErrorForFunctionName:(id)name string:(id)string;
+ (id)stringDoesNotRepresentNumberErrorForFunctionName:(id)name string:(id)string;
+ (id)sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName:(id)name;
+ (id)tableSizeBlockedSpillError:(id)error spillRange:(TSUCellRect)range;
+ (id)tooFewDataPointsErrorForFunctionName:(id)name;
+ (id)tooManyArguments:(id)arguments maximum:(unint64_t)maximum provided:(unint64_t)provided;
+ (id)typeErrorForValue:(id)value context:(id)context functionSpec:(id)spec argumentIndex:(int)index;
+ (id)unacceptableIdentifierError:(id)error;
+ (id)unboundVariableError:(id)error variableName:(id)name;
+ (id)unitsNotAllowedErrorForFunctionName:(id)name argumentNumber:(int)number;
+ (id)unknownFunctionError:(id)error;
+ (id)valueNotAvailableErrorForFunctionName:(id)name;
+ (id)wrongArityForLambdaError:(id)error providedArity:(int)arity expectedArity:(int)expectedArity;
+ (id)wrongNumberOfArgumentsErrorForFunctionName:(id)name provided:(unint64_t)provided;
+ (int)errorFlavorForErrorType:(int64_t)type;
+ (int64_t)errorTypeForErrorKey:(id)key;
+ (int64_t)possibleErrorTypeForErrorFlavor:(int)flavor;
- ($85CD2974BE96D4886BB301820D1C36C2)spillRangeSize;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInvalidMergeReference;
- (BOOL)isNativelyEqual:(id)equal;
- (NSString)errorTypeKey;
- (TSCEError)initWithErrorType:(int64_t)type;
- (TSCERangeRef)rangeRef;
- (TSKUIDStruct)cellRangeOwnerUID;
- (TSKUIDStruct)ownerUID;
- (TSUCellRect)cellRange;
- (TSUCellRect)spillBlocker;
- (TSUCellRect)spillRange;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateValue;
- (id)displayStringWithCalculationEngine:(id)engine forTable:(TSKUIDStruct)table andCellID:(TSUCellCoord)d;
- (id)displayStringWithLocale:(id)locale;
- (id)errorDictionary;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
- (id)stringValue;
- (unint64_t)hash;
- (void)raiseException;
- (void)saveToArchive:(void *)archive;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setCellRange:(TSUCellRect)range;
- (void)setCellRangeOwnerUID:(TSKUIDStruct)d;
- (void)setFunctionName:(id)name;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)setRangeRef:(TSCERangeRef *)ref;
- (void)setSpillBlocker:(TSUCellRect)blocker;
- (void)setSpillRange:(TSUCellRect)range;
- (void)setSpillRangeSize:(id)size;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation TSCEError

+ (int64_t)errorTypeForErrorKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_hasPrefix_(keyCopy, v4, @"err:", v5))
  {
    v9 = objc_msgSend_length(@"err:", v6, v7, v8);
    v12 = objc_msgSend_substringFromIndex_(keyCopy, v10, v9, v11);
    v16 = objc_msgSend_integerValue(v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TSCEError)initWithErrorType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = TSCEError;
  result = [(TSCEError *)&v5 init];
  if (result)
  {
    result->_errorType = type;
  }

  return result;
}

+ (id)errorForErrorType:(int64_t)type
{
  v4 = [TSCEError alloc];
  v7 = objc_msgSend_initWithErrorType_(v4, v5, type, v6);

  return v7;
}

+ (id)errorForErrorType:(int64_t)type functionName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_errorForErrorType_(TSCEError, v6, type, v7);
  v11 = v8;
  if (nameCopy)
  {
    objc_msgSend_setFunctionName_(v8, v9, nameCopy, v10);
  }

  return v11;
}

+ (id)errorForErrorType:(int64_t)type functionName:(id)name argIndex:(int)index
{
  v5 = *&index;
  v6 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, type, name);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8);
  objc_msgSend_setArgIndex_(v6, v10, v9, v11);

  return v6;
}

+ (int)errorFlavorForErrorType:(int64_t)type
{
  if (type > 12)
  {
    if (type != 123)
    {
      if (type == 13)
      {
        return 2;
      }

      return 1;
    }

    return 4;
  }

  else
  {
    if (type)
    {
      if (type == 7)
      {
        return 3;
      }

      return 1;
    }

    return 0;
  }
}

+ (int64_t)possibleErrorTypeForErrorFlavor:(int)flavor
{
  if (flavor > 4)
  {
    return 1;
  }

  else
  {
    return qword_2217F2FE0[flavor];
  }
}

+ (TSCEError)errorWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v42 = objc_msgSend_objectForKey_(dictionaryCopy, v3, @"TSCEErrorTypeKey", v4);
  if (!v42)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSCEError errorWithDictionary:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 201, 0, "Must have errorTypeKey set to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_errorTypeForErrorKey_(TSCEError, v5, v42, v6);
  v43 = objc_msgSend_errorForErrorType_(TSCEError, v17, v16, v18);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = dictionaryCopy;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v44, v48, 16);
  if (v23)
  {
    v24 = *v45;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v44 + 1) + 8 * i);
        if (objc_msgSend_isEqualToString_(v26, v21, @"TSCEErrorTypeKey", v22))
        {
          v27 = objc_msgSend_objectForKey_(v19, v21, v26, v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setString_forKey_(v43, v28, v27, v26);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setNumber_forKey_(v43, v29, v27, v26);
            }

            else
            {
              v31 = MEMORY[0x277D81150];
              v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "+[TSCEError errorWithDictionary:]", v30);
              v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v34);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 215, 0, "Should only have NSNumber and NSString objects in an errorDictionary");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
            }
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v44, v48, 16);
    }

    while (v23);
  }

  return v43;
}

+ (id)loadFromArchive:(const void *)archive
{
  v4 = *(archive + 12);
  v5 = [TSCEError alloc];
  v10 = objc_msgSend_initWithErrorType_(v5, v6, v4, v7);
  v11 = *(archive + 8);
  if (v11 >= 1)
  {
    v12 = 8;
    while (1)
    {
      v13 = *(*(archive + 5) + v12);
      v17 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(v13 + 24) & 0xFFFFFFFFFFFFFFFELL, v9);
      v18 = *(v13 + 16);
      if ((v18 & 2) != 0)
      {
        break;
      }

      if ((v18 & 4) != 0)
      {
        v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, v16, *(v13 + 40));
        objc_msgSend_setNumber_forKey_(v10, v20, v19, v17);
LABEL_7:
      }

      v12 += 8;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    v19 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v14, *(v13 + 32) & 0xFFFFFFFFFFFFFFFELL, v16);
    objc_msgSend_setString_forKey_(v10, v21, v19, v17);
    goto LABEL_7;
  }

LABEL_9:

  return v10;
}

- (void)saveToArchive:(void *)archive
{
  v50 = *MEMORY[0x277D85DE8];
  errorType = self->_errorType;
  *(archive + 4) |= 1u;
  *(archive + 12) = errorType;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_errorDictionary;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v43, v49, 16);
  if (v10)
  {
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(self->_errorDictionary, v8, v13, v9);
        if (v14)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v19 = *(archive + 5);
            if (!v19)
            {
              goto LABEL_15;
            }

            v20 = *(archive + 8);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(archive + 8) = v20 + 1;
              v22 = *&v19[2 * v20 + 2];
              goto LABEL_17;
            }

            if (v21 == *(archive + 9))
            {
LABEL_15:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
              v19 = *(archive + 5);
              v21 = *v19;
            }

            *v19 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive_ErrorDictionaryEntry>(*(archive + 3));
            v33 = *(archive + 8);
            v34 = *(archive + 5) + 8 * v33;
            *(archive + 8) = v33 + 1;
            *(v34 + 8) = v22;
LABEL_17:
            v35 = objc_msgSend_tsp_protobufString(v13, v15, v16, v17);
            *(v22 + 16) |= 1u;
            sub_22108CCD0(__p, v35);
            google::protobuf::internal::ArenaStringPtr::Set();
            if (v48 < 0)
            {
              operator delete(__p[0]);
            }

            v36 = v14;
            v40 = v36;
            if (isKindOfClass)
            {
              objc_msgSend_doubleValue(v36, v37, v38, v39);
              *(v22 + 16) |= 4u;
              *(v22 + 40) = v41;
            }

            else
            {
              v42 = objc_msgSend_tsp_protobufString(v36, v37, v38, v39);
              *(v22 + 16) |= 2u;
              sub_22108CCD0(__p, v42);
              google::protobuf::internal::ArenaStringPtr::Set();
              if (v48 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else
          {
            v23 = MEMORY[0x277D81150];
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEError saveToArchive:]", v17);
            v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v26);
            v28 = objc_opt_class();
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v27, 260, 0, "Type of %@ cannot be stored in error dictionary", v28);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
          }

          continue;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v43, v49, 16);
    }

    while (v10);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_errorType(self, v5, v6, v7);
  v11 = objc_msgSend_initWithErrorType_(v4, v9, v8, v10);
  v15 = objc_msgSend_mutableCopy(self->_errorDictionary, v12, v13, v14);
  v16 = v11[2];
  v11[2] = v15;

  return v11;
}

- (NSString)errorTypeKey
{
  v5 = objc_msgSend_errorType(self, a2, v2, v3);

  return objc_msgSend_errorKeyForErrorType_(TSCEError, v4, v5, v6);
}

- (id)numberForKey:(id)key
{
  v4 = objc_msgSend_objectForKey_(self->_errorDictionary, a2, key, v3);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEError numberForKey:]", v6);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v10);
      v12 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 295, 0, "Only expecting NSNumber here, got %@", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }
  }

  return v4;
}

- (BOOL)BOOLForKey:(id)key
{
  v4 = objc_msgSend_numberForKey_(self, a2, key, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stringForKey:(id)key
{
  v4 = objc_msgSend_objectForKey_(self->_errorDictionary, a2, key, v3);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEError stringForKey:]", v6);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v10);
      v12 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 313, 0, "Only expecting NSString here, got %@", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }
  }

  return v4;
}

- (void)setNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  if (numberCopy && keyCopy)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v10 = objc_opt_new();
      v11 = self->_errorDictionary;
      self->_errorDictionary = v10;

      errorDictionary = self->_errorDictionary;
    }

    objc_msgSend_setObject_forKey_(errorDictionary, v6, numberCopy, keyCopy);
  }

  else if (keyCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, keyCopy, v7);
  }
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy && keyCopy)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v10 = objc_opt_new();
      v11 = self->_errorDictionary;
      self->_errorDictionary = v10;

      errorDictionary = self->_errorDictionary;
    }

    objc_msgSend_setObject_forKey_(errorDictionary, v6, stringCopy, keyCopy);
  }

  else if (keyCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, keyCopy, v7);
  }
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  if (keyCopy && boolCopy)
  {
    errorDictionary = self->_errorDictionary;
    if (!errorDictionary)
    {
      v9 = objc_opt_new();
      v10 = self->_errorDictionary;
      self->_errorDictionary = v9;

      errorDictionary = self->_errorDictionary;
    }

    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, 1, v7);
    objc_msgSend_setObject_forKey_(errorDictionary, v12, v11, keyCopy);
  }

  else if (keyCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_errorDictionary, v6, keyCopy, v7);
  }
}

- (void)setFunctionName:(id)name
{
  v6 = objc_msgSend_copy(name, a2, name, v3);
  objc_msgSend_setString_forKey_(self, v5, v6, @"TSCEFunctionNameKey");
}

- (TSKUIDStruct)ownerUID
{
  v3 = objc_msgSend_stringForKey_(self, a2, @"kTSCEOwnerUIDKey", v2);
  if (v3)
  {
    v4 = TSKMakeUIDStructFromString();
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = v4;
  v8 = v6;
  result._upper = v8;
  result._lower = v7;
  return result;
}

- (void)setOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  if (d._lower | d._upper)
  {
    v4 = TSKUIDStruct::description(&dCopy);
    objc_msgSend_setString_forKey_(self, v5, v4, @"kTSCEOwnerUIDKey", dCopy._lower, dCopy._upper);
  }

  else
  {

    objc_msgSend_setString_forKey_(self, a2, 0, @"kTSCEOwnerUIDKey");
  }
}

- (TSKUIDStruct)cellRangeOwnerUID
{
  v3 = objc_msgSend_stringForKey_(self, a2, @"kTSCECellRangeOwnerUIDKey", v2);
  if (v3)
  {
    v4 = TSKMakeUIDStructFromString();
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = v4;
  v8 = v6;
  result._upper = v8;
  result._lower = v7;
  return result;
}

- (void)setCellRangeOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  if (d._lower | d._upper)
  {
    v4 = TSKUIDStruct::description(&dCopy);
    objc_msgSend_setString_forKey_(self, v5, v4, @"kTSCECellRangeOwnerUIDKey", dCopy._lower, dCopy._upper);
  }

  else
  {

    objc_msgSend_setString_forKey_(self, a2, 0, @"kTSCECellRangeOwnerUIDKey");
  }
}

- (TSUCellRect)cellRange
{
  v3 = 0x7FFF7FFFFFFFLL;
  v4 = objc_msgSend_stringForKey_(self, a2, @"kTSCECellRectKey", v2);
  v7 = v4;
  if (!v4)
  {
    v23 = 0;
    goto LABEL_43;
  }

  v8 = objc_msgSend_componentsSeparatedByString_(v4, v5, @":", v6);
  if (objc_msgSend_count(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(v8, v12, 0, v13);
    v15 = TSUCellCoordFromString();

    v21 = v15;
    if (objc_msgSend_count(v8, v16, v17, v18) >= 2)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(v8, v19, 1, v20);
      v21 = TSUCellCoordFromString();
    }

    v23 = 0;
    if ((v15 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v21 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      goto LABEL_41;
    }

    v24 = v15 & 0xFFFF00000000;
    v25 = v15;
    v26 = (v15 & 0xFFFF00000000) != 0x7FFF00000000 || v15 == 0x7FFFFFFFLL;
    v27 = !v26;
    v28 = (v21 & 0xFFFF00000000) != 0x7FFF00000000 || v21 == 0x7FFFFFFFLL;
    v29 = !v28;
    if (v27 == v29)
    {
      v30 = v15 != 0x7FFFFFFFLL || v24 == 0x7FFF00000000;
      v31 = !v30;
      v32 = v21 != 0x7FFFFFFFLL || (v21 & 0xFFFF00000000) == 0x7FFF00000000;
      v33 = v32;
      if (v31 != v33)
      {
        v34 = HIDWORD(v15);
        v35 = HIDWORD(v21);
        if (v31)
        {
          goto LABEL_34;
        }

        v40 = v15 == 0x7FFFFFFF && v24 != 0x7FFF00000000;
        if (v15 <= v21)
        {
          v40 = 1;
        }

        if (v15 < v21 || !v40)
        {
          goto LABEL_56;
        }

        if ((v27 & 1) == 0)
        {
LABEL_34:
          if (v24 == 0x7FFF00000000)
          {
            v36 = 0x7FFF;
          }

          else
          {
            v36 = WORD2(v15);
          }

          if (WORD2(v15) > WORD2(v21) || v36 < WORD2(v21))
          {
LABEL_56:
            v41 = 0;
            if (WORD2(v15) >= WORD2(v21))
            {
              v42 = HIDWORD(v21);
            }

            else
            {
              v42 = HIDWORD(v15);
            }

            if (WORD2(v15) == 0x7FFF)
            {
              LOWORD(v34) = 0x7FFF;
            }

            if (WORD2(v21) <= v34)
            {
              LOWORD(v35) = v34;
            }

            if (v15 >= v21)
            {
              v25 = v21;
            }

            else
            {
              v25 = v15;
            }

            LOWORD(v34) = v42;
            if (v15 <= v21)
            {
              v43 = v21;
            }

            else
            {
              v43 = v15;
            }

            v23 = ((v35 - v42 + 1) | ((v43 - v25) << 32)) + 0x100000000;
            goto LABEL_70;
          }
        }

        v41 = v15 & 0xFFFF000000000000;
        v23 = 0x100000001;
LABEL_70:
        v3 = v41 | v25 | (v34 << 32);
        goto LABEL_41;
      }
    }
  }

  v23 = 0;
LABEL_41:

LABEL_43:
  v37 = v3;
  v38 = v23;
  result.size = v38;
  result.origin = v37;
  return result;
}

- (void)setCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValidOrSpanning(&rangeCopy))
  {
    v5 = TSUCellRect::asString(&rangeCopy);
    objc_msgSend_setString_forKey_(self, v6, v5, @"kTSCECellRectKey");
  }

  else
  {
    v5 = 0;
    objc_msgSend_setString_forKey_(self, v4, 0, @"kTSCECellRectKey");
  }
}

- (TSCERangeRef)rangeRef
{
  v13.origin = objc_msgSend_cellRange(self, a3, v3, v4);
  v13.size = v7;
  v12._lower = objc_msgSend_cellRangeOwnerUID(self, v7, v8, v9);
  v12._upper = v10;
  TSCERangeRef::TSCERangeRef(retstr, &v13, &v12);
  return result;
}

- (void)setRangeRef:(TSCERangeRef *)ref
{
  if (TSCERangeRef::isValid(ref))
  {
    TSCERangeCoordinate::asCellRect(&ref->range);
    objc_msgSend_setCellRange_(self, v6, v5, v6);
  }

  lower = ref->_tableUID._lower;
  upper = ref->_tableUID._upper;

  MEMORY[0x2821F9670](self, sel_setCellRangeOwnerUID_, lower, upper);
}

- ($85CD2974BE96D4886BB301820D1C36C2)spillRangeSize
{
  v3 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillRangeSizeKey", v2);
  v4 = v3;
  if (v3)
  {
    v5 = TSUColumnRowSizeFromNxMDescription(v3);
  }

  else
  {
    v5 = 0x100000001;
  }

  return v5;
}

- (void)setSpillRangeSize:(id)size
{
  v5 = TSUColumnRowSizeDescriptionNxM();
  objc_msgSend_setString_forKey_(self, v4, v5, @"TSCESpillRangeSizeKey");
}

- (TSUCellRect)spillRange
{
  v3 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillRangeKey", v2);
  v5 = v3;
  if (v3)
  {
    v13._topLeft = TSCERangeCoordinate::rangeCoordFromString(v3, 0x4000, 0x100000, v4);
    v13._bottomRight = v6;
    TSCERangeCoordinate::asCellRect(&v13);
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0x7FFF7FFFFFFFLL;
  }

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (void)setSpillRange:(TSUCellRect)range
{
  rangeCopy = range;
  v4 = TSUCellRect::asString(&rangeCopy);
  objc_msgSend_setString_forKey_(self, v5, v4, @"TSCESpillRangeKey");
}

- (TSUCellRect)spillBlocker
{
  v3 = objc_msgSend_stringForKey_(self, a2, @"TSCESpillBlockerKey", v2);
  v5 = v3;
  if (v3)
  {
    v13._topLeft = TSCERangeCoordinate::rangeCoordFromString(v3, 0x3E8, 1000000, v4);
    v13._bottomRight = v6;
    TSCERangeCoordinate::asCellRect(&v13);
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0x7FFF7FFFFFFFLL;
  }

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (void)setSpillBlocker:(TSUCellRect)blocker
{
  blockerCopy = blocker;
  v4 = TSUCellRect::asString(&blockerCopy);
  objc_msgSend_setString_forKey_(self, v5, v4, @"TSCESpillBlockerKey");
}

- (double)doubleValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError doubleValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 677, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0.0;
}

- (id)dateValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError dateValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 683, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)stringValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError stringValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 688, 0, "What the heck?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (void)raiseException
{
  selfCopy = self;
  exception = __cxa_allocate_exception(8uLL);
  *exception = selfCopy;
  __cxa_throw(exception, &unk_2834A36D0, sub_221595E98);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    errorDictionary = self->_errorDictionary;
    v10 = objc_msgSend_errorDictionary(v5, v7, v8, v9);

    if (errorDictionary == v10)
    {
      isEqual = 1;
    }

    else
    {
      v14 = self->_errorDictionary;
      v15 = objc_msgSend_errorDictionary(v5, v11, v12, v13);
      isEqual = objc_msgSend_isEqual_(v14, v16, v15, v17);
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  errorType = self->_errorType;
  if (objc_msgSend_count(self->_errorDictionary, a2, v2, v3))
  {
    errorType |= objc_msgSend_hash(self->_errorDictionary, v6, v7, v8) << 16;
  }

  return errorType;
}

- (id)displayStringWithLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEError displayStringWithLocale:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 727, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_errorType(self, v4, v5, v6);
  v21 = 0;
  switch(v17)
  {
    case 1:
      v22 = sub_22159A004(v17, localeCopy);
      goto LABEL_209;
    case 2:
      v338 = objc_msgSend_functionName(self, v18, v19, v20);
      v342 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v339, v340, v341);
      v23 = objc_msgSend_stringByTrimmingCharactersInSet_(v338, v343, v342, v344);

      v345 = MEMORY[0x277CCACA8];
      v26 = sub_22159A0DC(v346, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v345, v347, v26, v348, v23);
      goto LABEL_312;
    case 3:
      v923 = objc_msgSend_functionName(self, v18, v19, v20);
      v927 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v924, v925, v926);
      v23 = objc_msgSend_stringByTrimmingCharactersInSet_(v923, v928, v927, v929);

      v930 = MEMORY[0x277CCACA8];
      v26 = sub_22159A094(v931, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v930, v932, v26, v933, v23);
      goto LABEL_312;
    case 4:
      v22 = sub_22159A5EC(v17, localeCopy);
      goto LABEL_209;
    case 5:
      v22 = sub_22159A124(v17, localeCopy);
      goto LABEL_209;
    case 6:
      v22 = sub_22159A16C(v17, localeCopy);
      goto LABEL_209;
    case 7:
      v22 = sub_22159A244(v17, localeCopy);
      goto LABEL_209;
    case 9:
      v42 = objc_msgSend_extraInfoNumber(self, v18, v19, v20);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v140 = MEMORY[0x277D81150];
        v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "[TSCEError displayStringWithLocale:]", v139);
        v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v143);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v145, v141, v144, 796, 0, "invalid number of arguments error exception");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147, v148);
      }

      v149 = objc_msgSend_functionName(self, v137, v138, v139);
      v152 = objc_msgSend_localizedNameForFunction_(localeCopy, v150, v149, v151);
      v158 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v153, v149, v154);
      if (!v158)
      {
        v159 = MEMORY[0x277D81150];
        v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "[TSCEError displayStringWithLocale:]", v157);
        v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v162);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v164, v160, v163, 800, 0, "spec not found for function %@", v149);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v165, v166, v167);
      }

      v168 = objc_msgSend_minArguments(v158, v155, v156, v157);
      if (v168 == 1)
      {
        v172 = sub_22159A3AC(1, localeCopy);
      }

      else
      {
        v1002 = sub_22159A3F4(v168, localeCopy);
        v1006 = objc_msgSend_minArguments(v158, v1003, v1004, v1005);
        v172 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1007, v1002, v1008, v1006);
      }

      if (objc_msgSend_maxArguments(v158, v169, v170, v171) == -1)
      {
        v1029 = objc_msgSend_minArguments(v158, v1009, v1010, v1011);
        if (v1029 == 1)
        {
          v1017 = sub_22159A43C(1, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1030, v1017, v1031, v152, v172);
        }

        else
        {
          v1017 = sub_22159A484(v1029, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1102, v1017, v1103, v152, v172, v42);
        }
      }

      else
      {
        v1012 = objc_msgSend_maxArguments(v158, v1009, v1010, v1011);
        v1016 = objc_msgSend_minArguments(v158, v1013, v1014, v1015);
        if (v1012 == v1016)
        {
          v1017 = sub_22159A514(v1016, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1018, v1017, v1019, v152, v172, v42);
        }

        else
        {
          v1017 = sub_22159A4CC(v1016, localeCopy);
          v1074 = objc_msgSend_minArguments(v158, v1071, v1072, v1073);
          v1078 = objc_msgSend_maxArguments(v158, v1075, v1076, v1077);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1079, v1017, v1080, v152, v1074, v1078, v42);
        }
      }
      v1020 = ;
      v21 = v1020;

      goto LABEL_304;
    case 10:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v836 = objc_msgSend_maxArgsAllowed(self, v833, v834, v835);
      v840 = objc_msgSend_unsignedLongValue(v836, v837, v838, v839);

      v149 = objc_msgSend_providedArgs(self, v841, v842, v843);
      v152 = objc_msgSend_localizedNameForFunction_(localeCopy, v844, v42, v845);
      v158 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v846, v42, v847);
      v172 = sub_22159A4CC(v158, localeCopy);
      v851 = objc_msgSend_minArguments(v158, v848, v849, v850);
      v21 = objc_msgSend_localizedStringWithFormat_(localeCopy, v852, v172, v853, v152, v851, v840, v149);
LABEL_304:

      goto LABEL_305;
    case 11:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      if (!v23)
      {
        v421 = sub_22159A5A4(0, localeCopy);
        goto LABEL_266;
      }

      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v394, v23, v395);
      v396 = MEMORY[0x277CCACA8];
      v28 = sub_22159A55C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v396, v397, v28, v398, v26);
LABEL_205:
      v21 = v31;
      goto LABEL_206;
    case 14:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v176 = objc_msgSend_argIndex(self, v173, v174, v175);
      v180 = objc_msgSend_intValue(v176, v177, v178, v179);

      v149 = objc_msgSend_localizedNameForFunction_(localeCopy, v181, v42, v182);
      v183 = MEMORY[0x277CCACA8];
      v152 = sub_22159A634(v149, localeCopy);
      v186 = objc_msgSend_localizedStringWithFormat_(v183, v184, v152, v185, v180, v149);
      goto LABEL_52;
    case 15:
      v22 = sub_22159A67C(v17, localeCopy);
      goto LABEL_209;
    case 16:
      v22 = sub_22159A6C4(v17, localeCopy);
      goto LABEL_209;
    case 17:
      v22 = sub_22159A70C(v17, localeCopy);
      goto LABEL_209;
    case 18:
      v23 = objc_msgSend_referenceList(self, v18, v19, v20);
      v327 = MEMORY[0x277CCACA8];
      v26 = sub_22159A754(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v327, v328, v26, v329, v23);
      goto LABEL_312;
    case 19:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v37, v23, v38);
      v39 = MEMORY[0x277CCACA8];
      v28 = sub_22159A79C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v39, v40, v28, v41, v26);
      goto LABEL_205;
    case 20:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v883, v23, v884);
      v885 = MEMORY[0x277CCACA8];
      v28 = sub_22159A7E4(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v885, v886, v28, v887, v26);
      goto LABEL_205;
    case 21:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v732, v23, v733);
      v734 = MEMORY[0x277CCACA8];
      v28 = sub_22159A82C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v734, v735, v28, v736, v26);
      goto LABEL_205;
    case 22:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v638, v42, v639);
      v222 = objc_msgSend_valueToMatch(self, v640, v641, v642);
      v649 = objc_msgSend_afterMatch(self, v643, v644, v645);
      if (v649)
      {
        v230 = objc_msgSend_previousMatch(self, v646, v647, v648);
        IsRegex = objc_msgSend_previousValueIsRegex(self, v650, v651, v652);
      }

      else
      {
        IsRegex = 0;
        v230 = 0;
      }

      v965 = objc_msgSend_occurrence(self, v646, v647, v648);
      v949 = objc_msgSend_intValue(v965, v966, v967, v968);

      v972 = objc_msgSend_matchesFound(self, v969, v970, v971);
      v957 = objc_msgSend_intValue(v972, v973, v974, v975);

      v978 = (v949 - 2) < 0xFFFFFFFD && v957 > 0;
      if (!v649)
      {
        if (v978)
        {
          v961 = sub_22159A994(v976, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v983, v961, v984, v45, v949, v222, v957);
        }

        else
        {
          v961 = sub_22159A9DC(v976, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1094, v961, v1095, v45, v222);
        }

        goto LABEL_249;
      }

      if (v978)
      {
        if (IsRegex)
        {
          sub_22159A874(v976, localeCopy);
        }

        else
        {
          sub_22159A8BC(v976, localeCopy);
        }

        goto LABEL_228;
      }

      if (IsRegex)
      {
        sub_22159A904(v976, localeCopy);
      }

      else
      {
        sub_22159A94C(v976, localeCopy);
      }

      goto LABEL_293;
    case 23:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v217, v42, v218);
      v222 = objc_msgSend_valueToMatch(self, v219, v220, v221);
      v229 = objc_msgSend_afterMatch(self, v223, v224, v225);
      if (v229)
      {
        v230 = objc_msgSend_previousMatch(self, v226, v227, v228);
        v234 = objc_msgSend_previousValueIsRegex(self, v231, v232, v233);
      }

      else
      {
        v234 = 0;
        v230 = 0;
      }

      v945 = objc_msgSend_occurrence(self, v226, v227, v228);
      v949 = objc_msgSend_intValue(v945, v946, v947, v948);

      v953 = objc_msgSend_matchesFound(self, v950, v951, v952);
      v957 = objc_msgSend_intValue(v953, v954, v955, v956);

      v960 = (v949 - 2) < 0xFFFFFFFD && v957 > 0;
      if (v229)
      {
        if (v960)
        {
          if (v234)
          {
            sub_22159AA24(v958, localeCopy);
          }

          else
          {
            sub_22159AA6C(v958, localeCopy);
          }

          v961 = LABEL_228:;
          v964 = objc_msgSend_localizedStringWithFormat_(localeCopy, v962, v961, v963, v45, v949, v222, v230, v957);
        }

        else
        {
          if (v234)
          {
            sub_22159AAB4(v958, localeCopy);
          }

          else
          {
            sub_22159AAFC(v958, localeCopy);
          }

          v961 = LABEL_293:;
          v964 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1090, v961, v1091, v45, v222, v230);
        }
      }

      else
      {
        if (v960)
        {
          v961 = sub_22159AB44(v958, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v981, v961, v982, v45, v949, v222, v957);
        }

        else
        {
          v961 = sub_22159AB8C(v958, localeCopy);
          objc_msgSend_localizedStringWithFormat_(localeCopy, v1092, v961, v1093, v45, v222);
        }

        v964 = LABEL_249:;
      }

      v21 = v964;

      goto LABEL_325;
    case 24:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v1136 = objc_msgSend_localizedNameForFunction_(localeCopy, v759, v42, v760);
      v764 = objc_msgSend_lowerBound(self, v761, v762, v763);
      v768 = objc_msgSend_lowerBoundInclusive(self, v765, v766, v767);
      v772 = objc_msgSend_upperBound(self, v769, v770, v771);
      v776 = objc_msgSend_upperBoundInclusive(self, v773, v774, v775);
      v780 = objc_msgSend_argIndex(self, v777, v778, v779);
      v784 = objc_msgSend_intValue(v780, v781, v782, v783);

      v787 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v785, v42, v786);
      v790 = objc_msgSend_accessorModeForArgumentIndex_(v787, v788, v784 - 1, v789);
      if (v790 == 4)
      {
        sub_22159AC1C(v790, localeCopy);
      }

      else
      {
        sub_22159AC64(v790, localeCopy);
      }
      v791 = ;
      v985 = objc_msgSend_localizedStringWithFormat_(localeCopy, v792, v791, v793, v784);

      if (v772)
      {
        if (v764)
        {
          if (v768)
          {
            if (v776)
            {
              sub_22159ADCC(v986, localeCopy);
            }

            else
            {
              sub_22159AE14(v986, localeCopy);
            }
          }

          else if (v776)
          {
            sub_22159AE5C(v986, localeCopy);
          }

          else
          {
            sub_22159AEA4(v986, localeCopy);
          }
          v989 = ;
          objc_msgSend_doubleValue(v764, v990, v991, v992);
          v994 = v993;
          objc_msgSend_doubleValue(v772, v995, v996, v997);
          v1001 = objc_msgSend_localizedStringWithFormat_(localeCopy, v998, v989, v999, v985, v1136, v994, v1000);
        }

        else
        {
          if (v776)
          {
            sub_22159AD3C(v986, localeCopy);
          }

          else
          {
            sub_22159AD84(v986, localeCopy);
          }
          v989 = ;
          objc_msgSend_doubleValue(v772, v1096, v1097, v1098);
          v1001 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1099, v989, v1100, v985, v1136, v1101);
        }
      }

      else
      {
        if (!v764)
        {
          v1117 = MEMORY[0x277D81150];
          v1118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v987, "[TSCEError displayStringWithLocale:]", v988);
          v1121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v1120);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1117, v1122, v1118, v1121, 999, 0, "Can't be out of bounds without bounds specified");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1123, v1124, v1125);
          v21 = 0;
          goto LABEL_331;
        }

        if (v768)
        {
          sub_22159ACAC(v986, localeCopy);
        }

        else
        {
          sub_22159ACF4(v986, localeCopy);
        }
        v989 = ;
        objc_msgSend_doubleValue(v764, v1023, v1024, v1025);
        v1001 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1026, v989, v1027, v985, v1136, v1028);
      }

      v21 = v1001;

LABEL_331:
      goto LABEL_307;
    case 25:
      v22 = sub_22159AEEC(v17, localeCopy);
      goto LABEL_209;
    case 26:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v934, v23, v935);
      v936 = MEMORY[0x277CCACA8];
      v28 = sub_22159AF34(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v936, v937, v28, v938, v26);
      goto LABEL_205;
    case 27:
      v22 = sub_22159AFC4(v17, localeCopy);
      goto LABEL_209;
    case 28:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v59 = MEMORY[0x277CCACA8];
      v26 = sub_22159AF7C(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v59, v60, v26, v61, v23);
      goto LABEL_312;
    case 29:
      v22 = sub_22159B00C(v17, localeCopy);
      goto LABEL_209;
    case 30:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v742, v23, v743);
      v744 = MEMORY[0x277CCACA8];
      v28 = sub_22159B054(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v744, v745, v28, v746, v26);
      goto LABEL_205;
    case 31:
      v22 = sub_22159B09C(v17, localeCopy);
      goto LABEL_209;
    case 32:
      v22 = sub_22159B12C(v17, localeCopy);
      goto LABEL_209;
    case 33:
      v902 = objc_msgSend_argIndex(self, v18, v19, v20);
      v906 = objc_msgSend_intValue(v902, v903, v904, v905);

      v23 = sub_22159B174(v907, localeCopy);
      v421 = objc_msgSend_localizedStringWithFormat_(localeCopy, v908, v23, v909, v906);
      goto LABEL_266;
    case 34:
      v22 = sub_22159B1BC(v17, localeCopy);
      goto LABEL_209;
    case 35:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v24, v23, v25);
      v27 = MEMORY[0x277CCACA8];
      v28 = sub_22159B204(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v27, v29, v28, v30, v26);
      goto LABEL_205;
    case 36:
      v22 = sub_22159B24C(v17, localeCopy);
      goto LABEL_209;
    case 37:
      v22 = sub_22159B294(v17, localeCopy);
      goto LABEL_209;
    case 38:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v676, v23, v677);
      v678 = MEMORY[0x277CCACA8];
      v28 = sub_22159ABD4(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v678, v679, v28, v680, v26);
      goto LABEL_205;
    case 39:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v357, v42, v358);
      v361 = objc_msgSend_numberForKey_(self, v359, @"kTSCEExpectedTypeKey", v360);
      v365 = objc_msgSend_intValue(v361, v362, v363, v364);

      v55 = objc_msgSend_localizedTypeStringForArgumentType_(localeCopy, v366, v365, v367);
      v368 = MEMORY[0x277CCACA8];
      v69 = sub_22159B2DC(v55, localeCopy);
      v72 = objc_msgSend_stringWithFormat_(v368, v369, v69, v370, v45, v55);
      goto LABEL_268;
    case 40:
      v654 = objc_msgSend_argIndex(self, v18, v19, v20);
      v658 = objc_msgSend_intValue(v654, v655, v656, v657);

      v662 = objc_msgSend_argIndex2(self, v659, v660, v661);
      v666 = objc_msgSend_intValue(v662, v663, v664, v665);

      v670 = objc_msgSend_argsAscending(self, v667, v668, v669);
      v674 = objc_msgSend_equalityPermitted(self, v671, v672, v673);
      if ((v674 & v670) == 1)
      {
        v675 = sub_22159B324(v674, localeCopy);
      }

      else if (v674)
      {
        v675 = sub_22159B36C(v674, localeCopy);
      }

      else
      {
        if (v670)
        {
          sub_22159B3B4(v674, localeCopy);
        }

        else
        {
          sub_22159B3FC(v674, localeCopy);
        }
        v675 = ;
      }

      v1131 = v675;
      v1132 = MEMORY[0x277CCACA8];
      v1133 = sub_22159B444(v675, localeCopy);
      v21 = objc_msgSend_stringWithFormat_(v1132, v1134, v1133, v1135, v658, v1131, v666);

      goto LABEL_315;
    case 41:
      v405 = objc_msgSend_argIndex(self, v18, v19, v20);
      v409 = objc_msgSend_intValue(v405, v406, v407, v408);

      v413 = objc_msgSend_argIndex2(self, v410, v411, v412);
      v417 = objc_msgSend_intValue(v413, v414, v415, v416);

      v23 = sub_22159B48C(v418, localeCopy);
      v421 = objc_msgSend_localizedStringWithFormat_(localeCopy, v419, v23, v420, v409, v417);
      goto LABEL_266;
    case 42:
      v747 = objc_msgSend_chooseIndex(self, v18, v19, v20);
      v751 = objc_msgSend_intValue(v747, v748, v749, v750);

      v23 = objc_msgSend_localizedNameForFunction_(localeCopy, v752, @"CHOOSE", v753);
      v26 = sub_22159B4D4(v23, localeCopy);
      v62 = objc_msgSend_localizedStringWithFormat_(localeCopy, v754, v26, v755, v23, v751);
      goto LABEL_312;
    case 43:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v32, v23, v33);
      v34 = MEMORY[0x277CCACA8];
      v28 = sub_22159B51C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v34, v35, v28, v36, v26);
      goto LABEL_205;
    case 44:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v63, v42, v64);
      v55 = objc_msgSend_extraInfoString(self, v65, v66, v67);
      v68 = MEMORY[0x277CCACA8];
      v69 = sub_22159B564(v55, localeCopy);
      v72 = objc_msgSend_stringWithFormat_(v68, v70, v69, v71, v45, v55);
      goto LABEL_268;
    case 45:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v349, v42, v350);
      v55 = objc_msgSend_extraInfoString(self, v351, v352, v353);
      v354 = MEMORY[0x277CCACA8];
      v69 = sub_22159B5AC(v55, localeCopy);
      v72 = objc_msgSend_stringWithFormat_(v354, v355, v69, v356, v45, v55);
      goto LABEL_268;
    case 46:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v105, v23, v106);
      v107 = MEMORY[0x277CCACA8];
      v28 = sub_22159B5F4(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v107, v108, v28, v109, v26);
      goto LABEL_205;
    case 47:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v702, v42, v703);
      v707 = objc_msgSend_argIndex(self, v704, v705, v706);
      v711 = objc_msgSend_intValue(v707, v708, v709, v710);

      v55 = sub_22159B63C(v712, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v713, v55, v714, v711, v45);
      goto LABEL_216;
    case 48:
      v22 = sub_22159B684(v17, localeCopy);
      goto LABEL_209;
    case 49:
      v22 = sub_22159B6CC(v17, localeCopy);
      goto LABEL_209;
    case 50:
      v22 = sub_22159B714(v17, localeCopy);
      goto LABEL_209;
    case 51:
      v22 = sub_22159B75C(v17, localeCopy);
      goto LABEL_209;
    case 52:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v212, v23, v213);
      v214 = MEMORY[0x277CCACA8];
      v28 = sub_22159B7A4(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v214, v215, v28, v216, v26);
      goto LABEL_205;
    case 53:
      v22 = sub_22159B7EC(v17, localeCopy);
      goto LABEL_209;
    case 54:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v715, v42, v716);
      v720 = objc_msgSend_argIndex(self, v717, v718, v719);
      v724 = objc_msgSend_intValue(v720, v721, v722, v723);

      v55 = sub_22159B834(v725, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v726, v55, v727, v724, v45);
      goto LABEL_216;
    case 55:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v737, v23, v738);
      v739 = MEMORY[0x277CCACA8];
      v28 = sub_22159B87C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v739, v740, v28, v741, v26);
      goto LABEL_205;
    case 56:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v43, v42, v44);
      v49 = objc_msgSend_argIndex(self, v46, v47, v48);
      v53 = objc_msgSend_intValue(v49, v50, v51, v52);

      v55 = sub_22159B8C4(v54, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v56, v55, v57, v53, v45);
      goto LABEL_216;
    case 57:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v73, v42, v74);
      v78 = objc_msgSend_argIndex(self, v75, v76, v77);
      v82 = objc_msgSend_intValue(v78, v79, v80, v81);

      v55 = sub_22159B90C(v83, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v84, v55, v85, v82, v45);
      goto LABEL_216;
    case 58:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v235, v42, v236);
      v240 = objc_msgSend_argIndex(self, v237, v238, v239);
      v244 = objc_msgSend_intValue(v240, v241, v242, v243);

      v55 = sub_22159B954(v245, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v246, v55, v247, v244, v45);
      goto LABEL_216;
    case 59:
      v22 = sub_22159B99C(v17, localeCopy);
      goto LABEL_209;
    case 60:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v100, v23, v101);
      v102 = MEMORY[0x277CCACA8];
      v28 = sub_22159B9E4(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v102, v103, v28, v104, v26);
      goto LABEL_205;
    case 61:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v127, v23, v128);
      v129 = MEMORY[0x277CCACA8];
      v28 = sub_22159BA2C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v129, v130, v28, v131, v26);
      goto LABEL_205;
    case 63:
      v22 = sub_22159BB4C(v17, localeCopy);
      goto LABEL_209;
    case 64:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v810, v23, v811);
      v812 = MEMORY[0x277CCACA8];
      v28 = sub_22159BA74(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v812, v813, v28, v814, v26);
      goto LABEL_205;
    case 65:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v207, v23, v208);
      v209 = MEMORY[0x277CCACA8];
      v28 = sub_22159BABC(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v209, v210, v28, v211, v26);
      goto LABEL_205;
    case 66:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v815, v23, v816);
      v817 = MEMORY[0x277CCACA8];
      v28 = sub_22159BB04(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v817, v818, v28, v819, v26);
      goto LABEL_205;
    case 67:
      v22 = sub_22159BB94(v17, localeCopy);
      goto LABEL_209;
    case 68:
      v22 = sub_22159BBDC(v17, localeCopy);
      goto LABEL_209;
    case 69:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v470, v42, v471);
      v475 = objc_msgSend_extraInfoString(self, v472, v473, v474);
      v55 = v475;
      v476 = MEMORY[0x277CCACA8];
      if (v475)
      {
        v69 = sub_22159BC6C(v475, localeCopy);
        objc_msgSend_stringWithFormat_(v476, v477, v69, v478, v45, v55);
      }

      else
      {
        v69 = sub_22159BC24(0, localeCopy);
        objc_msgSend_stringWithFormat_(v476, v1021, v69, v1022, v45);
      }
      v72 = ;
      goto LABEL_268;
    case 70:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v888, v42, v889);
      v893 = objc_msgSend_argIndex(self, v890, v891, v892);
      v119 = objc_msgSend_intValue(v893, v894, v895, v896);

      v55 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v897, v42, v898);
      v901 = objc_msgSend_accessorModeForArgumentIndex_(v55, v899, v119 - 1, v900);
      if ((v901 & 0xFFFFFFFD) == 1)
      {
        sub_22159BCB4(v901, localeCopy);
      }

      else
      {
        sub_22159BCFC(v901, localeCopy);
      }

      goto LABEL_26;
    case 71:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v110, v42, v111);
      v115 = objc_msgSend_argIndex(self, v112, v113, v114);
      v119 = objc_msgSend_intValue(v115, v116, v117, v118);

      v55 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v120, v42, v121);
      v124 = objc_msgSend_accessorModeForArgumentIndex_(v55, v122, v119 - 1, v123);
      if ((v124 & 0xFFFFFFFD) == 1)
      {
        sub_22159BD44(v124, localeCopy);
      }

      else
      {
        sub_22159BD8C(v124, localeCopy);
      }

      v69 = LABEL_26:;
      v72 = objc_msgSend_localizedStringWithFormat_(localeCopy, v125, v69, v126, v119, v45);
      goto LABEL_268;
    case 72:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v854, v42, v855);
      v859 = objc_msgSend_argIndex(self, v856, v857, v858);
      v863 = objc_msgSend_intValue(v859, v860, v861, v862);

      v55 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v864, v42, v865);
      v868 = objc_msgSend_accessorModeForArgumentIndex_(v55, v866, v863 - 1, v867);
      v871 = objc_msgSend_preferredTypeForArgumentIndex_(v55, v869, v863 - 1, v870);
      if ((v868 & 0xFFFFFFFD) == 1 || v871 == 8)
      {
        v69 = sub_22159BDD4(v871, localeCopy);
        v72 = objc_msgSend_localizedStringWithFormat_(localeCopy, v979, v69, v980, v863, v45);
LABEL_268:
        v21 = v72;
      }

      else
      {
        v69 = objc_msgSend_localizedTypeStringForArgumentType_(localeCopy, v872, v871, v873);
        v874 = MEMORY[0x277CCACA8];
        v875 = sub_22159BE1C(v69, localeCopy);
        v21 = objc_msgSend_stringWithFormat_(v874, v876, v875, v877, v45, v69);
      }

      goto LABEL_270;
    case 73:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v485, v23, v486);
      v487 = MEMORY[0x277CCACA8];
      v28 = sub_22159BE64(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v487, v488, v28, v489, v26);
      goto LABEL_205;
    case 74:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v187, v23, v188);
      v189 = MEMORY[0x277CCACA8];
      v28 = sub_22159BEAC(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v189, v190, v28, v191, v26);
      goto LABEL_205;
    case 75:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v430, v42, v431);
      v222 = objc_msgSend_extraInfoNumber(self, v432, v433, v434);
      v438 = objc_msgSend_argIndex(self, v435, v436, v437);
      v442 = objc_msgSend_intValue(v438, v439, v440, v441);

      v444 = sub_22159BEF4(v443, localeCopy);
      v447 = objc_msgSend_localizedStringWithFormat_(localeCopy, v445, v444, v446, v442, v45, v222);
      goto LABEL_230;
    case 76:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v86, v42, v87);
      v91 = objc_msgSend_extraInfoNumber(self, v88, v89, v90);
      v95 = objc_msgSend_BOOLValue(v91, v92, v93, v94);

      v97 = MEMORY[0x277CCACA8];
      if (v95)
      {
        sub_22159BF3C(v96, localeCopy);
      }

      else
      {
        sub_22159BF84(v96, localeCopy);
      }
      v55 = ;
      v58 = objc_msgSend_stringWithFormat_(v97, v98, v55, v99, v45);
      goto LABEL_216;
    case 77:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v878, v23, v879);
      v880 = MEMORY[0x277CCACA8];
      v28 = sub_22159BFCC(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v880, v881, v28, v882, v26);
      goto LABEL_205;
    case 78:
      v22 = sub_22159C014(v17, localeCopy);
      goto LABEL_209;
    case 79:
      v42 = objc_msgSend_extraInfoString(self, v18, v19, v20);
      v198 = objc_msgSend_argIndex(self, v195, v196, v197);
      v202 = objc_msgSend_intValue(v198, v199, v200, v201);

      v149 = sub_22159C05C(v203, localeCopy);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v204, v149, v205, v42, v202);
      goto LABEL_214;
    case 80:
      v23 = objc_msgSend_unitName(self, v18, v19, v20);
      v794 = MEMORY[0x277CCACA8];
      v26 = sub_22159C0A4(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v794, v795, v26, v796, v23);
      goto LABEL_312;
    case 81:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v684, v23, v685);
      v686 = MEMORY[0x277CCACA8];
      v28 = sub_22159C0EC(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v686, v687, v28, v688, v26);
      goto LABEL_205;
    case 82:
      v23 = objc_msgSend_unitName(self, v18, v19, v20);
      v681 = MEMORY[0x277CCACA8];
      v26 = sub_22159C134(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v681, v682, v26, v683, v23);
      goto LABEL_312;
    case 83:
      v22 = sub_22159C17C(v17, localeCopy);
      goto LABEL_209;
    case 84:
      v22 = sub_22159C1C4(v17, localeCopy);
      goto LABEL_209;
    case 85:
      v22 = sub_22159C20C(v17, localeCopy);
      goto LABEL_209;
    case 86:
      v22 = sub_22159C254(v17, localeCopy);
      goto LABEL_209;
    case 87:
      v22 = sub_22159C29C(v17, localeCopy);
      goto LABEL_209;
    case 88:
      v22 = sub_22159C2E4(v17, localeCopy);
      goto LABEL_209;
    case 89:
      v22 = sub_22159C32C(v17, localeCopy);
      goto LABEL_209;
    case 90:
      v22 = sub_22159C374(v17, localeCopy);
      goto LABEL_209;
    case 91:
      v22 = sub_22159C3BC(v17, localeCopy);
      goto LABEL_209;
    case 92:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v286, v42, v287);
      v291 = objc_msgSend_argIndex(self, v288, v289, v290);
      v295 = objc_msgSend_intValue(v291, v292, v293, v294);

      v55 = sub_22159C404(v296, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v297, v55, v298, v45, v295);
      goto LABEL_216;
    case 93:
      v22 = sub_22159C44C(v17, localeCopy);
      goto LABEL_209;
    case 94:
      v22 = sub_22159C494(v17, localeCopy);
      goto LABEL_209;
    case 95:
      v22 = sub_22159C4DC(v17, localeCopy);
      goto LABEL_209;
    case 96:
      v248 = objc_msgSend_argIndex(self, v18, v19, v20);
      v252 = objc_msgSend_intValue(v248, v249, v250, v251);
      v42 = objc_msgSend_localizedTypeStringForArgumentType_(localeCopy, v253, v252, v254);

      v258 = objc_msgSend_argIndex2(self, v255, v256, v257);
      v262 = objc_msgSend_intValue(v258, v259, v260, v261);
      v149 = objc_msgSend_localizedTypeStringForArgumentType_(localeCopy, v263, v262, v264);

      v265 = MEMORY[0x277CCACA8];
      v152 = sub_22159C524(v266, localeCopy);
      v186 = objc_msgSend_stringWithFormat_(v265, v267, v152, v268, v42, v149);
LABEL_52:
      v21 = v186;
LABEL_305:

      goto LABEL_306;
    case 97:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v132, v23, v133);
      v134 = MEMORY[0x277CCACA8];
      v28 = sub_22159C56C(v26, localeCopy);
      v31 = objc_msgSend_stringWithFormat_(v134, v135, v28, v136, v26);
      goto LABEL_205;
    case 98:
      v22 = sub_22159C5B4(v17, localeCopy);
      goto LABEL_209;
    case 99:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v820, v42, v821);
      v825 = objc_msgSend_argIndex(self, v822, v823, v824);
      v829 = objc_msgSend_intValue(v825, v826, v827, v828);

      v55 = sub_22159C5FC(v830, localeCopy);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v831, v55, v832, v45, v829);
      goto LABEL_216;
    case 100:
      v22 = sub_22159C644(v17, localeCopy);
      goto LABEL_209;
    case 101:
      v22 = sub_22159C68C(v17, localeCopy);
      goto LABEL_209;
    case 102:
      v22 = sub_22159C6D4(v17, localeCopy);
      goto LABEL_209;
    case 103:
      v22 = sub_22159C71C(v17, localeCopy);
      goto LABEL_209;
    case 104:
      v22 = sub_22159C764(v17, localeCopy);
      goto LABEL_209;
    case 105:
      v22 = sub_22159C7AC(v17, localeCopy);
      goto LABEL_209;
    case 106:
      v22 = sub_22159C7F4(v17, localeCopy);
      goto LABEL_209;
    case 107:
      v22 = sub_22159CEB4(v17, localeCopy);
      goto LABEL_209;
    case 108:
      v22 = sub_22159CEFC(v17, localeCopy);
      goto LABEL_209;
    case 109:
      v23 = objc_msgSend_valueToMatch(self, v18, v19, v20);
      v335 = MEMORY[0x277CCACA8];
      v26 = sub_22159C95C(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v335, v336, v26, v337, v23);
      goto LABEL_312;
    case 110:
      v23 = objc_msgSend_functionName(self, v18, v19, v20);
      v26 = objc_msgSend_localizedNameForFunction_(localeCopy, v728, v23, v729);
      v28 = sub_22159C9EC(v26, localeCopy);
      v31 = objc_msgSend_localizedStringWithFormat_(localeCopy, v730, v28, v731, v26);
      goto LABEL_205;
    case 111:
      v22 = sub_22159CA34(v17, localeCopy);
      goto LABEL_209;
    case 112:
      v22 = sub_22159CA7C(v17, localeCopy);
      goto LABEL_209;
    case 113:
      v22 = sub_22159CAC4(v17, localeCopy);
      goto LABEL_209;
    case 114:
      v22 = sub_22159CB0C(v17, localeCopy);
      goto LABEL_209;
    case 115:
      v22 = sub_22159CB54(v17, localeCopy);
      goto LABEL_209;
    case 116:
      v797 = objc_msgSend_dateAsTimeInterval(self, v18, v19, v20);
      v23 = v797;
      if (!v797)
      {
        v421 = sub_22159CBE4(0, localeCopy);
LABEL_266:
        v21 = v421;
        goto LABEL_314;
      }

      v801 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v797, v798, v799, v800);
      v26 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v801, v802, v803, v804);
      v28 = sub_22159CB9C(v26, localeCopy);
      v805 = MEMORY[0x277CCACA8];
      v806 = TSUShortestCompleteDateOnlyFormat();
      v807 = TSUDateFormatterStringFromDateWithFormat();
      v21 = objc_msgSend_localizedStringWithFormat_(v805, v808, v28, v809, v807);

LABEL_206:
      goto LABEL_313;
    case 117:
      v23 = objc_msgSend_extraInfoString(self, v18, v19, v20);
      v192 = MEMORY[0x277CCACA8];
      v26 = sub_22159CC2C(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v192, v193, v26, v194, v23);
      goto LABEL_312;
    case 118:
      v22 = sub_22159CC74(v17, localeCopy);
      goto LABEL_209;
    case 119:
      v22 = sub_22159CCBC(v17, localeCopy);
      goto LABEL_209;
    case 120:
      v23 = objc_msgSend_extraInfoString(self, v18, v19, v20);
      v283 = MEMORY[0x277CCACA8];
      v26 = sub_22159CD04(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v283, v284, v26, v285, v23);
      goto LABEL_312;
    case 121:
      v756 = MEMORY[0x277CCACA8];
      v23 = sub_22159CD4C(v17, localeCopy);
      v421 = objc_msgSend_stringWithString_(v756, v757, v23, v758);
      goto LABEL_266;
    case 122:
      v23 = objc_msgSend_problemMode(self, v18, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v23, v630, @"Ask Price", v631);
      if (isEqualToString)
      {
        v635 = MEMORY[0x277CCACA8];
        v26 = sub_22159CD94(isEqualToString, localeCopy);
        v62 = objc_msgSend_stringWithString_(v635, v636, v26, v637);
      }

      else
      {
        v939 = objc_msgSend_isEqualToString_(v23, v633, @"Bid Price", v634);
        if (v939)
        {
          v942 = MEMORY[0x277CCACA8];
          v26 = sub_22159CDDC(v939, localeCopy);
          v62 = objc_msgSend_stringWithString_(v942, v943, v26, v944);
        }

        else
        {
          v1084 = objc_msgSend_isEqualToString_(v23, v940, @"Ask Size", v941);
          if (v1084)
          {
            v1087 = MEMORY[0x277CCACA8];
            v26 = sub_22159CE24(v1084, localeCopy);
            v62 = objc_msgSend_stringWithString_(v1087, v1088, v26, v1089);
          }

          else
          {
            v1126 = objc_msgSend_isEqualToString_(v23, v1085, @"Bid Size", v1086);
            if (!v1126)
            {
              v21 = 0;
              goto LABEL_314;
            }

            v1127 = MEMORY[0x277CCACA8];
            v26 = sub_22159CE6C(v1126, localeCopy);
            v62 = objc_msgSend_stringWithString_(v1127, v1128, v26, v1129);
          }
        }
      }

LABEL_312:
      v21 = v62;
LABEL_313:

LABEL_314:
      goto LABEL_315;
    case 123:
      v22 = sub_22159C9A4(v17, localeCopy);
      goto LABEL_209;
    case 124:
      v22 = sub_22159A04C(v17, localeCopy);
      goto LABEL_209;
    case 125:
      v22 = sub_22159C83C(v17, localeCopy);
      goto LABEL_209;
    case 126:
      v22 = sub_22159C884(v17, localeCopy);
      goto LABEL_209;
    case 127:
      v22 = sub_22159C8CC(v17, localeCopy);
      goto LABEL_209;
    case 128:
      v22 = sub_22159C914(v17, localeCopy);
      goto LABEL_209;
    case 130:
      v22 = sub_22159A28C(v17, localeCopy);
      goto LABEL_209;
    case 131:
      v269 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v270, v269, v271);

      v275 = objc_msgSend_argIndex(self, v272, v273, v274);
      v279 = objc_msgSend_intValue(v275, v276, v277, v278);

      v149 = sub_22159A2D4(v280, localeCopy);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v281, v149, v282, v279, v42);
      goto LABEL_214;
    case 132:
      v313 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v314, v313, v315);

      v319 = objc_msgSend_argIndex(self, v316, v317, v318);
      v323 = objc_msgSend_intValue(v319, v320, v321, v322);

      v149 = sub_22159A31C(v324, localeCopy);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v325, v149, v326, v323, v42);
      goto LABEL_214;
    case 133:
      v299 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v300, v299, v301);

      v305 = objc_msgSend_argIndex(self, v302, v303, v304);
      v309 = objc_msgSend_intValue(v305, v306, v307, v308);

      v149 = sub_22159A364(v310, localeCopy);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v311, v149, v312, v309, v42);
      goto LABEL_214;
    case 134:
      v22 = sub_22159A1B4(v17, localeCopy);
      goto LABEL_209;
    case 135:
      v22 = sub_22159B0E4(v17, localeCopy);
      goto LABEL_209;
    case 137:
      v42 = objc_msgSend_functionName(self, v18, v19, v20);
      v45 = objc_msgSend_localizedNameForFunction_(localeCopy, v589, v42, v590);
      v222 = objc_msgSend_array(MEMORY[0x277CBEB18], v591, v592, v593);
      v597 = objc_msgSend_argIndex(self, v594, v595, v596);
      objc_msgSend_addObject_(v222, v598, v597, v599);

      v603 = objc_msgSend_argIndex2(self, v600, v601, v602);

      if (v603)
      {
        v607 = objc_msgSend_argIndex2(self, v604, v605, v606);
        objc_msgSend_addObject_(v222, v608, v607, v609);
      }

      v610 = objc_msgSend_argIndex3(self, v604, v605, v606);

      if (v610)
      {
        v614 = objc_msgSend_argIndex3(self, v611, v612, v613);
        objc_msgSend_addObject_(v222, v615, v614, v616);
      }

      v617 = objc_msgSend_count(v222, v611, v612, v613);
      if (v617 == 2)
      {
        v444 = sub_22159CF8C(2, localeCopy);
        v623 = objc_msgSend_objectAtIndexedSubscript_(v222, v1032, 0, v1033);
        v1037 = objc_msgSend_intValue(v623, v1034, v1035, v1036);
        v1040 = objc_msgSend_objectAtIndexedSubscript_(v222, v1038, 1, v1039);
        v1044 = objc_msgSend_intValue(v1040, v1041, v1042, v1043);
        v21 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1045, v444, v1046, v1037, v1044, v45);
      }

      else
      {
        if (v617 == 1)
        {
          v444 = sub_22159CF44(1, localeCopy);
          v623 = objc_msgSend_objectAtIndexedSubscript_(v222, v621, 0, v622);
          v627 = objc_msgSend_intValue(v623, v624, v625, v626);
          v21 = objc_msgSend_localizedStringWithFormat_(localeCopy, v628, v444, v629, v627, v45);
          goto LABEL_282;
        }

        v1047 = objc_msgSend_count(v222, v618, v619, v620);
        if (v1047 < 3)
        {
          v1104 = MEMORY[0x277D81150];
          v1105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1048, "[TSCEError displayStringWithLocale:]", v1049);
          v1108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v1107);
          v1112 = objc_msgSend_count(v222, v1109, v1110, v1111);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1104, v1113, v1105, v1108, 1653, 0, "The %@ function raised an error with %d arguments and something unexpected happened. We shouldn't be here.", v45, v1112);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1114, v1115, v1116);
          v21 = 0;
          goto LABEL_325;
        }

        v444 = sub_22159CFD4(v1047, localeCopy);
        v623 = objc_msgSend_objectAtIndexedSubscript_(v222, v1050, 0, v1051);
        v1055 = objc_msgSend_intValue(v623, v1052, v1053, v1054);
        v1040 = objc_msgSend_objectAtIndexedSubscript_(v222, v1056, 1, v1057);
        v1061 = objc_msgSend_intValue(v1040, v1058, v1059, v1060);
        v1064 = objc_msgSend_objectAtIndexedSubscript_(v222, v1062, 2, v1063);
        v1068 = objc_msgSend_intValue(v1064, v1065, v1066, v1067);
        v21 = objc_msgSend_localizedStringWithFormat_(localeCopy, v1069, v444, v1070, v1055, v1061, v1068, v45);
      }

LABEL_282:
LABEL_283:

LABEL_325:
LABEL_271:

LABEL_307:
LABEL_315:

      return v21;
    case 138:
      v479 = objc_msgSend_spillRangeSize(self, v18, v19, v20);
      if ((HIDWORD(v479) > 2 || v479 >= 2) && (v479 >> 33 || v479 > 2))
      {
        v1137.origin = objc_msgSend_spillRange(self, v480, v481, v482);
        v1137.size = v1081;
        v23 = TSUCellRect::asString(&v1137);
        v26 = sub_22159D064(v23, localeCopy);
        v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1082, v26, v1083, v23);
      }

      else
      {
        objc_msgSend_spillBlocker(self, v480, v481, v482);
        v23 = NSStringFromTSUCellCoord();
        v26 = sub_22159D01C(v23, localeCopy);
        v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v483, v26, v484, v23);
      }

      goto LABEL_312;
    case 139:
      v1137.origin = objc_msgSend_spillRange(self, v18, v19, v20);
      v1137.size = v586;
      v23 = TSUCellRect::asString(&v1137);
      v26 = sub_22159D0AC(v23, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v587, v26, v588, v23);
      goto LABEL_312;
    case 141:
      v22 = sub_22159D0F4(v17, localeCopy);
      goto LABEL_209;
    case 142:
    case 143:
      goto LABEL_315;
    case 144:
      v22 = sub_22159D2A4(v17, localeCopy);
      goto LABEL_209;
    case 145:
      v381 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v382, v381, v383);

      v45 = sub_22159D2EC(v384, localeCopy);
      v55 = objc_msgSend_argIndex(self, v385, v386, v387);
      v391 = objc_msgSend_intValue(v55, v388, v389, v390);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v392, v45, v393, v391, v42);
      goto LABEL_216;
    case 146:
      v22 = sub_22159D334(v17, localeCopy);
      goto LABEL_209;
    case 147:
      v22 = sub_22159D37C(v17, localeCopy);
      goto LABEL_209;
    case 148:
      v689 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v690, v689, v691);

      v45 = sub_22159D3C4(v692, localeCopy);
      v55 = objc_msgSend_argIndex(self, v693, v694, v695);
      v699 = objc_msgSend_intValue(v55, v696, v697, v698);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v700, v45, v701, v699, v42);
      goto LABEL_216;
    case 149:
      v531 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v532, v531, v533);

      v45 = sub_22159D40C(v534, localeCopy);
      v55 = objc_msgSend_argIndex(self, v535, v536, v537);
      v541 = objc_msgSend_intValue(v55, v538, v539, v540);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v542, v45, v543, v541, v42);
      goto LABEL_216;
    case 150:
      v503 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v504, v503, v505);

      v509 = objc_msgSend_argIndex3(self, v506, v507, v508);
      v513 = objc_msgSend_intValue(v509, v510, v511, v512);

      if (v513 == 1)
      {
        sub_22159D454(v514, localeCopy);
      }

      else
      {
        sub_22159D49C(v514, localeCopy);
      }
      v45 = ;
      v222 = objc_msgSend_argIndex3(self, v515, v516, v517);
      v521 = objc_msgSend_intValue(v222, v518, v519, v520);
      v444 = objc_msgSend_argIndex2(self, v522, v523, v524);
      v528 = objc_msgSend_intValue(v444, v525, v526, v527);
      v447 = objc_msgSend_localizedStringWithFormat_(localeCopy, v529, v45, v530, v42, v521, v528);
LABEL_230:
      v21 = v447;
      goto LABEL_283;
    case 151:
      v22 = sub_22159D4E4(v17, localeCopy);
      goto LABEL_209;
    case 152:
      v552 = objc_msgSend_functionName(self, v18, v19, v20);
      v555 = objc_msgSend_isEqualToString_(v552, v553, @"LET", v554);

      if (v555)
      {
        sub_22159D52C(v556, localeCopy);
      }

      else
      {
        sub_22159D574(v556, localeCopy);
      }
      v42 = ;
      v149 = objc_msgSend_argIndex(self, v557, v558, v559);
      v563 = objc_msgSend_intValue(v149, v560, v561, v562);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v564, v42, v565, v563);
      goto LABEL_214;
    case 153:
      v490 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v491, v490, v492);

      v45 = sub_22159D5BC(v493, localeCopy);
      v55 = objc_msgSend_argIndex(self, v494, v495, v496);
      v500 = objc_msgSend_intValue(v55, v497, v498, v499);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v501, v45, v502, v500, v42);
      goto LABEL_216;
    case 154:
      v330 = objc_msgSend_functionName(self, v18, v19, v20);
      v333 = objc_msgSend_isEqualToString_(v330, v331, @"LET", v332);

      if (v333)
      {
        sub_22159D604(v334, localeCopy);
      }

      else
      {
        sub_22159D64C(v334, localeCopy);
      }
      v22 = ;
      goto LABEL_209;
    case 155:
      v23 = sub_22159D724(v17, localeCopy);
      v421 = objc_msgSend_localizedStringWithFormat_(localeCopy, v422, v23, v423, @"_");
      goto LABEL_266;
    case 156:
      v22 = sub_22159A1FC(v17, localeCopy);
      goto LABEL_209;
    case 157:
      v23 = sub_22159D76C(v17, localeCopy);
      v421 = objc_msgSend_localizedStringWithFormat_(localeCopy, v544, v23, v545, 1100000, 1100000);
      goto LABEL_266;
    case 158:
      v22 = sub_22159D13C(v17, localeCopy);
      goto LABEL_209;
    case 159:
      v22 = sub_22159D184(v17, localeCopy);
      goto LABEL_209;
    case 160:
      v566 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v567, v566, v568);

      v45 = sub_22159D1CC(v569, localeCopy);
      v55 = objc_msgSend_argIndex(self, v570, v571, v572);
      v576 = objc_msgSend_intValue(v55, v573, v574, v575);
      v58 = objc_msgSend_localizedStringWithFormat_(localeCopy, v577, v45, v578, v576, v42);
LABEL_216:
      v21 = v58;
LABEL_270:

      goto LABEL_271;
    case 161:
      v22 = sub_22159D7B4(v17, localeCopy);
      goto LABEL_209;
    case 162:
      v579 = objc_msgSend_functionName(self, v18, v19, v20);
      v23 = objc_msgSend_localizedNameForFunction_(localeCopy, v580, v579, v581);

      v582 = MEMORY[0x277CCACA8];
      v26 = sub_22159D214(v583, localeCopy);
      v62 = objc_msgSend_stringWithFormat_(v582, v584, v26, v585, v23);
      goto LABEL_312;
    case 163:
      v22 = sub_22159D25C(v17, localeCopy);
      goto LABEL_209;
    case 164:
      v546 = objc_msgSend_functionName(self, v18, v19, v20);
      v23 = objc_msgSend_localizedNameForFunction_(localeCopy, v547, v546, v548);

      v26 = sub_22159D7FC(v549, localeCopy);
      v62 = objc_msgSend_localizedStringWithFormat_(localeCopy, v550, v26, v551, v23);
      goto LABEL_312;
    case 165:
      v22 = sub_22159D844(v17, localeCopy);
      goto LABEL_209;
    case 166:
      v42 = objc_msgSend_extraInfoString(self, v18, v19, v20);
      v374 = objc_msgSend_functionName(self, v371, v372, v373);
      v377 = objc_msgSend_isEqualToString_(v374, v375, @"LET", v376);

      if (v377)
      {
        sub_22159D694(v378, localeCopy);
      }

      else
      {
        sub_22159D6DC(v378, localeCopy);
      }
      v149 = ;
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v379, v149, v380, v42);
      goto LABEL_214;
    case 167:
      v424 = objc_msgSend_functionName(self, v18, v19, v20);
      v23 = objc_msgSend_localizedNameForFunction_(localeCopy, v425, v424, v426);

      v26 = sub_22159D88C(v427, localeCopy);
      v62 = objc_msgSend_localizedStringWithFormat_(localeCopy, v428, v26, v429, v23);
      goto LABEL_312;
    case 168:
      v399 = objc_msgSend_functionName(self, v18, v19, v20);
      v23 = objc_msgSend_localizedNameForFunction_(localeCopy, v400, v399, v401);

      v26 = sub_22159D8D4(v402, localeCopy);
      v62 = objc_msgSend_localizedStringWithFormat_(localeCopy, v403, v26, v404, v23);
      goto LABEL_312;
    case 170:
      v448 = objc_msgSend_functionName(self, v18, v19, v20);
      v42 = objc_msgSend_localizedNameForFunction_(localeCopy, v449, v448, v450);

      v454 = objc_msgSend_argIndex1(self, v451, v452, v453);
      v458 = objc_msgSend_intValue(v454, v455, v456, v457);

      v462 = objc_msgSend_argIndex2(self, v459, v460, v461);
      v466 = objc_msgSend_intValue(v462, v463, v464, v465);

      v149 = sub_22159D91C(v467, localeCopy);
      v206 = objc_msgSend_localizedStringWithFormat_(localeCopy, v468, v149, v469, v458, v466, v42);
LABEL_214:
      v21 = v206;
LABEL_306:

      goto LABEL_307;
    case 171:
      v22 = sub_22159D964(v17, localeCopy);
LABEL_209:
      v21 = v22;
      goto LABEL_315;
    default:
      v910 = MEMORY[0x277D81150];
      v911 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEError displayStringWithLocale:]", v20);
      v914 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v912, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v913);
      v918 = objc_msgSend_errorType(self, v915, v916, v917);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v910, v919, v911, v914, 1855, 0, "This error requires more specific context: %d", v918);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v920, v921, v922);
      v21 = 0;
      goto LABEL_315;
  }
}

- (id)displayStringWithCalculationEngine:(id)engine forTable:(TSKUIDStruct)table andCellID:(TSUCellCoord)d
{
  upper = table._upper;
  lower = table._lower;
  engineCopy = engine;
  v12 = objc_msgSend_errorType(self, v9, v10, v11);
  v19 = objc_msgSend_documentLocale(engineCopy, v13, v14, v15);
  if (!v19)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1867, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  if (v12 <= 128)
  {
    if (v12 != 8)
    {
      if (v12 != 13)
      {
        if (v12 == 62)
        {
          v29 = objc_msgSend_functionName(self, v16, v17, v18);
          v32 = objc_msgSend_localizedNameForFunction_(v19, v30, v29, v31);
          objc_msgSend_rangeRef(self, v33, v34, v35);
          v36 = objc_opt_new();
          objc_msgSend_setHostTableUID_(v36, v37, lower, upper);
          v41 = objc_msgSend_namer(engineCopy, v38, v39, v40);
          v311 = v313;
          v312 = v314;
          v43 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v41, v42, &v311, v36);

          v45 = MEMORY[0x277CCACA8];
          if (v43)
          {
            v46 = objc_msgSend_localizedStringForKey_value_table_(v19, v44, @"%@ refers to %@, which is empty.", &stru_2834BADA0, @"TSCalculationEngine");
            objc_msgSend_stringWithFormat_(v45, v47, v46, v48, v32, v43);
          }

          else
          {
            v46 = objc_msgSend_localizedStringForKey_value_table_(v19, v44, @"%@ refers to an empty cell.", &stru_2834BADA0, @"TSCalculationEngine");
            objc_msgSend_stringWithFormat_(v45, v226, v46, v227, v32);
          }
          v137 = ;

          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v29 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v29, v151, lower, upper);
      v155 = objc_msgSend_namer(engineCopy, v152, v153, v154);
      objc_msgSend_rangeRef(self, v156, v157, v158);
      v313 = v311;
      v314 = v312;
      v32 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v155, v159, &v313, v29);

      if (v32)
      {
        v161 = MEMORY[0x277CCACA8];
        v36 = objc_msgSend_localizedStringForKey_value_table_(v19, v160, @"Cell “%@” contains an error.", &stru_2834BADA0, @"TSCalculationEngine");
        v62 = objc_msgSend_stringWithFormat_(v161, v162, v36, v163, v32);
        goto LABEL_33;
      }

      v225 = objc_msgSend_localizedStringForKey_value_table_(v19, v160, @"The formula refers to a cell which contains an error.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_42;
    }

    v63 = objc_msgSend_functionName(self, v16, v17, v18);
    v66 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v64, v63, v65);

    v309 = v66;
    v305 = objc_msgSend_displayStringForLocale_(v66, v67, v19, v68);
    v71 = objc_msgSend_numberForKey_(self, v69, @"kTSCEExpectedTypeKey", v70);
    v75 = objc_msgSend_intValue(v71, v72, v73, v74);

    v304 = objc_msgSend_localizedTypeStringForArgumentType_(v19, v76, v75, v77);
    v80 = objc_msgSend_numberForKey_(self, v78, @"kTSCEFoundTypeKey", v79);
    v84 = objc_msgSend_intValue(v80, v81, v82, v83);

    v302 = v84;
    v303 = v84;
    v307 = objc_msgSend_localizedTypeStringForArgumentType_(v19, v85, v303, v86);
    if (!v304)
    {
      v89 = MEMORY[0x277D81150];
      v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v88);
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v92);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v94, v90, v93, 1879, 0, "Did not find localized string for expected data type: %d", v303);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
    }

    if (!v307)
    {
      v98 = MEMORY[0x277D81150];
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v88);
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v103, v99, v102, 1880, 0, "Did not find localized string for found data type: %d", v303);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106);
    }

    v107 = objc_msgSend_numberForKey_(self, v87, @"kTSCEArgumentIndexKey", v88);
    v111 = objc_msgSend_intValue(v107, v108, v109, v110);

    v114 = objc_msgSend_accessorModeForArgumentIndex_(v309, v112, v111, v113);
    v121 = objc_msgSend_minArguments(v309, v115, v116, v117) != 1 || objc_msgSend_maxArguments(v309, v118, v119, v120) != 1;
    if ((((v114 & 0xFFFFFFFD) == 1) & ~objc_msgSend_isOperator(v309, v118, v119, v120) & v121) != 0)
    {
      v208 = objc_msgSend_localizedStringForKey_value_table_(v19, v205, @"Argument %d of %@", &stru_2834BADA0, @"TSCalculationEngine");
      v211 = objc_msgSend_localizedStringWithFormat_(v19, v209, v208, v210, (v111 + 1), v305);

      if (v75 == -1)
      {
        v213 = MEMORY[0x277CCACA8];
        v214 = v309;
        v215 = objc_msgSend_localizedStringForKey_value_table_(v19, v212, @" can\\U2019t be %@.", &stru_2834BADA0, @"TSCalculationEngine");
        v218 = objc_msgSend_stringWithFormat_(v213, v216, v215, v217, v307);
LABEL_55:
        v236 = v218;

        v137 = objc_msgSend_stringByAppendingString_(v211, v237, v236, v238);

LABEL_74:
        goto LABEL_47;
      }
    }

    else
    {
      isOperator = objc_msgSend_isOperator(v309, v205, v206, v207);
      v221 = MEMORY[0x277CCACA8];
      if (isOperator)
      {
        objc_msgSend_localizedStringForKey_value_table_(v19, v220, @"The operator “%@”", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v19, v220, @"The function “%@”", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v222 = ;
      v211 = objc_msgSend_stringWithFormat_(v221, v223, v222, v224, v305);
      v214 = v309;

      if (v75 == -1)
      {
        v233 = MEMORY[0x277CCACA8];
        v215 = objc_msgSend_localizedStringForKey_value_table_(v19, v212, @" can\\U2019t take %@.", &stru_2834BADA0, @"TSCalculationEngine");
        v218 = objc_msgSend_stringWithFormat_(v233, v234, v215, v235, v307);
        goto LABEL_55;
      }
    }

    v239 = v211;
    v240 = objc_msgSend_localizedStringForKey_value_table_(v19, v212, @" expects %@", &stru_2834BADA0, @"TSCalculationEngine");
    v211 = objc_msgSend_stringByAppendingFormat_(v211, v241, v240, v242, v304);

    if (objc_msgSend_problemNodeIsCellReference(self, v243, v244, v245))
    {
      v249 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v249, v250, lower, upper);
      v254 = objc_msgSend_namer(engineCopy, v251, v252, v253);
      objc_msgSend_rangeRef(self, v255, v256, v257);
      v313 = v311;
      v314 = v312;
      v259 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v254, v258, &v313, v249);

      v260 = MEMORY[0x277CCACA8];
      v262 = objc_msgSend_localizedStringForKey_value_table_(v19, v261, @", but cell %@ contains %@.", &stru_2834BADA0, @"TSCalculationEngine");
      v265 = objc_msgSend_stringWithFormat_(v260, v263, v262, v264, v259, v307);

LABEL_73:
      v137 = objc_msgSend_stringByAppendingString_(v211, v266, v265, v267);

      v214 = v309;
      goto LABEL_74;
    }

    v268 = objc_msgSend_problemExpressionString(self, v246, v247, v248);
    v272 = objc_msgSend_length(v268, v269, v270, v271);
    if (v272)
    {
      v276 = MEMORY[0x277CCACA8];
      v277 = objc_msgSend_localizedStringForKey_value_table_(v19, v273, @" but found “%@”.", &stru_2834BADA0, @"TSCalculationEngine");
      v280 = objc_msgSend_stringWithFormat_(v276, v278, v277, v279, v268);
    }

    else
    {
      if (!v302 || v303 == 10 || (v272 = objc_msgSend_length(v307, v273, v274, v275)) == 0)
      {
        v265 = sub_22159EC7C(v272, v19);
        goto LABEL_72;
      }

      v287 = MEMORY[0x277CCACA8];
      v277 = sub_22159EC34(v272, v19);
      v280 = objc_msgSend_stringWithFormat_(v287, v288, v277, v289, v307);
    }

    v265 = v280;

LABEL_72:
    goto LABEL_73;
  }

  switch(v12)
  {
    case 129:
      v29 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v29, v122, lower, upper);
      v126 = objc_msgSend_namer(engineCopy, v123, v124, v125);
      objc_msgSend_rangeRef(self, v127, v128, v129);
      v313 = v311;
      v314 = v312;
      v32 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v126, v130, &v313, v29);

      if (v32)
      {
        v132 = MEMORY[0x277CCACA8];
        v36 = objc_msgSend_localizedStringForKey_value_table_(v19, v131, @"The range %@ can\\U2019t be used as a single value.", &stru_2834BADA0, @"TSCalculationEngine");
        v62 = objc_msgSend_stringWithFormat_(v132, v133, v36, v134, v32);
LABEL_33:
        v137 = v62;
LABEL_45:

        goto LABEL_46;
      }

      v225 = objc_msgSend_localizedStringForKey_value_table_(v19, v131, @"The formula contains an invalid reference.", &stru_2834BADA0, @"TSCalculationEngine");
LABEL_42:
      v137 = v225;
LABEL_46:

      goto LABEL_47;
    case 140:
      v164 = objc_msgSend_spillRangeSize(self, v16, v17, v18);
      v310 = objc_msgSend_resolverForTableUID_(engineCopy, v165, lower, upper);
      v308 = objc_msgSend_tableInfo(v310, v166, v167, v168);
      v306 = objc_msgSend_baseTableModel(v308, v169, v170, v171);
      v175 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v172, v173, v174);
      v313.origin = objc_msgSend_spillRange(self, v176, v177, v178);
      v313.size = v179;
      v182 = objc_msgSend_numberOfRows(v306, v179, v180, v181);
      row = v313.origin.row;
      v187 = objc_msgSend_numberOfColumns(v306, v184, v185, v186);
      column = v313.origin.column;
      v192 = objc_msgSend_maxNumberOfRows(v175, v189, v190, v191);
      v196 = objc_msgSend_maxNumberOfColumns(v175, v193, v194, v195);
      if (TSUCellRect::maxRow(&v313) <= v192 || v196 >= TSUCellRect::maxColumn(&v313))
      {
        if (TSUCellRect::maxRow(&v313) <= v192)
        {
          v229 = TSUCellRect::maxColumn(&v313);
          if (v196 >= v229)
          {
            v281 = row - v182 + HIDWORD(v164);
            v282 = v164 - v187 + column;
            if (v281 <= 0 && v282 == 1)
            {
              v198 = sub_22159ECC4(v229, v19);
              v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v283, v198, v284, 1);
            }

            else if (v281 > 0 || v282 < 2)
            {
              if (v281 == 1 && v282 <= 0)
              {
                v198 = sub_22159ED54(v229, v19);
                v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v290, v198, v291, 1);
              }

              else if (v281 == 1 && v282 == 1)
              {
                v198 = sub_22159ED9C(v229, v19);
                v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v292, v198, v293, 1, 1);
              }

              else if (v281 == 1 && v282 >= 2)
              {
                v198 = sub_22159EDE4(v229, v19);
                v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v294, v198, v295, v282);
              }

              else if (v281 < 2 || v282 >= 1)
              {
                if (v281 > 1 && v282 == 1)
                {
                  v198 = sub_22159EE74(v229, v19);
                  v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v298, v198, v299, v281);
                }

                else
                {
                  if (v281 < 2 || v282 < 2)
                  {
                    v137 = sub_22159EF04(v229, v19);
                    goto LABEL_94;
                  }

                  v198 = sub_22159EEBC(v229, v19);
                  v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v300, v198, v301, v281, v282);
                }
              }

              else
              {
                v198 = sub_22159EE2C(v229, v19);
                v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v296, v198, v297, v281);
              }
            }

            else
            {
              v198 = sub_22159ED0C(v229, v19);
              v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v285, v198, v286, v282);
            }
          }

          else
          {
            v198 = objc_msgSend_localizedStringForKey_value_table_(v19, v230, @"The formula’s spilled results exceed the table limit of %1$d columns.", &stru_2834BADA0, @"TSCalculationEngine");
            v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v231, v198, v232, v196);
          }
        }

        else
        {
          v198 = objc_msgSend_localizedStringForKey_value_table_(v19, v202, @"The formula’s spilled results exceed the table limit of %1$d rows.", &stru_2834BADA0, @"TSCalculationEngine");
          v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v203, v198, v204, v192);
        }
      }

      else
      {
        v198 = objc_msgSend_localizedStringForKey_value_table_(v19, v197, @"The formula’s spilled results exceed the table limit of %1$d rows and %2$d columns.", &stru_2834BADA0, @"TSCalculationEngine");
        v201 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v199, v198, v200, v192, v196);
      }

      v137 = v201;

LABEL_94:
      goto LABEL_47;
    case 169:
      v49 = objc_msgSend_functionName(self, v16, v17, v18);
      v29 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v50, v49, v51);

      v32 = objc_msgSend_displayStringForLocale_(v29, v52, v19, v53);
      v57 = objc_msgSend_isOperator(v29, v54, v55, v56);
      v59 = MEMORY[0x277CCACA8];
      if (v57)
      {
        objc_msgSend_localizedStringForKey_value_table_(v19, v58, @"The operator “%@” had an error in its arguments.", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v19, v58, @"The function “%@” had an error in its arguments.", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v36 = ;
      v62 = objc_msgSend_stringWithFormat_(v59, v60, v36, v61, v32);
      goto LABEL_33;
  }

LABEL_23:
  v137 = objc_msgSend_displayStringWithLocale_(self, v16, v19, v18);
  if (!v137)
  {
    v138 = MEMORY[0x277D81150];
    v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "[TSCEError displayStringWithCalculationEngine:forTable:andCellID:]", v136);
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v141);
    v146 = objc_msgSend_errorTypeKey(self, v143, v144, v145);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v147, v139, v142, 2078, 0, "No specified error, type %d %{public}@ dictionary: %{public}@", v12, v146, self->_errorDictionary);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150);
    v137 = 0;
  }

LABEL_47:

  return v137;
}

+ (id)missingPivotTableErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = *&number;
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 131, name);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_setArgIndex_(v5, v9, v8, v10);

  return v5;
}

+ (id)invalidAggregateColumnErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = *&number;
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 132, name);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_setArgIndex_(v5, v9, v8, v10);

  return v5;
}

+ (id)invalidGroupingColumnErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = *&number;
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 133, name);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_setArgIndex_(v5, v9, v8, v10);

  return v5;
}

+ (id)referenceToNonexistentTableError:(TSKUIDStruct)error
{
  upper = error._upper;
  lower = error._lower;
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 4, error._upper);
  v7 = v5;
  if (lower | upper)
  {
    objc_msgSend_setOwnerUID_(v5, v6, lower, upper);
  }

  return v7;
}

+ (id)autoNumberAttachmentError
{
  v3 = objc_msgSend_errorForErrorType_(TSCEError, a2, 15, v2);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v3, v4, 1, v5);

  return v3;
}

+ (id)attachmentError
{
  v3 = objc_msgSend_errorForErrorType_(TSCEError, a2, 16, v2);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v3, v4, 1, v5);

  return v3;
}

- (BOOL)isInvalidMergeReference
{
  if (objc_msgSend_errorType(self, a2, v2, v3) != 4)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_BOOLForKey_, @"TSCEInvalidReferenceToMergeKey", v5);
}

- (id)errorDictionary
{
  v8 = objc_msgSend_mutableCopy(self->_errorDictionary, a2, v2, v3);
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v9 = objc_msgSend_errorType(self, v5, v6, v7);
  v12 = objc_msgSend_errorKeyForErrorType_(TSCEError, v10, v9, v11);
  objc_msgSend_setObject_forKey_(v8, v13, v12, @"TSCEErrorTypeKey");

  return v8;
}

+ (id)argumentErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 169, name);

  return v3;
}

+ (id)disallowedStockModeError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 122, v5);
  v9 = v6;
  if (errorCopy)
  {
    objc_msgSend_setProblemMode_(v6, v7, errorCopy, v8);
  }

  return v9;
}

+ (id)typeErrorForValue:(id)value context:(id)context functionSpec:(id)spec argumentIndex:(int)index
{
  v6 = *&index;
  valueCopy = value;
  contextCopy = context;
  specCopy = spec;
  v15 = objc_msgSend_functionName(specCopy, v12, v13, v14);
  v87 = v15;
  v21 = objc_msgSend_preferredTypeForArgumentIndex_(specCopy, v16, v6, v17);
  if (v21 == 6)
  {
    v22 = objc_msgSend_nativeType(valueCopy, v18, v19, v20);
  }

  else
  {
    v22 = objc_msgSend_deepType_(valueCopy, v18, contextCopy, v20);
  }

  v26 = v22;
  v86 = objc_msgSend_locale(contextCopy, v23, v24, v25);
  v30 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v27, 8, v15);
  if (specCopy && !v15)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSCEError typeErrorForValue:context:functionSpec:argumentIndex:]", v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 2264, 0, "No functionName available from functionSpec: %{public}@", specCopy);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v37, v38, v39);
  }

  v40 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v28, v21, v29);
  objc_msgSend_setNumber_forKey_(v30, v41, v40, @"kTSCEExpectedTypeKey");

  v44 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v42, v26, v43);
  objc_msgSend_setNumber_forKey_(v30, v45, v44, @"kTSCEFoundTypeKey");

  v48 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v46, v6, v47);
  objc_msgSend_setNumber_forKey_(v30, v49, v48, @"kTSCEArgumentIndexKey");

  if (objc_msgSend_isReferenceValue(valueCopy, v50, v51, v52))
  {
    v56 = objc_msgSend_asReferenceValue(valueCopy, v53, v54, v55);
    isRange = objc_msgSend_isRange(v56, v57, v58, v59);
    v61 = isRange;
    objc_msgSend_setProblemNodeIsCellReference_(v30, v62, isRange ^ 1u, v63);
    if ((v61 & 1) == 0)
    {
      v88[0] = objc_msgSend_range(v56, v64, v65, v66);
      v88[1] = v69;
      v88[2] = objc_msgSend_tableUID(v56, v69, v67, v68);
      v88[3] = v70;
      objc_msgSend_setRangeRef_(v30, v70, v88, v71);
    }
  }

  else
  {
    objc_msgSend_setProblemNodeIsCellReference_(v30, v53, 0, v55);
  }

  v78 = objc_msgSend_problemExpressionString(v30, v72, v73, v74);
  if (v78)
  {
    v79 = v86;
LABEL_14:

    goto LABEL_15;
  }

  v79 = v86;
  if (objc_msgSend_nativeType(valueCopy, v75, v76, v77) != 13)
  {
    if (!v86)
    {
      v79 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v81, v82, v83);
    }

    v78 = objc_msgSend_asStringWithLocale_(valueCopy, v81, v79, v83);
    if (v78)
    {
      objc_msgSend_setProblemExpressionString_(v30, v84, v78, v85);
    }

    goto LABEL_14;
  }

LABEL_15:

  return v30;
}

+ (id)unknownFunctionError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 2, v5);
  objc_msgSend_setFunctionName_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)numberErrorForFunctionName:(id)name
{
  nameCopy = name;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 11, v5);
  objc_msgSend_setFunctionName_(v6, v7, nameCopy, v8);

  return v6;
}

+ (id)autoNumberAttachmentErrorInTextCell:(BOOL)cell
{
  cellCopy = cell;
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 15, v3);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v5, v6, cellCopy, v7);

  return v5;
}

+ (id)attachmentErrorInTextCell:(BOOL)cell
{
  cellCopy = cell;
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 16, v3);
  objc_msgSend_setAttachmentErrorRaisedInTextCell_(v5, v6, cellCopy, v7);

  return v5;
}

+ (id)valueNotAvailableErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 26, name);

  return v3;
}

+ (id)errorForInvalidReference:(TSCERangeRef *)reference orString:(id)string contextEntityUID:(const TSKUIDStruct *)d
{
  tableUID = reference->_tableUID;
  v8[0] = reference->range;
  v8[1] = tableUID;
  v6 = objc_msgSend_errorForInvalidReference_orString_contextEntityUID_invalidMergeReference_disqualifiedFromEndCell_(self, a2, v8, string, d, 0, 0);

  return v6;
}

+ (id)errorForInvalidReference:(TSCERangeRef *)reference orString:(id)string contextEntityUID:(const TSKUIDStruct *)d invalidMergeReference:(BOOL)mergeReference disqualifiedFromEndCell:(BOOL)cell
{
  cellCopy = cell;
  mergeReferenceCopy = mergeReference;
  stringCopy = string;
  v15 = objc_msgSend_invalidReferenceError(TSCEError, v12, v13, v14);
  v18 = v15;
  if (stringCopy)
  {
    objc_msgSend_setProblemExpressionString_(v15, v16, stringCopy, v17);
  }

  else
  {
    tableUID = reference->_tableUID;
    v23[0] = reference->range;
    v23[1] = tableUID;
    objc_msgSend_setRangeRef_(v15, v16, v23, v17);
  }

  upper = d->_upper;
  if (*d != 0)
  {
    objc_msgSend_setOwnerUID_(v18, v19, d->_lower, upper);
  }

  if (mergeReferenceCopy)
  {
    objc_msgSend_setInvalidReferenceToMerge_(v18, v19, 1, upper);
  }

  if (cellCopy)
  {
    objc_msgSend_setReferenceEndCellInvalid_(v18, v19, 1, upper);
  }

  return v18;
}

+ (id)invalidMergeReference:(TSCERangeRef *)reference contextEntityUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_invalidReferenceError(TSCEError, a2, reference, d);
  tableUID = reference->_tableUID;
  v13[0] = reference->range;
  v13[1] = tableUID;
  objc_msgSend_setRangeRef_(v6, v8, v13, v9);
  upper = d->_upper;
  if (*d != 0)
  {
    objc_msgSend_setOwnerUID_(v6, v10, d->_lower, upper);
  }

  objc_msgSend_setInvalidReferenceToMerge_(v6, v10, 1, upper);

  return v6;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name lowerBound:(double)bound lowerBoundInclusive:(BOOL)inclusive
{
  v6 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(self, a2, *&argument, name, inclusive, 0, bound, NAN);

  return v6;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name upperBound:(double)bound upperBoundInclusive:(BOOL)inclusive
{
  v6 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(self, a2, *&argument, name, 0, inclusive, NAN, bound);

  return v6;
}

+ (id)outOfBoundsArgumentErrorForArgument:(int)argument functionName:(id)name lowerBound:(double)bound lowerBoundInclusive:(BOOL)inclusive upperBound:(double)upperBound upperBoundInclusive:(BOOL)boundInclusive
{
  boundInclusiveCopy = boundInclusive;
  inclusiveCopy = inclusive;
  v12 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 24, name, *&argument);
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v13, v14, v15, bound);
  objc_msgSend_setLowerBound_(v12, v17, v16, v18);

  objc_msgSend_setLowerBoundInclusive_(v12, v19, inclusiveCopy, v20);
  v24 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, v23, upperBound);
  objc_msgSend_setUpperBound_(v12, v25, v24, v26);

  objc_msgSend_setUpperBoundInclusive_(v12, v27, boundInclusiveCopy, v28);

  return v12;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)argument functionName:(id)name
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, name, *&argument);
  objc_msgSend_setArgIndex2_(v4, v5, 0, v6);
  objc_msgSend_setArgIndex3_(v4, v7, 0, v8);

  return v4;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)argument argIndex2:(int)index2 functionName:(id)name
{
  v5 = *&index2;
  v6 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, name, *&argument);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8);
  objc_msgSend_setArgIndex2_(v6, v10, v9, v11);

  objc_msgSend_setArgIndex3_(v6, v12, 0, v13);

  return v6;
}

+ (id)invalidDecimalNumberErrorForArgument:(int)argument argIndex2:(int)index2 argIndex3:(int)index3 functionName:(id)name
{
  v6 = *&index3;
  v7 = *&index2;
  v8 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 137, name, *&argument);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, v7, v10);
  objc_msgSend_setArgIndex2_(v8, v12, v11, v13);

  v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v6, v15);
  objc_msgSend_setArgIndex3_(v8, v17, v16, v18);

  return v8;
}

+ (id)matchNotFoundErrorForValue:(id)value isRegex:(BOOL)regex afterMatch:(BOOL)match previousValueToMatch:(id)toMatch previousValueIsRegex:(BOOL)isRegex occurrence:(int)occurrence matchesFound:(int)found functionName:(id)self0
{
  v10 = *&occurrence;
  isRegexCopy = isRegex;
  matchCopy = match;
  regexCopy = regex;
  valueCopy = value;
  toMatchCopy = toMatch;
  nameCopy = name;
  if (regexCopy)
  {
    objc_msgSend_errorForErrorType_functionName_(TSCEError, v17, 23, nameCopy);
  }

  else
  {
    objc_msgSend_errorForErrorType_functionName_(TSCEError, v17, 22, nameCopy);
  }
  v19 = ;
  objc_msgSend_setAfterMatch_(v19, v20, matchCopy, v21);
  v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v22, v10, v23);
  objc_msgSend_setOccurrence_(v19, v25, v24, v26);

  v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, found, v28);
  objc_msgSend_setMatchesFound_(v19, v30, v29, v31);

  if (matchCopy)
  {
    objc_msgSend_setPreviousMatch_(v19, v32, toMatchCopy, v33);
    objc_msgSend_setPreviousValueIsRegex_(v19, v34, isRegexCopy, v35);
  }

  if (valueCopy)
  {
    objc_msgSend_setValueToMatch_(v19, v32, valueCopy, v33);
  }

  return v19;
}

+ (id)matchNotFoundErrorForValue:(id)value isRegex:(BOOL)regex functionName:(id)name
{
  v7 = 0;
  v5 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(self, a2, value, regex, 0, 0, 0, 0, v7, name);

  return v5;
}

+ (id)startNumberExceedsStringLengthErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 38, name);

  return v3;
}

+ (id)differentNumberOfDataPointsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 28, name);

  return v3;
}

+ (id)mixedTypeManipulationErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 30, name);

  return v3;
}

+ (id)invalidArgumentsErrorForFunctionName:(id)name argumentIndex:(int)index
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 14, name, *&index);

  return v4;
}

+ (id)indirectErrorForRangeReference:(TSCERangeRef *)reference hostTableUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 13, d);
  tableUID = reference->_tableUID;
  v10[0] = reference->range;
  v10[1] = tableUID;
  objc_msgSend_setRangeRef_(v5, v7, v10, v8);

  return v5;
}

+ (id)emptyArgumentSpecificErrorForArgumentNumber:(int)number
{
  v4 = *&number;
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 33, v3);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_setArgIndex_(v5, v9, v8, v10);

  return v5;
}

+ (id)invalidRangeUsageErrorForReference:(const TSCERangeRef *)reference
{
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 129, v3);
  tableUID = reference->_tableUID;
  v10[0] = reference->range;
  v10[1] = tableUID;
  objc_msgSend_setRangeRef_(v5, v7, v10, v8);

  return v5;
}

+ (id)differentNumberOfElementsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 35, name);

  return v3;
}

+ (id)notAReferenceErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 19, name);

  return v3;
}

+ (id)noSuitableArgumentsFoundErrorForFunctionName:(id)name requiredType:(char)type
{
  typeCopy = type;
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 39, name);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, typeCopy, v7);
  objc_msgSend_setNumber_forKey_(v5, v9, v8, @"kTSCEExpectedTypeKey");

  return v5;
}

+ (id)invalidArgumentRelationshipErrorForFunctionName:(id)name argIndex1:(int)index1 argIndex2:(int)index2 argsAscending:(BOOL)ascending equalityPermitted:(BOOL)permitted
{
  permittedCopy = permitted;
  ascendingCopy = ascending;
  v9 = *&index2;
  v10 = *&index1;
  v11 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 40, name);
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v10, v13);
  objc_msgSend_setArgIndex1_(v11, v15, v14, v16);

  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v17, v9, v18);
  objc_msgSend_setArgIndex2_(v11, v20, v19, v21);

  objc_msgSend_setArgsAscending_(v11, v22, ascendingCopy, v23);
  objc_msgSend_setEqualityPermitted_(v11, v24, permittedCopy, v25);

  return v11;
}

+ (id)invalidArgumentEqualityRelationshipErrorForFunctionName:(id)name argIndex1:(int)index1 argIndex2:(int)index2
{
  v5 = *&index2;
  v6 = *&index1;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 41, name);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9);
  objc_msgSend_setArgIndex1_(v7, v11, v10, v12);

  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v5, v14);
  objc_msgSend_setArgIndex2_(v7, v16, v15, v17);

  return v7;
}

+ (id)invalidIndexForChooseError:(int)error
{
  v4 = *&error;
  v5 = objc_msgSend_errorForErrorType_(TSCEError, a2, 42, v3);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_setChooseIndex_(v5, v9, v8, v10);

  return v5;
}

+ (id)nonEmptyStringRequiredErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 43, name);

  return v3;
}

+ (id)stringDoesNotRepresentNumberErrorForFunctionName:(id)name string:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 44, name);
  objc_msgSend_setExtraInfoString_(v7, v8, stringCopy, v9);

  return v7;
}

+ (id)stringDoesNotRepresentDateErrorForFunctionName:(id)name string:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 45, name);
  objc_msgSend_setExtraInfoString_(v7, v8, stringCopy, v9);

  return v7;
}

+ (id)signsMustMatchErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 46, name);

  return v3;
}

+ (id)rangeDoesNotSumToOneForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 47, name, *&number);

  return v4;
}

+ (id)invalidProbabilityErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 52, name);

  return v3;
}

+ (id)argumentEqualsToZeroErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 54, name, *&number);

  return v4;
}

+ (id)positionLargerThanArrayErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 55, name);

  return v3;
}

+ (id)invalidFrequencyErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 56, name, *&number);

  return v4;
}

+ (id)invalidTypeErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 57, name, *&number);

  return v4;
}

+ (id)invalidTailErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 58, name, *&number);

  return v4;
}

+ (id)numberDoesNotConvergeErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 60, name);

  return v3;
}

+ (id)numberDoesNotConvergeWithEstimateErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 61, name);

  return v3;
}

+ (id)tooFewDataPointsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 64, name);

  return v3;
}

+ (id)dateEarlierThanStartingDateErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 65, name);

  return v3;
}

+ (id)onlyPositiveOrNegativeErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 66, name);

  return v3;
}

+ (id)referenceToEmptyCellErrorForFunctionName:(id)name rangeReference:(TSCERangeRef *)reference
{
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 62, name);
  tableUID = reference->_tableUID;
  v10[0] = reference->range;
  v10[1] = tableUID;
  objc_msgSend_setRangeRef_(v5, v7, v10, v8);

  return v5;
}

+ (id)wrongNumberOfArgumentsErrorForFunctionName:(id)name provided:(unint64_t)provided
{
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 9, name);
  v8 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v6, provided, v7);
  objc_msgSend_setExtraInfoNumber_(v5, v9, v8, v10);

  return v5;
}

+ (id)tooManyArguments:(id)arguments maximum:(unint64_t)maximum provided:(unint64_t)provided
{
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 10, arguments);
  v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, maximum, v9);
  objc_msgSend_setMaxArgsAllowed_(v7, v11, v10, v12);

  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v13, provided, v14);
  objc_msgSend_setProvidedArgs_(v7, v16, v15, v17);

  return v7;
}

+ (id)mismatchedUnitsErrorForFunctionName:(id)name argumentNumberString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 69, name);
  objc_msgSend_setExtraInfoString_(v7, v8, stringCopy, v9);

  return v7;
}

+ (id)mismatchedUnitsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, a2, name, 0);

  return v3;
}

+ (id)unitsNotAllowedErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 70, name, *&number);

  return v4;
}

+ (id)currencyNotAllowedErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 71, name, *&number);

  return v4;
}

+ (id)durationNotAllowedError:(id)error argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 72, error, *&number);

  return v4;
}

+ (id)mismatchedCurrenciesErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 73, name);

  return v3;
}

+ (id)sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 74, name);

  return v3;
}

+ (id)notEnoughInputsErrorForFunctionName:(id)name argumentNumber:(int)number required:(int)required
{
  v5 = *&required;
  v6 = *&number;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 75, name);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9);
  objc_msgSend_setArgIndex_(v7, v11, v10, v12);

  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v5, v14);
  objc_msgSend_setExtraInfoNumber_(v7, v16, v15, v17);

  return v7;
}

+ (id)invalidIntersectionError:(vector<TSCEReferenceValue *) hostTableUID:(std:(const TSKUIDStruct *)d :(id)a5 allocator<TSCEReferenceValue *>> *)a3 calcEngine:
{
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v8, v9, a3->var1 - a3->var0, v10);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v16 = *var0;
      v17 = objc_opt_new();
      objc_msgSend_setHostTableUID_(v17, v18, d->_lower, d->_upper);
      v25 = objc_msgSend_namer(v7, v19, v20, v21);
      if (v16)
      {
        objc_msgSend_rangeRef(v16, v22, v23, v24);
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53[0] = v51;
      v53[1] = v52;
      v26 = objc_msgSend_chromeNameForBaseRangeRef_namingContext_(v25, v22, v53, v17);

      if (v26)
      {
        objc_msgSend_addObject_(v13, v27, v26, v28);
      }

      ++var0;
    }

    while (var0 != var1);
  }

  v29 = objc_msgSend_errorForErrorType_(TSCEError, v11, 18, v12);
  if (objc_msgSend_count(v13, v30, v31, v32))
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_msgSend_documentLocale(v7, v33, v34, v35);
    v41 = objc_msgSend_listSeparator(v37, v38, v39, v40);
    v44 = objc_msgSend_stringWithFormat_(v36, v42, @"%@ ", v43, v41);

    v47 = objc_msgSend_componentsJoinedByString_(v13, v45, v44, v46);
    objc_msgSend_setReferenceList_(v29, v48, v47, v49);
  }

  return v29;
}

+ (id)invalidArgumentPairingsErrorForFunctionName:(id)name hasInitialUnrelatedArgument:(BOOL)argument
{
  argumentCopy = argument;
  v5 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 76, name);
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, argumentCopy, v7);
  objc_msgSend_setExtraInfoNumber_(v5, v9, v8, v10);

  return v5;
}

+ (id)rangeSizeMismatchErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 77, name);

  return v3;
}

+ (id)invalidBaseCharacterErrorForCharacter:(unsigned __int16)character base:(signed __int16)base
{
  baseCopy = base;
  characterCopy = character;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 79, base);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, baseCopy, v8);
  objc_msgSend_setArgIndex1_(v6, v10, v9, v11);

  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%C", v13, characterCopy);
  objc_msgSend_setExtraInfoString_(v6, v15, v14, v16);

  return v6;
}

+ (id)invalidUnitStringError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 80, v5);
  objc_msgSend_setUnitName_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)differentDimensionsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 81, name);

  return v3;
}

+ (id)nonMetricUnitPrefixErrorForUnitString:(id)string
{
  stringCopy = string;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 82, v5);
  objc_msgSend_setUnitName_(v6, v7, stringCopy, v8);

  return v6;
}

+ (id)arrayValueNotNumberErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 92, name, *&number);

  return v4;
}

+ (id)comparisonTypeErrorForLeftType:(char)type rightType:(char)rightType
{
  rightTypeCopy = rightType;
  typeCopy = type;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, a2, 96, rightType);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, typeCopy, v8);
  objc_msgSend_setArgIndex1_(v6, v10, v9, v11);

  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, rightTypeCopy, v13);
  objc_msgSend_setArgIndex2_(v6, v15, v14, v16);

  return v6;
}

+ (id)multipleDurationsErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 97, name);

  return v3;
}

+ (id)negativeArrayValueErrorForFunctionName:(id)name argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 99, name, *&number);

  return v4;
}

+ (id)invalidRegexError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 109, v5);
  objc_msgSend_setValueToMatch_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)noConditionIsTrueErrorForFunctionName:(id)name
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 110, name);

  return v3;
}

+ (id)noTradingInformationErrorWithNextAvailableDate:(id)date
{
  dateCopy = date;
  v9 = objc_msgSend_errorForErrorType_(TSCEError, v4, 116, v5);
  if (dateCopy)
  {
    v10 = MEMORY[0x277CCABB0];
    objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v6, v7, v8);
    v14 = objc_msgSend_numberWithDouble_(v10, v11, v12, v13);
    objc_msgSend_setDateAsTimeInterval_(v9, v15, v14, v16);
  }

  return v9;
}

+ (id)invalidStockCodeError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 117, v5);
  objc_msgSend_setExtraInfoString_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)remoteDataUnavailableErrorWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 120, v5);
  objc_msgSend_setExtraInfoString_(v6, v7, attributeCopy, v8);

  return v6;
}

+ (id)matrixNotSquareError:(id)error argIndex:(int)index
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 145, error, *&index);

  return v4;
}

+ (id)cannotAcceptLambdaError:(id)error argIndex:(int)index
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 148, error, *&index);

  return v4;
}

+ (id)requiresLambdaArgumentError:(id)error argIndex:(int)index
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 149, error, *&index);

  return v4;
}

+ (id)wrongArityForLambdaError:(id)error providedArity:(int)arity expectedArity:(int)expectedArity
{
  v5 = *&expectedArity;
  v6 = *&arity;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 150, error);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9);
  objc_msgSend_setArgIndex2_(v7, v11, v10, v12);

  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v5, v14);
  objc_msgSend_setArgIndex3_(v7, v16, v15, v17);

  return v7;
}

+ (id)requiresIdentifierError:(id)error argIndex:(int)index
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 152, error, *&index);

  return v4;
}

+ (id)unacceptableIdentifierError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 153, v5);
  objc_msgSend_setExtraInfoString_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)repeatedIdentifierError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_errorForErrorType_(TSCEError, v4, 154, v5);
  objc_msgSend_setExtraInfoString_(v6, v7, errorCopy, v8);

  return v6;
}

+ (id)unboundVariableError:(id)error variableName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_errorForErrorType_functionName_(TSCEError, v6, 166, error);
  objc_msgSend_setExtraInfoString_(v7, v8, nameCopy, v9);

  return v7;
}

+ (id)arrayTooLargeError:(id)error
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 157, error);

  return v3;
}

+ (id)outOfArrayBoundsError:(id)error
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 161, error);

  return v3;
}

+ (id)matrixTooLargeError:(id)error
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 167, error);

  return v3;
}

+ (id)checkForTooLargeArrayNumColumns:(unsigned int)columns numRows:(unsigned int)rows functionName:(id)name
{
  nameCopy = name;
  if (columns > 0x10C8E0 || rows > 0x10C8E0 || rows * columns >= 0x119B99EC401)
  {
    v10 = objc_msgSend_arrayTooLargeError_(TSCEError, v7, nameCopy, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)checkForTooLargeMatrixNumColumns:(unsigned int)columns numRows:(unsigned int)rows functionName:(id)name
{
  nameCopy = name;
  if (columns > 0x3E8 || rows > 0x3E8 || rows * columns >= 0xF4241)
  {
    v10 = objc_msgSend_matrixTooLargeError_(TSCEError, v7, nameCopy, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)evaluationRecursingTooDeepError:(id)error
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 168, error);

  return v3;
}

- (BOOL)isNativelyEqual:(id)equal
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEError isNativelyEqual:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEError.mm", v8);
  v13 = objc_msgSend_nativeType(self, v10, v11, v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v6, v9, 3178, 0, "isNativelyEqual not implemented for type: %d", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  return 0;
}

+ (BOOL)errorForRichTextStorage:(id)storage outValue:(id *)value
{
  storageCopy = storage;
  v9 = 0;
  v11 = objc_msgSend_attachmentCount(storageCopy, v6, v7, v8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(storageCopy, v10, i, 0);
      v20 = objc_msgSend_elementKind(v13, v14, v15, v16);
      if ((v20 & 0xBF9FF) != 0)
      {
        if ((v20 & 0x120) != 0)
        {
          objc_msgSend_autoNumberAttachmentError(TSCEError, v17, v18, v19);
        }

        else
        {
          objc_msgSend_attachmentError(TSCEError, v17, v18, v19);
        }
        v23 = ;
        if (value)
        {
          *value = objc_msgSend_errorValue_(TSCEErrorValue, v21, v23, v22);
        }

        v9 = 1;
      }
    }
  }

  return v9 & 1;
}

+ (id)contentBlockedSpillError:(id)error spillRange:(TSUCellRect)range spillBlocker:(TSUCellRect)blocker
{
  size = blocker.size;
  origin = blocker.origin;
  v7 = range.size;
  v8 = range.origin;
  v10 = objc_msgSend_errorForErrorType_(TSCEError, a2, 138, *&range.origin);
  objc_msgSend_setSpillRangeSize_(v10, v11, *&error, v12);
  objc_msgSend_setSpillRange_(v10, v13, v8, v7);
  objc_msgSend_setSpillBlocker_(v10, v14, origin, size);

  return v10;
}

+ (id)mergeBlockedSpillError:(id)error spillRange:(TSUCellRect)range spillBlocker:(TSUCellRect)blocker
{
  size = blocker.size;
  origin = blocker.origin;
  v7 = range.size;
  v8 = range.origin;
  v10 = objc_msgSend_errorForErrorType_(TSCEError, a2, 139, *&range.origin);
  objc_msgSend_setSpillRangeSize_(v10, v11, *&error, v12);
  objc_msgSend_setSpillRange_(v10, v13, v8, v7);
  objc_msgSend_setSpillBlocker_(v10, v14, origin, size);

  return v10;
}

+ (id)tableSizeBlockedSpillError:(id)error spillRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = objc_msgSend_errorForErrorType_(TSCEError, a2, 140, *&range.origin);
  objc_msgSend_setSpillRange_(v7, v8, origin, size);
  objc_msgSend_setSpillRangeSize_(v7, v9, *&error, v10);

  return v7;
}

+ (id)requiresOneDimArrayInputError:(id)error argumentNumber:(int)number
{
  v4 = objc_msgSend_errorForErrorType_functionName_argIndex_(TSCEError, a2, 160, error, *&number);

  return v4;
}

+ (id)padWithValuesNotProvided:(id)provided
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 163, provided);

  return v3;
}

+ (id)delimiterValueNotProvided:(id)provided
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 164, provided);

  return v3;
}

+ (id)sizeMismatchInputError:(id)error
{
  v3 = objc_msgSend_errorForErrorType_functionName_(TSCEError, a2, 162, error);

  return v3;
}

+ (id)inconsistantParameterFormatError:(int)error argIndex2:(int)index2 functionName:(id)name
{
  v5 = *&index2;
  v6 = *&error;
  nameCopy = name;
  v10 = objc_msgSend_errorForErrorType_(TSCEError, v8, 170, v9);
  objc_msgSend_setFunctionName_(v10, v11, nameCopy, v12);
  v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v6, v14);
  objc_msgSend_setArgIndex1_(v10, v16, v15, v17);

  v20 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, v5, v19);
  objc_msgSend_setArgIndex2_(v10, v21, v20, v22);

  return v10;
}

@end