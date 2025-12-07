@interface PGGraphRelationshipEdge
+ (MAEdgeFilter)confirmedRelationshipFilter;
+ (MAEdgeFilter)inferredRelationshipFilter;
+ (id)familyRelationshipLabels;
+ (id)filter;
+ (id)filterWithRelationship:(id)relationship;
+ (id)filterWithRelationship:(id)relationship status:(unint64_t)status;
+ (id)filterWithSource:(unsigned __int8)source;
+ (id)propertiesWithRelationshipSource:(unsigned __int8)source;
+ (id)relationshipSourceToString:(unsigned __int8)string;
+ (id)supportedRelationshipLabels;
- (BOOL)hasProperties:(id)properties;
- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (PGGraphRelationshipEdge)initWithRelationship:(id)relationship fromPersonNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence status:(unint64_t)status familyHolidayAttendanceRate:(double)rate hasParentContactName:(BOOL)name hasSameFamilyNameAsMePerson:(BOOL)self0 numberOfMomentsAtHome:(unint64_t)self1 hasAnniversaryDate:(BOOL)self2 isTopTwoPersonsSocialGroup:(BOOL)self3 numberOfLoveEmojisExchanged:(unint64_t)self4 isTopPerson:(BOOL)self5 friendNightOutAttendanceRate:(double)self6 partnerTripAttendanceRate:(double)self7 friendsAndFamilyTripAttendanceRate:(double)self8 weekendAppearanceRatio:(double)self9 momentsAtWorkAppearanceRate:(double)appearanceRate calendarAttendanceRatio:(double)attendanceRatio isPersonAgeDifferentThanMeNode:(BOOL)meNode isPersonOldEnoughToBeParentOrGrandparent:(BOOL)grandparent isPersonYoungEnoughToBeMeNodeChild:(BOOL)child source:(unsigned __int8)source;
- (id)_readableStringForProperty:(id)property;
- (id)edgeDescription;
- (id)propertyDictionary;
@end

@implementation PGGraphRelationshipEdge

- (id)_readableStringForProperty:(id)property
{
  v12[20] = *MEMORY[0x277D85DE8];
  v11[0] = @"confidence";
  v11[1] = @"rfamhol";
  v12[0] = @"SignalConfidence";
  v12[1] = @"SignalFamilyHolidayAttendanceRatio";
  v11[2] = @"rparnam";
  v11[3] = @"rfamnam";
  v12[2] = @"SignalHasParentContactName";
  v12[3] = @"SignalHasSameFamilyNameAsMePerson";
  v11[4] = @"gwnummmtshome";
  v11[5] = @"rhasanniv";
  v12[4] = @"SignalNumberOfMomentsAtHome";
  v12[5] = @"SignalHasAnniversaryDate";
  v11[6] = @"rtop2sg";
  v11[7] = @"rlovexch";
  v12[6] = @"SignalIsTopTwoPersonsSocialGroup";
  v12[7] = @"SignalNumberOfLoveEmojisExchanged";
  v11[8] = @"rtop";
  v11[9] = @"rfrndnghtout";
  v12[8] = @"SignalTopPerson";
  v12[9] = @"SignalFriendNightOutAttendanceRatio";
  v11[10] = @"rprtnrtrip";
  v11[11] = @"rfrfamtrip";
  v12[10] = @"SignalPartnerTripAttendanceRatio";
  v12[11] = @"SignalFriendsAndFamilyTripAttendanceRatio";
  v11[12] = @"rwkend";
  v11[13] = @"rwork";
  v12[12] = @"SignalWeekendAppearanceRatio";
  v12[13] = @"SignalCoworkerWorkMomentsRatio";
  v11[14] = @"rcal";
  v11[15] = @"ragediff";
  v12[14] = @"SignalCalendarAttendanceRatio";
  v12[15] = @"SignalAgeDifferentThanMeNode";
  v11[16] = @"rold";
  v11[17] = @"rchild";
  v12[16] = @"SignalAgeOldEnoughToBeParentOrGrandparent";
  v12[17] = @"SignalAgeYoungEnoughToBeMeNodeChild";
  v11[18] = @"relstatus";
  v11[19] = @"relsource";
  v12[18] = @"RelationshipStatus";
  v12[19] = @"RelationshipSource";
  v3 = MEMORY[0x277CBEAC0];
  propertyCopy = property;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:v11 count:20];
  v6 = [v5 objectForKeyedSubscript:propertyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = propertyCopy;
  }

  v9 = v8;

  return v8;
}

