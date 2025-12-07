@interface TSTChartReferenceFormula
- (TSTChartReferenceFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table;
@end

@implementation TSTChartReferenceFormula

- (TSTChartReferenceFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table
{
  engineCopy = engine;
  treeCopy = tree;
  tableCopy = table;
  v18.receiver = self;
  v18.super_class = TSTChartReferenceFormula;
  v13 = [(TSTFormula *)&v18 initWithCalculationEngine:engineCopy expressionTree:treeCopy baseHostCell:cell hostTable:tableCopy];
  v16 = v13;
  if (v13)
  {
    objc_msgSend_setFunctionIndex_(v13, v14, 175, v15);
  }

  return v16;
}

@end