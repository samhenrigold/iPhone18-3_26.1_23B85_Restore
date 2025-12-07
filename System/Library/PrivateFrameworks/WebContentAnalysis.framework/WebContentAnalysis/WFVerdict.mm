@interface WFVerdict
+ (id)verdictWithRestriction:(BOOL)restriction URL:(id)l evidence:(int)evidence LSMEvaluationResult:(id)result message:(id)message;
- (void)dealloc;
- (void)setLSMEvaluationResult:(id)result;
- (void)setMessage:(id)message;
- (void)setURL:(id)l;
@end

@implementation WFVerdict

+ (id)verdictWithRestriction:(BOOL)restriction URL:(id)l evidence:(int)evidence LSMEvaluationResult:(id)result message:(id)message
{
  v9 = *&evidence;
  restrictionCopy = restriction;
  v12 = objc_opt_new();
  [v12 setRestricted:restrictionCopy];
  [v12 setURL:l];
  [v12 setEvidence:v9];
  [v12 setLSMEvaluationResult:result];
  [v12 setMessage:message];

  return v12;
}

- (void)setLSMEvaluationResult:(id)result
{
  resultCopy = result;

  self->LSMEvaluationResult = result;
}

- (void)setMessage:(id)message
{
  messageCopy = message;

  self->message = message;
}

- (void)setURL:(id)l
{
  lCopy = l;

  self->URL = l;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFVerdict;
  [(WFVerdict *)&v3 dealloc];
}

@end