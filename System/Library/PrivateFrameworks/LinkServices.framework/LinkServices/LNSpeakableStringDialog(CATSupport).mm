@interface LNSpeakableStringDialog(CATSupport)
- (id)localeXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNSpeakableStringDialog(CATSupport)

- (id)localeXML
{
  fullSpeakableString = [self fullSpeakableString];
  printed = [fullSpeakableString printed];
  localeIdentifier = [self localeIdentifier];
  v5 = [printed localizedStringForLocaleIdentifier:localeIdentifier];
  ln_stringByEscapingForXML = [v5 ln_stringByEscapingForXML];

  fullSpeakableString2 = [self fullSpeakableString];
  spoken = [fullSpeakableString2 spoken];
  localeIdentifier2 = [self localeIdentifier];
  v10 = [spoken localizedStringForLocaleIdentifier:localeIdentifier2];
  ln_stringByEscapingForXML2 = [v10 ln_stringByEscapingForXML];

  supportingSpeakableString = [self supportingSpeakableString];
  printed2 = [supportingSpeakableString printed];
  localeIdentifier3 = [self localeIdentifier];
  v15 = [printed2 localizedStringForLocaleIdentifier:localeIdentifier3];
  ln_stringByEscapingForXML3 = [v15 ln_stringByEscapingForXML];

  supportingSpeakableString2 = [self supportingSpeakableString];
  spoken2 = [supportingSpeakableString2 spoken];
  localeIdentifier4 = [self localeIdentifier];
  v20 = [spoken2 localizedStringForLocaleIdentifier:localeIdentifier4];
  ln_stringByEscapingForXML4 = [v20 ln_stringByEscapingForXML];

  if (ln_stringByEscapingForXML3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<full><print>%@</print><speak>%@</speak></full><supporting><print>%@</print><speak>%@</speak></supporting>", ln_stringByEscapingForXML, ln_stringByEscapingForXML2, ln_stringByEscapingForXML3, ln_stringByEscapingForXML4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<print>%@</print><speak>%@</speak>", ln_stringByEscapingForXML, ln_stringByEscapingForXML2, v27, v28];
  }
  v22 = ;
  v23 = MEMORY[0x1E696AEC0];
  localeIdentifier5 = [self localeIdentifier];
  v25 = [v23 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>%@</dialog>\n</all>\n</cat>\n", localeIdentifier5, v22];

  return v25;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v23 = @"locale";
  localeIdentifier = [self localeIdentifier];
  v24[0] = localeIdentifier;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v8 = getCATClass_softClass_690;
  v22 = getCATClass_softClass_690;
  if (!getCATClass_softClass_690)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getCATClass_block_invoke_691;
    v18[3] = &unk_1E74B26D0;
    v18[4] = &v19;
    __getCATClass_block_invoke_691(v18);
    v8 = v20[3];
  }

  v9 = v8;
  _Block_object_dispose(&v19, 8);
  parametersXML = [self parametersXML];
  localeXML = [self localeXML];
  defaultCATOptions = [self defaultCATOptions];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__LNSpeakableStringDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E74B13B0;
  v17 = v5;
  v13 = v5;
  LODWORD(v15) = defaultCATOptions;
  [v8 execute:0 paramsXML:parametersXML localeXML:localeXML parameters:MEMORY[0x1E695E0F8] globals:v7 callback:0 options:v15 completion:v16];
}

@end