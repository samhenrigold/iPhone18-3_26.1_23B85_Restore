void sub_1000333C8()
{
  sub_100017684();
  sub_100017694();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100033518()
{
  sub_100017684();
  sub_100017694();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100033598()
{
  sub_1000176D0(__stack_chk_guard);
  v2 = 138543618;
  sub_100017684();
  sub_1000176B0(&_mh_execute_header, v0, v1, "Fetching record zone with identifier %{public}@ failed with error %{public}@", v2);
}

void sub_100033608()
{
  sub_1000176D0(__stack_chk_guard);
  v2 = 138543618;
  sub_100017684();
  sub_1000176B0(&_mh_execute_header, v0, v1, "Request to create record zone with identifier %{public}@ failed with error %{public}@", v2);
}

void sub_100033678()
{
  sub_1000176D0(__stack_chk_guard);
  sub_100017694();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003377C(void *a1)
{
  v1 = [a1 device];
  v2 = [v1 uniqueIDOverride];
  sub_100010C2C();
  sub_100017674();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100033830(void *a1)
{
  v1 = [a1 device];
  v2 = [v1 uniqueIDOverride];
  sub_100010C2C();
  sub_100017674();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100033954(void *a1)
{
  v1 = [a1 device];
  v2 = [v1 uniqueIDOverride];
  sub_100010C2C();
  sub_100017674();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000339F8()
{
  sub_100010C2C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to copy data store from %{public}@ to %{public}@", v2, 0x16u);
}

void sub_100033A7C()
{
  sub_100010C2C();
  sub_100017694();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100033AFC()
{
  sub_100010C2C();
  sub_100017694();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100033C28(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"ProtobufTransactions";
  sub_100010C10(&_mh_execute_header, a1, a3, "Expected to find NSData %{public}@ key, dropping!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100033CA0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"Configuration";
  sub_100010C10(&_mh_execute_header, a1, a3, "Expected to find NSNumber %{public}@ key, dropping!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100033D18(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100010C10(&_mh_execute_header, a2, a3, "Could not retrieve transaction data from message dictionary %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100033D84(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100010C10(&_mh_execute_header, a2, a3, "Could not retrieve configuration from message dictionary %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100033DF0(uint64_t a1, unsigned int *a2, NSObject *a3)
{
  v5 = sub_1000176DC(*a2);
  v6 = 138543618;
  v7 = a1;
  v8 = 2082;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Received incoming resource at URL %{public}@ when configured as %{public}s", &v6, 0x16u);
}

void sub_100033E90(void *a1, NSObject *a2)
{
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"ck"];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
}

void sub_100033F8C(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Could not ignore SIGTERM: %s", &v4, 0xCu);
}

void sub_100034020(uint64_t a1, NSObject *a2)
{
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Expected %{public}@ key to be of type %{public}@", &v4, 0x16u);
}

void sub_1000340D0(os_log_t log)
{
  v1 = 138543362;
  v2 = @"kCallHistoryRemoteTransactionsAppliedNotification";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing notification dictionary in %{public}@", &v1, 0xCu);
}

void sub_100034430(unsigned __int8 a1, NSObject *a2)
{
  v3 = sub_10001F5B8(a1);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled SyncSource: %{public}@", &v4, 0xCu);
}

void sub_1000344CC(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to unarchive the call object reason: %{public}@ exception name: %{public}@", buf, 0x16u);
}

void sub_10003453C(id *a1)
{
  v1 = [*a1 defaultLogDirectory];
  sub_100010C2C();
  sub_100010C38(&_mh_execute_header, v2, v3, "Could not create transaction log directory at %{public}@", v4, v5, v6, v7);
}

void sub_1000345C4(id *a1)
{
  v1 = [*a1 path];
  sub_100010C2C();
  sub_100010C38(&_mh_execute_header, v2, v3, "Could not create transaction log at %{public}@", v4, v5, v6, v7);
}

void sub_10003464C(void *a1)
{
  v1 = [a1 path];
  sub_100010C2C();
  sub_100010C38(&_mh_execute_header, v2, v3, "Could not open file handle for %{public}@", v4, v5, v6, v7);
}

void sub_100034888()
{
  sub_100024CA4();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Could not get NSFileSize of old transaction log %{public}@: %{public}@", v1, 0x16u);
}

void sub_100034974(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not fetch contacts: %{public}@", &v2, 0xCu);
}

void sub_1000349EC()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_100034A10(v1);
}

void sub_100034A54(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not donate interaction for call with identifier %{public}@: %{public}@", &v4, 0x16u);
}

void sub_100034AE0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Deleting interaction for %lu calls failed: %@", &v6, 0x16u);
}

void sub_100034BA8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Prune operation failed with error %{public}@", &v2, 0xCu);
}