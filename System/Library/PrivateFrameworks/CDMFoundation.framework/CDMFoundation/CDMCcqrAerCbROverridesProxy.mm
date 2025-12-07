@interface CDMCcqrAerCbROverridesProxy
- (_TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy)initWithUseTrie:(BOOL)trie useMemory:(BOOL)memory templatePattern:(id)pattern;
- (id)getRewriteHypothesisWithOverrideUtterance:(id)utterance;
- (id)matchWithInputs:(id)inputs;
@end

@implementation CDMCcqrAerCbROverridesProxy

- (_TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy)initWithUseTrie:(BOOL)trie useMemory:(BOOL)memory templatePattern:(id)pattern
{
  memoryCopy = memory;
  trieCopy = trie;
  if (pattern)
  {
    v7 = sub_1DC51772C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return CDMCcqrAerCbROverridesProxy.init(useTrie:useMemory:templatePattern:)(trieCopy, memoryCopy, v7, v9);
}

- (id)matchWithInputs:(id)inputs
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  sub_1DC517A1C();

  return 0;
}

- (id)getRewriteHypothesisWithOverrideUtterance:(id)utterance
{
  v4 = sub_1DC51772C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1DC338A74(v4, v6);

  return v8;
}

@end