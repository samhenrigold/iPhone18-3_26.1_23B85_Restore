@interface CFAuditTokenForSelf
@end

@implementation CFAuditTokenForSelf

uint64_t ___CFAuditTokenForSelf_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  return task_info(*MEMORY[0x1E69E9A60], 0xFu, &_CFAuditTokenForSelf_auditToken, &task_info_outCnt);
}

@end