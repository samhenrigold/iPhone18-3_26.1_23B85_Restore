@interface QSSMutableRecognitionPhraseTokensAlternatives
- (BOOL)has_unsuggested_alternatives;
- (QSSMutableRecognitionPhraseTokensAlternatives)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setHas_unsuggested_alternatives:(BOOL)has_unsuggested_alternatives;
- (void)setTok_phrases:(id)tok_phrases;
@end

@implementation QSSMutableRecognitionPhraseTokensAlternatives

- (void)setHas_unsuggested_alternatives:(BOOL)has_unsuggested_alternatives
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:has_unsuggested_alternatives];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)has_unsuggested_alternatives
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_unsuggested_alternatives"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setTok_phrases:(id)tok_phrases
{
  v4 = [tok_phrases copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableRecognitionPhraseTokensAlternatives)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRecognitionPhraseTokensAlternatives;
  v2 = [(QSSMutableRecognitionPhraseTokensAlternatives *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end