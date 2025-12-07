@interface HKHRSampleClassificationCollectionCollection
- (HKHRSampleClassificationCollectionCollection)initWithClassificationCollections:(id)collections;
- (HKHRSampleClassificationCollectionCollection)initWithCoder:(id)coder;
@end

@implementation HKHRSampleClassificationCollectionCollection

- (HKHRSampleClassificationCollectionCollection)initWithClassificationCollections:(id)collections
{
  collectionsCopy = collections;
  v9.receiver = self;
  v9.super_class = HKHRSampleClassificationCollectionCollection;
  v6 = [(HKHRSampleClassificationCollectionCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classificationCollections, collections);
  }

  return v7;
}

- (HKHRSampleClassificationCollectionCollection)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKHRSampleClassificationCollectionCollection;
  v5 = [(HKHRSampleClassificationCollectionCollection *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ClassificationCollections"];
    classificationCollections = v5->_classificationCollections;
    v5->_classificationCollections = v9;
  }

  return v5;
}

@end