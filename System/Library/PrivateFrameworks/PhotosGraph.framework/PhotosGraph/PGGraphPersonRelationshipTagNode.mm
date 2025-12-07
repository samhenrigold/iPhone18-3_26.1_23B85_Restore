@interface PGGraphPersonRelationshipTagNode
+ (MARelation)personWithTag;
+ (id)filter;
+ (id)filterWithTag:(unint64_t)tag;
+ (id)labelForRelationshipTag:(unint64_t)tag;
+ (id)personWithTagWithConfidence:(double)confidence;
+ (id)supportedTagsAsStrings;
+ (unint64_t)relationshipTagFromString:(id)string;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSArray)localizedSynonyms;
- (NSString)localizedName;
- (PGGraphPersonRelationshipTagNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPersonRelationshipTagNode)initWithPersonRelationshipTag:(unint64_t)tag;
- (PGGraphPersonRelationshipTagNodeCollection)collection;
- (id)_localizationKeyForRelationshipTagLabel:(id)label;
- (unint64_t)tag;
@end

@implementation PGGraphPersonRelationshipTagNode

- (NSArray)localizedSynonyms
{
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v4 = [(PGGraphPersonRelationshipTagNode *)self _localizationKeyForRelationshipTagLabel:label];

  v5 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v4];

  return v5;
}

- (id)_localizationKeyForRelationshipTagLabel:(id)label
{
  v3 = _localizationKeyForRelationshipTagLabel__onceToken;
  labelCopy = label;
  if (v3 != -1)
  {
    dispatch_once(&_localizationKeyForRelationshipTagLabel__onceToken, &__block_literal_global_34406);
  }

  v5 = [_localizationKeyForRelationshipTagLabel__searchKeyByLabel objectForKeyedSubscript:labelCopy];

  return v5;
}

void __76__PGGraphPersonRelationshipTagNode__localizationKeyForRelationshipTagLabel___block_invoke()
{
  v3[14] = *MEMORY[0x277D85DE8];
  v2[0] = @"Mother";
  v2[1] = @"Father";
  v3[0] = @"PGPersonMotherSearchableText";
  v3[1] = @"PGPersonFatherSearchableText";
  v2[2] = @"Parent";
  v2[3] = @"Child";
  v3[2] = @"PGPersonParentSearchableText";
  v3[3] = @"PGPersonChildSearchableText";
  v2[4] = @"Son";
  v2[5] = @"Daughter";
  v3[4] = @"PGPersonSonSearchableText";
  v3[5] = @"PGPersonDaughterSearchableText";
  v2[6] = @"Brother";
  v2[7] = @"Sister";
  v3[6] = @"PGPersonBrotherSearchableText";
  v3[7] = @"PGPersonSisterSearchableText";
  v2[8] = @"Sibling";
  v2[9] = @"Family";
  v3[8] = @"PGPersonSiblingSearchableText";
  v3[9] = @"PGPersonFamilySearchableText";
  v2[10] = @"Partner";
  v2[11] = @"Friend";
  v3[10] = @"PGPersonPartnerSearchableText";
  v3[11] = @"PGPersonFriendSearchableText";
  v2[12] = @"Coworker";
  v2[13] = @"Alumni";
  v3[12] = @"PGPersonCoworkerSearchableText";
  v3[13] = @"PGPersonAlumniSearchableText";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:14];
  v1 = _localizationKeyForRelationshipTagLabel__searchKeyByLabel;
  _localizationKeyForRelationshipTagLabel__searchKeyByLabel = v0;
}

- (NSString)localizedName
{
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v4 = [(PGGraphPersonRelationshipTagNode *)self _localizationKeyForRelationshipTagLabel:label];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  return v6;
}

- (PGGraphPersonRelationshipTagNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPersonRelationshipTagNodeCollection alloc] initWithNode:self];

  return v2;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v5 = [v3 initWithLabel:label domain:305];

  return v5;
}

- (unint64_t)tag
{
  v3 = objc_opt_class();
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v5 = [v3 relationshipTagFromString:label];

  return v5;
}

- (PGGraphPersonRelationshipTagNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v7 = [objc_opt_class() relationshipTagFromString:labelCopy];

  return [(PGGraphPersonRelationshipTagNode *)self initWithPersonRelationshipTag:v7];
}

- (PGGraphPersonRelationshipTagNode)initWithPersonRelationshipTag:(unint64_t)tag
{
  v8.receiver = self;
  v8.super_class = PGGraphPersonRelationshipTagNode;
  v4 = [(PGGraphNode *)&v8 init];
  if (v4)
  {
    v5 = [objc_opt_class() labelForRelationshipTag:tag];
    label = v4->_label;
    v4->_label = v5;
  }

  return v4;
}

+ (id)personWithTagWithConfidence:(double)confidence
{
  v3 = [PGGraphRelationshipTagEdge filterWithConfidence:confidence];
  inRelation = [v3 inRelation];

  return inRelation;
}

+ (MARelation)personWithTag
{
  v2 = +[PGGraphRelationshipTagEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterWithTag:(unint64_t)tag
{
  v3 = [self labelForRelationshipTag:tag];
  v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:305];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:305];

  return v2;
}

+ (id)labelForRelationshipTag:(unint64_t)tag
{
  if (tag > 0xE)
  {
    return @"Mother";
  }

  else
  {
    return off_278883618[tag];
  }
}

+ (unint64_t)relationshipTagFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Mother"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Father"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Parent"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Child"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Son"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Daughter"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"Brother"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"Sister"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"Sibling"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"Family"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"Partner"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"Friend"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"Coworker"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"Alumni"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)supportedTagsAsStrings
{
  v6[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Mother";
  v6[1] = @"Father";
  v6[2] = @"Parent";
  v6[3] = @"Child";
  v6[4] = @"Son";
  v6[5] = @"Daughter";
  v6[6] = @"Brother";
  v6[7] = @"Sister";
  v6[8] = @"Sibling";
  v6[9] = @"Family";
  v6[10] = @"Partner";
  v6[11] = @"Friend";
  v6[12] = @"Coworker";
  v6[13] = @"Alumni";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:14];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end