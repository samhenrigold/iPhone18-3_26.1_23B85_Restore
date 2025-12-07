@interface DESExceptionCatchingEvaluator
- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)evaluator;
- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set binaryResult:(id *)result error:(id *)error;
- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set error:(id *)error;
- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error;
- (void)performEvaluation:(id)evaluation;
@end

@implementation DESExceptionCatchingEvaluator

- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v9.receiver = self;
  v9.super_class = DESExceptionCatchingEvaluator;
  v6 = [(DESExceptionCatchingEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_evaluator, evaluator);
  }

  return v7;
}

- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error
{
  recipeCopy = recipe;
  infoCopy = info;
  dataCopy = data;
  attachmentsCopy = attachments;
  v16 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy recordInfo:infoCopy recordData:dataCopy attachments:attachmentsCopy error:error];

  return v16;
}

- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set error:(id *)error
{
  recipeCopy = recipe;
  setCopy = set;
  v10 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy matchingRecordSet:setCopy error:error];

  return v10;
}

- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set binaryResult:(id *)result error:(id *)error
{
  recipeCopy = recipe;
  setCopy = set;
  v12 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy matchingRecordSet:setCopy binaryResult:result error:error];

  return v12;
}

- (void)performEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  [(DESRecipeEvaluation *)self->_evaluator performEvaluation:evaluationCopy];
}

@end