@interface ATXLinkTranscriptUtil
+ (id)linkTranscriptPublisherForBundleId:(id)id fromDate:(id)date toDate:(id)toDate maxEvents:(id)events reversed:(BOOL)reversed error:(id *)error;
+ (id)systemLinkTranscriptPublisherFromDate:(id)date toDate:(id)toDate error:(id *)error;
@end

@implementation ATXLinkTranscriptUtil

+ (id)systemLinkTranscriptPublisherFromDate:(id)date toDate:(id)toDate error:(id *)error
{
  v7 = MEMORY[0x277D23CC0];
  toDateCopy = toDate;
  dateCopy = date;
  v10 = objc_alloc_init(v7);
  v11 = [v10 transcriptPublisherWithStreamName:@"System" fromDate:dateCopy toDate:toDateCopy maxEvents:0 reversed:0 error:error];

  return v11;
}

+ (id)linkTranscriptPublisherForBundleId:(id)id fromDate:(id)date toDate:(id)toDate maxEvents:(id)events reversed:(BOOL)reversed error:(id *)error
{
  reversedCopy = reversed;
  v13 = MEMORY[0x277D23CC0];
  eventsCopy = events;
  toDateCopy = toDate;
  dateCopy = date;
  idCopy = id;
  v18 = objc_alloc_init(v13);
  v19 = [v18 transcriptPublisherWithStreamName:idCopy fromDate:dateCopy toDate:toDateCopy maxEvents:eventsCopy reversed:reversedCopy error:error];

  return v19;
}

@end