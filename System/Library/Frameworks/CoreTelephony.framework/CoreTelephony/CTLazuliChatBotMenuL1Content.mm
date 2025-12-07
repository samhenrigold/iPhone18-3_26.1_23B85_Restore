@interface CTLazuliChatBotMenuL1Content
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMenuL1Content:(id)content;
- (CTLazuliChatBotMenuL1Content)initWithCoder:(id)coder;
- (CTLazuliChatBotMenuL1Content)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotMenuL1Content

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  type = [(CTLazuliChatBotMenuL1Content *)self type];
  type2 = [(CTLazuliChatBotMenuL1Content *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliMenuL1ContentType(&type2)];
  [v3 appendFormat:@", item {%@} = %@", objc_opt_class(), self->_item];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL1Content:(id)content
{
  contentCopy = content;
  type = [(CTLazuliChatBotMenuL1Content *)self type];
  if (type == [contentCopy type])
  {
    type2 = [(CTLazuliChatBotMenuL1Content *)self type];
    if (type2 == 1)
    {
      item = [contentCopy item];
      item2 = [(CTLazuliChatBotMenuL1Content *)self item];
      v9 = [item isEqualToCTLazuliChatBotMenuL2:item2];
    }

    else
    {
      if (type2)
      {
        v10 = 1;
        goto LABEL_9;
      }

      item = [contentCopy item];
      item2 = [(CTLazuliChatBotMenuL1Content *)self item];
      v9 = [item isEqualToCTLazuliChatBotSuggestedChip:item2];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL1Content *)self isEqualToCTLazuliChatBotMenuL1Content:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMenuL1Content allocWithZone:?];
  [(CTLazuliChatBotMenuL1Content *)v5 setType:self->_type];
  v6 = [self->_item copyWithZone:zone];
  [(CTLazuliChatBotMenuL1Content *)v5 setItem:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];

  [coderCopy encodeObject:self->_item forKey:@"kItemKey"];
}

- (CTLazuliChatBotMenuL1Content)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1Content;
  v5 = [(CTLazuliChatBotMenuL1Content *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kItemKey"];
    item = v5->_item;
    v5->_item = v11;
  }

  return v5;
}

- (CTLazuliChatBotMenuL1Content)initWithReflection:(const void *)reflection
{
  v28 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotMenuL1Content;
  v4 = [(CTLazuliChatBotMenuL1Content *)&v12 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(reflection);
    v5 = *(reflection + 60);
    if (v5 == 1)
    {
      v15 = 0u;
      memset(v14, 0, sizeof(v14));
      if (*(reflection + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v14, *(reflection + 1), *(reflection + 2));
      }

      else
      {
        *v14 = *(reflection + 8);
        *&v14[16] = *(reflection + 3);
      }

      *&v14[24] = 0;
      v15 = 0uLL;
      std::vector<Lazuli::ChatBotMenuL2Content>::__init_with_size[abi:nn200100]<Lazuli::ChatBotMenuL2Content*,Lazuli::ChatBotMenuL2Content*>(&v14[24], *(reflection + 4), *(reflection + 5), 0x34F72C234F72C235 * ((*(reflection + 5) - *(reflection + 4)) >> 3));
      v9 = [[CTLazuliChatBotMenuL2 alloc] initWithReflection:v14];
      item = v4->_item;
      v4->_item = v9;

      v13 = &v14[24];
      std::vector<Lazuli::ChatBotMenuL2Content>::__destroy_vector::operator()[abi:nn200100](&v13);
      if ((v14[23] & 0x80000000) != 0)
      {
        operator delete(*v14);
      }
    }

    else if (!v5)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v6 = *(reflection + 2);
      memset(v14, 0, sizeof(v14));
      *v14 = v6;
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](&v14[8], reflection + 16);
      v7 = [[CTLazuliChatBotSuggestedChip alloc] initWithReflection:v14];
      v8 = v4->_item;
      v4->_item = v7;

      if (v27 != -1)
      {
        (off_1EF013898[v27])(&v13, &v14[8]);
      }
    }
  }

  return v4;
}

@end