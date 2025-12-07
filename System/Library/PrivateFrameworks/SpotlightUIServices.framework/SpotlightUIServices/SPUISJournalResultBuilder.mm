@interface SPUISJournalResultBuilder
- (SPUISJournalResultBuilder)initWithResult:(id)result;
- (id)buildFootnote;
@end

@implementation SPUISJournalResultBuilder

- (SPUISJournalResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SPUISJournalResultBuilder;
  v5 = [(SPUISResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISJournalResultBuilder *)v5 setDateCreated:v6];
  }

  return v5;
}

- (id)buildFootnote
{
  v13[3] = *MEMORY[0x277D85DE8];
  dateCreated = [(SPUISJournalResultBuilder *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(SPUISJournalResultBuilder *)self dateCreated];
    v5 = [SPUISDateFormatManager dynamicMediumStringFromDate:dateCreated2];

    if ([v5 length])
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Entry" value:0 table:0];

      v13[0] = v7;
      v13[1] = @" · ";
      v13[2] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
      v9 = [v8 componentsJoinedByString:&stru_287C50EE8];

      buildFootnote = [MEMORY[0x277D4C598] textWithString:v9];

      goto LABEL_6;
    }
  }

  v12.receiver = self;
  v12.super_class = SPUISJournalResultBuilder;
  buildFootnote = [(SPUISResultBuilder *)&v12 buildFootnote];
LABEL_6:

  return buildFootnote;
}

@end