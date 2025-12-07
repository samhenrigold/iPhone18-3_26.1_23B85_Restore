@interface TTSRuleReplacement
- (NSString)identifier;
- (TTSRuleset)ruleset;
- (unint64_t)effectiveIndex;
@end

@implementation TTSRuleReplacement

- (unint64_t)effectiveIndex
{
  group = [(TTSRuleReplacement *)self group];

  if (group)
  {
    group2 = [(TTSRuleReplacement *)self group];
    endIndex = [group2 endIndex];

    return endIndex;
  }

  else
  {

    return MEMORY[0x1EEE66B58](self, sel_index);
  }
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  ruleset = [(TTSRuleReplacement *)self ruleset];
  identifier = [ruleset identifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[TTSRuleReplacement originalRulesetIndex](self, "originalRulesetIndex")}];
  v7 = [v3 stringWithFormat:@"%@_%@", identifier, v6];

  return v7;
}

- (TTSRuleset)ruleset
{
  WeakRetained = objc_loadWeakRetained(&self->_ruleset);

  return WeakRetained;
}

@end