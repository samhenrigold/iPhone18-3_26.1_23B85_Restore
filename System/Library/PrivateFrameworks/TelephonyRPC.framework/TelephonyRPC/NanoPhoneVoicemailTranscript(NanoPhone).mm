@interface NanoPhoneVoicemailTranscript(NanoPhone)
@end

@implementation NanoPhoneVoicemailTranscript(NanoPhone)

- (void)initWithTranscriptMessage:()NanoPhone voicemailNumber:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NanoPhoneVoicemailTranscript(NanoPhone) initWithTranscriptMessage:voicemailNumber:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26D269000, a2, OS_LOG_TYPE_ERROR, "%s: %@", &v2, 0x16u);
}

@end