@interface TTSSubstitution
- (BOOL)isEqual:(id)equal;
- (TTSSubstitution)init;
- (TTSSubstitution)initWithCoder:(id)coder;
- (_NSRange)replacementRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setReplacementString:(id)string;
@end

@implementation TTSSubstitution

- (TTSSubstitution)init
{
  v6.receiver = self;
  v6.super_class = TTSSubstitution;
  v2 = [(TTSSubstitution *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(TTSSubstitution *)v2 setUuid:uUID];

    [(TTSSubstitution *)v2 setIgnoreCase:1];
    [(TTSSubstitution *)v2 setAppliesToAllApps:1];
    v4 = v2;
  }

  return v2;
}

- (TTSSubstitution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = TTSSubstitution;
  v5 = [(TTSSubstitution *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalString"];
    [(TTSSubstitution *)v5 setOriginalString:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacementString"];
    [(TTSSubstitution *)v5 setReplacementString:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phonemes"];
    [(TTSSubstitution *)v5 setPhonemes:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"languages"];
    [(TTSSubstitution *)v5 setLanguages:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"voiceIds"];
    [(TTSSubstitution *)v5 setVoiceIds:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"bundleIdentifiers"];
    [(TTSSubstitution *)v5 setBundleIdentifiers:v20];

    -[TTSSubstitution setActive:](v5, "setActive:", [coderCopy decodeBoolForKey:@"active"]);
    -[TTSSubstitution setIgnoreCase:](v5, "setIgnoreCase:", [coderCopy decodeBoolForKey:@"ignoreCase"]);
    -[TTSSubstitution setAppliesToAllApps:](v5, "setAppliesToAllApps:", [coderCopy decodeBoolForKey:@"appliesToAllApps"]);
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(TTSSubstitution *)v5 setUuid:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacementRange"];
    rangeValue = [v22 rangeValue];
    [(TTSSubstitution *)v5 setReplacementRange:rangeValue, v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originalString = [(TTSSubstitution *)self originalString];
  [coderCopy encodeObject:originalString forKey:@"originalString"];

  replacementString = [(TTSSubstitution *)self replacementString];
  [coderCopy encodeObject:replacementString forKey:@"replacementString"];

  phonemes = [(TTSSubstitution *)self phonemes];
  [coderCopy encodeObject:phonemes forKey:@"phonemes"];

  languages = [(TTSSubstitution *)self languages];
  [coderCopy encodeObject:languages forKey:@"languages"];

  voiceIds = [(TTSSubstitution *)self voiceIds];
  [coderCopy encodeObject:voiceIds forKey:@"voiceIds"];

  bundleIdentifiers = [(TTSSubstitution *)self bundleIdentifiers];
  [coderCopy encodeObject:bundleIdentifiers forKey:@"bundleIdentifiers"];

  [coderCopy encodeBool:-[TTSSubstitution active](self forKey:{"active"), @"active"}];
  [coderCopy encodeBool:-[TTSSubstitution ignoreCase](self forKey:{"ignoreCase"), @"ignoreCase"}];
  [coderCopy encodeBool:-[TTSSubstitution appliesToAllApps](self forKey:{"appliesToAllApps"), @"appliesToAllApps"}];
  uuid = [(TTSSubstitution *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  v12 = MEMORY[0x1E696B098];
  replacementRange = [(TTSSubstitution *)self replacementRange];
  v15 = [v12 valueWithRange:{replacementRange, v14}];
  [coderCopy encodeObject:v15 forKey:@"replacementRange"];
}

- (void)dealloc
{
  [(TTSSubstitution *)self setUuid:0];
  [(TTSSubstitution *)self setOriginalString:0];
  [(TTSSubstitution *)self setReplacementString:0];
  [(TTSSubstitution *)self setPhonemes:0];
  [(TTSSubstitution *)self setLanguages:0];
  [(TTSSubstitution *)self setVoiceIds:0];
  [(TTSSubstitution *)self setBundleIdentifiers:0];
  [(TTSSubstitution *)self setReplacementRange:0x7FFFFFFFFFFFFFFFLL, 0];
  v3.receiver = self;
  v3.super_class = TTSSubstitution;
  [(TTSSubstitution *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TTSSubstitution allocWithZone:?]];
  originalString = [(TTSSubstitution *)self originalString];
  [(TTSSubstitution *)v4 setOriginalString:originalString];

  replacementString = [(TTSSubstitution *)self replacementString];
  [(TTSSubstitution *)v4 setReplacementString:replacementString];

  phonemes = [(TTSSubstitution *)self phonemes];
  [(TTSSubstitution *)v4 setPhonemes:phonemes];

  languages = [(TTSSubstitution *)self languages];
  [(TTSSubstitution *)v4 setLanguages:languages];

  [(TTSSubstitution *)v4 setIgnoreCase:[(TTSSubstitution *)self ignoreCase]];
  [(TTSSubstitution *)v4 setActive:[(TTSSubstitution *)self active]];
  bundleIdentifiers = [(TTSSubstitution *)self bundleIdentifiers];
  [(TTSSubstitution *)v4 setBundleIdentifiers:bundleIdentifiers];

  [(TTSSubstitution *)v4 setAppliesToAllApps:[(TTSSubstitution *)self appliesToAllApps]];
  voiceIds = [(TTSSubstitution *)self voiceIds];
  [(TTSSubstitution *)v4 setVoiceIds:voiceIds];

  replacementRange = [(TTSSubstitution *)self replacementRange];
  [(TTSSubstitution *)v4 setReplacementRange:replacementRange, v12];
  return v4;
}

- (void)setReplacementString:(id)string
{
  v4 = [string copy];
  replacementString = self->_replacementString;
  self->_replacementString = v4;

  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];

  v7 = [(NSString *)self->_replacementString stringByTrimmingCharactersInSet:invertedSet];
  v8 = [v7 length];

  if (!v8)
  {
    self->_isReplacementTextAllPunctuation = 1;
  }

  if ([(NSString *)self->_replacementString length])
  {
    v9 = [(NSString *)self->_replacementString substringToIndex:1];
    v10 = [(NSString *)self->_replacementString substringFromIndex:[(NSString *)self->_replacementString length]- 1];
    v11 = [v9 stringByTrimmingCharactersInSet:invertedSet];
    if ([v11 length])
    {
    }

    else
    {
      v12 = [v10 stringByTrimmingCharactersInSet:invertedSet];
      v13 = [v12 length];

      if (!v13)
      {
        self->_isReplacementTextSurroundedByPunctuation = 1;
      }
    }
  }

  else
  {
    self->_isReplacementTextSurroundedByPunctuation = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(TTSSubstitution *)self uuid];
    uuid2 = [equalCopy uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(TTSSubstitution *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = TTSSubstitution;
  v4 = [(TTSSubstitution *)&v11 description];
  originalString = [(TTSSubstitution *)self originalString];
  replacementString = [(TTSSubstitution *)self replacementString];
  phonemes = [(TTSSubstitution *)self phonemes];
  languages = [(TTSSubstitution *)self languages];
  v9 = [v3 stringWithFormat:@"%@: Original: %@, Replacement: %@, Phonemes: %@, Languages: %@", v4, originalString, replacementString, phonemes, languages];

  return v9;
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end