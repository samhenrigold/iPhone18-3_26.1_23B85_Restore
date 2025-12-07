@interface SGDetection
+ (id)detectionWithType:(unsigned int)type text:(id)text matchRange:(_NSRange)range matchString:(id)string label:(id)label hasPhoneLabel:(BOOL)phoneLabel extractionInfo:(id)info isUnlikelyPhone:(BOOL)self0;
- (SGDetection)initWithType:(unsigned int)type extraction:(id)extraction context:(id)context contextRangeOfInterest:(_NSRange)interest label:(id)label hasPhoneLabel:(BOOL)phoneLabel match:(_NSRange)match extractionInfo:(id)self0 isUnlikelyPhone:(BOOL)self1;
- (_NSRange)contextRangeOfInterest;
- (_NSRange)match;
- (id)description;
@end

@implementation SGDetection

- (_NSRange)match
{
  length = self->_match.length;
  location = self->_match.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)contextRangeOfInterest
{
  length = self->_contextRangeOfInterest.length;
  location = self->_contextRangeOfInterest.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGDetection/%@ '%@'>", self->_label, self->_extraction];

  return v2;
}

- (SGDetection)initWithType:(unsigned int)type extraction:(id)extraction context:(id)context contextRangeOfInterest:(_NSRange)interest label:(id)label hasPhoneLabel:(BOOL)phoneLabel match:(_NSRange)match extractionInfo:(id)self0 isUnlikelyPhone:(BOOL)self1
{
  length = interest.length;
  location = interest.location;
  extractionCopy = extraction;
  contextCopy = context;
  labelCopy = label;
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = SGDetection;
  v20 = [(SGDetection *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    objc_storeStrong(&v20->_extraction, extraction);
    objc_storeStrong(&v21->_context, context);
    v21->_contextRangeOfInterest.location = location;
    v21->_contextRangeOfInterest.length = length;
    objc_storeStrong(&v21->_label, label);
    v21->_hasPhoneLabel = phoneLabel;
    v21->_match = match;
    objc_storeStrong(&v21->_extractionInfo, info);
    v21->_isUnlikelyPhone = phone;
  }

  return v21;
}

+ (id)detectionWithType:(unsigned int)type text:(id)text matchRange:(_NSRange)range matchString:(id)string label:(id)label hasPhoneLabel:(BOOL)phoneLabel extractionInfo:(id)info isUnlikelyPhone:(BOOL)self0
{
  length = range.length;
  location = range.location;
  v14 = *&type;
  textCopy = text;
  stringCopy = string;
  labelCopy = label;
  infoCopy = info;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = [textCopy length];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __112__SGDetection_detectionWithType_text_matchRange_matchString_label_hasPhoneLabel_extractionInfo_isUnlikelyPhone___block_invoke;
  v30[3] = &unk_27894EBE8;
  v30[4] = &v35;
  v30[5] = location;
  [textCopy enumerateSubstringsInRange:0 options:location usingBlock:{260, v30}];
  [textCopy length];
  [textCopy enumerateSubstringsInRange:? options:? usingBlock:?];
  v19 = v14;
  if (stringCopy)
  {
    v20 = stringCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v20 = [textCopy substringWithRange:{location, length}];
    objc_autoreleasePoolPop(v21);
  }

  v22 = [self alloc];
  v23 = objc_autoreleasePoolPush();
  v24 = [textCopy substringWithRange:{v36[3], v32[3] - v36[3]}];
  objc_autoreleasePoolPop(v23);
  LOBYTE(v28) = phone;
  LOBYTE(v27) = phoneLabel;
  v25 = [v22 initWithType:v19 extraction:v20 context:v24 contextRangeOfInterest:location - v36[3] label:length hasPhoneLabel:labelCopy match:v27 extractionInfo:location isUnlikelyPhone:{length, infoCopy, v28}];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v25;
}

uint64_t __112__SGDetection_detectionWithType_text_matchRange_matchString_label_hasPhoneLabel_extractionInfo_isUnlikelyPhone___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((*(result + 40) - a3) >= 0x50)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a7 = 1;
  }

  return result;
}

uint64_t __112__SGDetection_detectionWithType_text_matchRange_matchString_label_hasPhoneLabel_extractionInfo_isUnlikelyPhone___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a3 - *(result + 40)) >= 0x50)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a7 = 1;
  }

  return result;
}

@end