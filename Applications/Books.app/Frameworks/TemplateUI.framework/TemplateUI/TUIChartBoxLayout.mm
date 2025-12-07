@interface TUIChartBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIChartBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(TUILayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  v9 = objc_msgSend_box(self);
  chartType = [v9 chartType];
  v11 = objc_msgSend_isEqualToString_(chartType);

  objc_msgSend_box(self);
  if (v11)
    v37 = {;
    identifier = [v37 identifier];
    v38 = objc_msgSend_box(self);
    title = [v38 title];
    v36 = objc_msgSend_box(self);
    footer = [v36 footer];
    v35 = objc_msgSend_box(self);
    columns = [v35 columns];
    v34 = objc_msgSend_box(self);
    [v34 cornerRadius];
    v13 = v12;
    v33 = objc_msgSend_box(self);
    [v33 progress];
    v15 = v14;
    v16 = objc_msgSend_box(self);
    [v16 spacing];
    v18 = v17;
    v19 = objc_msgSend_box(self);
    color = [v19 color];
    v21 = objc_msgSend_box(self);
    backgroundColor = [v21 backgroundColor];
    v23 = objc_msgSend_box(self);
    shadowColor = [v23 shadowColor];
    v25 = [TUIBarChartView renderModelWithIdentifier:identifier title:title footer:footer columns:columns cornerRadius:color progress:backgroundColor spacing:v13 color:v15 backgroundColor:v18 shadowColor:shadowColor];

    chartType2 = identifier;
    v27 = v37;
  }

  else
    v27 = {;
    chartType2 = [v27 chartType];
    objc_msgSend_isEqualToString_(chartType2);
    v25 = 0;
  }

  [v25 setSize:{v6, v8}];
  return v25;
}

@end