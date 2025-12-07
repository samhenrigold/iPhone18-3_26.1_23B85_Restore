@interface ATXWatchSmartStacksLayoutSelector
- (ATXWatchSmartStacksLayoutSelector)init;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
@end

@implementation ATXWatchSmartStacksLayoutSelector

- (ATXWatchSmartStacksLayoutSelector)init
{
  type metadata accessor for WatchSmartStackLayoutSelector();
  *(&self->super.isa + OBJC_IVAR___ATXWatchSmartStacksLayoutSelector_layoutSelector) = sub_2267B7230();
  v4.receiver = self;
  v4.super_class = ATXWatchSmartStacksLayoutSelector;
  return [(ATXWatchSmartStacksLayoutSelector *)&v4 init];
}

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  sub_2263B5030(0, &qword_28138F9A0, 0x277D42068);
  v6 = sub_226836568();
  v7 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR___ATXWatchSmartStacksLayoutSelector_layoutSelector)) + 0x50);
  selfCopy = self;
  v9 = v7(typeCopy, v6);

  return v9;
}

@end