@interface ICASLayoutData
- (ICASLayoutData)initWithLayoutType:(id)type isTimelineView:(id)view;
- (id)toDict;
@end

@implementation ICASLayoutData

- (ICASLayoutData)initWithLayoutType:(id)type isTimelineView:(id)view
{
  typeCopy = type;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = ICASLayoutData;
  v9 = [(ICASLayoutData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutType, type);
    objc_storeStrong(&v10->_isTimelineView, view);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"layoutType";
  layoutType = [(ICASLayoutData *)self layoutType];
  if (layoutType)
  {
    layoutType2 = [(ICASLayoutData *)self layoutType];
  }

  else
  {
    layoutType2 = objc_opt_new();
  }

  v5 = layoutType2;
  v11[1] = @"isTimelineView";
  v12[0] = layoutType2;
  isTimelineView = [(ICASLayoutData *)self isTimelineView];
  if (isTimelineView)
  {
    isTimelineView2 = [(ICASLayoutData *)self isTimelineView];
  }

  else
  {
    isTimelineView2 = objc_opt_new();
  }

  v8 = isTimelineView2;
  v12[1] = isTimelineView2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end