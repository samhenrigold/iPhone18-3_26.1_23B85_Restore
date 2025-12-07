@interface TSTLocalAccumulator
- (id)description;
@end

@implementation TSTLocalAccumulator

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = (objc_msgSend_idOfFirstOccurence(self, a2, v2, v3) >> 32);
  Occurence = objc_msgSend_idOfFirstOccurence(self, v7, v8, v9);
  v14 = objc_msgSend_count(self, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"cellID:%u, %u, count:%lu", v16, v6, Occurence, v14);
}

@end