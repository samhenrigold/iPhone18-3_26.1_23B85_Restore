@interface SSJournalResultBuilder
- (SSJournalResultBuilder)initWithResult:(id)result;
- (id)buildFootnote;
@end

@implementation SSJournalResultBuilder

- (SSJournalResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SSJournalResultBuilder;
  v5 = [(SSResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSJournalResultBuilder *)v5 setDateCreated:v6];
  }

  return v5;
}

- (id)buildFootnote
{
  v13[3] = *MEMORY[0x1E69E9840];
  dateCreated = [(SSJournalResultBuilder *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(SSJournalResultBuilder *)self dateCreated];
    v5 = [SSDateFormatManager dynamicMediumStringFromDate:dateCreated2];

    if ([v5 length])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Entry" value:0 table:0];

      v13[0] = v7;
      v13[1] = @" · ";
      v13[2] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
      v9 = [v8 componentsJoinedByString:&stru_1F556FE60];

      buildFootnote = [MEMORY[0x1E69CA3A0] textWithString:v9];

      goto LABEL_6;
    }
  }

  v12.receiver = self;
  v12.super_class = SSJournalResultBuilder;
  buildFootnote = [(SSResultBuilder *)&v12 buildFootnote];
LABEL_6:

  return buildFootnote;
}

@end