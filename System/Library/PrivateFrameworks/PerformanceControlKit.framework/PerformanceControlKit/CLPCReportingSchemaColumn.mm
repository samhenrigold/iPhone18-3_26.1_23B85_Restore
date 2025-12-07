@interface CLPCReportingSchemaColumn
- (CLPCReportingSchemaColumn)init;
- (id)dictionaryRepresentation;
@end

@implementation CLPCReportingSchemaColumn

- (CLPCReportingSchemaColumn)init
{
  v7.receiver = self;
  v7.super_class = CLPCReportingSchemaColumn;
  v2 = [(CLPCReportingSchemaColumn *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = *(v2 + 6);
    *(v2 + 6) = 0;

    v5 = v3;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  v11[6] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v10[0] = @"Format";
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "format")}];
    v11[0] = v2;
    v10[1] = @"Type";
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "type")}];
    v11[1] = v3;
    v10[2] = @"StatID";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(selfCopy, "statID")}];
    v11[2] = v4;
    v10[3] = @"MetadataType";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "metadataType")}];
    v11[3] = v5;
    v10[4] = @"ValueID";
    valueID = [selfCopy valueID];
    if (valueID)
    {
      [selfCopy valueID];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v7 = ;
    v11[4] = v7;
    v10[5] = @"Name";
    name = [selfCopy name];
    v11[5] = name;
    selfCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  }

  return selfCopy;
}

@end