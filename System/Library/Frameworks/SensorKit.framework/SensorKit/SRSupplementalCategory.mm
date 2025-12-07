@interface SRSupplementalCategory
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRSupplementalCategory)init;
- (SRSupplementalCategory)initWithCoder:(id)coder;
- (SRSupplementalCategory)initWithIdentifier:(id)identifier;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
@end

@implementation SRSupplementalCategory

- (SRSupplementalCategory)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRSupplementalCategory)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SRSupplementalCategory;
  v4 = [(SRSupplementalCategory *)&v6 init];
  if (v4)
  {
    v4->_identifier = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRSupplementalCategory;
  [(SRSupplementalCategory *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = self->_identifier;
  identifier = [equal identifier];

  return [(NSString *)identifier isEqualToString:identifier];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ <%p>: (identifier: %@)", NSStringFromClass(v4), self, self->_identifier];
}

- (SRSupplementalCategory)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  return [(SRSupplementalCategory *)self initWithIdentifier:v4];
}

- (id)sr_dictionaryRepresentation
{
  v5[1] = *MEMORY[0x1E69E9840];
  identifier = &stru_1F48BB5C0;
  if (self->_identifier)
  {
    identifier = self->_identifier;
  }

  v4 = @"identifier";
  v5[0] = identifier;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

@end