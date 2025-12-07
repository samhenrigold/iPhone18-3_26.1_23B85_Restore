@interface TitleInfo
- (id)debugDescription;
@end

@implementation TitleInfo

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = TitleInfo;
  v3 = [(TitleInfo *)&v6 debugDescription];
  v4 = [NSString stringWithFormat:@"%@: %@ %@ %lu %lu %lu %lu C:%@ TS:%@", v3, self->_title, self->_importantTokens, self->_tokenCountMatching, self->_tokenCountPrimary, self->_tokenCount, self->_index, self->_conditionals, self->_tokenString];

  return v4;
}

@end