@interface ENExposureSummaryItem
- (ENExposureSummaryItem)initWithXPCObject:(id)object error:(id *)error;
- (void)encodeWithXPCObject:(id)object;
- (void)roundDurations;
@end

@implementation ENExposureSummaryItem

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  maximumScore = self->_maximumScore;
  xdict = objectCopy;
  if (maximumScore != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "mxSc", maximumScore);
    objectCopy = xdict;
  }

  scoreSum = self->_scoreSum;
  if (scoreSum != 0.0)
  {
    xpc_dictionary_set_double(xdict, "scoreSum", scoreSum);
    objectCopy = xdict;
  }

  weightedDurationSum = self->_weightedDurationSum;
  if (weightedDurationSum != 0.0)
  {
    xpc_dictionary_set_double(xdict, "wds", weightedDurationSum);
    objectCopy = xdict;
  }
}

- (void)roundDurations
{
  v2 = vdupq_n_s64(0x404E000000000000uLL);
  *&self->_maximumScore = vmulq_f64(vrndpq_f64(vdivq_f64(*&self->_maximumScore, v2)), v2);
  self->_weightedDurationSum = ceil(self->_weightedDurationSum / 60.0) * 60.0;
}

- (ENExposureSummaryItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENExposureSummaryItem *)self init];
  if (!v7)
  {
    if (error)
    {
      ENErrorF(2, "super init failed");
LABEL_12:
      *error = v11 = 0;
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_7;
  }

  v8 = MEMORY[0x2383EE9C0](objectCopy);
  if (v8 != MEMORY[0x277D86468])
  {
    if (error)
    {
      ENErrorF(2, "XPC non-dict");
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = OUTLINED_FUNCTION_2(v8, "mxSc", &v7->_maximumScore);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = OUTLINED_FUNCTION_2(v9, "scoreSum", &v7->_scoreSum);
  if (!v10 || !OUTLINED_FUNCTION_2(v10, "wds", &v7->_weightedDurationSum))
  {
    goto LABEL_13;
  }

  v11 = v7;
LABEL_7:

  return v11;
}

@end