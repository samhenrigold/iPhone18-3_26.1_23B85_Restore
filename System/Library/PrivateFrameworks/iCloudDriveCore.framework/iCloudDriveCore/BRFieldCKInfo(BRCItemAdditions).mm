@interface BRFieldCKInfo(BRCItemAdditions)
- (void)revertEtagsForOldZoneTombstone;
@end

@implementation BRFieldCKInfo(BRCItemAdditions)

- (void)revertEtagsForOldZoneTombstone
{
  v10 = *MEMORY[0x277D85DE8];
  etagBeforeCrossZoneMove = [self etagBeforeCrossZoneMove];
  v6 = 138412546;
  v7 = etagBeforeCrossZoneMove;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Reverting etag to pre-czm tag %@%@", &v6, 0x16u);
}

@end