- (id)edgeDescription
{
  v31 = *MEMORY[0x277D85DE8];
  propertyDictionary = [(PGGraphRelationshipEdge *)self propertyDictionary];
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = propertyDictionary;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(PGGraphRelationshipEdge *)self _readableStringForProperty:v10];
        v12 = MEMORY[0x277CCACA8];
        v13 = [v5 objectForKeyedSubscript:v10];
        v14 = [v12 stringWithFormat:@"%@", v13];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v11, v14];
        [array addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v16 = [array sortedArrayUsingSelector:sel_compare_];
  v17 = MEMORY[0x277CCACA8];
  v25.receiver = self;
  v25.super_class = PGGraphRelationshipEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v25 edgeDescription];
  relationship = self->_relationship;
  [(PGGraphRelationshipEdge *)self confidence];
  v21 = v20;
  v22 = [v16 componentsJoinedByString:{@", "}];
  v23 = [v17 stringWithFormat:@"%@ (%@, confidence = %f, %@)", edgeDescription, relationship, v21, v22];

  return v23;
}

- (id)propertyDictionary
{
  v26[20] = *MEMORY[0x277D85DE8];
  v25[0] = @"confidence";
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v26[0] = v24;
  v25[1] = @"rfamhol";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_familyHolidayAttendanceRate];
  v26[1] = v23;
  v25[2] = @"rparnam";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 48) & 1];
  v26[2] = v22;
  v25[3] = @"rfamnam";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 1) & 1];
  v26[3] = v21;
  v25[4] = @"gwnummmtshome";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 10)];
  v26[4] = v20;
  v25[5] = @"rhasanniv";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 2) & 1];
  v26[5] = v19;
  v25[6] = @"rtop2sg";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 3) & 1];
  v26[6] = v18;
  v25[7] = @"rlovexch";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 11)];
  v26[7] = v17;
  v25[8] = @"rtop";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 4) & 1];
  v26[8] = v16;
  v25[9] = @"rfrndnghtout";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_friendNightOutAttendanceRate];
  v26[9] = v15;
  v25[10] = @"rprtnrtrip";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_partnerTripAttendanceRate];
  v26[10] = v14;
  v25[11] = @"rfrfamtrip";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_friendsAndFamilyTripAttendanceRate];
  v26[11] = v3;
  v25[12] = @"rwkend";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weekendAppearanceRatio];
  v26[12] = v4;
  v25[13] = @"rwork";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_momentsAtWorkAppearanceRate];
  v26[13] = v5;
  v25[14] = @"rcal";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_calendarAttendanceRatio];
  v26[14] = v6;
  v25[15] = @"ragediff";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 5) & 1];
  v26[15] = v7;
  v25[16] = @"rold";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 48) >> 6) & 1];
  v26[16] = v8;
  v25[17] = @"rchild";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPersonYoungEnoughToBeMeNodeChild];
  v26[17] = v9;
  v25[18] = @"relstatus";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  v26[18] = v10;
  v25[19] = @"relsource";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_source];
  v26[19] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:20];

  return v12;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v35 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_confidence))
    {

      v9 = [v5 objectForKeyedSubscript:@"rfamhol"];
      v7 = v9;
      if (!v9 || ([v9 doubleValue], v10 == self->_familyHolidayAttendanceRate))
      {

        v11 = [v5 objectForKeyedSubscript:@"rparnam"];
        v7 = v11;
        if (!v11 || [v11 BOOLValue] == (*(self + 48) & 1))
        {

          v12 = [v5 objectForKeyedSubscript:@"rfamnam"];
          v7 = v12;
          if (!v12 || [v12 BOOLValue] != ((*(self + 48) & 2) == 0))
          {

            v13 = [v5 objectForKeyedSubscript:@"gwnummmtshome"];
            v7 = v13;
            if (!v13 || [v13 unsignedIntegerValue] == *(self + 10))
            {

              v14 = [v5 objectForKeyedSubscript:@"rhasanniv"];
              v7 = v14;
              if (!v14 || [v14 BOOLValue] != ((*(self + 48) & 4) == 0))
              {

                v15 = [v5 objectForKeyedSubscript:@"rtop2sg"];
                v7 = v15;
                if (!v15 || [v15 BOOLValue] != ((*(self + 48) & 8) == 0))
                {

                  v16 = [v5 objectForKeyedSubscript:@"rlovexch"];
                  v7 = v16;
                  if (!v16 || [v16 unsignedIntegerValue] == *(self + 11))
                  {

                    v17 = [v5 objectForKeyedSubscript:@"rtop"];
                    v7 = v17;
                    if (!v17 || [v17 BOOLValue] != ((*(self + 48) & 0x10) == 0))
                    {

                      v18 = [v5 objectForKeyedSubscript:@"rfrndnghtout"];
                      v7 = v18;
                      if (!v18 || ([v18 doubleValue], v19 == self->_friendNightOutAttendanceRate))
                      {

                        v20 = [v5 objectForKeyedSubscript:@"rprtnrtrip"];
                        v7 = v20;
                        if (!v20 || ([v20 doubleValue], v21 == self->_partnerTripAttendanceRate))
                        {

                          v22 = [v5 objectForKeyedSubscript:@"rfrfamtrip"];
                          v7 = v22;
                          if (!v22 || ([v22 doubleValue], v23 == self->_friendsAndFamilyTripAttendanceRate))
                          {

                            v24 = [v5 objectForKeyedSubscript:@"rwkend"];
                            v7 = v24;
                            if (!v24 || ([v24 doubleValue], v25 == self->_weekendAppearanceRatio))
                            {

                              v26 = [v5 objectForKeyedSubscript:@"rwork"];
                              v7 = v26;
                              if (!v26 || ([v26 doubleValue], v27 == self->_momentsAtWorkAppearanceRate))
                              {

                                v28 = [v5 objectForKeyedSubscript:@"rcal"];
                                v7 = v28;
                                if (!v28 || ([v28 doubleValue], v29 == self->_calendarAttendanceRatio))
                                {

                                  v30 = [v5 objectForKeyedSubscript:@"ragediff"];
                                  v7 = v30;
                                  if (!v30 || [v30 BOOLValue] != ((*(self + 48) & 0x20) == 0))
                                  {

                                    v31 = [v5 objectForKeyedSubscript:@"rold"];
                                    v7 = v31;
                                    if (!v31 || [v31 BOOLValue] != ((*(self + 48) & 0x40) == 0))
                                    {

                                      v32 = [v5 objectForKeyedSubscript:@"rchild"];
                                      v7 = v32;
                                      if (!v32 || self->_isPersonYoungEnoughToBeMeNodeChild == [v32 BOOLValue])
                                      {

                                        v33 = [v5 objectForKeyedSubscript:@"relstatus"];
                                        v7 = v33;
                                        if (!v33 || [v33 unsignedIntegerValue] == self->_status)
                                        {

                                          v34 = [v5 objectForKeyedSubscript:@"relsource"];
                                          v7 = v34;
                                          if (!v34 || [v34 unsignedIntValue] == self->_source)
                                          {
                                            v35 = 1;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v35 = 1;
  }

  return v35;
}

- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v18 = [propertiesCopy objectForKeyedSubscript:@"confidence"];

  if (!v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesCopy];
    *&v20 = weight;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v19 setObject:v21 forKeyedSubscript:@"confidence"];

    propertiesCopy = v19;
  }

  v22 = [(PGGraphRelationshipEdge *)self initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy properties:propertiesCopy];

  return v22;
}

- (PGGraphRelationshipEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  labelCopy = label;
  v12 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [propertiesCopy objectForKeyedSubscript:@"rfamhol"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [propertiesCopy objectForKeyedSubscript:@"rparnam"];
  bOOLValue = [v18 BOOLValue];

  v19 = [propertiesCopy objectForKeyedSubscript:@"rfamnam"];
  bOOLValue2 = [v19 BOOLValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtshome"];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v21 = [propertiesCopy objectForKeyedSubscript:@"rhasanniv"];
  bOOLValue3 = [v21 BOOLValue];

  v22 = [propertiesCopy objectForKeyedSubscript:@"rtop2sg"];
  bOOLValue4 = [v22 BOOLValue];

  v24 = [propertiesCopy objectForKeyedSubscript:@"rlovexch"];
  unsignedIntegerValue2 = [v24 unsignedIntegerValue];

  v26 = [propertiesCopy objectForKeyedSubscript:@"rtop"];
  LOBYTE(v24) = [v26 BOOLValue];

  v27 = [propertiesCopy objectForKeyedSubscript:@"rfrndnghtout"];
  [v27 doubleValue];
  v29 = v28;

  v30 = [propertiesCopy objectForKeyedSubscript:@"rprtnrtrip"];
  [v30 doubleValue];
  v32 = v31;

  v33 = [propertiesCopy objectForKeyedSubscript:@"rfrfamtrip"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [propertiesCopy objectForKeyedSubscript:@"rwkend"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [propertiesCopy objectForKeyedSubscript:@"rwork"];
  [v39 doubleValue];
  v41 = v40;

  v42 = [propertiesCopy objectForKeyedSubscript:@"rcal"];
  [v42 doubleValue];
  v44 = v43;

  v45 = [propertiesCopy objectForKeyedSubscript:@"ragediff"];
  LOBYTE(v42) = [v45 BOOLValue];

  v46 = [propertiesCopy objectForKeyedSubscript:@"rold"];
  LOBYTE(v45) = [v46 BOOLValue];

  v47 = [propertiesCopy objectForKeyedSubscript:@"rchild"];
  LOBYTE(targetNode) = [v47 BOOLValue];

  v48 = [propertiesCopy objectForKeyedSubscript:@"relstatus"];
  unsignedIntegerValue3 = [v48 unsignedIntegerValue];

  v50 = [propertiesCopy objectForKeyedSubscript:@"relsource"];

  LOBYTE(propertiesCopy) = [v50 unsignedIntValue];
  BYTE4(v54) = propertiesCopy;
  BYTE3(v54) = targetNode;
  BYTE2(v54) = v45;
  BYTE1(v54) = v42;
  LOBYTE(v54) = v24;
  BYTE1(v53) = bOOLValue4;
  LOBYTE(v53) = bOOLValue3;
  v51 = [PGGraphRelationshipEdge initWithRelationship:"initWithRelationship:fromPersonNode:toPersonNode:confidence:status:familyHolidayAttendanceRate:hasParentContactName:hasSameFamilyNameAsMePerson:numberOfMomentsAtHome:hasAnniversaryDate:isTopTwoPersonsSocialGroup:numberOfLoveEmojisExchanged:isTopPerson:friendNightOutAttendanceRate:partnerTripAttendanceRate:friendsAndFamilyTripAttendanceRate:weekendAppearanceRatio:momentsAtWorkAppearanceRate:calendarAttendanceRatio:isPersonAgeDifferentThanMeNode:isPersonOldEnoughToBeParentOrGrandparent:isPersonYoungEnoughToBeMeNodeChild:source:" fromPersonNode:labelCopy toPersonNode:nodeCopy confidence:targetNodeCopy status:unsignedIntegerValue3 familyHolidayAttendanceRate:bOOLValue hasParentContactName:bOOLValue2 hasSameFamilyNameAsMePerson:v14 numberOfMomentsAtHome:v17 hasAnniversaryDate:v29 isTopTwoPersonsSocialGroup:v32 numberOfLoveEmojisExchanged:v35 isTopPerson:v38 friendNightOutAttendanceRate:v41 partnerTripAttendanceRate:v44 friendsAndFamilyTripAttendanceRate:unsignedIntegerValue weekendAppearanceRatio:v53 momentsAtWorkAppearanceRate:unsignedIntegerValue2 calendarAttendanceRatio:v54 isPersonAgeDifferentThanMeNode:? isPersonOldEnoughToBeParentOrGrandparent:? isPersonYoungEnoughToBeMeNodeChild:? source:?];

  return v51;
}

- (PGGraphRelationshipEdge)initWithRelationship:(id)relationship fromPersonNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence status:(unint64_t)status familyHolidayAttendanceRate:(double)rate hasParentContactName:(BOOL)name hasSameFamilyNameAsMePerson:(BOOL)self0 numberOfMomentsAtHome:(unint64_t)self1 hasAnniversaryDate:(BOOL)self2 isTopTwoPersonsSocialGroup:(BOOL)self3 numberOfLoveEmojisExchanged:(unint64_t)self4 isTopPerson:(BOOL)self5 friendNightOutAttendanceRate:(double)self6 partnerTripAttendanceRate:(double)self7 friendsAndFamilyTripAttendanceRate:(double)self8 weekendAppearanceRatio:(double)self9 momentsAtWorkAppearanceRate:(double)appearanceRate calendarAttendanceRatio:(double)attendanceRatio isPersonAgeDifferentThanMeNode:(BOOL)meNode isPersonOldEnoughToBeParentOrGrandparent:(BOOL)grandparent isPersonYoungEnoughToBeMeNodeChild:(BOOL)child source:(unsigned __int8)source
{
  personCopy = person;
  relationshipCopy = relationship;
  v50.receiver = self;
  v50.super_class = PGGraphRelationshipEdge;
  v40 = [(PGGraphEdge *)&v50 initWithSourceNode:node targetNode:personNode];
  if (v40)
  {
    v41 = [relationshipCopy copy];
    relationship = v40->_relationship;
    v40->_relationship = v41;

    v40->_confidence = confidence;
    v40->_status = status;
    v40->_familyHolidayAttendanceRate = rate;
    *(v40 + 48) = *(v40 + 48) & 0xFE | name;
    if (personCopy)
    {
      v43 = 2;
    }

    else
    {
      v43 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xFD | v43;
    *(v40 + 10) = home;
    if (date)
    {
      v44 = 4;
    }

    else
    {
      v44 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xFB | v44;
    if (group)
    {
      v45 = 8;
    }

    else
    {
      v45 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xF7 | v45;
    *(v40 + 11) = exchanged;
    if (topPerson)
    {
      v46 = 16;
    }

    else
    {
      v46 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xEF | v46;
    v40->_friendNightOutAttendanceRate = attendanceRate;
    v40->_partnerTripAttendanceRate = tripAttendanceRate;
    v40->_friendsAndFamilyTripAttendanceRate = familyTripAttendanceRate;
    v40->_weekendAppearanceRatio = ratio;
    v40->_momentsAtWorkAppearanceRate = appearanceRate;
    v40->_calendarAttendanceRatio = attendanceRatio;
    if (meNode)
    {
      v47 = 32;
    }

    else
    {
      v47 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xDF | v47;
    if (grandparent)
    {
      v48 = 64;
    }

    else
    {
      v48 = 0;
    }

    *(v40 + 48) = *(v40 + 48) & 0xBF | v48;
    v40->_isPersonYoungEnoughToBeMeNodeChild = child;
    v40->_source = source;
  }

  return v40;
}

+ (id)familyRelationshipLabels
{
  v6[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"FAMILY";
  v6[1] = @"SISTER";
  v6[2] = @"BROTHER";
  v6[3] = @"PARENT";
  v6[4] = @"MOTHER";
  v6[5] = @"FATHER";
  v6[6] = @"CHILD";
  v6[7] = @"DAUGHTER";
  v6[8] = @"SON";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)filterWithSource:(unsigned __int8)source
{
  sourceCopy = source;
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = +[PGGraphRelationshipEdge filter];
  v9 = @"relsource";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 filterBySettingProperties:v6];

  return v7;
}

+ (id)filterWithRelationship:(id)relationship status:(unint64_t)status
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [self filterWithRelationship:relationship];
  v10 = @"relstatus";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 filterBySettingProperties:v7];

  return v8;
}

+ (id)filterWithRelationship:(id)relationship
{
  v3 = MEMORY[0x277D22C20];
  relationshipCopy = relationship;
  v5 = [[v3 alloc] initWithLabel:relationshipCopy domain:300];

  return v5;
}

+ (MAEdgeFilter)inferredRelationshipFilter
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphRelationshipEdge filter];
  v6 = @"relstatus";
  v7[0] = &unk_2844821A8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  return v4;
}

+ (MAEdgeFilter)confirmedRelationshipFilter
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphRelationshipEdge filter];
  v6 = @"relstatus";
  v7[0] = &unk_284482190;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  return v4;
}

+ (id)filter
{
  v3 = objc_alloc(MEMORY[0x277D22C20]);
  supportedRelationshipLabels = [self supportedRelationshipLabels];
  v5 = [v3 initWithLabels:supportedRelationshipLabels domain:300 properties:MEMORY[0x277CBEC10]];

  return v5;
}

+ (id)propertiesWithRelationshipSource:(unsigned __int8)source
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"relsource";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:source];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)relationshipSourceToString:(unsigned __int8)string
{
  if (string)
  {
    return @"Megadome";
  }

  else
  {
    return @"Graph";
  }
}

+ (id)supportedRelationshipLabels
{
  if (supportedRelationshipLabels_onceToken != -1)
  {
    dispatch_once(&supportedRelationshipLabels_onceToken, &__block_literal_global_3372);
  }

  v3 = supportedRelationshipLabels_supportedRelationshipLabels;

  return v3;
}

void __54__PGGraphRelationshipEdge_supportedRelationshipLabels__block_invoke()
{
  v4[17] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"PARTNER";
  v4[1] = @"FATHER";
  v4[2] = @"MOTHER";
  v4[3] = @"BROTHER";
  v4[4] = @"SISTER";
  v4[5] = @"DAUGHTER";
  v4[6] = @"SON";
  v4[7] = @"PARENT";
  v4[8] = @"FAMILY";
  v4[9] = @"FAMILY_SOCIALGROUP";
  v4[10] = @"CHILD";
  v4[11] = @"FRIEND";
  v4[12] = @"COWORKER";
  v4[13] = @"COWORKER_SOCIALGROUP";
  v4[14] = @"ACQUAINTANCE";
  v4[15] = @"VIP";
  v4[16] = @"HOUSEHOLD_MEMBER";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:17];
  v2 = [v0 setWithArray:v1];
  v3 = supportedRelationshipLabels_supportedRelationshipLabels;
  supportedRelationshipLabels_supportedRelationshipLabels = v2;
}

@end