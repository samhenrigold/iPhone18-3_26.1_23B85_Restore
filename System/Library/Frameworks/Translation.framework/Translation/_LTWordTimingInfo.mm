@interface _LTWordTimingInfo
- (NSString)unredactedDescription;
- (_LTWordTimingInfo)initWithCoder:(id)coder;
- (_NSRange)textRange;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTWordTimingInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy encodeObject:self->_word forKey:@"word"];
  sampleIndex = self->_sampleIndex;
  if ((sampleIndex & 0x80000000) != 0)
  {
    v8 = _LTOSLogXPC(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v8 encodeWithCoder:v9, v10, v11, v12, v13, v14, v15];
    }

    sampleIndex = self->_sampleIndex;
  }

  v16 = [coderCopy encodeInt32:sampleIndex forKey:@"sampleIndex"];
  offset = self->_offset;
  if ((offset & 0x80000000) != 0)
  {
    v19 = _LTOSLogXPC(v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v19 encodeWithCoder:v20, v21, v22, v23, v24, v25, v26];
    }

    offset = self->_offset;
  }

  v27 = [coderCopy encodeInt32:offset forKey:@"offset"];
  length = self->_length;
  if ((length & 0x80000000) != 0)
  {
    v30 = _LTOSLogXPC(v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v30 encodeWithCoder:v31, v32, v33, v34, v35, v36, v37];
    }

    length = self->_length;
  }

  [coderCopy encodeInt32:length forKey:@"length"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  v38 = [MEMORY[0x277CCAE60] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [coderCopy encodeObject:v38 forKey:@"textRange"];
}

- (_LTWordTimingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTWordTimingInfo;
  v5 = [(_LTWordTimingInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"word"];
    word = v5->_word;
    v5->_word = v6;

    v5->_sampleIndex = [coderCopy decodeInt32ForKey:@"sampleIndex"];
    v5->_offset = [coderCopy decodeInt32ForKey:@"offset"];
    v5->_length = [coderCopy decodeInt32ForKey:@"length"];
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textRange"];
    v5->_textRange.location = [v9 rangeValue];
    v5->_textRange.length = v10;

    v11 = v5;
  }

  return v5;
}

- (NSString)unredactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  word = self->_word;
  sampleIndex = self->_sampleIndex;
  v8 = NSStringFromRange(self->_textRange);
  v9 = [v3 stringWithFormat:@"<%@: %p _sampleIndex: [%u]; _word: %@; _textRange: %@; _length: %u; _offset %u; _startTime %f>", v5, self, sampleIndex, word, v8, self->_length, self->_offset, *&self->_startTime];;

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sampleIndex = self->_sampleIndex;
  v7 = [(NSString *)self->_word length];
  v8 = NSStringFromRange(self->_textRange);
  v9 = [v3 stringWithFormat:@"<%@: %p _sampleIndex: [%u]; _word length: %zu; _textRange: %@; _length: %u; _offset %u; _startTime %f>", v5, self, sampleIndex, v7, v8, self->_length, self->_offset, *&self->_startTime];;

  return v9;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end