@interface EKAutocompleteSearch
+ (id)searchWithEventStore:(id)store searchString:(id)string maximumResultCount:(unint64_t)count ignoreScheduledEvents:(BOOL)events initialEvent:(id)event pasteboardItemProvider:(id)provider completionHandler:(id)handler;
@end

@implementation EKAutocompleteSearch

+ (id)searchWithEventStore:(id)store searchString:(id)string maximumResultCount:(unint64_t)count ignoreScheduledEvents:(BOOL)events initialEvent:(id)event pasteboardItemProvider:(id)provider completionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  providerCopy = provider;
  eventCopy = event;
  stringCopy = string;
  storeCopy = store;
  v20 = [[EKAutocompletePendingSearch alloc] initWithEventStore:storeCopy searchString:stringCopy maximumResultCount:count ignoreScheduledEvents:eventsCopy initialEvent:eventCopy pasteboardItemProvider:providerCopy completionHandler:handlerCopy];

  return v20;
}

@end