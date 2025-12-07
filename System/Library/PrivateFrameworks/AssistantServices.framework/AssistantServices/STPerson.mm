@interface STPerson
- (NSString)description;
- (STPerson)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STPerson

- (STPerson)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = STPerson;
  v5 = [(STSiriModelObject *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_contactHandles"];
    contactHandles = v5->_contactHandles;
    v5->_contactHandles = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STPerson;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contactHandles forKey:{@"_contactHandles", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_fullName forKey:@"_fullName"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fullName = [(STPerson *)self fullName];
  contactHandles = [(STPerson *)self contactHandles];
  v7 = [v3 stringWithFormat:@"<%@: %p fullName=%@ contactHandles=%@>", v4, self, fullName, contactHandles];;

  return v7;
}

@end