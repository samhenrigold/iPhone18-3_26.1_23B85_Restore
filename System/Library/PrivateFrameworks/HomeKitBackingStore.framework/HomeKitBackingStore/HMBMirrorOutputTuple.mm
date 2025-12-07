@interface HMBMirrorOutputTuple
- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)row recordRow:(unint64_t)recordRow model:(id)model queryTable:(id)table externalID:(id)d externalData:(id)data;
- (id)attributeDescriptions;
@end

@implementation HMBMirrorOutputTuple

- (id)attributeDescriptions
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBMirrorOutputTuple outputBlockRow](self, "outputBlockRow")}];
  v23 = [v3 initWithName:@"Output Block Row" value:v24];
  v25[0] = v23;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBMirrorOutputTuple recordRow](self, "recordRow")}];
  v21 = [v4 initWithName:@"Record Row" value:v22];
  v25[1] = v21;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMBMirrorOutputTuple *)self model];
  v6 = [v5 initWithName:@"Model" value:model];
  v25[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  queryTable = [(HMBMirrorOutputTuple *)self queryTable];
  v9 = [v7 initWithName:@"Query Table" value:queryTable];
  v25[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  externalID = [(HMBMirrorOutputTuple *)self externalID];
  hmbDescription = [externalID hmbDescription];
  v13 = [v10 initWithName:@"External ID" value:hmbDescription];
  v25[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  externalData = [(HMBMirrorOutputTuple *)self externalData];
  hmbDescription2 = [externalData hmbDescription];
  v17 = [v14 initWithName:@"External Data" value:hmbDescription2];
  v25[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:6];

  return v18;
}

- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)row recordRow:(unint64_t)recordRow model:(id)model queryTable:(id)table externalID:(id)d externalData:(id)data
{
  modelCopy = model;
  tableCopy = table;
  dCopy = d;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = HMBMirrorOutputTuple;
  v18 = [(HMBMirrorOutputTuple *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_outputBlockRow = row;
    v18->_recordRow = recordRow;
    objc_storeStrong(&v18->_model, model);
    objc_storeStrong(&v19->_queryTable, table);
    objc_storeStrong(&v19->_externalID, d);
    objc_storeStrong(&v19->_externalData, data);
  }

  return v19;
}

@end