@interface MSRankedSuggester
+ (id)availablebundleIDsForMediaSuggestions;
+ (id)defaultRequest;
+ (void)availableBundleIDsWithCompletion:(id)completion;
- (NSString)description;
- (NSString)requestIdentifier;
- (id)candidatesForRequestOptions:(id)options;
- (id)candidatesForRequestOptions:(id)options from:(id)from to:(id)to;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setRequestIdentifier:(id)identifier;
- (void)suggestionsWith:(id)with completion:(id)completion;
- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)options completion:(id)completion;
@end

@implementation MSRankedSuggester

- (NSString)requestIdentifier
{
  sub_22CA05598();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setRequestIdentifier:(id)identifier
{
  v4 = sub_22CA20E20();
  v6 = v5;
  selfCopy = self;
  sub_22CA05640(v4, v6);
}

+ (id)defaultRequest
{
  swift_getObjCClassMetadata();
  v2 = sub_22CA056D4();

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  MSRankedSuggester.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSRankedSuggester.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSRankedSuggester.encode(with:)(coderCopy);
}

- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)options completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = options;
  v7[3] = v6;
  v7[4] = self;
  optionsCopy = options;
  selfCopy = self;

  sub_22CA0EBDC(&unk_22CA24868, v7);
}

+ (id)availablebundleIDsForMediaSuggestions
{
  static MSRankedSuggester.availablebundleIDsForMediaSuggestions()();
  v2 = sub_22CA20EB0();

  return v2;
}

+ (void)availableBundleIDsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static MSRankedSuggester.availableBundleIDs(completion:)(sub_22CA0CDB8, v4);
}

- (void)suggestionsWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  sub_22CA0B1CC(withCopy, sub_22CA0CC30, v7);
}

- (id)candidatesForRequestOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  MSRankedSuggester.candidates(for:)(optionsCopy);

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EB0();

  return v6;
}

- (id)candidatesForRequestOptions:(id)options from:(id)from to:(id)to
{
  v7 = sub_22CA209F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_22CA209D0();
  sub_22CA209D0();
  optionsCopy = options;
  selfCopy = self;
  MSRankedSuggester.candidates(for:from:to:)(optionsCopy, v13, v11);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  type metadata accessor for MSSuggestion(0);
  v17 = sub_22CA20EB0();

  return v17;
}

@end