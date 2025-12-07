@interface BLTPBBulletin(BBBulletin)
@end

@implementation BLTPBBulletin(BBBulletin)

+ (void)bulletinWithBBBulletin:()BBBulletin sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [v0 summary];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v2, v3, "Error encoding summary %@: %@", v4, v5, v6, v7);
}

+ (void)bulletinWithBBBulletin:()BBBulletin sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [v0 threadSummary];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v2, v3, "Error encoding thread summary %@: %@", v4, v5, v6, v7);
}

+ (void)bulletinWithBBBulletin:()BBBulletin sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [v0 attributedMessage];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v2, v3, "Error encoding attributed message %@: %@", v4, v5, v6, v7);
}

+ (void)bulletinWithBBBulletin:()BBBulletin sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [v0 eventBehavior];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v2, v3, "Error encoding event behavior %@: %@", v4, v5, v6, v7);
}

+ (void)bulletinWithBBBulletin:()BBBulletin sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:.cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "When trying to add shouldAddToNotificationsList to user notification, found requestNotification but no content: %@", &v2, 0xCu);
}

+ (void)_attachmentFromBBAttachmentMetadata:()BBBulletin bulletin:observer:fileOption:attachOption:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Unable to create temporary attachment file for bulletin %@", &v2, 0xCu);
}

+ (void)_attachmentFromBBAttachmentMetadata:()BBBulletin bulletin:observer:fileOption:attachOption:completion:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [v0 publisherBulletinID];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v2, v3, "%@ Image attachment processing failed for: %@", v4, v5, v6, v7);
}

+ (void)_handleThumbnailResponse:()BBBulletin attachmentMetadata:transcodedAttachmentSaveURL:wantsData:imageContentType:.cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  *v10 = 138412546;
  *&v10[4] = a1;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1_2(&dword_241FB3000, v4, v5, "_handleThumbnailResponse: QLThumbnailGenerator could not generate thumbnail for attachement error:%@ url:%@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end