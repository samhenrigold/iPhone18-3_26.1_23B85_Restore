@interface PRGenerativeExperiencesRunner
- (PRGenerativeExperiencesRunner)init;
- (void)requestCancellationForToken:(unint64_t)token;
- (void)requestReviewWithAttributedString:(id)string range:(_NSRange)range options:(id)options completionHandler:(id)handler;
- (void)requestRewritingWithAttributedString:(id)string range:(_NSRange)range rewritingType:(id)type options:(id)options completionHandler:(id)handler;
- (void)requestShortFormRepliesWithContextHistory:(id)history documentType:(id)type options:(id)options completionHandler:(id)handler;
@end

@implementation PRGenerativeExperiencesRunner

- (PRGenerativeExperiencesRunner)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PRGenerativeExperiencesRunner();
  return [(PRGenerativeExperiencesRunner *)&v3 init];
}

- (void)requestCancellationForToken:(unint64_t)token
{
  v3 = [objc_allocWithZone(sub_1D2BF3FC8()) init];
  sub_1D2BF3FB8();
}

- (void)requestShortFormRepliesWithContextHistory:(id)history documentType:(id)type options:(id)options completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_1D2BF3FF8();
  v12 = v11;
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  _Block_copy(v9);
  historyCopy = history;
  selfCopy = self;
  sub_1D2BF2C00(historyCopy, v10, v12, options, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)requestReviewWithAttributedString:(id)string range:(_NSRange)range options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC72BCD8, &qword_1D2BFD980);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = _Block_copy(handler);
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_1D2BF4048();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = string;
  v17[5] = location;
  v17[6] = length;
  v17[7] = options;
  v17[8] = sub_1D2BF3470;
  v17[9] = v15;
  stringCopy = string;
  sub_1D2BF13E0(0, 0, v13, &unk_1D2BFDA40, v17);
}

- (void)requestRewritingWithAttributedString:(id)string range:(_NSRange)range rewritingType:(id)type options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v12 = _Block_copy(handler);
  v13 = sub_1D2BF3FF8();
  v15 = v14;
  if (options)
  {
    options = sub_1D2BF3FE8();
  }

  _Block_copy(v12);
  stringCopy = string;
  selfCopy = self;
  sub_1D2BF2FAC(stringCopy, location, length, v13, v15, options, v12);
  _Block_release(v12);
  _Block_release(v12);
}

@end