@interface SiriReferenceResolutionDonation
- (_TtC14AnnounceDaemon31SiriReferenceResolutionDonation)init;
- (void)makePlaybackDonationWithAnnouncementID:(id)d;
@end

@implementation SiriReferenceResolutionDonation

- (_TtC14AnnounceDaemon31SiriReferenceResolutionDonation)init
{
  v3 = sub_23F5881D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ANLogWithCategory();
  sub_23F5881E4();
  (*(v4 + 32))(self + OBJC_IVAR____TtC14AnnounceDaemon31SiriReferenceResolutionDonation_logger, v6, v3);
  v8 = type metadata accessor for SiriReferenceResolutionDonation(0);
  v10.receiver = self;
  v10.super_class = v8;
  return [(SiriReferenceResolutionDonation *)&v10 init];
}

- (void)makePlaybackDonationWithAnnouncementID:(id)d
{
  v4 = sub_23F5882D4();
  v6 = v5;
  selfCopy = self;
  sub_23F57DF00(v4, v6);
}

@end