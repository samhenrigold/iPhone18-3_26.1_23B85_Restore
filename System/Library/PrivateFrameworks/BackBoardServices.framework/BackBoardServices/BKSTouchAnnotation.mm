@interface BKSTouchAnnotation
- (BKSTouchAnnotation)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchAnnotation

- (BKSTouchAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BKSTouchAnnotation;
  v5 = [(BKSTouchAnnotation *)&v11 init];
  if (v5)
  {
    v5->_touchIdentifier = [coderCopy decodeInt32ForKey:?];
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    text = v5->_text;
    v5->_text = v6;

    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendUnsignedInt:? withName:?];
  v6 = [succinctDescriptionBuilder appendObject:? withName:?];
  if (self->_uniqueIdentifier)
  {
    v7 = [succinctDescriptionBuilder appendObject:? withName:?];
  }

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSTouchAnnotation *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end