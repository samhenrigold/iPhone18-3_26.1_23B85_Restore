@interface OSLogUUIDMapAddFromCatalog
@end

@implementation OSLogUUIDMapAddFromCatalog

uint64_t ___OSLogUUIDMapAddFromCatalog_block_invoke(uint64_t a1, uint64_t *a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke_2;
  v7[3] = &__block_descriptor_40_e40_v16__0__catalog_uuidlocation_s_QQ_16C__8l;
  v4 = *(a1 + 32);
  v5 = a2[7];
  v7[4] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___catalog_procinfo_for_each_uuidinfo_block_invoke;
  v8[3] = &unk_2787AD6E8;
  v8[4] = v7;
  hashtable_iterate(v5, v8);
  _os_trace_uuid_map_insert(*(a1 + 32), a2 + 3, 1);
  return _os_trace_uuid_map_insert(*(a1 + 32), a2 + 5, 3);
}

uint64_t ___OSLogUUIDMapAddFromCatalog_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  result = _os_trace_uuid_map_lookup(v4, a3);
  if (!result)
  {

    return _os_trace_uuid_map_insert(v4, a3, 1);
  }

  return result;
}

@end