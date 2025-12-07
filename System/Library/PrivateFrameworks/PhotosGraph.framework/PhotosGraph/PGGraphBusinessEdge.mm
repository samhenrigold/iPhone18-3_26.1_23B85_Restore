@interface PGGraphBusinessEdge
- (BOOL)hasProperties:(id)properties;
- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)edgeDescription;
- (id)initFromSourceNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate;
- (id)propertyDictionary;
- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys;
@end

@implementation PGGraphBusinessEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphBusinessEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v9 edgeDescription];
  v5 = edgeDescription;
  if (self->_hasRoutineInfo)
  {
    v6 = @"Has Routine Info, ";
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  v7 = [v3 stringWithFormat:@"%@ (%@%@ - %@)", edgeDescription, v6, self->_universalStartDate, self->_universalEndDate];

  return v7;
}

- (id)propertyDictionary
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v12[0] = v3;
  v11[1] = @"routine";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRoutineInfo];
  v12[1] = v4;
  v11[2] = @"universalStartDate";
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_universalStartDate timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v12[2] = v6;
  v11[3] = @"universalEndDate";
  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_universalEndDate timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v18 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_confidence))
    {

      v9 = [v5 objectForKeyedSubscript:@"routine"];
      v7 = v9;
      if (!v9 || self->_hasRoutineInfo == [v9 BOOLValue])
      {

        v10 = [v5 objectForKeyedSubscript:@"universalStartDate"];
        v7 = v10;
        if (!v10 || ([v10 doubleValue], v12 = v11, -[NSDate timeIntervalSince1970](self->_universalStartDate, "timeIntervalSince1970"), v12 == v13))
        {

          v14 = [v5 objectForKeyedSubscript:@"universalEndDate"];
          v7 = v14;
          if (!v14 || ([v14 doubleValue], v16 = v15, -[NSDate timeIntervalSince1970](self->_universalEndDate, "timeIntervalSince1970"), v16 == v17))
          {
            v18 = 1;
          }
        }
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys
{
  v4.receiver = self;
  v4.super_class = PGGraphBusinessEdge;
  [(PGGraphOptimizedEdge *)&v4 checkConsistencyOfProperties:properties withExtraPropertyKeys:keys];
}

- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v18 = [propertiesCopy objectForKeyedSubscript:@"confidence"];

  if (v18)
  {
    v19 = propertiesCopy;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesCopy];
    *&v20 = weight;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v19 setObject:v21 forKeyedSubscript:@"confidence"];

    v22 = [propertiesCopy objectForKeyedSubscript:@"utcs"];

    if (v22)
    {
      v23 = [propertiesCopy objectForKeyedSubscript:@"utcs"];
      [v19 setObject:v23 forKeyedSubscript:@"universalStartDate"];

      [v19 setObject:0 forKeyedSubscript:@"utcs"];
    }

    v24 = [propertiesCopy objectForKeyedSubscript:@"utce"];

    if (v24)
    {
      v25 = [propertiesCopy objectForKeyedSubscript:@"utce"];
      [v19 setObject:v25 forKeyedSubscript:@"universalEndDate"];

      [v19 setObject:0 forKeyedSubscript:@"utce"];
    }
  }

  v26 = [(PGGraphBusinessEdge *)self initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy properties:v19];

  return v26;
}

- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v16 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v16);
}

- (id)initFromSourceNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v20.receiver = self;
  v20.super_class = PGGraphBusinessEdge;
  v17 = [(PGGraphEdge *)&v20 initWithSourceNode:node targetNode:businessNode];
  p_isa = &v17->super.super.super.super.isa;
  if (v17)
  {
    v17->_confidence = confidence;
    v17->_hasRoutineInfo = info;
    objc_storeStrong(&v17->_universalStartDate, date);
    objc_storeStrong(p_isa + 8, endDate);
  }

  return p_isa;
}

@end