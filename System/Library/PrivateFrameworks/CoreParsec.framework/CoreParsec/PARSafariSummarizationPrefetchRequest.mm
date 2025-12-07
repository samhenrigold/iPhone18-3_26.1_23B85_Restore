@interface PARSafariSummarizationPrefetchRequest
- (PARSafariSummarizationPrefetchRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSafariSummarizationPrefetchRequest

- (PARSafariSummarizationPrefetchRequest)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PARSafariSummarizationPrefetchRequest;
  v5 = [(PARRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"urlVariants"];
    urlVariants = v5->_urlVariants;
    v5->_urlVariants = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    localeString = v5->_localeString;
    v5->_localeString = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARSafariSummarizationPrefetchRequest;
  coderCopy = coder;
  [(PARRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_urlString forKey:{@"urlString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_urlVariants forKey:@"urlVariants"];
  [coderCopy encodeObject:self->_localeString forKey:@"locale"];
}

@end