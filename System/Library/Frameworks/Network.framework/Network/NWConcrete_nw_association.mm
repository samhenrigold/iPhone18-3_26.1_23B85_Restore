@interface NWConcrete_nw_association
- (void)dealloc;
@end

@implementation NWConcrete_nw_association

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(self + 76) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    *v18 = 136446466;
    *&v18[4] = "[NWConcrete_nw_association dealloc]";
    *&v18[12] = 2114;
    *&v18[14] = self;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s %{public}@ deallocated when not dormant, overrelease", v18, 22);

    if (__nwlog_should_abort(v5))
    {
      __break(1u);
      return;
    }

    free(v5);
  }

  deactivation_timer = self->deactivation_timer;
  if (deactivation_timer)
  {
    nw_queue_cancel_source(deactivation_timer);
    self->deactivation_timer = 0;
  }

  handles = self->handles;
  if (handles)
  {
    _nw_hash_table_release(handles);
    self->handles = 0;
  }

  connected_flow_handles = self->connected_flow_handles;
  if (connected_flow_handles)
  {
    _nw_hash_table_release(connected_flow_handles);
    self->connected_flow_handles = 0;
  }

  cache_entries = self->cache_entries;
  if (cache_entries)
  {
    *v18 = 0;
    *&v18[8] = v18;
    *&v18[16] = 0x2020000000;
    v19 = cache_entries;
    self->cache_entries = 0;
    v10 = nw_path_parameters_copy_context(self->path_parameters);
    v11 = *(*&v18[8] + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__NWConcrete_nw_association_dealloc__block_invoke;
    v15[3] = &unk_1E6A3CD58;
    v12 = v10;
    v16 = v12;
    v17 = v18;
    nw_hash_table_apply(v11, v15);
    v13 = *(*&v18[8] + 24);
    if (v13)
    {
      _nw_hash_table_release(v13);
      *(*&v18[8] + 24) = 0;
    }

    _Block_object_dispose(v18, 8);
  }

  v14.receiver = self;
  v14.super_class = NWConcrete_nw_association;
  [(NWConcrete_nw_association *)&v14 dealloc];
}

@end