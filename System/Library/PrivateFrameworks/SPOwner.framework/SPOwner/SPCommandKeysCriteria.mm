@interface SPCommandKeysCriteria
+ (id)driftModeledCriteria;
+ (id)matchDateInterval:(id)interval;
+ (id)matchPrimaryIndices:(id)indices;
+ (id)matchSecondaryIndex:(unint64_t)index hint:(unsigned __int8)hint;
+ (id)matchSequence:(unsigned __int8)sequence index:(unsigned int)index hint:(unsigned __int8)hint;
- (SPCommandKeysCriteria)initWithCoder:(id)coder;
- (SPCommandKeysCriteria)initWithDateInterval:(id)interval sequence:(id)sequence indices:(id)indices index:(id)index hint:(id)hint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCommandKeysCriteria

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  dateInterval = [(SPCommandKeysCriteria *)self dateInterval];
  [v4 setDateInterval:dateInterval];

  sequence = [(SPCommandKeysCriteria *)self sequence];
  [v4 setSequence:sequence];

  indices = [(SPCommandKeysCriteria *)self indices];
  v8 = [indices copy];
  [v4 setIndices:v8];

  index = [(SPCommandKeysCriteria *)self index];
  [v4 setIndex:index];

  hint = [(SPCommandKeysCriteria *)self hint];
  [v4 setHint:hint];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_sequence forKey:@"sequence"];
  [coderCopy encodeObject:self->_indices forKey:@"indices"];
  [coderCopy encodeObject:self->_index forKey:@"index"];
  [coderCopy encodeObject:self->_hint forKey:@"hint"];
}

- (SPCommandKeysCriteria)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequence"];
  sequence = self->_sequence;
  self->_sequence = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"index"];
  index = self->_index;
  self->_index = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
  hint = self->_hint;
  self->_hint = v11;

  v13 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"indices"];

  indices = self->_indices;
  self->_indices = v16;

  return self;
}

- (SPCommandKeysCriteria)initWithDateInterval:(id)interval sequence:(id)sequence indices:(id)indices index:(id)index hint:(id)hint
{
  intervalCopy = interval;
  sequenceCopy = sequence;
  indicesCopy = indices;
  indexCopy = index;
  hintCopy = hint;
  v20.receiver = self;
  v20.super_class = SPCommandKeysCriteria;
  v17 = [(SPCommandKeysCriteria *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(SPCommandKeysCriteria *)v17 setDateInterval:intervalCopy];
    [(SPCommandKeysCriteria *)v18 setSequence:sequenceCopy];
    [(SPCommandKeysCriteria *)v18 setIndices:indicesCopy];
    [(SPCommandKeysCriteria *)v18 setIndex:indexCopy];
    [(SPCommandKeysCriteria *)v18 setHint:hintCopy];
  }

  return v18;
}

+ (id)matchSequence:(unsigned __int8)sequence index:(unsigned int)index hint:(unsigned __int8)hint
{
  hintCopy = hint;
  v6 = *&index;
  sequenceCopy = sequence;
  v8 = [SPCommandKeysCriteria alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sequenceCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:hintCopy];
  v12 = [(SPCommandKeysCriteria *)v8 initWithDateInterval:0 sequence:v9 indices:0 index:v10 hint:v11];

  return v12;
}

+ (id)matchDateInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [[SPCommandKeysCriteria alloc] initWithDateInterval:intervalCopy sequence:0 indices:0 index:0 hint:0];

  return v4;
}

+ (id)matchPrimaryIndices:(id)indices
{
  indicesCopy = indices;
  v4 = [[SPCommandKeysCriteria alloc] initWithDateInterval:0 sequence:&unk_2875F2BB0 indices:indicesCopy index:0 hint:0];

  return v4;
}

+ (id)matchSecondaryIndex:(unint64_t)index hint:(unsigned __int8)hint
{
  hintCopy = hint;
  v6 = [SPCommandKeysCriteria alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:index];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:hintCopy];
  v9 = [(SPCommandKeysCriteria *)v6 initWithDateInterval:0 sequence:&unk_2875F2BC8 indices:0 index:v7 hint:v8];

  return v9;
}

+ (id)driftModeledCriteria
{
  v2 = [[SPCommandKeysCriteria alloc] initWithDateInterval:0 sequence:0 indices:0 index:0 hint:0];

  return v2;
}

@end