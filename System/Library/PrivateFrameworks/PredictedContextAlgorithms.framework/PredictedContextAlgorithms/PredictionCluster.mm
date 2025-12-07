@interface PredictionCluster
- (BOOL)isEqual:(id)equal;
@end

@implementation PredictionCluster

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy && ([equalCopy visitProbability], v7 = v6, -[PredictionCluster visitProbability](self, "visitProbability"), v7 - v8 < 0.0001) && (objc_msgSend(v5, "visitEntryTime"), v10 = v9, -[PredictionCluster visitEntryTime](self, "visitEntryTime"), v10 - v11 < 0.0001) && (objc_msgSend(v5, "visitEntryUnc"), v13 = v12, -[PredictionCluster visitEntryUnc](self, "visitEntryUnc"), v13 - v14 < 0.0001) && (objc_msgSend(v5, "visitExitTime"), v16 = v15, -[PredictionCluster visitExitTime](self, "visitExitTime"), v16 - v17 < 0.0001) && (objc_msgSend(v5, "visitExitUnc"), v19 = v18, -[PredictionCluster visitExitUnc](self, "visitExitUnc"), v19 - v20 < 0.0001) && (v21 = objc_msgSend(v5, "visitLoiIdx"), v21 <= -[PredictionCluster visitLoiIdx](self, "visitLoiIdx")))
  {
    visitLoiString = [v5 visitLoiString];
    visitLoiString2 = [(PredictionCluster *)self visitLoiString];
    v22 = visitLoiString == visitLoiString2;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end